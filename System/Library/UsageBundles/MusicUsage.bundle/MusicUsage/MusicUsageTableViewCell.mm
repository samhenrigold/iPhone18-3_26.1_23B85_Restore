@interface MusicUsageTableViewCell
+ (double)maximumRowHeightIncludingArtwork:(BOOL)artwork includingSubtitle:(BOOL)subtitle traitCollection:(id)collection sizingCache:(id *)cache;
- (MusicUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_fileSizeText;
- (void)_handleArtworkImageUpdate:(id)update idealArtworkSize:(CGSize)size;
- (void)_layoutArtworkViewWithAvailableContentBounds:(CGRect)bounds idealArtworkSize:(CGSize)size usingBlock:(id)block;
- (void)_reloadWithUsageItemFromSpecifier:(id)specifier;
- (void)layoutSubviews;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
@end

@implementation MusicUsageTableViewCell

+ (double)maximumRowHeightIncludingArtwork:(BOOL)artwork includingSubtitle:(BOOL)subtitle traitCollection:(id)collection sizingCache:(id *)cache
{
  subtitleCopy = subtitle;
  artworkCopy = artwork;
  collectionCopy = collection;
  v10 = collectionCopy;
  if (!cache)
  {
    goto LABEL_9;
  }

  if (!artworkCopy || (p_var3 = cache, !subtitleCopy))
  {
    p_var3 = &cache->var3;
    if (subtitleCopy)
    {
      p_var3 = &cache->var2;
    }

    if (artworkCopy)
    {
      p_var3 = &cache->var1;
    }
  }

  var0 = p_var3->var0;
  if (p_var3->var0 <= 0.00000011920929)
  {
LABEL_9:
    if (artworkCopy)
    {
      v13 = 48.0;
    }

    else
    {
      v13 = 0.0;
    }

    [collectionCopy displayScale];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v14 _bodyLeading];
    MPUFloatCeilForScale();
    v16 = v15 + 0.0;
    if (subtitleCopy)
    {
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [v17 _bodyLeading];
      [v14 _bodyLeading];
      [v14 ascender];
      [v17 _scaledValueForValue:16.0];
      [v17 ascender];
      MPUFloatCeilForScale();
      v16 = v16 + v18;
    }

    v19 = v16 + 8.0;
    if (v13 >= v16 + 8.0)
    {
      v19 = v13;
    }

    if (v19 >= 52.0)
    {
      var0 = v19;
    }

    else
    {
      var0 = 52.0;
    }

    if (cache)
    {
      if (!artworkCopy || !subtitleCopy)
      {
        if (artworkCopy)
        {
          cache = (cache + 8);
        }

        else if (subtitleCopy)
        {
          cache = (cache + 16);
        }

        else
        {
          cache = (cache + 24);
        }
      }

      cache->var0 = var0;
    }
  }

  return var0;
}

