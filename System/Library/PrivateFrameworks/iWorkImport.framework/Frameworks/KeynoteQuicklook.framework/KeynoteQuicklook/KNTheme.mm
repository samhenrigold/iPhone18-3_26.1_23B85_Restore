@interface KNTheme
+ (NSSet)presetKinds;
+ (id)classicThemeNameFromTheme:(id)theme;
+ (id)generateUUID;
+ (id)makeLiveVideoSourceCollectionWithContext:(id)context;
+ (id)nativeThemeNameFromTheme:(id)theme;
+ (id)themeNameForCustomOrUnknownTheme;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)registerPresetSourceClasses;
- (BOOL)containsSlideNode:(id)node;
- (BOOL)containsTemplateSlideWithName:(id)name;
- (BOOL)customTimingCurvesContainsName:(id)name;
- (CGSize)thumbnailSize;
- (KNSlideNode)defaultTemplateSlideNode;
- (KNTheme)initWithContext:(id)context documentStylesheet:(id)stylesheet;
- (TSWPParagraphStyle)defaultPresenterNotesParagraphStyle;
- (double)cornerRadius;
- (id)captionStyles;
- (id)childEnumerator;
- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index;
- (id)formulaReferenceNameForSlideNode:(id)node;
- (id)i_findDefaultTemplateSlideDuringArchiving;
- (id)mappedTemplateSlideForPasteForSlide:(id)slide;
- (id)mappedTemplateSlideForPasteForTemplateSlide:(id)slide;
- (id)mappedTemplateSlideForThemeChangeForTemplateSlide:(id)slide;
- (id)modelPathComponentForChild:(id)child;
- (id)nameForTemplateSlideCopyWithName:(id)name;
- (id)orderedSlideNodesInSelection:(id)selection;
- (id)p_findDefaultTemplateSlideWithoutLoadingSlides;
- (id)p_findFallbackDefaultTemplateSlide;
- (id)p_mappedTemplateSlideForTemplateSlide:(id)slide scoringHeuristic:(id)heuristic;
- (id)p_nameByIncrementingCounterAfterStringToAppend:(id)append forOriginalName:(id)name testForExistingName:(id)existingName;
- (id)slideNamesMatchingPrefix:(id)prefix;
- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive;
- (id)templateSlideWithName:(id)name;
- (id)themeCurvesForBuilds:(id)builds slideNodes:(id)nodes;
- (id)undeletableStyles;
- (id)updatedThemeCurveInfoForPastedThemeCurves:(id)curves;
- (int)p_matchScoreForTemplateSlide:(id)slide toTemplateSlide:(id)templateSlide;
- (unint64_t)indexOfSlideNode:(id)node;
- (void)addClassicThemeRecord:(id)record;
- (void)addDefaultPresenterNotesStylesIfAbsent;
- (void)addTemplateSlideNode:(id)node withThumbnails:(id)thumbnails dolcContext:(id)context;
- (void)createDefaultMotionBackgroundStylePresetsIfNeeded;
- (void)insertContainedModel:(id)model atIndex:(unint64_t)index;
- (void)insertTemplateSlideNode:(id)node withThumbnails:(id)thumbnails atIndex:(unint64_t)index dolcContext:(id)context;
- (void)invalidateSlideNameCache;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveModel:(id)model toIndex:(unint64_t)index;
- (void)p_cacheSlideNodes;
- (void)p_selectFallbackTemplateSlideAsDefault;
- (void)p_setDefaultTemplateSlideNode:(id)node;
- (void)removeAllClassicThemeRecords;
- (void)removeAllTemplateSlides;
- (void)removeContainedModel:(id)model;
- (void)removeCustomTimingCurveWithName:(id)name;
- (void)removeTemplateSlideNode:(id)node;
- (void)resolveDefaultTemplateSlide;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)selectFallbackTemplateSlideAsDefault;
- (void)setClassicThemeRecords:(id)records;
- (void)setCustomEffectTimingCurves:(id)curves;
- (void)setCustomTimingCurve:(id)curve forName:(id)name;
- (void)setDefaultTemplateSlideNode:(id)node;
- (void)setTemplateSlides:(id)slides;
- (void)setUUID:(id)d;
- (void)takeLiveVideoSourceCollectionFromTheme:(id)theme;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNTheme

- (void)setTemplateSlides:(id)slides
{
  slidesCopy = slides;
  if (self->_templateSlides != slidesCopy)
  {
    v6 = slidesCopy;
    [(KNTheme *)self willModify];
    objc_storeStrong(&self->_templateSlides, slides);
    slidesCopy = v6;
  }
}

- (void)setUUID:(id)d
{
  dCopy = d;
  if (self->_UUID != dCopy)
  {
    v6 = dCopy;
    [(KNTheme *)self willModify];
    objc_storeStrong(&self->_UUID, d);
    dCopy = v6;
  }
}

- (KNSlideNode)defaultTemplateSlideNode
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_275D82E64;
  v14 = sub_275D82E74;
  v15 = 0;
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D82E7C;
  block[3] = &unk_27A698618;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(defaultTemplateSlideNodeQueue, block);
  v3 = v11[5];
  if (!v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme defaultTemplateSlideNode]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:128 isFatal:0 description:{"invalid nil value for '%{public}s'", "defaultTemplateSlideNode"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v3 = v11[5];
  }

  v7 = v3;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)p_setDefaultTemplateSlideNode:(id)node
{
  if (node)
  {
    objc_storeWeak(&self->_defaultTemplateSlideNode, node);
    self->_defaultTemplateSlideNodeIsOurBestGuess = 0;
  }

  else
  {
    self->_defaultTemplateSlideNodeIsOurBestGuess = 1;
    p_defaultTemplateSlideNode = &self->_defaultTemplateSlideNode;

    objc_storeWeak(p_defaultTemplateSlideNode, 0);
  }
}

- (void)setDefaultTemplateSlideNode:(id)node
{
  nodeCopy = node;
  [(KNTheme *)self willModify];
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275D83104;
  v7[3] = &unk_27A697C10;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, v7);
}

- (double)cornerRadius
{
  uUID = [(KNTheme *)self UUID];
  v3 = [uUID isEqualToString:@"BA9B2754-51C9-4F08-AE5B-20C9754ED937"];

  result = 0.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

- (id)captionStyles
{
  documentStylesheet = [(KNTheme *)self documentStylesheet];
  if (!documentStylesheet)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme captionStyles]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:744 isFatal:0 description:{"invalid nil value for '%{public}s'", "documentStylesheet"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  context = [(KNTheme *)self context];
  documentRoot = [context documentRoot];
  documentLocale = [documentRoot documentLocale];

  v10 = [documentLocale localizedStringForKey:@"Caption Small" value:&stru_2884D8E20 table:@"Keynote"];
  v11 = [documentStylesheet stylesWithName:v10];

  return v11;
}

+ (id)generateUUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

+ (id)nativeThemeNameFromTheme:(id)theme
{
  uUID = [theme UUID];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"NativeThemes" ofType:@"plist"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v7 = [v6 objectForKeyedSubscript:uUID];

  return v7;
}

+ (id)classicThemeNameFromTheme:(id)theme
{
  uUID = [theme UUID];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"ClassicThemes" ofType:@"plist"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v7 = [v6 objectForKeyedSubscript:uUID];
  v8 = [v7 objectForKeyedSubscript:@"ClassicTheme"];

  return v8;
}

+ (id)themeNameForCustomOrUnknownTheme
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Custom Theme" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (KNTheme)initWithContext:(id)context documentStylesheet:(id)stylesheet
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = KNTheme;
  v7 = [(KNTheme *)&v19 initWithContext:contextCopy documentStylesheet:stylesheet];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    templateSlides = v7->_templateSlides;
    v7->_templateSlides = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    customEffectTimingCurves = v7->_customEffectTimingCurves;
    v7->_customEffectTimingCurves = v10;

    v12 = dispatch_queue_create("KNTheme.DefaultTemplateSlideNode", MEMORY[0x277D85CD8]);
    defaultTemplateSlideNodeQueue = v7->_defaultTemplateSlideNodeQueue;
    v7->_defaultTemplateSlideNodeQueue = v12;

    v14 = +[KNTheme generateUUID];
    UUID = v7->_UUID;
    v7->_UUID = v14;

    v16 = [objc_opt_class() makeLiveVideoSourceCollectionWithContext:contextCopy];
    liveVideoSourceCollection = v7->_liveVideoSourceCollection;
    v7->_liveVideoSourceCollection = v16;
  }

  [(KNTheme *)v7 addDefaultPresenterNotesStylesIfAbsent];

  return v7;
}

