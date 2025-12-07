@interface StockSearchCellView
- (BOOL)isAccessibilityElement;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityHint;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityCustomActions:(id)actions;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setIsAccessibilityElement:(BOOL)element;
@end

@implementation StockSearchCellView

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v4 = sub_220787AB0(selfCopy, v3);

  return v4 & 1;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockSearchCellView *)&v4 setIsAccessibilityElement:elementCopy];
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = sub_220787CD8(selfCopy, v3);

  return v4;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(StockSearchCellView *)&v4 setAccessibilityTraits:traits];
}

- (NSString)accessibilityHint
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  bundleForClass_ = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v4 = sub_22089132C();

  return v4;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v4 = sub_220787FC0(selfCopy, v3);

  if (v4)
  {
    sub_22044D56C(0, &unk_281299868, 0x277D75088);
    v5 = sub_2208916DC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  ObjectType = swift_getObjectType();
  if (actions)
  {
    sub_22044D56C(0, &unk_281299868, 0x277D75088);
    sub_2208916EC();
    selfCopy = self;
    actions = sub_2208916DC();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(StockSearchCellView *)&v8 setAccessibilityCustomActions:actions];
}

@end