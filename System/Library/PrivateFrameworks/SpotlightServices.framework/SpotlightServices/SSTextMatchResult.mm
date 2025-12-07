@interface SSTextMatchResult
- (SSTextMatchResult)initWithScore:(float)score;
- (id)description;
- (id)matchInfo;
- (id)matchedStrings;
- (void)addTermMatch:(id)match;
- (void)clear;
@end

@implementation SSTextMatchResult

- (SSTextMatchResult)initWithScore:(float)score
{
  v5.receiver = self;
  v5.super_class = SSTextMatchResult;
  result = [(SSTextMatchResult *)&v5 init];
  if (result)
  {
    result->_score = score;
  }

  return result;
}

- (void)addTermMatch:(id)match
{
  v4 = MEMORY[0x1E695DF70];
  matchCopy = match;
  array = [v4 array];
  termMatches = [(SSTextMatchResult *)self termMatches];
  [array addObjectsFromArray:termMatches];

  [array addObject:matchCopy];
  [(SSTextMatchResult *)self setTermMatches:array];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  matchPositions = [(SSTextMatchResult *)self matchPositions];
  [orderedSet addObjectsFromArray:matchPositions];

  v9 = [matchCopy pos];
  [orderedSet addObjectsFromArray:v9];

  array2 = [orderedSet array];
  [(SSTextMatchResult *)self setMatchPositions:array2];

  LODWORD(array2) = [matchCopy score];
  [(SSTextMatchResult *)self score];
  *&v12 = v11 + array2;
  [(SSTextMatchResult *)self setScore:v12];
}

- (void)clear
{
  [(SSTextMatchResult *)self setSource:0];
  [(SSTextMatchResult *)self setScore:0.0];
  v3 = MEMORY[0x1E695E0F0];
  [(SSTextMatchResult *)self setTermMatches:MEMORY[0x1E695E0F0]];

  [(SSTextMatchResult *)self setMatchPositions:v3];
}

- (id)matchedStrings
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  termMatches = [(SSTextMatchResult *)self termMatches];
  v5 = [termMatches countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(termMatches);
        }

        term = [*(*(&v11 + 1) + 8 * i) term];
        [array addObject:term];
      }

      v6 = [termMatches countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)matchInfo
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  source = [(SSTextMatchResult *)self source];
  [dictionary setObject:dictionary2 forKeyedSubscript:source];

  termMatches = [(SSTextMatchResult *)self termMatches];

  if (termMatches)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    termMatches2 = [(SSTextMatchResult *)self termMatches];
    v8 = [termMatches2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(termMatches2);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 pos];
          source2 = [(SSTextMatchResult *)self source];
          v15 = [dictionary objectForKeyedSubscript:source2];
          term = [v12 term];
          [v15 setObject:v13 forKeyedSubscript:term];
        }

        v9 = [termMatches2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(SSTextMatchResult *)self score];
  v5 = v4;
  termMatches = [(SSTextMatchResult *)self termMatches];
  v7 = [termMatches componentsJoinedByString:@"} {"];;
  v8 = [v3 stringWithFormat:@"score: %.04f {%@}", *&v5, v7];;

  return v8;
}

@end