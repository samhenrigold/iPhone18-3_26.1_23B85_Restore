@interface KNRecordingSyncState
- (BOOL)isEqual:(id)equal;
- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)token;
- (KNRecordingSyncState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNRecordingSyncState)initWithOutOfSyncToken:(id)token canClearOutOfSyncToken:(BOOL)syncToken;
- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)sync withLocalOutOfSyncToken:(id)token;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNRecordingSyncState

- (KNRecordingSyncState)initWithOutOfSyncToken:(id)token canClearOutOfSyncToken:(BOOL)syncToken
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = KNRecordingSyncState;
  v7 = [(KNRecordingSyncState *)&v11 init];
  if (v7)
  {
    v8 = [tokenCopy copy];
    outOfSyncToken = v7->_outOfSyncToken;
    v7->_outOfSyncToken = v8;

    v7->_canClearOutOfSyncToken = syncToken;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v7 = v5 && ((outOfSyncToken = self->_outOfSyncToken, !(outOfSyncToken | *(v5 + 8))) || [(NSUUID *)outOfSyncToken isEqual:?]) && self->_canClearOutOfSyncToken == *(v5 + 16);
  return v7;
}

- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecordingSyncState isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingSyncState.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:64 isFatal:0 description:{"invalid nil value for '%{public}s'", "localOutOfSyncToken"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (self->_canClearOutOfSyncToken)
  {
    outOfSyncToken = self->_outOfSyncToken;
    if (outOfSyncToken)
    {
      v9 = [(NSUUID *)outOfSyncToken isEqual:tokenCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)sync withLocalOutOfSyncToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecordingSyncState recordingSyncStateByMarkingRecordingAsOutOfSync:withLocalOutOfSyncToken:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingSyncState.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:78 isFatal:0 description:{"invalid nil value for '%{public}s'", "localOutOfSyncToken"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    tokenCopy = [MEMORY[0x277CCAD78] UUID];
  }

  if (!self->_canClearOutOfSyncToken)
  {
    v11 = 0;
    goto LABEL_8;
  }

  outOfSyncToken = self->_outOfSyncToken;
  if (!outOfSyncToken)
  {
    v11 = 1;
    if (sync)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v11 = [(NSUUID *)outOfSyncToken isEqual:tokenCopy];
  if (!sync)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!self->_outOfSyncToken)
  {
    v12 = tokenCopy;
    goto LABEL_13;
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  v13 = [[KNRecordingSyncState alloc] initWithOutOfSyncToken:v12 canClearOutOfSyncToken:v11];

  return v13;
}

- (KNRecordingSyncState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(archive + 3))
    {
      v9 = *(archive + 3);
    }

    else
    {
      v9 = MEMORY[0x277D809E0];
    }

    v7 = [v8 tsp_initWithMessage:v9];
  }

  else
  {
    v7 = 0;
  }

  v10 = [(KNRecordingSyncState *)self initWithOutOfSyncToken:v7 canClearOutOfSyncToken:*(archive + 32)];

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  outOfSyncToken = self->_outOfSyncToken;
  if (outOfSyncToken)
  {
    *(archive + 4) |= 1u;
    v7 = *(archive + 3);
    if (!v7)
    {
      v8 = *(archive + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F000](v8);
      *(archive + 3) = v7;
    }

    [(NSUUID *)outOfSyncToken tsp_saveToMessage:v7];
  }

  canClearOutOfSyncToken = self->_canClearOutOfSyncToken;
  *(archive + 4) |= 2u;
  *(archive + 32) = canClearOutOfSyncToken;
}

@end