@interface KNDocumentRoot
+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)validateSlideNode:(id)node;
- (BOOL)validateUIState:(id)state;
- (KNDocumentRoot)initWithContext:(id)context;
- (double)stickyCommentScaleMultiplier;
- (id)UIStateForChart:(id)chart;
- (id)childEnumerator;
- (id)createViewStateRootForContinuation:(BOOL)continuation;
- (id)freehandDrawingToolkitUIState;
- (id)knDelegate;
- (id)nameForResolverContainer:(id)container;
- (id)protected_defaultTextPresetOrdering;
- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)resolverContainerNameForResolver:(id)resolver;
- (id)resolverContainerNamesMatchingPrefix:(id)prefix;
- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)slideNodeForClearedShow;
- (id)stylesToNotResizeInStylesheet:(id)stylesheet;
- (id)stylesheet;
- (id)theme;
- (id)warningLocationDescriptionForAffectedObjects:(id)objects sortingInfo:(id *)info;
- (int64_t)compareLocationSortingInfo:(id)info toSortingInfo:(id)sortingInfo;
- (unint64_t)writingDirectionForStorage;
- (void)dealloc;
- (void)documentDidLoad;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes:(id)nodes;
- (void)prepareForSavingAsTemplate;
- (void)preprocessForSaveAsTheme;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDelegate:(id)delegate;
- (void)setDocumentLocale:(id)locale;
- (void)setShow:(id)show;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)setUiState:(id)state;
- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade;
- (void)willClose;
@end

@implementation KNDocumentRoot

- (KNDocumentRoot)initWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = KNDocumentRoot;
  v5 = [(TSADocumentRoot *)&v20 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [KNShow showWithSize:contextCopy context:1024.0, 768.0];
    show = v5->_show;
    v5->_show = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    stylesheet = [(KNDocumentRoot *)v5 stylesheet];
    styles = [stylesheet styles];

    v10 = [styles countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(styles);
          }

          [*(*(&v16 + 1) + 8 * v13++) wasAddedToDocumentWithContext:contextCopy];
        }

        while (v11 != v13);
        v11 = [styles countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(KNShow *)v5->_show wasAddedToDocumentWithContext:contextCopy];
    theme = [(KNShow *)v5->_show theme];
    [theme wasAddedToDocumentWithContext:contextCopy];
  }

  return v5;
}

- (void)setShow:(id)show
{
  showCopy = show;
  [(KNDocumentRoot *)self willModify];
  show = self->_show;
  self->_show = showCopy;
}

- (double)stickyCommentScaleMultiplier
{
  show = [(KNDocumentRoot *)self show];
  [show size];
  v4 = v3;

  v5 = (v4 + -1024.0) * 0.0009765625 + 1.0;
  if (v5 <= 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot stickyCommentScaleMultiplier]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:247 isFatal:0 description:"Invalid scaleMultiplier."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return fmax(v5, 1.0);
}

- (void)documentDidLoad
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v17 documentDidLoad];
  [(KNDocumentRoot *)self addObserver:self forKeyPath:@"show.recording" options:7 context:qword_280A3A550];
  *(&self->_isObservingRecording + 1) = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  templateSlides = [theme templateSlides];

  v6 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(templateSlides);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        slide = [v10 slide];
        v12 = TSUCheckedDynamicCast();
        [v12 updatePlaceholderText];

        ++v9;
      }

      while (v7 != v9);
      v7 = [templateSlides countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)willClose
{
  v2.receiver = self;
  v2.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v2 willClose];
}

- (void)dealloc
{
  if (*(&self->_isObservingRecording + 1))
  {
    [(KNDocumentRoot *)self removeObserver:self forKeyPath:@"show.recording" context:qword_280A3A550];
  }

  v3.receiver = self;
  v3.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v3 dealloc];
}

