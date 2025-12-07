@interface PKAvatarTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAvatarTableViewCell)initWithContact:(id)contact delegate:(id)delegate style:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
@end

@implementation PKAvatarTableViewCell

- (PKAvatarTableViewCell)initWithContact:(id)contact delegate:(id)delegate style:(int64_t)style reuseIdentifier:(id)identifier
{
  contactCopy = contact;
  v10 = [(PKAvatarTableViewCell *)self initWithStyle:style reuseIdentifier:identifier];
  if (v10)
  {
    v11 = objc_alloc_init(getCNAvatarViewClass_3());
    avatarView = v10->_avatarView;
    v10->_avatarView = v11;

    contentView = [(PKAvatarTableViewCell *)v10 contentView];
    [contentView addSubview:v10->_avatarView];

    [(PKAvatarTableViewCell *)v10 setContact:contactCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKAvatarTableViewCell;
  [(PKAvatarTableViewCell *)&v25 layoutSubviews];
  if ([(PKAvatarTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v3 = CGRectMaxXEdge;
  }

  else
  {
    v3 = CGRectMinXEdge;
  }

  contentView = [(PKAvatarTableViewCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v26.origin.x = v6 + v13;
  v26.size.width = v10 - (v13 + v14);
  v26.size.height = v12 + -16.0;
  remainder.origin.x = v6 + v13;
  remainder.origin.y = v8 + 8.0;
  remainder.size.width = v26.size.width;
  remainder.size.height = v12 + -16.0;
  memset(&v23, 0, sizeof(v23));
  v26.origin.y = v8 + 8.0;
  CGRectDivide(v26, &v23, &remainder, 45.0, v3);
  avatarView = self->_avatarView;
  v17.n128_u64[0] = *&v23.origin.y;
  v16.n128_u64[0] = *&v23.origin.x;
  v19.n128_u64[0] = *&v23.size.height;
  v18.n128_u64[0] = *&v23.size.width;
  v20.n128_u64[0] = 0x4046800000000000;
  v21.n128_u64[0] = 0x4046800000000000;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v20, v21, v16, v17, v18, v19, v22);
  [(CNAvatarView *)avatarView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = PKAvatarTableViewCell;
  [(PKAvatarTableViewCell *)&v5 sizeThatFits:fits.width, fits.height];
  if (v4 < 61.0)
  {
    v4 = 61.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    [(CNAvatarView *)self->_avatarView setContact:contactCopy];
    objc_storeStrong(&self->_contact, contact);
    contactCopy = v6;
  }
}

@end