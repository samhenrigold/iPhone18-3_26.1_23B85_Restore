@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __50__NSProcessInfo_FCAdditions__fc_processLaunchDate__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processIdentifier];

  *v6 = 0xE00000001;
  v7 = 1;
  v8 = v1;
  memset(v5, 0, 512);
  v4 = 648;
  sysctl(v6, 4u, v5, &v4, 0, 0);
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*&v5[0]];
  v3 = _MergedGlobals_148;
  _MergedGlobals_148 = v2;
}

@end