@interface HeadphoneControlCenterTrainingViewController
- (_TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneControlCenterTrainingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000ACDB4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneControlCenterTrainingViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000AD1C8();
}

- (_TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_trainingView] = 0;
  *&self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_horizontalConstraint] = 0;
  *&self->trainingView[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXFeatureTourContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_type] = 4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneControlCenterTrainingViewController *)&v7 initWithContentView:view];
}

@end