- (CGSize)thumbnailSize
{
  v2 = 133.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addTemplateSlideNode:(id)node withThumbnails:(id)thumbnails dolcContext:(id)context
{
  contextCopy = context;
  thumbnailsCopy = thumbnails;
  nodeCopy = node;
  templateSlides = [(KNTheme *)self templateSlides];
  -[KNTheme insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:](self, "insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:", nodeCopy, thumbnailsCopy, [templateSlides count], contextCopy);
}

- (void)insertTemplateSlideNode:(id)node withThumbnails:(id)thumbnails atIndex:(unint64_t)index dolcContext:(id)context
{
  v51 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  thumbnailsCopy = thumbnails;
  contextCopy = context;
  selfCopy = self;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_templateSlides;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        objectUUID = [nodeCopy objectUUID];
        objectUUID2 = [v15 objectUUID];
        v18 = [objectUUID isEqual:objectUUID2];

        if (v18)
        {
          v19 = MEMORY[0x277D81150];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:]"];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
          [v19 handleFailureInFunction:v20 file:v21 lineNumber:853 isFatal:0 description:"Duplicate template slide node is being inserted. An error has occurred in template slide mapping."];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v12);
  }

  objc_opt_class();
  slide = [nodeCopy slide];
  v23 = TSUDynamicCast();

  if (!v23)
  {
    v24 = MEMORY[0x277D81150];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:]"];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v24 handleFailureInFunction:v25 file:v26 lineNumber:858 isFatal:0 description:"templateSlideNode's slide must be a KNTemplateSlide."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNTheme *)self willModify];
  documentRoot = [(KNTheme *)self documentRoot];
  [nodeCopy willBeAddedToDocumentRoot:documentRoot dolcContext:contextCopy];

  [v23 willBeAddedToTheme:self];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = thumbnailsCopy;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v41 + 1) + 8 * j);
        [MEMORY[0x277D801D0] naturalSizeForImageData:v33];
        [nodeCopy addThumbnail:v33 atSize:?];
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v30);
  }

  v34 = [(NSArray *)selfCopy->_templateSlides mutableCopy];
  [(NSArray *)v34 insertObject:nodeCopy atIndex:index];
  templateSlides = selfCopy->_templateSlides;
  selfCopy->_templateSlides = v34;

  documentRoot2 = [(KNTheme *)selfCopy documentRoot];
  [nodeCopy wasAddedToDocumentRoot:documentRoot2 dolcContext:contextCopy];

  [v23 wasAddedToTheme:selfCopy];
  [(KNTheme *)selfCopy p_cacheSlideNodes];
}

- (BOOL)containsTemplateSlideWithName:(id)name
{
  v3 = [(KNTheme *)self templateSlideWithName:name];
  v4 = v3 != 0;

  return v4;
}

- (id)templateSlideWithName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_templateSlides;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      objc_opt_class();
      slide = [v9 slide];
      v11 = TSUDynamicCast();

      documentRoot = [(KNTheme *)self documentRoot];
      documentLocale = [documentRoot documentLocale];
      name = [v11 name];
      v15 = [documentLocale localizedCaseInsensitiveIsEqual:nameCopy toString:name];

      if (v15)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)nameForTemplateSlideCopyWithName:(id)name
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D83D48;
  v5[3] = &unk_27A698640;
  v5[4] = self;
  v3 = [name tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:v5];

  return v3;
}

- (void)setCustomEffectTimingCurves:(id)curves
{
  curvesCopy = curves;
  [(KNTheme *)self willModify];
  v5 = [curvesCopy mutableCopy];

  customEffectTimingCurves = self->_customEffectTimingCurves;
  self->_customEffectTimingCurves = v5;
}

- (void)setCustomTimingCurve:(id)curve forName:(id)name
{
  nameCopy = name;
  curveCopy = curve;
  [(KNTheme *)self willModify];
  [(NSMutableDictionary *)self->_customEffectTimingCurves setObject:curveCopy forKeyedSubscript:nameCopy];
}

- (BOOL)customTimingCurvesContainsName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_customEffectTimingCurves objectForKeyedSubscript:name];
  v4 = v3 != 0;

  return v4;
}

- (void)removeCustomTimingCurveWithName:(id)name
{
  nameCopy = name;
  [(KNTheme *)self willModify];
  [(NSMutableDictionary *)self->_customEffectTimingCurves removeObjectForKey:nameCopy];
}

- (id)updatedThemeCurveInfoForPastedThemeCurves:(id)curves
{
  v37 = *MEMORY[0x277D85DE8];
  curvesCopy = curves;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  customEffectTimingCurves = [(KNTheme *)self customEffectTimingCurves];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = curvesCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v23 = v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v23}];
        v12 = [customEffectTimingCurves objectForKeyedSubscript:v10];
        v13 = v12;
        if (v12)
        {
          bezierPath = [v12 bezierPath];
          bezierPath2 = [v11 bezierPath];
          v16 = [bezierPath isEqual:bezierPath2];

          if ((v16 & 1) == 0)
          {
            v18 = sub_275DC204C(v17);
            v19 = [v18 localizedStringForKey:@" copy" value:&stru_2884D8E20 table:@"Keynote"];

            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v29[0] = sub_275D84200;
            v29[1] = &unk_27A698640;
            v29[2] = selfCopy;
            v20 = [(KNTheme *)selfCopy p_nameByIncrementingCounterAfterStringToAppend:v19 forOriginalName:v10 testForExistingName:v28];
            [dictionary2 setObject:v11 forKeyedSubscript:v20];
            [dictionary setObject:v20 forKeyedSubscript:v10];
          }
        }

        else
        {
          [dictionary2 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v34[0] = @"KNThemeCustomEffectTimingCurveOldToNewNameMapKey";
  v34[1] = @"KNThemeCustomEffectTimingCurveCurvesToAddKey";
  v35[0] = dictionary;
  v35[1] = dictionary2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  return v21;
}

- (id)themeCurvesForBuilds:(id)builds slideNodes:(id)nodes
{
  v64 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  nodesCopy = nodes;
  selfCopy = self;
  if (!selfCopy)
  {
    v41 = MEMORY[0x277D81150];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme themeCurvesForBuilds:slideNodes:]"];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v41 handleFailureInFunction:v42 file:v43 lineNumber:968 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "currentTheme != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (buildsCopy)
    {
      goto LABEL_3;
    }

LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  if (!buildsCopy)
  {
    goto LABEL_28;
  }

LABEL_3:
  v47 = nodesCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB58] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v46 = buildsCopy;
  v10 = buildsCopy;
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v10);
        }

        attributes = [*(*(&v57 + 1) + 8 * i) attributes];
        v15Attributes = [attributes attributes];

        v17 = [v15Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
        [v9 tsu_addNonNilObject:v17];

        v18 = [v15Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
        [v9 tsu_addNonNilObject:v18];

        v19 = [v15Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
        [v9 tsu_addNonNilObject:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v12);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v47;
  v20 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v53 + 1) + 8 * j);
        objc_opt_class();
        slide = [v24 slide];
        transition = [slide transition];
        v27 = TSUCheckedDynamicCast();

        attributes2 = [v27 attributes];
        v28Attributes = [attributes2 attributes];

        v30 = [v28Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
        [v9 tsu_addNonNilObject:v30];

        v31 = [v28Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
        [v9 tsu_addNonNilObject:v31];

        v32 = [v28Attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
        [v9 tsu_addNonNilObject:v32];
      }

      v21 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v21);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v9;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
  v35 = dictionary;
  if (v34)
  {
    v36 = v34;
    v37 = *v50;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v49 + 1) + 8 * k);
        v40 = [(KNTheme *)selfCopy customTimingCurveWithName:v39];
        if (v40)
        {
          [dictionary setObject:v40 forKeyedSubscript:v39];
        }
      }

      v36 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v36);
  }

  buildsCopy = v46;
  nodesCopy = v47;