- (id)knDelegate
{
  delegate = [(KNDocumentRoot *)self delegate];
  v3 = TSUCheckedProtocolCast();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = KNDocumentRoot;
  [(KNDocumentRoot *)&v3 setDelegate:delegate];
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  show2 = [(KNDocumentRoot *)self show];
  slideTree = [show2 slideTree];
  objectEnumerator = [slideTree objectEnumerator];
  v9 = [v3 aggregateEnumeratorWithObjects:{theme, objectEnumerator, 0}];

  return v9;
}

- (id)theme
{
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];

  return theme;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  objc_opt_class();
  v6 = TSUDynamicCast();

  show = [(KNDocumentRoot *)self show];
  [show setTheme:v6];
}

- (id)stylesheet
{
  show = [(KNDocumentRoot *)self show];
  stylesheet = [show stylesheet];

  return stylesheet;
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  show = [(KNDocumentRoot *)self show];
  [show setStylesheetForUpgradeToSingleStylesheet:stylesheetCopy];
}

- (id)protected_defaultTextPresetOrdering
{
  if (qword_280A3BF50 != -1)
  {
    sub_275E59D6C();
  }

  v3 = qword_280A3BF48;

  return v3;
}

- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v31 upgradeTextStylesForUnityAfterSingleStylesheetUpgrade];
  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
  stylesheet = [(KNDocumentRoot *)self stylesheet];
  v5 = [stylesheet stylesOfClass:objc_opt_class()];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_275D58FDC;
  v27[3] = &unk_27A697B48;
  v6 = stylesheet;
  v28 = v6;
  selfCopy = self;
  v7 = v3;
  v30 = v7;
  [v5 enumerateObjectsUsingBlock:v27];

  v8 = MEMORY[0x277CBEB98];
  keyEnumerator = [v7 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v11 = [v8 setWithArray:allObjects];

  if ([v7 count])
  {
    modelEnumerator = [(KNDocumentRoot *)self modelEnumerator];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D590C0;
    v24[3] = &unk_27A697B98;
    v25 = v11;
    v26 = v7;
    [modelEnumerator enumerateStyleClientsUsingBlock:v24];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        stylesheet2 = [v18 stylesheet];
        [stylesheet2 removeStyle:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v15);
  }
}

- (id)freehandDrawingToolkitUIState
{
  show = [(KNDocumentRoot *)self show];
  uiState = [show uiState];
  freehandDrawingToolkitUIState = [uiState freehandDrawingToolkitUIState];

  return freehandDrawingToolkitUIState;
}

- (id)createViewStateRootForContinuation:(BOOL)continuation
{
  delegate = [(KNDocumentRoot *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    createViewStateRoot = [delegate createViewStateRoot];
  }

  else
  {
    show = [(KNDocumentRoot *)self show];
    uiState = [show uiState];
    context = [(KNDocumentRoot *)self context];
    createViewStateRoot = [uiState archivedUIStateInContext:context];
  }

  return createViewStateRoot;
}

- (void)setUiState:(id)state
{
  v6.receiver = self;
  v6.super_class = KNDocumentRoot;
  stateCopy = state;
  [(TSADocumentRoot *)&v6 setUiState:stateCopy];
  v5 = [(KNDocumentRoot *)self show:v6.receiver];
  [v5 setUiState:stateCopy];
}

- (BOOL)isMultiPageForQuickLook
{
  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];
  visibleSlideNodes = [slideTree visibleSlideNodes];
  v5 = [visibleSlideNodes count] > 1;

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_280A3A550 != context)
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = KNDocumentRoot;
    [(KNDocumentRoot *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)stylesToNotResizeInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  allPresenterNotesStyles = [stylesheetCopy allPresenterNotesStyles];
  stickyCommentStyles = [stylesheetCopy stickyCommentStyles];

  v6 = [allPresenterNotesStyles setByAddingObjectsFromSet:stickyCommentStyles];

  return v6;
}

