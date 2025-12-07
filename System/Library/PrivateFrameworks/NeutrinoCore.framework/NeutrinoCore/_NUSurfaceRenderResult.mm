@interface _NUSurfaceRenderResult
- (NSString)debugDescription;
@end

@implementation _NUSurfaceRenderResult

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = objc_msgSend_region(self);
  image = [(_NUSurfaceRenderResult *)self image];
  image2 = [(_NUSurfaceRenderResult *)self image];
  validRegion = [image2 validRegion];
  geometry = [(_NUImageRenderResult *)self geometry];
  v10 = [v3 stringWithFormat:@"<%@: %p> region=%@, image=%@ (%@), geometry=%@", v4, self, v5, image, validRegion, geometry];

  return v10;
}

@end