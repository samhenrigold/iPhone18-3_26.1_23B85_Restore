@interface ServiceOverlayLockupView
- (ASCLockup)lockup;
- (ASCViewMetrics)viewMetrics;
- (ASOServiceAdInteractionAttributor)adInteractionAttributor;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)coder;
- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)frame;
- (id)additionalMetricsFields;
- (id)lockupViewPerformAdAttributionForState:(id)state;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (int64_t)semanticContentAttribute;
- (void)didTapOnOverlay;
- (void)layoutSubviews;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)setAdInteractionAttributor:(id)attributor;
- (void)setHostSignpostSpan:(id)span;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setVariant:(int64_t)variant;
- (void)updateFonts;
@end

@implementation ServiceOverlayLockupView

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = 0;
  swift_unknownObjectWeakInit();
  result = sub_100018588();
  __break(1u);
  return result;
}

- (void)setVariant:(int64_t)variant
{
  selfCopy = self;
  sub_100012AA0(variant, selfCopy);
}

- (ASOServiceAdInteractionAttributor)adInteractionAttributor
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAdInteractionAttributor:(id)attributor
{
  v5 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = attributor;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (ASCLockup)lockup
{
  lockup = [*(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView) lockup];

  return lockup;
}

- (void)setHostSignpostSpan:(id)span
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan) = span;
  spanCopy = span;
  selfCopy = self;
  sub_100013074(v6);
}

- (int64_t)semanticContentAttribute
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType(v2);
  return [(ServiceOverlayLockupView *)&v4 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  ObjectType = swift_getObjectType(v3);
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(ServiceOverlayLockupView *)&v10 setSemanticContentAttribute:attribute];
  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [v8 setSemanticContentAttribute:{-[ServiceOverlayLockupView semanticContentAttribute](&v9, "semanticContentAttribute")}];
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType(v2);
  v5 = sub_100018158();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100018268();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = self;
  v24.super_class = ObjectType;
  selfCopy = self;
  [(ServiceOverlayLockupView *)&v24 layoutSubviews];
  sub_1000133D8(v12);
  [(ServiceOverlayLockupView *)selfCopy bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(ServiceOverlayLockupView *)selfCopy layoutMargins];
  sub_100010BD8(v15, v17, v19, v21, v22, v23);
  sub_1000181E8();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = sub_100018268();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  [(ServiceOverlayLockupView *)selfCopy layoutMargins];
  sub_1000184E8(v17);
  sub_1000133D8(v7);
  sub_100018168();
  v10 = v9;
  v12 = v11;

  (*(v5 + 8))(v7, v4);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)updateFonts
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  sub_10000D548(0, &qword_10002C5F8, UIFont_ptr);
  v4 = qword_10002BF68;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100018178();
  sub_10000E764(v6, qword_10002CDC0);
  traitCollection = [(ServiceOverlayLockupView *)selfCopy traitCollection];
  v8 = sub_100018508();

  [v3 setFont:v8];
}

- (void)lockupViewDidBeginRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100017034();
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100017154();
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_10001727C(errorCopy);
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_100017404();

  swift_unknownObjectRelease();

  return v7;
}

- (ASCViewMetrics)viewMetrics
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
  selfCopy = self;
  lockup = [v2 lockup];
  metrics = [lockup metrics];

  return metrics;
}

- (void)didTapOnOverlay
{
  selfCopy = self;
  sub_1000144F0();
}

- (id)additionalMetricsFields
{
  selfCopy = self;
  sub_1000151B8();

  v3.super.isa = sub_100018408().super.isa;

  return v3.super.isa;
}

- (_TtC23AppStoreOverlaysService24ServiceOverlayLockupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)lockupViewPerformAdAttributionForState:(id)state
{
  v5 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  stateCopy = state;
  selfCopy = self;
  sub_100015424(v7);

  v10 = sub_100018088();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    sub_100018068(v12);
    v15 = v14;
    (*(v11 + 8))(v7, v10);
    v13 = v15;
  }

  return v13;
}

@end