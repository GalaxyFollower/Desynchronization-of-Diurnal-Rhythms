function [Acc_Time,Acc,VAcc_Time,VAcc,HR_Time,HR]=load_example_data()

% Load the example data
% Total Acceleration - Acc
% Vertical Acceleration - VAcc
% Heart Rate - HR
[A,AccT]=xlsread('Acceleration Example.csv');
temp_AccT=cell2mat(AccT);
Acc_Time=datenum(temp_AccT(:,1:19));

Acc=sqrt(A(:,2).^2+A(:,3).^2+A(:,4).^2);
VAcc=A(:,2);

VAcc_Time=datenum(temp_AccT(:,1:19));

[HR,HRT]=xlsread('Heart Rate Example.csv');
temp_HRT=cell2mat(HRT);
HR_Time=datenum(temp_HRT(:,1:19));
[HR_Time,Ind] = sort(HR_Time,'ascend');
HR=HR(Ind);
[HR]=clean_example_hr(HR);