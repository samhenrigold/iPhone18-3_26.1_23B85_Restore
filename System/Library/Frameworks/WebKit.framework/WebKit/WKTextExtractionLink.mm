@interface WKTextExtractionLink
- (NSURL)url;
- (WKTextExtractionLink)init;
- (WKTextExtractionLink)initWithURL:(id)l range:(_NSRange)range;
- (_NSRange)range;
@end

@implementation WKTextExtractionLink

- (NSURL)url
{
  v2 = sub_19E6CCF28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CCF18();
  v8 = sub_19E6CCEF8();
  (*(v3 + 8))(v7, v2);

  return v8;
}

- (_NSRange)range
{
  v2 = self + OBJC_IVAR___WKTextExtractionLink_range;
  v3 = *(&self->super.isa + OBJC_IVAR___WKTextExtractionLink_range);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (WKTextExtractionLink)initWithURL:(id)l range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = sub_19E6CCF28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CCF18();
  *(&self->super.isa + OBJC_IVAR___WKTextExtractionLink_backingURL) = sub_19E6CCEF8();
  v13 = (self + OBJC_IVAR___WKTextExtractionLink_range);
  *v13 = location;
  v13[1] = length;
  v16.receiver = self;
  v16.super_class = WKTextExtractionLink;
  v14 = [(WKTextExtractionLink *)&v16 init];
  (*(v8 + 8))(v12, v7);
  return v14;
}

- (WKTextExtractionLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end