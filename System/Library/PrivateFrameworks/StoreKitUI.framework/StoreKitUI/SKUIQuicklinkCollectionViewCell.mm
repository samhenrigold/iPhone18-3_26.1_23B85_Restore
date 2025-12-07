@interface SKUIQuicklinkCollectionViewCell
- (id)_linkButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_linkButtonAction:(id)action;
- (void)configureForLink:(id)link;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
@end

@implementation SKUIQuicklinkCollectionViewCell

- (void)dealloc
{
  [(UIButton *)self->_linkButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIQuicklinkCollectionViewCell;
  [(SKUIQuicklinkCollectionViewCell *)&v3 dealloc];
}

- (void)configureForLink:(id)link
{
  linkCopy = link;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIQuicklinkCollectionViewCell *)v5 configureForLink:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  title = [linkCopy title];
  if ([title length])
  {
    _linkButton = [(SKUIQuicklinkCollectionViewCell *)self _linkButton];
    [_linkButton setHidden:0];
    title2 = [linkCopy title];
    [_linkButton setTitle:title2 forState:0];

    [(SKUIQuicklinkCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    [(UIButton *)self->_linkButton setHidden:1];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIQuicklinkCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  secondaryTextColor = [schemeCopy secondaryTextColor];
  if (!secondaryTextColor)
  {
    secondaryTextColor = objc_msgSend_primaryTextColor(schemeCopy);
  }

  _linkButton = [(SKUIQuicklinkCollectionViewCell *)self _linkButton];
  [_linkButton setTintColor:secondaryTextColor];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SKUIQuicklinkCollectionViewCell;
  v5 = [(SKUIQuicklinkCollectionViewCell *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self->_linkButton;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIQuicklinkCollectionViewCell layoutSubviews]";
}

- (void)_linkButtonAction:(id)action
{
  v6 = SKUICollectionViewForView(self);
  delegate = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 indexPathForCell:self];
    [delegate collectionView:v6 didSelectItemAtIndexPath:v5];
  }
}

- (id)_linkButton
{
  linkButton = self->_linkButton;
  if (!linkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_linkButton;
    self->_linkButton = v4;

    [(UIButton *)self->_linkButton addTarget:self action:sel__linkButtonAction_ forControlEvents:64];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v7];

    contentView = [(SKUIQuicklinkCollectionViewCell *)self contentView];
    [contentView addSubview:self->_linkButton];

    linkButton = self->_linkButton;
  }

  return linkButton;
}

- (void)configureForLink:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIQuicklinkCollectionViewCell configureForLink:]";
}

- (void)setColoringWithColorScheme:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIQuicklinkCollectionViewCell setColoringWithColorScheme:]";
}

@end