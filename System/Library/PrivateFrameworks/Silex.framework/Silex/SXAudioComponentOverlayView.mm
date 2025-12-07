@interface SXAudioComponentOverlayView
- (SXAudioComponentOverlayView)initWithFrame:(CGRect)frame;
- (id)image;
- (void)setImage:(id)image;
- (void)startActivityIndicator;
- (void)stopActivityIndicator;
@end

@implementation SXAudioComponentOverlayView

- (SXAudioComponentOverlayView)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = SXAudioComponentOverlayView;
  v3 = [(SXAudioComponentOverlayView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = SXBundle(v3);
    v7 = [v5 imageNamed:@"SXAudioOnlyIndicator" inBundle:v6];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = [v7 _flatImageWithColor:systemGrayColor];
    audioIndicatorImage = v4->_audioIndicatorImage;
    v4->_audioIndicatorImage = v9;

    [(SXAudioComponentOverlayView *)v4 setImage:v4->_audioIndicatorImage];
    [(SXAudioComponentOverlayView *)v4 setContentMode:4];
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:0];
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v11;

    [(UIActivityIndicatorView *)v4->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v4->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SXAudioComponentOverlayView *)v4 addSubview:v4->_activityIndicator];
    centerXAnchor = [(UIActivityIndicatorView *)v4->_activityIndicator centerXAnchor];
    centerXAnchor2 = [(SXAudioComponentOverlayView *)v4 centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v15 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)v4->_activityIndicator centerYAnchor];
    centerYAnchor2 = [(SXAudioComponentOverlayView *)v4 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v18 setActive:1];

    v19 = objc_alloc(MEMORY[0x1E69CE128]);
    v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    playButton = v4->_playButton;
    v4->_playButton = v20;

    [(UIButton *)v4->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SXAudioComponentOverlayView *)v4 addSubview:v4->_playButton];
    centerXAnchor3 = [(UIButton *)v4->_playButton centerXAnchor];
    centerXAnchor4 = [(SXAudioComponentOverlayView *)v4 centerXAnchor];
    v24 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v24 setActive:1];

    centerYAnchor3 = [(UIButton *)v4->_playButton centerYAnchor];
    centerYAnchor4 = [(SXAudioComponentOverlayView *)v4 centerYAnchor];
    v27 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v27 setActive:1];

    widthAnchor = [(UIButton *)v4->_playButton widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:80.0];
    [v29 setActive:1];

    heightAnchor = [(UIButton *)v4->_playButton heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:80.0];
    [v31 setActive:1];
  }

  return v4;
}

- (id)image
{
  v6.receiver = self;
  v6.super_class = SXAudioComponentOverlayView;
  image = [(SXAudioComponentOverlayView *)&v6 image];
  audioIndicatorImage = [(SXAudioComponentOverlayView *)self audioIndicatorImage];

  if (image == audioIndicatorImage)
  {

    image = 0;
  }

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  audioIndicatorImage = [(SXAudioComponentOverlayView *)self audioIndicatorImage];

  if (audioIndicatorImage != imageCopy)
  {
    [(SXAudioComponentOverlayView *)self setContentMode:1];
  }

  v6.receiver = self;
  v6.super_class = SXAudioComponentOverlayView;
  [(SXAudioComponentOverlayView *)&v6 setImage:imageCopy];
}

- (void)startActivityIndicator
{
  activityIndicator = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator setAlpha:0.0];

  activityIndicator2 = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator2 setHidden:0];

  activityIndicator3 = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator3 startAnimating];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke;
  v7[3] = &unk_1E84FED18;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke_2;
  v6[3] = &unk_1E84FFD40;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.2];
}

void __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setAlpha:1.0];
}

void __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) playButton];
  [v1 setHidden:1];
}

- (void)stopActivityIndicator
{
  playButton = [(SXAudioComponentOverlayView *)self playButton];
  [playButton setHidden:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke;
  v5[3] = &unk_1E84FED18;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke_2;
  v4[3] = &unk_1E84FFD40;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.2];
}

void __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setAlpha:0.0];
}

void __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIndicator];
  [v2 stopAnimating];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setHidden:1];
}

@end