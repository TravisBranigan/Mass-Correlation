% Motor Unit Correlation v4.0
% by: Travis Branigan
%
% The folowing will just clear your command line and workspace for the new
% project, that way no additional variables may interfere.
clc; clear;
% You're going to have to change the names of the documents below to match
% the file names of your pre/post trials. This could potentially be changed
% to a UIGetFile but from personal experience that was much more work.
pre1xlsx='BrTr-Precap-1.xlsx';
pre2xlsx='BrTr-Precap-2.xlsx';
pre3xlsx='BrTr-Precap-3.xlsx';
p101xlsx='BrTr-Cap10-1.xlsx';
p102xlsx='BrTr-Cap10-1.xlsx';
p103xlsx='BrTr-Cap10-1.xlsx';
p201xlsx='BrTr-Cap20-1.xlsx';
p202xlsx='BrTr-Cap20-1.xlsx';
p203xlsx='BrTr-Cap20-1.xlsx';
p301xlsx='BrTr-Cap30-1.xlsx';
p302xlsx='BrTr-Cap30-1.xlsx';
p303xlsx='BrTr-Cap30-1.xlsx';
p401xlsx='BrTr-Cap40-1.xlsx';
p402xlsx='BrTr-Cap40-1.xlsx';
p403xlsx='BrTr-Cap40-1.xlsx';
% This part will take your inputs for how many motor units are in each
% exported trial from BioLab, and the code will use that later to determine
% how much work it needs to do for each excel file.
% For the precapsaicin trials
exp_pre = input('How many trials of the pre-capsaicin condition were exported?  ');
if exp_pre==0;
    MUpre1 = 0;
    MUpre2 = 0;
    MUpre3 = 0;
elseif exp_pre==1;
    MUpre1 = input('How many motor units were exported in the first pre-capsaicin trial?  ');
    MUpre2 = 0;
    MUpre3 = 0;
elseif exp_pre==2;
    MUpre1 = input('How many motor units were exported in the first pre-capsaicin trial?  ');
    MUpre2 = input('How many motor units were exported in the second pre-capsaicin trial?  ');
    MUpre3 = 0;
elseif exp_pre==3;
    MUpre1 = input('How many motor units were exported in the first pre-capsaicin trial?  ');
    MUpre2 = input('How many motor units were exported in the second pre-capsaicin trial?  ');
    MUpre3 = input('How many motor units were exported in the third pre-capsaicin trial?  ');
end
% For the 10-minute post trials
exp_10 = input('How many trials of the 10 minute post-capsaicin condition were exported?  ');
if exp_10==0;
    MUp101 = 0;
    MUp102 = 0;
    MUp103 = 0;
elseif exp_10==1;
    MUp101 = input('How many motor units were exported in the first 10 minute post-capsaicin trial?  ');
    MUp102 = 0;
    MUp103 = 0;
elseif exp_10==2;
    MUp101 = input('How many motor units were exported in the first 10 minute post-capsaicin trial?  ');
    MUp102 = input('How many motor units were exported in the second 10 minute post-capsaicin trial?  ');
    MUp103 = 0;
elseif exp_10==3;
    MUp101 = input('How many motor units were exported in the first 10 minute post-capsaicin trial?  ');
    MUp102 = input('How many motor units were exported in the second 10 minute post-capsaicin trial?  ');
    MUp103 = input('How many motor units were exported in the third 10 minute post-capsaicin trial?  ');
end
% For the 20-minute post trials
exp_20 = input('How many trials of the 20 minute post-capsaicin condition were exported?  ');
if exp_20==0;
    MUp201 = 0;
    MUp202 = 0;
    MUp203 = 0;
elseif exp_20==1;
    MUp201 = input('How many motor units were exported in the first 20 minute post-capsaicin trial?  ');
    MUp202 = 0;
    MUp203 = 0;
elseif exp_20==2;
    MUp201 = input('How many motor units were exported in the first 20 minute post-capsaicin trial?  ');
    MUp202 = input('How many motor units were exported in the second 20 minute post-capsaicin trial?  ');
    MUp203 = 0;
elseif exp_20==3;
    MUp201 = input('How many motor units were exported in the first 20 minute post-capsaicin trial?  ');
    MUp202 = input('How many motor units were exported in the second 20 minute post-capsaicin trial?  ');
    MUp203 = input('How many motor units were exported in the third 20 minute post-capsaicin trial?  ');
