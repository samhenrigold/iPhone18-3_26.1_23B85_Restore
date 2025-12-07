@interface DirectionsStartEndTableViewCell
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (id)reuseIdentifier;
- (CGRect)_separatorFrame;
- (DirectionsStartEndTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setAlignSeparatorWithLeadingText:(BOOL)text;
@end

@implementation DirectionsStartEndTableViewCell

- (CGRect)_separatorFrame
{
  v23.receiver = self;
  v23.super_class = DirectionsStartEndTableViewCell;
  [(DirectionsStartEndTableViewCell *)&v23 _separatorFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(DirectionsStartEndTableViewCell *)self alignSeparatorWithLeadingText])
  {
    v22 = 0u;
    v11 = objc_opt_class();
    v12 = [(DirectionsStartEndTableViewCell *)self traitCollection:0];
    [v12 userInterfaceIdiom];
    if (v11)
    {
      objc_msgSend_cellMetricsForIdiom_(v11);
    }

    else
    {
      v22 = 0u;
    }

    v13 = *&v22 + 0.0 + *(&v22 + 1);
    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(DirectionsStartEndTableViewCell *)self semanticContentAttribute]])
    {
      contentView = [(DirectionsStartEndTableViewCell *)self contentView];
      [contentView bounds];
      MaxX = CGRectGetMaxX(v24);
      v25.origin.x = v4;
      v25.origin.y = v6;
      v25.size.width = v8;
      v25.size.height = v10;
      v16 = CGRectGetMaxX(v25);

      v17 = v13 - MaxX + v16;
    }

    else
    {
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      v17 = v13 - CGRectGetMinX(v26);
      v4 = v17 + v4;
    }

    v8 = v8 - v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setAlignSeparatorWithLeadingText:(BOOL)text
{
  if (self->_alignSeparatorWithLeadingText != text)
  {
    self->_alignSeparatorWithLeadingText = text;
    separatorStyle = [(DirectionsStartEndTableViewCell *)self separatorStyle];
    [(DirectionsStartEndTableViewCell *)self setSeparatorStyle:([(DirectionsStartEndTableViewCell *)self separatorStyle]+ 1) % 3];

    [(DirectionsStartEndTableViewCell *)self setSeparatorStyle:separatorStyle];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DirectionsStartEndTableViewCell;
  [(DirectionsStartEndTableViewCell *)&v3 prepareForReuse];
  [(DirectionsStartEndContentView *)self->_startEndView prepareForReuse];
}

- (DirectionsStartEndTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = DirectionsStartEndTableViewCell;
  v4 = [(MapsThemeTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(DirectionsStartEndTableViewCell *)v4 setAccessibilityIdentifier:@"DirectionsStartEndCell"];
    v6 = objc_alloc([objc_opt_class() startEndViewClass]);
    contentView = [(DirectionsStartEndTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    startEndView = v5->_startEndView;
    v5->_startEndView = v8;

    [(DirectionsStartEndContentView *)v5->_startEndView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(DirectionsStartEndTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_startEndView];

    v11 = v5->_startEndView;
    contentView3 = [(DirectionsStartEndTableViewCell *)v5 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(DirectionsStartEndContentView *)v11 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v13];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v5;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  result = [a2 startEndViewClass];
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

@end