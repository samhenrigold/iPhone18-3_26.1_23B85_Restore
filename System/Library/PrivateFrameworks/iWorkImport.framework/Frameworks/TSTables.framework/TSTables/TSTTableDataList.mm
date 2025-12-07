@interface TSTTableDataList
+ (Class)classForUnarchiver:(id)unarchiver;
+ (id)stringForListType:(int)type;
- (BOOL)containsControlCellSpecs;
- (BOOL)containsFormulas;
- (BOOL)containsRatingFormats;
- (BOOL)repairStyleDatalistStylesheetIfNecessary;
- (TSTTableDataList)initWithType:(int)type context:(id)context;
- (id).cxx_construct;
- (id)allRichTextStorages;
- (id)cellFormatForKey:(unsigned int)key;
- (id)commentStorageForKey:(unsigned int)key;
- (id)conditionalStyleSetForKey:(unsigned int)key;
- (id)controlCellSpecForKey:(unsigned int)key;
- (id)copyWithContext:(id)context;
- (id)formulaErrorForKey:(unsigned int)key;
- (id)formulaForKey:(unsigned int)key;
- (id)getRefCountsFromDataList;
- (id)importWarningSetForKey:(unsigned int)key;
- (id)listTypeString;
- (id)multipleChoiceListFormatForKey:(unsigned int)key;
- (id)p_objectForPayload:(id)payload;
- (id)p_setPayload:(id)payload atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (id)reassignCustomFormatUIDForPaste:(id)paste;
- (id)richTextForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key;
- (id)stringForKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared;
- (id)styleForKey:(unsigned int)key;
- (id)wrappedObjectForPayload:(id)payload;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)p_objectCount;
- (unsigned)addCellFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addCommentStorage:(id)storage atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addConditionalStyleSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addControlCellSpec:(id)spec atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addFormula:(id)formula atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addFormulaError:(id)error atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addImportWarningSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addMultipleChoiceListFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addRichText:(id)text atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addString:(id)string atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)addStyle:(id)style atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify;
- (unsigned)p_nextAvailableKey;
- (unsigned)refCountForKey:(unsigned int)key;
- (void)dropReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify;
- (void)enumerateFormatsUsingBlock:(id)block;
- (void)enumerateKeysAndCountsUsingBlock:(id)block;
- (void)enumerateLegacyCustomFormatsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addInitialSegment;
- (void)p_clearReverseMapForObject:(id)object atKey:(unsigned int)key;
- (void)p_replaceCustomFormatsWithBlock:(id)block;
- (void)p_replaceObjectAtKey:(unsigned int)key withObject:(id)object;
- (void)p_setObject:(id)object atKey:(unsigned int)key updateReverseMap:(BOOL)map;
- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d;
- (void)removeObjectForKey:(unsigned int)key;
- (void)replaceCommentStoragesUsingBlock:(id)block;
- (void)replaceConditionalStyleSetsUsingBlock:(id)block;
- (void)replaceFormatsUsingBlock:(id)block;
- (void)replaceFormulaErrorsUsingBlock:(id)block;
- (void)replaceFormulasUsingBlock:(id)block;
- (void)replaceRichTextUsingBlock:(id)block;
- (void)replaceStylesUsingBlock:(id)block;
- (void)saveToArchiver:(id)archiver;
- (void)setIsNewForBraveNewCell:(BOOL)cell;
- (void)setRichTextParentInfo:(id)info;
- (void)takeReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify;
- (void)updateCustomFormatsAtKey:(id)key;
- (void)upgradeCellFormatsU2_0;
- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d;
@end

@implementation TSTTableDataList

- (void)setRichTextParentInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (objc_msgSend_listType(self, v5, v6, v7) != 8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataList setRichTextParentInfo:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 92, 0, "The richTextParentInfo only applied to the Rich Text Payload datalist.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (self->_richTextParentInfo != infoCopy)
  {
    self->_richTextParentInfo = infoCopy;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = objc_msgSend_allRichTextStorages(self, v8, v9, v10, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v27, v31, 16);
    if (v24)
    {
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v20);
          }

          objc_msgSend_setParentInfo_(*(*(&v27 + 1) + 8 * v26++), v22, self->_richTextParentInfo, v23);
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v27, v31, 16);
      }

      while (v24);
    }
  }
}

- (void)setIsNewForBraveNewCell:(BOOL)cell
{
  if (self->_isNewForBraveNewCell != cell)
  {
    objc_msgSend_willModify(self, a2, cell, v3);
    self->_isNewForBraveNewCell = cell;
  }
}