- (id)slideNodeForClearedShow
{
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  templateSlides = [theme templateSlides];

  if (![templateSlides count])
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot slideNodeForClearedShow]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1176 isFatal:0 description:"Show has no template slides"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v9 = [templateSlides objectAtIndexedSubscript:0];
  slide = [v9 slide];
  context = [(KNDocumentRoot *)self context];
  v12 = [[KNSlideNode alloc] initWithContext:context];
  v13 = [[KNSlide alloc] initWithSlideNode:v12 templateSlide:slide andShow:show];
  [(KNSlideNode *)v12 setSlide:v13];

  return v12;
}

- (id)resolverContainerNameForResolver:(id)resolver
{
  resolverCopy = resolver;
  objc_opt_class();
  drawableInfo = [resolverCopy drawableInfo];

  v6 = TSUDynamicCast();

  v7 = [KNAbstractSlide parentSlideForInfo:v6];
  slideNode = [v7 slideNode];
  v9 = [(KNDocumentRoot *)self nameForResolverContainer:slideNode];

  return v9;
}

- (id)nameForResolverContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  v5 = TSUDynamicCast();

  show = [(KNDocumentRoot *)self show];
  slide = [v5 slide];
  isTemplateSlide = [slide isTemplateSlide];

  if (isTemplateSlide)
  {
    [show theme];
  }

  else
  {
    [show slideTree];
  }
  v9 = ;
  v10 = [v9 formulaReferenceNameForSlideNode:v5];

  return v10;
}

- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  nameCopy = name;
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  v9 = [theme slideNodeForFormulaReferenceName:nameCopy caseSensitive:sensitiveCopy];

  if (!v9)
  {
    slideTree = [show slideTree];
    v9 = [slideTree slideNodeForFormulaReferenceName:nameCopy caseSensitive:sensitiveCopy];
  }

  return v9;
}

- (id)resolverContainerNamesMatchingPrefix:(id)prefix
{
  prefixCopy = prefix;
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  v7 = [theme slideNamesMatchingPrefix:prefixCopy];

  slideTree = [show slideTree];
  v9 = [slideTree slideNamesMatchingPrefix:prefixCopy];

  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  if (resolver)
  {
    resolver = [(KNDocumentRoot *)self resolverContainerNameForResolver:resolver];
  }

  v7 = [(KNDocumentRoot *)self resolverMatchingName:nameCopy contextContainerName:resolver];

  return v7;
}

- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  containerNameCopy = containerName;
  if (!containerNameCopy || (-[KNDocumentRoot resolverContainerForName:caseSensitive:](self, "resolverContainerForName:caseSensitive:", containerNameCopy, 1), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, [v8 resolverMatchingName:nameCopy], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    show = [(KNDocumentRoot *)self show];
    theme = [show theme];
    templateSlides = [theme templateSlides];

    slideTree = [show slideTree];
    slideNodes = [slideTree slideNodes];
    v16 = [templateSlides arrayByAddingObjectsFromArray:slideNodes];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v10 = 0;
      v20 = *v26;
      while (2)
      {
        v21 = 0;
        v22 = v10;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = [*(*(&v25 + 1) + 8 * v21) resolverMatchingName:{nameCopy, v25}];
          v10 = v23;
          if (v22)
          {

            goto LABEL_14;
          }

          ++v21;
          v22 = v23;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_14:
      v10 = 0;
    }
  }

  return v10;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  v24 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  array = [MEMORY[0x277CBEB18] array];
  show = [(KNDocumentRoot *)self show];
  theme = [show theme];
  templateSlides = [theme templateSlides];

  slideTree = [show slideTree];
  slideNodes = [slideTree slideNodes];
  v11 = [templateSlides arrayByAddingObjectsFromArray:slideNodes];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) resolversMatchingPrefix:{prefixCopy, v19}];
        if (v17)
        {
          [array addObjectsFromArray:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return array;
}

+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v97 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  selfCopy = self;
  bundleCopy = bundle;
  v93.receiver = self;
  v93.super_class = &OBJC_METACLASS___KNDocumentRoot;
  localeCopy = locale;
  objc_msgSendSuper2(&v93, sel_localizeModelObject_withTemplateBundle_andLocale_, objectCopy, bundleCopy);
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = v9;
  v63 = v9;
  v64 = objectCopy;
  if (v9)
  {
    show = [v9 show];
    [show setLocalizeDocument:1];
    objc_opt_class();
    theme = [v10 theme];
    v13 = TSUDynamicCast();

    if (v13)
    {
      v69 = show;
      v71 = v13;
      templateSlides = [v13 templateSlides];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v15 = [templateSlides countByEnumeratingWithState:&v89 objects:v96 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v90;
        v18 = *MEMORY[0x277D80008];
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v90 != v17)
            {
              objc_enumerationMutation(templateSlides);
            }

            v20 = *(*(&v89 + 1) + 8 * i);
            objc_opt_class();
            slide = [v20 slide];
            v22 = TSUDynamicCast();

            name = [v22 name];
            name2 = [v22 name];
            v25 = [selfCopy localizedTemplateStringForKey:name value:name2 table:v18 templateBundle:bundleCopy locale:localeCopy];
            [v22 setName:v25];

            [v22 updatePlaceholderText];
          }

          v16 = [templateSlides countByEnumeratingWithState:&v89 objects:v96 count:16];
        }

        while (v16);
      }

      liveVideoSourceCollection = [v71 liveVideoSourceCollection];
      v27 = [KNLiveVideoSourceCollection localizedDefaultSourceNameForLocale:localeCopy];
      v67 = liveVideoSourceCollection;
      defaultSource = [liveVideoSourceCollection defaultSource];
      [defaultSource setName:v27];

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v29 = [v71 presetsOfKind:*MEMORY[0x277D80B60]];
      v30 = [v29 countByEnumeratingWithState:&v85 objects:v95 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v86;
        v33 = *MEMORY[0x277D80008];
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v86 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v85 + 1) + 8 * j);
            name3 = [v35 name];

            if (name3)
            {
              name4 = [v35 name];
              name5 = [v35 name];
              v39 = [selfCopy localizedTemplateStringForKey:name4 value:name5 table:v33 templateBundle:bundleCopy locale:localeCopy];
              [v35 setName:v39];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v85 objects:v95 count:16];
        }

        while (v31);
      }

      v10 = v63;
      objectCopy = v64;
      show = v69;
      v13 = v71;
    }
  }

  objc_opt_class();
  v72 = TSUDynamicCast();
  if (v72)
  {
    placeholdersForTags = [v72 placeholdersForTags];
    v65 = [placeholdersForTags mutableCopy];

    v70 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    childInfos = [v72 childInfos];
    v42 = [childInfos countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (!v42)
    {
      goto LABEL_37;
    }

    v43 = v42;
    v44 = *v82;
    v45 = *MEMORY[0x277D80008];
    while (1)
    {
      v46 = 0;
      v68 = v43;
      do
      {
        if (*v82 != v44)
        {
          objc_enumerationMutation(childInfos);
        }

        v47 = *(*(&v81 + 1) + 8 * v46);
        v48 = [v72 tagForInfo:v47];
        if (v48)
        {
          v49 = [selfCopy localizedTemplateStringForKey:v48 value:v48 table:v45 templateBundle:bundleCopy locale:localeCopy];
          if (v49)
          {
            v50 = [v70 objectForKeyedSubscript:v49];

            if (v50)
            {
              v66 = MEMORY[0x277D81150];
              v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]"];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
              [v70 objectForKeyedSubscript:v49];
              v53 = v44;
              v55 = v54 = childInfos;
              [v66 handleFailureInFunction:v51 file:v52 lineNumber:1522 isFatal:0 description:{"multiple tags with the same localization: %{public}@, %{public}@", v48, v55}];

              childInfos = v54;
              v44 = v53;

              v43 = v68;
              v56 = MEMORY[0x277D81150];
              goto LABEL_32;
            }

            [v65 removeObjectForKey:v48];
            [v65 setObject:v47 forKeyedSubscript:v49];
            [v70 setObject:v48 forKeyedSubscript:v49];
          }

          else
          {
            v57 = MEMORY[0x277D81150];
            v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]"];
            v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
            [v57 handleFailureInFunction:v58 file:v59 lineNumber:1519 isFatal:0 description:{"no localized string for tag %{public}@", v48}];

            v43 = v68;
            v56 = MEMORY[0x277D81150];
LABEL_32:
            [v56 logBacktraceThrottled];
          }
        }

        ++v46;
      }

      while (v43 != v46);
      v43 = [childInfos countByEnumeratingWithState:&v81 objects:v94 count:16];
      if (!v43)
      {
LABEL_37:

        instructionalTextForInfos = [v72 instructionalTextForInfos];
        v61 = [instructionalTextForInfos copy];

        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = sub_275D5A540;
        v76[3] = &unk_27A697BC0;
        v80 = selfCopy;
        v77 = bundleCopy;
        v78 = localeCopy;
        v79 = v72;
        [v61 tsu_enumerateKeysAndObjectsUsingBlock:v76];
        v62 = [v65 copy];
        [v72 setPlaceholdersForTags:v62];

        v10 = v63;
        objectCopy = v64;
        break;
      }
    }
  }
}

