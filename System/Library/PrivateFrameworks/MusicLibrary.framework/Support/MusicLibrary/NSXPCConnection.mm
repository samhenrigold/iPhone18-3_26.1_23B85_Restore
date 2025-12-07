@interface NSXPCConnection
- (BOOL)ml_isValid;
- (void)ml_setValid:(BOOL)valid;
@end

@implementation NSXPCConnection

- (BOOL)ml_isValid
{
  v2 = objc_getAssociatedObject(self, "MLNSXPCConnectionIsValidKey");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)ml_setValid:(BOOL)valid
{
  v4 = [NSNumber numberWithBool:valid];
  objc_setAssociatedObject(self, "MLNSXPCConnectionIsValidKey", v4, 1);
}

@end