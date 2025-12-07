@interface TMLAttributedString_Attributes
- (BOOL)accessibilitySpeechPunctuation;
- (NSNumber)accessibilitySpeechPitch;
- (NSNumber)accessibilitySpeechQueueAnnouncement;
- (NSNumber)accessibilityTextHeadingLevel;
- (NSNumber)kern;
- (NSString)accessibilitySpeechIPANotation;
- (TMLAttributedString_Attributes)initWithDictionary:(id)dictionary;
- (_NSRange)range;
- (double)baselineOffset;
- (double)expansion;
- (double)obliqueness;
- (double)strokeWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)ligature;
- (int64_t)strikethroughStyle;
- (int64_t)superscript;
- (int64_t)underlineStyle;
- (int64_t)verticalGlyphForm;
- (void)setAccessibilitySpeechIPANotation:(id)notation;
- (void)setAccessibilitySpeechPitch:(id)pitch;
- (void)setAccessibilitySpeechPunctuation:(BOOL)punctuation;
- (void)setAccessibilitySpeechQueueAnnouncement:(id)announcement;
- (void)setAccessibilityTextHeadingLevel:(id)level;
- (void)setAttribute:(id)attribute value:(id)value;
- (void)setBaselineOffset:(double)offset;
- (void)setExpansion:(double)expansion;
- (void)setKern:(id)kern;
- (void)setLigature:(int64_t)ligature;
- (void)setObliqueness:(double)obliqueness;
- (void)setStrikethroughStyle:(int64_t)style;
- (void)setStrokeWidth:(double)width;
- (void)setSuperscript:(int64_t)superscript;
- (void)setUnderlineStyle:(int64_t)style;
- (void)setVerticalGlyphForm:(int64_t)form;
- (void)tmlObjectCompleted;
@end

@implementation TMLAttributedString_Attributes

- (TMLAttributedString_Attributes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = TMLAttributedString_Attributes;
  v5 = [(TMLAttributedString_Attributes *)&v9 init];
  if (v5)
  {
    if (dictionaryCopy)
    {
      v6 = [dictionaryCopy mutableCopy];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    }

    attributes = v5->_attributes;
    v5->_attributes = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return MEMORY[0x2821F9670](v3, sel_initWithDictionary_);
}

- (void)tmlObjectCompleted
{
  self->_created = 1;
  tmlParent = [self tmlParent];
  [tmlParent addAttributes:self->_attributes range:{self->_range.location, self->_range.length}];
}

- (void)setAttribute:(id)attribute value:(id)value
{
  attributeCopy = attribute;
  valueCopy = value;
  [(NSMutableDictionary *)self->_attributes setObject:valueCopy forKeyedSubscript:attributeCopy];
  if (self->_created)
  {
    tmlParent = [self tmlParent];
    [tmlParent addAttribute:attributeCopy value:valueCopy range:{self->_range.location, self->_range.length}];
  }
}

- (int64_t)ligature
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D740D8]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setLigature:(int64_t)ligature
{
  v4 = *MEMORY[0x277D740D8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:ligature];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (NSNumber)kern
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D740D0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setKern:(id)kern
{
  v4 = *MEMORY[0x277D740D0];
  if (kern)
  {
    v6 = *MEMORY[0x277D740D0];

    [(TMLAttributedString_Attributes *)self setAttribute:v6 value:kern];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(TMLAttributedString_Attributes *)self setAttribute:v4 value:null];
  }
}

- (int64_t)strikethroughStyle
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D74150]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setStrikethroughStyle:(int64_t)style
{
  v4 = *MEMORY[0x277D74150];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (int64_t)underlineStyle
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D741F0]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setUnderlineStyle:(int64_t)style
{
  v4 = *MEMORY[0x277D741F0];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (double)strokeWidth
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D74160]];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setStrokeWidth:(double)width
{
  v4 = *MEMORY[0x277D74160];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (double)obliqueness
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D740F0]];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setObliqueness:(double)obliqueness
{
  v4 = *MEMORY[0x277D740F0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:obliqueness];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (double)expansion
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D740A0]];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setExpansion:(double)expansion
{
  v4 = *MEMORY[0x277D740A0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:expansion];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (double)baselineOffset
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D74078]];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setBaselineOffset:(double)offset
{
  v4 = *MEMORY[0x277D74078];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:offset];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (int64_t)superscript
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277CC4A18]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSuperscript:(int64_t)superscript
{
  v4 = *MEMORY[0x277CC4A18];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:superscript];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (int64_t)verticalGlyphForm
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D741F8]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setVerticalGlyphForm:(int64_t)form
{
  v4 = *MEMORY[0x277D741F8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:form];
  [(TMLAttributedString_Attributes *)self setAttribute:v4 value:v5];
}

- (NSNumber)accessibilitySpeechPitch
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D76500]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setAccessibilitySpeechPitch:(id)pitch
{
  v4 = *MEMORY[0x277D76500];
  if (pitch)
  {
    v6 = *MEMORY[0x277D76500];

    [(TMLAttributedString_Attributes *)self setAXAttribute:v6 value:pitch];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(TMLAttributedString_Attributes *)self setAXAttribute:v4 value:null];
  }
}

- (BOOL)accessibilitySpeechPunctuation
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D76508]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAccessibilitySpeechPunctuation:(BOOL)punctuation
{
  v4 = *MEMORY[0x277D76508];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:punctuation];
  [(TMLAttributedString_Attributes *)self setAXAttribute:v4 value:v5];
}

- (NSNumber)accessibilitySpeechQueueAnnouncement
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D76510]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setAccessibilitySpeechQueueAnnouncement:(id)announcement
{
  v4 = *MEMORY[0x277D76510];
  if (announcement)
  {
    v6 = *MEMORY[0x277D76510];

    [(TMLAttributedString_Attributes *)self setAXAttribute:v6 value:announcement];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(TMLAttributedString_Attributes *)self setAXAttribute:v4 value:null];
  }
}

- (NSString)accessibilitySpeechIPANotation
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D764F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setAccessibilitySpeechIPANotation:(id)notation
{
  v4 = *MEMORY[0x277D764F0];
  if (notation)
  {
    v6 = *MEMORY[0x277D764F0];

    [(TMLAttributedString_Attributes *)self setAXAttribute:v6 value:notation];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(TMLAttributedString_Attributes *)self setAXAttribute:v4 value:null];
  }
}

- (NSNumber)accessibilityTextHeadingLevel
{
  v2 = [(NSMutableDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x277D76530]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setAccessibilityTextHeadingLevel:(id)level
{
  v4 = *MEMORY[0x277D76530];
  if (level)
  {
    v6 = *MEMORY[0x277D76530];

    [(TMLAttributedString_Attributes *)self setAXAttribute:v6 value:level];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(TMLAttributedString_Attributes *)self setAXAttribute:v4 value:null];
  }
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end