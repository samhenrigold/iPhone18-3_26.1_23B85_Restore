@interface StoryExportActivityPreviewViewController
- (_TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation StoryExportActivityPreviewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B38A13C8(selfCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1B38A18C4(appearCopy, &selRef_viewDidAppear_, 1);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_1B38A18C4(disappearCopy, &selRef_viewDidDisappear_, 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1B38A19B4(selfCopy);
}

- (_TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  sub_1B38A1FC0();
}

@end