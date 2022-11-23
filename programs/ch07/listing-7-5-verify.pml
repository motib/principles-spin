/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

chan request = [0] of { byte, chan };
chan reply [4] = [0] of { byte };
byte numClients = 0;

active [2] proctype Server() {
	byte client;
	byte me = _pid;
	chan replyChannel;
end:
	do
    ::  request ? client, replyChannel ->
			printf("Client %d processed by server %d\n", client, me);
			replyChannel ! me
	od
}

active [4] proctype Client() {
	byte server;
	byte me = _pid - 2;
	request ! me, reply[me];
	numClients++;
	assert (numClients <= 2);
	numClients--;
	reply[me] ? server;
	printf("Reply received from server %d by client %d\n", server, me)
}
