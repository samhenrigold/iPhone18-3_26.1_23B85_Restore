@interface PRCandidate
+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorScore:(double)score capitalizationDictionaryArray:(id)array;
+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model capitalizationDictionaryArray:(id)array;
+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score;
+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model;
+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score;
+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model;
+ (id)insertionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)self0 capitalizationDictionaryArray:(id)self1;
+ (id)insertionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)model;
+ (id)omissionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)self0 capitalizationDictionaryArray:(id)self1;
+ (id)omissionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)model;
+ (id)replacementCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter errorModel:(id)model capitalizationDictionaryArray:(id)self0;
+ (id)replacementCandidateWithString:(id)string replacementRange:(_NSRange)range intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter errorModel:(id)model;
+ (id)transpositionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter errorModel:(id)model capitalizationDictionaryArray:(id)self0;
+ (id)transpositionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter errorModel:(id)model;
- (NSString)string;
- (PRCandidate)initWithCandidateWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score;
- (PRCandidate)initWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score;
- (_NSRange)replacementRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRCandidate

- (PRCandidate)initWithCandidateWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = PRCandidate;
  v9 = [(PRCandidate *)&v11 init];
  if (v9)
  {
    v9->_candidateWords = [words copy];
    v9->_replacementRange.location = location;
    v9->_replacementRange.length = length;
    v9->_errorScore = score;
    v9->_linguisticScore = 0.0;
    v9->_lexiconScore = 0.0;
    v9->_blocklisted = 0;
  }

  return v9;
}

- (PRCandidate)initWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score
{
  length = range.length;
  location = range.location;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(string, "copy")}];

  return [(PRCandidate *)self initWithCandidateWords:v9 replacementRange:location errorScore:length, score];
}

+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score
{
  if (!words)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (![words count])
  {
    return 0;
  }

  v10 = [[self alloc] initWithCandidateWords:words replacementRange:location errorScore:{length, score}];

  return v10;
}

+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model
{
  if (!words)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (![words count])
  {
    return 0;
  }

  v12 = [self alloc];
  [model errorScoreForType:type];
  v13 = [v12 initWithCandidateWords:words replacementRange:location errorScore:length];

  return v13;
}

+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score
{
  if (!string)
  {
    return 0;
  }

  v5 = [[self alloc] initWithString:string replacementRange:range.location errorScore:{range.length, score}];

  return v5;
}

+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v11 = [self alloc];
  [model errorScoreForType:type];
  v12 = [v11 initWithString:string replacementRange:location errorScore:length];

  return v12;
}

+ (id)replacementCandidateWithString:(id)string replacementRange:(_NSRange)range intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  actualCharacterCopy = actualCharacter;
  characterCopy = character;
  length = range.length;
  location = range.location;
  v13 = [self alloc];
  [model replacementErrorScoreForIntendedCharacter:characterCopy actualCharacter:actualCharacterCopy];
  v14 = [v13 initWithString:string replacementRange:location errorScore:length];
  if (v14 && [model hasCustomReplacementErrorScores])
  {
    [v14 setCustomErrorScore:1];
  }

  return v14;
}

+ (id)transpositionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  secondCharacterCopy = secondCharacter;
  characterCopy = character;
  length = range.length;
  location = range.location;
  v13 = [self alloc];
  [model transpositionErrorScoreForIntendedFirstCharacter:characterCopy intendedSecondCharacter:secondCharacterCopy];
  v14 = [v13 initWithString:string replacementRange:location errorScore:length];
  if (v14 && [model hasCustomTranspositionErrorScores])
  {
    [v14 setCustomErrorScore:1];
  }

  return v14;
}

+ (id)insertionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  followingCharacterCopy = followingCharacter;
  insertedCharacterCopy = insertedCharacter;
  characterCopy = character;
  length = range.length;
  location = range.location;
  v14 = [self alloc];
  [model insertionErrorScoreForIntendedPrecedingCharacter:characterCopy insertedCharacter:insertedCharacterCopy intendedFollowingCharacter:followingCharacterCopy];
  v15 = [v14 initWithString:string replacementRange:location errorScore:length];
  if (v15 && [model hasCustomInsertionErrorScores])
  {
    [v15 setCustomErrorScore:1];
  }

  return v15;
}

+ (id)omissionCandidateWithString:(id)string replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  followingCharacterCopy = followingCharacter;
  omittedCharacterCopy = omittedCharacter;
  characterCopy = character;
  length = range.length;
  location = range.location;
  v14 = [self alloc];
  [model omissionErrorScoreForIntendedPrecedingCharacter:characterCopy omittedCharacter:omittedCharacterCopy intendedFollowingCharacter:followingCharacterCopy];
  v15 = [v14 initWithString:string replacementRange:location errorScore:length];
  if (v15 && [model hasCustomOmissionErrorScores])
  {
    [v15 setCustomErrorScore:1];
  }

  return v15;
}

