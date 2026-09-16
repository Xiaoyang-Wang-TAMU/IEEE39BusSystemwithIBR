%% IEEE 39 bus system with 4GFM and 6GFL (Primary control only as benchmark for Proposed OFC).
%% Please cite Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.
% Definition for the columns
% system base =1 MVA

%% Line data Format (line)
% All values are given on the same system base MVA
% 1: From bus  
% 2: To bus   
% 3: Resistance (pu)
% 4: Reactance  (pu)
% 5: Charge     (pu)
% 6: Transformer Tap Amplitute
% 7: base MVA
% 8: Nomonal Voltage (KV) 

%   1   2    3        4       5     6    7   8    
line=[...
    1	2	0.0035	0.0411	0.6987	0	1	22
    1	39	0.001	0.025	0.75	0	1	22
    2	3	0.0013	0.0151	0.2572	0	1	22
    2	25	0.007	0.0086	0.146	0	1	22
    2	30	0	    0.0181	0	  1.025	1	22
    3	4	0.0013	0.0213	0.2214	0	1	22
    3	18	0.0011	0.0133	0.2138	0	1	22
    4	5	0.0008	0.0128	0.1342	0	1	22
    4	14	0.0008	0.0129	0.1382	0	1	22
    5	8	0.0008	0.0112	0.1476	0	1	22
    6	5	0.0002	0.0026	0.0434	0	1	22
    6	7	0.0006	0.0092	0.113	0	1	22
    6	11	0.0007	0.0082	0.1389	0	1	22
    7	8	0.0004	0.0046	0.078	0	1	22
    8	9	0.0023	0.0363	0.3804	0	1	22
    9	39	0.001	0.025	1.2	    0	1	22
    10	11	0.0004	0.0043	0.0729	0	1	22
    10	13	0.0004	0.0043	0.0729	0	1	22
    10	32	0	    0.02	0	  1.07	1	22
    12	11	0.0016	0.0435	0	  1.006	1	22
    12	13	0.0016	0.0435	0	  1.006	1	22
    13	14	0.0009	0.0101	0.1723	0	1	22
    14	15	0.0018	0.0217	0.366	0	1	22
    15	16	0.0009	0.0094	0.171	0	1	22
    16	17	0.0007	0.0089	0.1342	0	1	22
    16	19	0.0016	0.0195	0.304	0	1	22
    16	21	0.0008	0.0135	0.2548	0	1	22
    16	24	0.0003	0.0059	0.068	0	1	22
    17	18	0.0007	0.0082	0.1319	0	1	22
    17	27	0.0013	0.0173	0.3216	0	1	22
    19	33	0.0007	0.0142	0	  1.07	1	22
    19	20	0.0007	0.0138	0	  1.06	1	22
    20	34	0.0009	0.018	0	  1.009	1	22
    21	22	0.0008	0.014	0.2565	0	1	22
    22	23	0.0006	0.0096	0.1846	0	1	22
    22	35	0	    0.0143	0	  1.025	1	22
    23	24	0.0022	0.035	0.361	0	1	22
    23	36	0.0005	0.0272	0	    1	1	22
    25	26	0.0032	0.0323	0.513	0	1	22
    25	37	0.0006	0.0232	0	  1.025	1	22
    26	27	0.0014	0.0147	0.2396	0	1	22
    26	28	0.0043	0.0474	0.7802	0	1	22
    26	29	0.0057	0.0625	1.029	0	1	22
    28	29	0.0014	0.0151	0.249	0	1	22
    29	38	0.0008	0.0156	0	  1.025	1	22
    31	6	0	    0.025	0	    1	1	22];

%% IBR Data
% 1.  IBR Number
% 2.  Bus Number
% 3.  Control type, 1: GFL, 2 GFM
% 4.  Dampling: D   deltaP=D*Deltaf   all in p.u.
% 5:  Interia:  M   deltaP=M*dM    all in p.u.
% 6:  Initial P  For GFM and GFL   p.u.
% 7:  Initial Q  For GFL           p.u.    
% 8： Initial V  For GFM           p.u.  
% 9:  Out_Put Limits Max 
% 10: Out_Put Limits Min 
% 1   2  3    4      5     6     7     8    9    10  
IBR_data=[
  1  30  1   1e3     0     2    0.1    1    3     0;
  2  31  1   1e3     0     2    0.1    1    3     0;
  3  32  1   1e3     0     2    0.1    1    3     0;
  4  33  1   1e3     0     2    0.1    1    3     0;
  5  34  1   1e3     0     2    0.1    1    3     0;
  6  35  1   1e3     0     2    0.1    1    3     0;
  7  36  2   1e3     10    2.6    0    1    4     1.6;
  8  37  2   1e3     10    2.6    0    1    4     1.6;
  9  38  2   1e3     10    2.6    0    1    4     1.6;
  10 39  2   1e3     10    2.6    0    1    4     1.6];




