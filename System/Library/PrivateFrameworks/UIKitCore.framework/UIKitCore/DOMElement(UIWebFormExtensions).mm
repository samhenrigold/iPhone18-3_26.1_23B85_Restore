@interface DOMElement(UIWebFormExtensions)
- (void)getTextWritingDirection:()UIWebFormExtensions override:;
@end

@implementation DOMElement(UIWebFormExtensions)

- (void)getTextWritingDirection:()UIWebFormExtensions override:
{
  result = [objc_msgSend(self "ownerDocument")];
  v7 = result;
  if (a3)
  {
    result = objc_msgSend_isEqualToString_([result direction]);
    *a3 = result ^ 1;
  }

  if (a4)
  {
    result = objc_msgSend_isEqualToString_([v7 unicodeBidi]);
    *a4 = result;
  }

  return result;
}

@end