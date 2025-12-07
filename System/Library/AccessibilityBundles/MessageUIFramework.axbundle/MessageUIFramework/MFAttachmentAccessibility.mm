@interface MFAttachmentAccessibility
- (id)markupStringForDisplayWithData:(id)data allowAttachmentElement:(BOOL)element;
@end

@implementation MFAttachmentAccessibility

- (id)markupStringForDisplayWithData:(id)data allowAttachmentElement:(BOOL)element
{
  v11.receiver = self;
  v11.super_class = MFAttachmentAccessibility;
  v4 = [(MFAttachmentAccessibility *)&v11 markupStringForDisplayWithData:data allowAttachmentElement:element];
  v5 = [v4 rangeOfString:@"<object "];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = v6;
    v9 = [v4 mutableCopy];
    [v9 insertString:@" role='button' " atIndex:v7 + v8];

    v4 = v9;
  }

  return v4;
}

@end