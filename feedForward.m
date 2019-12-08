function [a,a_h]  = feedForward(in, w1, b1, w2, b2)
a_h = sigmoid(in*w1 + b1);
a = sigmoid(a_h*w2 + b2)';
a_h = a_h';