LABEL_29:

  return v35;
}

- (id)p_nameByIncrementingCounterAfterStringToAppend:(id)append forOriginalName:(id)name testForExistingName:(id)existingName
{
  appendCopy = append;
  nameCopy = name;
  existingNameCopy = existingName;
  v10 = nameCopy;
  v24 = v10;
  if (existingNameCopy[2](existingNameCopy, v10))
  {
    v11 = v10;
    do
    {
      v12 = MEMORY[0x277CBEB18];
      v13 = [v11 componentsSeparatedByString:appendCopy];
      v14 = [v12 arrayWithArray:v13];

      if ([v14 count] < 2)
      {
        [v14 addObject:&stru_2884D8E20];
      }

      else
      {
        lastObject = [v14 lastObject];
        v16 = [lastObject length];

        if (v16)
        {
          lastObject2 = [v14 lastObject];
          integerValue = [lastObject2 integerValue];

          [v14 removeLastObject];
          v19 = MEMORY[0x277CCABB8];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
          v21 = [v19 localizedStringFromNumber:v20 numberStyle:1];
        }

        else
        {
          [v14 removeLastObject];
          v21 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_2884F36C0 numberStyle:1];
        }

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v21];
        [v14 addObject:v22];
      }

      v10 = [v14 componentsJoinedByString:appendCopy];

      v11 = v10;
    }

    while ((existingNameCopy[2](existingNameCopy, v10) & 1) != 0);
  }

  return v10;
}

- (void)removeTemplateSlideNode:(id)node
{
  nodeCopy = node;
  slide = [nodeCopy slide];
  isTemplateSlide = [slide isTemplateSlide];

  if ((isTemplateSlide & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme removeTemplateSlideNode:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1039 isFatal:0 description:"templateSlideNode's slide must be a KNTemplateSlide."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNTheme *)self willModify];
  documentRoot = [(KNTheme *)self documentRoot];
  [nodeCopy willBeRemovedFromDocumentRoot:documentRoot];

  objc_opt_class();
  v12 = TSUDynamicCast();
  [v12 removeObject:nodeCopy];
  documentRoot2 = [(KNTheme *)self documentRoot];
  [nodeCopy wasRemovedFromDocumentRoot:documentRoot2];

  [(KNTheme *)self p_cacheSlideNodes];
}

- (void)removeAllTemplateSlides
{
  v28 = *MEMORY[0x277D85DE8];
  [(KNTheme *)self willModify];
  templateSlides = [(KNTheme *)self templateSlides];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [templateSlides countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(templateSlides);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        documentRoot = [(KNTheme *)self documentRoot];
        [v8 willBeRemovedFromDocumentRoot:documentRoot];

        ++v7;
      }

      while (v5 != v7);
      v5 = [templateSlides countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  array = [MEMORY[0x277CBEB18] array];
  [(KNTheme *)self setTemplateSlides:array];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = templateSlides;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        documentRoot2 = [(KNTheme *)self documentRoot];
        [v16 wasRemovedFromDocumentRoot:documentRoot2];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(KNTheme *)self p_cacheSlideNodes];
}

- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index
{
  templateSlides = [(KNTheme *)self templateSlides];
  v5 = [templateSlides count];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme defaultSlideNodeForNewSelectionNearestToIndex:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1079 isFatal:0 description:"Invalid index passed to the theme."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (v5)
  {
    if (v5 <= index)
    {
      [templateSlides lastObject];
    }

    else
    {
      [templateSlides objectAtIndexedSubscript:index];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsSlideNode:(id)node
{
  nodeCopy = node;
  templateSlides = [(KNTheme *)self templateSlides];
  v6 = [templateSlides containsObject:nodeCopy];

  return v6;
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  templateSlides = [(KNTheme *)self templateSlides];
  v6 = [templateSlides indexOfObject:nodeCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme indexOfSlideNode:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1100 isFatal:0 description:"Slide node does not exist in this theme."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return v6;
}

- (id)orderedSlideNodesInSelection:(id)selection
{
  v19 = *MEMORY[0x277D85DE8];
  slideNodes = [selection slideNodes];
  v5 = [slideNodes count];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  if ([slideNodes count])
  {
    templateSlides = [(KNTheme *)self templateSlides];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [templateSlides countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(templateSlides);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([slideNodes containsObject:v12])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [templateSlides countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (int)p_matchScoreForTemplateSlide:(id)slide toTemplateSlide:(id)templateSlide
{
  v104 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  templateSlideCopy = templateSlide;
  isTitleVisible = [templateSlideCopy isTitleVisible];
  isBodyVisible = [templateSlideCopy isBodyVisible];
  documentRoot = [(KNTheme *)self documentRoot];
  show = [documentRoot show];
  [show size];
  TSUPointLength();
  v13 = v12;

  name = [slideCopy name];
  name2 = [templateSlideCopy name];
  v16 = [name isEqualToString:name2];

  if (v16)
  {
    v17 = 100000;
  }

  else
  {
    name3 = [slideCopy name];
    name4 = [templateSlideCopy name];
    v20 = [name3 rangeOfString:name4 options:1];
    v22 = v21;

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      name5 = [templateSlideCopy name];
      name6 = [slideCopy name];
      [name5 rangeOfString:name6 options:1];
      v22 = v25;
    }

    v26 = v22;
    name7 = [slideCopy name];
    v28 = [name7 length];

    name8 = [templateSlideCopy name];
    v30 = [name8 length];

    if (v28 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v28;
    }

    v17 = (v26 / v31 * 1000.0);
  }

  v89 = isTitleVisible;
  isTitleVisible2 = [slideCopy isTitleVisible];
  if (isTitleVisible == isTitleVisible2)
  {
    v17 += 10000;
  }

  isBodyVisible2 = [slideCopy isBodyVisible];
  v90 = isBodyVisible;
  if (isBodyVisible != isBodyVisible2)
  {
    v33 = v17;
  }

  else
  {
    v33 = v17 + 10000;
  }

  v87 = v33;
  v88 = isBodyVisible2;
  v92 = slideCopy;
  placeholdersForTags = [slideCopy placeholdersForTags];
  placeholdersForTags2 = [templateSlideCopy placeholdersForTags];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  keyEnumerator = [placeholdersForTags keyEnumerator];
  v37 = [keyEnumerator countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = 0;
    v41 = *v99;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v99 != v41)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v43 = [placeholdersForTags2 objectForKey:*(*(&v98 + 1) + 8 * i)];

        if (v43)
        {
          ++v39;
        }

        else
        {
          ++v40;
        }
      }

      v38 = [keyEnumerator countByEnumeratingWithState:&v98 objects:v103 count:16];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  keyEnumerator2 = [placeholdersForTags2 keyEnumerator];
  v45 = [keyEnumerator2 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v95;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v95 != v47)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v49 = [placeholdersForTags objectForKey:*(*(&v94 + 1) + 8 * j)];

        if (v49)
        {
          ++v39;
        }

        else
        {
          ++v40;
        }
      }

      v46 = [keyEnumerator2 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v46);
  }

  v50 = v89 & isTitleVisible2;

  if (v39 + 1 + v40)
  {
    v51 = ((v39 + 1) / (v39 + 1 + v40) * 10000.0);
  }

  else
  {
    v51 = 10000;
  }

  v91 = v90 & v88;
  v52 = v51 + v87;
  background = [v92 background];
  fill = [background fill];
  background2 = [templateSlideCopy background];
  fill2 = [background2 fill];
  v57 = [fill isEqual:fill2];

  if (v57)
  {
    v58 = v52 + 1000;
  }

  else
  {
    v58 = v52;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D856EC;
  aBlock[3] = &unk_27A698660;
  aBlock[4] = v13;
  v59 = _Block_copy(aBlock);
  v60 = 0.0;
  if (v50)
  {
    [v92 titlePlaceholder];
    v62 = v61 = v58;
    geometry = [v62 geometry];
    titlePlaceholder = [templateSlideCopy titlePlaceholder];
    geometry2 = [titlePlaceholder geometry];
    v60 = v59[2](v59, geometry, geometry2) + 0.0;

    v58 = v61;
  }

  v66 = v91;
  if (v91)
  {
    [v92 bodyPlaceholder];
    v68 = v67 = v58;
    geometry3 = [v68 geometry];
    bodyPlaceholder = [templateSlideCopy bodyPlaceholder];
    geometry4 = [bodyPlaceholder geometry];
    v60 = v60 + v59[2](v59, geometry3, geometry4);

    v58 = v67;
    v50 = v89 & isTitleVisible2;
  }

  v72 = v58 + (v60 * 100.0);
  if (v50)
  {
    titlePlaceholder2 = [v92 titlePlaceholder];
    v74 = sub_275D85838(titlePlaceholder2, titlePlaceholder2);
    titlePlaceholder3 = [templateSlideCopy titlePlaceholder];
    v76 = v74 ^ sub_275D85838(titlePlaceholder3, titlePlaceholder3);

    v77 = v76 == 0;
    v66 = v91;
    if (v77)
    {
      v72 += 100;
    }
  }

  if (v66)
  {
    v78 = v92;
    bodyPlaceholder2 = [v92 bodyPlaceholder];
    v80 = sub_275D85838(bodyPlaceholder2, bodyPlaceholder2);
    bodyPlaceholder3 = [templateSlideCopy bodyPlaceholder];
    v82 = v80 ^ sub_275D85838(bodyPlaceholder3, bodyPlaceholder3);

    if (!v82)
    {
      v72 += 100;
    }
  }

  else
  {
    v78 = v92;
  }

  isSlideNumberVisible = [v78 isSlideNumberVisible];
  if (isSlideNumberVisible != [templateSlideCopy isSlideNumberVisible])
  {
    v84 = v72;
  }

  else
  {
    v84 = v72 + 10;
  }

  return v84;
}

- (id)p_mappedTemplateSlideForTemplateSlide:(id)slide scoringHeuristic:(id)heuristic
{
  v25 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  heuristicCopy = heuristic;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(KNTheme *)self templateSlides];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        slide = [*(*(&v20 + 1) + 8 * i) slide];
        v14 = heuristicCopy[2](heuristicCopy, slide);
        if (v14 > v9)
        {
          v15 = v14;
          v16 = slide;

          v9 = v15;
          v10 = v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mappedTemplateSlideForPasteForTemplateSlide:(id)slide
{
  v25 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  templateSlides = [(KNTheme *)self templateSlides];
  v6 = [templateSlides countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(templateSlides);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        slide = [v10 slide];
        v12 = TSUDynamicCast();

        objectUUID = [v12 objectUUID];
        objectUUID2 = [slideCopy objectUUID];
        v15 = [objectUUID isEqual:objectUUID2];

        if (v15)
        {

          goto LABEL_11;
        }
      }

      v7 = [templateSlides countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_275D85C3C;
  v18[3] = &unk_27A698688;
  v18[4] = selfCopy;
  v19 = slideCopy;
  v12 = [(KNTheme *)selfCopy p_mappedTemplateSlideForTemplateSlide:v19 scoringHeuristic:v18];

LABEL_11:

  return v12;
}

- (id)mappedTemplateSlideForThemeChangeForTemplateSlide:(id)slide
{
  slideCopy = slide;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_275D85D94;
  v13 = &unk_27A698688;
  selfCopy = self;
  v15 = slideCopy;
  v5 = slideCopy;
  slide = [(KNTheme *)self p_mappedTemplateSlideForTemplateSlide:v5 scoringHeuristic:&v10];
  if (!slide)
  {
    v7 = [(KNTheme *)self templateSlides:v10];
    v8 = [v7 objectAtIndexedSubscript:0];
    slide = [v8 slide];
  }

  return slide;
}

- (id)mappedTemplateSlideForPasteForSlide:(id)slide
{
  templateSlide = [slide templateSlide];
  v5 = [(KNTheme *)self mappedTemplateSlideForPasteForTemplateSlide:templateSlide];

  return v5;
}

- (void)createDefaultMotionBackgroundStylePresetsIfNeeded
{
  v3 = *MEMORY[0x277D80B60];
  v4 = [(KNTheme *)self presetsOfKind:*MEMORY[0x277D80B60]];
  v5 = [v4 count];

  if (!v5)
  {
    documentStylesheet = [(KNTheme *)self documentStylesheet];
    v7 = [documentStylesheet identifiedStylesOfClass:objc_opt_class()];

    if ([v7 count])
    {
      v8 = [v7 sortedArrayUsingComparator:&unk_2884D4E90];
      [(KNTheme *)self setPresets:v8 ofKind:v3];
    }
  }

  v9 = [(KNTheme *)self presetsOfKind:v3];
  v10 = [v9 count];

  if (!v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_275D85FC0;
    v11[3] = &unk_27A6986D0;
    v11[4] = self;
    [(KNTheme *)self upgradeStylesWithBlock:v11];
  }
}

+ (void)registerPresetSourceClasses
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___KNTheme;
  objc_msgSendSuper2(&v3, sel_registerPresetSourceClasses);
  [self registerPresetSourceClass:objc_opt_class()];
}

+ (NSSet)presetKinds
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___KNTheme;
  v2 = objc_msgSendSuper2(&v10, sel_presetKinds);
  v3 = MEMORY[0x277CBEB98];
  v4 = *MEMORY[0x277D80B88];
  v11[0] = *MEMORY[0x277D80B70];
  v11[1] = v4;
  v5 = *MEMORY[0x277D80B60];
  v11[2] = *MEMORY[0x277D80BB8];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v3 setWithArray:v6];
  v8 = [v2 setByAddingObjectsFromSet:v7];

  return v8;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate
{
  v89 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  themeCopy = theme;
  v10 = *MEMORY[0x277D80B70];
  if (![kindCopy isEqual:*MEMORY[0x277D80B70]])
  {
    v17 = *MEMORY[0x277D80BB8];
    if ([kindCopy isEqual:*MEMORY[0x277D80BB8]])
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v19 = TSWPShapeStyleIdentifierString();
      v20 = objc_alloc(MEMORY[0x277D80F18]);
      context = [themeCopy context];
      v22 = [v20 initWithContext:context];

      emptyStroke = [MEMORY[0x277D803C0] emptyStroke];
      [v22 setValue:emptyStroke forProperty:517];

      [v22 setIntValue:0 forProperty:149];
      v24 = [themeCopy paragraphStyleWithContentTag:@"Caption"];
      [v22 setDefaultParagraphStyle:v24];

      documentStylesheet = [themeCopy documentStylesheet];
      [documentStylesheet addStyle:v22 withIdentifier:v19];

      [v18 addObject:v22];
      v26 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];
      [themeCopy setPresets:v26 ofKind:v17];

      goto LABEL_27;
    }

    v27 = *MEMORY[0x277D80B88];
    if ([kindCopy isEqual:*MEMORY[0x277D80B88]])
    {
      [MEMORY[0x277D80EE0] bootstrapPresetsOfKind:kindCopy inTheme:themeCopy alternate:alternate];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v28 = [themeCopy presetsOfKind:v27];
      v29 = [v28 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v79;
        do
        {
          v32 = 0;
          do
          {
            if (*v79 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v78 + 1) + 8 * v32);
            v34 = [themeCopy paragraphStyleWithContentTag:@"Label"];
            [v33 setDefaultParagraphStyle:v34];

            [v33 setIntValue:1 forProperty:149];
            ++v32;
          }

          while (v30 != v32);
          v30 = [v28 countByEnumeratingWithState:&v78 objects:v82 count:16];
        }

        while (v30);
      }

      v35 = [themeCopy presetOfKind:v27 index:0];
      null = [MEMORY[0x277CBEB68] null];
      [v35 setValue:null forProperty:520];
    }

    else
    {
      if (![kindCopy isEqual:*MEMORY[0x277D80B60]])
      {
        v77.receiver = self;
        v77.super_class = &OBJC_METACLASS___KNTheme;
        v65 = objc_msgSendSuper2(&v77, sel_presetKinds);
        v66 = [v65 containsObject:kindCopy];

        if (v66)
        {
          v76.receiver = self;
          v76.super_class = &OBJC_METACLASS___KNTheme;
          objc_msgSendSuper2(&v76, sel_bootstrapPresetsOfKind_inTheme_alternate_, kindCopy, themeCopy, alternate);
        }

        else
        {
          v67 = MEMORY[0x277D81150];
          v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNTheme bootstrapPresetsOfKind:inTheme:alternate:]"];
          v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
          [v67 handleFailureInFunction:v68 file:v69 lineNumber:2164 isFatal:0 description:{"Requested bootstrapping of unsupported preset kind %@", kindCopy}];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        goto LABEL_27;
      }

      objc_opt_class();
      v35 = TSUCheckedDynamicCast();
      [v35 createDefaultMotionBackgroundStylePresetsIfNeeded];
    }

    goto LABEL_27;
  }

  context2 = [themeCopy context];
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  *(&v87 + 4) = 0x100000001;
  whiteColor = [MEMORY[0x277D81180] whiteColor];
  blackColor = [MEMORY[0x277D81180] blackColor];
  v70 = blackColor;
  v71 = whiteColor;
  if (alternate > 6)
  {
    v83 = whiteColor;
    v14 = &v83;
    goto LABEL_5;
  }

  if (((1 << alternate) & 0x2B) != 0)
  {
    v85 = whiteColor;
    v14 = &v85;
LABEL_5:
    v15 = whiteColor;
    whiteColor = blackColor;
    v16 = @"GillSans";
    goto LABEL_18;
  }

  v84 = blackColor;
  v14 = &v84;
  v15 = blackColor;
  v16 = @"LucidaGrande";
LABEL_18:
  v74 = v16;
  v72 = kindCopy;
  v14[1] = v15;
  v14[2] = v15;
  v14[3] = v15;
  v14[4] = v15;
  v14[5] = v15;
  v14[6] = v15;
  v14[7] = v15;
  v14[8] = v15;
  v14[9] = whiteColor;
  v14[10] = whiteColor;
  v14[11] = v15;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if ([&unk_2884F3D90 count] != 12 || objc_msgSend(v37, "count") != 12)
  {
    v38 = MEMORY[0x277D81150];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNTheme bootstrapPresetsOfKind:inTheme:alternate:]"];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v38 handleFailureInFunction:v39 file:v40 lineNumber:2101 isFatal:0 description:"Preset settings are missing a value in one or more preset value arrays"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v41 = 0;
  v73 = *MEMORY[0x277D80B58];
  do
  {
    v42 = objc_alloc(MEMORY[0x277D80EC8]);
    v43 = [&unk_2884F3DA8 objectAtIndexedSubscript:v41];
    defaultPropertyMap = [MEMORY[0x277D80EC8] defaultPropertyMap];
    v45 = [v42 initWithContext:context2 name:v43 overridePropertyMap:defaultPropertyMap isVariation:0];

    [v45 setValue:v74 forProperty:16];
    LODWORD(v46) = dword_275E70FE8[v41];
    [v45 setFloatValue:17 forProperty:v46];
    v47 = MEMORY[0x277D801F8];
    v48 = [v37 objectAtIndexedSubscript:v41];
    v49 = [v47 colorWithColor:v48];
    [v45 setValue:v49 forProperty:48];

    [v45 setIntValue:dword_275E71018[v41] forProperty:86];
    v50 = [themeCopy presetOfKind:v73 index:*(&v86 + v41)];
    [v45 setInitialListStyle:v50];

    name = [v45 name];
    v75 = String();

    documentStylesheet2 = [themeCopy documentStylesheet];
    v53 = TSWPTextPackageStringForPreset();
    [MEMORY[0x277D80EC8] presetStyleDescriptor];
    v55 = v54 = context2;
    String();
    v56 = themeCopy;
    v57 = v37;
    v59 = v58 = v10;
    [documentStylesheet2 addStyle:v45 withIdentifier:v59];

    v10 = v58;
    v37 = v57;
    themeCopy = v56;

    context2 = v54;
    [v56 addPreset:v45 ofKind:v10];

    ++v41;
  }

  while (v41 != 12);
  v60 = [MEMORY[0x277D80EC8] defaultStyleWithContext:v54];
  v61 = [MEMORY[0x277D80EA0] defaultStyleWithContext:v54];
  [v60 setInitialListStyle:v61];

  documentStylesheet3 = [themeCopy documentStylesheet];
  initialListStyle = [v60 initialListStyle];
  [documentStylesheet3 addStyle:initialListStyle];

  [v60 setName:@"Slide Number"];
  documentStylesheet4 = [themeCopy documentStylesheet];
  [documentStylesheet4 addStyle:v60];

  kindCopy = v72;
LABEL_27:
}

- (id)undeletableStyles
{
  defaultPresenterNotesParagraphStyle = [(KNTheme *)self defaultPresenterNotesParagraphStyle];
  if (!defaultPresenterNotesParagraphStyle)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme undeletableStyles]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:2172 isFatal:0 description:{"invalid nil value for '%{public}s'", "presenterNotesStyle"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v11.receiver = self;
  v11.super_class = KNTheme;
  undeletableStyles = [(KNTheme *)&v11 undeletableStyles];
  v8 = undeletableStyles;
  if (defaultPresenterNotesParagraphStyle)
  {
    if (undeletableStyles)
    {
      v9 = [undeletableStyles setByAddingObject:defaultPresenterNotesParagraphStyle];

      v8 = v9;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:defaultPresenterNotesParagraphStyle];
    }
  }

  return v8;
}

- (TSWPParagraphStyle)defaultPresenterNotesParagraphStyle
{
  documentStylesheet = [(KNTheme *)self documentStylesheet];

  if (!documentStylesheet)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme defaultPresenterNotesParagraphStyle]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    v8 = NSStringFromSelector(a2);
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2184 isFatal:0 description:{"self.documentStylesheet must not be nil. Is %@ called before the end of -upgradeToSingleStylesheet?", v8}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  documentStylesheet2 = [(KNTheme *)self documentStylesheet];
  defaultPresenterNotesParagraphStyle = [documentStylesheet2 defaultPresenterNotesParagraphStyle];

  return defaultPresenterNotesParagraphStyle;
}

