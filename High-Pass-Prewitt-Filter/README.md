# High-Pass_Prewitt_Filter

Filtering an Image Image filtering is useful for many applications, including smoothing, sharpening, removing noise, and edge detection. A filter is defined by a kernel, which is a small array applied to each pixel and its neighbors within an image. In most applications, the center of the kernel is aligned with the current pixel, and is a square with an odd number (3, 5, 7, etc.) of elements in each dimension. The process used to apply filters to an image is known as convolution, and may be applied in either the spatial or frequency domain. See Overview of Transforming Between Image Domains for more information on image domains.

Within the spatial domain, the first part of the convolution process multiplies the elements of the kernel by the matching pixel values when the kernel is centered over a pixel. The elements of the resulting array (which is the same size as the kernel) are averaged, and the original pixel value is replaced with this result. The CONVOL function performs this convolution process for an entire image.

Within the frequency domain, convolution can be performed by multiplying the FFT (Fast Fourier Transform) of the image by the FFT of the kernel, and then transforming back into the spatial domain. The kernel is padded with zero values to enlarge it to the same size as the image before the forward FFT is applied. These types of filters are usually specified within the frequency domain and do not need to be transformed. IDL's DIST and HANNING functions are examples of filters already transformed into the frequency domain. See Windowing to Remove Noise for more information on these types of filters.

The following examples in this section will focus on some of the basic filters applied within the spatial domain using the CONVOL function:

Low Pass Filtering

Low Pass Filtering

High Pass Filtering

Directional Filtering

Laplacian Filtering

Sobel Filtering

Prewitt Filtering

Gaussian Filter

we are using High-Pass-Prewitt-Filter .

Edge detection filters focus on finding sharp contrast or border between colors in an image to create edges or lines.

**Prewitt Filter :** A square kernel that includes the diagonal pixels just as strongly as the orthogonal pixels. Gives a very strong effect.
