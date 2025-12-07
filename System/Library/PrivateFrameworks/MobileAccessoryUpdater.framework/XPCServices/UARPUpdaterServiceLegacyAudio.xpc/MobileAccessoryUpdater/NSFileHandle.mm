@interface NSFileHandle
+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error;
@end

@implementation NSFileHandle

+ (id)uarpCreateFileHandleForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v8 = [v6 fileExistsAtPath:path];

  if ((!v8 || ([lCopy path], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "removeItemAtPath:error:", v9, error), v9, v10)) && (objc_msgSend(lCopy, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v6, "createFileAtPath:contents:attributes:", v11, 0, 0), v11, v12))
  {
    v13 = [NSFileHandle fileHandleForWritingToURL:lCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end