@interface UITableViewCell
@end

@implementation UITableViewCell

void __74__UITableViewCell_HUCheckmarkAdditions__hu_emptyCheckmarkPlaceholderImage__block_invoke()
{
  v3 = [MEMORY[0x277D755B8] hu_cellCheckmarkImage];
  v0 = [MEMORY[0x277D75348] clearColor];
  v1 = [v3 imageWithTintColor:v0 renderingMode:1];
  v2 = _MergedGlobals_1_4;
  _MergedGlobals_1_4 = v1;
}

IMP __59__UITableViewCell_HUAdditions__hu_setForcedSeparatorStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel_setSeparatorStyle_);
  off_2811221E8 = method_getImplementation(InstanceMethod);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UITableViewCell_HUAdditions__hu_setForcedSeparatorStyle___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e11_v24__0_8q16l;
  aBlock[4] = sel_setSeparatorStyle_;
  v4 = _Block_copy(aBlock);
  v5 = imp_implementationWithBlock(v4);

  return method_setImplementation(InstanceMethod, v5);
}

void __59__UITableViewCell_HUAdditions__hu_setForcedSeparatorStyle___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = objc_getAssociatedObject(v6, &_MergedGlobals_638);
  if (!v5)
  {
    off_2811221E8(v6, *(a1 + 32), a3);
  }
}

@end