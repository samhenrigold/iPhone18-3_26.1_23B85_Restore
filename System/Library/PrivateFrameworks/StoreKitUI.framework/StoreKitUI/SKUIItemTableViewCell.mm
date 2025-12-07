@interface SKUIItemTableViewCell
- (void)configureForItem:(id)item rowIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setCellLayoutNeedsLayout;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SKUIItemTableViewCell

- (void)configureForItem:(id)item rowIndex:(int64_t)index
{
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 configureForItem:v8 rowIndex:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  [(SKUIItemTableViewCell *)self configureForItem:itemCopy clientContext:0 rowIndex:index];
}

- (void)setCellLayoutNeedsLayout
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell setCellLayoutNeedsLayout]";
}

- (void)prepareForReuse
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell prepareForReuse]";
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 setHighlighted:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setHighlighted:highlightedCopy];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIItemTableViewCell *)v7 setSelected:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setSelected:selectedCopy];

  v16.receiver = self;
  v16.super_class = SKUIItemTableViewCell;
  [(SKUITableViewCell *)&v16 setSelected:selectedCopy animated:animatedCopy];
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell layoutSubviews]";
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemTableViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  layout = [(SKUIItemTableViewCell *)self layout];
  [layout setBackgroundColor:colorCopy];

  v14.receiver = self;
  v14.super_class = SKUIItemTableViewCell;
  [(SKUIItemTableViewCell *)&v14 setBackgroundColor:colorCopy];
}

- (void)configureForItem:(uint64_t)a3 rowIndex:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell configureForItem:rowIndex:]";
}

- (void)setHighlighted:(uint64_t)a3 animated:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell setHighlighted:animated:]";
}

- (void)setSelected:(uint64_t)a3 animated:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell setSelected:animated:]";
}

- (void)setBackgroundColor:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIItemTableViewCell setBackgroundColor:]";
}

@end