# IEEE39BusSystemwithIBR
IEEE 39 bus system with 100% IBR (4GFM and 6GFL)

This is the Simulink Model (Matlab Simlink R2024a) used in the paper:

****Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.***

The model includes 10 IBRs (4GFM and 6GFL). All IBRs are built based on full order model. 
The proposed optimnal secondary frequency is excuted in the model: **IEEE39IBR_ProposedOFC/IEEE39_IBR_FrequencyControl_Fullversion_Opensource.slx**

The benchmark model which does not include the proposed secondary frequency and only includes the primary frequency control is excuted in the model: 
**IEEE39IBR_Primary/IEEE39_IBR_FrequencyControl_Primary.slx**

The "xxx.m" matlab function file in each folder is used for the paprameter initialization, hence, please include it in the matlab path.

Note: the scope of this paper is only for frequency control, for the Voltage control of IBR, we used constant reactive power Q for GFL, and constant voltage magnitude for GFM. Users can adjust the voltage control according to the requirement.

<img width="2054" height="1534" alt="image" src="https://github.com/user-attachments/assets/f3d36c99-f695-4b67-a5e2-2afcfe1aff7a" />