- (void)addDefaultPresenterNotesStylesIfAbsent
{
  documentStylesheet = [(KNTheme *)self documentStylesheet];

  if (!documentStylesheet)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme addDefaultPresenterNotesStylesIfAbsent]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    v8 = NSStringFromSelector(a2);
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2190 isFatal:0 description:{"self.documentStylesheet must not be nil. Is %@ called before the end of -upgradeToSingleStylesheet?", v8}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  documentStylesheet2 = [(KNTheme *)self documentStylesheet];
  [documentStylesheet2 addDefaultPresenterNotesStylesIfAbsent];
}

- (void)addClassicThemeRecord:(id)record
{
  recordCopy = record;
  [(KNTheme *)self willModify];
  classicThemeRecords = self->_classicThemeRecords;
  if (!classicThemeRecords)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = self->_classicThemeRecords;
    self->_classicThemeRecords = v5;

    classicThemeRecords = self->_classicThemeRecords;
  }

  [(NSMutableArray *)classicThemeRecords addObject:recordCopy];
}

- (void)setClassicThemeRecords:(id)records
{
  recordsCopy = records;
  [(KNTheme *)self willModify];
  v5 = [recordsCopy copy];

  classicThemeRecords = self->_classicThemeRecords;
  self->_classicThemeRecords = v5;
}

