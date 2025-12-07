@interface TSTArchivedCellSelection
- (NSString)description;
- (TSKSelection)selection;
- (TSTArchivedCellSelection)selectionWithParent:(id)parent;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTArchivedCellSelection

- (TSKSelection)selection
{
  cellSelection = self->_cellSelection;
  if (!cellSelection)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTArchivedCellSelection selection]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 38, 0, "Call selectionWithParent:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    cellSelection = self->_cellSelection;
  }

  return cellSelection;
}

- (TSTArchivedCellSelection)selectionWithParent:(id)parent
{
  parentCopy = parent;
  cellSelection = self->_cellSelection;
  if (!cellSelection)
  {
    if (self->_isLegacyBasedIDSelection)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      objc_opt_class();
      v10 = objc_msgSend_infos(v6, v7, v8, v9);
      v14 = objc_msgSend_anyObject(v10, v11, v12, v13);
      v15 = TSUDynamicCast();

      if (v15)
      {
        v18 = [TSTCellSelection alloc];
        v20 = objc_msgSend_initForUpgradeWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v18, v19, v15, self->_legacyCellRegion, *&self->_legacyAnchorCellID, *&self->_legacyCursorCellID, self->_legacyBaseCellRegion, self->_selectionType);
        v21 = self->_cellSelection;
        self->_cellSelection = v20;
      }

      else
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTArchivedCellSelection selectionWithParent:]", v17);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 48, 0, "invalid nil value for '%{public}s'", "tableInfo");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      }

      cellSelection = self->_cellSelection;
    }

    else
    {
      cellSelection = 0;
    }
  }

  v31 = cellSelection;

  return cellSelection;
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedCellSelection setSelection:]", v6);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v12, 63, 0, "Wrong type of class %@ (expected TSTCellSelection)", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    }
  }

  objc_msgSend_willModify(self, v4, v5, v6);
  cellSelection = self->_cellSelection;
  self->_cellSelection = selectionCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[142], v5);

  v10 = *(v6 + 16);
  if ((v10 & 0x10) != 0 || (v10 & 0x40) != 0 || (v10 & 0x80) != 0)
  {
    self->_isLegacyBasedIDSelection = 0;
    v21 = [TSTCellSelection alloc];
    v23 = objc_msgSend_initWithArchive_unarchiver_(v21, v22, v6, unarchiverCopy);
    objc_msgSend_setSelection_(self, v24, v23, v25);

    goto LABEL_8;
  }

  self->_isLegacyBasedIDSelection = 1;
  v11 = *(v6 + 136);
  if (v11 <= 3)
  {
    if (v11 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
      if (v11 != 2)
      {
        v26 = 0;
      }
    }

    goto LABEL_19;
  }

  if ((v11 - 4) < 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSTSelectionType TSTArchivedToNativeSelectionType(const TST::SelectionTypeArchive)", v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.h", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 212, 0, "shouldn't be converting from deprecated archived selection type %d", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
LABEL_17:
    v26 = 0;
    goto LABEL_19;
  }

  if (v11 != 7)
  {
    goto LABEL_17;
  }

  v26 = 3;
LABEL_19:
  self->_selectionType = v26;
  v27 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  legacyCellRegion = self->_legacyCellRegion;
  self->_legacyCellRegion = v27;

  if (*(v6 + 32) >= 1)
  {
    v32 = 0;
    do
    {
      v33 = self->_legacyCellRegion;
      v34 = sub_22112397C(*(*(v6 + 40) + 8 * v32 + 8));
      v36 = objc_msgSend_regionByAddingRange_(v33, v35, v34, v35);
      v37 = self->_legacyCellRegion;
      self->_legacyCellRegion = v36;

      ++v32;
    }

    while (v32 < *(v6 + 32));
  }

  v38 = objc_msgSend_invalidRegion(TSTCellRegion, v29, v30, v31);
  legacyBaseCellRegion = self->_legacyBaseCellRegion;
  self->_legacyBaseCellRegion = v38;

  if (*(v6 + 56) >= 1)
  {
    v43 = 0;
    do
    {
      v44 = self->_legacyBaseCellRegion;
      v45 = sub_22112397C(*(*(v6 + 64) + 8 * v43 + 8));
      v47 = objc_msgSend_regionByAddingRange_(v44, v46, v45, v46);
      v48 = self->_legacyBaseCellRegion;
      self->_legacyBaseCellRegion = v47;

      ++v43;
    }

    while (v43 < *(v6 + 56));
  }

  self->_legacyAnchorCellID = 0x7FFF7FFFFFFFLL;
  if ((*(v6 + 16) & 2) != 0)
  {
    CellID = sub_2211238E0(*(v6 + 80));
  }

  else
  {
    CellID = objc_msgSend_firstCellID(self->_legacyCellRegion, v40, v41, v42);
  }

  self->_legacyAnchorCellID = CellID;
  self->_legacyCursorCellID = 0x7FFF7FFFFFFFLL;
  if ((*(v6 + 16) & 4) != 0)
  {
    v53 = sub_2211238E0(*(v6 + 88));
  }

  else
  {
    v53 = objc_msgSend_lastCellID(self->_legacyCellRegion, v50, v51, v52);
  }

  self->_legacyCursorCellID = v53;
LABEL_8:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221182B90, off_2812E4498[142]);

  v9 = objc_msgSend_selection(self, v6, v7, v8);
  objc_msgSend_saveToArchive_archiver_(v9, v10, v5, archiverCopy);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_selection(self, v6, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(v3, v10, @"<%@: %p> %@", v11, v5, self, v9);

  return v12;
}

@end