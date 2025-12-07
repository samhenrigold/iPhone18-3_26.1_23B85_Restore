@interface TransferMailboxPickerPalette
- (CGRect)_contentRect;
- (CGRect)messageThumbnailViewFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TransferMailboxPickerPalette)initWithFrame:(CGRect)frame;
- (id)_senderStringForWidth:(double)width;
- (void)_drawThumbnailInContext:(CGContext *)context view:(id)view frame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMessageThumbnailWithView:(id)view;
@end

@implementation TransferMailboxPickerPalette

- (TransferMailboxPickerPalette)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = TransferMailboxPickerPalette;
  v3 = [(TransferMailboxPickerPalette *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransferMailboxPickerPalette *)v3 setAutoresizingMask:2];
    [(TransferMailboxPickerPalette *)v4 setOpaque:0];
    [(TransferMailboxPickerPalette *)v4 setBackgroundColor:0];
    v5 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleHeadline1 addingSymbolicTraits:0x8000 options:0];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sendersLabel = v4->_sendersLabel;
    v4->_sendersLabel = v10;

    v12 = [UIFont fontWithDescriptor:v5 size:0.0];
    [(UILabel *)v4->_sendersLabel setFont:v12];

    [(UILabel *)v4->_sendersLabel setOpaque:0];
    [(UILabel *)v4->_sendersLabel setBackgroundColor:0];
    v13 = +[UIColor labelColor];
    [(UILabel *)v4->_sendersLabel setTextColor:v13];

    [(UILabel *)v4->_sendersLabel setLineBreakMode:4];
    [(UILabel *)v4->_sendersLabel setNumberOfLines:1];
    [(TransferMailboxPickerPalette *)v4 addSubview:v4->_sendersLabel];
    v14 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleSubheadline2 addingSymbolicTraits:0x8000 options:0];
    v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subjectLabel = v4->_subjectLabel;
    v4->_subjectLabel = v15;

    v17 = [UIFont fontWithDescriptor:v14 size:0.0];
    [(UILabel *)v4->_subjectLabel setFont:v17];

    [(UILabel *)v4->_subjectLabel setOpaque:0];
    [(UILabel *)v4->_subjectLabel setBackgroundColor:0];
    v18 = +[UIColor labelColor];
    [(UILabel *)v4->_subjectLabel setTextColor:v18];

    [(UILabel *)v4->_subjectLabel setLineBreakMode:4];
    [(UILabel *)v4->_subjectLabel setNumberOfLines:1];
    [(TransferMailboxPickerPalette *)v4 addSubview:v4->_subjectLabel];
  }

  return v4;
}

