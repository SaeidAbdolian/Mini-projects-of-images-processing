# Piecewise Linear

Traditionally, a grayscale image is represented as a rectangular array whose internal values describe a discrete level of intensity or luminance denoted as pixel. Due to its structure and complete compatibility with matrix operators, this representation is the most widely used in image processing. Although the strong robustness of this standard is not in question, it is always enriching to have an alternative description format in order to provide not only a different image representation scheme but also an additional approach to image processing.

Piece-wise Linear Transformation is type of gray level transformation that is used for image enhancement. It is a spatial domain method. It is used for manipulation of an image so that the result is more suitable than the original for a specific application.

Some commonly used piece-wise linear transformations are:

### Contrast Stretching:
Low contrast image occur often due to improper illumination or non-linearly or small dynamic range of an imaging sensor. It increases the dynamic range of grey levels in the image.

<img src="https://media.geeksforgeeks.org/wp-content/uploads/20191205151359/Capture267.png" width="50%">

### Clipping:
A special case of contrast stretching is clipping where l=n=0. It is used for noise reduction when the input signal is known. It puts all grey levels below r1 to black(0) and above r2 to white(1).

<img src="https://media.geeksforgeeks.org/wp-content/uploads/20191205151438/Capture1105.png" width="50%">

Thresholding:
Another special case of contrast stretching is thresholding where l=m=t. It is also used for noise reduction. It preserves the grey levels beyond r1.

<img src="https://media.geeksforgeeks.org/wp-content/uploads/20191205151527/Capture268.png" width="50%">

### Grey level slicing:
Highlighting a specific range of grey level in an image.

### Case-I:
+ To display a high value for all grey levels in the range of interest.
+ To display a low value for all grey levels.

### Case-II:
+ Brighten the desired range og grey level.
+ Preserve the background quality in the range.

### Bit Extraction:
An 8-bit image can be represented in the form of bit plane. Each plane represents one bit of all pixel values. Bit plane 7 contains the most significant bit (MSB) and bit plane 0 contains least significant bit (LSB). The 4 MSB planes contains most of visually significant data. This technique is useful for image compression and steganography.
