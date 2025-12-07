@interface _LTTranslationParagraph
- (_LTTranslationParagraph)initWithCoder:(id)coder;
- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans;
- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans isFinal:(BOOL)final;
- (id)splitIntoSentences;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationParagraph

- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans
{
  identifierCopy = identifier;
  textCopy = text;
  spansCopy = spans;
  v14.receiver = self;
  v14.super_class = _LTTranslationParagraph;
  v11 = [(_LTTranslationParagraph *)&v14 init];
  if (v11)
  {
    v12 = [(_LTTranslationParagraph *)v11 initWithIdentifier:identifierCopy text:textCopy spans:spansCopy isFinal:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans isFinal:(BOOL)final
{
  identifierCopy = identifier;
  textCopy = text;
  spansCopy = spans;
  v22.receiver = self;
  v22.super_class = _LTTranslationParagraph;
  v13 = [(_LTTranslationParagraph *)&v22 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [textCopy copy];
    text = v13->_text;
    v13->_text = v16;

    v13->_isFinal = final;
    v18 = [spansCopy copy];
    spans = v13->_spans;
    v13->_spans = v18;

    v20 = v13;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_spans forKey:@"spans"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
}

- (_LTTranslationParagraph)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTTranslationParagraph;
  v5 = [(_LTTranslationParagraph *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v12;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v14 = v5;
  }

  return v5;
}

- (id)splitIntoSentences
{
  v39 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self->_text];
  spans = self->_spans;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke;
  v35[3] = &unk_278B6D9D8;
  v6 = v4;
  v36 = v6;
  [(NSArray *)spans enumerateObjectsUsingBlock:v35];
  v25 = v6;
  [v6 sentences];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = array;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [v12 length];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke_2;
        v29[3] = &unk_278B6DA28;
        v15 = v13;
        v30 = v15;
        [v12 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v29}];
        if ([v15 count])
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke_4;
          v27[3] = &unk_278B6DA50;
          v17 = v16;
          v28 = v17;
          [v15 enumerateKeysAndObjectsUsingBlock:v27];
        }

        else
        {
          v17 = 0;
        }

        v18 = [_LTTranslationParagraph alloc];
        identifier = self->_identifier;
        string = [v12 string];
        v21 = [(_LTTranslationParagraph *)v18 initWithIdentifier:identifier text:string spans:v17 isFinal:self->_isFinal];
        array = v10;
        [v10 addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v8);
  }

  if ([array count] == 1)
  {
    selfCopy = self;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  }

  else
  {
    v22 = array;
  }

  v23 = v22;

  return v23;
}

@end