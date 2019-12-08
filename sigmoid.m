function a = sigmoid(in)
a = 1 + exp(-in);
a = a.^-1;
