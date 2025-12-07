@interface VNRectangleObservation(ITKUtilities)
- (ITKQuad)itkQuad;
- (id)itk_quadConvertedToView:()ITKUtilities withContentsRect:;
@end

@implementation VNRectangleObservation(ITKUtilities)

- (ITKQuad)itkQuad
{
  objc_opt_class();
  v1 = ITKDynamicCast();
  v2 = v1;
  if (v1)
  {
    [v1 topLeft];
    ITKFlipPoint();
    v17 = v4;
    v18 = v3;
    [v2 topRight];
    ITKFlipPoint();
    v6 = v5;
    v8 = v7;
    [v2 bottomLeft];
    ITKFlipPoint();
    v10 = v9;
    v12 = v11;
    [v2 bottomRight];
    ITKFlipPoint();
    v15 = [[ITKQuad alloc] initWithBottomLeft:v10 bottomRight:v12 topLeft:v13 topRight:v14, v18, v17, v6, v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)itk_quadConvertedToView:()ITKUtilities withContentsRect:
{
  v12 = a7;
  itkQuad = [self itkQuad];
  v14 = [itkQuad quadByConvertingFromNormalizedRectToView:v12 contentsRect:{a2, a3, a4, a5}];

  return v14;
}

@end