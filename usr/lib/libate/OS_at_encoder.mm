@interface OS_at_encoder
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_at_encoder

- (void)dealloc
{
  ATEncoder_dtor(self);
  v3.receiver = self;
  v3.super_class = OS_at_encoder;
  [(OS_at_encoder *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v8 = *MEMORY[0x29EDCA608];
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v6 = result;
    v7[0] = 0;
    ATEncoder_GetDescription(self, v7, 4096, v4, v5);
    return [(NSString *)v6 stringWithCString:v7 encoding:1];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self && equal)
  {
    return ATEncoder_IsEqual(self, equal);
  }

  else
  {
    return 0;
  }
}

@end