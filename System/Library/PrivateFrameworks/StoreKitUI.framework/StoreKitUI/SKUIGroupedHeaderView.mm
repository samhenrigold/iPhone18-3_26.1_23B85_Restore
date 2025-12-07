@interface SKUIGroupedHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIGroupedHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SKUIGroupedHeaderView

- (SKUIGroupedHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGroupedHeaderView initWithFrame:];
  }

  v25.receiver = self;
  v25.super_class = SKUIGroupedHeaderView;
  height = [(SKUIGroupedHeaderView *)&v25 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [(SKUIGroupedHeaderView *)height setBackgroundColor:v9];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = height->_titleLabel;
    height->_titleLabel = v10;

    v12 = height->_titleLabel;
    v13 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12 setFont:v13];

    v14 = height->_titleLabel;
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.43 alpha:1.0];
    [(UILabel *)v14 setTextColor:v15];

    [(SKUIGroupedHeaderView *)height addSubview:height->_titleLabel];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorder = height->_topBorder;
    height->_topBorder = v16;

    v18 = height->_topBorder;
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v18 setBackgroundColor:v19];

    [(SKUIGroupedHeaderView *)height addSubview:height->_topBorder];
    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    botBorder = height->_botBorder;
    height->_botBorder = v20;

    v22 = height->_botBorder;
    v23 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v22 setBackgroundColor:v23];

    [(SKUIGroupedHeaderView *)height addSubview:height->_botBorder];
  }

  return height;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  text = [(UILabel *)self->_titleLabel text];
  v6 = [text length];

  v7 = 35.0;
  if (v6)
  {
    v7 = width;
  }

  v8 = 56.0;
  if (!v6)
  {
    v8 = height;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SKUIGroupedHeaderView;
  [(SKUIGroupedHeaderView *)&v26 layoutSubviews];
  [(SKUIGroupedHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  MaxY = CGRectGetMaxY(v27);
  titleLabel = self->_titleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4 + 15.0, MaxY - v12 + -5.0, v8 + 30.0, v12, v4, v6, v8, v10, v15, v16);
  v17 = [(UILabel *)titleLabel setFrame:?];
  if (storeShouldReverseLayoutDirection(v17, v18))
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v19];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v22 = 1.0 / v21;

  [(UIView *)self->_topBorder setFrame:v4, v6, v8, v22];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v25 = 1.0 / v24;

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  [(UIView *)self->_botBorder setFrame:v4, CGRectGetMaxY(v28) - v25, v8, v25];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGroupedHeaderView initWithFrame:]";
}

@end