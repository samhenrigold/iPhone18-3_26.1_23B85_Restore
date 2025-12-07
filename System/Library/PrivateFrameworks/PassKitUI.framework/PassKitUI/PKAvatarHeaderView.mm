@interface PKAvatarHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAvatarHeaderView)initWithContact:(id)contact counterpartHandle:(id)handle;
- (void)configureForContact;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
- (void)setCounterpartHandle:(id)handle;
@end

@implementation PKAvatarHeaderView

- (PKAvatarHeaderView)initWithContact:(id)contact counterpartHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  v28.receiver = self;
  v28.super_class = PKAvatarHeaderView;
  v9 = [(PKAvatarHeaderView *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_counterpartHandle, handle);
    objc_storeStrong(&v10->_contact, contact);
    v11 = objc_alloc_init(getCNAvatarViewClass_1());
    avatarView = v10->_avatarView;
    v10->_avatarView = v11;

    [(PKAvatarHeaderView *)v10 addSubview:v10->_avatarView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v10->_primaryLabel;
    v10->_primaryLabel = v13;

    v15 = v10->_primaryLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    [(UILabel *)v10->_primaryLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v10->_primaryLabel setNumberOfLines:1];
    v17 = v10->_primaryLabel;
    v18 = *MEMORY[0x1E69DDC58];
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC58], 2, 0);
    [(UILabel *)v17 setFont:v19];

    [(UILabel *)v10->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKAvatarHeaderView *)v10 addSubview:v10->_primaryLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v10->_secondaryLabel;
    v10->_secondaryLabel = v20;

    [(UILabel *)v10->_secondaryLabel setNumberOfLines:1];
    v22 = v10->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v22 setTextColor:secondaryLabelColor];

    v24 = v10->_secondaryLabel;
    v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v18);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v10->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKAvatarHeaderView *)v10 addSubview:v10->_secondaryLabel];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKAvatarHeaderView *)v10 setBackgroundColor:clearColor];

    if (v10->_contact || v10->_counterpartHandle)
    {
      [(PKAvatarHeaderView *)v10 configureForContact];
    }
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAvatarHeaderView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAvatarHeaderView;
  [(PKAvatarHeaderView *)&v3 layoutSubviews];
  [(PKAvatarHeaderView *)self bounds];
  [(PKAvatarHeaderView *)self _layoutWithBounds:1 applyLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v49.origin.x = bounds.origin.x + 14.0;
  v49.origin.y = bounds.origin.y + 14.0;
  v49.size.width = bounds.size.width + -28.0;
  v49.size.height = bounds.size.height + -14.0;
  remainder = v49;
  memset(&v46, 0, sizeof(v46));
  CGRectDivide(v49, &v46, &remainder, 100.0, CGRectMinYEdge);
  v17 = MEMORY[0x1E69BB7F8];
  if (layoutCopy)
  {
    avatarView = self->_avatarView;
    v13.n128_u64[0] = *&v46.origin.y;
    v12.n128_u64[0] = *&v46.origin.x;
    v15.n128_u64[0] = *&v46.size.height;
    v14.n128_u64[0] = *&v46.size.width;
    v10.n128_u64[0] = 0x4059000000000000;
    v11.n128_u64[0] = 0x4059000000000000;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v10, v11, v12, v13, v14, v15, v16);
    [(CNAvatarView *)avatarView setFrame:?];
  }

  CGRectDivide(remainder, &v46, &remainder, 14.0, CGRectMinYEdge);
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  v20 = v19;
  v22 = v21;
  CGRectDivide(remainder, &v46, &remainder, v21, CGRectMinYEdge);
  if (layoutCopy)
  {
    primaryLabel = self->_primaryLabel;
    v26.n128_u64[0] = *&v46.origin.y;
    v25.n128_u64[0] = *&v46.origin.x;
    v28.n128_u64[0] = *&v46.size.height;
    v27.n128_u64[0] = *&v46.size.width;
    v23.n128_u64[0] = v20;
    v24.n128_f64[0] = v22;
    PKSizeAlignedInRect(*v17, v23, v24, v25, v26, v27, v28, v29);
    [(UILabel *)primaryLabel setFrame:?];
  }

  [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v32 = v31;
  v34 = v33;
  if (v33 > 0.0)
  {
    CGRectDivide(remainder, &v46, &remainder, 3.0, CGRectMinYEdge);
  }

  CGRectDivide(remainder, &v46, &remainder, v34, CGRectMinYEdge);
  if (layoutCopy)
  {
    secondaryLabel = self->_secondaryLabel;
    v38.n128_u64[0] = *&v46.origin.y;
    v37.n128_u64[0] = *&v46.origin.x;
    v40.n128_u64[0] = *&v46.size.height;
    v39.n128_u64[0] = *&v46.size.width;
    v35.n128_u64[0] = v32;
    v36.n128_f64[0] = v34;
    PKSizeAlignedInRect(*v17, v35, v36, v37, v38, v39, v40, v41);
    [(UILabel *)secondaryLabel setFrame:?];
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v43 = CGRectGetWidth(v50);
  MaxY = CGRectGetMaxY(v46);
  v45 = v43;
  result.height = MaxY;
  result.width = v45;
  return result;
}

- (void)configureForContact
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_contact)
  {
    v10[0] = self->_contact;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v4 setContactType:0];
    v9 = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  [(CNAvatarView *)self->_avatarView setContacts:v3];
  secondaryLabel = self->_secondaryLabel;
  organizationName = [(CNContact *)self->_contact organizationName];
  [(UILabel *)secondaryLabel setText:organizationName];

  primaryLabel = self->_primaryLabel;
  v8 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:self->_counterpartHandle contact:self->_contact];
  [(UILabel *)primaryLabel setText:v8];

  [(PKAvatarHeaderView *)self setNeedsLayout];
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_contact, contact);
    [(PKAvatarHeaderView *)self configureForContact];
    contactCopy = v6;
  }
}

- (void)setCounterpartHandle:(id)handle
{
  handleCopy = handle;
  if (self->_counterpartHandle != handleCopy)
  {
    v6 = handleCopy;
    objc_storeStrong(&self->_counterpartHandle, handle);
    [(PKAvatarHeaderView *)self configureForContact];
    handleCopy = v6;
  }
}

@end