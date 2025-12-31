# IEEE39BusSystemwithIBR
IEEE 39 bus system with 100% IBR (4GFM and 6GFL)

# Distributed Optimal Frequency Control for IBR-Dominated Power Systems

<p align="center">
  <img src="https://github.com/user-attachments/assets/f3d36c99-f695-4b67-a5e2-2afcfe1aff7a"
       width="800"
       alt="IEEE 39-bus IBR frequency control framework" />
</p>

This repository provides the MATLAB/Simulink (R2024a) models for distributed coordination between grid-forming (GFM) and grid-following (GFL) inverters for optimal secondary frequency control in power systems.

---

## Related Paper
Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.
---

## Model Overview

- IEEE 39-bus test system
- 10 inverter-based resources (IBRs)
  - 4 grid-forming (GFM) inverters
  - 6 grid-following (GFL) inverters
- All IBRs are implemented using full-order dynamic models
- Primary and secondary frequency control layers are included



---

Note: The scope of this paper is limited to frequency control. For voltage control of inverter-based resources (IBRs), a constant reactive power 
Q is adopted for grid-following (GFL) inverters, and a constant voltage magnitude is used for grid-forming (GFM) inverters. Users may adjust the voltage control strategy according to specific application requirements.


<img width="2054" height="1534" alt="image" src="https://github.com/user-attachments/assets/f3d36c99-f695-4b67-a5e2-2afcfe1aff7a" />

Please cite this project as follows:

[1] Xiaoyang Wang*, Xin Chen, “Distributed Coordination of Grid-Forming and Grid-Following Inverters for Optimal Frequency Control in Power Systems“, arXiv:2411.12682, 2025.


