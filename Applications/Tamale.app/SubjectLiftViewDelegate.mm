@interface SubjectLiftViewDelegate
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (_TtC6Tamale23SubjectLiftViewDelegate)init;
@end

@implementation SubjectLiftViewDelegate

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  sub_100005650(self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_frame, v15);
  v5 = *&self->frame[OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates + 8];
  v20[0] = *(&self->super.isa + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates);
  v20[1] = v5;
  v21 = self->frame[OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates + 24];
  interactionCopy = interaction;
  selfCopy = self;
  sub_10005C9A0(interactionCopy, v15, v20, &v16);
  v8 = v16;
  v9 = v17;
  v10 = v18;

  sub_1000056C0(v15);
  v11 = 1.0;
  v12 = 0.0;
  if (v19)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8.n128_f64[0];
  }

  if (v19)
  {
    v14 = 1.0;
  }

  else
  {
    v12 = v8.n128_f64[1];
    v14 = v9;
  }

  if ((v19 & 1) == 0)
  {
    v11 = v10;
  }

  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (_TtC6Tamale23SubjectLiftViewDelegate)init
{
  v2 = self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_frame;
  *(v2 + 4) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SubjectLiftViewDelegate();
  return [(SubjectLiftViewDelegate *)&v5 init];
}

@end