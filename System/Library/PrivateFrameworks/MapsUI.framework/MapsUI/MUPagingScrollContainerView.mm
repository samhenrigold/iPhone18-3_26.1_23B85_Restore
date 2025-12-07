@interface MUPagingScrollContainerView
- (MUPagingScrollContainerView)initWithHorizontalScrollView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateCorner;
- (void)setCornerStyle:(int64_t)style;
@end

@implementation MUPagingScrollContainerView

- (void)_updateCorner
{
  cornerStyle = self->_cornerStyle;
  if (cornerStyle == 1)
  {
    [(UIView *)self->_containedView _mapsui_setCardCorner];
  }

  else if (!cornerStyle)
  {
    [(UIView *)self->_containedView _setContinuousCornerRadius:0.0];
  }
}

- (void)setCornerStyle:(int64_t)style
{
  if (self->_cornerStyle != style)
  {
    self->_cornerStyle = style;
    [(MUPagingScrollContainerView *)self _updateCorner];
  }
}

- (void)_setupConstraints
{
  v51[14] = *MEMORY[0x1E69E9840];
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  leadingAnchor = [(MUScrollViewProtocol *)self->_containedScrollView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_containedView leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[0] = v47;
  trailingAnchor = [(MUScrollViewProtocol *)self->_containedScrollView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_containedView trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[1] = v44;
  topAnchor = [(MUScrollViewProtocol *)self->_containedScrollView topAnchor];
  topAnchor2 = [(UIView *)self->_containedView topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[2] = v41;
  bottomAnchor = [(MUScrollViewProtocol *)self->_containedScrollView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_containedView bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v38;
  topAnchor3 = [(UIView *)self->_containedView topAnchor];
  topAnchor4 = [(MUPagingScrollContainerView *)self topAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v51[4] = v35;
  bottomAnchor3 = [(UIView *)self->_containedView bottomAnchor];
  bottomAnchor4 = [(MUPagingScrollContainerView *)self bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[5] = v32;
  leadingAnchor3 = [(UIView *)self->_containedView leadingAnchor];
  layoutMarginsGuide = [(MUPagingScrollContainerView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v51[6] = v28;
  trailingAnchor3 = [(UIView *)self->_containedView trailingAnchor];
  layoutMarginsGuide2 = [(MUPagingScrollContainerView *)self layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v51[7] = v24;
  topAnchor5 = [(MUPagingScrollControlsView *)self->_controlsView topAnchor];
  topAnchor6 = [(UIView *)self->_containedView topAnchor];
  v21 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v51[8] = v21;
  bottomAnchor5 = [(MUPagingScrollControlsView *)self->_controlsView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_containedView bottomAnchor];
  v18 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v51[9] = v18;
  leadingAnchor5 = [(MUPagingScrollControlsView *)self->_controlsView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_containedView leadingAnchor];
  v15 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:0.0];
  v51[10] = v15;
  leadingAnchor7 = [(MUPagingScrollControlsView *)self->_controlsView leadingAnchor];
  leadingAnchor8 = [(MUPagingScrollContainerView *)self leadingAnchor];
  v5 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
  v51[11] = v5;
  trailingAnchor5 = [(MUPagingScrollControlsView *)self->_controlsView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_containedView trailingAnchor];
  v8 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:0.0];
  v51[12] = v8;
  trailingAnchor7 = [(MUPagingScrollControlsView *)self->_controlsView trailingAnchor];
  trailingAnchor8 = [(MUPagingScrollContainerView *)self trailingAnchor];
  v11 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v51[13] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:14];
  [v50 addObjectsFromArray:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [v50 copy];
  [v13 activateConstraints:v14];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = MUPagingScrollContainerView;
  eventCopy = event;
  v8 = [(MUPagingScrollContainerView *)&v13 hitTest:eventCopy withEvent:x, y];
  type = [eventCopy type];

  controlsView = v8;
  if (type == 11)
  {
    controlsView = self->_controlsView;
  }

  v11 = controlsView;

  return controlsView;
}

- (void)_setupSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  containedView = self->_containedView;
  self->_containedView = v4;

  [(UIView *)self->_containedView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containedView setClipsToBounds:1];
  [(UIView *)self->_containedView _mapsui_setCardCorner];
  [(MUPagingScrollContainerView *)self addSubview:self->_containedView];
  [(MUScrollViewProtocol *)self->_containedScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containedView addSubview:self->_containedScrollView];
  v6 = [[MUPagingScrollControlsView alloc] initWithHorizontalScrollView:self->_containedScrollView];
  controlsView = self->_controlsView;
  self->_controlsView = v6;

  [(MUPagingScrollControlsView *)self->_controlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPagingScrollControlsView *)self->_controlsView setHidden:1];
  [(MUPagingScrollContainerView *)self addSubview:self->_controlsView];
  v8 = self->_controlsView;

  [(MUPagingScrollContainerView *)self sendSubviewToBack:v8];
}

- (MUPagingScrollContainerView)initWithHorizontalScrollView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = MUPagingScrollContainerView;
  v6 = [(MUPagingScrollContainerView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containedScrollView, view);
    [(MUPagingScrollContainerView *)v7 setCornerStyle:1];
    [(MUScrollViewProtocol *)v7->_containedScrollView setShowsHorizontalScrollIndicator:0];
    [(MUPagingScrollContainerView *)v7 setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
    [(MUPagingScrollContainerView *)v7 _setupSubviews];
    [(MUPagingScrollContainerView *)v7 _setupConstraints];
  }

  return v7;
}

@end