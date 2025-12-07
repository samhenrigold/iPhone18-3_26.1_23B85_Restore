@interface CertInfoActionButton
@end

@implementation CertInfoActionButton

void __53___CertInfoActionButton_initWithTitle_isDestructive___block_invoke(uint64_t a1)
{
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [MEMORY[0x277D755B8] imageNamed:@"InstallButton" inBundle:v13];
  v2 = [v1 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v3 = _installButtonImage;
  _installButtonImage = v2;

  v4 = [MEMORY[0x277D755B8] imageNamed:@"InstallButtonPressed" inBundle:v13];
  v5 = [v4 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v6 = _installButtonPressedImage;
  _installButtonPressedImage = v5;

  v7 = [MEMORY[0x277D755B8] imageNamed:@"RemoveButton" inBundle:v13];
  v8 = [v7 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v9 = _removeButtonImage;
  _removeButtonImage = v8;

  v10 = [MEMORY[0x277D755B8] imageNamed:@"RemoveButtonPressed" inBundle:v13];
  v11 = [v10 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v12 = _removeButtonPressedImage;
  _removeButtonPressedImage = v11;
}

@end