- (void)p_addInitialSegment
{
  v3 = [TSTTableDataListSegment alloc];
  listType = self->_listType;
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v14 = objc_msgSend_initWithType_keyRange_context_(v3, v9, listType, 1, 4294967294, v8);

  v12 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v10, v14, v11);
  segments = self->_segments;
  self->_segments = v12;

  self->_cachedSegment = v14;
}

- (void)p_setupWithType:(int)type nextKeyID:(unsigned int)d
{
  self->_listType = type;
  self->_nextID = d;
  v5 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], a2, 1, 0xFFFFFFFFLL);
  unusedKeySet = self->_unusedKeySet;
  self->_unusedKeySet = v5;

  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  segments = self->_segments;
  self->_segments = v10;

  self->_useReverseMap = objc_msgSend_p_shouldUseReverseMap(self, v12, v13, v14);
}

- (TSTTableDataList)initWithType:(int)type context:(id)context
{
  v4 = *&type;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = TSTTableDataList;
  v7 = [(TSTTableDataList *)&v14 initWithContext:contextCopy];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_p_setupWithType_nextKeyID_(v7, v8, v4, 1);
    objc_msgSend_p_addInitialSegment(v9, v10, v11, v12);
  }

  return v9;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[38], v6);

  if (*(v7 + 80) == 6)
  {
    self = objc_opt_class();
  }

  selfCopy = self;

  return self;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[38], v6);

  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v8, v9, v10) <= 0x4000100000005)
  {
    objc_msgSend_willModifyForUpgrade(self, v11, v12, v13);
  }

  objc_msgSend_p_setupWithType_nextKeyID_(self, v11, *(v7 + 80), *(v7 + 72));
  if ((*(v7 + 16) & 2) != 0)
  {
    self->_isNewForBraveNewCell = *(v7 + 76);
  }

  else if (objc_msgSend_fileFormatVersion(unarchiverCopy, v14, v15, v16) <= 0xC000200000000 && objc_msgSend_messageVersion(unarchiverCopy, v17, v18, v19) == 0x300020000000ALL)
  {
    listType = self->_listType;
    if (listType == 12 || listType == 2)
    {
      objc_msgSend_willModifyForUpgrade(self, v20, v21, v22);
      objc_msgSend_setIsNewForBraveNewCell_(self, v24, 1, v25);
    }
  }

  if (*(v7 + 56) < 1)
  {
    v32 = [TSTTableDataListSegment alloc];
    v33 = self->_listType;
    v37 = objc_msgSend_context(self, v34, v35, v36);
    v39 = objc_msgSend_initWithType_keyRange_context_(v32, v38, v33, 1, 4294967294, v37);

    objc_msgSend_loadObjectsFromDataListArchive_unarchiver_(v39, v40, v7, unarchiverCopy);
    v43 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v41, v39, v42);
    segments = self->_segments;
    self->_segments = v43;

    self->_cachedSegment = v39;
  }

  else
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2211708CC;
    v56[3] = &unk_27845D8D8;
    v56[4] = self;
    v26 = unarchiverCopy;
    v27 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v26, v28, v7 + 48, v27, 0, v56);
  }

  if (self->_listType == 2)
  {
    v45 = objc_msgSend_fileFormatVersion(unarchiverCopy, v29, v30, v31);
    v46 = UnsafePointer();
    v50 = objc_msgSend_isFromCopy(unarchiverCopy, v47, v48, v49);
    v51 = v45 < v46;
    v52 = v50 ^ 1;
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_221170984;
  v53[3] = &unk_27845FF68;
  v53[4] = self;
  v54 = v52;
  v55 = v51;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v29, v53, v31);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  if (objc_msgSend_isNewForBraveNewCell(self, v5, v6, v7))
  {
    objc_msgSend_setMessageVersion_(archiverCopy, v8, 0x300020000000ALL, v9);
  }

  v28 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(v28, v10, sub_2211778D4, off_2812E4498[38]);

  if (objc_msgSend_isNewForBraveNewCell(self, v12, v13, v14))
  {
    isNewForBraveNewCell = self->_isNewForBraveNewCell;
    v19 = *(v11 + 16) | 2;
    *(v11 + 16) = v19;
    *(v11 + 76) = isNewForBraveNewCell;
  }

  else
  {
    v19 = *(v11 + 16);
  }

  listType = self->_listType;
  *(v11 + 16) = v19 | 4;
  *(v11 + 80) = listType;
  nextID = self->_nextID;
  *(v11 + 16) = v19 | 5;
  *(v11 + 72) = nextID;
  if (objc_msgSend_count(self->_segments, v15, v16, v17) < 2)
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v22, 0, v23);
    objc_msgSend_encodeObjectsToDataListArchive_archiver_(v26, v27, v11, v28);
  }

  else
  {
    objc_msgSend_setStrongReferenceArray_message_(v28, v22, self->_segments, v11 + 48);
    objc_msgSend_requiresDocumentVersion_(v28, v24, 0x4000100000000, v25);
  }
}

