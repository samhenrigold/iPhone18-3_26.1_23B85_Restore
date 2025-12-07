@interface AVPlayerInterstitialEvent
+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem date:(NSDate *)date;
+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem identifier:(NSString *)identifier date:(NSDate *)date templateItems:(NSArray *)templateItems restrictions:(AVPlayerInterstitialEventRestrictions)restrictions resumptionOffset:(CMTime *)resumptionOffset playoutLimit:(CMTime *)playoutLimit userDefinedAttributes:(NSDictionary *)userDefinedAttributes;
+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem identifier:(NSString *)identifier time:(CMTime *)time templateItems:(NSArray *)templateItems restrictions:(AVPlayerInterstitialEventRestrictions)restrictions resumptionOffset:(CMTime *)resumptionOffset playoutLimit:(CMTime *)playoutLimit userDefinedAttributes:(NSDictionary *)userDefinedAttributes;
+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem time:(CMTime *)time;
+ (id)newItemArrayWithCopiedItems:(id)items;
- (AVPlayerInterstitialEvent)initWithPrimaryItem:(id)item identifier:(id)identifier time:(id *)time date:(id)date templateItems:(id)items restrictions:(unint64_t)restrictions resumptionOffset:(id *)offset playoutLimit:(id *)self0 userDefinedAttributes:(id)self1;
- (AVPlayerInterstitialEvent)initWithPrimaryItem:(id)item time:(id *)time date:(id)date;
- (AVPlayerInterstitialEvent)initWithPrimaryItemAndFigEvent:(id)event templateItems:(id)items figEvent:(OpaqueFigPlayerInterstitialEvent *)figEvent;
- (AVPlayerInterstitialEventCue)cue;
- (BOOL)_participatesInCoordinatedPlayback;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(int *)validate;
- (NSArray)templateItems;
- (NSDate)date;
- (NSDictionary)assetListResponse;
- (NSDictionary)userDefinedAttributes;
- (NSString)identifier;
- (NSString)skipControlLocalizedLabelBundleKey;
- (id)_internalTemplateItems;
- (id)assetURLsReturningError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_updateStartOffset;
- (void)checkMutability;
- (void)dealloc;
- (void)setAlignsResumptionWithPrimarySegmentBoundary:(BOOL)alignsResumptionWithPrimarySegmentBoundary;
- (void)setAlignsStartWithPrimarySegmentBoundary:(BOOL)alignsStartWithPrimarySegmentBoundary;
- (void)setContentMayVary:(BOOL)vary;
- (void)setCue:(AVPlayerInterstitialEventCue)cue;
- (void)setDate:(NSDate *)date;
- (void)setIdentifier:(NSString *)identifier;
- (void)setPrimaryItem:(AVPlayerItem *)primaryItem;
- (void)setRestrictions:(AVPlayerInterstitialEventRestrictions)restrictions;
- (void)setSkipControlLocalizedLabelBundleKey:(id)key;
- (void)setSupplementsPrimaryContent:(BOOL)content;
- (void)setTemplateItems:(NSArray *)templateItems;
- (void)setTimelineOccupancy:(int64_t)occupancy;
- (void)setUserDefinedAttributes:(NSDictionary *)userDefinedAttributes;
- (void)setWillPlayOnce:(BOOL)willPlayOnce;
@end

@implementation AVPlayerInterstitialEvent

+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem identifier:(NSString *)identifier time:(CMTime *)time templateItems:(NSArray *)templateItems restrictions:(AVPlayerInterstitialEventRestrictions)restrictions resumptionOffset:(CMTime *)resumptionOffset playoutLimit:(CMTime *)playoutLimit userDefinedAttributes:(NSDictionary *)userDefinedAttributes
{
  if ((time->flags & 0x1D) != 1)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", identifier, time, templateItems, restrictions, resumptionOffset, "CMTIME_IS_NUMERIC(time)"), 0}];
    objc_exception_throw(v18);
  }

  v16 = [self alloc];
  v21 = *time;
  v20 = *resumptionOffset;
  v19 = *playoutLimit;
  return [v16 initWithPrimaryItem:primaryItem identifier:identifier time:&v21 date:0 templateItems:templateItems restrictions:restrictions resumptionOffset:&v20 playoutLimit:&v19 userDefinedAttributes:userDefinedAttributes];
}