- (void)setMessageThumbnailWithView:(id)view
{
  viewCopy = view;
  messageThumbnailView = self->_messageThumbnailView;
  if (messageThumbnailView)
  {
    [(UIImageView *)messageThumbnailView removeFromSuperview];
    v6 = self->_messageThumbnailView;
    self->_messageThumbnailView = 0;
  }

  if (viewCopy)
  {
    [viewCopy bounds];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v9 = UIRoundToViewScale(height * (35.0 / width));
  if (v9 <= 58.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 58.0;
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  messageCount = self->_messageCount;
  v31 = messageCount;
  if (!messageCount)
  {
    messageCount = 1;
    goto LABEL_13;
  }

  if (messageCount >= 4)
  {
    messageCount = 3;
LABEL_13:
    v31 = messageCount;
  }

  v12 = [UIGraphicsImageRenderer alloc];
  v13 = +[UIGraphicsImageRendererFormat preferredFormat];
  v14 = [v12 initWithSize:v13 format:{35.0, v10 + (messageCount - 1) * 2.5}];

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100256E6C;
  v23 = &unk_100656A10;
  v26 = v30;
  v15 = viewCopy;
  v27 = v10 + (messageCount - 1) * 2.5;
  v28 = v10;
  v29 = 0x4041800000000000;
  v24 = v15;
  selfCopy = self;
  v16 = [v14 imageWithActions:&v20];
  v17 = [UIImageView alloc];
  v18 = [v17 initWithImage:{v16, v20, v21, v22, v23}];
  v19 = self->_messageThumbnailView;
  self->_messageThumbnailView = v18;

  [(TransferMailboxPickerPalette *)self addSubview:self->_messageThumbnailView];
  [(TransferMailboxPickerPalette *)self setNeedsLayout];

  _Block_object_dispose(v30, 8);
}

- (void)_drawThumbnailInContext:(CGContext *)context view:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  if (viewCopy)
  {
    v11 = +[UIColor mailAppBackgroundColor];
    [v11 set];

    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    CGContextFillRect(context, v28);
    [viewCopy bounds];
    v13 = v12;
    v15 = v14;
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, x, y);
    CGContextScaleCTM(context, width / v13, height / v15);
    layer = [viewCopy layer];
    [layer renderInContext:context];

    CGContextRestoreGState(context);
  }

  else
  {
    v17 = +[UIColor whiteColor];
    [v17 set];

    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    CGContextFillRect(context, v29);
  }

  [(TransferMailboxPickerPalette *)self mui_currentScreenScale];
  v19 = 1.0 / v18;
  v20 = 1.0 / v18 * 0.5;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectInset(v30, v20, v20);
  v21 = v31.origin.x;
  v22 = v31.origin.y;
  v23 = v31.size.width;
  v24 = v31.size.height;
  v25 = [UIColor colorWithWhite:0.843137255 alpha:1.0];
  [v25 set];

  v32.origin.x = v21;
  v32.origin.y = v22;
  v32.size.width = v23;
  v32.size.height = v24;
  CGContextStrokeRectWithWidth(context, v32, v19);
}

