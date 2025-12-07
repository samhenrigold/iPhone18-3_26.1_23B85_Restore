@interface HUFontUtilities
+ (UIEdgeInsets)languageAwareOutsetsForString:(id)string withFont:(id)font;
+ (id)_excessiveLineHeightCharacterSet;
+ (id)fontDescriptorWithMonospacedDigitsForFontDescriptor:(id)descriptor;
+ (id)preferredFontForTextStyle:(id)style traits:(unsigned int)traits;
+ (id)staticPreferredFontForTextStyle:(id)style traits:(unsigned int)traits;
@end

@implementation HUFontUtilities

+ (id)_excessiveLineHeightCharacterSet
{
  if (qword_281122528 != -1)
  {
    dispatch_once(&qword_281122528, &__block_literal_global);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __51__HUFontUtilities__excessiveLineHeightCharacterSet__block_invoke()
{
  _MergedGlobals_4 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();

  return MEMORY[0x2821F96F8]();
}

+ (id)staticPreferredFontForTextStyle:(id)style traits:(unsigned int)traits
{
  v4 = [MEMORY[0x277D74308] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  v5 = [MEMORY[0x277D742F8] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)preferredFontForTextStyle:(id)style traits:(unsigned int)traits
{
  v4 = [MEMORY[0x277D74308] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  v5 = [MEMORY[0x277D742F8] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)fontDescriptorWithMonospacedDigitsForFontDescriptor:(id)descriptor
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277D74330];
  v3 = *MEMORY[0x277D74390];
  v11 = *MEMORY[0x277D743A0];
  v12 = v3;
  v13 = &unk_286676B40;
  v14 = &unk_286676B58;
  v4 = MEMORY[0x277CBEAC0];
  descriptorCopy = descriptor;
  v6 = [v4 dictionaryWithObjects:&v13 forKeys:&v11 count:2];
  v15 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:{1, v11, v12, v13, v14}];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [descriptorCopy fontDescriptorByAddingAttributes:v8];

  return v9;
}

+ (UIEdgeInsets)languageAwareOutsetsForString:(id)string withFont:(id)font
{
  fontCopy = font;
  v13 = *MEMORY[0x277D768C0];
  v14 = *(MEMORY[0x277D768C0] + 16);
  stringCopy = string;
  _excessiveLineHeightCharacterSet = [objc_opt_class() _excessiveLineHeightCharacterSet];
  v8 = [stringCopy rangeOfCharacterFromSet:_excessiveLineHeightCharacterSet];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CTFontGetLanguageAwareOutsets();
  }

  v10 = *(&v13 + 1);
  v9 = *&v13;
  v12 = *(&v14 + 1);
  v11 = *&v14;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

@end