end
% For the 30-minute post trials
exp_30 = input('How many trials of the 30 minute post-capsaicin condition were exported?  ');
if exp_30==0;
    MUp301 = 0;
    MUp302 = 0;
    MUp303 = 0;
elseif exp_30==1;
    MUp301 = input('How many motor units were exported in the first 30 minute post-capsaicin trial?  ');
    MUp302 = 0;
    MUp303 = 0;
elseif exp_30==2;
    MUp301 = input('How many motor units were exported in the first 30 minute post-capsaicin trial?  ');
    MUp302 = input('How many motor units were exported in the second 30 minute post-capsaicin trial?  ');
    MUp303 = 0;
elseif exp_30==3;
    MUp301 = input('How many motor units were exported in the first 30 minute post-capsaicin trial?  ');
    MUp302 = input('How many motor units were exported in the second 30 minute post-capsaicin trial?  ');
    MUp303 = input('How many motor units were exported in the third 30 minute post-capsaicin trial?  ');
end
% For the 40-minute post trials
exp_40 = input('How many trials of the 40 minute post-capsaicin condition were exported?  ');
if exp_40==0;
    MUp401 = 0;
    MUp402 = 0;
    MUp403 = 0;
elseif exp_40==1;
    MUp401 = input('How many motor units were exported in the first 40 minute post-capsaicin trial?  ');
    MUp402 = 0;
    MUp403 = 0;
elseif exp_40==2;
    MUp401 = input('How many motor units were exported in the first 40 minute post-capsaicin trial?  ');
    MUp402 = input('How many motor units were exported in the second 40 minute post-capsaicin trial?  ');
    MUp403 = 0;
elseif exp_40==3;
    MUp401 = input('How many motor units were exported in the first 40 minute post-capsaicin trial?  ');
    MUp402 = input('How many motor units were exported in the second 40 minute post-capsaicin trial?  ');
    MUp403 = input('How many motor units were exported in the third 40 minute post-capsaicin trial?  ');
