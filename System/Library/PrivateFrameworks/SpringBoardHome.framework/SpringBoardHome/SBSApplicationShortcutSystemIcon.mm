@interface SBSApplicationShortcutSystemIcon
@end

@implementation SBSApplicationShortcutSystemIcon

void __66__SBSApplicationShortcutSystemIcon_SBHAdditions__sbh_defaultImage__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCAB8];
  v4 = SBHBundle(a1);
  v2 = [v1 imageNamed:@"SBSApplicationShortcutSystemIcon_UnreadDot" inBundle:v4 compatibleWithTraitCollection:0];
  v3 = sbh_defaultImage___defaultImage;
  sbh_defaultImage___defaultImage = v2;
}

@end