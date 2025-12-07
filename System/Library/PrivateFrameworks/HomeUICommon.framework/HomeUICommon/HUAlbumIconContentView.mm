@interface HUAlbumIconContentView
- (HUAlbumIconContentView)initWithFrame:(CGRect)frame;
- (void)_updateIconImage;
- (void)layoutSubviews;
- (void)setIconSize:(unint64_t)size;
- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated;
@end

@implementation HUAlbumIconContentView

- (HUAlbumIconContentView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUAlbumIconContentView;
  v3 = [(HUIconContentView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E0]);
    [(HUAlbumIconContentView *)v3 setImageView:v4];

    imageView = [(HUAlbumIconContentView *)v3 imageView];
    [imageView setContentMode:1];

    imageView2 = [(HUAlbumIconContentView *)v3 imageView];
    layer = [imageView2 layer];
    [layer setCornerRadius:4.0];

    imageView3 = [(HUAlbumIconContentView *)v3 imageView];
    layer2 = [imageView3 layer];
    [layer2 setMasksToBounds:1];

    imageView4 = [(HUAlbumIconContentView *)v3 imageView];
    [(HUAlbumIconContentView *)v3 addSubview:imageView4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUAlbumIconContentView;
  [(HUAlbumIconContentView *)&v12 layoutSubviews];
  [(HUAlbumIconContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(HUAlbumIconContentView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  objc_opt_class();
  v9 = descriptorCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    imageData = [v11 imageData];
    iconDescriptor = [(HUIconContentView *)self iconDescriptor];
    imageData2 = [iconDescriptor imageData];
    v15 = [imageData isEqual:imageData2];
  }

  else
  {
    v15 = 1;
  }

  displayStyle = [(HUIconContentView *)self displayStyle];
  v17.receiver = self;
  v17.super_class = HUAlbumIconContentView;
  [(HUIconContentView *)&v17 updateWithIconDescriptor:v9 displayStyle:style animated:animatedCopy];
  if (!v15 || displayStyle != style)
  {
    [(HUAlbumIconContentView *)self _updateIconImage];
  }
}

- (void)setIconSize:(unint64_t)size
{
  iconSize = [(HUIconContentView *)self iconSize];
  v6.receiver = self;
  v6.super_class = HUAlbumIconContentView;
  [(HUIconContentView *)&v6 setIconSize:size];
  if (iconSize != size)
  {
    [(HUAlbumIconContentView *)self _updateIconImage];
  }
}

- (void)_updateIconImage
{
  objc_opt_class();
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = iconDescriptor;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;

  if (v9)
  {
    v5 = MEMORY[0x277D755B0];
    imageData = [v9 imageData];
    imageView2 = [v5 imageWithData:imageData];

    imageView = [(HUAlbumIconContentView *)self imageView];
    [imageView setImage:imageView2];
  }

  else
  {
    imageView2 = [(HUAlbumIconContentView *)self imageView];
    [imageView2 setImage:0];
  }
}

@end