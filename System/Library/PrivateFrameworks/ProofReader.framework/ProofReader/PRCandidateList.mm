@interface PRCandidateList
- (PRCandidateList)initWithMaxCount:(unint64_t)count defaultReplacementRange:(_NSRange)range customErrorModel:(id)model capitalizationDictionaryArray:(id)array;
- (_NSRange)defaultReplacementRange;
- (id)candidateStrings;
- (id)candidateWithString:(id)string;
- (void)addCandidate:(id)candidate;
- (void)addCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding errorType:(unint64_t)type;
- (void)addCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform errorType:(unint64_t)type;
- (void)addCandidateWithString:(id)string errorType:(unint64_t)type;
- (void)addCandidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type;
- (void)addCandidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type;
- (void)addInsertionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter;
- (void)addOmissionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter;
- (void)addReplacementCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter;
- (void)addTranspositionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter;
- (void)dealloc;
@end

@implementation PRCandidateList

- (PRCandidateList)initWithMaxCount:(unint64_t)count defaultReplacementRange:(_NSRange)range customErrorModel:(id)model capitalizationDictionaryArray:(id)array
{
  length = range.length;
  location = range.location;
  v13.receiver = self;
  v13.super_class = PRCandidateList;
  v11 = [(PRCandidateList *)&v13 init];
  if (v11)
  {
    v11->_candidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11->_maxCount = count;
    v11->_defaultReplacementRange.location = location;
    v11->_defaultReplacementRange.length = length;
    v11->_errorModel = [[PRErrorModel alloc] initWithCustomErrorModel:model];
    v11->_capitalizationDictionaryArray = [array copy];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRCandidateList;
  [(PRCandidateList *)&v3 dealloc];
}

- (void)addCandidate:(id)candidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (candidate && ![(PRCandidateList *)self isFull])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    candidates = self->_candidates;
    v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(candidates);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(candidate "string")])
          {
            if ([candidate hasCustomErrorScore])
            {
              [candidate errorScore];
              [v10 setErrorScore:?];
              [v10 setCustomErrorScore:1];
            }

            else
            {
              [v10 errorScore];
              v12 = v11;
              [candidate errorScore];
              if (v12 < v13)
              {
                [candidate errorScore];
                [v10 setErrorScore:?];
              }
            }

            return;
          }
        }

        v7 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_candidates addObject:candidate];
  }
}

- (void)addCandidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type
{
  v6 = [PRCandidate candidateWithWords:words replacementRange:range.location errorType:range.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type
{
  v6 = [PRCandidate candidateWithString:string replacementRange:range.location errorType:range.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)string errorType:(unint64_t)type
{
  v5 = [PRCandidate candidateWithString:string replacementRange:self->_defaultReplacementRange.location errorType:self->_defaultReplacementRange.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v5];
}

- (void)addCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding errorType:(unint64_t)type
{
  v6 = [PRCandidate candidateWithBuffer:buffer encoding:*&encoding transform:0 replacementRange:self->_defaultReplacementRange.location errorType:self->_defaultReplacementRange.length errorModel:type capitalizationDictionaryArray:self->_errorModel, self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform errorType:(unint64_t)type
{
  v7 = [PRCandidate candidateWithBuffer:buffer encoding:*&encoding transform:transform replacementRange:self->_defaultReplacementRange.location errorType:self->_defaultReplacementRange.length errorModel:type capitalizationDictionaryArray:self->_errorModel, self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v7];
}

- (void)addReplacementCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter
{
  LOWORD(v9) = actualCharacter;
  v8 = [PRCandidate replacementCandidateWithBuffer:buffer encoding:*&encoding transform:transform replacementRange:self->_defaultReplacementRange.location intendedCharacter:self->_defaultReplacementRange.length actualCharacter:character errorModel:v9 capitalizationDictionaryArray:self->_errorModel, self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v8];
}

- (void)addTranspositionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter
{
  LOWORD(v9) = secondCharacter;
  v8 = [PRCandidate transpositionCandidateWithBuffer:buffer encoding:*&encoding transform:transform replacementRange:self->_defaultReplacementRange.location intendedFirstCharacter:self->_defaultReplacementRange.length intendedSecondCharacter:character errorModel:v9 capitalizationDictionaryArray:self->_errorModel, self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v8];
}

- (void)addInsertionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter
{
  WORD1(v10) = followingCharacter;
  LOWORD(v10) = insertedCharacter;
  v9 = [PRCandidate insertionCandidateWithBuffer:buffer encoding:*&encoding transform:transform replacementRange:self->_defaultReplacementRange.location intendedPrecedingCharacter:self->_defaultReplacementRange.length insertedCharacter:character intendedFollowingCharacter:v10 errorModel:self->_errorModel capitalizationDictionaryArray:self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v9];
}

- (void)addOmissionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter
{
  WORD1(v10) = followingCharacter;
  LOWORD(v10) = omittedCharacter;
  v9 = [PRCandidate omissionCandidateWithBuffer:buffer encoding:*&encoding transform:transform replacementRange:self->_defaultReplacementRange.location intendedPrecedingCharacter:self->_defaultReplacementRange.length omittedCharacter:character intendedFollowingCharacter:v10 errorModel:self->_errorModel capitalizationDictionaryArray:self->_capitalizationDictionaryArray];

  [(PRCandidateList *)self addCandidate:v9];
}

- (id)candidateStrings
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  candidates = self->_candidates;
  v5 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(candidates);
        }

        [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "string")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return array;
}

- (_NSRange)defaultReplacementRange
{
  length = self->_defaultReplacementRange.length;
  location = self->_defaultReplacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)candidateWithString:(id)string
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  candidates = self->_candidates;
  v5 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(candidates);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "string")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end