- (unint64_t)archivingCompatibilityVersion
{
  if (objc_msgSend_count(self->_segments, a2, v2, v3) <= 1)
  {
    return 0x300020000000ALL;
  }

  else
  {
    return 0x4000100000000;
  }
}

- (void)p_setObject:(id)object atKey:(unsigned int)key updateReverseMap:(BOOL)map
{
  mapCopy = map;
  v6 = *&key;
  objectCopy = object;
  cachedSegment = self->_cachedSegment;
  if (!cachedSegment)
  {
    cachedSegment = sub_221171338(self, key);
  }

  objc_msgSend_setObject_atIndexedSubscript_(cachedSegment, a2, object, v6);
  if (objc_msgSend_shouldSplit(cachedSegment, v10, v11, v12))
  {
    v18 = objc_msgSend_split(cachedSegment, v13, v14, v15);
    if (v18)
    {
      v19 = objc_msgSend_indexOfObject_(self->_segments, v16, cachedSegment, v17);
      objc_msgSend_insertObject_atIndex_(self->_segments, v20, v18, v19 + 1);
      self->_cachedSegment = 0;
    }
  }

  if (mapCopy && self->_useReverseMap)
  {
    v21 = objc_msgSend_payload(object, v13, v14, v15);
    sub_221177940(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &v21, &v21, &objectCopy);
  }

  objc_msgSend_removeIndex_(self->_unusedKeySet, v13, v6, v15);
  if (self->_nextID <= v6)
  {
    self->_nextID = v6 + 1;
  }
}

- (void)p_clearReverseMapForObject:(id)object atKey:(unsigned int)key
{
  v12 = objc_msgSend_payload(object, a2, object, *&key);
  v8 = sub_221177BBC(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &v12, v6, v7);

  if (v8)
  {
    if (objc_msgSend_key(v8[3], v9, v10, v11) == key)
    {
      sub_221177CB8(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, v8);
    }
  }
}

- (unsigned)p_nextAvailableKey
{
  Index = objc_msgSend_firstIndex(self->_unusedKeySet, a2, v2, v3);
  if (HIDWORD(Index))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList p_nextAvailableKey]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 405, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    LODWORD(Index) = -1;
  }

  return Index;
}

- (unint64_t)p_objectCount
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_cachedSegment)
  {
    cachedSegment = self->_cachedSegment;

    return objc_msgSend_count(cachedSegment, a2, v2, v3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_segments;
    v8 = 0;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
    if (v12)
    {
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v8 += objc_msgSend_count(*(*(&v15 + 1) + 8 * v14++), v9, v10, v11, v15);
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v19, 16);
      }

      while (v12);
    }

    return v8;
  }
}

- (id)wrappedObjectForPayload:(id)payload
{
  v6 = objc_msgSend_listType(self, a2, payload, v3);
  if (v6 > 6)
  {
    if (v6 > 9)
    {
      switch(v6)
      {
        case 10:
          objc_opt_class();
          v9 = TSUDynamicCast();
          if (v9)
          {
            v30 = [TSTTableDataCommentStorage alloc];
            inited = objc_msgSend_initObjectWithCommentStorage_refCount_(v30, v31, v9, 1);
            goto LABEL_39;
          }

          break;
        case 11:
          objc_opt_class();
          v9 = TSUDynamicCast();
          if (v9)
          {
            v54 = [TSTTableDataImportWarningSet alloc];
            inited = objc_msgSend_initObjectWithImportWarningSet_refCount_(v54, v55, v9, 1);
            goto LABEL_39;
          }

          break;
        case 12:
          objc_opt_class();
          v9 = TSUDynamicCast();
          if (v9)
          {
            goto LABEL_7;
          }

          break;
        default:
          goto LABEL_42;
      }
    }

    else if (v6 == 7)
    {
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v26 = [TSTTableDataMultipleChoiceList alloc];
        inited = objc_msgSend_initObjectWithPopUpMenuModel_refCount_(v26, v27, v9, 1);
        goto LABEL_39;
      }
    }

    else if (v6 == 8)
    {
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        richTextParentInfo = self->_richTextParentInfo;
        if (!richTextParentInfo)
        {
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableDataList wrappedObjectForPayload:]", v35);
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v40);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 479, 0, "invalid nil value for '%{public}s'", "_richTextParentInfo");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
          richTextParentInfo = self->_richTextParentInfo;
        }

        objc_msgSend_setParentInfo_(v9, v34, richTextParentInfo, v35);
        v46 = [TSTTableDataRichText alloc];
        v49 = objc_msgSend_payloadWithStorage_(TSTRichTextPayload, v47, v9, v48);
        v51 = objc_msgSend_initObjectWithRichTextPayload_refCount_(v46, v50, v49, 1);

