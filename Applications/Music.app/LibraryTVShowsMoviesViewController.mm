@interface LibraryTVShowsMoviesViewController
- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)indexTitlesForCollectionView:(id)view;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LibraryTVShowsMoviesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1007BB830();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1007BF588(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1007BF6D0(disappear);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1007CB020();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1007CB47C(section);

  return v8;
}

- (id)indexTitlesForCollectionView:(id)view
{
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v5 = &v17 - v4;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v7 = &v17 - v6;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    selfCopy = self;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v5);

    v9 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
    {
      v10 = &unk_1011A3860;
      v11 = &qword_100EC8DE8;
    }

    else
    {

      v10 = &qword_1011A3880;
      v11 = &unk_100EC8DF8;
    }

    v12 = v5;
  }

  else
  {
    selfCopy2 = self;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    v14 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      v10 = &qword_1011A3870;
      v11 = &qword_100EE3968;
    }

    else
    {

      v10 = &qword_1011A3888;
      v11 = &unk_100EE3980;
    }

    v12 = v7;
  }

  sub_1000095E8(v12, v10, v11);

  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(index:)();
  v9.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);

  return v9.super.isa;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_1007C4E78(viewCopy, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1007C5298(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1007C6270(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1007CBCEC(v7);

  return v10;
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007CCC78();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007CCD0C(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
  RequestResponse.Controller.isPaused.setter(0);
  RequestResponse.Controller.isPaused.setter(0);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007C91D4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end