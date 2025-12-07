@interface GESSMaterialParameterData
- (BOOL)setColor:(CGColor *)color;
- (BOOL)setTextureImage:(CGImage *)image;
- (GESSMaterialParameterData)init;
@end

@implementation GESSMaterialParameterData

- (GESSMaterialParameterData)init
{
  v3.receiver = self;
  v3.super_class = GESSMaterialParameterData;
  result = [(GESSMaterialParameterData *)&v3 init];
  if (result)
  {
    result->_image = 0;
  }

  return result;
}

- (BOOL)setTextureImage:(CGImage *)image
{
  imageCopy = image;
  self->_image = image;
  return 1;
}

- (BOOL)setColor:(CGColor *)color
{
  CGColorGetComponents(color);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents)
  {
    if (NumberOfComponents >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    v9 = 0;
    v7 = 0x1000000010;
    v8 = v5;
    sub_24BCBF640(&v7);
  }

  return 0;
}

@end