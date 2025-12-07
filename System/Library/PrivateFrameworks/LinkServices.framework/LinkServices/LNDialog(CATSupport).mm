@interface LNDialog(CATSupport)
- (void)defaultCATOptions;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNDialog(CATSupport)

- (void)getResultWithCompletionHandler:()CATSupport
{
  v3 = a3;
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[LNDialog getResultWithCompletionHandler:] must be overridden"];
  __break(1u);
}

- (void)defaultCATOptions
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCATDisableLoggingSymbolLoc_ptr;
  v7 = getCATDisableLoggingSymbolLoc_ptr;
  if (!getCATDisableLoggingSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCATDisableLoggingSymbolLoc_block_invoke;
    v3[3] = &unk_1E74B26D0;
    v3[4] = &v4;
    __getCATDisableLoggingSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getCATDisableLogging(void)"];
    [currentHandler handleFailureInFunction:v2 file:@"LNDialog+CATSupport.m" lineNumber:14 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

@end