LABEL_41:
        if (v51)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }
    }

    else
    {
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v13 = [TSTTableDataConditionalStyleSet alloc];
        inited = objc_msgSend_initObjectWithConditionalStyleSet_refCount_(v13, v14, v9, 1);
        goto LABEL_39;
      }
    }

    goto LABEL_40;
  }

  if (v6 > 3)
  {
    if (v6 == 4)
    {
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v28 = [TSTTableDataStyle alloc];
        inited = objc_msgSend_initObjectWithStyle_refCount_(v28, v29, v9, 1);
        goto LABEL_39;
      }
    }

    else
    {
      if (v6 != 5)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList wrappedObjectForPayload:]", v8);
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v18);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 465, 0, "Custom Format datalists are obsolete and should never be added to!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
        goto LABEL_42;
      }

      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v52 = [TSTTableDataFormulaError alloc];
        inited = objc_msgSend_initObjectWithFormulaError_refCount_(v52, v53, v9, 1);
        goto LABEL_39;
      }
    }

LABEL_40:
    v51 = 0;
    goto LABEL_41;
  }

  switch(v6)
  {
    case 1:
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v24 = [TSTTableDataString alloc];
        inited = objc_msgSend_initObjectWithString_refCount_(v24, v25, v9, 1);
        goto LABEL_39;
      }

      goto LABEL_40;
    case 2:
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
        v32 = [TSTTableDataFormat alloc];
        inited = objc_msgSend_initObjectWithFormat_refCount_(v32, v33, v9, 1);
        goto LABEL_39;
      }

      goto LABEL_40;
    case 3:
      objc_opt_class();
      v9 = TSUDynamicCast();
      if (v9)
      {
LABEL_7:
        v10 = [TSTTableDataCellSpec alloc];
        inited = objc_msgSend_initObjectWithCellSpec_refCount_(v10, v11, v9, 1);
LABEL_39:
        v51 = inited;
        goto LABEL_41;
      }

      goto LABEL_40;
  }

LABEL_42:
  v56 = MEMORY[0x277D81150];
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList wrappedObjectForPayload:]", v8);
  v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v59);
  if (payload)
  {
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
  }

  else
  {
    v65 = @"<nil>";
  }

  v66 = objc_msgSend_listTypeString(self, v60, v61, v62);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v67, v57, v63, 518, 0, "Nil object for %{public}@ payload in %{public}@ datalist!", v65, v66);

  if (payload)
  {
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
  v51 = 0;
LABEL_48:

  return v51;
}

