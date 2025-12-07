@interface EKEventAttachmentCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKEventAttachmentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_iconForDocumentProxy:(id)proxy;
- (void)layoutSubviews;
- (void)setAttachment:(id)attachment;
- (void)showSpinner:(BOOL)spinner;
@end

@implementation EKEventAttachmentCell

- (EKEventAttachmentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = EKEventAttachmentCell;
  v4 = [(EKEventAttachmentCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    traitCollection = [(EKEventAttachmentCell *)v4 traitCollection];
    if (EKUIUsesLargeTextLayout(traitCollection))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    textLabel = [(EKEventAttachmentCell *)v5 textLabel];
    [textLabel setNumberOfLines:v7];
  }

  return v5;
}

- (id)_iconForDocumentProxy:(id)proxy
{
  proxyCopy = proxy;
  if (proxyCopy && (([MEMORY[0x1E69DCAB8] _iconForResourceProxy:proxyCopy format:3], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", proxyCopy, 6), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", proxyCopy, 4), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x1E69DCAB8], "_iconForResourceProxy:format:", proxyCopy, 7), (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  textLabel = [(EKEventAttachmentCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(EKEventAttachmentCell *)self detailTextLabel];
  [detailTextLabel setText:0];

  imageView = [(EKEventAttachmentCell *)self imageView];
  [imageView setImage:0];

  [(EKEventAttachmentCell *)self setAccessoryType:0];
  v8 = attachmentCopy;
  if (attachmentCopy)
  {
    fileName = [attachmentCopy fileName];
    v10 = fileName;
    if (!fileName)
    {
      v3 = EventKitUIBundle();
      v10 = [v3 localizedStringForKey:@"Untitled Attachment" value:&stru_1F4EF6790 table:0];
    }

    textLabel2 = [(EKEventAttachmentCell *)self textLabel];
    [textLabel2 setText:v10];

    if (!fileName)
    {
    }

    fileSize = [attachmentCopy fileSize];
    v13 = fileSize;
    if (fileSize)
    {
      v14 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(fileSize countStyle:{"longLongValue"), 0}];
      detailTextLabel2 = [(EKEventAttachmentCell *)self detailTextLabel];
      [detailTextLabel2 setText:v14];
    }

    fileName2 = [attachmentCopy fileName];
    pathExtension = [fileName2 pathExtension];

    if (pathExtension)
    {
      v18 = MEMORY[0x1E6982C40];
      fileName3 = [attachmentCopy fileName];
      pathExtension2 = [fileName3 pathExtension];
      v21 = [v18 typeWithFilenameExtension:pathExtension2];

      identifier = [v21 identifier];
    }

    else
    {
      identifier = 0;
    }

    v23 = MEMORY[0x1E6963658];
    fileName4 = [attachmentCopy fileName];
    v25 = [v23 documentProxyForName:fileName4 type:identifier MIMEType:0];

    v26 = [(EKEventAttachmentCell *)self _iconForDocumentProxy:v25];
    if (v26)
    {
      imageView2 = [(EKEventAttachmentCell *)self imageView];
      [imageView2 setImage:v26];
    }

    v8 = attachmentCopy;
  }
}

- (void)showSpinner:(BOOL)spinner
{
  activityIndicator = self->_activityIndicator;
  if (spinner)
  {
    if (!activityIndicator)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v6 = self->_activityIndicator;
      self->_activityIndicator = v5;

      activityIndicator = self->_activityIndicator;
    }

    [(UIActivityIndicatorView *)activityIndicator startAnimating];
    v7 = self->_activityIndicator;

    [(EKEventAttachmentCell *)self setAccessoryView:v7];
  }

  else if (activityIndicator)
  {
    [(EKEventAttachmentCell *)self setAccessoryView:0];
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
    v8 = self->_activityIndicator;
    self->_activityIndicator = 0;
  }
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = EKEventAttachmentCell;
  [(EKEventAttachmentCell *)&v34 layoutSubviews];
  traitCollection = [(EKEventAttachmentCell *)self traitCollection];
  if (!EKUIUsesLargeTextLayout(traitCollection))
  {
    imageView = [(EKEventAttachmentCell *)self imageView];
    image = [imageView image];
    if (image)
    {
      v6 = image;
      imageView2 = [(EKEventAttachmentCell *)self imageView];
      image2 = [imageView2 image];
      [image2 size];
      v10 = v9;

      if (v10 <= 0.0)
      {
        return;
      }

      imageView3 = [(EKEventAttachmentCell *)self imageView];
      [imageView3 frame];

      imageView4 = [(EKEventAttachmentCell *)self imageView];
      image3 = [imageView4 image];
      [image3 size];
      v15 = v14;
      v17 = v16;

      v18 = v15 / v17;
      imageView5 = [(EKEventAttachmentCell *)self imageView];
      [imageView5 setContentMode:1];

      traitCollection = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v20 = [traitCollection _scaledValueForValue:57.0];
      if (v22 >= v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v22;
      }

      v24 = v18 * v23;
      if (CalInterfaceIsLeftToRight(v20, v21))
      {
        textLabel = [(EKEventAttachmentCell *)self textLabel];
        [textLabel frame];
        v27 = (v26 - v24) * 0.5;
      }

      else
      {
        [(EKEventAttachmentCell *)self bounds];
        v29 = v28;
        textLabel2 = [(EKEventAttachmentCell *)self textLabel];
        [textLabel2 frame];
        MaxX = CGRectGetMaxX(v35);

        v27 = MaxX + (v29 - MaxX - v24) * 0.5;
      }

      [(EKEventAttachmentCell *)self frame];
      v33 = (v32 - v23) * 0.5;
      imageView = [(EKEventAttachmentCell *)self imageView];
      [imageView setFrame:{v27, v33, v24, v23}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = EKEventAttachmentCell;
  [(EKEventAttachmentCell *)&v5 sizeThatFits:fits.width, fits.height];
  if (v4 < 54.0)
  {
    v4 = 54.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end