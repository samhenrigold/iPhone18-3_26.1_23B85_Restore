@interface CIContext
@end

@implementation CIContext

void __67__CIContext_IconServicesAdditions___IS_sharedIconCompositorContext__block_invoke()
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695F830];
  v7[0] = *MEMORY[0x1E695F7F0];
  v7[1] = v0;
  v8[0] = MEMORY[0x1E695E110];
  v8[1] = @"IconServices-Compositor";
  v1 = *MEMORY[0x1E695F800];
  v7[2] = *MEMORY[0x1E695F818];
  v7[3] = v1;
  v8[2] = &unk_1F1A65310;
  v8[3] = MEMORY[0x1E695E118];
  v8[4] = &unk_1F1A65328;
  v2 = *MEMORY[0x1E695F868];
  v7[4] = *MEMORY[0x1E695F860];
  v7[5] = v2;
  v3 = [MEMORY[0x1E695DFB0] null];
  v8[5] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];

  v5 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:v4];
  v6 = _IS_sharedIconCompositorContext_sharedContext;
  _IS_sharedIconCompositorContext_sharedContext = v5;
}

@end