- (id)p_objectForPayload:(id)payload
{
  payloadCopy = payload;
  if (self->_useReverseMap)
  {
    v4 = sub_221177BBC(&self->_payloadToObjectMap.__table_.__bucket_list_.__ptr_, &payloadCopy, payload, v3);
    if (v4)
    {
      v4 = v4[3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_setPayload:(id)payload atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  AvailableKey = *&key;
  v9 = objc_msgSend_p_objectForPayload_(self, a2, payload, *&key);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_key(v9, v10, v11, v12);
    if (v14)
    {
      v15 = 0;
      AvailableKey = v14;
      goto LABEL_12;
    }
  }

  if (AvailableKey)
  {
    if (self->_useReverseMap)
    {
      if (objc_msgSend_containsIndex_(self->_unusedKeySet, v10, AvailableKey, v12))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = sub_221172150(self, AvailableKey, v11, v12);

      v19 = objc_msgSend_payload(v13, v16, v17, v18);
      IsEqual = objc_msgSend_tst_dataObjectIsEqual_(payload, v20, v19, v21);

      if (IsEqual)
      {
        v15 = 0;
        goto LABEL_12;
      }
    }
  }

  AvailableKey = objc_msgSend_p_nextAvailableKey(self, v10, v11, v12);
LABEL_11:
  v15 = 1;
LABEL_12:
  if (modifyCopy)
  {
    objc_msgSend_willModify(self, v10, v11, v12);
  }

  if (v15)
  {
    v13 = objc_msgSend_wrappedObjectForPayload_(self, v10, payload, v12);
    objc_msgSend_p_setObject_atKey_updateReverseMap_(self, v23, v13, AvailableKey, 1);
  }

  else
  {
    if (!v13)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataList p_setPayload:atSuggestedKey:callWillModify:]", v12);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v27);
      v32 = objc_msgSend_listTypeString(self, v29, v30, v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v33, v25, v28, 575, 0, "No object with key %u in %{public}@ datalist!", AvailableKey, v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    }

    objc_msgSend_takeReference(v13, v10, v11, v12);
  }

  return v13;
}

- (void)p_replaceObjectAtKey:(unsigned int)key withObject:(id)object
{
  v5 = *&key;
  objc_msgSend_removeObjectForKey_(self, a2, *&key, object);
  v19 = objc_msgSend_payload(object, v7, v8, v9);
  v13 = objc_msgSend_refCount(object, v10, v11, v12);
  v15 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, v14, v19, v5, 1);
  v18 = v15;
  if (v13 >= 2)
  {
    objc_msgSend_takeReferences_(v15, v16, v13 - 1, v17);
  }
}

- (void)removeObjectForKey:(unsigned int)key
{
  v4 = *&key;
  v21 = sub_221172150(self, *&key, *&key, v3);
  if (v21)
  {
    objc_msgSend_willModify(self, v6, v7, v8);
    objc_opt_class();
    v9 = TSUDynamicCast();
    v13 = v9;
    if (v9)
    {
      v14 = objc_msgSend_richTextStorage(v9, v10, v11, v12);
      objc_msgSend_setParentInfo_(v14, v15, 0, v16);
    }

    cachedSegment = self->_cachedSegment;
    if (!cachedSegment)
    {
      cachedSegment = sub_221171338(self, v4);
    }

    objc_msgSend_setObject_atIndexedSubscript_(cachedSegment, v10, 0, v4);
    objc_msgSend_addIndex_(self->_unusedKeySet, v18, v4, v19);
    if (self->_useReverseMap)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(self, v20, v21, v4);
    }
  }
}

- (void)enumerateFormatsUsingBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_listType == 2)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_segments;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v36, 16);
    if (v9)
    {
      v10 = *v29;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22117272C;
        v25[3] = &unk_27845FF90;
        v26 = blockCopy;
        v27 = &v32;
        objc_msgSend_enumerateObjectsWithBlock_(v12, v13, v25, v14);
        LOBYTE(v12) = *(v33 + 24);

        if (v12)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v28, v36, 16);
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableDataList enumerateFormatsUsingBlock:]", v5);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 663, 0, "Can't enumerate formats on a non-format list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }
}

- (void)enumerateLegacyCustomFormatsUsingBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_listType == 6)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_segments;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v36, 16);
    if (v9)
    {
      v10 = *v29;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_221172A90;
        v25[3] = &unk_27845FF90;
        v26 = blockCopy;
        v27 = &v32;
        objc_msgSend_enumerateObjectsWithBlock_(v12, v13, v25, v14);
        LOBYTE(v12) = *(v33 + 24);

        if (v12)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v28, v36, 16);
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableDataList enumerateLegacyCustomFormatsUsingBlock:]", v5);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 684, 0, "Can't enumerate custom formats on a non-custom format list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }
}

- (void)enumerateKeysAndCountsUsingBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_segments;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v25, 16);
  if (v7)
  {
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_221172D50;
      v14[3] = &unk_27845FF90;
      v15 = blockCopy;
      v16 = &v21;
      objc_msgSend_enumerateObjectsWithBlock_(v10, v11, v14, v12);
      LOBYTE(v10) = *(v22 + 24);

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v17, v25, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)replaceFormulasUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 3)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected formula list type.", "[TSTTableDataList replaceFormulasUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 721);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormulasUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 721, 1, "Expected formula list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221172FB8;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (void)replaceConditionalStyleSetsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 9)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected conditional style list type.", "[TSTTableDataList replaceConditionalStyleSetsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 757);
    v7 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataList replaceConditionalStyleSetsUsingBlock:]", v9);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v10, v13, 757, 1, "Expected conditional style list type.");

    TSUCrashBreakpoint();
    abort();
  }

  useReverseMap = self->_useReverseMap;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221173404;
  v15[3] = &unk_27845FFE0;
  v6 = blockCopy;
  v16 = v6;
  v17 = v19;
  v15[4] = self;
  v18 = useReverseMap;
  sub_221170F5C(self, v15);

  _Block_object_dispose(v19, 8);
}

