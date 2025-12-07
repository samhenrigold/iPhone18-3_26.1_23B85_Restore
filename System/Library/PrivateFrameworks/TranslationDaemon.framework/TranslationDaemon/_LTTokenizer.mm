@interface _LTTokenizer
+ (unint64_t)_wordCount:(id)count inLocale:(id)locale;
- (id)_tokenizeString:(id)string inLocale:(id)locale;
- (id)tokenize:(id)tokenize forLocale:(id)locale;
@end

@implementation _LTTokenizer

- (id)tokenize:(id)tokenize forLocale:(id)locale
{
  tokenizeCopy = tokenize;
  localeCopy = locale;
  localeIdentifier = [localeCopy localeIdentifier];
  uTF8String = [localeIdentifier UTF8String];
  v9 = strlen(uTF8String);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v39 = v9;
  if (v9)
  {
    memmove(&__dst, uTF8String, v9);
  }

  *(&__dst + v10) = 0;

  std::vector<unsigned short>::vector[abi:ne200100](&v36, [tokenizeCopy length]);
  [tokenizeCopy getCharacters:? range:?];
  v11 = v37 - v36;
  v12 = (v37 - v36) >> 1;
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0xB)
  {
    if ((v12 | 3) == 0xB)
    {
      v13 = 13;
    }

    else
    {
      v13 = (v12 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(&v34, v13);
  }

  v35 = v11 >> 1;
  if (v37 != v36)
  {
    memmove(&v34, v36, v11);
  }

  *(&v34 + v12) = 0;
  languageCode = [localeCopy languageCode];
  v15 = [languageCode isEqualToString:@"de"];

  if (v15)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v17 = [tokenizeCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];
    array = [v17 filteredArrayUsingPredicate:v18];
  }

  else
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    morphun::util::ULocale::ULocale();
    Tokenizer = morphun::TokenizerFactory::createTokenizer();
    morphun::util::ULocale::~ULocale(v33);
    v21 = (*(*Tokenizer + 24))(Tokenizer, &v34);
    array = [MEMORY[0x277CBEB18] array];
    morphun::TokenIterator::TokenIterator();
    v33[0] = morphun::Chunk::end(v21);
    v33[1] = v22;
    while ((morphun::TokenIterator::operator!=() & 1) != 0)
    {
      v23 = morphun::TokenIterator::operator*();
      if ((morphun::Token::isHead(v23) & 1) == 0 && (morphun::Token::isTail(v23) & 1) == 0 && (morphun::Token::isWhitespace(v23) & 1) == 0)
      {
        Value = morphun::Token::getValue(v23);
        v25 = *(Value + 23);
        if (v25 >= 0)
        {
          v26 = Value;
        }

        else
        {
          v26 = *Value;
        }

        if (v25 >= 0)
        {
          v27 = *(Value + 23);
        }

        else
        {
          v27 = *(Value + 8);
        }

        v28 = [MEMORY[0x277CCACA8] stringWithCharacters:v26 length:{v27, __p, v31, v32}];
        [array addObject:v28];
      }

      morphun::TokenIterator::operator++();
    }

    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    (*(*Tokenizer + 16))(Tokenizer);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return array;
}

- (id)_tokenizeString:(id)string inLocale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v7 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  languageCode = [localeCopy languageCode];
  [v7 setLanguage:languageCode];

  [v7 setString:stringCopy];
  array = [MEMORY[0x277CBEB18] array];
  v10 = [stringCopy length];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41___LTTokenizer__tokenizeString_inLocale___block_invoke;
  v16[3] = &unk_2789B7D50;
  v11 = stringCopy;
  v17 = v11;
  v12 = array;
  v18 = v12;
  [v7 enumerateTokensInRange:0 usingBlock:{v10, v16}];
  v13 = v18;
  v14 = v12;

  return v12;
}

+ (unint64_t)_wordCount:(id)count inLocale:(id)locale
{
  countCopy = count;
  localeCopy = locale;
  v7 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  languageCode = [localeCopy languageCode];
  [v7 setLanguage:languageCode];

  [v7 setString:countCopy];
  v9 = [v7 tokensForRange:{0, objc_msgSend(countCopy, "length")}];
  v10 = [v9 count];

  return v10;
}

@end