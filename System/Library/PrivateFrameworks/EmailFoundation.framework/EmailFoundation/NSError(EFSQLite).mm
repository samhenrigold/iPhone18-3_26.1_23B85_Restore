@interface NSError(EFSQLite)
+ (id)ef_SQLiteErrorWithCode:()EFSQLite;
@end

@implementation NSError(EFSQLite)

+ (id)ef_SQLiteErrorWithCode:()EFSQLite
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_registerSQLiteErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EFSQLite) ef_SQLiteErrorWithCode:];
  }

  if (a3 < 0x100)
  {
    v7 = 0;
  }

  else
  {
    v10 = @"EFSQLiteExtendedErrorCodeKey";
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v7 = v6;
  }

  v8 = [[self alloc] initWithDomain:@"EFSQLiteErrorDomain" code:a3 userInfo:v7];

  return v8;
}

@end