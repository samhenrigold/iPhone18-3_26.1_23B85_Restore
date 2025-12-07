@interface APUISingleIconLayout
- (CGSize)size;
- (SBIconImageInfo)iconImageInfo;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation;
@end

@implementation APUISingleIconLayout

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (SBIconImageInfo)iconImageInfo
{
  width = self->_size.width;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr;
  v11 = getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr;
  if (!getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr)
  {
    v5 = SpringBoardHomeLibrary_0();
    v9[3] = dlsym(v5, "SBHDefaultIconImageContinuousCornerRadiusForIconSize");
    getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v7 = [APUIAppIconGridLayoutProvider layoutForIconLocation:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4(width);
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end