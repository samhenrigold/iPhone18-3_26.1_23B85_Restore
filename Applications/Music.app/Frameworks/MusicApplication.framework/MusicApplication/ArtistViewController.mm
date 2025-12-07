@interface ArtistViewController
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ArtistViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E4B60();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillAppear:appearCopy];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible];
  v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible] = 1;
  if ((v5 & 1) == 0)
  {
    sub_1E685C();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillDisappear:disappearCopy];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible];
  v4[OBJC_IVAR____TtC16MusicApplication20ArtistViewController__visible] = 0;
  if (v5 == 1)
  {
    sub_1E685C();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(VerticalStackViewController *)&v11 viewDidAppear:appearCopy];
  v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v10 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_1EC1F8(v10, v7, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v9)))(v7, 0, 0, 0, 0, 0);
  sub_1EC260(v7, type metadata accessor for MetricsEvent.Page);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E616C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1EB768(v5);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1E644C(change);
}

@end