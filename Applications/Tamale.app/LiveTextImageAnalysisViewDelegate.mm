@interface LiveTextImageAnalysisViewDelegate
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (_TtC6Tamale33LiveTextImageAnalysisViewDelegate)init;
@end

@implementation LiveTextImageAnalysisViewDelegate

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  sub_100005650(self + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_frame, v14);
  memset(v19, 0, sizeof(v19));
  v20 = 1;
  interactionCopy = interaction;
  selfCopy = self;
  sub_10005C9A0(interactionCopy, v14, v19, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;

  sub_1000056C0(v14);
  v10 = 1.0;
  v11 = 0.0;
  if (v18)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7.n128_f64[0];
  }

  if (v18)
  {
    v13 = 1.0;
  }

  else
  {
    v11 = v7.n128_f64[1];
    v13 = v8;
  }

  if ((v18 & 1) == 0)
  {
    v10 = v9;
  }

  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (_TtC6Tamale33LiveTextImageAnalysisViewDelegate)init
{
  v3 = self + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_frame;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_contentImage) = 0;
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for LiveTextImageAnalysisViewDelegate();
  return [(LiveTextImageAnalysisViewDelegate *)&v5 init];
}

@end