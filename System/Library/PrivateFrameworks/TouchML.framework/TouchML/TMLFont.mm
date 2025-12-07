@interface TMLFont
+ (void)initializeJSContext:(id)context;
- (NSString)familyName;
- (NSString)fontName;
- (TMLFont)initWithFont:(id)font;
- (TMLFont)initWithFontDescriptor:(id)descriptor;
- (double)ascender;
- (double)capHeight;
- (double)descender;
- (double)leading;
- (double)lineHeight;
- (double)pointSize;
- (double)xHeight;
- (id)UIFontValue;
- (id)bold;
- (id)copyWithZone:(_NSZone *)zone;
- (id)italic;
- (id)withAXRestrictedStyle:(id)style;
- (id)withAttributes:(id)attributes;
- (id)withFamily:(id)family;
- (id)withScale:(double)scale;
- (id)withScaleTransform:(double)transform;
- (id)withSize:(double)size;
- (id)withStyle:(id)style;
- (id)withSymbolicTraits:(unsigned int)traits;
- (id)withWeight:(double)weight;
- (id)withWidth:(double)width;
@end

@implementation TMLFont

- (TMLFont)initWithFont:(id)font
{
  fontCopy = font;
  fontDescriptor = [fontCopy fontDescriptor];
  v7 = [(TMLFont *)self initWithFontDescriptor:fontDescriptor];

  if (v7)
  {
    objc_storeStrong(&v7->_font, font);
  }

  return v7;
}

- (TMLFont)initWithFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = TMLFont;
  v6 = [(TMLFont *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontDescriptor, descriptor);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  fontDescriptor = self->_fontDescriptor;

  return [v4 initWithFontDescriptor:fontDescriptor];
}

- (id)UIFontValue
{
  font = self->_font;
  if (!font)
  {
    v4 = MEMORY[0x277D74300];
    fontDescriptor = self->_fontDescriptor;
    [(UIFontDescriptor *)fontDescriptor pointSize];
    v6 = [v4 fontWithDescriptor:fontDescriptor size:?];
    v7 = self->_font;
    self->_font = v6;

    font = self->_font;
  }

  return font;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1D5900;
  v11[3] = &unk_279DC8600;
  v11[4] = self;
  v5 = MEMORY[0x27438BB60](v11);
  [contextCopy setObject:v5 forKeyedSubscript:@"font"];

  [contextCopy setObject:&unk_287F2D1A0 forKeyedSubscript:@"includeFont"];
  if (qword_2806D9320 != -1)
  {
    sub_26F201744();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F1D5C50;
  v10[3] = &unk_279DC8640;
  v10[4] = self;
  v6 = MEMORY[0x27438BB60](v10);
  v7 = [contextCopy objectForKeyedSubscript:@"font"];
  [v7 setObject:v6 forKeyedSubscript:@"style"];

  v8 = [contextCopy objectForKeyedSubscript:@"font"];
  [v8 setObject:&unk_287F2D1E0 forKeyedSubscript:@"scaledValueForTextStyle"];

  v9 = [contextCopy objectForKeyedSubscript:@"font"];
  [v9 setObject:&unk_287F2D200 forKeyedSubscript:@"scaledValueForValue"];
}

- (id)bold
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorWithSymbolicTraits:[(UIFontDescriptor *)self->_fontDescriptor symbolicTraits]| 2];
  v5 = [v3 initWithFontDescriptor:v4];

  return v5;
}

- (id)italic
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorWithSymbolicTraits:[(UIFontDescriptor *)self->_fontDescriptor symbolicTraits]| 1];
  v5 = [v3 initWithFontDescriptor:v4];

  return v5;
}

- (id)withSize:(double)size
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorWithSize:size];
  v7 = [v5 initWithFontDescriptor:v6];

  return v7;
}

- (id)withFamily:(id)family
{
  familyCopy = family;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorWithFamily:familyCopy];

  v7 = [v5 initWithFontDescriptor:v6];

  return v7;
}

- (id)withWeight:(double)weight
{
  v16[1] = *MEMORY[0x277D85DE8];
  fontDescriptor = self->_fontDescriptor;
  v15 = *MEMORY[0x277D74380];
  v13 = *MEMORY[0x277D74430];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v14 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [(UIFontDescriptor *)fontDescriptor fontDescriptorByAddingAttributes:v7];

  v9 = objc_alloc(objc_opt_class());
  v10 = v8;
  if (!v8)
  {
    v10 = self->_fontDescriptor;
  }

  v11 = [v9 initWithFontDescriptor:v10];

  return v11;
}

- (id)withWidth:(double)width
{
  v16[1] = *MEMORY[0x277D85DE8];
  fontDescriptor = self->_fontDescriptor;
  v15 = *MEMORY[0x277D74380];
  v13 = *MEMORY[0x277D74460];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v14 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [(UIFontDescriptor *)fontDescriptor fontDescriptorByAddingAttributes:v7];

  v9 = objc_alloc(objc_opt_class());
  v10 = v8;
  if (!v8)
  {
    v10 = self->_fontDescriptor;
  }

  v11 = [v9 initWithFontDescriptor:v10];

  return v11;
}