- (void)removeAllClassicThemeRecords
{
  [(KNTheme *)self willModify];
  classicThemeRecords = self->_classicThemeRecords;
  self->_classicThemeRecords = 0;
}

- (id)p_findFallbackDefaultTemplateSlide
{
  templateSlides = [(KNTheme *)self templateSlides];
  v4 = [templateSlides count];

  if (v4 <= 0)
  {
    sub_275E5B2D8();
  }

  templateSlides2 = [(KNTheme *)self templateSlides];
  v6 = [templateSlides2 objectAtIndex:v4 != 1];

  return v6;
}

- (void)p_selectFallbackTemplateSlideAsDefault
{
  p_findFallbackDefaultTemplateSlide = [(KNTheme *)self p_findFallbackDefaultTemplateSlide];
  [(KNTheme *)self p_setDefaultTemplateSlideNode:p_findFallbackDefaultTemplateSlide];
}

- (void)selectFallbackTemplateSlideAsDefault
{
  [(KNTheme *)self willModify];
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8A9A0;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, block);
}

- (id)i_findDefaultTemplateSlideDuringArchiving
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_275D82E64;
  v10 = sub_275D82E74;
  v11 = 0;
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D8AAA0;
  v5[3] = &unk_27A698618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultTemplateSlideNodeQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_findDefaultTemplateSlideWithoutLoadingSlides
{
  v23 = *MEMORY[0x277D85DE8];
  templateSlides = [(KNTheme *)self templateSlides];
  v4 = [templateSlides count];

  if (!v4)
  {
    sub_275E5B37C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  templateSlides2 = [(KNTheme *)self templateSlides];
  v6 = [templateSlides2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(templateSlides2);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      slideIfLoaded = [v10 slideIfLoaded];
      v12 = slideIfLoaded;
      if (slideIfLoaded && [slideIfLoaded isBodyVisible])
      {
        bodyPlaceholder = [v12 bodyPlaceholder];
        textStorage = [bodyPlaceholder textStorage];
        v15 = [textStorage listStyleAtCharIndex:0 effectiveRange:0];

        if ([v15 firstLabelType])
        {
          p_findFallbackDefaultTemplateSlide = v10;

          if (p_findFallbackDefaultTemplateSlide)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [templateSlides2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_15:
  p_findFallbackDefaultTemplateSlide = [(KNTheme *)self p_findFallbackDefaultTemplateSlide];
LABEL_16:

  return p_findFallbackDefaultTemplateSlide;
}

- (void)resolveDefaultTemplateSlide
{
  [(KNTheme *)self willModify];
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8AD40;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, block);
}

- (id)formulaReferenceNameForSlideNode:(id)node
{
  nodeCopy = node;
  if (!self->_formulaReferenceNamesForSlideNodesCache)
  {
    [(KNTheme *)self p_cacheSlideNodes];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TSUPointerKeyDictionary *)self->_formulaReferenceNamesForSlideNodesCache objectForKey:nodeCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    [(KNTheme *)self p_cacheSlideNodes];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sensitiveCopy)
  {
    v8 = [(NSMutableDictionary *)self->_slideNodesForFormulaReferenceNamesCache objectForKey:nameCopy];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_slideNodesForFormulaReferenceNamesCache;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v18 = 168;
      selfCopy2 = self;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(KNTheme *)selfCopy documentRoot:v18];
          documentLocale = [v14 documentLocale];
          v16 = [documentLocale localizedCaseInsensitiveIsEqual:v13 toString:nameCopy];

          if (v16)
          {
            v8 = [*(&selfCopy2->super.super.super.super.isa + v18) objectForKey:v13];
            goto LABEL_15;
          }
        }

        v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_15:
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)slideNamesMatchingPrefix:(id)prefix
{
  v22 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    [(KNTheme *)self p_cacheSlideNodes];
  }

  array = [MEMORY[0x277CBEB18] array];
  obj = self;
  objc_sync_enter(obj);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_slideNodesForFormulaReferenceNamesCache;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([prefixCopy length])
        {
          documentRoot = [(KNTheme *)obj documentRoot];
          documentLocale = [documentRoot documentLocale];
          locale = [documentLocale locale];
          v13 = [v9 tst_hasCaseInsensitivePrefix:prefixCopy withLocale:locale];

          if (!v13)
          {
            continue;
          }
        }

        [array addObject:v9];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);

  return array;
}

- (void)invalidateSlideNameCache
{
  obj = self;
  objc_sync_enter(obj);
  slideNodesForFormulaReferenceNamesCache = obj->_slideNodesForFormulaReferenceNamesCache;
  obj->_slideNodesForFormulaReferenceNamesCache = 0;

  formulaReferenceNamesForSlideNodesCache = obj->_formulaReferenceNamesForSlideNodesCache;
  obj->_formulaReferenceNamesForSlideNodesCache = 0;

  objc_sync_exit(obj);
}

