@interface MCSignpostManager
+ (id)signpostsForTypeFilter:(unint64_t)filter featureFilter:(id)featureFilter duration:(double)duration error:(id *)error;
@end

@implementation MCSignpostManager

+ (id)signpostsForTypeFilter:(unint64_t)filter featureFilter:(id)featureFilter duration:(double)duration error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"signpost manager disabled";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:{1, duration}];
    *error = [v7 errorWithDomain:@"MCSignpostManager" code:-1 userInfo:v8];
  }

  return 0;
}

@end