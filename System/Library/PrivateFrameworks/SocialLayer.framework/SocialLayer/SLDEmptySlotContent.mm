@interface SLDEmptySlotContent
- (CGSize)contentSize;
- (SLDEmptySlotContent)initWithStyle:(id)style forRemote:(BOOL)remote;
@end

@implementation SLDEmptySlotContent

- (SLDEmptySlotContent)initWithStyle:(id)style forRemote:(BOOL)remote
{
  remoteCopy = remote;
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = SLDEmptySlotContent;
  v8 = [(SLDEmptySlotContent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_style, style);
    [(SLDEmptySlotContent *)v9 setIsRemote:remoteCopy];
  }

  return v9;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end