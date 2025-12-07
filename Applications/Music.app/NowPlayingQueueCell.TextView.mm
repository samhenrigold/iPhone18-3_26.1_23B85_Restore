@interface NowPlayingQueueCell.TextView
- (_TtCC5Music19NowPlayingQueueCell8TextView)initWithCoder:(id)coder;
- (_TtCC5Music19NowPlayingQueueCell8TextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)layoutSubviews;
@end

@implementation NowPlayingQueueCell.TextView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingQueueCell.TextView();
  v2 = v6.receiver;
  [(NowPlayingQueueCell.TextView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews + 8];

    v3(v5);

    sub_100020438(v3, v4);
  }

  else
  {
  }
}

- (_TtCC5Music19NowPlayingQueueCell8TextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews);
  v11 = type metadata accessor for NowPlayingQueueCell.TextView();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(NowPlayingQueueCell.TextView *)&v13 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtCC5Music19NowPlayingQueueCell8TextView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NowPlayingQueueCell.TextView();
  coderCopy = coder;
  v6 = [(NowPlayingQueueCell.TextView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end