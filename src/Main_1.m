clc;
clear all;
close all;
global K;%The number of MSG-Samples
global TrainSetSize; % the percent of train set
global SampleNumber; %total number of samples
global PerSamNumber; % number of sample per an object
global TestSample; %loaded test set
global TrainSample; % loaded train set
global showflag;  % for show plots
global PerSamNumbertotal;
TrainSetSize=70;     
SampleNumber=224;
PerSamNumber=6;
showflag=1;
K=7;
PerSamNumbertotal=32;%30
File2Save='DataSet.mat'; %%%% baraye dashtan meeyare dorost bayad ba az qabli 1ki bashad
CreateDataSet(TrainSetSize,SampleNumber+2,PerSamNumbertotal,File2Save);
DataSetName=File2Save;
load(DataSetName);
ResultFile='Result.mat';
%% ---<Gray>
loadflag=0;
fprintf('\n ----< Gray Level >-----');
[TimeG]=...
    RunGray(loadflag);
    fprintf(' Time is=%6.3f sec\n',TimeG);
%     save(ResultFile,'KeyNumG','KeyMatchedG','AccuracyG','TimeG');
%% ---<HS(V-MGS) (proposed)>
% ShowResultPlot(ResultFile,'keynum');  
% ShowResultPlot(ResultFile,'keymatch');
% ShowResultPlot(ResultFile,'acc');
% ShowResultPlot(ResultFile,'time');



