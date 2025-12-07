@interface SLSheetURLPreviewView
- (BOOL)generatePreviewImageFromAttachments;
- (SLSheetURLPreviewView)initWithFrame:(CGRect)frame;
- (void)_generateAutomaticPreviewForURL:(id)l;
- (void)ensurePlaceholderPreviewImage;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation SLSheetURLPreviewView

- (SLSheetURLPreviewView)initWithFrame:(CGRect)frame
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v20.receiver = self;
  v20.super_class = SLSheetURLPreviewView;
  v5 = [(SLSheetImagePreviewView *)&v20 initWithFrame:v3, v4, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(SLSheetImagePreviewView *)v5 intrinsicContentSize];
    v8 = v7;
    v10 = v9;
    [(SLSheetURLPreviewView *)v6 setBounds:v3, v4, v7, v9];
    layer = [(SLSheetURLPreviewView *)v6 layer];
    [layer setBounds:{v3, v4, v8, v10}];

    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.310000002];
    [(SLSheetURLPreviewView *)v6 setBackgroundColor:v12];

    layer2 = [(SLSheetURLPreviewView *)v6 layer];
    [layer2 setMasksToBounds:1];

    v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _SLSheetURLPreviewImageFrameWithBounds();
    v15 = [v14 initWithFrame:?];
    [(SLSheetImagePreviewView *)v6 setImageView:v15];

    imageView = [(SLSheetImagePreviewView *)v6 imageView];
    [imageView setContentMode:2];

    imageView2 = [(SLSheetImagePreviewView *)v6 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(SLSheetImagePreviewView *)v6 imageView];
    [(SLSheetURLPreviewView *)v6 addSubview:imageView3];

    [(SLSheetURLPreviewView *)v6 setNeedsLayout];
  }

  return v6;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = SLSheetURLPreviewView;
  [(SLSheetURLPreviewView *)&v17 layoutSubviews];
  [(SLSheetImagePreviewView *)self intrinsicContentSize];
  [(SLSheetURLPreviewView *)self setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v3, v4];
  [(SLSheetURLPreviewView *)self bounds];
  _SLSheetURLPreviewImageFrameWithBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  imageView = [(SLSheetImagePreviewView *)self imageView];
  [imageView setFrame:{v6, v8, v10, v12}];

  imageView2 = [(SLSheetImagePreviewView *)self imageView];
  [imageView2 frame];
  [(UIView *)self->_placeholderPreviewView setFrame:?];

  [(UIView *)self->_placeholderPreviewView bounds];
  v16 = v15 * 0.222222222;
  [(UIView *)self->_placeholderPreviewView bounds];
  v19 = CGRectInset(v18, v16, v16);
  [(UIImageView *)self->_placeholderGlyphView setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
}

- (void)ensurePlaceholderPreviewImage
{
  if (!self->_placeholderPreviewView)
  {
    _SLLog(v7, 7, @"SLSheetURLPreviewView ensurePlaceholderPreviewImage building placeholder", v2, v3, v4, v5, v6, v28);
    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    imageView = [(SLSheetImagePreviewView *)self imageView];
    [imageView frame];
    v11 = [v9 initWithFrame:?];
    placeholderPreviewView = self->_placeholderPreviewView;
    self->_placeholderPreviewView = v11;

    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.87 alpha:1.0];
    [(UIView *)self->_placeholderPreviewView setBackgroundColor:v13];

    [(UIView *)self->_placeholderPreviewView bounds];
    v15 = v14 * 0.222222222;
    [(UIView *)self->_placeholderPreviewView bounds];
    v31 = CGRectInset(v30, v15, v15);
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
    placeholderGlyphView = self->_placeholderGlyphView;
    self->_placeholderGlyphView = v16;

    [(UIImageView *)self->_placeholderGlyphView setContentMode:2];
    [(UIImageView *)self->_placeholderGlyphView setClipsToBounds:1];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)self->_placeholderGlyphView setTintColor:whiteColor];

    v19 = [MEMORY[0x1E69DCAB8] socialFrameworkImageNamed:@"URLPlaceholderPreviewGlyph"];
    v20 = [v19 imageWithRenderingMode:2];
    [(UIImageView *)self->_placeholderGlyphView setImage:v20];

    image = [(UIImageView *)self->_placeholderGlyphView image];
    _SLLog(v7, 7, @"SLSheetURLPreviewView ensurePlaceholderPreviewImage loaded placeholder glyph %@", v22, v23, v24, v25, v26, image);

    [(UIView *)self->_placeholderPreviewView addSubview:self->_placeholderGlyphView];
    v27 = self->_placeholderPreviewView;

    [(SLSheetURLPreviewView *)self addSubview:v27];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderPreviewView)
  {
    _SLLog(v3, 7, @"SLSheetURLPreviewView setImage: removing placeholder", v5, v6, v7, v8, v9, v12.receiver);
    [(UIView *)self->_placeholderPreviewView removeFromSuperview];
    placeholderPreviewView = self->_placeholderPreviewView;
    self->_placeholderPreviewView = 0;
  }

  v12.receiver = self;
  v12.super_class = SLSheetURLPreviewView;
  [(SLSheetImagePreviewView *)&v12 setImage:imageCopy];
}

- (BOOL)generatePreviewImageFromAttachments
{
  principalAttachments = [(SLSheetImagePreviewView *)self principalAttachments];
  principalAttachments2 = [principalAttachments count];

  if (principalAttachments2)
  {
    principalAttachments2 = [(SLSheetImagePreviewView *)self principalAttachments];
    v5 = [principalAttachments2 objectAtIndexedSubscript:0];

    payload = [v5 payload];
    objc_opt_class();
    LOBYTE(principalAttachments2) = objc_opt_isKindOfClass();

    if (principalAttachments2)
    {
      payload2 = [v5 payload];
      [(SLSheetURLPreviewView *)self _generateAutomaticPreviewForURL:payload2];
    }
  }

  return principalAttachments2 & 1;
}

- (void)_generateAutomaticPreviewForURL:(id)l
{
  lCopy = l;
  _SLLog(v3, 7, @"SLSheetURLPreviewView _generateAutomaticPreviewForURL: %@", v6, v7, v8, v9, v10, lCopy);
  v11 = [[SLURLPreviewGenerator alloc] initWithFrame:0.0, 0.0, 420.0, 420.0];
  webPreviewGenerator = self->_webPreviewGenerator;
  self->_webPreviewGenerator = v11;

  objc_initWeak(&location, self);
  v13 = self->_webPreviewGenerator;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SLSheetURLPreviewView__generateAutomaticPreviewForURL___block_invoke;
  v14[3] = &unk_1E8176258;
  objc_copyWeak(&v15, &location);
  [(SLURLPreviewGenerator *)v13 loadURL:lCopy completion:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __57__SLSheetURLPreviewView__generateAutomaticPreviewForURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SLSheetURLPreviewView__generateAutomaticPreviewForURL___block_invoke_2;
  v5[3] = &unk_1E8175FD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __57__SLSheetURLPreviewView__generateAutomaticPreviewForURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  _SLLog(v1, 7, @"SLSheetURLPreviewView _generateAutomaticPreviewForURL: generated web preview %@ into preview view %@", v3, v4, v5, v6, v7, *(a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      [WeakRetained setImage:?];
      v8 = WeakRetained;
    }

    v9 = v8[55];
    v8[55] = 0;

    v8 = WeakRetained;
  }
}

@end