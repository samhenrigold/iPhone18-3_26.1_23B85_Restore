@interface AirPlayProxCardViewController
- (AirPlayProxCardViewController)initWithTitle:(id)title subTitle:(id)subTitle imageName:(id)name tintColor:(id)color shouldAnimate:(BOOL)animate actionTitle:(id)actionTitle bottomSubtitle:(id)subtitle completion:(id)self0;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AirPlayProxCardViewController

- (AirPlayProxCardViewController)initWithTitle:(id)title subTitle:(id)subTitle imageName:(id)name tintColor:(id)color shouldAnimate:(BOOL)animate actionTitle:(id)actionTitle bottomSubtitle:(id)subtitle completion:(id)self0
{
  animateCopy = animate;
  titleCopy = title;
  subTitleCopy = subTitle;
  nameCopy = name;
  colorCopy = color;
  actionTitleCopy = actionTitle;
  subtitleCopy = subtitle;
  completionCopy = completion;
  v56.receiver = self;
  v56.super_class = AirPlayProxCardViewController;
  v22 = [(AirPlayProxCardViewController *)&v56 initWithContentView:0];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

  [(AirPlayProxCardViewController *)v22 setTitle:titleCopy];
  [(AirPlayProxCardViewController *)v23 setSubtitle:subTitleCopy];
  [(AirPlayProxCardViewController *)v23 setDismissalType:3];
  [(AirPlayProxCardViewController *)v23 setShouldAnimate:animateCopy];
  [(AirPlayProxCardViewController *)v23 setBottomTrayTitle:subtitleCopy];
  v24 = [UIImageSymbolConfiguration configurationWithPointSize:96.0];
  v25 = [UIImage systemImageNamed:nameCopy withConfiguration:v24];
  v26 = v25;
  if (v25)
  {
    v45 = v24;
    v46 = completionCopy;
    v47 = subtitleCopy;
    v48 = actionTitleCopy;
    v49 = nameCopy;
    v50 = subTitleCopy;
    v51 = titleCopy;
    v52 = v25;
    v27 = [[UIImageView alloc] initWithImage:v25];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (colorCopy)
    {
      [v27 setTintColor:colorCopy];
    }

    contentView = [(AirPlayProxCardViewController *)v23 contentView];
    [contentView addSubview:v27];

    contentView2 = [(AirPlayProxCardViewController *)v23 contentView];
    mainContentGuide = [contentView2 mainContentGuide];

    topAnchor = [v27 topAnchor];
    topAnchor2 = [mainContentGuide topAnchor];
    v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v57[0] = v42;
    centerYAnchor = [v27 centerYAnchor];
    centerYAnchor2 = [mainContentGuide centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v57[1] = v33;
    centerXAnchor = [v27 centerXAnchor];
    centerXAnchor2 = [mainContentGuide centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v57[2] = v36;
    v37 = [NSArray arrayWithObjects:v57 count:3];
    [NSLayoutConstraint activateConstraints:v37];

    subTitleCopy = v50;
    titleCopy = v51;
    actionTitleCopy = v48;
    nameCopy = v49;
    completionCopy = v46;
    subtitleCopy = v47;
    v24 = v45;
LABEL_6:
    v26 = v52;
    if (dword_1000224E0 <= 50 && (dword_1000224E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000224E0, "[AirPlayProxCardViewController initWithTitle:subTitle:imageName:tintColor:shouldAnimate:actionTitle:bottomSubtitle:completion:]", 33554482, "[%{ptr}] Initialize proxCard with title: %@", v23, titleCopy);
    }

    goto LABEL_13;
  }

  if (dword_1000224E0 <= 90)
  {
    v52 = 0;
    if (dword_1000224E0 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1000224E0, "[AirPlayProxCardViewController initWithTitle:subTitle:imageName:tintColor:shouldAnimate:actionTitle:bottomSubtitle:completion:]", 33554522, "[%{ptr}] Error creating image with name %@", v23, nameCopy);
    }

    goto LABEL_6;
  }

LABEL_13:
  if (completionCopy)
  {
    v38 = v26;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000044E8;
    v54[3] = &unk_10001C768;
    v55 = completionCopy;
    v39 = [PRXAction actionWithTitle:actionTitleCopy style:0 handler:v54];
    v40 = [(AirPlayProxCardViewController *)v23 addAction:v39];

    v26 = v38;
  }

LABEL_16:
  return v23;
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = AirPlayProxCardViewController;
  [(AirPlayProxCardViewController *)&v16 viewDidAppear:appear];
  if ([(AirPlayProxCardViewController *)self shouldAnimate])
  {
    v4 = +[NSSymbolScaleEffect scaleUpEffect];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    contentView = [(AirPlayProxCardViewController *)self contentView];
    subviews = [contentView subviews];

    v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 addSymbolEffect:v4];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

@end