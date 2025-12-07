@interface SFCoder
- (SFCoder)initWithOptions:(id)options;
- (SFCodingOptions)options;
- (void)setOptions:(id)options;
@end

@implementation SFCoder

- (SFCoder)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SFCoder;
  v6 = [(SFCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_coderInternal + 1, options);
  }

  return v7;
}

- (SFCodingOptions)options
{
  v2 = [*(self->_coderInternal + 1) copy];

  return v2;
}

- (void)setOptions:(id)options
{
  *(self->_coderInternal + 1) = [options copy];

  MEMORY[0x2821F96F8]();
}

@end