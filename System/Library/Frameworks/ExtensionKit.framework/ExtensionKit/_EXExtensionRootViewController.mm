@interface _EXExtensionRootViewController
- (void)embedViewController:(id)controller;
@end

@implementation _EXExtensionRootViewController

- (void)embedViewController:(id)controller
{
  v24[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  embededViewController = [(_EXExtensionRootViewController *)self embededViewController];
  if (controllerCopy)
  {
    view = [controllerCopy view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(_EXExtensionRootViewController *)self view];
    [view2 addSubview:view];

    view3 = [(_EXExtensionRootViewController *)self view];
    v17 = MEMORY[0x1E696ACD8];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [view3 leftAnchor];
    v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[0] = v20;
    topAnchor = [view topAnchor];
    topAnchor2 = [view3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[1] = v16;
    rightAnchor = [view rightAnchor];
    rightAnchor2 = [view3 rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[2] = v10;
    bottomAnchor = [view bottomAnchor];
    [view3 bottomAnchor];
    v12 = v23 = embededViewController;
    v13 = [bottomAnchor constraintEqualToAnchor:v12];
    v24[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v14];

    embededViewController = v23;
    [(_EXExtensionRootViewController *)self setEmbededViewController:controllerCopy];
    [(_EXExtensionRootViewController *)self addChildViewController:controllerCopy];
  }

  if (embededViewController)
  {
    [embededViewController removeFromParentViewController];
  }
}

@end