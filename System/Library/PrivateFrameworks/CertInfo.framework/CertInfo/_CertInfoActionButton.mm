@interface _CertInfoActionButton
- (_CertInfoActionButton)initWithTitle:(id)title isDestructive:(BOOL)destructive;
- (void)setTitle:(id)title destructive:(BOOL)destructive;
@end

@implementation _CertInfoActionButton

- (_CertInfoActionButton)initWithTitle:(id)title isDestructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = _CertInfoActionButton;
  v7 = [(_CertInfoActionButton *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___CertInfoActionButton_initWithTitle_isDestructive___block_invoke;
    block[3] = &unk_278DB1370;
    v9 = v7;
    v15 = v9;
    if (initWithTitle_isDestructive__onceToken != -1)
    {
      dispatch_once(&initWithTitle_isDestructive__onceToken, block);
    }

    titleLabel = [(_CertInfoActionButton *)v9 titleLabel];
    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [titleLabel setFont:v11];

    [titleLabel setTextAlignment:1];
    v12 = [MEMORY[0x277D75348] colorWithRed:0.300000012 green:0.300000012 blue:0.300000012 alpha:1.0];
    [titleLabel setShadowColor:v12];

    [titleLabel setShadowOffset:{0.0, -1.0}];
    [titleLabel setClipsToBounds:0];
    [(_CertInfoActionButton *)v9 setContentEdgeInsets:4.0, 17.0, 4.0, 17.0];
    [(_CertInfoActionButton *)v9 setTitle:titleCopy destructive:destructiveCopy];
    [(_CertInfoActionButton *)v9 sizeToFit];
  }

  return v8;
}

- (void)setTitle:(id)title destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  [(_CertInfoActionButton *)self setTitle:title forState:0];
  v6 = &_removeButtonImage;
  if (destructiveCopy)
  {
    v7 = &_removeButtonPressedImage;
  }

  else
  {
    v6 = &_installButtonImage;
    v7 = &_installButtonPressedImage;
  }

  [(_CertInfoActionButton *)self setBackgroundImage:*v6 forState:0];
  v8 = *v7;

  [(_CertInfoActionButton *)self setBackgroundImage:v8 forState:1];
}

@end