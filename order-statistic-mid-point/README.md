# **order_statistic_mid_point**

To apply an order statistic filter to an image, one typically uses 3x3, 5x5 or 7x7 windows. For non-Gaussian noise, the optimal OSF is superior to taking a local average for flat regions. The main problem with such filters is the underlying stationarity assumption: the derivation of the OSF assumes that X is a stationary point process, an assumption which is grossly violated if there is an edge, line, or other strong signal activity in the window. Figure 1.3 illustrates this for a test image degraded by additive white Gaussian noise with  . The median filter (lower left) preserves edges (the checkerboard and the bagel), but wipes out fine details (the text and lines). The 3x3 average, which is the optimal OSF for Gaussian noise, blurs too much.



* # **The midpoint Filter**

The class midpoint (or class mark) is a specific point in the center of the bins (categories) in a frequency distribution table; It’s also the center of a bar in a histogram. It is defined as the average of the upper and lower class limits. The lower class limit is the lowest value in a bin (a particular category); The upper class limits are the highest values that can be in the bin.

<img src="https://www.graphicsmill.com/docs/gm/CloseF.png" >
