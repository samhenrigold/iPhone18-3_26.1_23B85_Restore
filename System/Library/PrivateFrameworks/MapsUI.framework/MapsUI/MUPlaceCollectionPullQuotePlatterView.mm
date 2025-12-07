@interface MUPlaceCollectionPullQuotePlatterView
- (CGSize)intrinsicContentSize;
- (MUPlaceCollectionPullQuotePlatterView)initWithFrame:(CGRect)frame;
- (MUPlaceCollectionPullQuotePlatterViewDelegate)delegate;
- (void)_contentSizeDidChange;
- (void)_didSelectCollection;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceCollectionPullQuotePlatterView

- (MUPlaceCollectionPullQuotePlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 307.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_pullQuoteView setFont:v3];
}

- (void)_didSelectCollection
{
  delegate = [(MUPlaceCollectionPullQuotePlatterView *)self delegate];
  [delegate pullQuoteViewDidTapMore:self];
}

- (void)_updateAppearance
{
  plainTextDescription = [(MUPlaceCollectionPullQuoteViewModel *)self->_viewModel plainTextDescription];
  [(MUExpandingLabel *)self->_pullQuoteView setText:plainTextDescription];

  viewModel = self->_viewModel;
  collectionSummaryView = self->_collectionSummaryView;

  [(MUCuratedCollectionSummaryView *)collectionSummaryView setViewModel:viewModel];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlaceCollectionPullQuoteViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceCollectionPullQuotePlatterView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v26[7] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MUPullQuoteView *)self->_pullQuoteView leadingAnchor];
  leadingAnchor2 = [(MUPlaceCollectionPullQuotePlatterView *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v26[0] = v23;
  trailingAnchor = [(MUPullQuoteView *)self->_pullQuoteView trailingAnchor];
  trailingAnchor2 = [(MUPlaceCollectionPullQuotePlatterView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v26[1] = v20;
  topAnchor = [(MUPullQuoteView *)self->_pullQuoteView topAnchor];
  topAnchor2 = [(MUPlaceCollectionPullQuotePlatterView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
  v26[2] = v16;
  bottomAnchor = [(MUPullQuoteView *)self->_pullQuoteView bottomAnchor];
  topAnchor3 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView topAnchor];
  v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-14.0];
  v26[3] = v13;
  leadingAnchor3 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView leadingAnchor];
  leadingAnchor4 = [(MUPlaceCollectionPullQuotePlatterView *)self leadingAnchor];
  v5 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v26[4] = v5;
  trailingAnchor3 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView trailingAnchor];
  trailingAnchor4 = [(MUPlaceCollectionPullQuotePlatterView *)self trailingAnchor];
  v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v26[5] = v8;
  bottomAnchor2 = [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView bottomAnchor];
  bottomAnchor3 = [(MUPlaceCollectionPullQuotePlatterView *)self bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
  v26[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
  [v17 activateConstraints:v12];
}

- (void)_setupSubviews
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [MUCuratedCollectionSummaryView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(MUCuratedCollectionSummaryView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  collectionSummaryView = self->_collectionSummaryView;
  self->_collectionSummaryView = v8;

  [(MUCuratedCollectionSummaryView *)self->_collectionSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceCollectionPullQuotePlatterView *)self addSubview:self->_collectionSummaryView];
  v10 = [(MUExpandingLabel *)[MUPullQuoteView alloc] initWithFrame:v4, v5, v6, v7];
  pullQuoteView = self->_pullQuoteView;
  self->_pullQuoteView = v10;

  [(MUPullQuoteView *)self->_pullQuoteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MUExpandingLabel *)self->_pullQuoteView setFont:v12];

  v13 = +[MUInfoCardStyle textColor];
  [(MUExpandingLabel *)self->_pullQuoteView setTextColor:v13];

  v14 = +[MUInfoCardStyle buttonCellTextColor];
  [(MUExpandingLabel *)self->_pullQuoteView setShowMoreTextColor:v14];

  v15 = _MULocalizedStringFromThisBundle(@"More [Placecard]");
  [(MUExpandingLabel *)self->_pullQuoteView setShowMoreText:v15];

  [(MUExpandingLabel *)self->_pullQuoteView setNumberOfLinesWhenCollapsed:4];
  [(MUPullQuoteView *)self->_pullQuoteView setUserInteractionEnabled:0];
  [(MUPlaceCollectionPullQuotePlatterView *)self addSubview:self->_pullQuoteView];
  v16 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v16;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__didSelectCollection];
  [(MUPlaceCollectionPullQuotePlatterView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__didSelectCollection];
  v18 = objc_opt_self();
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20 = [(MUPlaceCollectionPullQuotePlatterView *)self registerForTraitChanges:v19 withAction:sel__contentSizeDidChange];
}

- (MUPlaceCollectionPullQuotePlatterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceCollectionPullQuotePlatterView;
  v3 = [(MUPlaceCollectionPullQuotePlatterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceCollectionPullQuotePlatterView *)v3 _setupSubviews];
    [(MUPlaceCollectionPullQuotePlatterView *)v4 _setupConstraints];
    [(MUPlaceCollectionPullQuotePlatterView *)v4 setAccessibilityIdentifier:@"PlaceCollectionPullQuotePlatter"];
  }

  return v4;
}

@end