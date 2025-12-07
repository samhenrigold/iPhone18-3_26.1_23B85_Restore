@interface CLKSimpleTextProvider
+ (CLKSimpleTextProvider)textProviderWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel;
+ (id)finalizedTextProviderWithText:(id)text monospaceNumbers:(BOOL)numbers;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CLKSimpleTextProvider)initWithCoder:(id)coder;
- (CLKSimpleTextProvider)initWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel;
- (id)JSONObjectRepresentation;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)attributedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKSimpleTextProvider

- (CLKSimpleTextProvider)initWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel
{
  v8 = text;
  v9 = shortText;
  v10 = accessibilityLabel;
  v14.receiver = self;
  v14.super_class = CLKSimpleTextProvider;
  initPrivate = [(CLKTextProvider *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKSimpleTextProvider *)initPrivate setText:v8];
    [(CLKSimpleTextProvider *)v12 setShortText:v9];
    [(CLKTextProvider *)v12 setAccessibilityLabel:v10];
  }

  return v12;
}

+ (CLKSimpleTextProvider)textProviderWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel
{
  v8 = accessibilityLabel;
  v9 = shortText;
  v10 = text;
  v11 = [[self alloc] initWithText:v10 shortText:v9 accessibilityLabel:v8];

  return v11;
}

+ (id)finalizedTextProviderWithText:(id)text monospaceNumbers:(BOOL)numbers
{
  v4 = [self textProviderWithText:{text, numbers}];
  [v4 finalize];

  return v4;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  v84[2] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  if (index)
  {
    if (index != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___CLKSimpleTextProvider__shortText;
  }

  else
  {
    v7 = &OBJC_IVAR___CLKSimpleTextProvider__text;
  }

  v8 = *(&self->super.super.isa + *v7);
LABEL_7:
  v9 = v8;
  uppercase = [styleCopy uppercase];
  if (uppercase && (uppercase = [(CLKTextProvider *)self ignoreUppercaseStyle], (uppercase & 1) == 0))
  {
    uppercase = [(CLKSimpleTextProvider *)self useLowercaseSmallCaps];
    v12 = uppercase ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_useAllSmallCaps && (uppercase = CLKSmallCapsAllowed(uppercase, v11), uppercase) && !self->_useNoContentDashFormatting;
  v14 = self->_useLowercaseSmallCaps && CLKSmallCapsAllowed(uppercase, v11) && !self->_useNoContentDashFormatting;
  if ((v12 | v13))
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [v9 uppercaseStringWithLocale:currentLocale];

    v9 = v16;
  }

  if (!v9)
  {
    v21 = 0;
    goto LABEL_51;
  }

  font = [styleCopy font];
  v18 = font;
  if (v13)
  {
    smallCapsBaseFont = [styleCopy smallCapsBaseFont];
    cLKFontWithLocalizedSmallCaps = [smallCapsBaseFont CLKFontWithLocalizedSmallCaps];
  }

  else
  {
    if (!v14)
    {
      v29 = 0;
      v22 = font;
      goto LABEL_38;
    }

    smallCapsBaseFont = [styleCopy smallCapsBaseFont];
    cLKFontWithLocalizedSmallCaps = [smallCapsBaseFont CLKFontWithLocalizedLowerCaseSmallCaps];
  }

  v22 = cLKFontWithLocalizedSmallCaps;

  if (CLKUsesFauxSmallCaps(v23, v24))
  {
    smallCapsBaseFont2 = [styleCopy smallCapsBaseFont];
    font2 = [styleCopy font];
    v27 = [smallCapsBaseFont2 isEqual:font2];

    if (v27)
    {
      [v22 pointSize];
      [v22 fontWithSize:v28 + -2.5];
    }

    else
    {
      [styleCopy smallCapsBaseFont];
    }
    v30 = ;
    v31 = *MEMORY[0x277D740A8];
    v84[0] = v30;
    v32 = *MEMORY[0x277CC4830];
    v83[0] = v31;
    v83[1] = v32;
    v81 = *MEMORY[0x277CC4828];
    v82 = v30;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v84[1] = v33;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v84;
    v36 = v83;
    goto LABEL_36;
  }

  if (!v13 && !v14)
  {
    v29 = 0;
    goto LABEL_38;
  }

  if (CTFontGetSymbolicTraits(v22))
  {
    [v22 pointSize];
    v30 = [v22 fontWithSize:v68 * 0.75];
    v69 = *MEMORY[0x277D740A8];
    v80[0] = v30;
    v70 = *MEMORY[0x277CC4830];
    v79[0] = v69;
    v79[1] = v70;
    v77 = *MEMORY[0x277CC4828];
    v78 = v30;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v80[1] = v33;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v80;
    v36 = v79;
LABEL_36:
    v29 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:2];

    goto LABEL_38;
  }

  v75 = *MEMORY[0x277D740A8];
  v76 = v22;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
LABEL_38:
  fontFeatures = [(CLKTextProvider *)self fontFeatures];

  if (fontFeatures)
  {
    fontFeatures2 = [(CLKTextProvider *)self fontFeatures];
    v39 = [v22 CLKFontByApplyingFeatureSettings:fontFeatures2];

    if (v29)
    {
      v40 = [v29 mutableCopy];
      v41 = *MEMORY[0x277D740A8];
      v42 = [v40 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      fontFeatures3 = [(CLKTextProvider *)self fontFeatures];
      [v42 CLKFontByApplyingFeatureSettings:fontFeatures3];
      v44 = styleCopy;
      v46 = v45 = v9;
      [v40 setObject:v46 forKeyedSubscript:v41];

      v9 = v45;
      styleCopy = v44;

      v29 = v40;
    }
  }

  else
  {
    v39 = v22;
  }

  if (self->_useNoContentDashFormatting)
  {
    fontDescriptor = [v39 fontDescriptor];
    v47 = _AlternatePunctuationAttributes(fontDescriptor);
    v71 = [fontDescriptor fontDescriptorByAddingAttributes:v47];

    v48 = [MEMORY[0x277D74300] fontWithDescriptor:v71 size:0.0];
    v49 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
    v50 = styleCopy;
    v51 = v9;
    v52 = [v9 length];
    v53 = 305.0 / CTFontGetUnitsPerEm(v39);
    [v39 pointSize];
    v55 = v29;
    v56 = v39;
    v57 = *MEMORY[0x277D740D0];
    v58 = [MEMORY[0x277CCABB0] numberWithDouble:v54 * v53];
    v59 = v57;
    v39 = v56;
    v29 = v55;
    [v49 addAttribute:v59 value:v58 range:{0, v52}];

    v60 = v52;
    v9 = v51;
    styleCopy = v50;
    [v49 addAttribute:*MEMORY[0x277D740A8] value:v48 range:{0, v60}];
  }

  else
  {
    v61 = objc_alloc(MEMORY[0x277CCA898]);
    v62 = v61;
    if (v29)
    {
      v49 = [v61 initWithString:v9 attributes:v29];
    }

    else
    {
      v73 = *MEMORY[0x277D740A8];
      v74 = v39;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v49 = [v62 initWithString:v9 attributes:v63];
    }
  }

  v21 = [v49 _attributedStringWithOtherAttributesFromStyle:{styleCopy, v71}];

  if ([styleCopy shouldEmbedTintColors])
  {
    tintColor = [(CLKTextProvider *)self tintColor];

    if (tintColor)
    {
      tintColor2 = [(CLKTextProvider *)self tintColor];
      v66 = [v21 _attributedStringWithForegroundColor:tintColor2];

      v21 = v66;
    }
  }

LABEL_51:

  return v21;
}

- (BOOL)_validate
{
  text = self->_text;
  if (!text)
  {
    v4 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CLKSimpleTextProvider *)self _validate];
    }
  }

  return text != 0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKSimpleTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKSimpleTextProvider;
  v4 = [(CLKTextProvider *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_text, self->_text);
    objc_storeStrong(&v5->_shortText, self->_shortText);
    v5->_useNoContentDashFormatting = self->_useNoContentDashFormatting;
    v5->_useAllSmallCaps = self->_useAllSmallCaps;
    v5->_useLowercaseSmallCaps = self->_useLowercaseSmallCaps;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_text, equalCopy[17]) && CLKEqualObjects(self->_shortText, equalCopy[18]) && self->_useNoContentDashFormatting == *(equalCopy + 128) && self->_useAllSmallCaps == *(equalCopy + 129) && self->_useLowercaseSmallCaps == *(equalCopy + 130);

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKSimpleTextProvider;
  v3 = [(CLKTextProvider *)&v6 hash];
  v4 = v3 + [(NSString *)self->_text hash];
  return v4 + 4 * [(NSString *)self->_shortText hash]+ 32 * self->_useNoContentDashFormatting + (self->_useAllSmallCaps << 6) + (self->_useLowercaseSmallCaps << 7);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKSimpleTextProvider;
  coderCopy = coder;
  [(CLKTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"_text", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_shortText forKey:@"_shortText"];
  [coderCopy encodeBool:self->_useNoContentDashFormatting forKey:@"useNoContentDashFormatting"];
  [coderCopy encodeBool:self->_useAllSmallCaps forKey:@"useAllSmallCaps"];
  [coderCopy encodeBool:self->_useLowercaseSmallCaps forKey:@"useLowercaseSmallCaps"];
}

