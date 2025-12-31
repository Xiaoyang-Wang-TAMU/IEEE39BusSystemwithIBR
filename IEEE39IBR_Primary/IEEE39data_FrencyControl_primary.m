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
    1	2	0.0035	0.0411	0.6987	0	100	22
    1	39	0.001	0.025	0.75	0	100	22
    2	3	0.0013	0.0151	0.2572	0	100	22
    2	25	0.007	0.0086	0.146	0	100	22
    2	30	0	    0.0181	0	  1.025	100	22
    3	4	0.0013	0.0213	0.2214	0	100	22
    3	18	0.0011	0.0133	0.2138	0	100	22
    4	5	0.0008	0.0128	0.1342	0	100	22
    4	14	0.0008	0.0129	0.1382	0	100	22
    5	8	0.0008	0.0112	0.1476	0	100	22
    6	5	0.0002	0.0026	0.0434	0	100	22
    6	7	0.0006	0.0092	0.113	0	100	22
    6	11	0.0007	0.0082	0.1389	0	100	22
    7	8	0.0004	0.0046	0.078	0	100	22
    8	9	0.0023	0.0363	0.3804	0	100	22
    9	39	0.001	0.025	1.2	    0	100	22
    10	11	0.0004	0.0043	0.0729	0	100	22
    10	13	0.0004	0.0043	0.0729	0	100	22
    10	32	0	    0.02	0	  1.07	100	22
    12	11	0.0016	0.0435	0	  1.006	100	22
    12	13	0.0016	0.0435	0	  1.006	100	22
    13	14	0.0009	0.0101	0.1723	0	100	22
    14	15	0.0018	0.0217	0.366	0	100	22
    15	16	0.0009	0.0094	0.171	0	100	22
    16	17	0.0007	0.0089	0.1342	0	100	22
    16	19	0.0016	0.0195	0.304	0	100	22
    16	21	0.0008	0.0135	0.2548	0	100	22
    16	24	0.0003	0.0059	0.068	0	100	22
    17	18	0.0007	0.0082	0.1319	0	100	22
    17	27	0.0013	0.0173	0.3216	0	100	22
    19	33	0.0007	0.0142	0	  1.07	100	22
    19	20	0.0007	0.0138	0	  1.06	100	22
    20	34	0.0009	0.018	0	  1.009	100	22
    21	22	0.0008	0.014	0.2565	0	100	22
    22	23	0.0006	0.0096	0.1846	0	100	22
    22	35	0	    0.0143	0	  1.025	100	22
    23	24	0.0022	0.035	0.361	0	100	22
    23	36	0.0005	0.0272	0	    1	100	22
    25	26	0.0032	0.0323	0.513	0	100	22
    25	37	0.0006	0.0232	0	  1.025	100	22
    26	27	0.0014	0.0147	0.2396	0	100	22
    26	28	0.0043	0.0474	0.7802	0	100	22
    26	29	0.0057	0.0625	1.029	0	100	22
    28	29	0.0014	0.0151	0.249	0	100	22
    29	38	0.0008	0.0156	0	  1.025	100	22
    31	6	0	    0.025	0	    1	100	22];

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
   Sbase=1e6;
   Vbase=22e3;
   Fref =60;
   zbase=(line(:,8).^2)./line(:,7)*100;
   line(:,3)=line(:,3).*zbase;
   line(:,4)=line(:,4).*zbase/(120*pi);
   line(:,5)=line(:,5)./zbase/(120*pi)*5e-2;
%%
%Control parameters
% eps_u=0.5*50;
% eps_ps=10000000000;
% c=-1*[1 1 1 1 2 2 2 2 2 0.5];
% % eps_u=1;
% % eps_ps=10000;
% alpha=0.01;
% c=-[1 1 1 1 2 2 2 2 2 0.5]*0.5;
%%
% t_startcontrol=5;
% t_start_disturbance=5;
% sigmanoise_frequency=0.0004;
% upper_noise=0.06;
% lower_noise=-0.06;
% Samp_noise=0.1;