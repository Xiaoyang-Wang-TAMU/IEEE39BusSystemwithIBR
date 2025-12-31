# IEEE39BusSystemwithIBR
IEEE 39 bus system with 100% IBR (4GFM and 6GFL)

This is the Simulink Model (Matlab Simlink R2024a) used in the paper:

****Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.***

The model includes 10 IBRs (4GFM and 6GFL). All IBRs are built based on full order model. 
The proposed optimnal secondary frequency is excuted in the model: **IEEE39IBR_ProposedOFC/IEEE39_IBR_FrequencyControl_Fullversion_Opensource.slx**

The benchmark model which does not include the proposed secondary frequency and only includes the primary frequency control is excuted in the model: 
**IEEE39IBR_Primary/IEEE39_IBR_FrequencyControl_Primary.slx**

The "xxx.m" matlab function file in each folder is used for the paprameter initialization, hence, please include it in the matlab path.

Note: The scope of this paper is limited to frequency control. For voltage control of inverter-based resources (IBRs), a constant reactive power 
Q is adopted for grid-following (GFL) inverters, and a constant voltage magnitude is used for grid-forming (GFM) inverters. Users may adjust the voltage control strategy according to specific application requirements.

<img width="2054" height="1534" alt="image" src="https://github.com/user-attachments/assets/f3d36c99-f695-4b67-a5e2-2afcfe1aff7a" />

Please cite this project as follows:

[1] Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.


