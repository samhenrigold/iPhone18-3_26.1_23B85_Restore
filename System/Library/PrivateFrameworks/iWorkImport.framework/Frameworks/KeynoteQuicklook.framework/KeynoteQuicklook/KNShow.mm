@interface KNShow
+ (KNShow)showWithSize:(CGSize)size context:(id)context;
+ (unint64_t)maximumHeight;
+ (unint64_t)maximumWidth;
- (BOOL)hasInSyncRecording;
- (BOOL)isPlayable;
- (BOOL)slideNumbersVisible;
- (CGPoint)center;
- (CGSize)size;
- (KNShow)initWithSize:(CGSize)size context:(id)context;
- (id)slideNodeAtIndex:(unint64_t)index;
- (id)slideNodesAtIndexes:(id)indexes;
- (unint64_t)indexOfSlideNode:(id)node;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAutomaticallyPlaysUponOpen:(BOOL)open;
- (void)setAutoplayBuildDelay:(double)delay;
- (void)setAutoplayTransitionDelay:(double)delay;
- (void)setIdleTimerActive:(BOOL)active;
- (void)setIdleTimerDelay:(double)delay;
- (void)setLoopPresentation:(BOOL)presentation;
- (void)setMode:(int64_t)mode;
- (void)setRecording:(id)recording;
- (void)setSize:(CGSize)size;
- (void)setSlideTree:(id)tree;
- (void)setSoundtrack:(id)soundtrack;
- (void)setStylesheetForThemePreview:(id)preview;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)willModify;
@end

@implementation KNShow

- (void)setSlideTree:(id)tree
{
  treeCopy = tree;
  if (self->_slideTree != treeCopy)
  {
    v6 = treeCopy;
    [(KNShow *)self willModify];
    objc_storeStrong(&self->_slideTree, tree);
    treeCopy = v6;
  }
}

- (void)setAutoplayTransitionDelay:(double)delay
{
  if (self->_autoplayTransitionDelay != delay)
  {
    [(KNShow *)self willModify];
    self->_autoplayTransitionDelay = delay;
  }
}

- (void)setAutoplayBuildDelay:(double)delay
{
  if (self->_autoplayBuildDelay != delay)
  {
    [(KNShow *)self willModify];
    self->_autoplayBuildDelay = delay;
  }
}

- (void)setIdleTimerDelay:(double)delay
{
  if (self->_idleTimerDelay != delay)
  {
    [(KNShow *)self willModify];
    self->_idleTimerDelay = delay;
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    [(KNShow *)self willModify];
    self->_mode = mode;
  }
}

- (void)setLoopPresentation:(BOOL)presentation
{
  if (self->_loopPresentation != presentation)
  {
    [(KNShow *)self willModify];
    self->_loopPresentation = presentation;
  }
}

- (void)setIdleTimerActive:(BOOL)active
{
  if (self->_idleTimerActive != active)
  {
    [(KNShow *)self willModify];
    self->_idleTimerActive = active;
  }
}

- (void)setAutomaticallyPlaysUponOpen:(BOOL)open
{
  if (self->_automaticallyPlaysUponOpen != open)
  {
    [(KNShow *)self willModify];
    self->_automaticallyPlaysUponOpen = open;
  }
}

- (void)setSoundtrack:(id)soundtrack
{
  soundtrackCopy = soundtrack;
  if (self->_soundtrack != soundtrackCopy)
  {
    v6 = soundtrackCopy;
    [(KNShow *)self willModify];
    objc_storeStrong(&self->_soundtrack, soundtrack);
    soundtrackCopy = v6;
  }
}

- (void)setRecording:(id)recording
{
  recordingCopy = recording;
  if (self->_recording != recordingCopy)
  {
    v6 = recordingCopy;
    [(KNShow *)self willModify];
    objc_storeStrong(&self->_recording, recording);
    recordingCopy = v6;
  }
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (self->_stylesheet != stylesheetCopy)
  {
    v6 = stylesheetCopy;
    [(KNShow *)self willModifyForUpgrade];
    objc_storeStrong(&self->_stylesheet, stylesheet);
    stylesheetCopy = v6;
  }
}

- (void)setStylesheetForThemePreview:(id)preview
{
  previewCopy = preview;
  if (self->_stylesheet != previewCopy)
  {
    v6 = previewCopy;
    [(KNShow *)self willModifyForUpgrade];
    objc_storeStrong(&self->_stylesheet, preview);
    previewCopy = v6;
  }
}

