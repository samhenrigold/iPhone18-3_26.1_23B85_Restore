@interface NSValue(PXTileIdentifier)
+ (id)valueWithPXTileIdentifier:()PXTileIdentifier;
- (uint64_t)PXTileIdentifierValue;
@end

@implementation NSValue(PXTileIdentifier)

- (uint64_t)PXTileIdentifierValue
{
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

+ (id)valueWithPXTileIdentifier:()PXTileIdentifier
{
  v3 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a3 objCType:"{PXTileIdentifier=Q[10Q]}"];

  return v3;
}

@end