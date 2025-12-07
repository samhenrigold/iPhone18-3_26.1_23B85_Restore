@interface KNLiveVideoSourceCollaborationCommandUsageState
+ (id)emptyUsageState;
- (BOOL)isEqual:(id)equal;
- (KNLiveVideoSourceCollaborationCommandUsageState)initWithMessage:(const void *)message unarchiver:(id)unarchiver;
- (KNLiveVideoSourceCollaborationCommandUsageState)initWithSingleCollaborationCommandUsageToken:(id)token hasMultipleCollaborationCommandUsageTokens:(BOOL)tokens;
- (id)description;
- (id)usageStateByAddingCollaborationCommandUsageToken:(id)token;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNLiveVideoSourceCollaborationCommandUsageState

- (KNLiveVideoSourceCollaborationCommandUsageState)initWithSingleCollaborationCommandUsageToken:(id)token hasMultipleCollaborationCommandUsageTokens:(BOOL)tokens
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = KNLiveVideoSourceCollaborationCommandUsageState;
  v7 = [(KNLiveVideoSourceCollaborationCommandUsageState *)&v11 init];
  if (v7)
  {
    v8 = [tokenCopy copy];
    singleCollaborationCommandUsageToken = v7->_singleCollaborationCommandUsageToken;
    v7->_singleCollaborationCommandUsageToken = v8;

    v7->_definedSingleCollaborationCommandUsageToken = v7->_singleCollaborationCommandUsageToken != 0;
    v7->_hasMultipleCollaborationCommandUsageTokens = tokens;
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@ %p: singleCollaborationCommandUsageToken=%@ hasMultipleCollaborationCommandUsageTokens=%d>", objc_opt_class(), self, self->_singleCollaborationCommandUsageToken, self->_hasMultipleCollaborationCommandUsageTokens];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v6 = v5;
    v12 = v5 && ((v7 = *(v5 + 16), v8 = self->_singleCollaborationCommandUsageToken, v9 = v7, !(v8 | v9)) || (v10 = v9, v11 = [v8 isEqual:v9], v10, v8, v11)) && self->_hasMultipleCollaborationCommandUsageTokens == v6[8];
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  [v3 addObject:self->_singleCollaborationCommandUsageToken];
  [v3 addBool:self->_hasMultipleCollaborationCommandUsageTokens];
  hashValue = [v3 hashValue];

  return hashValue;
}

+ (id)emptyUsageState
{
  v2 = [[self alloc] initWithSingleCollaborationCommandUsageToken:0 hasMultipleCollaborationCommandUsageTokens:0];

  return v2;
}

- (id)usageStateByAddingCollaborationCommandUsageToken:(id)token
{
  tokenCopy = token;
  if (self->_hasMultipleCollaborationCommandUsageTokens)
  {
    goto LABEL_4;
  }

  singleCollaborationCommandUsageToken = self->_singleCollaborationCommandUsageToken;
  if (singleCollaborationCommandUsageToken)
  {
    if (([(NSUUID *)self->_singleCollaborationCommandUsageToken isEqual:tokenCopy]& 1) != 0)
    {
LABEL_4:
      selfCopy = self;
      goto LABEL_8;
    }

    v7 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
    v8 = 0;
  }

  else
  {
    v7 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
    v8 = tokenCopy;
  }

  selfCopy = [(KNLiveVideoSourceCollaborationCommandUsageState *)v7 initWithSingleCollaborationCommandUsageToken:v8 hasMultipleCollaborationCommandUsageTokens:singleCollaborationCommandUsageToken != 0];
LABEL_8:
  v9 = selfCopy;

  return v9;
}

- (KNLiveVideoSourceCollaborationCommandUsageState)initWithMessage:(const void *)message unarchiver:(id)unarchiver
{
  v13.receiver = self;
  v13.super_class = KNLiveVideoSourceCollaborationCommandUsageState;
  v5 = [(KNLiveVideoSourceCollaborationCommandUsageState *)&v13 init:message];
  v6 = v5;
  if (v5)
  {
    v7 = *(message + 4);
    if ((v7 & 2) != 0)
    {
      v5->_hasMultipleCollaborationCommandUsageTokens = *(message + 32);
    }

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(message + 3))
      {
        v9 = *(message + 3);
      }

      else
      {
        v9 = MEMORY[0x277D809E0];
      }

      v10 = [v8 tsp_initWithMessage:v9];
      singleCollaborationCommandUsageToken = v6->_singleCollaborationCommandUsageToken;
      v6->_singleCollaborationCommandUsageToken = v10;

      v6->_definedSingleCollaborationCommandUsageToken = 1;
    }
  }

  return v6;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  hasMultipleCollaborationCommandUsageTokens = self->_hasMultipleCollaborationCommandUsageTokens;
  v7 = *(message + 4);
  *(message + 4) = v7 | 2;
  *(message + 32) = hasMultipleCollaborationCommandUsageTokens;
  singleCollaborationCommandUsageToken = self->_singleCollaborationCommandUsageToken;
  if (singleCollaborationCommandUsageToken)
  {
    *(message + 4) = v7 | 3;
    v9 = *(message + 3);
    if (!v9)
    {
      v10 = *(message + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F000](v10);
      *(message + 3) = v9;
    }

    [(NSUUID *)singleCollaborationCommandUsageToken tsp_saveToMessage:v9];
  }
}

@end