@interface LSBundleGetSystemApplicationTypes
@end

@implementation LSBundleGetSystemApplicationTypes

void ___LSBundleGetSystemApplicationTypes_block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"System";
  v4[1] = @"SystemAppPlaceholder";
  v4[2] = @"Internal";
  v4[3] = @"Hidden";
  v4[4] = @"CoreServices";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 initWithArray:v1];
  v3 = _LSBundleGetSystemApplicationTypes::systemTypes;
  _LSBundleGetSystemApplicationTypes::systemTypes = v2;
}

@end