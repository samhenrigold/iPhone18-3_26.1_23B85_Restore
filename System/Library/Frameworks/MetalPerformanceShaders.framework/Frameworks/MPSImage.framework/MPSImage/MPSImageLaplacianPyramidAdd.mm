@interface MPSImageLaplacianPyramidAdd
- (MPSImageLaplacianPyramidAdd)initWithCoder:(id)coder device:(id)device;
- (MPSImageLaplacianPyramidAdd)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
@end

@implementation MPSImageLaplacianPyramidAdd

- (MPSImageLaplacianPyramidAdd)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  v9.receiver = self;
  v9.super_class = MPSImageLaplacianPyramidAdd;
  result = [(MPSImageLaplacianPyramid *)&v9 initWithDevice:device kernelWidth:width kernelHeight:height weights:weights];
  if (result)
  {
    v8 = result;
    objc_msgSend_setIsPyramidAdd_(result, v7, 1);
    return v8;
  }

  return result;
}

- (MPSImageLaplacianPyramidAdd)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageLaplacianPyramidAdd;
  result = [(MPSImageLaplacianPyramid *)&v7 initWithCoder:coder device:device];
  if (result)
  {
    v6 = result;
    objc_msgSend_setIsPyramidAdd_(result, v5, 1);
    return v6;
  }

  return result;
}

@end