+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem identifier:(NSString *)identifier date:(NSDate *)date templateItems:(NSArray *)templateItems restrictions:(AVPlayerInterstitialEventRestrictions)restrictions resumptionOffset:(CMTime *)resumptionOffset playoutLimit:(CMTime *)playoutLimit userDefinedAttributes:(NSDictionary *)userDefinedAttributes
{
  if (!date)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", identifier, 0, templateItems, restrictions, resumptionOffset, "date != nil"), 0}];
    objc_exception_throw(v18);
  }

  v16 = [self alloc];
  v21 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  v20 = *resumptionOffset;
  v19 = *playoutLimit;
  return [v16 initWithPrimaryItem:primaryItem identifier:identifier time:&v21 date:date templateItems:templateItems restrictions:restrictions resumptionOffset:&v20 playoutLimit:&v19 userDefinedAttributes:userDefinedAttributes];
}

- (id)assetURLsReturningError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVPlayerInterstitialEvent_assetURLsReturningError___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v18;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v19[5];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [objc_msgSend(*(*(&v13 + 1) + 8 * i) "asset")];
        if (!v11)
        {
          array = 0;
          if (error)
          {
            *error = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Template items for interstitial events must employ assets that can be referenced by URL (AVURLAssets)" userInfo:0]);
          }

          goto LABEL_12;
        }

        [array addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  _Block_object_dispose(&v18, 8);
  return array;
}

void *__53__AVPlayerInterstitialEvent_assetURLsReturningError___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)newItemArrayWithCopiedItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v13 = *MEMORY[0x1E6960CC0];
    v8 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 copy];
        if (v10)
        {
          objc_msgSend_currentTime(v10);
        }

        else
        {
          memset(v18, 0, sizeof(v18));
        }

        v16 = v13;
        v17 = v8;
        v14 = v13;
        v15 = v8;
        [v11 seekToTime:v18 toleranceBefore:&v16 toleranceAfter:&v14 completionHandler:0];
        [v4 addObject:v11];
      }

      v6 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

- (AVPlayerInterstitialEvent)initWithPrimaryItem:(id)item identifier:(id)identifier time:(id *)time date:(id)date templateItems:(id)items restrictions:(unint64_t)restrictions resumptionOffset:(id *)offset playoutLimit:(id *)self0 userDefinedAttributes:(id)self1
{
  v36.receiver = self;
  v36.super_class = AVPlayerInterstitialEvent;
  v16 = [(AVPlayerInterstitialEvent *)&v36 init];
  v18 = v16;
  if (v16)
  {
    if (!date && (time->var2 & 0x1D) != 1)
    {
      v21 = v16;
      v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v18 userInfo:{a2, @"invalid parameter not satisfying: %s", v22, v23, v24, v25, v26, "date != nil || CMTIME_IS_NUMERIC(time)"), 0}];
      objc_exception_throw(v27);
    }

    v16->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayerinterstitialevent.ivars", v17);
    objc_storeWeak(&v18->_primaryItem, item);
    v18->_templateItems = [AVPlayerInterstitialEvent newItemArrayWithCopiedItems:items];
    v35 = 0;
    if ([(AVPlayerInterstitialEvent *)v18 assetURLsReturningError:&v35])
    {
      attributesCopy = attributes;
      if (!attributes)
      {
        attributesCopy = MEMORY[0x1E695E0F8];
      }

      v33 = *&time->var0;
      var3 = time->var3;
      v32 = *offset;
      v31 = *limit;
      v30 = attributesCopy;
      WORD2(v29) = 256;
      LODWORD(v29) = 0;
      BYTE2(v28) = 0;
      LOWORD(v28) = 0;
      FigPlayerInterstitialEventCreate();
      [(AVPlayerInterstitialEvent *)v18 _updateStartOffset:v28];
    }

    else
    {

      if ([v35 code] == -11999)
      {
        objc_exception_throw([objc_msgSend(v35 "userInfo")]);
      }

      return 0;
    }
  }

  return v18;
}

- (AVPlayerInterstitialEvent)initWithPrimaryItem:(id)item time:(id *)time date:(id)date
{
  v20.receiver = self;
  v20.super_class = AVPlayerInterstitialEvent;
  v9 = [(AVPlayerInterstitialEvent *)&v20 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    if (!date && (time->var2 & 0x1D) != 1)
    {
      v13 = v9;
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(p_isa userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "date != nil || CMTIME_IS_NUMERIC(time)"), 0}];
      objc_exception_throw(v19);
    }

    v9->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayerinterstitialevent.ivars", v10);
    objc_storeWeak(p_isa + 2, item);
    FigPlayerInterstitialEventCreate();
  }

  return p_isa;
}

+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem time:(CMTime *)time
{
  v6 = [self alloc];
  v8 = *time;
  return [v6 initWithPrimaryItem:primaryItem time:&v8 date:0];
}

