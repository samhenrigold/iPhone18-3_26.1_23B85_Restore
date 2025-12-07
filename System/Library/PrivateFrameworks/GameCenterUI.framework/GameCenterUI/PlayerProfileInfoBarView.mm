@interface PlayerProfileInfoBarView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSArray)accessibilityInfoItemPairs;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlayerProfileInfoBarView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_24E15E02C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_24E15FA4C(in, selfCopy, ObjectType, width, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E15E524();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E15EEF0(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_24E15F0B0(scrollCopy);
}

- (NSArray)accessibilityInfoItemPairs
{
  selfCopy = self;
  v3 = sub_24E15F66C();

  if (v3)
  {
    v4 = sub_24E347EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end