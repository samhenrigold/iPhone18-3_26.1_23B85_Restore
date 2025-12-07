@interface CNACTStewieFacadeTestDouble
- (CNACTStewieFacadeTestDouble)initWithPhrases:(id)phrases numbers:(id)numbers;
- (id)terms;
@end

@implementation CNACTStewieFacadeTestDouble

- (CNACTStewieFacadeTestDouble)initWithPhrases:(id)phrases numbers:(id)numbers
{
  phrasesCopy = phrases;
  numbersCopy = numbers;
  v15.receiver = self;
  v15.super_class = CNACTStewieFacadeTestDouble;
  v8 = [(CNACTStewieFacadeTestDouble *)&v15 init];
  if (v8)
  {
    v9 = [phrasesCopy copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [numbersCopy copy];
    numbers = v8->_numbers;
    v8->_numbers = v11;

    v13 = v8;
  }

  return v8;
}

- (id)terms
{
  v6[2] = *MEMORY[0x277D85DE8];
  numbers = self->_numbers;
  v6[0] = self->_phrases;
  v6[1] = numbers;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  _cn_flatten = [v3 _cn_flatten];

  return _cn_flatten;
}

@end