- (MusicUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = MusicUsageTableViewCell;
  v9 = [(MusicUsageTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(MusicUsageTableViewCell *)v9 setSpecifier:specifierCopy];
    [(MusicUsageTableViewCell *)v10 _reloadWithUsageItemFromSpecifier:specifierCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v114.receiver = self;
  v114.super_class = MusicUsageTableViewCell;
  [(MusicUsageTableViewCell *)&v114 layoutSubviews];
  traitCollection = [(MusicUsageTableViewCell *)self traitCollection];
  [traitCollection displayScale];
  v4 = v3;
  contentView = [(MusicUsageTableViewCell *)self contentView];
  [contentView bounds];
  v101 = v7;
  v102 = v6;
  v99 = v9;
  v100 = v8;
  [(MusicUsageTableViewCell *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  accessoryType = [(MusicUsageTableViewCell *)self accessoryType];
  v106 = 0;
  v107 = &v106;
  v108 = 0x4010000000;
  v109 = "";
  v110 = v102 + v11;
  v111 = v101 + 0.0;
  v112 = v100 - (v11 + v13);
  v113 = v99;
  if (accessoryType)
  {
    v15 = +[UIApplication sharedApplication];
    v16 = [v15 userInterfaceLayoutDirection] == &dword_0 + 1;

    p_x = &v107->origin.x;
    if (v16)
    {
      v107[1].origin.x = 0.0;
    }
  }

  else
  {
    p_x = &v106;
  }

  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_1E78;
  v105[3] = &unk_103F0;
  v105[4] = self;
  v105[5] = &v106;
  *&v105[6] = v4;
  *&v105[7] = v102;
  *&v105[8] = v101;
  *&v105[9] = v100;
  *&v105[10] = v99;
  [(MusicUsageTableViewCell *)self _layoutArtworkViewWithAvailableContentBounds:v105 idealArtworkSize:p_x[4] usingBlock:p_x[5], p_x[6], p_x[7], 40.0, 40.0];
  _fileSizeText = [(MusicUsageTableViewCell *)self _fileSizeText];
  v19 = [_fileSizeText length];
  fileSizeLabel = self->_fileSizeLabel;
  if (v19)
  {
    if (!fileSizeLabel)
    {
      v21 = objc_alloc_init(UILabel);
      v22 = self->_fileSizeLabel;
      self->_fileSizeLabel = v21;

      v23 = self->_fileSizeLabel;
      v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_fileSizeLabel;
      v26 = +[UIColor tableCellGrayTextColor];
      [(UILabel *)v25 setTextColor:v26];

      [(UILabel *)self->_fileSizeLabel setTextAlignment:4];
      [contentView addSubview:self->_fileSizeLabel];
      fileSizeLabel = self->_fileSizeLabel;
    }

    if ([(UILabel *)fileSizeLabel isHidden])
    {
      [(UILabel *)self->_fileSizeLabel setHidden:0];
    }

    width = v107[1].size.width;
    height = v107[1].size.height;
    [(UILabel *)self->_fileSizeLabel setText:_fileSizeText];
    [(UILabel *)self->_fileSizeLabel sizeThatFits:width, height];
    if (v29 < width)
    {
      width = v29;
    }

    if (v30 < height)
    {
      height = v30;
    }

    CGRectGetMaxX(v107[1]);
    v117.origin.x = CGRectZero.origin.x;
    v117.origin.y = CGRectZero.origin.y;
    v117.size.width = width;
    v117.size.height = height;
    CGRectGetWidth(v117);
    UIRectCenteredYInRectScale();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [(UILabel *)self->_fileSizeLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v31, v33, v35, v37, v102, v101, v100, v99)];
    MaxX = CGRectGetMaxX(v107[1]);
    v118.origin.x = v32;
    v118.origin.y = v34;
    v118.size.width = v36;
    v118.size.height = v38;
    MinX = CGRectGetMinX(v118);
    v41 = v107;
    v107[1].size.width = v107[1].size.width - (MaxX - MinX + 8.0);
  }

  else
  {
    [(UILabel *)fileSizeLabel setHidden:1];
    v41 = v107;
  }

  origin = v41[1].origin;
  size = v41[1].size;
  v42 = self->_usageItemTitle;
  v43 = [(NSString *)v42 length];
  titleLabel = self->_titleLabel;
  if (v43)
  {
    if (!titleLabel)
    {
      v45 = objc_alloc_init(UILabel);
      v46 = self->_titleLabel;
      self->_titleLabel = v45;

      v47 = self->_titleLabel;
      v48 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v47 setFont:v48];

      v49 = self->_titleLabel;
      v50 = +[UIColor _labelColor];
      [(UILabel *)v49 setTextColor:v50];

      [(UILabel *)self->_titleLabel setTextAlignment:4];
      [contentView addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    if ([(UILabel *)titleLabel isHidden])
    {
      [(UILabel *)self->_titleLabel setHidden:0];
    }

    v51 = v107[1].size.width;
    v52 = v107[1].size.height;
    [(UILabel *)self->_titleLabel setText:v42];
    [(UILabel *)self->_titleLabel sizeThatFits:v51, v52];
    if (v53 < v51)
    {
      v51 = v53;
    }

    if (v54 < v52)
    {
      v52 = v54;
    }

    v55 = CGRectGetMinX(v107[1]);
    MinY = CGRectGetMinY(v107[1]);
    v119.origin.x = v55;
    v119.origin.y = MinY;
    v119.size.width = v51;
    v119.size.height = v52;
    CGRectGetMinY(v119);
    v120.origin.x = v55;
    v120.origin.y = MinY;
    v120.size.width = v51;
    v120.size.height = v52;
    CGRectGetMaxY(v120);
    [(UILabel *)self->_titleLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v55, MinY, v51, v52, v102, v101, v100, v99)];
    v121.origin.x = v55;
    v121.origin.y = MinY;
    v121.size.width = v51;
    v121.size.height = v52;
    v57 = CGRectGetHeight(v121) + 0.0;
    v58 = v107;
    v107[1].origin.y = v57 + v107[1].origin.y;
    v58[1].size.height = v58[1].size.height - v57;
    v59 = self->_titleLabel;
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
    v59 = 0;
  }

  v60 = self->_usageItemSubtitles;
  v61 = [(NSArray *)v60 count];
  subtitleLabel = self->_subtitleLabel;
  if (v61)
  {
    if (!subtitleLabel)
    {
      v63 = objc_alloc_init(MPUAbbreviatingLabel);
      v64 = self->_subtitleLabel;
      self->_subtitleLabel = v63;

      v65 = self->_subtitleLabel;
      v66 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [(MPUAbbreviatingLabel *)v65 setFont:v66];

      v67 = self->_subtitleLabel;
      v68 = PreferencesTableViewHeaderColor();
      [(MPUAbbreviatingLabel *)v67 setTextColor:v68];

      [(MPUAbbreviatingLabel *)self->_subtitleLabel setTextAlignment:4];
      [contentView addSubview:self->_subtitleLabel];
      subtitleLabel = self->_subtitleLabel;
    }

    if ([(MPUAbbreviatingLabel *)subtitleLabel isHidden])
    {
      [(MPUAbbreviatingLabel *)self->_subtitleLabel setHidden:0];
    }

    v70 = v107[1].size.width;
    v69 = v107[1].size.height;
    if (v59)
    {
      font = [(MPUAbbreviatingLabel *)self->_subtitleLabel font];
      [font _scaledValueForValue:16.0];
      v73 = v72;
      [font ascender];
      v75 = v74;
      [(UILabel *)v59 _baselineOffsetFromBottom];
      v77 = v76;

      v78 = round(v4 * (v73 - v75)) / v4;
      v69 = v69 + v77 - v78;
    }

    else
    {
      v78 = 0.0;
    }

    [(MPUAbbreviatingLabel *)self->_subtitleLabel setTextRepresentations:v60];
    [(MPUAbbreviatingLabel *)self->_subtitleLabel sizeThatFits:v70, v69];
    if (v79 < v69)
    {
      v69 = v79;
    }

    v80 = CGRectGetMinX(v107[1]);
    [(UILabel *)v59 frame];
    MaxY = CGRectGetMaxY(v122);
    if (v59)
    {
      v82 = MaxY;
      [(UILabel *)v59 _baselineOffsetFromBottom];
      v84 = v78 + v82 - v83;
    }

    else
    {
      v84 = CGRectGetMinY(v107[1]);
    }

    v123.origin.x = v80;
    v123.origin.y = v84;
    v123.size.width = v70;
    v123.size.height = v69;
    CGRectGetMinY(v123);
    v124.origin.x = v80;
    v124.origin.y = v84;
    v124.size.width = v70;
    v124.size.height = v69;
    CGRectGetMaxY(v124);
    [(MPUAbbreviatingLabel *)self->_subtitleLabel setFrame:MusicRectByApplyingUserInterfaceLayoutDirectionInRect([(MusicUsageTableViewCell *)self effectiveUserInterfaceLayoutDirection], v80, v84, v70, v69, v102, v101, v100, v99)];
  }

  else
  {
    [(MPUAbbreviatingLabel *)subtitleLabel setHidden:1];
  }

  v85 = v107;
  v107[1].origin = origin;
  v85[1].size = size;
  CGRectGetHeight(v85[1]);
  v115 = self->_titleLabel;
  v116 = self->_subtitleLabel;
  v86 = &v115;
  v87 = 1;
  do
  {
    v88 = v87;
    v89 = *v86;
    v90 = v89;
    if (v89 && ([v89 isHidden] & 1) == 0)
    {
      [v90 frame];
      [v90 setFrame:?];
    }

    v87 = 0;
    v86 = &v116;
  }

  while ((v88 & 1) != 0);
  objc_msgSend_separatorInset(self);
  v92 = v91;
  v94 = v93;
  v96 = v95;
  [(UILabel *)self->_titleLabel frame];
  [(MusicUsageTableViewCell *)self setSeparatorInset:v92, CGRectGetMinX(v125), v94, v96];
  for (i = 1; i != -1; --i)
  {
  }

  _Block_object_dispose(&v106, 8);
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  specifierCopy = specifier;
  [(MusicUsageTableViewCell *)self setSpecifier:specifierCopy];
  [(MusicUsageTableViewCell *)self _reloadWithUsageItemFromSpecifier:specifierCopy];
}

- (id)_fileSizeText
{
  specifier = [(MusicUsageTableViewCell *)self specifier];
  v3 = specifier;
  if (specifier)
  {
    v4 = *(specifier + OBJC_IVAR___PSSpecifier_getter);
    WeakRetained = objc_loadWeakRetained((specifier + OBJC_IVAR___PSSpecifier_target));
    v6 = [WeakRetained methodForSelector:v4];

    v7 = objc_loadWeakRetained(&v3[OBJC_IVAR___PSSpecifier_target]);
    v8 = v6(v7, *&v3[OBJC_IVAR___PSSpecifier_getter], v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleArtworkImageUpdate:(id)update idealArtworkSize:(CGSize)size
{
  updateCopy = update;
  if (updateCopy)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIColor colorWithWhite:0.85 alpha:1.0];
  }

  [(UIImageView *)self->_artworkView setImage:updateCopy];
  [(UIImageView *)self->_artworkView setBackgroundColor:v5];
  [updateCopy size];
  v8 = v7;
  v9 = 0.0;
  if (v6 > 0.00000011920929 && v8 > 0.00000011920929)
  {
    v9 = 1.0;
    if (!self->_usageItemArtworkWantsCircleTreatment)
    {
      v9 = v6 / v8;
    }
  }

  if (!MusicFloatEqualToFloat(self->_lastUsedArtworkViewAspectRatio, v9))
  {
    [(MusicUsageTableViewCell *)self setNeedsLayout];
  }
}

- (void)_layoutArtworkViewWithAvailableContentBounds:(CGRect)bounds idealArtworkSize:(CGSize)size usingBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  artworkView = self->_artworkView;
  if (!self->_usageItemHasArtworkCatalogBlock)
  {
    [(UIImageView *)artworkView setHidden:1];
    goto LABEL_23;
  }

  if (!artworkView)
  {
    v10 = objc_alloc_init(UIImageView);
    v11 = self->_artworkView;
    self->_artworkView = v10;

    layer = [(UIImageView *)self->_artworkView layer];
    v13 = [UIColor colorWithWhite:0.0 alpha:0.1];
    [layer setBorderColor:{objc_msgSend(v13, "CGColor")}];

    [(UIImageView *)self->_artworkView setClipsToBounds:1];
    v14 = self->_artworkView;
    if (self->_usageItemArtworkWantsCircleTreatment)
    {
      [(UIImageView *)v14 setContentMode:2];
      [(UIImageView *)self->_artworkView _setCornerRadius:width * 0.5];
    }

    else
    {
      [(UIImageView *)v14 setContentMode:1];
      [(UIImageView *)self->_artworkView _setContinuousCornerRadius:4.0];
    }

    contentView = [(MusicUsageTableViewCell *)self contentView];
    [contentView addSubview:self->_artworkView];

    artworkView = self->_artworkView;
  }

  [(UIImageView *)artworkView setHidden:0];
  traitCollection = [(MusicUsageTableViewCell *)self traitCollection];
  [traitCollection displayScale];
  *&v44 = MusicSafeDisplayScale(v17);
  layer2 = [(UIImageView *)self->_artworkView layer];
  [layer2 setBorderWidth:1.0 / *&v44];

  if (width > 0.00000011920929 && height > 0.00000011920929)
  {
    image = [(UIImageView *)self->_artworkView image];
    v21 = image;
    if (image)
    {
      [image size];
      if (v22 > 0.00000011920929 && v23 > 0.00000011920929)
      {
        v41 = v23;
        v42 = v22;
        v34 = width / v22;
        v35 = height / v23;
        if (MusicFloatEqualToFloat(width / v22, height / v23))
        {
          if (!self->_usageItemArtworkWantsCircleTreatment)
          {
            v37.n128_f64[0] = width;
            v43 = v37;
            v25 = height;
            v26 = width / height;
LABEL_33:

            v19 = v43;
            goto LABEL_18;
          }
        }

        else if (!self->_usageItemArtworkWantsCircleTreatment)
        {
          if (v34 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v34;
          }

          v39.f64[0] = v42;
          v39.f64[1] = v41;
          v40 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vmulq_n_f64(v39, v38), *&v44)), vdupq_lane_s64(v44, 0));
          v25 = v40.f64[1];
          v43 = v40;
          v26 = v40.f64[0] / v40.f64[1];
          goto LABEL_33;
        }

        v26 = 1.0;
        v37.n128_f64[0] = width;
        v43 = v37;
        v25 = height;
        goto LABEL_33;
      }
    }
  }

  v25 = height;
  v19.n128_f64[0] = width;
  v26 = width / height;
LABEL_18:
  self->_lastUsedArtworkViewAspectRatio = v26;
  blockCopy[2](blockCopy, self->_artworkView, v19, v25, width, height);
  if (!self->_artworkConfigurationBlockEnabled)
  {
    v27 = self->_usageItem;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    [(UIImageView *)self->_artworkView frame];
    v29 = v28;
    v31 = v30;
    v32 = self->_usageItemArtworkCatalog;
    [(MPArtworkCatalog *)v32 setDestinationScale:*&v44];
    [(MPArtworkCatalog *)v32 setFittingSize:v29, v31];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_25FC;
    v45[3] = &unk_10418;
    v33 = v27;
    v48 = width;
    v49 = height;
    v46 = v33;
    v47 = &v50;
    [(MPArtworkCatalog *)v32 setDestination:self configurationBlock:v45];
    self->_artworkConfigurationBlockEnabled = 1;
    if ((v51[3] & 1) == 0)
    {
      [(MusicUsageTableViewCell *)self _handleArtworkImageUpdate:0 idealArtworkSize:width, height];
    }

    _Block_object_dispose(&v50, 8);
  }

LABEL_23:
}

