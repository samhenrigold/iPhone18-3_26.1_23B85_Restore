@interface DirectionsStepTableViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom;
+ (id)reuseIdentifier;
+ (unint64_t)signViewIconSize;
- (CGRect)_separatorFrame;
- (DirectionsStepTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_trailingGuideToContentViewDistance;
- (void)setAccessoryType:(int64_t)type;
- (void)setAlignSeparatorWithLeadingText:(BOOL)text;
- (void)updateTheme;
@end

@implementation DirectionsStepTableViewCell

- (void)setAlignSeparatorWithLeadingText:(BOOL)text
{
  if (self->_alignSeparatorWithLeadingText != text)
  {
    self->_alignSeparatorWithLeadingText = text;
    separatorStyle = [(DirectionsStepTableViewCell *)self separatorStyle];
    [(DirectionsStepTableViewCell *)self setSeparatorStyle:([(DirectionsStepTableViewCell *)self separatorStyle]+ 1) % 3];

    [(DirectionsStepTableViewCell *)self setSeparatorStyle:separatorStyle];
  }
}

- (CGRect)_separatorFrame
{
  v22.receiver = self;
  v22.super_class = DirectionsStepTableViewCell;
  [(DirectionsStepTableViewCell *)&v22 _separatorFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(DirectionsStepTableViewCell *)self alignSeparatorWithLeadingText])
  {
    v21 = 0u;
    v11 = objc_opt_class();
    v12 = [(DirectionsStepTableViewCell *)self traitCollection:0];
    [v12 userInterfaceIdiom];
    if (v11)
    {
      objc_msgSend_cellMetricsForIdiom_(v11);
    }

    else
    {
      v21 = 0u;
    }

    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(DirectionsStepTableViewCell *)self semanticContentAttribute]])
    {
      contentView = [(DirectionsStepTableViewCell *)self contentView];
      [contentView bounds];
      MaxX = CGRectGetMaxX(v23);
      v24.origin.x = v4;
      v24.origin.y = v6;
      v24.size.width = v8;
      v24.size.height = v10;
      v15 = CGRectGetMaxX(v24);

      v16 = v15 - MaxX + *&v21 + 0.0 + *(&v21 + 1);
    }

    else
    {
      v25.origin.x = v4;
      v25.origin.y = v6;
      v25.size.width = v8;
      v25.size.height = v10;
      v16 = *&v21 + 0.0 + *(&v21 + 1) - CGRectGetMinX(v25);
      v4 = v16 + v4;
    }

    v8 = v8 - v16;
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)_trailingGuideToContentViewDistance
{
  v3 = objc_opt_class();
  traitCollection = [(DirectionsStepTableViewCell *)self traitCollection];
  [traitCollection userInterfaceIdiom];
  if (v3)
  {
    objc_msgSend_cellMetricsForIdiom_(v3);
  }

  accessoryType = [(DirectionsStepTableViewCell *)self accessoryType];
  result = 0.0;
  if (accessoryType)
  {
    return 0.0;
  }

  return result;
}

- (void)setAccessoryType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = DirectionsStepTableViewCell;
  [(DirectionsStepTableViewCell *)&v5 setAccessoryType:type];
  stepView = self->_stepView;
  [(DirectionsStepTableViewCell *)self _trailingGuideToContentViewDistance];
  [(DirectionsStepView *)stepView _updateTrailingGuideToContentViewConstraintWithConstant:?];
}

- (void)updateTheme
{
  v9.receiver = self;
  v9.super_class = DirectionsStepTableViewCell;
  [(MapsThemeTableViewCell *)&v9 updateTheme];
  backgroundView = [(DirectionsStepTableViewCell *)self backgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    backgroundView2 = [(DirectionsStepTableViewCell *)self backgroundView];
    [backgroundView2 setHighlightedColor:{-[DirectionsStepTableViewCell isSelectedRow](self, "isSelectedRow")}];
  }

  theme = [(DirectionsStepTableViewCell *)self theme];
  tableViewCellHighlightedOverlayColor = [theme tableViewCellHighlightedOverlayColor];
  selectedBackgroundView = [(DirectionsStepTableViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellHighlightedOverlayColor];
}

- (DirectionsStepTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = DirectionsStepTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(DirectionsStepTableViewCell *)v4 setAccessibilityIdentifier:@"DirectionsStepCell"];
    v6 = objc_alloc([objc_opt_class() stepViewClass]);
    contentView = [(DirectionsStepTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    stepView = v5->_stepView;
    v5->_stepView = v8;

    [(DirectionsStepView *)v5->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsStepView *)v5->_stepView setAccessibilityIdentifier:@"DirectionsStep"];
    contentView2 = [(DirectionsStepTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_stepView];

    v11 = v5->_stepView;
    contentView3 = [(DirectionsStepTableViewCell *)v5 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(DirectionsStepView *)v11 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v13];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v5;
}

+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom
{
  stepCopy = step;
  routeCopy = route;
  [objc_msgSend(self "stepViewClass")];
  v13 = v12;

  return v13;
}

+ (unint64_t)signViewIconSize
{
  stepViewClass = [self stepViewClass];

  return [stepViewClass signViewIconSize];
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  result = [a2 stepViewClass];
  if (result)
  {

    return objc_msgSend_cellMetricsForIdiom_(result);
  }

  else
  {
    retstr->var8 = 0.0;
    *&retstr->var4 = 0u;
    *&retstr->var6 = 0u;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end