+ (AVPlayerInterstitialEvent)interstitialEventWithPrimaryItem:(AVPlayerItem *)primaryItem date:(NSDate *)date
{
  v6 = [self alloc];
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  return [v6 initWithPrimaryItem:primaryItem time:&v8 date:date];
}

- (AVPlayerInterstitialEvent)initWithPrimaryItemAndFigEvent:(id)event templateItems:(id)items figEvent:(OpaqueFigPlayerInterstitialEvent *)figEvent
{
  v11.receiver = self;
  v11.super_class = AVPlayerInterstitialEvent;
  v9 = [(AVPlayerInterstitialEvent *)&v11 init];
  if (v9)
  {
    v9->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayerinterstitialevent.ivars", v8);
    objc_storeWeak(&v9->_primaryItem, event);
    v9->_templateItems = [items copy];
    v9->_figEvent = CFRetain(figEvent);
  }

  return v9;
}

- (void)dealloc
{
  figEvent = self->_figEvent;
  if (figEvent)
  {
    CFRelease(figEvent);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  v5.receiver = self;
  v5.super_class = AVPlayerInterstitialEvent;
  [(AVPlayerInterstitialEvent *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = FigPlayerInterstitialEventCopyAsDictionary();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVPlayerInterstitialEvent_copyWithZone___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v12;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  objc_loadWeak(&self->_primaryItem);
  FigPlayerInterstitialEventCreateFromDictionary();
  v7 = [AVPlayerInterstitialEvent alloc];
  Weak = objc_loadWeak(&self->_primaryItem);
  v9 = [(AVPlayerInterstitialEvent *)v7 initWithPrimaryItemAndFigEvent:Weak templateItems:v13[5] figEvent:0];
  CFRelease(v5);

  _Block_object_dispose(&v12, 8);
  return v9;
}

void *__42__AVPlayerInterstitialEvent_copyWithZone___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerInterstitialEvent_description__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__40__AVPlayerInterstitialEvent_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  result = [objc_msgSend(v3 stringWithFormat:@"<%@: %p, primaryItem = %p, ctx = %p, templateItems = %p, id = %@>", v5, *(a1 + 32), objc_loadWeak((*(a1 + 32) + 16)), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), objc_msgSend(*(a1 + 32), "identifier")), "copy"];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && -[AVPlayerItem isEqual:](-[AVPlayerInterstitialEvent primaryItem](self, "primaryItem"), "isEqual:", [equal primaryItem]) && FigCFEqual();
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerInterstitialEvent_hash__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__AVPlayerInterstitialEvent_hash__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "primaryItem")];
  v3 = CFHash(*(*(a1 + 32) + 24)) ^ v2;
  result = [*(*(a1 + 32) + 32) hash];
  *(*(*(a1 + 40) + 8) + 24) = v3 ^ result;
  return result;
}

- (void)checkMutability
{
  if (FigPlayerInterstitialEventIsImmutable())
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"events returned by AVPlayerInterstitialEventMonitor are not mutable; modify a copy instead" userInfo:0]);
  }
}

- (void)setPrimaryItem:(AVPlayerItem *)primaryItem
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  objc_storeWeak(&self->_primaryItem, primaryItem);
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD800](figEvent, primaryItem);
}

- (NSString)identifier
{
  v2 = FigPlayerInterstitialEventCopyIdentifier();
  v3 = [v2 copy];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)setIdentifier:(NSString *)identifier
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = [(NSString *)identifier copy];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD7C8](figEvent, v5);
}

- (NSDate)date
{
  started = FigPlayerInterstitialEventCopyStartDate();
  v3 = [started copy];
  if (started)
  {
    CFRelease(started);
  }

  return v3;
}

- (void)setDate:(NSDate *)date
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = [(NSDate *)date copy];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD830](figEvent, v5);
}

- (NSArray)templateItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayerInterstitialEvent_templateItems__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __42__AVPlayerInterstitialEvent_templateItems__block_invoke(uint64_t a1)
{
  result = [AVPlayerInterstitialEvent newItemArrayWithCopiedItems:*(*(a1 + 32) + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setTemplateItems:(NSArray *)templateItems
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = [AVPlayerInterstitialEvent newItemArrayWithCopiedItems:templateItems];
  ivarAccessQueue = self->_ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AVPlayerInterstitialEvent_setTemplateItems___block_invoke;
  v8[3] = &unk_1E7460DF0;
  v8[4] = self;
  v8[5] = v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  v7 = 0;
  if (!-[AVPlayerInterstitialEvent assetURLsReturningError:](self, "assetURLsReturningError:", &v7) && [v7 code] == -11999)
  {
    objc_exception_throw([objc_msgSend(v7 "userInfo")]);
  }

  [(AVPlayerInterstitialEvent *)self _updateStartOffset];
  FigPlayerInterstitialEventSetInterstitialAssetURLs();
}

- (void)setRestrictions:(AVPlayerInterstitialEventRestrictions)restrictions
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD808](figEvent, restrictions);
}

