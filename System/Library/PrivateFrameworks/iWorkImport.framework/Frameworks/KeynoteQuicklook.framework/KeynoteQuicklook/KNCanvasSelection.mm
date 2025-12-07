@interface KNCanvasSelection
+ (id)emptySelection;
- (BOOL)containsBuildChunksOfAnimationType:(int64_t)type;
- (BOOL)containsOnlyUnlockedInfosSupportingHyperlinkActions;
- (BOOL)isEqual:(id)equal;
- (KNCanvasSelection)initWithInfos:(id)infos buildChunks:(id)chunks;
- (KNCanvasSelection)initWithPersistableInfos:(id)infos drawableToActionGhostIndexPromiseMap:(id)map buildChunks:(id)chunks;
- (NSSet)drawableInfos;
- (NSSet)unlockedDrawableInfos;
- (NSSet)unlockedInfosSupportingHyperlinkActions;
- (id)UUIDDescription;
- (id)copyExcludingBuildChunks:(id)chunks;
- (id)copyReplacingChunksWithChunks:(id)chunks;
- (id)p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap:(id)map;
- (id)subclassDescription;
- (unint64_t)hash;
@end

@implementation KNCanvasSelection

+ (id)emptySelection
{
  v2 = [KNCanvasSelection alloc];
  v3 = objc_alloc_init(MEMORY[0x277D812B8]);
  v4 = [(KNCanvasSelection *)v2 initWithPersistableInfos:0 drawableToActionGhostIndexPromiseMap:v3 buildChunks:0];

  return v4;
}

- (KNCanvasSelection)initWithPersistableInfos:(id)infos drawableToActionGhostIndexPromiseMap:(id)map buildChunks:(id)chunks
{
  infosCopy = infos;
  chunksCopy = chunks;
  v10 = [(KNCanvasSelection *)self p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap:map];
  if (infosCopy)
  {
    [MEMORY[0x277CBEB58] setWithSet:infosCopy];
  }

  else
  {
    [MEMORY[0x277CBEB58] set];
  }
  v11 = ;
  [v11 unionSet:v10];
  v16.receiver = self;
  v16.super_class = KNCanvasSelection;
  v12 = [(TSDCanvasSelection *)&v16 initWithInfos:v11];
  if (v12)
  {
    v13 = [chunksCopy copy];
    buildChunks = v12->_buildChunks;
    v12->_buildChunks = v13;
  }

  return v12;
}

- (KNCanvasSelection)initWithInfos:(id)infos buildChunks:(id)chunks
{
  chunksCopy = chunks;
  infosCopy = infos;
  v8 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_275DD7C00;
  v13[3] = &unk_27A698FE8;
  v13[4] = v8;
  v9 = [infosCopy objectsPassingTest:v13];

  v10 = objc_alloc_init(MEMORY[0x277D812B8]);
  v11 = [(KNCanvasSelection *)self initWithPersistableInfos:v9 drawableToActionGhostIndexPromiseMap:v10 buildChunks:chunksCopy];

  return v11;
}

- (id)copyExcludingBuildChunks:(id)chunks
{
  chunksCopy = chunks;
  v5 = [(KNCanvasSelection *)self copy];
  v6 = [v5[2] mutableCopy];
  [v6 minusSet:chunksCopy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (id)copyReplacingChunksWithChunks:(id)chunks
{
  chunksCopy = chunks;
  v5 = [(KNCanvasSelection *)self copy];
  v6 = [chunksCopy copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)containsBuildChunksOfAnimationType:(int64_t)type
{
  v3 = MEMORY[0x277D81150];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNCanvasSelection containsBuildChunksOfAnimationType:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNCanvasSelection.m"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:199 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNCanvasSelection containsBuildChunksOfAnimationType:]"];
  v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (NSSet)unlockedInfosSupportingHyperlinkActions
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNCanvasSelection unlockedInfosSupportingHyperlinkActions]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNCanvasSelection.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:218 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNCanvasSelection unlockedInfosSupportingHyperlinkActions]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)containsOnlyUnlockedInfosSupportingHyperlinkActions
{
  infos = [(TSDCanvasSelection *)self infos];
  v4 = [infos count];

  unlockedInfosSupportingHyperlinkActions = [(KNCanvasSelection *)self unlockedInfosSupportingHyperlinkActions];
  v6 = [unlockedInfosSupportingHyperlinkActions count];

  return v4 == v6;
}

- (NSSet)unlockedDrawableInfos
{
  v3 = objc_opt_class();
  infos = [(TSDCanvasSelection *)self infos];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DD7FF4;
  v7[3] = &unk_27A698FE8;
  v7[4] = v3;
  v5 = [infos objectsPassingTest:v7];

  return v5;
}

- (NSSet)drawableInfos
{
  v3 = objc_opt_class();
  infos = [(TSDCanvasSelection *)self infos];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DD80FC;
  v7[3] = &unk_27A698FE8;
  v7[4] = v3;
  v5 = [infos objectsPassingTest:v7];

  return v5;
}

- (id)p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap:(id)map
{
  v18 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = mapCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v13}];
        if (![v11 count])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10.receiver = self;
  v10.super_class = KNCanvasSelection;
  equalCopy = equal;
  v5 = [(TSDCanvasSelection *)&v10 isEqual:equalCopy];
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] tsu_set:v6[2] isEqualToSet:{self->_buildChunks, v10.receiver, v10.super_class}];
  }

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = KNCanvasSelection;
  v3 = [(TSDCanvasSelection *)&v5 hash];
  return [(NSSet *)self->_buildChunks hash]^ v3;
}

- (id)subclassDescription
{
  unlockedInfos = [(TSDCanvasSelection *)self unlockedInfos];
  v4 = [unlockedInfos count];
  infos = [(TSDCanvasSelection *)self infos];
  v6 = [infos count];

  if (v4 == v6)
  {
    v7 = &stru_2884D8E20;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    unlockedInfos2 = [(TSDCanvasSelection *)self unlockedInfos];
    v7 = [v8 stringWithFormat:@"\n unlockedInfos: %@", unlockedInfos2];
  }

  buildChunks = [(KNCanvasSelection *)self buildChunks];
  v11 = [buildChunks count];

  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    buildChunks2 = [(KNCanvasSelection *)self buildChunks];
    v14 = [v12 stringWithFormat:@"\n chunks: %@", buildChunks2];
  }

  else
  {
    v14 = &stru_2884D8E20;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", &stru_2884D8E20, v7, v14];

  return v15;
}

- (id)UUIDDescription
{
  v7.receiver = self;
  v7.super_class = KNCanvasSelection;
  uUIDDescription = [(TSDCanvasSelection *)&v7 UUIDDescription];
  subclassDescription = [(KNCanvasSelection *)self subclassDescription];
  v5 = [uUIDDescription stringByAppendingFormat:@"%@", subclassDescription];

  return v5;
}

@end