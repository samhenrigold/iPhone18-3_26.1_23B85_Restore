@interface UIButton(SBUISystemApertureStyling)
- (void)sbui_updateConfiguration;
@end

@implementation UIButton(SBUISystemApertureStyling)

- (void)sbui_updateConfiguration
{
  v2 = objc_msgSend_configuration(self);
  v7 = [v2 copy];

  v3 = MEMORY[0x1E69DB878];
  traitCollection = [self traitCollection];
  v5 = [v3 sbui_systemAperturePreferredTextButtonFontCompatibleWithTraitCollection:traitCollection];

  v6 = [MEMORY[0x1E69DC740] _sbui_titleTextAttributesTransformerForTitleFont:v5];
  [v7 setTitleTextAttributesTransformer:v6];
  [self setConfiguration:v7];
}

@end