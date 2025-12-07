@interface DOMNode(UIWebViewAdditions)
- (void)convertRect:()UIWebViewAdditions toView:;
@end

@implementation DOMNode(UIWebViewAdditions)

- (void)convertRect:()UIWebViewAdditions toView:
{
  v13 = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];
  result = [objc_msgSend(objc_msgSend(objc_msgSend(self "ownerDocument")];
  if (v13 != a7)
  {
    return [v13 convertRect:a7 toView:?];
  }

  return result;
}

@end