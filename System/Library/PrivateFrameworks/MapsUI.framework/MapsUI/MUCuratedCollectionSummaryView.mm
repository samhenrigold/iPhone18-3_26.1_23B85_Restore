@interface MUCuratedCollectionSummaryView
- (MUCuratedCollectionSummaryView)initWithFrame:(CGRect)frame;
- (id)_attributesWithFont:(id)font color:(id)color;
- (id)publisherString;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateImageViewForInterfaceStyle;
- (void)setViewModel:(id)model;
@end

@implementation MUCuratedCollectionSummaryView

- (void)_updateImageViewForInterfaceStyle
{
  viewModel = self->_viewModel;
  traitCollection = [(MUCuratedCollectionSummaryView *)self traitCollection];
  v4 = -[MUCuratedCollectionSummary publisherIconForIsNightMode:](viewModel, "publisherIconForIsNightMode:", [traitCollection userInterfaceStyle] != 2);
  [(UIImageView *)self->_imageView setImage:v4];
}

- (id)publisherString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  publisherName = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
  v5 = [publisherName length];

  v6 = 0x1E696A000uLL;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    publisherName2 = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
    v9 = [v7 initWithString:publisherName2];

    v10 = *MEMORY[0x1E69DDD28];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v12 = +[MUInfoCardStyle textColor];
    v13 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v11 color:v12];
    publisherName3 = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
    [v9 addAttributes:v13 range:{0, objc_msgSend(publisherName3, "length")}];

    [v3 addObject:v9];
    v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" · "];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    v17 = +[MUInfoCardStyle secondaryTextColor];
    v18 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v16 color:v17];
    [v15 addAttributes:v18 range:{0, objc_msgSend(v15, "length")}];

    v6 = 0x1E696A000;
    v19 = [v15 copy];
    [v3 addObject:v19];
  }

  else
  {
    v10 = *MEMORY[0x1E69DDD28];
  }

  v20 = _MULocalizedStringFromThisBundle(@"Number of places [Placecard]");
  v21 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v20 validFormatSpecifiers:@"%lu" error:0, -[MUCuratedCollectionSummary numberOfPlaces](self->_viewModel, "numberOfPlaces")];
  v22 = [objc_alloc(*(v6 + 3392)) initWithString:v21];
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
  v24 = +[MUInfoCardStyle secondaryTextColor];
  v25 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v23 color:v24];
  [v22 addAttributes:v25 range:{0, objc_msgSend(v22, "length")}];

  v26 = [v22 copy];
  [v3 addObject:v26];

  v27 = [v3 copy];
  v28 = [MapsUILayout buildAttributedDisplayStringForComponents:v27 forContainingView:self];

  return v28;
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_titleLabel setFont:v4];

  publisherString = [(MUCuratedCollectionSummaryView *)self publisherString];
  [(UILabel *)self->_descriptionLabel setAttributedText:publisherString];
}

- (id)_attributesWithFont:(id)font color:(id)color
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v11[0] = *MEMORY[0x1E69DB648];
  v11[1] = v5;
  v12[0] = font;
  v12[1] = color;
  v6 = MEMORY[0x1E695DF20];
  colorCopy = color;
  fontCopy = font;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)_updateAppearance
{
  viewModel = self->_viewModel;
  traitCollection = [(MUCuratedCollectionSummaryView *)self traitCollection];
  v5 = -[MUCuratedCollectionSummary publisherIconForIsNightMode:](viewModel, "publisherIconForIsNightMode:", [traitCollection userInterfaceStyle] == 1);
  [(UIImageView *)self->_imageView setImage:v5];

  collectionName = [(MUCuratedCollectionSummary *)self->_viewModel collectionName];
  [(UILabel *)self->_titleLabel setText:collectionName];

  publisherString = [(MUCuratedCollectionSummaryView *)self publisherString];
  [(UILabel *)self->_descriptionLabel setAttributedText:publisherString];
}

- (void)_setupConstraints
{
  v57[18] = *MEMORY[0x1E69E9840];
  v37 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(MUCuratedCollectionSummaryView *)self leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v57[0] = v54;
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(MUCuratedCollectionSummaryView *)self topAnchor];
  v51 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v57[1] = v51;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(MUCuratedCollectionSummaryView *)self centerYAnchor];
  v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v57[2] = v48;
  bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(MUCuratedCollectionSummaryView *)self bottomAnchor];
  v45 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v57[3] = v45;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v43 = [widthAnchor constraintEqualToConstant:36.0];
  v57[4] = v43;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:36.0];
  v57[5] = v41;
  leadingAnchor3 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v57[6] = v38;
  topAnchor3 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  topAnchor4 = [(MUCuratedCollectionSummaryView *)self topAnchor];
  v34 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v57[7] = v34;
  bottomAnchor3 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  bottomAnchor4 = [(MUCuratedCollectionSummaryView *)self bottomAnchor];
  v31 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v57[8] = v31;
  trailingAnchor2 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  trailingAnchor3 = [(MUCuratedCollectionSummaryView *)self trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v57[9] = v28;
  centerYAnchor3 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
  centerYAnchor4 = [(MUCuratedCollectionSummaryView *)self centerYAnchor];
  v25 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v57[10] = v25;
  topAnchor5 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor6 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v22 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v57[11] = v22;
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor5 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v19 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v57[12] = v19;
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v16 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v57[13] = v16;
  bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
  topAnchor7 = [(UILabel *)self->_descriptionLabel topAnchor];
  v13 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7];
  v57[14] = v13;
  leadingAnchor6 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor7 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v5 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v57[15] = v5;
  trailingAnchor6 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v8 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v57[16] = v8;
  bottomAnchor6 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor7 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v11 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v57[17] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:18];
  [v37 activateConstraints:v12];
}

- (void)_setupSubviews
{
  v22[1] = *MEMORY[0x1E69E9840];
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _mapsui_defaultLabel;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v6 = [v5 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"CuratedCollectionSummaryTitle"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_titleLabel];
  _mapsui_defaultLabel2 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = _mapsui_defaultLabel2;

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:1];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_descriptionLabel setTextColor:systemGrayColor];

  [(UILabel *)self->_descriptionLabel setAccessibilityIdentifier:@"CuratedCollectionSummaryDescription"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_descriptionLabel];
  v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v11;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:4.0];
  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"CuratedCollectionSummaryImage"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_imageView];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v13;

  [(MUCuratedCollectionSummaryView *)self addLayoutGuide:self->_layoutGuide];
  v15 = objc_opt_self();
  v22[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v17 = [(MUCuratedCollectionSummaryView *)self registerForTraitChanges:v16 withAction:sel__updateImageViewForInterfaceStyle];

  v18 = objc_opt_self();
  v21 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v20 = [(MUCuratedCollectionSummaryView *)self registerForTraitChanges:v19 withAction:sel__contentSizeDidChange];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUCuratedCollectionSummary *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUCuratedCollectionSummaryView *)self _updateAppearance];
  }
}

- (MUCuratedCollectionSummaryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUCuratedCollectionSummaryView;
  v3 = [(MUCuratedCollectionSummaryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUCuratedCollectionSummaryView *)v3 setAccessibilityIdentifier:@"CuratedCollectionSummary"];
    [(MUCuratedCollectionSummaryView *)v4 _setupSubviews];
    [(MUCuratedCollectionSummaryView *)v4 _setupConstraints];
  }

  return v4;
}

@end