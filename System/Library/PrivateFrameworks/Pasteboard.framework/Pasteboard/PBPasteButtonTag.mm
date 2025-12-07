@interface PBPasteButtonTag
+ (id)calloutBarPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin titleWidth:(double)width contentScaleLevel:(unint64_t)level;
+ (id)contextMenuDynamicPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleFrame:(CGRect)frame iconFrame:(CGRect)iconFrame layout:(int64_t)layout layoutSize:(int64_t)layoutSize;
+ (id)contextMenuPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin layoutSize:(int64_t)layoutSize hasTrailingGutter:(BOOL)gutter;
+ (id)editMenuPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size contentOrigin:(CGPoint)origin displayMode:(unint64_t)mode;
+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)site;
+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)width;
+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)width;
- (CGColor)baseForegroundColorForStyle:(id)style;
- (PBPasteButtonTag)initWithCoder:(id)coder;
@end

@implementation PBPasteButtonTag

+ (id)calloutBarPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin titleWidth:(double)width contentScaleLevel:(unint64_t)level
{
  width = [[PBCalloutBarPasteButtonTag alloc] initWithSecureName:*&name size:level titleOrigin:size.width titleWidth:size.height contentScaleLevel:origin.x, origin.y, width];

  return width;
}

+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)site
{
  v3 = [[PBSystemInputAssistantPasteButtonTag alloc] initWithSite:site];

  return v3;
}

+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)width
{
  v3 = [[PBUndoInteractionHUDIconPasteButtonTag alloc] initWithMinWidth:width];

  return v3;
}

+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)width
{
  v3 = [[PBUndoInteractionHUDTextPasteButtonTag alloc] initWithMinWidth:width];

  return v3;
}

+ (id)contextMenuPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin layoutSize:(int64_t)layoutSize hasTrailingGutter:(BOOL)gutter
{
  v7 = [[PBContextMenuPasteButtonTag alloc] initWithSecureName:*&name size:layoutSize titleOrigin:gutter layoutSize:size.width hasTrailingGutter:size.height, origin.x, origin.y];

  return v7;
}

+ (id)contextMenuDynamicPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size titleFrame:(CGRect)frame iconFrame:(CGRect)iconFrame layout:(int64_t)layout layoutSize:(int64_t)layoutSize
{
  v8 = [[PBContextMenuDynamicPasteButtonTag alloc] initWithSecureName:*&name size:layout titleFrame:layoutSize iconFrame:size.width layout:size.height layoutSize:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, *&iconFrame.origin.x, *&iconFrame.origin.y, *&iconFrame.size.width, *&iconFrame.size.height];

  return v8;
}

+ (id)editMenuPasteButtonTagWithSecureName:(unsigned int)name size:(CGSize)size contentOrigin:(CGPoint)origin displayMode:(unint64_t)mode
{
  v6 = [[PBEditMenuPasteButtonTag alloc] initWithSecureName:*&name size:mode contentOrigin:size.width displayMode:size.height, origin.x, origin.y];

  return v6;
}

- (PBPasteButtonTag)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PBPasteButtonTag;
  return [(PBPasteButtonTag *)&v4 init];
}

- (CGColor)baseForegroundColorForStyle:(id)style
{
  userInterfaceStyle = [style userInterfaceStyle];
  if (userInterfaceStyle)
  {
    if (userInterfaceStyle != 1)
    {
      return 0;
    }

    v4 = MEMORY[0x277CBF4D8];
  }

  else
  {
    v4 = MEMORY[0x277CBF3B8];
  }

  v5 = *v4;

  return CGColorGetConstantColor(v5);
}

@end