- (void)setAlignsStartWithPrimarySegmentBoundary:(BOOL)alignsStartWithPrimarySegmentBoundary
{
  v3 = alignsStartWithPrimarySegmentBoundary;
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = FigPlayerInterstitialEventGetSnapOptions() & 0xFFFFFFFE;
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD828](figEvent, v5 | v3);
}

- (void)setAlignsResumptionWithPrimarySegmentBoundary:(BOOL)alignsResumptionWithPrimarySegmentBoundary
{
  v3 = alignsResumptionWithPrimarySegmentBoundary;
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = FigPlayerInterstitialEventGetSnapOptions() & 0xFFFFFFFD;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD828](figEvent, v5 | v6);
}

- (AVPlayerInterstitialEventCue)cue
{
  if (FigPlayerInterstitialEventIsPreRoll())
  {
    return @"EventJoinCue";
  }

  if (FigPlayerInterstitialEventIsPostRoll())
  {
    return @"EventLeaveCue";
  }

  return @"EventNoCue";
}

- (void)setCue:(AVPlayerInterstitialEventCue)cue
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  FigPlayerInterstitialEventSetIsPreRoll();
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD7E0](figEvent, cue == @"EventLeaveCue");
}

- (void)setWillPlayOnce:(BOOL)willPlayOnce
{
  v3 = willPlayOnce;
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD7B0](figEvent, v3);
}

- (NSDictionary)userDefinedAttributes
{
  v2 = FigPlayerInterstitialEventCopyExtraAttributes();
  v3 = [v2 copy];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)setUserDefinedAttributes:(NSDictionary *)userDefinedAttributes
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  v5 = [(NSDictionary *)userDefinedAttributes copy];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD7B8](figEvent, v5);
}

- (NSDictionary)assetListResponse
{
  v2 = FigPlayerInterstitialEventCopyAssetListResponse();
  v3 = [v2 copy];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)setTimelineOccupancy:(int64_t)occupancy
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD848](figEvent, occupancy);
}

- (void)setSupplementsPrimaryContent:(BOOL)content
{
  contentCopy = content;
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD840](figEvent, contentCopy);
}

- (void)setContentMayVary:(BOOL)vary
{
  varyCopy = vary;
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD7A8](figEvent, varyCopy);
}

- (NSString)skipControlLocalizedLabelBundleKey
{
  v2 = FigPlayerInterstitialEventCopySkipControlLocalizedLabelBundleKey();
  v3 = [v2 copy];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)setSkipControlLocalizedLabelBundleKey:(id)key
{
  [(AVPlayerInterstitialEvent *)self checkMutability];
  figEvent = self->_figEvent;

  MEMORY[0x1EEDCD818](figEvent, key);
}

- (id)_internalTemplateItems
{
  v2 = [(NSArray *)self->_templateItems copy];

  return v2;
}

- (BOOL)validate:(int *)validate
{
  v4 = FigPlayerInterstitialEventValidate();
  if (validate)
  {
    *validate = v4;
  }

  return v4 == 0;
}

- (BOOL)_participatesInCoordinatedPlayback
{
  if ([(AVPlayerInterstitialEvent *)self contentMayVary])
  {
    LOBYTE(timelineOccupancy) = 0;
  }

  else
  {
    timelineOccupancy = [(AVPlayerInterstitialEvent *)self timelineOccupancy];
    if (timelineOccupancy)
    {
      LOBYTE(timelineOccupancy) = [(AVPlayerInterstitialEvent *)self cue]!= @"EventJoinCue";
    }
  }

  return timelineOccupancy;
}

- (void)_updateStartOffset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVPlayerInterstitialEvent__updateStartOffset__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if ([v7[5] count])
  {
    v4 = [v7[5] objectAtIndex:0];
    if (v4)
    {
      objc_msgSend_currentTime(v4);
    }

    FigPlayerInterstitialEventSetFirstItemStartOffset();
  }

  _Block_object_dispose(&v6, 8);
}

void *__47__AVPlayerInterstitialEvent__updateStartOffset__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end