+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorScore:(double)score capitalizationDictionaryArray:(id)array
{
  length = range.length;
  location = range.location;
  v36 = *MEMORY[0x1E69E9840];
  v15 = CFStringCreateWithCString(0, buffer, encoding);
  lowercaseString = [(__CFString *)v15 lowercaseString];
  v17 = 0;
  selfCopy = self;
  v18 = location;
  v19 = length;
  if (encoding == 1284 && transform >= 2)
  {
    v17 = candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale;
    if (!candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale = v17;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [array countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
LABEL_7:
    v23 = 0;
    while (1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(array);
      }

      v24 = [*(*(&v31 + 1) + 8 * v23) objectForKey:lowercaseString];
      if (v24)
      {
        goto LABEL_20;
      }

      if (v21 == ++v23)
      {
        v21 = [array countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v21)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if (transform == 3)
  {
    v24 = initialCapitalizedString(v15, v17);
LABEL_20:
    v28 = v24;
    v25 = v19;
    v26 = v18;
    v27 = selfCopy;
    return [v27 candidateWithString:v28 replacementRange:v26 errorScore:{v25, score}];
  }

  v25 = v19;
  v26 = v18;
  v27 = selfCopy;
  if (transform == 2)
  {
    v28 = uppercasedString(v15, v17);
  }

  else if (transform == 1)
  {
    v28 = lowercaseString;
  }

  else
  {
    v28 = v15;
  }

  return [v27 candidateWithString:v28 replacementRange:v26 errorScore:{v25, score}];
}

+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model capitalizationDictionaryArray:(id)array
{
  length = range.length;
  location = range.location;
  v12 = *&encoding;
  [model errorScoreForType:type];

  return [self candidateWithBuffer:buffer encoding:v12 transform:transform replacementRange:location errorScore:length capitalizationDictionaryArray:array];
}

+ (id)replacementCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter errorModel:(id)model capitalizationDictionaryArray:(id)self0
{
  length = range.length;
  location = range.location;
  v13 = *&encoding;
  [model replacementErrorScoreForIntendedCharacter:character actualCharacter:actualCharacter];
  v16 = [self candidateWithBuffer:buffer encoding:v13 transform:transform replacementRange:location errorScore:length capitalizationDictionaryArray:array];
  if (v16 && [model hasCustomReplacementErrorScores])
  {
    [v16 setCustomErrorScore:1];
  }

  return v16;
}

+ (id)transpositionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter errorModel:(id)model capitalizationDictionaryArray:(id)self0
{
  length = range.length;
  location = range.location;
  v13 = *&encoding;
  [model transpositionErrorScoreForIntendedFirstCharacter:character intendedSecondCharacter:secondCharacter];
  v16 = [self candidateWithBuffer:buffer encoding:v13 transform:transform replacementRange:location errorScore:length capitalizationDictionaryArray:array];
  if (v16 && [model hasCustomTranspositionErrorScores])
  {
    [v16 setCustomErrorScore:1];
  }

  return v16;
}

+ (id)insertionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)self0 capitalizationDictionaryArray:(id)self1
{
  length = range.length;
  location = range.location;
  v14 = *&encoding;
  [model insertionErrorScoreForIntendedPrecedingCharacter:character insertedCharacter:insertedCharacter intendedFollowingCharacter:followingCharacter];
  v17 = [self candidateWithBuffer:buffer encoding:v14 transform:transform replacementRange:location errorScore:length capitalizationDictionaryArray:array];
  if (v17 && [model hasCustomInsertionErrorScores])
  {
    [v17 setCustomErrorScore:1];
  }

  return v17;
}

+ (id)omissionCandidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range intendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter errorModel:(id)self0 capitalizationDictionaryArray:(id)self1
{
  length = range.length;
  location = range.location;
  v14 = *&encoding;
  [model omissionErrorScoreForIntendedPrecedingCharacter:character omittedCharacter:omittedCharacter intendedFollowingCharacter:followingCharacter];
  v17 = [self candidateWithBuffer:buffer encoding:v14 transform:transform replacementRange:location errorScore:length capitalizationDictionaryArray:array];
  if (v17 && [model hasCustomOmissionErrorScores])
  {
    [v17 setCustomErrorScore:1];
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  string = [(PRCandidate *)self string];
  [(PRCandidate *)self errorScore];
  v6 = v5;
  [(PRCandidate *)self linguisticScore];
  v8 = v7;
  isBlocklisted = [(PRCandidate *)self isBlocklisted];
  [(PRCandidate *)self score];
  return [v3 stringWithFormat:@"%@(%.2g, %.2g, %d;%.2g)", string, v6, v8, isBlocklisted, v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRCandidate;
  [(PRCandidate *)&v3 dealloc];
}

- (NSString)string
{
  v3 = [(NSArray *)self->_candidateWords count];
  candidateWords = self->_candidateWords;
  if (v3 == 1)
  {

    return [(NSArray *)candidateWords firstObject];
  }

  else
  {

    return [(NSArray *)candidateWords componentsJoinedByString:@" "];
  }
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end