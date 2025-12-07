@interface _LTLanguageDetectionResult
- (_LTLanguageDetectionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguageDetectionResult

- (_LTLanguageDetectionResult)initWithCoder:(id)coder
{
  v14[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTLanguageDetectionResult;
  v5 = [(_LTLanguageDetectionResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dominantLanguage"];
    [(_LTLanguageDetectionResult *)v5 setDominantLanguage:v6];

    v7 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"confidences"];
    [(_LTLanguageDetectionResult *)v5 setConfidences:v10];

    v5->_isConfident = [coderCopy decodeBoolForKey:@"isConfident"];
    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dominantLanguage = [(_LTLanguageDetectionResult *)self dominantLanguage];
  [coderCopy encodeObject:dominantLanguage forKey:@"dominantLanguage"];

  confidences = [(_LTLanguageDetectionResult *)self confidences];
  [coderCopy encodeObject:confidences forKey:@"confidences"];

  [coderCopy encodeBool:-[_LTLanguageDetectionResult isConfident](self forKey:{"isConfident"), @"isConfident"}];
  [coderCopy encodeBool:-[_LTLanguageDetectionResult isFinal](self forKey:{"isFinal"), @"isFinal"}];
}

@end