@interface KNArchivedSlideCollectionSelection
- (KNArchivedSlideCollectionSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedSlideCollectionSelection

- (KNArchivedSlideCollectionSelection)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = KNArchivedSlideCollectionSelection;
  v5 = [(KNArchivedSlideCollectionSelection *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(KNSlideCollectionSelection);
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[98]];

  v5 = off_27A696D50;
  if (*(v4 + 56) <= 0 && (*(v4 + 16) & 2) == 0)
  {
    v5 = off_27A696DA0;
  }

  v6 = [objc_alloc(*v5) initWithArchive:v4 unarchiver:unarchiverCopy];
  selection = self->_selection;
  self->_selection = v6;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DC9B0C descriptor:off_2812EA908[98]];

  [(KNSlideCollectionSelection *)self->_selection saveToArchive:v4 archiver:archiverCopy];
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNArchivedSlideCollectionSelection setSelection:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedSlideCollectionSelection.mm"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:57 isFatal:0 description:"selection is not a KNSlideCollectionSelection"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  [(KNArchivedSlideCollectionSelection *)self willModify];
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end