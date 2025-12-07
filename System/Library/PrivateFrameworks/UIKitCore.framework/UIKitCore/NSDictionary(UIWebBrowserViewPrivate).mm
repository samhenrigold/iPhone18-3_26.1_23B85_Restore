@interface NSDictionary(UIWebBrowserViewPrivate)
- (uint64_t)_web_messageLineNumber;
- (uint64_t)_web_messageType;
@end

@implementation NSDictionary(UIWebBrowserViewPrivate)

- (uint64_t)_web_messageLineNumber
{
  v1 = [self objectForKey:@"lineNumber"];

  return [v1 intValue];
}

- (uint64_t)_web_messageType
{
  v2 = [self objectForKey:@"MessageLevel"];
  if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = 8;
  }

  else
  {
    v3 = 16;
  }

  v4 = [self objectForKey:@"MessageSource"];
  if (objc_msgSend_isEqualToString_(v4))
  {
    v5 = 32;
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    v5 = 64;
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    v5 = 128;
  }

  else if (objc_msgSend_isEqualToString_(v4))
  {
    v5 = 256;
  }

  else
  {
    v5 = 512;
  }

  return v5 | v3;
}

@end