- (void)setDocumentLocale:(id)locale
{
  v8.receiver = self;
  v8.super_class = KNDocumentRoot;
  [(KNDocumentRoot *)&v8 setDocumentLocale:locale];
  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];
  [slideTree invalidateSlideNameCache];

  objc_opt_class();
  theme = [(KNDocumentRoot *)self theme];
  v7 = TSUCheckedStaticCast();
  [v7 invalidateSlideNameCache];
}

- (id)UIStateForChart:(id)chart
{
  chartCopy = chart;
  show = [(KNDocumentRoot *)self show];
  uiState = [show uiState];
  v7 = [uiState UIStateForChart:chartCopy];

  return v7;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  chartCopy = chart;
  stateCopy = state;
  show = [(KNDocumentRoot *)self show];
  uiState = [show uiState];
  [uiState setUIState:stateCopy forChart:chartCopy];

  MEMORY[0x2821F9670](self, sel_invalidateViewState);
}

- (id)warningLocationDescriptionForAffectedObjects:(id)objects sortingInfo:(id *)info
{
  v102 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];

  v80 = slideTree;
  visibleSlideNodes = [slideTree visibleSlideNodes];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = objectsCopy;
  v8 = [obj countByEnumeratingWithState:&v95 objects:v101 count:16];
  if (!v8)
  {
    v84 = 0;
    goto LABEL_22;
  }

  v9 = v8;
  v84 = 0;
  v10 = *v96;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v96 != v10)
      {
        objc_enumerationMutation(obj);
      }

      objc_opt_class();
      v12 = TSUDynamicCast();
      if (v12)
      {
        v13 = v12;
LABEL_8:
        if ([v13 isTemplateSlide])
        {
          v14 = array3;
          goto LABEL_12;
        }

        slideNode = [v13 slideNode];
        v16 = [visibleSlideNodes containsObject:slideNode];

        if (v16)
        {
          v14 = array2;
LABEL_12:
          [v14 addObject:v13];
        }

        else
        {
          ++v84;
        }

        continue;
      }

      objc_opt_class();
      v76 = &unk_2884F6E18;
      v17 = TSUClassAndProtocolCast();
      if (v17)
      {
        v18 = v17;
        v13 = [KNAbstractSlide parentSlideForInfo:v17, &unk_2884F6E18];

        if (v13)
        {
          goto LABEL_8;
        }
      }
    }

    v9 = [obj countByEnumeratingWithState:&v95 objects:v101 count:16];
  }

  while (v9);
