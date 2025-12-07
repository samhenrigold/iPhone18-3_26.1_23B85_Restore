@interface LNCATDialog(CATSupport)
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNCATDialog(CATSupport)

- (void)getResultWithCompletionHandler:()CATSupport
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNCATDialog+CATSupport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  parameters = [self parameters];
  v7 = [parameters if_compactMap:&__block_literal_global_5384];

  v26 = @"locale";
  localeIdentifier = [self localeIdentifier];
  v27[0] = localeIdentifier;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  templateDirectoryURL = [self templateDirectoryURL];
  [templateDirectoryURL startAccessingSecurityScopedResource];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v11 = getCATClass_softClass_5386;
  v25 = getCATClass_softClass_5386;
  if (!getCATClass_softClass_5386)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getCATClass_block_invoke_5387;
    v21[3] = &unk_1E74B26D0;
    v21[4] = &v22;
    __getCATClass_block_invoke_5387(v21);
    v11 = v23[3];
  }

  v12 = v11;
  _Block_object_dispose(&v22, 8);
  templateDirectoryURL2 = [self templateDirectoryURL];
  identifier = [self identifier];
  defaultCATOptions = [self defaultCATOptions];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__LNCATDialog_CATSupport__getResultWithCompletionHandler___block_invoke_2;
  v19[3] = &unk_1E74B10B8;
  v19[4] = self;
  v20 = v5;
  v16 = v5;
  LODWORD(v18) = defaultCATOptions;
  [v11 execute:0 templateDir:templateDirectoryURL2 catId:identifier parameters:v7 globals:v9 callback:0 options:v18 completion:v19];
}

@end