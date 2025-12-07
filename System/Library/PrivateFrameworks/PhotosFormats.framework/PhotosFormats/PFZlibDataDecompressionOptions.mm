@interface PFZlibDataDecompressionOptions
+ (id)defaultOptions;
- (void)setCreateBuffer:(id)buffer;
- (void)setGrowData:(id)data;
@end

@implementation PFZlibDataDecompressionOptions

- (void)setGrowData:(id)data
{
  v4 = MEMORY[0x1B8C64C40](data, a2);
  growData = self->_growData;
  self->_growData = v4;

  MEMORY[0x1EEE66BB8](v4, growData);
}

- (void)setCreateBuffer:(id)buffer
{
  v4 = MEMORY[0x1B8C64C40](buffer, a2);
  createBuffer = self->_createBuffer;
  self->_createBuffer = v4;

  MEMORY[0x1EEE66BB8](v4, createBuffer);
}

+ (id)defaultOptions
{
  v2 = objc_opt_new();
  *(v2 + 12) = -15;
  v3 = *(v2 + 16);
  *(v2 + 16) = &__block_literal_global_13365;

  v4 = *(v2 + 24);
  *(v2 + 24) = &__block_literal_global_38;

  return v2;
}

void __48__PFZlibDataDecompressionOptions_defaultOptions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [v4 increaseLengthBy:{objc_msgSend(a2, "length") >> 1}];
}

uint64_t __48__PFZlibDataDecompressionOptions_defaultOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF88];
  v3 = 4 * [a2 length];

  return [v2 dataWithLength:v3];
}

@end