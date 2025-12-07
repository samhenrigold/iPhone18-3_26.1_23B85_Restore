@interface NTKFoghornFaceFontLoader
+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)size;
+ (id)_foghornFaceFontDescriptorWithTypographicSize:(CGSize)size weight:(double)weight stylisticSet:(unint64_t)set;
+ (id)_fontVariationAttributesForTypographicSize:(CGSize)size weight:(double)weight stylisticSet:(unint64_t)set;
- (NTKFoghornFaceFontLoader)initWithFontSize:(double)size;
- (id)_cachedFontWithTypographicSize:(CGSize)size weight:(double)weight horizontalScale:(double)scale stylisticSet:(unint64_t)set;
@end

@implementation NTKFoghornFaceFontLoader

- (NTKFoghornFaceFontLoader)initWithFontSize:(double)size
{
  v9.receiver = self;
  v9.super_class = NTKFoghornFaceFontLoader;
  v4 = [(NTKFoghornFaceFontLoader *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_fontSize = size;
    v6 = objc_opt_new();
    fontCache = v5->_fontCache;
    v5->_fontCache = v6;
  }

  return v5;
}

- (id)_cachedFontWithTypographicSize:(CGSize)size weight:(double)weight horizontalScale:(double)scale stylisticSet:(unint64_t)set
{
  height = size.height;
  width = size.width;
  fontSize = self->_fontSize;
  if (scale < 1.0)
  {
    fontSize = floor(fontSize * scale + fontSize * scale) * 0.5;
    height = floor((1.0 / scale + -1.0) * 55.0 / 0.12 + 1.0 / scale * size.height);
    width = floor(size.width + 0.0);
  }

  v12 = objc_opt_class();
  objc_msgSend__discretizedTypographicSizeForTypographicSize_(v12, v13, v14, width, height);
  v16 = v15;
  v17 = v32.height;
  *&v15 = weight;
  v18 = roundf(*&v15);
  v19 = MEMORY[0x277CCACA8];
  v32.width = v16;
  v20 = NSStringFromCGSize(v32);
  v22 = objc_msgSend_stringWithFormat_(v19, v21, @"(%.1f)-(%.1f)-(%@)-(%u)", *&fontSize, *&v18, v20, set);

  v24 = objc_msgSend_objectForKey_(self->_fontCache, v23, v22);
  if (!v24)
  {
    v25 = objc_opt_class();
    v27 = objc_msgSend__foghornFaceFontDescriptorWithTypographicSize_weight_stylisticSet_(v25, v26, set, v16, v17, weight);
    v24 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277CBBB08], v28, v27, fontSize);
    objc_msgSend_setObject_forKey_(self->_fontCache, v29, v24, v22);
  }

  return v24;
}

+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)size
{
  width = size.width;
  v4 = roundf(width);
  height = size.height;
  v6 = roundf(height);
  result.height = v6;
  result.width = v4;
  return result;
}

+ (id)_foghornFaceFontDescriptorWithTypographicSize:(CGSize)size weight:(double)weight stylisticSet:(unint64_t)set
{
  height = size.height;
  width = size.width;
  if (qword_27E1DF028 != -1)
  {
    sub_23BEE6B74();
  }

  v10 = objc_msgSend_copy(qword_27E1DF020, a2, set);
  v11 = objc_opt_new();
  v13 = objc_msgSend__fontVariationAttributesForTypographicSize_weight_stylisticSet_(self, v12, set, width, height, weight);
  objc_msgSend_setObject_forKey_(v11, v14, v13, *MEMORY[0x277CC4990]);
  v16 = objc_msgSend_fontDescriptorByAddingAttributes_(v10, v15, v11);

  return v16;
}

+ (id)_fontVariationAttributesForTypographicSize:(CGSize)size weight:(double)weight stylisticSet:(unint64_t)set
{
  width = size.width;
  height = size.height;
  v9 = objc_opt_new();
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v10, width);
  v12 = MEMORY[0x277CCABB0];
  v13 = TextToFourCharCode();
  v15 = objc_msgSend_numberWithUnsignedInt_(v12, v14, v13);
  objc_msgSend_setObject_forKey_(v9, v16, v11, v15);

  v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, height);
  v19 = MEMORY[0x277CCABB0];
  v20 = TextToFourCharCode();
  v22 = objc_msgSend_numberWithUnsignedInt_(v19, v21, v20);
  objc_msgSend_setObject_forKey_(v9, v23, v18, v22);

  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, weight);
  v27 = MEMORY[0x277CCABB0];
  v28 = TextToFourCharCode();
  v30 = objc_msgSend_numberWithUnsignedInt_(v27, v29, v28);
  objc_msgSend_setObject_forKey_(v9, v31, v26, v30);

  if (set)
  {
    v32 = MEMORY[0x277CCABB0];
    v33 = TextToFourCharCode();
    v35 = objc_msgSend_numberWithUnsignedInt_(v32, v34, v33);
    objc_msgSend_setObject_forKey_(v9, v36, MEMORY[0x277CBEC38], v35);
  }

  return v9;
}

@end