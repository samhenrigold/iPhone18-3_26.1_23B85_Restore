@interface _LTSpeechRecognitionSausage
- (_LTSpeechRecognitionSausage)initWithCoder:(id)coder;
@end

@implementation _LTSpeechRecognitionSausage

- (_LTSpeechRecognitionSausage)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTSpeechRecognitionSausage;
  v5 = [(_LTSpeechRecognitionSausage *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bins"];
    bins = v5->_bins;
    v5->_bins = v9;

    v11 = v5;
  }

  return v5;
}

@end