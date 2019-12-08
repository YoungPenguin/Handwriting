function [testingSet, trainingSet] = loadData(inputLayerSize)
trainingSet = 'MNIST/train-images-idx3-ubyte';
trainingSetLabels = 'MNIST/train-labels-idx1-ubyte';
testingSet = 'MNIST/t10k-images-idx3-ubyte';
testingSetLabels = 'MNIST/t10k-labels-idx1-ubyte';

if (!(exist(trainingSet)*exist(trainingSetLabels)*
exist(testingSet)*exist(testingSetLabels))) 
  disp('ERROR: missing data files'); 
  return;
end

[xinput, ylabel] = MNISTDecoder(trainingSet,trainingSetLabels);
clear trainingSet trainingSetLabels;
trainingSet = [xinput ylabel];
clear xinput ylabel;

[xinput, ylabel] = MNISTDecoder(testingSet,testingSetLabels);
clear testingSet testingSetLabels;
testingSet = [xinput ylabel];
clear xinput ylabel;
labels = trainingSet(:,inputLayerSize+1);
labels(labels == 0) = 10;
trainingSet(:,inputLayerSize+1) = labels;
clear labels;
labels = testingSet(:,inputLayerSize+1);
labels(labels == 0) = 10;
testingSet(:,inputLayerSize+1) = labels;
clear labels;