function [w1,b1,w2,b2] = createNet(networkSize)

%create 3-layer neural network
%method: -1 <= w <= 1
w1 = (rand(networkSize(1), networkSize(2))-0.5) * 2;
b1 = (rand(1, networkSize(2))-0.5) * 2;
w2 = (rand(networkSize(2), networkSize(3))-0.5) * 2;
b2 = (rand(1, networkSize(3))-0.5) * 2;