- (id)_senderStringForWidth:(double)width
{
  if ([(NSArray *)self->_senders count])
  {
    font = [(UILabel *)self->_sendersLabel font];
    v36 = MFLocalizedAddressSeparator();
    [v36 _legacy_sizeWithFont:font];
    v6 = v5;
    v7 = [(NSArray *)self->_senders count];
    v35 = &v35;
    v8 = __chkstk_darwin(v7);
    v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      memset(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 255, v9);
    }

    v11 = 0;
    v37 = v10;
    v38 = v10 - 8;
    v12 = 0.0;
    do
    {
      v13 = [(NSArray *)self->_senders objectAtIndex:v11];
      [v13 _legacy_sizeWithFont:font];
      v15 = v14;
      *&v10[8 * v11] = v14;

      if (v11)
      {
        v15 = v6 + v15;
        *&v10[8 * v11] = v15;
      }

      v16 = v12 + v15;
      if (v12 + v15 <= width)
      {
        ++v11;
        v12 = v12 + v15;
      }

      else
      {
        v17 = -v11;
        v18 = &v38[8 * v11];
        while (1)
        {
          v19 = [NSNumberFormatter ef_formatInteger:[(NSArray *)self->_senders count]+ v17 withGrouping:1];
          v20 = +[NSBundle mainBundle];
          v21 = [v20 localizedStringForKey:@"AND_N_MORE" value:&stru_100662A88 table:@"Main"];

          v22 = [NSString stringWithFormat:v21, v19];
          [v22 _legacy_sizeWithFont:font];
          v24 = v23;

          if (!v17 || v12 + v24 <= width)
          {
            break;
          }

          v25 = *v18--;
          v12 = v12 - v25;

          ++v17;
        }

        v11 = -v17;
        v10 = v37;
      }
    }

    while (v11 < [(NSArray *)self->_senders count]&& v16 <= width);
    senders = self->_senders;
    if (v11)
    {
      v27 = [(NSArray *)senders subarrayWithRange:0, v11];
      v28 = [v27 ef_map:&stru_100656A30];
      v29 = [v28 componentsJoinedByString:v36];

      if (v11 < [(NSArray *)self->_senders count])
      {
        v30 = [NSNumberFormatter ef_formatInteger:[(NSArray *)self->_senders count]- v11 withGrouping:1];
        v31 = +[NSBundle mainBundle];
        v32 = [v31 localizedStringForKey:@"AND_N_MORE" value:&stru_100662A88 table:@"Main"];

        v33 = [v29 stringByAppendingFormat:v32, v30];

        v29 = v33;
      }
    }

    else
    {
      v29 = [(NSArray *)senders objectAtIndex:0];
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = TransferMailboxPickerPalette;
  [(TransferMailboxPickerPalette *)&v45 layoutSubviews];
  mf_prefersRightToLeftInterfaceLayout = [(TransferMailboxPickerPalette *)self mf_prefersRightToLeftInterfaceLayout];
  [(TransferMailboxPickerPalette *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v8 + -67.0 + -16.0;
  v13 = [(TransferMailboxPickerPalette *)self _senderStringForWidth:v12];
  [(UILabel *)self->_sendersLabel setText:v13];

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  if (mf_prefersRightToLeftInterfaceLayout)
  {
    v18 = CGRectGetMaxX(*&v14) - v12 + -67.0;
  }

  else
  {
    v18 = CGRectGetMinX(*&v14) + 67.0;
  }

  height = CGSizeZero.height;
  [(UILabel *)self->_sendersLabel sizeThatFits:CGSizeZero.width, height];
  [(UILabel *)self->_sendersLabel setFrame:v18, 0.0, v12, v20];
  [(UILabel *)self->_subjectLabel sizeThatFits:CGSizeZero.width, height];
  [(UILabel *)self->_subjectLabel setFrame:v18, 0.0, v12, v21];
  font = [(UILabel *)self->_subjectLabel font];
  [font _bodyLeading];
  v24 = UIRoundToViewScale(v23 * 0.5);

  [(UILabel *)self->_sendersLabel _firstLineBaselineOffsetFromBoundsTop];
  [(UILabel *)self->_subjectLabel _setFirstLineCapFrameOriginY:v24 + v25];
  [(UILabel *)self->_subjectLabel frame];
  MaxY = CGRectGetMaxY(v46);
  v27 = UIRoundToViewScale((v11 - MaxY) * 0.5);
  [(UILabel *)self->_sendersLabel frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(UILabel *)self->_subjectLabel frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v27 + v31;
  v44 = v27 + v43;
  [(UILabel *)self->_sendersLabel setFrame:v29, v42, v33, v35];
  [(UILabel *)self->_subjectLabel setFrame:v37, v44, v39, v41];
  if (self->_messageThumbnailView)
  {
    [(TransferMailboxPickerPalette *)self messageThumbnailViewFrame];
    [(UIImageView *)self->_messageThumbnailView setFrame:?];
  }
}

- (CGRect)messageThumbnailViewFrame
{
  [(UIImageView *)self->_messageThumbnailView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TransferMailboxPickerPalette *)self _contentRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  mf_prefersRightToLeftInterfaceLayout = [(TransferMailboxPickerPalette *)self mf_prefersRightToLeftInterfaceLayout];
  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;
  if (mf_prefersRightToLeftInterfaceLayout)
  {
    MaxX = CGRectGetMaxX(*&v20);
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    v25 = MaxX - (CGRectGetWidth(v33) * -0.5 + 67.0);
  }

  else
  {
    MinX = CGRectGetMinX(*&v20);
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    v25 = MinX + (67.0 - CGRectGetWidth(v34)) * 0.5;
  }

  v35.origin.x = UIRoundToViewScale(v25);
  x = v35.origin.x;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  Height = CGRectGetHeight(v35);
  v29 = UIRoundToViewScale((68.0 - Height) * 0.5);
  v30 = x;
  v31 = v8;
  v32 = v10;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

- (CGRect)_contentRect
{
  [(TransferMailboxPickerPalette *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  [(TransferMailboxPickerPalette *)self bounds];
  v9 = v4 + v8;
  v11 = v10 + 0.0;
  v13 = v12 - (v4 + v6);
  result.size.height = v7;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() defaultHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end