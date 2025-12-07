@interface BRLTTranslator
- (BRLTTranslator)initWithDelegate:(id)delegate tableIdentifier:(id)identifier;
- (id)_backTranslate:(id)translate;
- (id)_translate:(id)_translate isTechnical:(BOOL)technical textFormattingRanges:(id)ranges;
- (id)arrayFromData:(id)data;
@end

@implementation BRLTTranslator

- (BRLTTranslator)initWithDelegate:(id)delegate tableIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = BRLTTranslator;
  v9 = [(BRLTTranslator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_translationDelegate, delegate);
    objc_storeStrong(&v10->_tableIdentifier, identifier);
  }

  return v10;
}

- (id)_translate:(id)_translate isTechnical:(BOOL)technical textFormattingRanges:(id)ranges
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = 4;
  if (!technical)
  {
    v6 = 1;
  }

  translationDelegate = self->_translationDelegate;
  v14 = 0;
  ranges = [(BRLTBrailleTranslationDelegateProtocol *)translationDelegate printBrailleForText:_translate language:0 mode:v6 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:&v14, ranges];
  v9 = v14;
  if (ranges)
  {
    v10 = ranges;
  }

  else
  {
    v10 = &stru_2853FD1A8;
  }

  v15[0] = @"braille";
  v15[1] = @"locations";
  v16[0] = v10;
  v11 = [(BRLTTranslator *)self arrayFromData:v9];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v12;
}

- (id)_backTranslate:(id)translate
{
  v13[2] = *MEMORY[0x277D85DE8];
  translationDelegate = self->_translationDelegate;
  v11 = 0;
  v5 = [(BRLTBrailleTranslationDelegateProtocol *)translationDelegate textForPrintBraille:translate language:0 mode:1 locations:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2853FD1A8;
  }

  v12[0] = @"text";
  v12[1] = @"locations";
  v13[0] = v7;
  v8 = [(BRLTTranslator *)self arrayFromData:v6];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v9;
}

- (id)arrayFromData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = v4 >> 3;
  bytes = [dataCopy bytes];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4 >> 3];
  if (v4 >= 8)
  {
    do
    {
      v8 = *bytes++;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v7 addObject:v9];

      --v5;
    }

    while (v5);
  }

  return v7;
}

@end