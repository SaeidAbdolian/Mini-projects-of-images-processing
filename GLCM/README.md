**Texture Analysis Using the Gray-Level Co-Occurrence Matrix (GLCM)**

I intend to extract texture features like entropy, energy, homogeneity and contrast from the image.

A statistical method of examining texture that considers the spatial relationship of pixels is the gray-level co-occurrence matrix (GLCM), also known as the gray-level spatial dependence matrix. The GLCM functions characterize the texture of an image by calculating how often pairs of pixel with specific values and in a specified spatial relationship occur in an image, creating a GLCM, and then extracting statistical measures from this matrix. (The texture filter functions, described in Calculate Statistical Measures of Texture cannot provide information about shape, that is, the spatial relationships of pixels in an image.)


After you create the GLCMs using graycomatrix, you can derive several statistics from them using graycoprops. These statistics provide information about the texture of an image.

If you want to know about GLCM more. I offer to you read the PDF which i put in GLCM folder . The name of PDF is What_is_GLCM.

<img src="img/GLCM.png" width="800" height="500">
