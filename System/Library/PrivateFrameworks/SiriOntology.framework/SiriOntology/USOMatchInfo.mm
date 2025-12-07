@interface USOMatchInfo
- (USOMatchInfo)initWithCoder:(id)coder;
- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set;
- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set matchScore:(float)score maxTokenCount:(unsigned int)count matchedTokenCount:(unsigned int)tokenCount maxStopWordCount:(unsigned int)wordCount matchedStopWordCount:(unsigned int)stopWordCount editDistance:(unsigned int)distance maxAliasCount:(unsigned int)self0 matchedAliasCount:(unsigned int)self1 matchedAliasTypes:(id)self2;
- (void)addAliasType:(unsigned int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOMatchInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[USOMatchInfo matchSignalBitSet](self forKey:{"matchSignalBitSet"), @"matchSignalBitSet"}];
  matchScore = [(USOMatchInfo *)self matchScore];
  [coderCopy encodeObject:matchScore forKey:@"matchScore"];

  maxTokenCount = [(USOMatchInfo *)self maxTokenCount];
  [coderCopy encodeObject:maxTokenCount forKey:@"maxTokenCount"];

  matchedTokenCount = [(USOMatchInfo *)self matchedTokenCount];
  [coderCopy encodeObject:matchedTokenCount forKey:@"matchedTokenCount"];

  maxStopWordCount = [(USOMatchInfo *)self maxStopWordCount];
  [coderCopy encodeObject:maxStopWordCount forKey:@"maxStopWordCount"];

  matchedStopWordCount = [(USOMatchInfo *)self matchedStopWordCount];
  [coderCopy encodeObject:matchedStopWordCount forKey:@"matchedStopWordCount"];

  editDistance = [(USOMatchInfo *)self editDistance];
  [coderCopy encodeObject:editDistance forKey:@"editDistance"];

  maxAliasCount = [(USOMatchInfo *)self maxAliasCount];
  [coderCopy encodeObject:maxAliasCount forKey:@"maxAliasCount"];

  matchedAliasCount = [(USOMatchInfo *)self matchedAliasCount];
  [coderCopy encodeObject:matchedAliasCount forKey:@"matchedAliasCount"];

  matchedAliasTypes = [(USOMatchInfo *)self matchedAliasTypes];
  [coderCopy encodeObject:matchedAliasTypes forKey:@"matchedAliasTypes"];
}

- (USOMatchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = USOMatchInfo;
  v5 = [(USOMatchInfo *)&v28 init];
  if (v5)
  {
    v5->_matchSignalBitSet = [coderCopy decodeInt32ForKey:@"matchSignalBitSet"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchScore"];
    matchScore = v5->_matchScore;
    v5->_matchScore = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxTokenCount"];
    maxTokenCount = v5->_maxTokenCount;
    v5->_maxTokenCount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedTokenCount"];
    matchedTokenCount = v5->_matchedTokenCount;
    v5->_matchedTokenCount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxStopWordCount"];
    maxStopWordCount = v5->_maxStopWordCount;
    v5->_maxStopWordCount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedStopWordCount"];
    matchedStopWordCount = v5->_matchedStopWordCount;
    v5->_matchedStopWordCount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editDistance"];
    editDistance = v5->_editDistance;
    v5->_editDistance = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxAliasCount"];
    maxAliasCount = v5->_maxAliasCount;
    v5->_maxAliasCount = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedAliasCount"];
    matchedAliasCount = v5->_matchedAliasCount;
    v5->_matchedAliasCount = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"matchedAliasTypes"];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = v25;
  }

  return v5;
}

- (void)addAliasType:(unsigned int)type
{
  matchedAliasTypes = self->_matchedAliasTypes;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  [(NSMutableArray *)matchedAliasTypes addObject:v4];
}

- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set matchScore:(float)score maxTokenCount:(unsigned int)count matchedTokenCount:(unsigned int)tokenCount maxStopWordCount:(unsigned int)wordCount matchedStopWordCount:(unsigned int)stopWordCount editDistance:(unsigned int)distance maxAliasCount:(unsigned int)self0 matchedAliasCount:(unsigned int)self1 matchedAliasTypes:(id)self2
{
  v12 = *&distance;
  v13 = *&stopWordCount;
  v14 = *&wordCount;
  v15 = *&tokenCount;
  v16 = *&count;
  typesCopy = types;
  v43.receiver = self;
  v43.super_class = USOMatchInfo;
  v21 = [(USOMatchInfo *)&v43 init];
  v23 = v21;
  if (v21)
  {
    v21->_matchSignalBitSet = set;
    *&v22 = score;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    matchScore = v23->_matchScore;
    v23->_matchScore = v24;

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
    maxTokenCount = v23->_maxTokenCount;
    v23->_maxTokenCount = v26;

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
    matchedTokenCount = v23->_matchedTokenCount;
    v23->_matchedTokenCount = v28;

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
    maxStopWordCount = v23->_maxStopWordCount;
    v23->_maxStopWordCount = v30;

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    matchedStopWordCount = v23->_matchedStopWordCount;
    v23->_matchedStopWordCount = v32;

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    editDistance = v23->_editDistance;
    v23->_editDistance = v34;

    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:aliasCount];
    maxAliasCount = v23->_maxAliasCount;
    v23->_maxAliasCount = v36;

    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:matchedAliasCount];
    matchedAliasCount = v23->_matchedAliasCount;
    v23->_matchedAliasCount = v38;

    if (typesCopy)
    {
      array = [typesCopy mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    matchedAliasTypes = v23->_matchedAliasTypes;
    v23->_matchedAliasTypes = array;
  }

  return v23;
}

- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set
{
  v9.receiver = self;
  v9.super_class = USOMatchInfo;
  v4 = [(USOMatchInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_matchSignalBitSet = set;
    array = [MEMORY[0x1E695DF70] array];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = array;
  }

  return v5;
}

@end