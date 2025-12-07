@interface LibcoreNetUrlFileHandler
- (id)openConnectionWithJavaNetURL:(id)l withJavaNetProxy:(id)proxy;
- (void)parseURLWithJavaNetURL:(id)l withNSString:(id)string withInt:(int)int withInt:(int)withInt;
@end

@implementation LibcoreNetUrlFileHandler

- (id)openConnectionWithJavaNetURL:(id)l withJavaNetProxy:(id)proxy
{
  if (!l)
  {
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(@"url == null");
    objc_exception_throw(v11);
  }

  getHost = [l getHost];
  if (!getHost || (v7 = getHost, ([(__CFString *)getHost isEmpty]& 1) != 0) || [(__CFString *)v7 equalsIgnoreCase:@"localhost"])
  {
    v8 = new_LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(l);

    return v8;
  }

  else
  {
    v10 = new_JavaNetURL_initWithNSString_withNSString_withNSString_(@"ftp", v7, [l getFile]);
    if (proxy)
    {

      return [(JavaNetURL *)v10 openConnectionWithJavaNetProxy:proxy];
    }

    else
    {

      return [(JavaNetURL *)v10 openConnection];
    }
  }
}

- (void)parseURLWithJavaNetURL:(id)l withNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  if (withInt >= int)
  {
    if (int >= withInt)
    {
      v9 = &stru_100484358;
    }

    else if (!string || (v8 = [string substring:*&int endIndex:*&withInt]) == 0 || (v9 = objc_msgSend(v8, "replace:withChar:", 92, 47)) == 0)
    {
      JreThrowNullPointerException();
    }

    v10.receiver = self;
    v10.super_class = LibcoreNetUrlFileHandler;
    [(JavaNetURLStreamHandler *)&v10 parseURLWithJavaNetURL:l withNSString:v9 withInt:0 withInt:[(__CFString *)v9 length]];
  }
}

@end