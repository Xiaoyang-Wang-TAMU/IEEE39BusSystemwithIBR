***Update Note***
9/16/2026
In Second Version V2, all the frequency related variable, line parameters, load base frequency, PLL base frequency,  controlled voltage source initial value frequency, GFM , GFL reference frequency are controlled by parameter: Fref. Fref can be either 50 or 60.

ALL PI control parameters are calculated based on Pole–zero cancellation or Pole placement method. User can adjust the bandwidth of the controller, and the PI paraeters will be calculated automatically.
To make the model stable, bandwidth need to be adjusted carefully.

The LC filter parameter R L C also need to be adjusted to avoid oscillation as the PI parameters are coupled with or based on R L C.

As we modify the total generation and load to almost 23 pu (in 1 MW), which is smaller than the original IEEE 39 bus system (62.5 pu in 100MVA), the line-charging susceptances may need to be reduced as not so much Q needed.

I will continuously  improve the model to make it more standardized and easier to use.
