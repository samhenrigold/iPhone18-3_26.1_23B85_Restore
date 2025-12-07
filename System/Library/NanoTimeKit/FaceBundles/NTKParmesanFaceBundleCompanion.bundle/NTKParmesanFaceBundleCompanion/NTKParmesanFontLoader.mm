@interface NTKParmesanFontLoader
+ (id)_fontVariationAttributesFromDictionary:(id)dictionary;
+ (id)newYorkFontDescriptorWithAttributes:(id)attributes;
+ (id)newYorkSoftFontDescriptorWithAttributes:(id)attributes;
+ (id)softFontDescriptorWithAttributes:(id)attributes;
+ (id)tokyoFontDescriptorWithAttributes:(id)attributes;
@end

@implementation NTKParmesanFontLoader

+ (id)softFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3120;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF82F0();
  }

  v7 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy);

  v9 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v8, v7, *MEMORY[0x277CC4990]);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3118, v10, v9);

  return v11;
}

+ (id)newYorkFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3130;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF8304();
  }

  v7 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy);

  v9 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v8, v7, *MEMORY[0x277CC4990]);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3128, v10, v9);

  return v11;
}

+ (id)newYorkSoftFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3140;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF8318();
  }

  v7 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy);

  v9 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v8, v7, *MEMORY[0x277CC4990]);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3138, v10, v9);

  return v11;
}

+ (id)tokyoFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3150[0];
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF832C();
  }

  v7 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy);

  v9 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v8, v7, *MEMORY[0x277CC4990]);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3148, v10, v9);

  return v11;
}

+ (id)_fontVariationAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_23BF32EC0;
  v12 = sub_23BF32ED0;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF32ED8;
  v7[3] = &unk_278BA7430;
  v7[4] = &v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dictionaryCopy, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end