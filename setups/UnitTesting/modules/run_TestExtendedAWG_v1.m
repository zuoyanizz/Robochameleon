clearvars -except testFiles nn
close all

%% Parameters
% WaveformGenerator parameters
param.M                 = 4;
param.modulationFormat  = 'QAM';
param.N                 = 2;        % (not necessary)
param.samplesPerSymbol  = 16;
param.pulseShape        = 'rrc';
param.rollOff           = 0.2;

% DACPrecompensator parameters
param.DACPreGaussianOrder     = 1;         % (not necessary)
param.DACPreGaussianBandwidth = 18e9;      % (not necessary)
param.DACPreBesselOrder     = 1;           % (not necessary)
param.DACPreBesselBandwidth = 18e9;        % (not necessary)
param.targetENoB        = 6;            % (not necessary)
param.bitResolution     = 6;            % (not necessary)

% DAC parameters
param.DACGaussianOrder     = 1;        % (not necessary)
param.DACGaussianBandwidth = 18e9;     % (not necessary)
param.DACBesselOrder         = 0;      % (not necessary)
param.DACBesselBandwidth     = 110e9;  % (not necessary)

param.outputVoltage     = 2.0;      % (not necessary)
param.amplitudeImbalance= 1;        % (not necessary)
param.skew              = [0.0 0.5];% (not necessary)
param.jitterVariance    = 1e-8;     % (not necessary)
param.upsamplingRate    = 2;        % (not necessary)
param.clockError        = 1e-6;     % (not necessary)

%% Create object
awg = ExtendedAWG_v1(param);
%% Traverse object
out = awg.traverse();