- (id)withSymbolicTraits:(unsigned int)traits
{
  traits = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorWithSymbolicTraits:[(UIFontDescriptor *)self->_fontDescriptor symbolicTraits]| traits];
  v5 = objc_alloc(objc_opt_class());
  fontDescriptor = traits;
  if (!traits)
  {
    fontDescriptor = self->_fontDescriptor;
  }

  v7 = [v5 initWithFontDescriptor:fontDescriptor];

  return v7;
}

- (id)withAttributes:(id)attributes
{
  v4 = [(UIFontDescriptor *)self->_fontDescriptor fontDescriptorByAddingAttributes:attributes];
  v5 = objc_alloc(objc_opt_class());
  fontDescriptor = v4;
  if (!v4)
  {
    fontDescriptor = self->_fontDescriptor;
  }

  v7 = [v5 initWithFontDescriptor:fontDescriptor];

  return v7;
}

- (id)withStyle:(id)style
{
  v4 = MEMORY[0x277D75520];
  styleCopy = style;
  v6 = [v4 metricsForTextStyle:styleCopy];
  uIFontValue = [(TMLFont *)self UIFontValue];
  v8 = MEMORY[0x277D74310];
  v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
  v10 = [v8 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v9];

  [v10 pointSize];
  v11 = [uIFontValue fontWithSize:?];

  v12 = [TMLFont alloc];
  v13 = [v6 scaledFontForFont:v11];
  v14 = [(TMLFont *)v12 initWithFont:v13];

  return v14;
}

- (id)withAXRestrictedStyle:(id)style
{
  v4 = MEMORY[0x277D75520];
  styleCopy = style;
  v6 = [[v4 alloc] initForTextStyle:styleCopy];
  v7 = MEMORY[0x277D74310];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
  v9 = [v7 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v8];

  v10 = MEMORY[0x277D74310];
  v11 = *MEMORY[0x277D76818];
  v12 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76818]];
  v13 = [v10 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v12];

  [(TMLFont *)self pointSize];
  v15 = v14;
  [v9 pointSize];
  if (v15 == v16)
  {
    uIFontValue = [(TMLFont *)self UIFontValue];
    goto LABEL_5;
  }

  [(TMLFont *)self pointSize];
  v18 = v17;
  uIFontValue2 = [(TMLFont *)self UIFontValue];
  if (v18 == 0.0)
  {
    [v9 pointSize];
    uIFontValue = [uIFontValue2 fontWithSize:?];

LABEL_5:
    [v13 pointSize];
    v21 = [v6 scaledFontForFont:uIFontValue maximumPointSize:?];
    goto LABEL_7;
  }

  v22 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v11];
  uIFontValue = [v6 scaledFontForFont:uIFontValue2 compatibleWithTraitCollection:v22];

  uIFontValue3 = [(TMLFont *)self UIFontValue];
  [uIFontValue pointSize];
  v21 = [v6 scaledFontForFont:uIFontValue3 maximumPointSize:?];

LABEL_7:
  v24 = [[TMLFont alloc] initWithFont:v21];

  return v24;
}

- (id)withScale:(double)scale
{
  v5 = objc_alloc(objc_opt_class());
  fontDescriptor = self->_fontDescriptor;
  [(UIFontDescriptor *)fontDescriptor pointSize];
  scale = [(UIFontDescriptor *)fontDescriptor fontDescriptorWithSize:v7 * scale];
  v9 = [v5 initWithFontDescriptor:scale];

  return v9;
}

- (id)withScaleTransform:(double)transform
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, transform, transform);
  v4 = objc_alloc(objc_opt_class());
  fontDescriptor = self->_fontDescriptor;
  v9 = v10;
  v6 = [(UIFontDescriptor *)fontDescriptor fontDescriptorWithMatrix:&v9];
  v7 = [v4 initWithFontDescriptor:v6];

  return v7;
}

- (NSString)familyName
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  familyName = [uIFontValue familyName];

  return familyName;
}

- (NSString)fontName
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  familyName = [uIFontValue familyName];

  return familyName;
}

- (double)pointSize
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue pointSize];
  v4 = v3;

  return v4;
}

- (double)ascender
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue ascender];
  v4 = v3;

  return v4;
}

- (double)descender
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue descender];
  v4 = v3;

  return v4;
}

- (double)capHeight
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue capHeight];
  v4 = v3;

  return v4;
}

- (double)xHeight
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue xHeight];
  v4 = v3;

  return v4;
}

- (double)lineHeight
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue lineHeight];
  v4 = v3;

  return v4;
}

- (double)leading
{
  uIFontValue = [(TMLFont *)self UIFontValue];
  [uIFontValue leading];
  v4 = v3;

  return v4;
}

@end