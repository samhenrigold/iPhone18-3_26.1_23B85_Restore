@interface SLDFooterViewEmptySlotContent
- (SLDFooterViewEmptySlotContent)initWithStyle:(id)style maxWidth:(double)width forRemote:(BOOL)remote;
@end

@implementation SLDFooterViewEmptySlotContent

- (SLDFooterViewEmptySlotContent)initWithStyle:(id)style maxWidth:(double)width forRemote:(BOOL)remote
{
  v9.receiver = self;
  v9.super_class = SLDFooterViewEmptySlotContent;
  width = [(SLDEmptySlotContent *)&v9 initWithStyle:style forRemote:remote, width];
  v6 = width;
  if (width)
  {
    style = [(SLDEmptySlotContent *)width style];

    if (style)
    {
      [(SLDEmptySlotContent *)v6 setContentSize:0.0, 40.0];
    }
  }

  return v6;
}

@end