LABEL_22:

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0x277D81000;
  *(&v77 + 1) = [array2 count];
  v21 = v80;
  v79 = dictionary;
  if (*(&v77 + 1) | v84)
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v23 = array2;
    v24 = [v23 countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v92;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v92 != v26)
          {
            objc_enumerationMutation(v23);
          }

          slideNode2 = [*(*(&v91 + 1) + 8 * j) slideNode];
          v29 = [v80 slideNumberForSlideNode:slideNode2];

          if (v29 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [indexSet addIndex:v29];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v25);
    }

    v30 = [indexSet count];
    if (v30)
    {
      v31 = MEMORY[0x277CCACA8];
      v32 = sub_275DC204C(v30);
      v33 = [v32 localizedStringForKey:@"Slide(s)" value:&stru_2884D8E20 table:@"Keynote"];
      v34 = [v31 localizedStringWithFormat:v33, objc_msgSend(indexSet, "count")];

      v36 = sub_275DC204C(v35);
      v37 = [v36 localizedStringForKey:@"%@ %@" value:&stru_2884D8E20 table:@"Keynote"];

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277D81230] displayStringForIndexSet:indexSet];
      v40 = [v38 stringWithFormat:v37, v34, v39];

      [array addObject:v40];
      [v79 setObject:&unk_2884F3660 forKeyedSubscript:@"type"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(indexSet, "firstIndex")}];
      [v79 setObject:v41 forKeyedSubscript:@"orderNumber"];
    }

    dictionary = v79;
    v20 = 0x277D81000;
  }

  v42 = [array3 count];
  *&v77 = v42;
  if (v42)
  {
    v43 = [MEMORY[0x277CBEB58] set];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v44 = array3;
    v45 = [v44 countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v88;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v88 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v87 + 1) + 8 * k);
          name = [v49 name];
          [v43 addObject:name];

          show2 = [(KNDocumentRoot *)self show];
          theme = [show2 theme];
          templateSlides = [theme templateSlides];
          slideNode3 = [v49 slideNode];
          [templateSlides indexOfObject:slideNode3];
        }

        v46 = [v44 countByEnumeratingWithState:&v87 objects:v99 count:16];
      }

      while (v46);
    }

    allObjects = [v43 allObjects];
    v56 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v57 = MEMORY[0x277CCACA8];
    v59 = sub_275DC204C(v58);
    v60 = [v59 localizedStringForKey:@"Slide Layout(s)" value:&stru_2884D8E20 table:@"Keynote"];
    v61 = [v57 localizedStringWithFormat:v60, objc_msgSend(v56, "count")];

    v63 = sub_275DC204C(v62);
    v64 = [v63 localizedStringForKey:@"%@: %@" value:&stru_2884D8E20 table:@"Keynote"];

    v20 = 0x277D81000uLL;
    v65 = [MEMORY[0x277D81230] displayStringForStrings:v56];
    v66 = [MEMORY[0x277CCACA8] stringWithFormat:v64, v61, v65];
    [array addObject:v66];
    dictionary = v79;
    [v79 setObject:&unk_2884F3678 forKeyedSubscript:@"type"];
    [v79 setObject:v65 forKeyedSubscript:@"name"];

    v21 = v80;
  }

  if (v84)
  {
    v67 = MEMORY[0x277CCACA8];
    v68 = sub_275DC204C(v42);
    v69 = [v68 localizedStringForKey:@"%lu skipped slide(s)." value:&stru_2884D8E20 table:@"Keynote"];
    v70 = [v67 localizedStringWithFormat:v69, v84];

    [array addObject:v70];
    if (!*(&v77 + 1))
    {
      [dictionary setObject:&unk_2884F3690 forKeyedSubscript:@"type"];
    }
  }

  if (info)
  {
    v42 = [dictionary count];
    if (v42)
    {
      v42 = dictionary;
      *info = dictionary;
    }
  }

  v71 = *(v20 + 560);
  if (!v84 || v77 == 0)
  {
    v74 = [*(v20 + 560) displayStringForStrings:array itemSeparator:{@", "}];
  }

  else
  {
    v72 = sub_275DC204C(v42);
    v73 = [v72 localizedStringForKey:@" and " value:&stru_2884D8E20 table:@"Keynote"];
    v74 = [v71 displayStringForStrings:array itemSeparator:@" lastItemSeparator:{", v73}];
  }

  return v74;
}

