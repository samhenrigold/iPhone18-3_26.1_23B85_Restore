@interface NSError(MTLModelException)
+ (id)mtl_modelErrorWithException:()MTLModelException;
@end

@implementation NSError(MTLModelException)

+ (id)mtl_modelErrorWithException:()MTLModelException
{
  v13[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSError+MTLModelException.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"exception != nil"}];
  }

  v12[0] = *MEMORY[0x1E696A578];
  v6 = [v5 description];
  v13[0] = v6;
  v12[1] = *MEMORY[0x1E696A588];
  reason = [v5 reason];
  v12[2] = @"MTLModelThrownException";
  v13[1] = reason;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLModelErrorDomain" code:1 userInfo:v8];

  return v9;
}

@end