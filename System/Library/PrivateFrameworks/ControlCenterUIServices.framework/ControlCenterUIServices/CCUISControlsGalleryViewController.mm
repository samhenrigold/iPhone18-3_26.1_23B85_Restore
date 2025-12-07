@interface CCUISControlsGalleryViewController
- (CCUISControlsGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CCUISControlsGalleryViewControllerCustomItemsDelegate)customItemsDelegate;
- (CCUISControlsGalleryViewControllerDelegate)delegate;
- (void)setGalleryManager:(id)manager;
- (void)setSelectedControl:(id)control;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUISControlsGalleryViewController

- (CCUISControlsGalleryViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedControl:(id)control
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl) = control;
  controlCopy = control;
  selfCopy = self;

  [(CCUISControlsGalleryViewController *)selfCopy isViewLoaded];
}

- (void)viewDidLoad
{
  selfCopy = self;
  CCUISControlsGalleryViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  delegate = [(CCUISControlsGalleryViewController *)selfCopy delegate];
  if (delegate)
  {
    v6 = delegate;
    if (([(CCUISControlsGalleryViewControllerDelegate *)delegate respondsToSelector:sel_controlsGalleryViewControllerWillPresent_]& 1) != 0)
    {
      [(CCUISControlsGalleryViewControllerDelegate *)v6 controlsGalleryViewControllerWillPresent:selfCopy];
    }

    swift_unknownObjectRelease();
  }

  sub_2442A47F8();
  v7.receiver = selfCopy;
  v7.super_class = CCUISControlsGalleryViewController;
  [(CCUISControlsGalleryViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v8.receiver = self;
  v8.super_class = CCUISControlsGalleryViewController;
  selfCopy = self;
  [(CCUISControlsGalleryViewController *)&v8 viewIsAppearing:appearingCopy];
  v5 = objc_allocWithZone(MEMORY[0x277CFA280]);
  v6 = [v5 init];
  v7 = sub_2442B4878();
  [v6 userEnteredAddGalleryForHost_];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CCUISControlsGalleryViewController.viewWillLayoutSubviews()();
}

- (void)setGalleryManager:(id)manager
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager) = manager;
  managerCopy = manager;
}

- (CCUISControlsGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CCUISControlsGalleryViewControllerCustomItemsDelegate)customItemsDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end