- (CLKSimpleTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shortText"];
    shortText = v5->_shortText;
    v5->_shortText = v8;

    v5->_useNoContentDashFormatting = [coderCopy decodeBoolForKey:@"useNoContentDashFormatting"];
    v5->_useAllSmallCaps = [coderCopy decodeBoolForKey:@"useAllSmallCaps"];
    v5->_useLowercaseSmallCaps = [coderCopy decodeBoolForKey:@"useLowercaseSmallCaps"];
  }

  return v5;
}

- (id)attributedString
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = v3;
  if (self->_text)
  {
    v5 = [v3 initWithString:?];
  }

  else
  {
    v6 = CLKLocalizedString(@"EMPTY_TEXT_DASHES");
    v5 = [v4 initWithString:v6];
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v10 _initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"text", v6}];
    }

    objc_storeStrong(v5 + 17, v6);
    v7 = [representationCopy objectForKeyedSubscript:@"shortText"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"shortText", v7}];
      }

      objc_storeStrong(v5 + 18, v7);
    }

    v8 = [representationCopy objectForKeyedSubscript:@"smallCaps"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"smallCaps", v7}];
      }

      *(v5 + 130) = [v8 BOOLValue];
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v5.receiver = self;
  v5.super_class = CLKSimpleTextProvider;
  jSONObjectRepresentation = [(CLKTextProvider *)&v5 JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:self->_text forKeyedSubscript:@"text"];
  [jSONObjectRepresentation setObject:self->_shortText forKeyedSubscript:@"shortText"];
  if (self->_useLowercaseSmallCaps)
  {
    [jSONObjectRepresentation setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"smallCaps"];
  }

  return jSONObjectRepresentation;
}

- (void)_validate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = v3;
  v6 = 138412802;
  v7 = @"text";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = objc_opt_class();
  v5 = v11;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", &v6, 0x20u);
}

@end