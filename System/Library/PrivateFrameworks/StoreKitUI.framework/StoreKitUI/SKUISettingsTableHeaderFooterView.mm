@interface SKUISettingsTableHeaderFooterView
- (void)displaySettingsHeaderFooterDescriptionView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SKUISettingsTableHeaderFooterView

- (void)displaySettingsHeaderFooterDescriptionView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISettingsTableHeaderFooterView *)v5 displaySettingsHeaderFooterDescriptionView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  settingsHeaderFooterDescriptionView = self->_settingsHeaderFooterDescriptionView;
  self->_settingsHeaderFooterDescriptionView = viewCopy;
  v14 = viewCopy;

  contentView = [(SKUISettingsTableHeaderFooterView *)self contentView];
  [contentView addSubview:self->_settingsHeaderFooterDescriptionView];

  [(SKUISettingsTableHeaderFooterView *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISettingsTableHeaderFooterView prepareForReuse]";
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISettingsTableHeaderFooterView layoutSubviews]";
}

- (void)displaySettingsHeaderFooterDescriptionView:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISettingsTableHeaderFooterView displaySettingsHeaderFooterDescriptionView:]";
}

@end