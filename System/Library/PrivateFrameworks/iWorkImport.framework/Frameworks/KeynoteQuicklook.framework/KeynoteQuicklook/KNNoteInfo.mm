@interface KNNoteInfo
- (BOOL)isAnchoredToText;
- (BOOL)isFloatingAboveText;
- (BOOL)isInlineWithText;
- (BOOL)isThemeContent;
- (CGRect)frameForPrinting;
- (KNNoteInfo)initWithContext:(id)context containedStorage:(id)storage;
- (NSArray)childInfos;
- (TSDInfo)parentInfo;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)objectUUIDPath;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)dealloc;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setContainedStorage:(id)storage;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
- (void)setParentInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNNoteInfo

- (KNNoteInfo)initWithContext:(id)context containedStorage:(id)storage
{
  contextCopy = context;
  storageCopy = storage;
  v21.receiver = self;
  v21.super_class = KNNoteInfo;
  v8 = [(KNNoteInfo *)&v21 initWithContext:contextCopy];
  if (v8)
  {
    if (storageCopy)
    {
      v9 = storageCopy;
      containedStorage = v8->_containedStorage;
      v8->_containedStorage = v9;
    }

    else
    {
      objc_opt_class();
      documentRoot = [contextCopy documentRoot];
      containedStorage = TSUCheckedDynamicCast();

      show = [containedStorage show];
      theme = [show theme];
      defaultPresenterNotesParagraphStyle = [theme defaultPresenterNotesParagraphStyle];

      v15 = objc_alloc(MEMORY[0x277D80F28]);
      stylesheet = [containedStorage stylesheet];
      initialListStyle = [defaultPresenterNotesParagraphStyle initialListStyle];
      v18 = [v15 initWithContext:contextCopy string:0 kind:4 stylesheet:stylesheet paragraphStyle:defaultPresenterNotesParagraphStyle listStyle:initialListStyle section:0 columnStyle:0];
      v19 = v8->_containedStorage;
      v8->_containedStorage = v18;
    }

    [(TSWPStorage *)v8->_containedStorage setParentInfo:v8];
  }

  return v8;
}

- (void)dealloc
{
  [(TSWPStorage *)self->_containedStorage setParentInfo:0];
  containedStorage = self->_containedStorage;
  self->_containedStorage = 0;

  v4.receiver = self;
  v4.super_class = KNNoteInfo;
  [(KNNoteInfo *)&v4 dealloc];
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [[KNNoteInfo alloc] initWithContext:contextCopy];
  if (v5)
  {
    v6 = [(TSWPStorage *)self->_containedStorage copyWithContext:contextCopy];
    containedStorage = v5->_containedStorage;
    v5->_containedStorage = v6;

    [(TSWPStorage *)v5->_containedStorage setParentInfo:v5];
  }

  return v5;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  stylesheetCopy = stylesheet;
  [(KNNoteInfo *)self willModify];
  containedStorage = [(KNNoteInfo *)self containedStorage];
  [containedStorage adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
}

- (void)setContainedStorage:(id)storage
{
  storageCopy = storage;
  if (self->_containedStorage != storageCopy)
  {
    v6 = storageCopy;
    [(KNNoteInfo *)self willModify];
    [(TSWPStorage *)self->_containedStorage setParentInfo:0];
    objc_storeStrong(&self->_containedStorage, storage);
    [(TSWPStorage *)self->_containedStorage setParentInfo:self];
    storageCopy = v6;
  }
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNNoteInfo setGeometry:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:110 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNNoteInfo setGeometry:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (TSDInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

- (void)setParentInfo:(id)info
{
  obj = info;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentInfo, obj);
    v5 = obj;
  }
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentInfo, 0);
  }
}

- (BOOL)isFloatingAboveText
{
  owningAttachment = [(KNNoteInfo *)self owningAttachment];
  v3 = owningAttachment == 0;

  return v3;
}

- (BOOL)isAnchoredToText
{
  owningAttachment = [(KNNoteInfo *)self owningAttachment];
  isAnchored = [owningAttachment isAnchored];

  return isAnchored;
}

- (BOOL)isInlineWithText
{
  if ([(KNNoteInfo *)self isFloatingAboveText])
  {
    return 0;
  }

  else
  {
    return ![(KNNoteInfo *)self isAnchoredToText];
  }
}

- (void)setOwningAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNNoteInfo setOwningAttachment:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:158 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNNoteInfo setOwningAttachment:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)isThemeContent
{
  parentInfo = [(KNNoteInfo *)self parentInfo];
  isThemeContent = [parentInfo isThemeContent];

  return isThemeContent;
}

- (NSArray)childInfos
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_containedStorage)
  {
    v4[0] = self->_containedStorage;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)childEnumerator
{
  array = [MEMORY[0x277CBEB18] array];
  containedStorage = [(KNNoteInfo *)self containedStorage];
  if (containedStorage)
  {
    [array addObject:containedStorage];
  }

  objectEnumerator = [array objectEnumerator];

  return objectEnumerator;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  containedStorage = [(KNNoteInfo *)self containedStorage];
  [containedStorage willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  context = [rootCopy context];
  [(KNNoteInfo *)self wasAddedToDocumentWithContext:context];

  containedStorage = [(KNNoteInfo *)self containedStorage];
  [containedStorage wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  containedStorage = [(KNNoteInfo *)self containedStorage];
  [containedStorage willBeRemovedFromDocumentRoot:rootCopy];

  context = [rootCopy context];

  [(KNNoteInfo *)self willBeRemovedFromDocumentWithContext:context];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  containedStorage = [(KNNoteInfo *)self containedStorage];
  [containedStorage wasRemovedFromDocumentRoot:rootCopy];
}

- (id)objectUUIDPath
{
  objc_opt_class();
  parentInfo = [(KNNoteInfo *)self parentInfo];
  v4 = TSUDynamicCast();

  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNNoteInfo objectUUIDPath]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:380 isFatal:0 description:{"invalid nil value for '%{public}s'", "tspParentInfo"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objectUUIDPath = [v4 objectUUIDPath];
  objectUUID = [(KNNoteInfo *)self objectUUID];
  v10 = [objectUUIDPath UUIDPathByAppendingUUID:objectUUID];

  return v10;
}

- (CGRect)frameForPrinting
{
  x = self->_frameForPrinting.origin.x;
  y = self->_frameForPrinting.origin.y;
  width = self->_frameForPrinting.size.width;
  height = self->_frameForPrinting.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[20]];

  [(KNNoteInfo *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DBB1D8 descriptor:off_2812EA908[20]];

  [(KNNoteInfo *)self saveToArchive:v4 archiver:archiverCopy];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DBB110;
  v11[3] = &unk_27A698B58;
  v11[4] = self;
  v8 = unarchiverCopy;
  v9 = objc_opt_class();
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x277D80A18];
  }

  [v8 readReferenceMessage:v10 class:v9 protocol:0 completion:v11];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  containedStorage = [(KNNoteInfo *)self containedStorage];
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C8F050](v8);
    *(archive + 3) = v7;
  }

  [archiverCopy setStrongReference:containedStorage message:v7];
}

@end