- (int64_t)compareLocationSortingInfo:(id)info toSortingInfo:(id)sortingInfo
{
  infoCopy = info;
  sortingInfoCopy = sortingInfo;
  if (!infoCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:1694 isFatal:0 description:{"invalid nil value for '%{public}s'", "info1"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    if (sortingInfoCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]"];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v21 handleFailureInFunction:v22 file:v23 lineNumber:1696 isFatal:0 description:{"Unexpected class of info1:%@", infoCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (sortingInfoCopy)
    {
      goto LABEL_5;
    }
  }

  v24 = MEMORY[0x277D81150];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]"];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
  [v24 handleFailureInFunction:v25 file:v26 lineNumber:1698 isFatal:0 description:{"invalid nil value for '%{public}s'", "info2"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_5:
  objc_opt_class();
  v11 = TSUDynamicCast();
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:1700 isFatal:0 description:{"Unexpected class of info1:%@", infoCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D5B3E8;
  aBlock[3] = &unk_27A697BE8;
  v28 = v10;
  v29 = v11;
  v15 = v11;
  v16 = v10;
  v17 = _Block_copy(aBlock);
  v18 = v17[2](v17, @"type");
  if (!v18)
  {
    v18 = v17[2](v17, @"orderNumber");
    if (!v18)
    {
      v18 = v17[2](v17, @"name");
    }
  }

  v19 = v18;

  return v19;
}

- (void)preprocessForSaveAsTheme
{
  [(KNDocumentRoot *)self willModify];
  objc_opt_class();
  theme = [(KNDocumentRoot *)self theme];
  v5 = TSUDynamicCast();

  v4 = +[KNTheme generateUUID];
  [v5 setUUID:v4];
}

- (void)prepareForSavingAsTemplate
{
  v23.receiver = self;
  v23.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v23 prepareForSavingAsTemplate];
  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];
  theme = [show theme];
  templateSlides = [theme templateSlides];
  v7 = [templateSlides objectAtIndexedSubscript:0];

  slide = [v7 slide];
  v9 = [KNSlideNode alloc];
  context = [show context];
  v11 = [(KNSlideNode *)v9 initWithContext:context];

  v12 = [KNSlide blankSlideWithSlideNode:v11 templateSlide:slide andShow:show];
  [(KNSlideNode *)v11 setSlide:v12];

  accessController = [(KNDocumentRoot *)self accessController];

  if (!accessController)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNDocumentRoot prepareForSavingAsTemplate]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:1761 isFatal:0 description:{"invalid nil value for '%{public}s'", "self.accessController"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  accessController2 = [(KNDocumentRoot *)self accessController];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_275D5B8D0;
  v20[3] = &unk_27A697C10;
  v21 = slideTree;
  v22 = v11;
  v18 = v11;
  v19 = slideTree;
  [accessController2 performWrite:v20];

  [(TSADocumentRoot *)self setTemplateIdentifier:0];
}

- (BOOL)validateUIState:(id)state
{
  stateCopy = state;
  slideTreeSelection = [stateCopy slideTreeSelection];
  slideNodes = [slideTreeSelection slideNodes];
  slideNodeToEdit = [slideTreeSelection slideNodeToEdit];
  v8 = MEMORY[0x277CBEB98];
  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];
  slideNodes2 = [slideTree slideNodes];
  v12 = [v8 setWithArray:slideNodes2];

  if ([slideNodes isSubsetOfSet:v12])
  {
    v13 = [slideNodes containsObject:slideNodeToEdit];
  }

  else
  {
    v13 = 0;
  }

  collapsedSlideNodes = [stateCopy collapsedSlideNodes];
  v15 = [collapsedSlideNodes count];
  v16 = (v15 == 0) & v13;
  if (v15 && v13)
  {
    v16 = [collapsedSlideNodes isSubsetOfSet:v12];
  }

  outlineCollapsedSlideNodes = [stateCopy outlineCollapsedSlideNodes];
  v18 = [outlineCollapsedSlideNodes count];
  v19 = (v18 == 0) & v16;
  if (v18 && v16)
  {
    v19 = [outlineCollapsedSlideNodes isSubsetOfSet:v12];
  }

  outlineHasBodySlideNodes = [stateCopy outlineHasBodySlideNodes];
  v21 = [outlineHasBodySlideNodes count];
  v22 = (v21 == 0) & v19;
  if (v21 && v19)
  {
    v22 = [outlineHasBodySlideNodes isSubsetOfSet:v12];
  }

  return v22;
}

