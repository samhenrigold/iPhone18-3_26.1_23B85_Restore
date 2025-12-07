@interface TSDDrawableInfo
- (BOOL)hasActionBuilds;
- (BOOL)hasBuildOfAnimationType:(int64_t)type;
- (BOOL)hasContentBuilds;
- (BOOL)isRightToLeft;
- (BOOL)mayHaveImplicitBuildEvents;
- (BOOL)swizzled_matchesObjectPlaceholderGeometry;
- (KNBuild)buildIn;
- (KNBuild)buildOut;
- (KNSlide)slide;
- (NSArray)actionBuildChunks;
- (NSArray)activeBuildChunks;
- (NSArray)buildChunks;
- (NSArray)ghostInfos;
- (NSSet)actionBuilds;
- (NSSet)builds;
- (NSSet)contentBuilds;
- (id)buildChunksForAnimationType:(int64_t)type;
- (id)validBuildsInBuilds:(id)builds;
- (unint64_t)buildCount;
- (void)swizzled_setMatchesObjectPlaceholderGeometry:(BOOL)geometry;
@end

@implementation TSDDrawableInfo

- (KNSlide)slide
{
  objc_opt_class();
  v3 = [KNAbstractSlide parentSlideForInfo:self];
  v4 = TSUDynamicCast();

  return v4;
}

- (BOOL)hasActionBuilds
{
  actionBuilds = [(TSDDrawableInfo *)self actionBuilds];
  v3 = [actionBuilds count] != 0;

  return v3;
}

- (NSSet)actionBuilds
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide buildsForDrawable:self type:4];

  return v4;
}

- (BOOL)hasContentBuilds
{
  contentBuilds = [(TSDDrawableInfo *)self contentBuilds];
  v3 = [contentBuilds count] != 0;

  return v3;
}

- (NSSet)contentBuilds
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide buildsForDrawable:self type:5];

  return v4;
}

- (KNBuild)buildIn
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide inBuildForDrawable:self];

  return v4;
}

- (KNBuild)buildOut
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide outBuildForDrawable:self];

  return v4;
}

- (unint64_t)buildCount
{
  builds = [(TSDDrawableInfo *)self builds];
  v3 = builds;
  if (builds)
  {
    v4 = [builds count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasBuildOfAnimationType:(int64_t)type
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v6 = [abstractSlide buildsForDrawable:self type:type];
  if (v6)
  {
    abstractSlide2 = [(TSDDrawableInfo *)self abstractSlide];
    v8 = [abstractSlide2 buildsForDrawable:self type:type];
    v9 = [v8 count] != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSSet)builds
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide buildsForDrawable:self type:0];

  return v4;
}

- (id)validBuildsInBuilds:(id)builds
{
  buildsCopy = builds;
  animationFilters = [(TSDDrawableInfo *)self animationFilters];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275E396C8;
  v11[3] = &unk_27A6996A0;
  v12 = animationFilters;
  v7 = animationFilters;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [buildsCopy filteredSetUsingPredicate:v8];

  return v9;
}

- (NSArray)activeBuildChunks
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide activeChunksForDrawable:self];

  return v4;
}

- (NSArray)actionBuildChunks
{
  v18 = *MEMORY[0x277D85DE8];
  buildChunks = [(TSDDrawableInfo *)self buildChunks];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = buildChunks;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        build = [v9 build];
        isActionBuild = [build isActionBuild];

        if (isActionBuild)
        {
          [array addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)buildChunks
{
  builds = [(TSDDrawableInfo *)self builds];
  v3 = [KNBuildUtility chunksInBuilds:builds];

  return v3;
}

- (id)buildChunksForAnimationType:(int64_t)type
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v6 = [abstractSlide chunksForDrawable:self animationType:type];

  return v6;
}

- (NSArray)ghostInfos
{
  abstractSlide = [(TSDDrawableInfo *)self abstractSlide];
  v4 = [abstractSlide ghostInfosForDrawable:self];

  return v4;
}

- (BOOL)swizzled_matchesObjectPlaceholderGeometry
{
  slide = [(TSDDrawableInfo *)self slide];
  v4 = slide;
  if (slide)
  {
    infosUsingObjectPlaceholderGeometry = [slide infosUsingObjectPlaceholderGeometry];
    v6 = [infosUsingObjectPlaceholderGeometry containsObject:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)swizzled_setMatchesObjectPlaceholderGeometry:(BOOL)geometry
{
  geometryCopy = geometry;
  slide = [(TSDDrawableInfo *)self slide];
  if (slide)
  {
    v8 = slide;
    infosUsingObjectPlaceholderGeometry = [slide infosUsingObjectPlaceholderGeometry];
    v7 = [infosUsingObjectPlaceholderGeometry containsObject:self];

    slide = v8;
    if (v7 != geometryCopy)
    {
      if (geometryCopy)
      {
        [v8 addInfoUsingObjectPlaceholderGeometry:self];
      }

      else
      {
        [v8 removeInfoUsingObjectPlaceholderGeometry:self];
      }

      slide = v8;
    }
  }
}

- (BOOL)mayHaveImplicitBuildEvents
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isRightToLeft
{
  slide = [(TSDDrawableInfo *)self slide];
  v3 = slide;
  if (slide)
  {
    documentIsRTL = [slide documentIsRTL];
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableInfo(KNAdditions) isRightToLeft]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSDDrawableInfo-KNAdditions.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:187 isFatal:0 description:{"invalid nil value for '%{public}s'", "slide"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    documentIsRTL = 0;
  }

  return documentIsRTL;
}

@end