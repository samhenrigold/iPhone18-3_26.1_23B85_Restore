@interface MovieHorizontalCell
+ (UIEdgeInsets)visualContentInsets;
- (NSDate)releaseDate;
- (NSString)title;
- (_TtC16MusicApplication19MovieHorizontalCell)initWithCoder:(id)coder;
- (void)setReleaseDate:(id)date;
- (void)setTitle:(id)title;
@end

@implementation MovieHorizontalCell

- (_TtC16MusicApplication19MovieHorizontalCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  v6 = sub_AB3430();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration;
  *v7 = 0;
  v7[8] = 1;
  *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_contentRatingAndWhatever) = _swiftEmptyArrayStorage;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents);
  *v8 = sub_2ED38();
  v8[1] = v9;
  v8[2] = v10;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title + 8);
  *v6 = v5;
  v6[1] = v9;
  titleCopy = title;
  selfCopy = self;
  sub_2DD6C(v7, v8);
}

- (NSDate)releaseDate
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
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

  v11 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v11, v6);
  swift_beginAccess();
  selfCopy = self;
  sub_2F0A8(v8, self + v11);
  swift_endAccess();
  sub_2E13C(v6);
  sub_12E1C(v6, &unk_E01230, "|,\r");
  sub_12E1C(v8, &unk_E01230, "|,\r");
}

+ (UIEdgeInsets)visualContentInsets
{
  v2 = 10.0;
  v3 = 0.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end