- (void)replaceCommentStoragesUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 10)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected comment type.", "[TSTTableDataList replaceCommentStoragesUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 791);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceCommentStoragesUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 791, 1, "Expected comment type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221173750;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (void)replaceStylesUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 4)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected style list type.", "[TSTTableDataList replaceStylesUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 823);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceStylesUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 823, 1, "Expected style list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221173A80;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (void)replaceFormulaErrorsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 5)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected formula error list type.", "[TSTTableDataList replaceFormulaErrorsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 855);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormulaErrorsUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 855, 1, "Expected formula error list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221173DB4;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (void)replaceRichTextUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 8)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected rich list type.", "[TSTTableDataList replaceRichTextUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 887);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceRichTextUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 887, 1, "Expected rich list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211740E8;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (void)replaceFormatsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_listType != 2)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Expected rich list type.", "[TSTTableDataList replaceFormatsUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", 919);
    v6 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataList replaceFormatsUsingBlock:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 919, 1, "Expected rich list type.");

    TSUCrashBreakpoint();
    abort();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221174444;
  v14[3] = &unk_27845FFB8;
  v5 = blockCopy;
  v15 = v5;
  v16 = v17;
  v14[4] = self;
  sub_221170F5C(self, v14);

  _Block_object_dispose(v17, 8);
}

- (BOOL)repairStyleDatalistStylesheetIfNecessary
{
  useReverseMap = self->_useReverseMap;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v10 = objc_msgSend_stylesheet(v6, v7, v8, v9);

  if (self->_listType == 4)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_221174770;
    v19[4] = sub_221174780;
    v20 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_221174788;
    v13[3] = &unk_278460008;
    v14 = v10;
    selfCopy = self;
    v18 = useReverseMap;
    v16 = v19;
    v17 = &v21;
    sub_221170F5C(self, v13);

    _Block_object_dispose(v19, 8);
  }

  v11 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v11;
}

- (unsigned)refCountForKey:(unsigned int)key
{
  v4 = sub_221172150(self, *&key, *&key, v3);
  if (v4)
  {

    LODWORD(v4) = objc_msgSend_refCount(v4, v5, v6, v7);
  }

  return v4;
}

- (void)takeReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  v6 = *&key;
  v7 = *&references;
  v9 = sub_221172150(self, *&key, *&references, *&key);
  if (v9)
  {
    v12 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataList takeReferences:forKey:callWillModify:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1013, 0, "Cannot add reference for custom format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    if (modifyCopy)
    {
      objc_msgSend_willModify(self, v13, v14, v15);
    }

    objc_msgSend_takeReferences_(v12, v13, v7, v15);
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataList takeReferences:forKey:callWillModify:]", v11);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v28);
    v33 = objc_msgSend_listTypeString(self, v30, v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v34, v26, v29, 1020, 0, "No object with key %u in %{public}@ datalist!", v6, v33);

    v38 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v38, v35, v36, v37);
  }
}

- (void)dropReferences:(unsigned int)references forKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = *&key;
  v6 = *&references;
  v8 = sub_221172150(self, *&key, *&references, *&key);
  if (v8)
  {
    v12 = v8;
    objc_msgSend_willModify(self, v9, v10, v11);
    if (objc_msgSend_dropReferences_(v12, v13, v6, v14))
    {

      objc_msgSend_removeObjectForKey_(self, v15, v5, v16);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableDataList dropReferences:forKey:callWillModify:]", v18);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1037, 0, "custom format should not have more than one reference");

        v28 = MEMORY[0x277D81150];

        objc_msgSend_logBacktraceThrottled(v28, v25, v26, v27);
      }
    }
  }
}

+ (id)stringForListType:(int)type
{
  if ((type - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_278460160[type - 1];
  }
}

- (id)listTypeString
{
  v3 = objc_opt_class();
  listType = self->_listType;

  return MEMORY[0x2821F9670](v3, sel_stringForListType_, listType, v4);
}

- (id)copyWithContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithContext_(v5, v6, contextCopy, v7);
  objc_msgSend_p_setupWithType_nextKeyID_(v8, v9, self->_listType, self->_nextID);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_segments;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
  if (v14)
  {
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(v8 + 64);
        v18 = objc_msgSend_copyWithContext_(*(*(&v29 + 1) + 8 * i), v12, contextCopy, v13);
        objc_msgSend_addObject_(v17, v19, v18, v20);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v29, v33, 16);
    }

    while (v14);
  }

  if (self->_useReverseMap)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_221175048;
    v27[3] = &unk_278460030;
    v28 = v8;
    sub_221170F5C(v28, v27);
  }

  *(v8 + 128) = self->_nextID;
  v24 = objc_msgSend_mutableCopy(self->_unusedKeySet, v21, v22, v23);
  v25 = *(v8 + 112);
  *(v8 + 112) = v24;

  return v8;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

