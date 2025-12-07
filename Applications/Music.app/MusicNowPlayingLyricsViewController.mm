@interface MusicNowPlayingLyricsViewController
- (MusicNowPlayingLyricsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)contentScrollView;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)setCardHeight:(double)height;
- (void)setNowPlaying:(id)playing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MusicNowPlayingLyricsViewController

- (void)setNowPlaying:(id)playing
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying) = playing;
  playingCopy = playing;
  selfCopy = self;

  sub_10029948C();
}

- (void)setCardHeight:(double)height
{
  *(&self->super.super.super.isa + OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight) = height;
  selfCopy = self;
  sub_10029AB40();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v3 sharedMonitor];
  [sharedMonitor unregisterObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  [(MusicNowPlayingLyricsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10029B2D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = type metadata accessor for NowPlayingLyricsViewController(0);
  v12.receiver = self;
  v12.super_class = v7;
  selfCopy = self;
  [(MusicNowPlayingLyricsViewController *)&v12 viewDidAppear:appearCopy];
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v6, selfCopy + v10, &qword_101188C20, &qword_100EC2030);
  swift_endAccess();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  v4 = v7.receiver;
  [(MusicNowPlayingLyricsViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_1002AAA18();
  v5 = *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  v6 = v5;
  sub_1002AAC80(v5);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  v2 = v3.receiver;
  [(MusicNowPlayingLyricsViewController *)&v3 viewDidLayoutSubviews];
  sub_10029F54C();
}

- (id)contentScrollView
{
  selfCopy = self;
  v3 = sub_1002AB634();

  return v3;
}

- (MusicNowPlayingLyricsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1002AB6F8(v5, v7, bundle);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  sub_1002ABF44(reachabilityCopy);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1002ACB38();

  return v12;
}

@end