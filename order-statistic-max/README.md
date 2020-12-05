# **order_statistic_max**

To apply an order statistic filter to an image, one typically uses 3x3, 5x5 or 7x7 windows. For non-Gaussian noise, the optimal OSF is superior to taking a local average for flat regions. The main problem with such filters is the underlying stationarity assumption: the derivation of the OSF assumes that X is a stationary point process, an assumption which is grossly violated if there is an edge, line, or other strong signal activity in the window. Figure 1.3 illustrates this for a test image degraded by additive white Gaussian noise with  . The median filter (lower left) preserves edges (the checkerboard and the bagel), but wipes out fine details (the text and lines). The 3x3 average, which is the optimal OSF for Gaussian noise, blurs too much.

+ + + ### **Minimum**, **Maximum**, and **Median** Filters

Morphological Filters: Minimum and Maximum
Morphological image processing is a technique introducing operations for transforming images in a special way which takes image content into account. The most common morphological operations are minimum (also known as dilation) and maximum (erosion) filters. The minimum filter extends object boundaries, whereas the maximum filter erodes shapes on the image.

In morphological filters, each pixel is updated based on comparing it against surrounding pixels in the running window. The running window is an image area around a current pixel with a defined radius. For example, if we specify the radius = 1, the running window will be a 3x3 square around the target pixel.

Transformations differ for all morphological operations.

* # **The Maximum Filter**

The maximum and minimum filters are shift-invariant. Whereas the minimum filter replaces the central pixel with the darkest one in the running window, the maximum filter replaces it with the lightest one.

For example, if you have a text string drawn with a thick pen, you can make the sign skinnier. 

<img src="https://www.graphicsmill.com/docs/gm/maxF.png" >