- (id)allRichTextStorages
{
  if (objc_msgSend_listType(self, a2, v2, v3) != 8)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1186, 0, "API is intended for kTSTTableDataListTypeRichText lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6, v7);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22117536C;
  v20[3] = &unk_278460030;
  v18 = v17;
  v21 = v18;
  sub_221170F5C(self, v20);

  return v18;
}

- (BOOL)containsControlCellSpecs
{
  if (objc_msgSend_listType(self, a2, v2, v3) != 12)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList(Type_Specific_API) containsControlCellSpecs]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1202, 0, "API is intended for kTSTTableDataListTypeFormat lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  return objc_msgSend_count(self, v5, v6, v7) != 0;
}

- (BOOL)containsFormulas
{
  if (objc_msgSend_listType(self, a2, v2, v3) != 3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList(Type_Specific_API) containsFormulas]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1208, 0, "API is intended for kTSTTableDataListTypeCellSpec lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  return objc_msgSend_count(self, v5, v6, v7) != 0;
}

- (BOOL)containsRatingFormats
{
  if (objc_msgSend_listType(self, a2, v2, v3) != 2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList(Type_Specific_API) containsRatingFormats]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1214, 0, "API is intended for kTSTTableDataListTypeFormat lists");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22117587C;
  v18[3] = &unk_278460058;
  v18[4] = &v19;
  sub_221170F5C(self, v18);
  v16 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v16;
}

- (void)p_replaceCustomFormatsWithBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211759C0;
    v10[3] = &unk_278460080;
    v11 = blockCopy;
    objc_msgSend_replaceFormatsUsingBlock_(self, v8, v10, v9);
  }
}

- (void)updateCustomFormatsAtKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend_documentRoot(self, v5, v6, v7);
  v12 = objc_msgSend_customFormatList(v8, v9, v10, v11);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221175B68;
  v17[3] = &unk_2784600A8;
  v13 = keyCopy;
  v18 = v13;
  v19 = v12;
  v14 = v12;
  objc_msgSend_p_replaceCustomFormatsWithBlock_(self, v15, v17, v16);
}

- (unsigned)addCellFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  modifyCopy = modify;
  v6 = *&key;
  v9 = objc_msgSend_asCustomFormatWrapper(format, a2, format, *&key);

  if (v9)
  {
    self->_mightHaveCustomFormats = 1;
  }

  v11 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, v10, format, v6, modifyCopy);

  return objc_msgSend_key(v11, v12, v13, v14);
}

- (unsigned)addCommentStorage:(id)storage atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, storage, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addConditionalStyleSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, set, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addFormula:(id)formula atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, formula, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addControlCellSpec:(id)spec atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, spec, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addFormulaError:(id)error atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, error, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addImportWarningSet:(id)set atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, set, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addMultipleChoiceListFormat:(id)format atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, format, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addRichText:(id)text atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, text, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addString:(id)string atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, string, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (unsigned)addStyle:(id)style atSuggestedKey:(unsigned int)key callWillModify:(BOOL)modify
{
  v5 = objc_msgSend_p_setPayload_atSuggestedKey_callWillModify_(self, a2, style, *&key, modify);

  return objc_msgSend_key(v5, v6, v7, v8);
}

- (id)cellFormatForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 2)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) cellFormatForKey:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1327, 0, "Can only store formats in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_opt_class();
  v19 = sub_2211723D4(self, v4, v17, v18);
  v20 = TSUDynamicCast();

  return v20;
}

- (id)commentStorageForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 10)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) commentStorageForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1335, 0, "Can only store cell comment storage objects in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_commentStorage(v18, v19, v20, v21);

  return v22;
}

- (id)conditionalStyleSetForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 9)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) conditionalStyleSetForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1342, 0, "Can only store conditional styles in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_conditionalStyleSet(v18, v19, v20, v21);

  return v22;
}

- (id)formulaForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) formulaForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1349, 0, "Can only store formulas in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_cellSpec(v18, v19, v20, v21);

  return v22;
}

