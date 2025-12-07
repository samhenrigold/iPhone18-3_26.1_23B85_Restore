@interface LACUIFaceIDSpinnerView
- (LACUIFaceIDSpinnerView)initWithInitialState:(int64_t)state;
- (void)_setup;
- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion;
@end

@implementation LACUIFaceIDSpinnerView

- (LACUIFaceIDSpinnerView)initWithInitialState:(int64_t)state
{
  v14.receiver = self;
  v14.super_class = LACUIFaceIDSpinnerView;
  v4 = [(LACUIFaceIDSpinnerView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"face-id-spinner" withExtension:@"ca"];

    v7 = [[LACUIPackagedView alloc] initWithURL:v6 error:0];
    packagedView = v4->_packagedView;
    v4->_packagedView = v7;

    if (state > 3)
    {
      v9 = @"Invalid";
    }

    else
    {
      v9 = off_27981EAB8[state];
    }

    [(LACUIPackagedView *)v4->_packagedView setStateNamed:v9 animated:0];
    rootLayer = [(LACUIPackagedView *)v4->_packagedView rootLayer];
    v11 = LACUILayerFindSublayerWithName(rootLayer, @"face-rounder");
    faceLayer = v4->_faceLayer;
    v4->_faceLayer = v11;

    [(LACUIFaceIDSpinnerView *)v4 _setup];
  }

  return v4;
}

- (void)_setup
{
  v17[4] = *MEMORY[0x277D85DE8];
  [(LACUIFaceIDSpinnerView *)self addSubview:self->_packagedView];
  [(LACUIPackagedView *)self->_packagedView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(LACUIPackagedView *)self->_packagedView leadingAnchor];
  leadingAnchor2 = [(LACUIFaceIDSpinnerView *)self leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v17[0] = v14;
  trailingAnchor = [(LACUIPackagedView *)self->_packagedView trailingAnchor];
  trailingAnchor2 = [(LACUIFaceIDSpinnerView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17[1] = v5;
  topAnchor = [(LACUIPackagedView *)self->_packagedView topAnchor];
  topAnchor2 = [(LACUIFaceIDSpinnerView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[2] = v8;
  bottomAnchor = [(LACUIPackagedView *)self->_packagedView bottomAnchor];
  bottomAnchor2 = [(LACUIFaceIDSpinnerView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  self->_state = state;
  packagedView = self->_packagedView;
  if (state > 3)
  {
    v10 = @"Invalid";
  }

  else
  {
    v10 = off_27981EAB8[state];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__LACUIFaceIDSpinnerView_setState_animated_completion___block_invoke;
  v12[3] = &unk_27981E958;
  v13 = completionCopy;
  v11 = completionCopy;
  [(LACUIPackagedView *)packagedView setStateNamed:v10 animated:animatedCopy completion:v12];
}

uint64_t __55__LACUIFaceIDSpinnerView_setState_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end