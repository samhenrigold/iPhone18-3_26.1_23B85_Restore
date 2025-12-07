@interface OverlappingPlayersPhotoView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSArray)playerViews;
- (void)applyWithPlayerAvatars:(id)avatars;
- (void)layoutSubviews;
- (void)setPlayerViews:(id)views;
@end

@implementation OverlappingPlayersPhotoView

- (NSArray)playerViews
{
  sub_24E16CDE0();
  sub_24DF88A8C(0, &qword_27F1E2650, off_279666D88);
  v2 = sub_24E347EE8();

  return v2;
}

- (void)setPlayerViews:(id)views
{
  sub_24DF88A8C(0, &qword_27F1E2650, off_279666D88);
  v4 = sub_24E347F08();
  selfCopy = self;
  sub_24E16CE70(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_24E16D2FC(width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E16D49C();
}

- (void)applyWithPlayerAvatars:(id)avatars
{
  sub_24DF88A8C(0, &qword_27F1DF028, 0x277D0C170);
  v4 = sub_24E347F08();
  selfCopy = self;
  sub_24E16D6B0(v4);
}

@end