/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define SIZE  4     /* Size of channel */
#define MESSAGES 8; /* Number of messages sent */

mtype = { message, marker }; 
chan ch = [SIZE] of { mtype, byte };
byte lastReceived;
byte messageAtRecord;
byte messageAtMarker;
byte lastSent;
bool recorded;

inline RecordState() {
  messageAtRecord = lastReceived;
  recorded = true;
  printf("Recorded state\n")
}

active proctype Sender() {
  do
  :: lastSent < MESSAGES -> 
       lastSent++;
       ch ! message(lastSent)
  :: ch ! marker(0); 
       break
  od
}

active proctype Receiver() {
  byte received;
  do 
  :: ch ? message(received) -> 
       assert (received == (lastReceived + 1));
       lastReceived = received;
       printf("Received message %d\n", received)
  :: ch ? marker(_) -> 
       messageAtMarker = lastReceived;
       if :: !recorded -> RecordState() :: else fi;
       break
  :: !recorded -> RecordState()
  od;
  printf("Last received = %d\n", messageAtRecord);
  if 
  :: messageAtRecord != messageAtMarker ->
       printf("Messages in channel = %d .. %d\n",
              messageAtRecord + 1, messageAtMarker)
  :: else
  fi;
  assert (lastSent == messageAtMarker);
  assert (messageAtRecord <= messageAtMarker)
}