- (void)_reloadWithUsageItemFromSpecifier:(id)specifier
{
  setNeedsLayout = [specifier propertyForKey:@"MusicUsageItemPropertyKey"];
  v5 = setNeedsLayout;
  if (self->_usageItem != setNeedsLayout)
  {
    obj = setNeedsLayout;
    if (self->_artworkConfigurationBlockEnabled)
    {
      [(MusicUsageTableViewCell *)self clearArtworkCatalogs];
      self->_artworkConfigurationBlockEnabled = 0;
    }

    objc_storeStrong(&self->_usageItem, obj);
    artworkCatalog = [(MusicUsageItem *)self->_usageItem artworkCatalog];
    usageItemArtworkCatalog = self->_usageItemArtworkCatalog;
    self->_usageItemArtworkCatalog = artworkCatalog;

    artworkCatalogBlock = [(MusicUsageItem *)self->_usageItem artworkCatalogBlock];
    self->_usageItemHasArtworkCatalogBlock = artworkCatalogBlock != 0;

    self->_usageItemArtworkWantsCircleTreatment = [(MusicUsageItem *)self->_usageItem artworkWantsCircleTreatment];
    subtitles = [(MusicUsageItem *)self->_usageItem subtitles];
    v10 = [subtitles copy];
    usageItemSubtitles = self->_usageItemSubtitles;
    self->_usageItemSubtitles = v10;

    title = [(MusicUsageItem *)self->_usageItem title];
    v13 = [title copy];
    usageItemTitle = self->_usageItemTitle;
    self->_usageItemTitle = v13;

    childUsageGroup = [(MusicUsageItem *)self->_usageItem childUsageGroup];

    v16 = childUsageGroup != 0;
    if (childUsageGroup)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }

    [(MusicUsageTableViewCell *)self setAccessoryType:v16];
    [(MusicUsageTableViewCell *)self setSelectionStyle:v17];
    setNeedsLayout = [(MusicUsageTableViewCell *)self setNeedsLayout];
    v5 = obj;
  }

  _objc_release_x1(setNeedsLayout, v5);
}

@end