% Bus data (Bus)
% 1. Bus number
% 2. Nominal phase-phase voltage 
%    1    2
Bus = [ ...
     1   22
     2   22
     3   22
     4   22
     5   22
     6   22
     7   22
     8   22
     9   22
    10   22
    11   22
    12   22
    13   22
    14   22
    15   22
    16   22
    17   22
    18   22
    19   22
    20   22
    21   22
    22   22
    23   22
    24   22
    25   22
    26   22
    27   22
    28   22
    29   22
    30    22
    31    22
    32    22
    33    22
    34    22
    35    22
    36    22
    37    22
    38    22
    39   22];
s=1;
Sbase=1e6;   % VA, but in this system, the inverter power will be 2-3 MW, hence the L should be around 0.02-0.05 pu (in 1 MVA base)
Vbase=22e3;   %V, line to line
Vppeak=Vbase/sqrt(3)*sqrt(2);
Ibase=Sbase/(sqrt(3)*Vbase);
Ipeak=Ibase*sqrt(2);
Fref =50;  %Either 50 or 60 is fine.

Omegabase=2*pi*Fref;
zbase=(line(:,8).^2)./line(:,7);
Rbase=zbase(1);
Lbase=zbase(1)/Omegabase;
Cbase=1/zbase(1)/Omegabase;
line(:,3)=line(:,3).*zbase;
line(:,4)=line(:,4).*zbase/Omegabase;
%Sometimes adjust the total Charges can make the system stable.
line(:,5)=line(:,5)./zbase/Omegabase*0.1; % The original Charges looks large, and because I reduced the power to be 1-3pu in each inverter (smaller than original system), so not such large reactive power needed.

%% LC Filter
    %%GFM   resonance frequency for LC: fbase/sqrt(Lpu*Cpu)
LGFMpu=0.04;
RGFMpu=0.01; 
CGFMpu=0.3;


LGFM=LGFMpu*Lbase; 
RGFM=RGFMpu*Rbase;
CGFM=CGFMpu*Cbase;

    %%GFL
LGFLpu=0.05;  %in 1MVA base, as the normal power of GFL maybe 2-3MW, 0.05 is choose, which is 0.05*3, in 3MVAbase.
RGFLpu=0.05;  % Increase R (damping) sometimes can mitigate the oscillation.
CGFLpu=0.3;

LGFL=LGFLpu*Lbase; 
RGFL=RGFLpu*Rbase;
CGFL=CGFLpu*Cbase;

%% PI Parameter Calculation (p.u. input, p.u. output It was suggested to tune the following parameters (BandWidth,DampRatio) if sometimes system diverge.
%%GFL Current Loop
f_BandWidth_GFL_I= 500; %Hz  
Kp_I_GFL_pu=LGFLpu*f_BandWidth_GFL_I/Fref;
Ki_I_GFL_pu=RGFLpu*f_BandWidth_GFL_I*2*pi;

Kp_I_GFL=Kp_I_GFL_pu*Rbase;  %real value as the simulink model does not do the per unitization
Ki_I_GFL=Ki_I_GFL_pu*Rbase;


%%GFM Voltage Loop
DampRatio_GFM_V = 1.2;    %Cloose loop damping ratio under the assumption that current loop is very fast.
f_BandWidth_GFM_V = 20; % Hz 
f_natural_GFM_V = f_BandWidth_GFM_V/(sqrt(1+2*DampRatio_GFM_V^2+sqrt(1+(1+2*DampRatio_GFM_V^2)^2))); %fBW approximate= 2.48 fnature
Kp_V_GFM_pu =  2*DampRatio_GFM_V* CGFMpu * Fref / f_natural_GFM_V;  
Ki_V_GFM_pu =  (2*pi*f_natural_GFM_V)^2*CGFMpu/Omegabase;

Kp_V_GFM=Kp_V_GFM_pu/Rbase;
Ki_V_GFM=Ki_V_GFM_pu/Rbase;

%%GFM Current Loop
f_BandWidth_GFM_I = 500; % Bandwidth, Hz
Kp_I_GFM_pu = LGFMpu*f_BandWidth_GFM_I/Fref;
Ki_I_GFM_pu = RGFMpu*f_BandWidth_GFM_I*2*pi;

Kp_I_GFM=Kp_I_GFM_pu*Rbase;  
Ki_I_GFM=Ki_I_GFM_pu*Rbase;

%Simulation Time Step
Tstep=1e-4;











%Control parameters for secondary frequency control
% eps_u=0.5*50;
% eps_ps=10000000000;
% c=-1*[1 1 1 1 2 2 2 2 2 0.5];
% % eps_u=1;
% % eps_ps=10000;
% alpha=0.01;
% c=-[1 1 1 1 2 2 2 2 2 0.5]*0.5;
%%
% t_startcontrol=5;
t_start_disturbance=5;
% sigmanoise_frequency=0.0004;
% upper_noise=0.06;
% lower_noise=-0.06;
% Samp_noise=0.1;