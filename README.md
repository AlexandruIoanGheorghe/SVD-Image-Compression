# SVD-Image-Compression

This is a method to compress a black and white image thorough the singular value decomposition of its matrix (each pixel is a grayscale value, which is the normalized so that it allows for algebraic calculations).

The example provided (one of my own images of the Mancunian way) shows that one can obbtain a good copy of the image by only using 40 out of 400 singular values, which is a reduction of x in storage space.

This application underlines the fact that most of the information in a matrix is stored in its first few singular values.