end
% The following is just creating matrices that will be referenced in the
% for loop afterwards which receive the values from reading the excel files
% you've placed in lines 10-24
pre1matrix=zeros(102,600);pre2matrix=zeros(102,600);pre3matrix=zeros(102,600);
p101matrix=zeros(102,600);p102matrix=zeros(102,600);p103matrix=zeros(102,600);
p201matrix=zeros(102,600);p202matrix=zeros(102,600);p203matrix=zeros(102,600);
p301matrix=zeros(102,600);p302matrix=zeros(102,600);p303matrix=zeros(102,600);
p401matrix=zeros(102,600);p402matrix=zeros(102,600);p403matrix=zeros(102,600);
% The following are the ranges that BioLab+ places the sixty channels, so
% the code understands which combination of cells in excel respond to which
% motor unit
readzones={'B1:BI102' 'BJ1:DQ102' 'DR1:FY102' 'FZ1:IG102' 'IH1:KO102' 'KP1:MW102' 'MX1:PE102' 'PF1:RM102' 'RN1:TU102' 'TV1:WC102'};
Range={'1:60' '61:120' '121:180' '181:240' '241:300' '301:360' '361:420' '421:480' '481:540' '541:600'};
% The following will read the excel files based on how many motor units you
% specify following the input questions in relation to the "readzones" seen
% on line 134 and place them into their respective matrix based on the
% trial number (i.e. pre1matrix is the trial #1 matrix for the precapsaicin
% condition
for x=1:MUpre1
    pre1matrix(:,str2num(Range{x})) = xlsread(pre1xlsx,readzones{x});
end
for x=1:MUpre2
    pre2matrix(:,str2num(Range{x})) = xlsread(pre2xlsx,readzones{x});
end
for x=1:MUpre3
    pre3matrix(:,str2num(Range{x})) = xlsread(pre3xlsx,readzones{x});
end
% For the 10-minute post trials
for x=1:MUp101
    p101matrix(:,str2num(Range{x})) = xlsread(p101xlsx,readzones{x});
end
for x=1:MUp102
    p102matrix(:,str2num(Range{x})) = xlsread(p102xlsx,readzones{x});
end
for x=1:MUp103
    p103matrix(:,str2num(Range{x})) = xlsread(p103xlsx,readzones{x});
end
% For the 20-minute post trials
for x=1:MUp201
    p201matrix(:,str2num(Range{x})) = xlsread(p201xlsx,readzones{x});
end
for x=1:MUp202
    p202matrix(:,str2num(Range{x})) = xlsread(p202xlsx,readzones{x});
end
for x=1:MUp103
    p203matrix(:,str2num(Range{x})) = xlsread(p203xlsx,readzones{x});
end
% For the 30-minute trials
for x=1:MUp301
    p301matrix(:,str2num(Range{x})) = xlsread(p301xlsx,readzones{x});
end
for x=1:MUp302
    p302matrix(:,str2num(Range{x})) = xlsread(p302xlsx,readzones{x});
end
for x=1:MUp303
    p303matrix(:,str2num(Range{x})) = xlsread(p303xlsx,readzones{x});
end
% For the 40-minute trials
for x=1:MUp401
    p401matrix(:,str2num(Range{x})) = xlsread(p401xlsx,readzones{x});
end
for x=1:MUp402
    p402matrix(:,str2num(Range{x})) = xlsread(p402xlsx,readzones{x});
end
for x=1:MUp403
    p403matrix(:,str2num(Range{x})) = xlsread(p403xlsx,readzones{x});
end
% The following creates a matrix for the correlation coefficients to go
% into (MUcorrs), as well as saying which channels to begin calculating at.
% Since there are 60 channels per motor unit, the values you see on line
% 194 show all the values for the 10 possible motor units for channel #1
matrixchannel=[1,61,121,181,241,301,361,421,481,541];
MUcorrs=zeros(59,22500);
% This for loop will first take the respective channel for all motor units
% (starts w/ 1 and repeats until all 59 are done) and will line them up
% column after column 
% i.e. Precap Trial 1 MU1/MU2/MU3/.../Post 40 Trial 3 MU10)
% The "channel" variable is then cross correlated against itself to receive
% correlation coefficients for each channel against all 150 channels. This
% outcome table is then reshaped into 1 row and 22,500 columns which is
% then placed into the aformentioned MUcorrs matrix (line 195) as the row
% which is equal to the channel that was just correlated hence why there
% are 59 rows and 22,500 columns in that variable
for x=1:59
    channel=[pre1matrix(:,matrixchannel),pre2matrix(:,matrixchannel),pre3matrix(:,matrixchannel),p101matrix(:,matrixchannel),p102matrix(:,matrixchannel),p103matrix(:,matrixchannel),p201matrix(:,matrixchannel),p202matrix(:,matrixchannel),p203matrix(:,matrixchannel),p301matrix(:,matrixchannel),p302matrix(:,matrixchannel),p303matrix(:,matrixchannel),p401matrix(:,matrixchannel),p402matrix(:,matrixchannel),p403matrix(:,matrixchannel)];
    cross=corr(channel,channel);
    cross(isnan(cross))=0;
    crossA=transpose(cross);
    crossB=reshape(crossA,1,[]);
    MUcorrs(x,:)=crossB;
    matrixchannel=matrixchannel+1;
end
% The following will create a matrix that is 22,500 columns by 2 rows which
% will be used in the upcoming for loop in order to keep track of the
% maximum motor unit correlation coefficients
maxMUcorrs=zeros(2,22500);
% The following for loop will look for the maximum correlation coefficient 
% for all of the combinations of motor units seen within "MUcorrs" which
% will give a maximum corr. coefficient for every single motor unit against
% itself and every other motor unit. The maximum value will be placed into
% the first row of "maxMUcorrs", while the index of the maximum (the row
% where they maximally correlate) will be placed in the second row of
% "maxMUcorrs" as this index value will be the channel number at which
% these motor units have their maximum correlation coefficient and is used
% for plotting these channels within the final for loop
for x=1:22500
    [maxMUcorrs(1,x),maxMUcorrs(2,x)]=max(MUcorrs(:,x));
