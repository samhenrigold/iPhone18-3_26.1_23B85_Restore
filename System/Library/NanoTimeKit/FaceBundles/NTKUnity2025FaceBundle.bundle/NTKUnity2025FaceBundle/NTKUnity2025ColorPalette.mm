@interface NTKUnity2025ColorPalette
- (id)swatchImageForSize:(CGSize)size;
@end

@implementation NTKUnity2025ColorPalette

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (qword_27E1EE118 != -1)
  {
    sub_23C09FAC8();
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_configuration(self, a2, v3);
  v11 = objc_msgSend_uniqueId(v8, v9, v10);
  v32.width = width;
  v32.height = height;
  v12 = NSStringFromCGSize(v32);
  v14 = objc_msgSend_stringWithFormat_(v7, v13, @"%@-%@", v11, v12);

  v18 = objc_msgSend_objectForKey_(qword_27E1EE110, v15, v14);
  if (!v18)
  {
    v19 = objc_msgSend_configuration(self, v16, v17);
    v22 = objc_msgSend_colorOption(v19, v20, v21);
    v23 = NTKUnity2025SettingIndexFromColorwayName(v22);

    v24 = MEMORY[0x277CCA8D8];
    v25 = objc_opt_class();
    v27 = objc_msgSend_bundleForClass_(v24, v26, v25);
    if (!v27 || (NTKImageNamedFromBundle(), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v29 = generateColorArray(v23);
      v18 = NTKSwatchColorStripesImage();
    }

    objc_msgSend_setObject_forKey_(qword_27E1EE110, v28, v18, v14);
  }

  return v18;
}

@end