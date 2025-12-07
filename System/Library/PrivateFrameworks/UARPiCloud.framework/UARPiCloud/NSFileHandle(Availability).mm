@interface NSFileHandle(Availability)
+ (id)uarpCreateFileHandleForWritingToURL:()Availability error:;
@end

@implementation NSFileHandle(Availability)

+ (id)uarpCreateFileHandleForWritingToURL:()Availability error:
{
  v5 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path];

  if ((!v8 || ([v5 path], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(defaultManager, "removeItemAtPath:error:", v9, a4), v9, v10)) && (objc_msgSend(v5, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(defaultManager, "createFileAtPath:contents:attributes:", v11, 0, 0), v11, v12))
  {
    v13 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v5 error:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end