- (BOOL)slideNumbersVisible
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D6E848;
  aBlock[3] = &unk_27A698188;
  aBlock[4] = &v11;
  v3 = _Block_copy(aBlock);
  theme = [(KNShow *)self theme];
  templateSlides = [theme templateSlides];
  [templateSlides enumerateObjectsUsingBlock:v3];

  if (*(v12 + 24) == 1)
  {
    slideTree = [(KNShow *)self slideTree];
    slideNodes = [slideTree slideNodes];
    [slideNodes enumerateObjectsUsingBlock:v3];

    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

+ (KNShow)showWithSize:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  height = [[KNShow alloc] initWithSize:contextCopy context:width, height];

  return height;
}

- (KNShow)initWithSize:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = KNShow;
  v8 = [(KNShow *)&v21 initWithContext:contextCopy];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D80AE0]) initWithContext:contextCopy canCullStyles:1];
    stylesheet = v8->_stylesheet;
    v8->_stylesheet = v9;

    v11 = [[KNTheme alloc] initWithContext:contextCopy documentStylesheet:v8->_stylesheet];
    theme = v8->_theme;
    v8->_theme = v11;

    v13 = objc_alloc_init(KNUIState);
    uiState = v8->_uiState;
    v8->_uiState = v13;

    v15 = [[KNSlideTree alloc] initWithOwner:v8];
    slideTree = v8->_slideTree;
    v8->_slideTree = v15;

    v8->_size.width = width;
    v8->_size.height = height;
    v8->_autoplayTransitionDelay = 5.0;
    v8->_autoplayBuildDelay = 2.0;
    v8->_idleTimerDelay = 900.0;
    v8->_mode = 0;
    v8->_loopPresentation = 0;
    v8->_idleTimerActive = 0;
    v17 = [KNSoundtrack alloc];
    v18 = [(KNSoundtrack *)v17 initWithSoundtrackMedia:MEMORY[0x277CBEBF8] context:contextCopy];
    soundtrack = v8->_soundtrack;
    v8->_soundtrack = v18;

    [(KNSoundtrack *)v8->_soundtrack wasAddedToDocumentWithContext:contextCopy];
  }

  return v8;
}

- (CGPoint)center
{
  TSUMultiplyPointScalar();
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (self->_theme != themeCopy)
  {
    v8 = themeCopy;
    [(KNShow *)self willModify];
    owningDocument = [(TSPObject *)self owningDocument];
    v7 = self->_theme;
    [(KNTheme *)v7 willBeRemovedFromDocumentRoot:owningDocument];
    [(KNTheme *)v8 willBeAddedToDocumentRoot:owningDocument dolcContext:0];
    objc_storeStrong(&self->_theme, theme);
    self->_localizeDocument = 1;
    [(KNTheme *)v7 wasRemovedFromDocumentRoot:owningDocument];
    [(KNTheme *)v8 wasAddedToDocumentRoot:owningDocument dolcContext:0];

    themeCopy = v8;
  }
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x277D85DE8];
  [(KNShow *)self willModify];
  self->_size.width = width;
  self->_size.height = height;
  v6 = [objc_alloc(MEMORY[0x277D802E8]) initWithSize:{width, height}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  slideNodes = [(KNSlideTree *)self->_slideTree slideNodes];
  v8 = [slideNodes countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(slideNodes);
        }

        slide = [*(*(&v25 + 1) + 8 * v11) slide];
        background = [slide background];
        [background setGeometry:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [slideNodes countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  templateSlides = [(KNTheme *)self->_theme templateSlides];
  v15 = [templateSlides countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(templateSlides);
        }

        slide2 = [*(*(&v21 + 1) + 8 * v18) slide];
        background2 = [slide2 background];
        [background2 setGeometry:v6];

        ++v18;
      }

      while (v16 != v18);
      v16 = [templateSlides countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }
}

+ (unint64_t)maximumWidth
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"KNShowUseExtendedMaxSize"];

  if (v3)
  {
    return 50000;
  }

  else
  {
    return 0x2000;
  }
}

+ (unint64_t)maximumHeight
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"KNShowUseExtendedMaxSize"];

  if (v3)
  {
    return 50000;
  }

  else
  {
    return 0x2000;
  }
}

