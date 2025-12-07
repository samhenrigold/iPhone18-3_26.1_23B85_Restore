@interface THHighlightTableViewController
- (THHighlightTableViewController)initWithOptions:(id)options;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)p_updateColors;
- (void)setTheme:(id)theme;
- (void)studyOptionsDidChangeFilterOptions:(id)options;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THHighlightTableViewController

- (THHighlightTableViewController)initWithOptions:(id)options
{
  if (!options)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v12.receiver = self;
  v12.super_class = THHighlightTableViewController;
  v5 = [(THHighlightTableViewController *)&v12 initWithStyle:0];
  if (v5)
  {
    optionsCopy = options;
    v5->_options = optionsCopy;
    -[THHighlightTableViewController setTitle:](v5, "setTitle:", [THBundle(optionsCopy v7)]);
    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v8 = 360.0;
    }

    else
    {
      v8 = 320.0;
    }

    v9 = +[UIFont bc_accessibilityFontSizesEnabled];
    v10 = 400.0;
    if (!v9)
    {
      v10 = 146.0;
    }

    [(THHighlightTableViewController *)v5 setPreferredContentSize:v8, v10];
    [(THHighlightTableViewController *)v5 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)dealloc
{
  self->_options = 0;

  self->_theme = 0;
  v3.receiver = self;
  v3.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewWillAppear:appear];
  [(THStudyOptions *)self->_options addObserver:self];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
  [(THHighlightTableViewController *)self p_updateColors];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewDidDisappear:disappear];
  [(THStudyOptions *)self->_options removeObserver:self];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewDidLoad];
  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
  [-[THHighlightTableViewController tableView](self "tableView")];

  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  [(THHighlightTableViewController *)self contentSizeCategoryDidChange];
}

- (void)contentSizeCategoryDidChange
{
  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    tableView = [(THHighlightTableViewController *)self tableView];

    [tableView setRowHeight:UITableViewAutomaticDimension];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"StudyOptionsHighlightTableCell"];
  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"StudyOptionsHighlightTableCell"];
  }

  [v6 setBackgroundColor:{-[IMThemePage secondaryGroupedBackgroundColor](self->_theme, "secondaryGroupedBackgroundColor")}];
  if ([path row])
  {
    if (qword_567810 != -1)
    {
      sub_29D0C8();
    }

    v8 = qword_567808;
    v9 = v8 + 16 * [path row];
    v10 = *(v9 - 16);
    v11 = *(v9 - 8);
    if (v10 == 6)
    {
      v12 = +[BCResources iconTextPopupHighlightUnderline];
      [v12 size];
      TSDCenterRectOverRect();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v26.width = 22.0;
      v26.height = 22.0;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      [v12 drawInRect:{v14, v16, v18, v20}];
      [+[UIColor colorWithWhite:alpha:](UIColor setStroke:0.850980392];
      v28.origin.x = 0.0;
      v28.origin.y = 0.0;
      v28.size.width = 22.0;
      v28.size.height = 22.0;
      v29 = CGRectInset(v28, 1.0, 1.0);
      [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath stroke:v29.origin.x];
    }

    else
    {
      v23 = [+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:](AEAnnotationTheme themeForAnnotationStyle:v10 pageTheme:{4), "highlightColor"}];
      v27.width = 22.0;
      v27.height = 22.0;
      UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
      [v23 setFill];
      [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath fill:0.0];
    }

    [objc_msgSend(v6 "imageView")];
    UIGraphicsEndImageContext();
    [objc_msgSend(v6 "textLabel")];
    shouldShowAllAnnotationStyles = [(THStudyOptions *)self->_options shouldShowAnnotationStyle:v10];
  }

  else
  {
    [objc_msgSend(v6 "textLabel")];
    [v6 setIndentationLevel:0];
    [v6 setIndentationWidth:53.0];
    [v6 indentationWidth];
    [v6 setSeparatorInset:{0.0, v21, 0.0, 0.0}];
    shouldShowAllAnnotationStyles = [(THStudyOptions *)self->_options shouldShowAllAnnotationStyles];
  }

  if (shouldShowAllAnnotationStyles)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  [v6 setAccessoryType:v24];
  return v6;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = [view cellForRowAtIndexPath:path];
  if ([path row])
  {
    if (qword_567810 != -1)
    {
      sub_29D0C8();
    }

    v7 = qword_567808;
    v8 = *(v7 + 16 * [path row] - 16);
    v9 = [(THStudyOptions *)self->_options shouldShowAnnotationStyle:v8];
    options = self->_options;
    if (v9)
    {
      [(THStudyOptions *)options hideAnnotationStyle:v8];
    }

    else
    {
      [(THStudyOptions *)options showAnnotationStyle:v8];
    }
  }

  else
  {
    accessoryType = [v6 accessoryType];
    v12 = self->_options;
    if (accessoryType)
    {
      [(THStudyOptions *)v12 hideAllAnnotationStyles];
    }

    else
    {
      [(THStudyOptions *)v12 showAllAnnotationStyles];
    }
  }

  return path;
}

- (void)studyOptionsDidChangeFilterOptions:(id)options
{
  tableView = [(THHighlightTableViewController *)self tableView];
  v5 = [tableView numberOfRowsInSection:0];
  if (v5 >= 2)
  {
    v6 = v5;
    v7 = 0;
    for (i = 1; i != v6; ++i)
    {
      v9 = [tableView cellForRowAtIndexPath:{+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, 0)}];
      if (qword_567810 != -1)
      {
        sub_29D0C8();
      }

      if ([(THStudyOptions *)self->_options shouldShowAnnotationStyle:*(qword_567808 + v7)])
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      [v9 setAccessoryType:v10];
      v7 += 16;
    }
  }

  v11 = [tableView cellForRowAtIndexPath:{+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, 0)}];
  if ([(THStudyOptions *)self->_options shouldShowAllAnnotationStyles])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v11 setAccessoryType:v12];
}

- (void)p_updateColors
{
  [-[THHighlightTableViewController viewIfLoaded](self "viewIfLoaded")];
  [objc_msgSend(-[THHighlightTableViewController navigationController](self "navigationController")];
  tableView = [(THHighlightTableViewController *)self tableView];

  [tableView reloadData];
}

- (void)setTheme:(id)theme
{
  if (([(IMThemePage *)self->_theme isEqual:?]& 1) == 0)
  {

    self->_theme = theme;

    [(THHighlightTableViewController *)self p_updateColors];
  }
}

@end