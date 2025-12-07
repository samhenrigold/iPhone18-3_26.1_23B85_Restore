@interface CPSAppAttributionBanner
+ (ISImageDescriptor)preferredImageDescriptor;
- (CPSAppAttributionBanner)init;
- (CPSAppAttributionBanner)initWithCoder:(id)coder;
- (CPSAppAttributionBanner)initWithFrame:(CGRect)frame;
- (void)_handleTap:(id)tap;
- (void)commonInit;
- (void)setTitle:(id)title;
@end

@implementation CPSAppAttributionBanner

+ (ISImageDescriptor)preferredImageDescriptor
{
  v2 = objc_alloc(MEMORY[0x277D1B1C8]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = [v2 initWithSize:48.0 scale:{48.0, v4}];

  [v5 setShape:1];

  return v5;
}

- (CPSAppAttributionBanner)init
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v7.receiver = self;
  v7.super_class = CPSAppAttributionBanner;
  v4 = [(CPSAppAttributionBanner *)&v7 initWithFrame:?];

  if (v4)
  {
    [(CPSAppAttributionBanner *)v4 commonInit];
    v5 = v4;
  }

  return v4;
}

- (CPSAppAttributionBanner)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CPSAppAttributionBanner;
  v3 = [(CPSAppAttributionBanner *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSAppAttributionBanner *)v3 commonInit];
    v5 = v4;
  }

  return v4;
}

- (CPSAppAttributionBanner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"-[CPSAppAttributionBanner initWithCoder:] is not available." userInfo:0];
  objc_exception_throw(v4);
}

- (void)commonInit
{
  v3 = MEMORY[0x277D757B0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 nibWithNibName:@"CPSAppAttributionBanner" bundle:v4];

  v6 = [v5 instantiateWithOwner:self options:0];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    [(CPSAppStoreButton *)self->_appStoreButton setHidden:1];
    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] variant:256];
    [(UILabel *)self->_supertitleLabel setFont:v10];

    v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    [(CPSLabelWithPlaceholder *)self->_titleLabel setFont:v11];

    v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:256];
    [(CPSLabelWithPlaceholder *)self->_subtitleLabel setFont:v12];

    [(UIImageView *)self->_iconView setAccessibilityIgnoresInvertColors:1];
    if (_UISolariumEnabled())
    {
      v13 = objc_alloc_init(CPSHighlightablePlatterView);
      platterView = self->_platterView;
      self->_platterView = v13;

      [(CPSHighlightable *)self->_platterView _setContinuousCornerRadius:20.0];
      [(CPSHighlightable *)self->_platterView cps_setGlassBackground];
    }

    else
    {
      v16 = [MEMORY[0x277D3D328] platterViewWithBlurEffectStyle:8];
      v17 = self->_platterView;
      self->_platterView = v16;
    }

    [(CPSAppAttributionBanner *)self bounds];
    [(CPSHighlightable *)self->_platterView setFrame:?];
    [(CPSHighlightable *)self->_platterView setAutoresizingMask:18];
    [(CPSAppAttributionBanner *)self addSubview:self->_platterView];
    v18 = _UISolariumEnabled();
    v19 = self->_platterView;
    if (v18)
    {
      customContentView = v19;
    }

    else
    {
      customContentView = [(CPSHighlightable *)v19 customContentView];
    }

    v21 = customContentView;
    [(CPSAppAttributionBanner *)self bounds];
    [(CPSHighlightable *)v21 setFrame:?];
    [firstObject setAutoresizingMask:18];
    [(CPSHighlightable *)v21 bounds];
    [firstObject setFrame:?];
    [(CPSHighlightable *)v21 addSubview:firstObject];
    [(CPSHighlightForwardingButton *)self->_overlayButton setHighlightForwardingTarget:self->_platterView];
  }

  else
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipUIServices(v8, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CPSAppAttributionBanner *)v15 commonInit];
    }
  }
}

- (void)_handleTap:(id)tap
{
  tapAction = self->_tapAction;
  if (tapAction)
  {
    tapAction[2]();
  }
}

- (void)setTitle:(id)title
{
  [(CPSLabelWithPlaceholder *)self->_titleLabel setText:title];
  text = [(CPSLabelWithPlaceholder *)self->_titleLabel text];
  -[CPSLabelWithPlaceholder setPlaceholderWidth:](self->_subtitleLabel, "setPlaceholderWidth:", fmax(fmin((5 * [text length]), 200.0), 50.0));
}

@end