- (unint64_t)writingDirectionForStorage
{
  if (TSWPPrimaryInputMethodIsRTL())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)validateSlideNode:(id)node
{
  nodeCopy = node;
  slide = [nodeCopy slide];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  show = [(KNDocumentRoot *)self show];
  slideTree = [show slideTree];
  v8 = [slideTree containsSlideNode:nodeCopy];

  if ((v8 & 1) == 0)
  {
LABEL_5:
    theme = [(KNDocumentRoot *)self theme];
    templateSlides = [theme templateSlides];
    v9 = [templateSlides containsObject:nodeCopy];

    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = MEMORY[0x277D80010];
  }

  v16.receiver = self;
  v16.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v16 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275D5BE3C;
  v15[3] = &unk_27A697C38;
  v15[4] = self;
  v9 = unarchiverCopy;
  v10 = objc_opt_class();
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D80A18];
  }

  [v9 readReferenceMessage:v11 class:v10 protocol:0 completion:v15];

  if ((*(archive + 16) & 4) != 0)
  {
    v12 = *(archive + 5);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_275D5BE48;
    v14[3] = &unk_27A697C60;
    v14[4] = self;
    v13 = v9;
    [v13 readReferenceMessage:v12 class:objc_opt_class() protocol:0 completion:v14];
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275D5BFD8;
  v11[3] = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v12 = v7;
  selfCopy = self;
  [v7 pushScopeForField:3 message:archive usingBlock:v11];
  show = [(KNDocumentRoot *)self show];
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F050](v10);
    *(archive + 3) = v9;
  }

  [v7 setStrongReference:show message:v9];
}

- (void)p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes:(id)nodes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  nodesCopy = nodes;
  v4 = [nodesCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(nodesCopy);
        }

        [*(*(&v7 + 1) + 8 * v6++) willModifyForUpgrade];
      }

      while (v4 != v6);
      v4 = [nodesCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[58]];

  [(KNDocumentRoot *)self loadFromArchive:v5 unarchiver:unarchiverCopy];
  preUFFVersion = [unarchiverCopy preUFFVersion];
  fileFormatVersion = [unarchiverCopy fileFormatVersion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275D5C284;
  v8[3] = &unk_27A697D50;
  v8[4] = self;
  v8[5] = preUFFVersion;
  v8[6] = fileFormatVersion;
  [unarchiverCopy addFinalizeHandler:v8];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D5DE54 descriptor:off_2812EA908[58]];

  [(KNDocumentRoot *)self saveToArchive:v4 archiver:archiverCopy];
}

@end