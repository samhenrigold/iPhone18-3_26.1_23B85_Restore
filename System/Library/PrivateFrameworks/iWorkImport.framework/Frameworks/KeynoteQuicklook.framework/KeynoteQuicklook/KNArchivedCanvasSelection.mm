@interface KNArchivedCanvasSelection
- (KNArchivedCanvasSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedCanvasSelection

- (KNArchivedCanvasSelection)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = KNArchivedCanvasSelection;
  v5 = [(KNArchivedCanvasSelection *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = +[KNCanvasSelection emptySelection];
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[46]];

  v5 = [(TSDCanvasSelection *)[KNCanvasSelection alloc] initWithArchive:v4 unarchiver:unarchiverCopy];
  selection = self->_selection;
  self->_selection = &v5->super;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DDA5C0 descriptor:off_2812EA908[46]];

  selection = [(KNArchivedCanvasSelection *)self selection];
  [selection saveToArchive:v4 archiver:archiverCopy];
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
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNArchivedCanvasSelection setSelection:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedCanvasSelection.mm"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:56 isFatal:0 description:"selection is not a KNCanvasSelection"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  [(KNArchivedCanvasSelection *)self willModify];
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end