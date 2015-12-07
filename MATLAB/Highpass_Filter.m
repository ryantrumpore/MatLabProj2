function y = Highpass_Filter(x)
%HIGHPASS_FILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.4 and the DSP System Toolbox 8.7.
% Generated on: 21-Apr-2015 16:36:36

%#codegen

% To generate C/C++ code from this function use the codegen command. Type
% 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    % % Equiripple Highpass filter designed using the FIRPM function.
    %
    % % All frequency values are in Hz.
    % Fs = 8000;  % Sampling Frequency
    %
    % Fstop = 900;             % Stopband Frequency
    % Fpass = 1100;            % Passband Frequency
    % Dstop = 0.0001;          % Stopband Attenuation
    % Dpass = 0.057501127785;  % Passband Ripple
    % dens  = 20;              % Density Factor
    %
    % % Calculate the order from the parameters using FIRPMORD.
    % [N, Fo, Ao, W] = firpmord([Fstop, Fpass]/(Fs/2), [0 1], [Dstop, Dpass]);
    %
    % % Calculate the coefficients using the FIRPM function.
    % b  = firpm(N, Fo, Ao, W, {dens});
    
    Hd = dsp.FIRFilter( ...
        'Numerator', [-0.0013657999859692 0.00835789195395248 ...
        -0.0125603837415238 0.000988787111716862 0.00609903670967009 ...
        0.00313828434560843 -0.00147878956321335 -0.0037786567097426 ...
        -0.00293718566195751 -0.000208978014255769 0.00243812177144494 ...
        0.00340470759739022 0.00212244311923098 -0.000605165788439195 ...
        -0.00308593993595533 -0.00371354738760522 -0.00188920041254397 ...
        0.00138293705883087 0.00410226083972089 0.0043372614467025 ...
        0.00165276677017778 -0.00249205263001241 -0.00546252577849406 ...
        -0.00509299284959123 -0.00119728973793101 0.00402801874463662 ...
        0.00719885429266709 0.00587823650787696 0.000380539381586896 ...
        -0.00611499892314941 -0.00934043866229137 -0.0066541883392169 ...
        0.000933277862458705 0.00896597576126573 0.0120462172272868 ...
        0.00737382412737858 -0.00302139411626399 -0.0129503178326442 ...
        -0.0156036515980361 -0.00801031579161872 0.00636551881649278 ...
        0.0189100313932452 0.0207284289899069 0.0085309317559622 ...
        -0.0121747236589481 -0.0290144261939028 -0.0294528312955725 ...
        -0.00892162783286203 0.0243743688002266 0.0513264231394328 ...
        0.0504454320271026 0.00916575058210774 -0.0679094438230764 ...
        -0.158579156343119 -0.231405442167911 0.740759942810371 ...
        -0.231405442167911 -0.158579156343119 -0.0679094438230764 ...
        0.00916575058210774 0.0504454320271026 0.0513264231394328 ...
        0.0243743688002266 -0.00892162783286203 -0.0294528312955725 ...
        -0.0290144261939028 -0.0121747236589481 0.0085309317559622 ...
        0.0207284289899069 0.0189100313932452 0.00636551881649278 ...
        -0.00801031579161872 -0.0156036515980361 -0.0129503178326442 ...
        -0.00302139411626399 0.00737382412737858 0.0120462172272868 ...
        0.00896597576126573 0.000933277862458705 -0.0066541883392169 ...
        -0.00934043866229137 -0.00611499892314941 0.000380539381586896 ...
        0.00587823650787696 0.00719885429266709 0.00402801874463662 ...
        -0.00119728973793101 -0.00509299284959123 -0.00546252577849406 ...
        -0.00249205263001241 0.00165276677017778 0.0043372614467025 ...
        0.00410226083972089 0.00138293705883087 -0.00188920041254397 ...
        -0.00371354738760522 -0.00308593993595533 -0.000605165788439195 ...
        0.00212244311923098 0.00340470759739022 0.00243812177144494 ...
        -0.000208978014255769 -0.00293718566195751 -0.0037786567097426 ...
        -0.00147878956321335 0.00313828434560843 0.00609903670967009 ...
        0.000988787111716862 -0.0125603837415238 0.00835789195395248 ...
        -0.0013657999859692]);
end

y = step(Hd,x);


% [EOF]