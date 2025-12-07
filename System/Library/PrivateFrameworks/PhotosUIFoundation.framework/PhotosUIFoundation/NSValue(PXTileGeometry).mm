@interface NSValue(PXTileGeometry)
+ (id)valueWithPXTileGeometry:()PXTileGeometry;
- (uint64_t)PXTileGeometryValue;
@end

@implementation NSValue(PXTileGeometry)

- (uint64_t)PXTileGeometryValue
{
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2];
}

+ (id)valueWithPXTileGeometry:()PXTileGeometry
{
  v3 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a3 objCType:"{PXTileGeometry={CGRect={CGPoint=dd}{CGSize=dd}}{CGPoint=dd}{CGSize=dd}{CGAffineTransform=dddddd}ddB{CGSize=dd}{CGRect={CGPoint=dd}{CGSize=dd}}^v}"];

  return v3;
}

@end