- (void)p_cacheSlideNodes
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &selfCopy->super.super.super.super.isa;
  if (!selfCopy->_slideNodesForFormulaReferenceNamesCache)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
    selfCopy->_slideNodesForFormulaReferenceNamesCache = v3;
  }

  if (!selfCopy->_formulaReferenceNamesForSlideNodesCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277D812B8]);
    formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
    selfCopy->_formulaReferenceNamesForSlideNodesCache = v5;
  }

  [(NSMutableDictionary *)selfCopy->_slideNodesForFormulaReferenceNamesCache removeAllObjects];
  [(TSUPointerKeyDictionary *)selfCopy->_formulaReferenceNamesForSlideNodesCache removeAllObjects];
  v26 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v7 = sub_275DC204C([v26 setNumberStyle:1]);
  v25 = [v7 localizedStringForKey:@"%@ (%@)" value:&stru_2884D8E20 table:@"Keynote"];

  templateSlides = [p_isa templateSlides];
  documentRoot = [p_isa documentRoot];
  documentLocale = [documentRoot documentLocale];
  locale = [documentLocale locale];

  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(templateSlides, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  templateSlides2 = [p_isa templateSlides];
  v11 = [templateSlides2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v30 = *v33;
    obj = templateSlides2;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        slide = [v13 slide];
        v15 = TSUDynamicCast();

        if (v15)
        {
          name = [v15 name];
          v17 = [name uppercaseStringWithLocale:locale];
          v18 = [v31 objectForKeyedSubscript:v17];
          if (v18)
          {
            v19 = [v26 stringFromNumber:v18];
            v20 = MEMORY[0x277CCACA8];
            name2 = [v15 name];
            v22 = [v20 stringWithFormat:v25, name2, v19];

            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];

            [v31 setObject:v23 forKeyedSubscript:v17];
            name = v22;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          else
          {
            [v31 setObject:&unk_2884F36D8 forKeyedSubscript:v17];
            v23 = 0;
            if (!v13)
            {
LABEL_17:

              goto LABEL_18;
            }
          }

          if (name)
          {
            [p_isa[21] setObject:v13 forKey:name];
            [p_isa[22] setObject:name forUncopiedKey:v13];
          }

          goto LABEL_17;
        }

LABEL_18:
      }

      templateSlides2 = obj;
      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  objc_sync_exit(p_isa);
}

+ (id)makeLiveVideoSourceCollectionWithContext:(id)context
{
  contextCopy = context;
  v4 = [[KNLiveVideoSourceCollection alloc] initWithContext:contextCopy];

  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C64A17F1-CE2B-421E-801B-5ABD7AF2D0AC"];
  [(KNLiveVideoSourceCollection *)v4 setObjectUUID:v5];

  return v4;
}

- (void)takeLiveVideoSourceCollectionFromTheme:(id)theme
{
  themeCopy = theme;
  [(KNTheme *)self willModify];
  liveVideoSourceCollection = [themeCopy liveVideoSourceCollection];

  liveVideoSourceCollection = self->_liveVideoSourceCollection;
  self->_liveVideoSourceCollection = liveVideoSourceCollection;
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  templateSlides = [(KNTheme *)self templateSlides];
  objectEnumerator = [templateSlides objectEnumerator];
  v9.receiver = self;
  v9.super_class = KNTheme;
  childEnumerator = [(KNTheme *)&v9 childEnumerator];
  v7 = [v3 aggregateEnumeratorWithObjects:{objectEnumerator, childEnumerator, 0}];

  return v7;
}

- (id)modelPathComponentForChild:(id)child
{
  childCopy = child;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    templateSlides = [(KNTheme *)self templateSlides];
    v8 = [v6 stringWithFormat:@"templateSlide-%tu", objc_msgSend(templateSlides, "indexOfObject:", v5)];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = KNTheme;
    v8 = [(KNTheme *)&v10 modelPathComponentForChild:childCopy];
  }

  return v8;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = KNTheme;
  [(KNTheme *)&v17 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  templateSlides = [(KNTheme *)self templateSlides];
  v9 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(templateSlides);
        }

        [*(*(&v13 + 1) + 8 * v12++) willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
      }

      while (v10 != v12);
      v10 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = KNTheme;
  [(KNTheme *)&v17 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  templateSlides = [(KNTheme *)self templateSlides];
  v9 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(templateSlides);
        }

        [*(*(&v13 + 1) + 8 * v12++) wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
      }

      while (v10 != v12);
      v10 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v16 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  templateSlides = [(KNTheme *)self templateSlides];
  v6 = [templateSlides countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(templateSlides);
        }

        [*(*(&v11 + 1) + 8 * v9++) willBeRemovedFromDocumentRoot:rootCopy];
      }

      while (v7 != v9);
      v7 = [templateSlides countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = KNTheme;
  [(KNTheme *)&v10 willBeRemovedFromDocumentRoot:rootCopy];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v16 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  templateSlides = [(KNTheme *)self templateSlides];
  v6 = [templateSlides countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(templateSlides);
        }

        [*(*(&v11 + 1) + 8 * v9++) wasRemovedFromDocumentRoot:rootCopy];
      }

      while (v7 != v9);
      v7 = [templateSlides countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = KNTheme;
  [(KNTheme *)&v10 wasRemovedFromDocumentRoot:rootCopy];
}

- (void)insertContainedModel:(id)model atIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v10 = TSUCheckedDynamicCast();

  thumbnails = [v10 thumbnails];
  allValues = [thumbnails allValues];
  defaultContext = [MEMORY[0x277D805F0] defaultContext];
  [(KNTheme *)self insertTemplateSlideNode:v10 withThumbnails:allValues atIndex:index dolcContext:defaultContext];
}

- (void)removeContainedModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  [(KNTheme *)self removeTemplateSlideNode:v5];
}

