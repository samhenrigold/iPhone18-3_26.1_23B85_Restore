@interface TSTArchivedAutofillSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTArchivedAutofillSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedAutofillSelection setSelection:]", v5);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedAutofillSelection.mm", v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 38, 0, "Wrong type of class %@ (expected TSTAutofillSelection)", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }
  }

  objc_opt_class();
  v17 = TSUDynamicCast();
  objc_msgSend_willModify(self, v18, v19, v20);
  autofillSelection = self->_autofillSelection;
  self->_autofillSelection = v17;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[154], v5);
  v7 = 0x7FFF7FFFFFFFLL;

  v8 = *(v6 + 16);
  if (v8)
  {
    v10 = sub_22112397C(*(v6 + 24));
    v9 = v12;
    if ((*(v6 + 16) & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0x7FFF7FFFFFFFLL;
    if ((v8 & 2) == 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  v7 = sub_22112397C(*(v6 + 32));
  v11 = v13;
LABEL_6:
  v14 = [TSTAutofillSelection alloc];
  v16 = objc_msgSend_initWithSourceCellRange_targetCellRange_(v14, v15, v10, v9, v7, v11);
  autofillSelection = self->_autofillSelection;
  self->_autofillSelection = v16;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2216E45B4, off_2812E4498[154]);

  v9 = objc_msgSend_autofillSelection(self, v6, v7, v8);
  v13 = objc_msgSend_sourceCellRange(v9, v10, v11, v12);
  v15 = v14;
  *(v5 + 16) |= 1u;
  v16 = *(v5 + 24);
  if (!v16)
  {
    v17 = *(v5 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v17);
    *(v5 + 24) = v16;
  }

  sub_2211239EC(v13, v15, v16);

  v21 = objc_msgSend_autofillSelection(self, v18, v19, v20);
  v25 = objc_msgSend_targetCellRange(v21, v22, v23, v24);
  v27 = v26;
  *(v5 + 16) |= 2u;
  v28 = *(v5 + 32);
  if (!v28)
  {
    v29 = *(v5 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v29);
    *(v5 + 32) = v28;
  }

  sub_2211239EC(v25, v27, v28);
}

@end