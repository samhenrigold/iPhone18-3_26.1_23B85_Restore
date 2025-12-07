@interface KNArchivedActionGhostSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToArchiver:(id)archiver intoMessage:(void *)message;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedActionGhostSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNArchivedActionGhostSelection setSelection:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedActionGhostSelection.mm"];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:33 isFatal:0 description:{"Wrong type of class %@ (expected KNActionGhostSelection)", v9}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  [(KNArchivedActionGhostSelection *)self willModify];
  selection = self->_selection;
  self->_selection = selectionCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[48]];

  v5 = [[KNActionGhostSelection alloc] initWithArchive:v4 unarchiver:unarchiverCopy];
  [(KNArchivedActionGhostSelection *)self setSelection:v5];
}

- (void)saveToArchiver:(id)archiver intoMessage:(void *)message
{
  archiverCopy = archiver;
  objc_opt_class();
  selection = [(KNArchivedActionGhostSelection *)self selection];
  v7 = TSUDynamicCast();
  [v7 saveToArchive:message archiver:archiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  [archiverCopy setMessageVersion:*MEMORY[0x277D809A8]];
  v6 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v5 = [v6 messageWithNewFunction:sub_275DAB014 descriptor:off_2812EA908[48]];

  [(KNArchivedActionGhostSelection *)self saveToArchiver:v6 intoMessage:v5];
}

@end