@interface FeaturedMusicVideoVerticalCell
+ (void)visualContentInsets;
- (CGRect)bounds;
- (CGRect)frame;
- (NSDate)releaseDate;
- (NSString)accessibilityDateReleasedText;
- (_TtC16MusicApplication30FeaturedMusicVideoVerticalCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setReleaseDate:(id)date;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FeaturedMusicVideoVerticalCell

- (_TtC16MusicApplication30FeaturedMusicVideoVerticalCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  v7 = sub_AB3430();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView) = 0;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents);
  *v8 = sub_1735F8();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSDate)releaseDate
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v5, v4);
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v7 + 8))(v4, v6);
    v9 = isa;
  }

  return v9;
}

- (void)setReleaseDate:(id)date
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v13[-v7];
  if (date)
  {
    sub_AB33F0();
    v9 = sub_AB3430();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_AB3430();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v11, v6);
  swift_beginAccess();
  selfCopy = self;
  sub_2F0A8(v8, self + v11);
  swift_endAccess();
  sub_172550(v6);
  sub_12E1C(v6, &unk_E01230, "|,\r");
  sub_12E1C(v8, &unk_E01230, "|,\r");
}

- (CGRect)frame
{
  sub_172ADC(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_172ADC(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_172D7C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_17300C(change);
}

- (NSString)accessibilityDateReleasedText
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

+ (void)visualContentInsets
{
  sub_1735F8();
  v2 = v1;
  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  if (v2 >> 62)
  {
    v3 = sub_ABB060();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
LABEL_12:

      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_14:
    sub_36003C(v5, v2, v0);
    goto LABEL_10;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:
    swift_beginAccess();

    goto LABEL_12;
  }

  __break(1u);
}

@end