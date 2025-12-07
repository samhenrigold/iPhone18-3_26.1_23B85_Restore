@interface NSData(GEOHashUtilities)
- (id)_geo_hexString;
@end

@implementation NSData(GEOHashUtilities)

- (id)_geo_hexString
{
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__NSData_GEOHashUtilities___geo_hexString__block_invoke;
  v5[3] = &unk_1E7063908;
  v3 = v2;
  v6 = v3;
  [self enumerateByteRangesUsingBlock:v5];

  return v3;
}

@end