- (id)controlCellSpecForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 12)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) controlCellSpecForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1356, 0, "Can only store controls in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_cellSpec(v18, v19, v20, v21);

  return v22;
}

- (id)formulaErrorForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) formulaErrorForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1363, 0, "Can only store formulaErrors in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_formulaError(v18, v19, v20, v21);

  return v22;
}

- (id)importWarningSetForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 11)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) importWarningSetForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1370, 0, "Can only store import warning set objects in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_importWarningSet(v18, v19, v20, v21);

  return v22;
}

- (id)multipleChoiceListFormatForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) multipleChoiceListFormatForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1377, 0, "Can only store pop up menu model in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_popUpMenuModel(v18, v19, v20, v21);

  return v22;
}

- (id)richTextForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) richTextForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1384, 0, "Can only store text storages in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_richTextStorage(v18, v19, v20, v21);

  return v22;
}

- (id)stringForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) stringForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1391, 0, "Can only store strings in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_string(v18, v19, v20, v21);

  return v22;
}

- (id)stringForKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared
{
  v7 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, wrap) != 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataList(Type_Specific_API) stringForKey:outShouldWrap:outIsShared:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1398, 0, "Can only store strings in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = sub_221172150(self, v7, v10, v11);
  v28 = objc_msgSend_string(v21, v22, v23, v24);
  if (wrap)
  {
    *wrap = objc_msgSend_shouldWrap(v21, v25, v26, v27);
  }

  if (shared)
  {
    *shared = objc_msgSend_refCount(v21, v25, v26, v27) > 1;
  }

  return v28;
}

- (id)styleForKey:(unsigned int)key
{
  v4 = *&key;
  if (objc_msgSend_listType(self, a2, *&key, v3) != 4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataList(Type_Specific_API) styleForKey:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1412, 0, "Can only store styles in this list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = sub_221172150(self, v4, v7, v8);
  v22 = objc_msgSend_style(v18, v19, v20, v21);

  return v22;
}

- (void)upgradeCellFormatsU2_0
{
  v59 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_listType(self, a2, v2, v3) == 2)
  {
    objc_opt_class();
    v10 = objc_msgSend_context(self, v7, v8, v9);
    v14 = objc_msgSend_documentObject(v10, v11, v12, v13);
    v15 = TSUCheckedDynamicCast();

    v19 = objc_msgSend_customFormatList(v15, v16, v17, v18);
    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22);
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v57 = 0;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_221176E94;
    v51[3] = &unk_2784600D0;
    v55 = v56;
    v24 = v19;
    v52 = v24;
    selfCopy = self;
    v25 = v23;
    v54 = v25;
    sub_221170F5C(self, v51);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = v25;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v47, v58, 16);
    if (v31)
    {
      v32 = *v48;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          v35 = objc_msgSend_key(v34, v28, v29, v30, v47);
          objc_msgSend_p_replaceObjectAtKey_withObject_(self, v36, v35, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v47, v58, 16);
      }

      while (v31);
    }

    _Block_object_dispose(v56, 8);
  }

  else
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableDataList(Upgrade) upgradeCellFormatsU2_0]", v6);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 1430, 0, "This upgrade code is only for the Format list.");

    v46 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v46, v43, v44, v45);
  }
}

- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d
{
  if (self->_listType == 9)
  {
    if (objc_msgSend_count(self, a2, d, v3))
    {
      objc_msgSend_willModifyForUpgrade(self, v6, v7, v8);
      v22 = *d;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_22117728C;
      v21[3] = &unk_2784600F0;
      v21[4] = 0;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(self, v9, v21, v10);
    }
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataList(Upgrade) upgradeConditionalStylesToLinkedRefWithTableUID:]", v3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1476, 0, "This upgrade is for conditional style only.");

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v17, v18, v19);
  }
}

- (id)reassignCustomFormatUIDForPaste:(id)paste
{
  pasteCopy = paste;
  if (!pasteCopy)
  {
    pasteCopy = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22117738C;
  v12[3] = &unk_278460118;
  v8 = pasteCopy;
  v13 = v8;
  objc_msgSend_p_replaceCustomFormatsWithBlock_(self, v9, v12, v10);

  return v8;
}

- (id)getRefCountsFromDataList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_221174770;
  v12 = sub_221174780;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211775DC;
  v7[3] = &unk_278460140;
  v7[4] = &v8;
  objc_msgSend_enumerateKeysAndCountsUsingBlock_(self, v3, v7, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end