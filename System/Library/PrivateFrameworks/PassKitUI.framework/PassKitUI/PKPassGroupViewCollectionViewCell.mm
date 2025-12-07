@interface PKPassGroupViewCollectionViewCell
- (void)layoutSubviews;
- (void)setGroupView:(id)view;
@end

@implementation PKPassGroupViewCollectionViewCell

- (void)setGroupView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_groupView, view);
  groupView = self->_groupView;
  if (groupView)
  {
    superview = [(PKPassGroupView *)groupView superview];

    if (!superview)
    {
      contentView = [(PKPassGroupViewCollectionViewCell *)self contentView];
      [contentView addSubview:self->_groupView];

      [(PKPassGroupViewCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = PKPassGroupViewCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v39 layoutSubviews];
  if (self->_groupView)
  {
    contentView = [(PKPassGroupViewCollectionViewCell *)self contentView];
    superview = [(PKPassGroupView *)self->_groupView superview];
    v5 = superview;
    if (superview == contentView)
    {
      [(PKPassGroupView *)self->_groupView center];
      v7 = v6;
      v9 = v8;
      v10 = *MEMORY[0x1E695EFF8];
      v11 = *(MEMORY[0x1E695EFF8] + 8);

      if (v7 == v10 && v9 == v11)
      {
        [(PKPassGroupView *)self->_groupView bounds];
        v14 = v13;
        v16 = v15;
        [(PKPassGroupView *)self->_groupView anchorPoint];
        v18 = v17;
        v20 = v19;
        [contentView bounds];
        v22 = v21;
        v24 = v23;
        v26.n128_u64[0] = v25;
        v28 = v27;
        v29.n128_u64[0] = v14;
        v30.n128_u64[0] = v16;
        v31.n128_u64[0] = v22;
        v32.n128_u64[0] = v24;
        v33.n128_u64[0] = v26.n128_u64[0];
        v34.n128_u64[0] = v28;
        PKSizeAlignedInRect(1, v29, v30, v31, v32, v33, v34, v26);
        [(PKPassGroupView *)self->_groupView setCenter:v35 + v18 * v36, v37 + v20 * v38];
      }
    }

    else
    {
    }
  }
}

@end