- (void)willModify
{
  v2.receiver = self;
  v2.super_class = KNShow;
  [(KNShow *)&v2 willModify];
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  slideTree = [(KNShow *)self slideTree];
  v6 = [slideTree indexOfSlideNode:nodeCopy];

  return v6;
}

- (id)slideNodeAtIndex:(unint64_t)index
{
  slideTree = [(KNShow *)self slideTree];
  v5 = [slideTree slideNodeAtIndex:index ignoreHiddenNodes:0];

  return v5;
}

- (id)slideNodesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  slideTree = [(KNShow *)self slideTree];
  slideNodes = [slideTree slideNodes];

  if ([indexesCopy lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    lastIndex = [indexesCopy lastIndex];
    if (lastIndex >= [slideNodes count])
    {
      v8 = MEMORY[0x277D81150];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNShow slideNodesAtIndexes:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNShow.m"];
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:231 isFatal:0 description:"indexes for slideNodeAtIndexes:includingSkipped: must be valid array indices."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  v11 = [slideNodes objectsAtIndexes:indexesCopy];

  return v11;
}

- (BOOL)isPlayable
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  slideTree = [(KNShow *)self slideTree];
  slideNodes = [slideTree slideNodes];

  v4 = [slideNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(slideNodes);
        }

        if (![*(*(&v8 + 1) + 8 * i) isSkipped])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [slideNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasInSyncRecording
{
  recording = [(KNShow *)self recording];
  v3 = recording;
  if (recording)
  {
    isInSyncWithShow = [recording isInSyncWithShow];
  }

  else
  {
    isInSyncWithShow = 0;
  }

  return isInSyncWithShow;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = [KNSlideTree alloc];
  if (*(archive + 5))
  {
    v8 = *(archive + 5);
  }

  else
  {
    v8 = &unk_2812EB558;
  }

  v9 = [(KNSlideTree *)v7 initWithArchive:v8 unarchiver:unarchiverCopy owner:self];
  slideTree = self->_slideTree;
  self->_slideTree = v9;

  v11 = *(archive + 4);
  self->_loopPresentation = *(archive + 93) & ((v11 & 0x400) >> 10);
  self->_mode = *(archive + 22) & (v11 << 23 >> 31);
  v12 = *(archive + 12);
  if ((v11 & 0x2000) == 0)
  {
    v12 = 5.0;
  }

  self->_autoplayTransitionDelay = v12;
  v13 = *(archive + 13);
  if ((v11 & 0x4000) == 0)
  {
    v13 = 2.0;
  }

  self->_autoplayBuildDelay = v13;
  v14 = *(archive + 6);
  if (!v14)
  {
    v14 = MEMORY[0x277D809D8];
  }

  self->_size = vcvtq_f64_f32(v14[3]);
  v15 = *(archive + 4);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_275D6F79C;
  v39[3] = &unk_27A6981B0;
  v39[4] = self;
  v16 = unarchiverCopy;
  v17 = objc_opt_class();
  v18 = MEMORY[0x277D80A18];
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = MEMORY[0x277D80A18];
  }

  [v16 readReferenceMessage:v19 class:v17 protocol:0 completion:v39];

  v20 = *(archive + 7);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_275D6F7B4;
  v38[3] = &unk_27A6981D8;
  v38[4] = self;
  v21 = v16;
  v22 = objc_opt_class();
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v18;
  }

  [v21 readReferenceMessage:v23 class:v22 protocol:0 completion:v38];

  v24 = *(archive + 4);
  if ((v24 & 0x20) != 0)
  {
    v25 = *(archive + 8);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_275D6F7CC;
    v37[3] = &unk_27A698200;
    v37[4] = self;
    v26 = v21;
    [v26 readReferenceMessage:v25 class:objc_opt_class() protocol:0 completion:v37];

    v24 = *(archive + 4);
  }

  if ((v24 & 0x800) != 0)
  {
    [(KNShow *)self setIdleTimerActive:*(archive + 94)];
    v24 = *(archive + 4);
  }

  v27 = *(archive + 14);
  if ((v24 & 0x8000) == 0)
  {
    v27 = 900.0;
  }

  [(KNShow *)self setIdleTimerDelay:v27];
  self->_automaticallyPlaysUponOpen = *(archive + 95);
  if ((*(archive + 16) & 0x40) != 0)
  {
    v34 = *(archive + 9);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_275D6F7D8;
    v36[3] = &unk_27A698228;
    v36[4] = self;
    v35 = v21;
    [v35 readReferenceMessage:v34 class:objc_opt_class() protocol:0 completion:v36];
  }

  else
  {
    [(KNShow *)self willModifyForUpgrade];
    v28 = [KNSoundtrack alloc];
    context = [(KNShow *)self context];
    v30 = [(KNSoundtrack *)v28 initWithSoundtrackMedia:MEMORY[0x277CBEBF8] context:context];
    soundtrack = self->_soundtrack;
    self->_soundtrack = v30;

    v32 = self->_soundtrack;
    context2 = [(KNShow *)self context];
    [(KNSoundtrack *)v32 wasAddedToDocumentDuringUnarchiveWithContext:context2];
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  slideTree = [(KNShow *)self slideTree];
  *(archive + 4) |= 4u;
  v7 = *(archive + 5);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E2060C(v8);
    *(archive + 5) = v7;
  }

  [slideTree saveToArchive:v7 archiver:archiverCopy];

  *(archive + 4) |= 8u;
  v9 = *(archive + 6);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8EFF0](v10);
    *(archive + 6) = v9;
  }

  [(KNShow *)self size];
  *&v11 = v11;
  *(v9 + 16) |= 1u;
  *(v9 + 24) = LODWORD(v11);
  [(KNShow *)self size];
  v13 = v12;
  *(v9 + 16) |= 2u;
  *(v9 + 28) = v13;
  theme = [(KNShow *)self theme];
  *(archive + 4) |= 2u;
  v15 = *(archive + 4);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x277C8F050](v16);
    *(archive + 4) = v15;
  }

  [archiverCopy setStrongReference:theme message:v15];

  stylesheet = [(KNShow *)self stylesheet];
  *(archive + 4) |= 0x10u;
  v18 = *(archive + 7);
  if (!v18)
  {
    v19 = *(archive + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C8F050](v19);
    *(archive + 7) = v18;
  }

  [archiverCopy setStrongReference:stylesheet message:v18];

  recording = [(KNShow *)self recording];
  if (recording)
  {
    *(archive + 4) |= 0x20u;
    v21 = *(archive + 8);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C8F050](v22);
      *(archive + 8) = v21;
    }

    [archiverCopy setStrongReference:recording message:v21];
  }

  loopPresentation = [(KNShow *)self loopPresentation];
  *(archive + 4) |= 0x400u;
  *(archive + 93) = loopPresentation;
  mode = [(KNShow *)self mode];
  *(archive + 4) |= 0x100u;
  *(archive + 22) = mode;
  [(KNShow *)self autoplayTransitionDelay];
  *(archive + 4) |= 0x2000u;
  *(archive + 12) = v25;
  [(KNShow *)self autoplayBuildDelay];
  *(archive + 4) |= 0x4000u;
  *(archive + 13) = v26;
  idleTimerActive = [(KNShow *)self idleTimerActive];
  *(archive + 4) |= 0x800u;
  *(archive + 94) = idleTimerActive;
  [(KNShow *)self idleTimerDelay];
  *(archive + 4) |= 0x8000u;
  *(archive + 14) = v28;
  automaticallyPlaysUponOpen = [(KNShow *)self automaticallyPlaysUponOpen];
  *(archive + 4) |= 0x1000u;
  *(archive + 95) = automaticallyPlaysUponOpen;
  soundtrack = [(KNShow *)self soundtrack];
  if (soundtrack)
  {
    *(archive + 4) |= 0x40u;
    v31 = *(archive + 9);
    if (!v31)
    {
      v32 = *(archive + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C8F050](v32);
      *(archive + 9) = v31;
    }

    [archiverCopy setStrongReference:soundtrack message:v31];
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[56]];

  [(KNShow *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
  if ([unarchiverCopy preUFFVersion] >= 0x51FF6C2CELL)
  {
    fileFormatVersion = [unarchiverCopy fileFormatVersion];
    if (fileFormatVersion >= *MEMORY[0x277D809A8])
    {
      v5 = 0;
    }

    else
    {
      [(KNShow *)self size];
      v8 = v7;
      [(KNShow *)self size];
      v5 = v8 / v9 > 1.875;
    }
  }

  else
  {
    v5 = 1;
  }

  self->_needsToUpdateThumbnails = v5;
  self->_wasImportedAsPreUFF = [unarchiverCopy hasPreUFFVersion];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275D6FD5C descriptor:off_2812EA908[56]];

  [(KNShow *)self saveToArchive:v4 archiver:archiverCopy];
}

@end