end
% The following arrays and matrices are created to call back on within the
% final for loop in order to 1) create the title/legend names for all 
% combinations of motor units, and 2) provide the logic behind how the 
% display commands plotting are created
MUPlotPrintout={'pre1matrix(:,','pre2matrix(:,','pre3matrix(:,','p101matrix(:,','p102matrix(:,','p103matrix(:,','p201matrix(:,','p202matrix(:,','p203matrix(:,','p301matrix(:,','p302matrix(:,','p303matrix(:,','p401matrix(:,','p402matrix(:,','p403matrix(:,'};
MUNames={'Precap Trial 1 MU 1','Precap Trial 1 MU 2','Precap Trial 1 MU 3','Precap Trial 1 MU 4', 'Precap Trial 1 MU 5','Precap Trial 1 MU 6','Precap Trial 1 MU 7','Precap Trial 1 MU 8','Precap Trial 1 MU 9','Precap Trial 1 MU 10','Precap Trial 2 MU 1','Precap Trial 2 MU 2','Precap Trial 2 MU 3','Precap Trial 2 MU 4', 'Precap Trial 2 MU 5','Precap Trial 2 MU 6','Precap Trial 2 MU 7','Precap Trial 2 MU 8','Precap Trial 2 MU 9','Precap Trial 2 MU 10','Precap Trial 3 MU 1','Precap Trial 3 MU 2','Precap Trial 3 MU 3','Precap Trial 3 MU 4', 'Precap Trial 3 MU 5','Precap Trial 3 MU 6','Precap Trial 3 MU 7','Precap Trial 3 MU 8','Precap Trial 3 MU 9','Precap Trial 3 MU 10','Post 10 Trial 1 MU 1','Post 10 Trial 1 MU 2','Post 10 Trial 1 MU 3','Post 10 Trial 1 MU 4', 'Post 10 Trial 1 MU 5','Post 10 Trial 1 MU 6','Post 10 Trial 1 MU 7','Post 10 Trial 1 MU 8','Post 10 Trial 1 MU 9','Post 10 Trial 1 MU 10','Post 10 Trial 2 MU 1','Post 10 Trial 2 MU 2','Post 10 Trial 2 MU 3','Post 10 Trial 2 MU 4', 'Post 10 Trial 2 MU 5','Post 10 Trial 2 MU 6','Post 10 Trial 2 MU 7','Post 10 Trial 2 MU 8','Post 10 Trial 2 MU 9','Post 10 Trial 2 MU 10','Post 10 Trial 3 MU 1','Post 10 Trial 3 MU 2','Post 10 Trial 3 MU 3','Post 10 Trial 3 MU 4', 'Post 10 Trial 3 MU 5','Post 10 Trial 3 MU 6','Post 10 Trial 3 MU 7','Post 10 Trial 3 MU 8','Post 10 Trial 3 MU 9','Post 10 Trial 3 MU 10','Post 20 Trial 1 MU 1','Post 20 Trial 1 MU 2','Post 20 Trial 1 MU 3','Post 20 Trial 1 MU 4', 'Post 20 Trial 1 MU 5','Post 20 Trial 1 MU 6','Post 20 Trial 1 MU 7','Post 20 Trial 1 MU 8','Post 20 Trial 1 MU 9','Post 20 Trial 1 MU 10','Post 20 Trial 2 MU 1','Post 20 Trial 2 MU 2','Post 20 Trial 2 MU 3','Post 20 Trial 2 MU 4', 'Post 20 Trial 2 MU 5','Post 20 Trial 2 MU 6','Post 20 Trial 2 MU 7','Post 20 Trial 2 MU 8','Post 20 Trial 2 MU 9','Post 20 Trial 2 MU 10','Post 20 Trial 3 MU 1','Post 20 Trial 3 MU 2','Post 20 Trial 3 MU 3','Post 20 Trial 3 MU 4', 'Post 20 Trial 3 MU 5','Post 20 Trial 3 MU 6','Post 20 Trial 3 MU 7','Post 20 Trial 3 MU 8','Post 20 Trial 3 MU 9','Post 20 Trial 3 MU 10','Post 30 Trial 1 MU 1','Post 30 Trial 1 MU 2','Post 30 Trial 1 MU 3','Post 30 Trial 1 MU 4', 'Post 30 Trial 1 MU 5','Post 30 Trial 1 MU 6','Post 30 Trial 1 MU 7','Post 30 Trial 1 MU 8','Post 30 Trial 1 MU 9','Post 30 Trial 1 MU 10','Post 30 Trial 2 MU 1','Post 30 Trial 2 MU 2','Post 30 Trial 2 MU 3','Post 30 Trial 2 MU 4', 'Post 30 Trial 2 MU 5','Post 30 Trial 2 MU 6','Post 30 Trial 2 MU 7','Post 30 Trial 2 MU 8','Post 30 Trial 2 MU 9','Post 30 Trial 2 MU 10','Post 30 Trial 3 MU 1','Post 30 Trial 3 MU 2','Post 30 Trial 3 MU 3','Post 30 Trial 3 MU 4', 'Post 30 Trial 3 MU 5','Post 30 Trial 3 MU 6','Post 30 Trial 3 MU 7','Post 30 Trial 3 MU 8','Post 30 Trial 3 MU 9','Post 30 Trial 3 MU 10','Post 40 Trial 1 MU 1','Post 40 Trial 1 MU 2','Post 40 Trial 1 MU 3','Post 40 Trial 1 MU 4', 'Post 40 Trial 1 MU 5','Post 40 Trial 1 MU 6','Post 40 Trial 1 MU 7','Post 40 Trial 1 MU 8','Post 40 Trial 1 MU 9','Post 40 Trial 1 MU 10','Post 40 Trial 2 MU 1','Post 40 Trial 2 MU 2','Post 40 Trial 2 MU 3','Post 40 Trial 2 MU 4', 'Post 40 Trial 2 MU 5','Post 40 Trial 2 MU 6','Post 40 Trial 2 MU 7','Post 40 Trial 2 MU 8','Post 40 Trial 2 MU 9','Post 40 Trial 2 MU 10','Post 40 Trial 3 MU 1','Post 40 Trial 3 MU 2','Post 40 Trial 3 MU 3','Post 40 Trial 3 MU 4', 'Post 40 Trial 3 MU 5','Post 40 Trial 3 MU 6','Post 40 Trial 3 MU 7','Post 40 Trial 3 MU 8','Post 40 Trial 3 MU 9','Post 40 Trial 3 MU 10'};
MUSpecify=[repmat([1],1,150),repmat([2],1,150),repmat([3],1,150),repmat([4],1,150),repmat([5],1,150),repmat([6],1,150),repmat([7],1,150),repmat([8],1,150),repmat([9],1,150),repmat([10],1,150),repmat([11],1,150),repmat([12],1,150),repmat([13],1,150),repmat([14],1,150),repmat([15],1,150),repmat([16],1,150),repmat([17],1,150),repmat([18],1,150),repmat([19],1,150),repmat([20],1,150),repmat([21],1,150),repmat([22],1,150),repmat([23],1,150),repmat([24],1,150),repmat([25],1,150),repmat([26],1,150),repmat([27],1,150),repmat([28],1,150),repmat([29],1,150),repmat([30],1,150),repmat([31],1,150),repmat([32],1,150),repmat([33],1,150),repmat([34],1,150),repmat([35],1,150),repmat([36],1,150),repmat([37],1,150),repmat([38],1,150),repmat([39],1,150),repmat([40],1,150),repmat([41],1,150),repmat([42],1,150),repmat([43],1,150),repmat([44],1,150),repmat([45],1,150),repmat([46],1,150),repmat([47],1,150),repmat([48],1,150),repmat([49],1,150),repmat([50],1,150),repmat([51],1,150),repmat([52],1,150),repmat([53],1,150),repmat([54],1,150),repmat([55],1,150),repmat([56],1,150),repmat([57],1,150),repmat([58],1,150),repmat([59],1,150),repmat([60],1,150),repmat([61],1,150),repmat([62],1,150),repmat([63],1,150),repmat([64],1,150),repmat([65],1,150),repmat([66],1,150),repmat([67],1,150),repmat([68],1,150),repmat([69],1,150),repmat([70],1,150),repmat([71],1,150),repmat([72],1,150),repmat([73],1,150),repmat([74],1,150),repmat([75],1,150),repmat([76],1,150),repmat([77],1,150),repmat([78],1,150),repmat([79],1,150),repmat([80],1,150),repmat([81],1,150),repmat([82],1,150),repmat([83],1,150),repmat([84],1,150),repmat([85],1,150),repmat([86],1,150),repmat([87],1,150),repmat([88],1,150),repmat([89],1,150),repmat([90],1,150),repmat([91],1,150),repmat([92],1,150),repmat([93],1,150),repmat([94],1,150),repmat([95],1,150),repmat([96],1,150),repmat([97],1,150),repmat([98],1,150),repmat([99],1,150),repmat([100],1,150),repmat([101],1,150),repmat([102],1,150),repmat([103],1,150),repmat([104],1,150),repmat([105],1,150),repmat([106],1,150),repmat([107],1,150),repmat([108],1,150),repmat([109],1,150),repmat([110],1,150),repmat([111],1,150),repmat([112],1,150),repmat([113],1,150),repmat([114],1,150),repmat([115],1,150),repmat([116],1,150),repmat([117],1,150),repmat([118],1,150),repmat([119],1,150),repmat([120],1,150),repmat([121],1,150),repmat([122],1,150),repmat([123],1,150),repmat([124],1,150),repmat([125],1,150),repmat([126],1,150),repmat([127],1,150),repmat([128],1,150),repmat([129],1,150),repmat([130],1,150),repmat([131],1,150),repmat([132],1,150),repmat([133],1,150),repmat([134],1,150),repmat([135],1,150),repmat([136],1,150),repmat([137],1,150),repmat([138],1,150),repmat([139],1,150),repmat([140],1,150),repmat([141],1,150),repmat([142],1,150),repmat([143],1,150),repmat([144],1,150),repmat([145],1,150),repmat([146],1,150),repmat([147],1,150),repmat([148],1,150),repmat([149],1,150),repmat([150],1,150)];
MUChange=repmat([1:150],1,150);
MUZerotoNine=[repmat([0],1,150),repmat([1],1,150),repmat([2],1,150),repmat([3],1,150),repmat([4],1,150),repmat([5],1,150),repmat([6],1,150),repmat([7],1,150),repmat([8],1,150),repmat([9],1,150)];
MUZerotoNineRepeat=repmat([0:9],1,2250);
MUMatrixFirst=repmat(MUZerotoNine,1,15);
MUOnetoFifteen=[repmat([1],1,10),repmat([2],1,10),repmat([3],1,10),repmat([4],1,10),repmat([5],1,10),repmat([6],1,10),repmat([7],1,10),repmat([8],1,10),repmat([9],1,10),repmat([10],1,10),repmat([11],1,10),repmat([12],1,10),repmat([13],1,10),repmat([14],1,10),repmat([15],1,10)];
MUPlotSecond=repmat(MUOnetoFifteen,1,150);
MUEach=[repmat([1],1,1500),repmat([2],1,1500),repmat([3],1,1500),repmat([4],1,1500),repmat([5],1,1500),repmat([6],1,1500),repmat([7],1,1500),repmat([8],1,1500),repmat([9],1,1500),repmat([10],1,1500),repmat([11],1,1500),repmat([12],1,1500),repmat([13],1,1500),repmat([14],1,1500),repmat([15],1,1500)];
% The following will just clear the input variables that you initially gave
% answers to for the code from lines 29-122
clc;
% The following for loop will:
% 1) Display the combination of motor units that are being correlated
% 2) Display the channel number at which these MUs maximally correlate
% 3) Provide the maximum correlation coefficient value that is above your
% threshold value placed within the if statement (currently >= 0.9 and <1)
% 4) Display 6 lines of code that may be placed back into MatLab in order 
% to plot the specific channels.
% This loop repeats 22,500 times for all 150 motor units correlating
% against all 150 motor units
for x=1:22500
    if (maxMUcorrs(1,x) >= 0.9) && (maxMUcorrs(1,x) < 1)
        disp([char(MUNames(MUSpecify(x))),' x ',char(MUNames(MUChange(x))),' (Channel# ',num2str(maxMUcorrs(2,x)),')',' - ',num2str(maxMUcorrs(1,x))])
        disp(['plot(',char(MUPlotPrintout(MUEach(x))),num2str(((MUMatrixFirst(x))*60)+maxMUcorrs(2,x)),')',');'])
        disp('hold on;')
        disp(['plot(',char(MUPlotPrintout(MUPlotSecond(x))),num2str(((MUZerotoNineRepeat(x))*60)+maxMUcorrs(2,x)),')',');'])
        disp('hold off;')
        titlename=[char(MUNames(MUSpecify(x))),' x ',char(MUNames(MUChange(x)))];
        disp(['title(','"',titlename,'"',');'])
        legendname1=char(MUNames(MUSpecify(x)));
        legendname2=char(MUNames(MUChange(x)));
        disp(['legend(','"',legendname1,'"',',','"',legendname2,'"',');'])
        disp(' ')
% The following elseif statement can be used to verify if the code is 
% indeed calculating the max MU correlation by making sure it realizes
% when the correlation coefficient is equal to one that they are the same
% motor unit.
    %elseif maxMUcorrs(1,x)==1
    %    disp([char(MUcorrsName(x)),' - Same motor unit.'])
    %    disp(' ')
    end
end