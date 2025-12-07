@interface TSTCellChooserControlSpec
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)popupCellSpec:(id)spec startWithFirstItem:(BOOL)item;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateFormatAndValue:(id)value;
- (NSArray)displayChoicesForInspector;
- (TSTCellChooserControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellChooserControlSpec)initWithPopupModel:(id)model startWithFirstItem:(BOOL)item;
- (id)tskMultipleChoiceListFormat;
- (id)valueForIndex:(unint64_t)index;
- (unint64_t)indexForValue:(id)value;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellChooserControlSpec

- (TSTCellChooserControlSpec)initWithPopupModel:(id)model startWithFirstItem:(BOOL)item
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = TSTCellChooserControlSpec;
  v8 = [(TSTCellSpec *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_popupModel, model);
    v9->_startWithFirstItem = item;
  }

  return v9;
}

+ (id)popupCellSpec:(id)spec startWithFirstItem:(BOOL)item
{
  itemCopy = item;
  specCopy = spec;
  v6 = [TSTCellChooserControlSpec alloc];
  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(v6, v7, specCopy, itemCopy);

  return Item;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v9 = v5;
    if (v5 && self->_startWithFirstItem == objc_msgSend_startWithFirstItem(v5, v6, v7, v8))
    {
      popupModel = self->_popupModel;
      v14 = objc_msgSend_popupModel(v9, v10, v11, v12);
      isEqual = objc_msgSend_isEqual_(popupModel, v15, v14, v16);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (NSArray)displayChoicesForInspector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_displayChoices)
  {
    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5);
    for (i = 1; ; ++i)
    {
      v11 = objc_msgSend_choices(selfCopy->_popupModel, v6, v7, v8);
      v15 = objc_msgSend_count(v11, v12, v13, v14);

      if (i >= v15)
      {
        break;
      }

      v19 = objc_msgSend_displayStringAtIndex_(selfCopy->_popupModel, v16, i, v18);
      objc_msgSend_addObject_(v9, v20, v19, v21);
    }

    v22 = objc_msgSend_copy(v9, v16, v17, v18);
    displayChoices = selfCopy->_displayChoices;
    selfCopy->_displayChoices = v22;
  }

  objc_sync_exit(selfCopy);

  v24 = selfCopy->_displayChoices;

  return v24;
}

- (unint64_t)indexForValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_choices(self->_popupModel, v5, v6, v7);
  v11 = objc_msgSend_indexOfObject_(v8, v9, valueCopy, v10);

  return v11;
}

- (id)valueForIndex:(unint64_t)index
{
  v5 = objc_msgSend_choices(self->_popupModel, a2, index, v3);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, index, v7);

  return v8;
}

- (BOOL)validateFormatAndValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_popupModel(self, v5, v6, v7);
  v12 = objc_msgSend_objectLocale(v8, v9, v10, v11);
  v15 = objc_msgSend_cellValueWithLocale_(valueCopy, v13, v12, v14);

  LOBYTE(v8) = objc_msgSend_indexForValue_(self, v16, v15, v17) != 0x7FFFFFFFFFFFFFFFLL;
  return v8;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  v6 = objc_msgSend_asMultipleChoiceListFormat(format, a2, format, v3);
  if (v6)
  {
    v7 = [TSTCellChooserControlSpec alloc];
    v11 = objc_msgSend_popupModel(v6, v8, v9, v10);
    v15 = objc_msgSend_initialValue(v6, v12, v13, v14) == 1;
    Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(v7, v16, v11, v15);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSTCellChooserControlSpec cellSpecFromTSKFormat:]", v5);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellChooserControlSpec.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 135, 0, "invalid nil value for '%{public}s'", "mcFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    Item = 0;
  }

  return Item;
}

- (id)tskMultipleChoiceListFormat
{
  v3 = objc_alloc(MEMORY[0x277D80698]);
  Item = objc_msgSend_startWithFirstItem(self, v4, v5, v6);
  v11 = objc_msgSend_popupModel(self, v8, v9, v10);
  v13 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v3, v12, Item, 0, v11);

  return v13;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellChooserControlSpec alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSTCellChooserControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16) != 7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellChooserControlSpec initWithArchive:unarchiver:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellChooserControlSpec.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 159, 0, "Wrong interaction type for a popup.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(self, v6, 0, *(archive + 68));
  v19 = *(archive + 4);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_221259434;
  v25[3] = &unk_278461EE0;
  v20 = Item;
  v26 = v20;
  v21 = unarchiverCopy;
  v23 = objc_opt_class();
  if (v19)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v19, v23, 0, v25);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, MEMORY[0x277D80A18], v23, 0, v25);
  }

  return v20;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_interactionType(self, v6, v7, v8);
  v11 = *(archive + 4);
  *(archive + 4) = v11 | 0x20;
  *(archive + 16) = v9;
  popupModel = self->_popupModel;
  *(archive + 4) = v11 | 0x22;
  v13 = *(archive + 4);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0390](v14);
    *(archive + 4) = v13;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v10, popupModel, v13);
  startWithFirstItem = self->_startWithFirstItem;
  *(archive + 4) |= 0x40u;
  *(archive + 68) = startWithFirstItem;
}

@end