@interface LACBackgroundTaskErrorBuilder
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description;
@end

@implementation LACBackgroundTaskErrorBuilder

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = description;
  v6 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [self _errorWithCode:code userInfo:v8];

  return v9;
}

@end