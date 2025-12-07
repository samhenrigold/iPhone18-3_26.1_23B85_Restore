@interface NSError(ReportViewerAugment)
- (id)augmentWithPrefix:()ReportViewerAugment;
@end

@implementation NSError(ReportViewerAugment)

- (id)augmentWithPrefix:()ReportViewerAugment
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  domain = [self domain];
  code = [self code];
  v14 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  localizedDescription = [self localizedDescription];
  v10 = [v8 stringWithFormat:@"%@: %@", v5, localizedDescription];

  v15[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [v4 errorWithDomain:domain code:code userInfo:v11];

  return v12;
}

@end