@interface NSError(DMFAdditions)
- (id)serializableError;
@end

@implementation NSError(DMFAdditions)

- (id)serializableError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [self domain];
  code = [self code];
  v9 = *MEMORY[0x1E696A578];
  localizedDescription = [self localizedDescription];
  v10[0] = localizedDescription;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 initWithDomain:domain code:code userInfo:v6];

  return v7;
}

@end