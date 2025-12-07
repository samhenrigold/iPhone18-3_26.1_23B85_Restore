@interface PXGridTipsHelper_Swift
+ (PXGridTipsHelper_Swift)shared;
+ (void)setTip:(id)tip isPresentable:(BOOL)presentable;
+ (void)setTipActionPerformed:(id)performed;
+ (void)setTipsPresentationDelegate:(id)delegate;
- (PXGridTipsHelper_Swift)init;
@end

@implementation PXGridTipsHelper_Swift

+ (void)setTipsPresentationDelegate:(id)delegate
{
  swift_getObjCClassMetadata();
  v3 = swift_unknownObjectRetain();
  sub_1A3C91E88(v3);
}

- (PXGridTipsHelper_Swift)init
{
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  self->_anon_0[OBJC_IVAR___PXGridTipsHelper_Swift_hasStartedTips] = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PXGridTipsHelper(v3, v4);
  return [(PXTipsHelper_Swift *)&v6 init];
}

+ (void)setTip:(id)tip isPresentable:(BOOL)presentable
{
  v5 = sub_1A524C674();
  _s12PhotosUICore16PXGridTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(v5, v6, presentable);
}

+ (PXGridTipsHelper_Swift)shared
{
  if (qword_1EB18B130 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB18B138;

  return v3;
}

+ (void)setTipActionPerformed:(id)performed
{
  v3 = sub_1A524C674();
  _s12PhotosUICore16PXGridTipsHelperC21setTipActionPerformedyySSFZ_0(v3, v4);
}

@end