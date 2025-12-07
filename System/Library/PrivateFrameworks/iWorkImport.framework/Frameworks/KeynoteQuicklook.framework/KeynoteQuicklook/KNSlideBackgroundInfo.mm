@interface KNSlideBackgroundInfo
+ (id)backgroundWithSlide:(id)slide andGeometry:(id)geometry;
- (BOOL)isThemeContent;
- (CGSize)minimumSize;
- (KNAbstractSlide)slide;
- (KNMotionBackground)motionBackground;
- (KNSlideBackgroundInfo)initWithSlide:(id)slide andGeometry:(id)geometry;
- (TSDFill)fill;
- (id)endCollectingChanges;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
@end

@implementation KNSlideBackgroundInfo

+ (id)backgroundWithSlide:(id)slide andGeometry:(id)geometry
{
  geometryCopy = geometry;
  slideCopy = slide;
  v7 = [[KNSlideBackgroundInfo alloc] initWithSlide:slideCopy andGeometry:geometryCopy];

  return v7;
}

- (KNSlideBackgroundInfo)initWithSlide:(id)slide andGeometry:(id)geometry
{
  slideCopy = slide;
  geometryCopy = geometry;
  v14.receiver = self;
  v14.super_class = KNSlideBackgroundInfo;
  v8 = [(KNSlideBackgroundInfo *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_geometry, geometry);
    objc_storeWeak(&v9->_slide, slideCopy);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideBackgroundInfo initWithSlide:andGeometry:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:62 isFatal:0 description:"should never return nil. This failure is related to rdar://problem/23050389"];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  return v9;
}

- (BOOL)isThemeContent
{
  parentInfo = [(KNSlideBackgroundInfo *)self parentInfo];
  isThemeContent = [parentInfo isThemeContent];

  return isThemeContent;
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  if (self->_parentInfo == needed)
  {
    self->_parentInfo = 0;
  }
}

- (TSDFill)fill
{
  slide = [(KNSlideBackgroundInfo *)self slide];
  backgroundFill = [slide backgroundFill];

  return backgroundFill;
}

- (KNMotionBackground)motionBackground
{
  slide = [(KNSlideBackgroundInfo *)self slide];
  motionBackground = [slide motionBackground];

  return motionBackground;
}

- (void)beginCollectingChanges
{
  if (!self->_changes || (v3 = MEMORY[0x277D81150], [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideBackgroundInfo beginCollectingChanges]"], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, v5, 134, 0, "don't try to beginCollectingChanges when we are already collecting"), v5, v4, objc_msgSend(MEMORY[0x277D81150], "logBacktraceThrottled"), !self->_changes))
  {
    v6 = objc_alloc_init(MEMORY[0x277D80AC8]);
    changes = self->_changes;
    self->_changes = v6;
  }
}

- (id)endCollectingChanges
{
  changes = self->_changes;
  if (!changes)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideBackgroundInfo endCollectingChanges]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundInfo.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:148 isFatal:0 description:"don't try to endCollectingChanges without calling -beginCollectingChanges first"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    changes = self->_changes;
  }

  v7 = changes;
  v8 = self->_changes;
  self->_changes = 0;

  return changes;
}

- (CGSize)minimumSize
{
  geometry = [(KNSlideBackgroundInfo *)self geometry];
  [geometry size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  show = [rootCopy show];
  [show size];
  v7 = v6;
  v9 = v8;
  geometry = [(KNSlideBackgroundInfo *)self geometry];
  [geometry size];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = objc_alloc(MEMORY[0x277D802E8]);
    show2 = [rootCopy show];
    [show2 size];
    v18 = [v16 initWithSize:?];

    [(KNSlideBackgroundInfo *)self setGeometry:v18];
  }
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  return WeakRetained;
}

@end