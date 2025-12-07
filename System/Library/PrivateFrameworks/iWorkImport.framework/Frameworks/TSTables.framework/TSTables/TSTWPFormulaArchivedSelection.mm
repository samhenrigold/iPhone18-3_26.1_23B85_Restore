@interface TSTWPFormulaArchivedSelection
- (TSTWPFormulaArchivedSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTWPFormulaArchivedSelection

- (TSTWPFormulaArchivedSelection)initWithContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSTWPFormulaArchivedSelection;
  v5 = [(TSWPArchivedSelection *)&v17 initWithContext:contextCopy];
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_selection(v5, v6, v7, v8);
    v13 = objc_msgSend_selectionFromWPSelection_(TSTWPFormulaSelection, v11, v10, v12);
    objc_msgSend_setSelection_(v9, v14, v13, v15);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v20.receiver = self;
  v20.super_class = TSTWPFormulaArchivedSelection;
  [(TSWPArchivedSelection *)&v20 loadFromUnarchiver:unarchiverCopy];
  v5 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E4498[290], v7);

  v12 = objc_msgSend_selection(self, v9, v10, v11);
  v15 = objc_msgSend_selectionFromWPSelection_(TSTWPFormulaSelection, v13, v12, v14);

  if ((*(v8 + 16) & 2) != 0)
  {
    objc_msgSend_setActiveTokenCharIndex_(v15, v16, *(v8 + 32), v17);
  }

  else
  {
    objc_msgSend_setActiveTokenCharIndex_(v15, v16, 0x7FFFFFFFFFFFFFFFLL, v17);
  }

  objc_msgSend_setSelection_(self, v18, v15, v19);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v21.receiver = self;
  v21.super_class = TSTWPFormulaArchivedSelection;
  [(TSWPArchivedSelection *)&v21 saveToArchiver:archiverCopy];
  objc_opt_class();
  v8 = objc_msgSend_selection(self, v5, v6, v7);
  v9 = TSUDynamicCast();

  if (v9 && objc_msgSend_activeTokenCharIndex(v9, v10, v11, v12) != 0x7FFFFFFFFFFFFFFFLL)
  {
    active = objc_msgSend_activeTokenCharIndex(v9, v13, v14, v15);
    v17 = archiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v19 = objc_msgSend_messageWithNewFunction_descriptor_(v17, v18, sub_2212007B0, off_2812E4498[290]);

    v20 = -1;
    if (active < 0xFFFFFFFF)
    {
      v20 = active;
    }

    *(v19 + 16) |= 2u;
    *(v19 + 32) = v20;
  }
}

@end