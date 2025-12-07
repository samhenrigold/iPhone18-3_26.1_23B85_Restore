@interface DOMNode(UIWebBrowserViewPrivate)
- (void)_nextAssistedNode;
- (void)_previousAssistedNode;
- (void)_startAssistingDocumentView:()UIWebBrowserViewPrivate;
- (void)_stopAssistingDocumentView:()UIWebBrowserViewPrivate;
- (void)_textFormElement;
@end

@implementation DOMNode(UIWebBrowserViewPrivate)

- (void)_startAssistingDocumentView:()UIWebBrowserViewPrivate
{
  result = [self isContentEditable];
  if (result)
  {

    return [a3 _startAssistingKeyboard];
  }

  return result;
}

- (void)_stopAssistingDocumentView:()UIWebBrowserViewPrivate
{
  result = [self isContentEditable];
  if (result)
  {

    return [a3 _stopAssistingKeyboard];
  }

  return result;
}

- (void)_nextAssistedNode
{
  while (1)
  {
    nextFocusNode = [self nextFocusNode];
    v2 = nextFocusNode;
    if (!nextFocusNode || ([nextFocusNode nodeCanBecomeFirstResponder] & 1) != 0)
    {
      break;
    }

    self = v2;
  }

  return v2;
}

- (void)_previousAssistedNode
{
  while (1)
  {
    previousFocusNode = [self previousFocusNode];
    v2 = previousFocusNode;
    if (!previousFocusNode || ([previousFocusNode nodeCanBecomeFirstResponder] & 1) != 0)
    {
      break;
    }

    self = v2;
  }

  return v2;
}

- (void)_textFormElement
{
  if ([self isContentEditable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

@end