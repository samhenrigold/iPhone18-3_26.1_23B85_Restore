@interface ASMPeripheralConfig
- (ASMPeripheralConfig)initWithCoder:(id)coder;
- (id)description;
@end

@implementation ASMPeripheralConfig

- (ASMPeripheralConfig)initWithCoder:(id)coder
{
  v3 = [(ASMPeripheralConfig *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)description
{
  v6 = 0;
  v2 = [objc_opt_class() description];
  NSAppendPrintF(&v6, "%@", v2);
  v3 = v6;
  v4 = v6;

  return v3;
}

@end