- (void)moveModel:(id)model toIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v12 = TSUCheckedDynamicCast();

  slide = [v12 slide];
  LOBYTE(modelCopy) = [slide isTemplateSlide];

  if ((modelCopy & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme moveModel:toIndex:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:2755 isFatal:0 description:"templateNode's slide must be a KNTemplateSlide."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [(KNTheme *)self willModify];
  objc_opt_class();
  v11 = TSUDynamicCast();
  [v11 removeObject:v12];
  [v11 insertObject:v12 atIndex:index];
  [(KNTheme *)self p_cacheSlideNodes];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v7 = *(archive + 16);
  }

  else
  {
    v7 = MEMORY[0x277D80BD8];
  }

  v47.receiver = self;
  v47.super_class = KNTheme;
  [(TSATheme *)&v47 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_275D8C8F0;
  v46[3] = &unk_27A697A10;
  v46[4] = self;
  v8 = unarchiverCopy;
  [v8 readRepeatedReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v46];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_275D8C8FC;
  v44[4] = sub_275D8C90C;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_275D8C8FC;
  v42[4] = sub_275D8C90C;
  v43 = 0;
  v9 = *(archive + 4);
  if ((v9 & 4) != 0)
  {
    v10 = *(archive + 17);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_275D8C914;
    v41[3] = &unk_27A6985C8;
    v41[4] = v42;
    v11 = v8;
    [v11 readReferenceMessage:v10 class:objc_opt_class() protocol:0 completion:v41];

    v9 = *(archive + 4);
  }

  if ((v9 & 8) != 0)
  {
    v12 = *(archive + 18);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_275D8C924;
    v40[3] = &unk_27A6985C8;
    v40[4] = v44;
    v13 = v8;
    [v13 readWeakReferenceMessage:v12 class:objc_opt_class() protocol:0 completion:v40];

    v9 = *(archive + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    self->_defaultTemplateSlideNodeIsOurBestGuess = *(archive + 160);
  }

  if (v9)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 15) & 0xFFFFFFFFFFFFFFFELL];
    [(KNTheme *)self setUUID:0xFFFFFFFFFFFFFFFELL];
  }

  if (*(archive + 14) >= 1)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_275D8C934;
    v39[3] = &unk_27A697A10;
    v39[4] = self;
    v15 = v8;
    [v15 readRepeatedReferenceMessage:archive + 48 class:objc_opt_class() protocol:0 completion:v39];
  }

  v34 = v8;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  customEffectTimingCurves = self->_customEffectTimingCurves;
  self->_customEffectTimingCurves = v16;

  v18 = *(archive + 20);
  if (v18 >= 1)
  {
    v19 = 8;
    v20 = MEMORY[0x277D804C8];
    do
    {
      v21 = *(*(archive + 11) + v19);
      v22 = objc_alloc(MEMORY[0x277D801C8]);
      if (*(v21 + 32))
      {
        v23 = *(v21 + 32);
      }

      else
      {
        v23 = v20;
      }

      v24 = [v22 initWithArchive:v23];
      0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(v21 + 24) & 0xFFFFFFFFFFFFFFFELL];
      [(NSMutableDictionary *)self->_customEffectTimingCurves setObject:v24 forKeyedSubscript:0xFFFFFFFFFFFFFFFELL2];

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  if ((*(archive + 16) & 0x10) != 0)
  {
    v31 = *(archive + 19);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_275D8C94C;
    v38[3] = &unk_27A6986F8;
    v38[4] = self;
    v26 = v34;
    v32 = v34;
    [v32 readReferenceMessage:v31 class:objc_opt_class() protocol:0 completion:v38];
  }

  else
  {
    [(KNTheme *)self willModifyForUpgrade];
    v26 = v34;
    v27 = objc_opt_class();
    context = [(KNTheme *)self context];
    v29 = [v27 makeLiveVideoSourceCollectionWithContext:context];
    liveVideoSourceCollection = self->_liveVideoSourceCollection;
    self->_liveVideoSourceCollection = v29;
  }

  if (*(archive + 26) >= 1)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_275D8CA10;
    v37[3] = &unk_27A697A10;
    v37[4] = self;
    sub_275D8C964(v26, archive + 96, &unk_288501358, v37);
  }

  hasPreUFFVersion = [v26 hasPreUFFVersion];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_275D8CA28;
  v35[3] = &unk_27A698740;
  v36 = hasPreUFFVersion;
  v35[4] = self;
  v35[5] = v44;
  v35[6] = v42;
  [v26 addFinalizeHandler:v35];
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v44, 8);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = dispatch_queue_create("KNTheme.DefaultTemplateSlideNode", MEMORY[0x277D85CD8]);
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  self->_defaultTemplateSlideNodeQueue = v5;

  v7 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = [v7 messageWithDescriptor:off_2812EA908[52]];

  [(KNTheme *)self loadFromArchive:v8 unarchiver:v7];
  if ([v7 hasPreUFFVersion])
  {
    preUFFVersion = [v7 preUFFVersion];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_275D8CC98;
    v10[3] = &unk_27A698480;
    v10[4] = self;
    v10[5] = preUFFVersion;
    [v7 addFinalizeHandler:v10];
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v60 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_275D8D3DC;
  v53[3] = &unk_27A697C88;
  archiveCopy = archive;
  v54 = archiverCopy;
  selfCopy = self;
  v48 = v54;
  [v54 pushScopeForField:1 message:archive usingBlock:v53];
  templateSlides = [(KNTheme *)self templateSlides];
  [v48 setStrongReferenceArray:templateSlides message:archive + 24];

  WeakRetained = objc_loadWeakRetained(&self->_defaultTemplateSlideNode);
  if (WeakRetained)
  {
    *(archive + 4) |= 8u;
    v8 = *(archive + 18);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F050](v9);
      *(archive + 18) = v8;
    }

    [v48 setWeakReference:WeakRetained message:v8];
    *(archive + 4) |= 4u;
    v10 = *(archive + 17);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F050](v11);
      *(archive + 17) = v10;
    }

    [v48 setStrongReference:WeakRetained message:v10];
  }

  else
  {
    i_findDefaultTemplateSlideDuringArchiving = [(KNTheme *)self i_findDefaultTemplateSlideDuringArchiving];
    if (!i_findDefaultTemplateSlideDuringArchiving)
    {
      v13 = MEMORY[0x277D81150];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNTheme(PersistenceAdditions) saveToArchive:archiver:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNThemePersistenceAdditions.mm"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:205 isFatal:0 description:{"invalid nil value for '%{public}s'", "defaultTemplateSlideNode"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    *(archive + 4) |= 4u;
    v16 = *(archive + 17);
    if (!v16)
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C8F050](v17);
      *(archive + 17) = v16;
    }

    WeakRetained = i_findDefaultTemplateSlideDuringArchiving;
    [v48 setStrongReference:i_findDefaultTemplateSlideDuringArchiving message:v16];
  }

  defaultTemplateSlideNodeIsOurBestGuess = self->_defaultTemplateSlideNodeIsOurBestGuess;
  *(archive + 4) |= 0x20u;
  *(archive + 160) = defaultTemplateSlideNodeIsOurBestGuess;
  uUID = [(KNTheme *)self UUID];
  v20 = [uUID length] == 0;

  if (!v20)
  {
    uUID2 = [(KNTheme *)self UUID];
    v22 = uUID2;
    uTF8String = [uUID2 UTF8String];
    *(archive + 4) |= 1u;
    sub_275D55B98(__p, uTF8String);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }
  }

  classicThemeRecords = [(KNTheme *)self classicThemeRecords];
  v25 = classicThemeRecords == 0;

  if (!v25)
  {
    classicThemeRecords2 = [(KNTheme *)self classicThemeRecords];
    [v48 setStrongReferenceArray:classicThemeRecords2 message:archive + 48];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = self->_customEffectTimingCurves;
  v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v28)
  {
    v29 = *v50;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v49 + 1) + 8 * i);
        v32 = [(NSMutableDictionary *)self->_customEffectTimingCurves objectForKeyedSubscript:v31];
        v33 = *(archive + 11);
        if (!v33)
        {
          goto LABEL_34;
        }

        v34 = *(archive + 20);
        v35 = *v33;
        if (v34 < *v33)
        {
          *(archive + 20) = v34 + 1;
          v36 = *&v33[2 * v34 + 2];
          goto LABEL_36;
        }

        if (v35 == *(archive + 21))
        {
LABEL_34:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v33 = *(archive + 11);
          v35 = *v33;
        }

        *v33 = v35 + 1;
        v36 = sub_275E204F4(*(archive + 9));
        v37 = *(archive + 20);
        v38 = *(archive + 11) + 8 * v37;
        *(archive + 20) = v37 + 1;
        *(v38 + 8) = v36;
LABEL_36:
        *(v36 + 16) |= 2u;
        v39 = *(v36 + 32);
        if (!v39)
        {
          v40 = *(v36 + 8);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x277C8EFB0](v40);
          *(v36 + 32) = v39;
        }

        [v32 saveToArchive:v39];
        v41 = v31;
        uTF8String2 = [v31 UTF8String];
        *(v36 + 16) |= 1u;
        sub_275D55B98(__p, uTF8String2);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v28);
  }

  if (self->_liveVideoSourceCollection)
  {
    [v48 setIgnoreAndPreserveRuleForField:9 message:archive];
    liveVideoSourceCollection = self->_liveVideoSourceCollection;
    *(archive + 4) |= 0x10u;
    v44 = *(archive + 19);
    if (!v44)
    {
      v45 = *(archive + 1);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = MEMORY[0x277C8F050](v45);
      *(archive + 19) = v44;
    }

    [v48 setStrongReference:liveVideoSourceCollection message:v44];
  }

  v46 = [(KNTheme *)self presetsOfKind:*MEMORY[0x277D80B60]];
  if (v46)
  {
    [v48 setStrongReferenceArray:v46 message:archive + 96];
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D8D520 descriptor:off_2812EA908[52]];

  [(KNTheme *)self saveToArchive:v4 archiver:archiverCopy];
}

@end