@interface TSCENamedReferenceManager
- (BOOL)trackedReferencesExistForTable:(const TSKUIDStruct *)table;
- (TSCECalculationEngine)calcEngine;
- (TSCENamedReferenceManager)initWithContext:(id)context;
- (TSCENamedReferenceManager)initWithContext:(id)context calculationEngine:(id)engine;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (id)beginTrackingNamesInTable:(const TSKUIDStruct *)table limitedToRange:(TSCERangeCoordinate)range;
- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref;
- (void)beginTrackingNameInCell:(TSUCellCoord)cell ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to;
- (void)beginTrackingNamesInRange:(TSCERangeCoordinate)range ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to;
- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)beginTrackingReference:(id)reference;
- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)endTrackingReference:(id)reference;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)registerWithCalcEngine:(BOOL)engine;
- (void)saveToArchiver:(id)archiver;
- (void)setCalculationEngine:(id)engine;
- (void)setFormulaOwnerUID:(const TSKUIDStruct *)d;
- (void)unregisterFromCalcEngine;
- (void)updateTrackedHeaders:(const TSKUIDStruct *)headers;
- (void)willClose;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSCENamedReferenceManager

- (TSCENamedReferenceManager)initWithContext:(id)context
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENamedReferenceManager initWithContext:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENamedReferenceManager.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 99, 0, "use initWithContext:calculationEngine: instead");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (TSCENamedReferenceManager)initWithContext:(id)context calculationEngine:(id)engine
{
  contextCopy = context;
  engineCopy = engine;
  v18.receiver = self;
  v18.super_class = TSCENamedReferenceManager;
  v8 = [(TSCENamedReferenceManager *)&v18 initWithContext:contextCopy];
  if (v8)
  {
    v8->_ownerUID._lower = TSKMakeUIDStructRandom();
    v8->_ownerUID._upper = v9;
    v8->_isRegisteredWithCalculationEngine = 0;
    v10 = [TSCETrackedReferenceStore alloc];
    v13 = objc_msgSend_initWithContext_(v10, v11, contextCopy, v12);
    trackedRefsStore = v8->_trackedRefsStore;
    v8->_trackedRefsStore = v13;

    objc_storeWeak(&v8->_calcEngine, engineCopy);
    objc_msgSend_registerWithCalcEngine_(v8, v15, 0, v16);
  }

  return v8;
}

- (void)willClose
{
  trackedRefsStore = self->_trackedRefsStore;
  if (trackedRefsStore)
  {
    objc_storeWeak(&self->_weakTrackedRefsStore, trackedRefsStore);
    objc_msgSend_willClose(self->_trackedRefsStore, v4, v5, v6);
  }

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)setCalculationEngine:(id)engine
{
  objc_storeWeak(&self->_calcEngine, engine);

  objc_msgSend_registerWithCalcEngine_(self, v4, 1, v5);
}

- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if ((objc_msgSend_trackedReferencesExistForTable_(self, a2, table, v3) & 1) == 0)
  {
    v7 = objc_msgSend_beginTrackingNamesInTable_limitedToRange_(self, v6, table, 0x7FFF7FFFFFFFLL, 0x7FFF7FFFFFFFLL);
  }
}

- (id)beginTrackingNamesInTable:(const TSKUIDStruct *)table limitedToRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v55 = objc_opt_new();
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9);
  v13 = objc_msgSend_tableResolverForTableUID_(v10, v11, table, v12);

  if (!v13)
  {
    goto LABEL_73;
  }

  v17 = objc_msgSend_bodyRangeCoordinate(v13, v14, v15, v16);
  v19 = v18;
  v22 = objc_msgSend_tableRangeCoordinate(v13, v18, v20, v21);
  v24 = v23;
  v25 = sub_2211D467C(v17, v19, v22, v23);
  v27 = v26;
  v28 = sub_2211D4860(v17, v19, v22, v24);
  v30 = v29;
  if (objc_msgSend_hasEverBeenEmbiggened(v13, v29, v31, v32))
  {
    v36 = objc_msgSend_calcEngine(self, v33, v34, v35);
    objc_msgSend_endTrackingNamesInTableForLegacyNRM_(v36, v37, table, v38);

    goto LABEL_73;
  }

  v39 = topLeft == 0x7FFFFFFF || (topLeft & 0xFFFF00000000) == 0x7FFF00000000;
  v40 = v39;
  if (!v39 && bottomRight != 0x7FFFFFFF && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(topLeft) <= WORD2(bottomRight) && topLeft <= bottomRight && v25 != 0x7FFFFFFF && (v25 & 0xFFFF00000000) != 0x7FFF00000000 && v27 != 0x7FFFFFFF && (v27 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v25) <= WORD2(v27) && v25 <= v27)
  {
    if (sub_22110E12C(topLeft, bottomRight))
    {
      v43 = WORD2(topLeft);
      if (WORD2(v25) >= WORD2(topLeft))
      {
        v43 = WORD2(v25);
      }

      if (v25 <= topLeft)
      {
        v25 = topLeft;
      }

      else
      {
        v25 = v25;
      }

      v25 = v25 & 0xFFFF0000FFFFFFFFLL | (v43 << 32);
      if (WORD2(v27) >= WORD2(bottomRight))
      {
        v44 = WORD2(bottomRight);
      }

      else
      {
        v44 = WORD2(v27);
      }

      if (v27 >= bottomRight)
      {
        v27 = bottomRight;
      }

      else
      {
        v27 = v27;
      }

      v27 = v27 & 0xFFFF0000FFFFFFFFLL | (v44 << 32);
    }

    else
    {
      v25 = 0x7FFF7FFFFFFFLL;
      v27 = 0x7FFF7FFFFFFFLL;
    }
  }

  v41 = v25 & 0xFFFF00000000;
  if (v25 == 0x7FFFFFFFLL || v41 == 0x7FFF00000000)
  {
    v42 = v27 & 0xFFFF00000000;
  }

  else
  {
    v42 = v27 & 0xFFFF00000000;
    if (v27 != 0x7FFFFFFF && v42 != 0x7FFF00000000 && WORD2(v25) <= WORD2(v27) && v25 <= v27)
    {
      goto LABEL_54;
    }
  }

  if (v25 != 0x7FFFFFFFLL && v41 == 0x7FFF00000000 && v42 == 0x7FFF00000000)
  {
    if (v27 == 0x7FFFFFFF || v25 > v27)
    {
      goto LABEL_55;
    }

LABEL_54:
    objc_msgSend_beginTrackingNamesInRange_ofTableUID_addingTrackedReferencesTo_(self, v33, v25, v27, table, v55);
    goto LABEL_55;
  }

  if (v25 == 0x7FFFFFFFLL && v41 != 0x7FFF00000000 && v42 != 0x7FFF00000000 && v27 == 0x7FFFFFFF && WORD2(v25) <= WORD2(v27))
  {
    goto LABEL_54;
  }

LABEL_55:
  v45 = HIDWORD(v28);
  v46 = HIDWORD(v30);
  v47 = v28;
  v48 = v28 & 0xFFFF00000000;
  if (v28 != 0x7FFFFFFFLL && v48 != 0x7FFF00000000 && v30 != 0x7FFFFFFF && (v30 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v49 = WORD2(v28) > WORD2(v30) || v28 > v30;
    v50 = v49 ? 1 : v40;
    if ((v50 & 1) == 0 && bottomRight != 0x7FFFFFFF && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(topLeft) <= WORD2(bottomRight) && topLeft <= bottomRight)
    {
      if (sub_22110E12C(topLeft, bottomRight))
      {
        LOWORD(v52) = WORD2(topLeft);
        if (WORD2(v28) >= WORD2(topLeft))
        {
          v52 = HIDWORD(v28);
        }

        if (v28 <= topLeft)
        {
          v28 = topLeft;
        }

        else
        {
          v28 = v28;
        }

        v28 = v28 & 0xFFFF0000FFFFFFFFLL | (v52 << 32);
        if (WORD2(v30) >= WORD2(bottomRight))
        {
          LOWORD(v53) = WORD2(bottomRight);
        }

        else
        {
          v53 = HIDWORD(v30);
        }

        if (v30 >= bottomRight)
        {
          v30 = bottomRight;
        }

        else
        {
          v30 = v30;
        }

        v30 = v30 & 0xFFFF0000FFFFFFFFLL | (v53 << 32);
      }

      else
      {
        v28 = 0x7FFF7FFFFFFFLL;
        v30 = 0x7FFF7FFFFFFFLL;
      }

      v45 = HIDWORD(v28);
      v46 = HIDWORD(v30);
      v47 = v28;
      v48 = v28 & 0xFFFF00000000;
    }
  }

  if (v47 != 0x7FFFFFFF && v48 != 0x7FFF00000000 && v30 != 0x7FFFFFFF && (v30 & 0xFFFF00000000) != 0x7FFF00000000 && v45 <= v46 && v28 <= v30)
  {
    objc_msgSend_beginTrackingNamesInRange_ofTableUID_addingTrackedReferencesTo_(self, v33, v28, v30, table, v55);
  }

LABEL_73:

  return v55;
}

- (void)beginTrackingNamesInRange:(TSCERangeCoordinate)range ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  toCopy = to;
  if (topLeft.row <= bottomRight.row)
  {
    v10 = HIDWORD(*&topLeft);
    do
    {
      if (topLeft.column <= bottomRight.column)
      {
        v11 = v10;
        do
        {
          objc_msgSend_beginTrackingNameInCell_ofTableUID_addingTrackedReferencesTo_(self, v9, topLeft.row | (v11++ << 32), d, toCopy);
        }

        while (v11 <= bottomRight.column);
      }

      ++topLeft.row;
    }

    while (topLeft.row <= bottomRight.row);
  }
}

- (void)beginTrackingNameInCell:(TSUCellCoord)cell ofTableUID:(const TSKUIDStruct *)d addingTrackedReferencesTo:(id)to
{
  toCopy = to;
  objc_msgSend_willModify(self, v9, v10, v11);
  cellCopy = cell;
  v18 = *d;
  v14 = objc_msgSend_beginTrackingReferenceWithCellRef_(self, v12, &cellCopy, v13);
  objc_msgSend_addObject_(toCopy, v15, v14, v16);
}

- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table
{
  v35 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  objc_msgSend_willModify(self, v5, v6, v7);
  v11 = objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v8, v9, v10);
  ownerUID = self->_ownerUID;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = ownerUID;
  obj = v11;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v29, v34, 16);
  if (v17)
  {
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        v21 = objc_msgSend_calcEngine(self, v14, v15, v16);
        v23 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v20, v22, v21, &v33);

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_2211D4E3C;
        v28[3] = &unk_278460E68;
        v28[5] = v20;
        v28[6] = table;
        v28[4] = self;
        objc_msgSend_foreachCellRef_(v23, v24, v28, v25);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v29, v34, 16);
    }

    while (v17);
  }

  objc_autoreleasePoolPop(context);
}

- (void)updateTrackedHeaders:(const TSKUIDStruct *)headers
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_calcEngine(self, a2, headers, v3);
  v48 = v5;
  v6 = v5;
  if (*headers != 0 && v5 != 0)
  {
    context = objc_autoreleasePoolPush();
    v10 = objc_msgSend_tableResolverForTableUID_(v6, v8, headers, v9);
    v47 = v10;
    if (v10)
    {
      v14 = v10;
      v15 = objc_msgSend_tableRangeCoordinate(v10, v11, v12, v13);
      v17 = v16;
      v20 = objc_msgSend_bodyRangeCoordinate(v14, v16, v18, v19);
      v22 = v21;
    }

    else
    {
      v15 = 0x7FFF7FFFFFFFLL;
      v17 = 0x7FFF7FFFFFFFLL;
      v20 = 0x7FFF7FFFFFFFLL;
      v22 = 0x7FFF7FFFFFFFLL;
    }

    v51 = sub_2211D4860(v20, v22, v15, v17);
    v53 = v23;
    v50 = sub_2211D467C(v20, v22, v15, v17);
    v52 = v24;
    if (!v47 || (hasEverBeenEmbiggened = objc_msgSend_hasEverBeenEmbiggened(v47, v24, v25, v26), v28 = v47, (hasEverBeenEmbiggened & 1) == 0))
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x5812000000;
      v65 = sub_2211D544C;
      v66 = sub_2211D5458;
      v67 = &unk_22188E88F;
      v71[0] = 0;
      v71[1] = 0;
      v68 = 0;
      v69 = 0;
      v70 = v71;
      if (v51 != 0x7FFFFFFF && (v51 & 0xFFFF00000000) != 0x7FFF00000000 && v53 != 0x7FFFFFFF && (v53 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v51) <= WORD2(v53) && v51 <= v53)
      {
        v29 = v51;
        do
        {
          if (WORD2(v51) <= WORD2(v53))
          {
            v30 = HIDWORD(v51);
            do
            {
              v61.row = v29;
              *&v61.column = v30;
              TSCECellCoordSet::addCellCoord((v63 + 6), &v61);
              ++v30;
            }

            while (v30 <= WORD2(v53));
          }

          ++v29;
        }

        while (v29 <= v53);
      }

      if (v50 != 0x7FFFFFFF && (v50 & 0xFFFF00000000) != 0x7FFF00000000 && v52 != 0x7FFFFFFF && (v52 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v50) <= WORD2(v52) && v50 <= v52)
      {
        v31 = v50;
        do
        {
          if (WORD2(v50) <= WORD2(v52))
          {
            v32 = HIDWORD(v50);
            do
            {
              v61.row = v31;
              *&v61.column = v32;
              TSCECellCoordSet::addCellCoord((v63 + 6), &v61);
              ++v32;
            }

            while (v32 <= WORD2(v52));
          }

          ++v31;
        }

        while (v31 <= v52);
      }

      objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v24, v25, v26);
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      obj = v58 = 0u;
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v57, v72, 16);
      if (v37)
      {
        v38 = *v58;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v57 + 1) + 8 * i);
            v41 = objc_msgSend_calcEngine(self, v34, v35, v36);
            v43 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v40, v42, v41, &self->_ownerUID);

            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = sub_2211D5464;
            v56[3] = &unk_278460E90;
            v56[8] = v51;
            v56[9] = v53;
            v56[10] = v50;
            v56[11] = v52;
            v56[6] = &v62;
            v56[7] = headers;
            v56[4] = self;
            v56[5] = v40;
            objc_msgSend_foreachCellRef_(v43, v44, v56, v45);
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v57, v72, 16);
        }

        while (v37);
      }

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2211D554C;
      v55[3] = &unk_278460EB8;
      v55[4] = self;
      v55[5] = headers;
      TSCECellCoordSet::enumerateCoordsUsingBlock(v63 + 6, v55);

      _Block_object_dispose(&v62, 8);
      sub_22107C860(&v70, v71[0]);
      v28 = v47;
    }

    v6 = v48;
    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)trackedReferencesExistForTable:(const TSKUIDStruct *)table
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  context = objc_autoreleasePoolPush();
  objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v24, v32, 16);
  if (v9)
  {
    v10 = *v25;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
      v15 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(v12, v14, WeakRetained, &self->_ownerUID);

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_2211D57C8;
      v23[3] = &unk_278460EE0;
      v23[4] = &v28;
      v23[5] = table;
      objc_msgSend_foreachCellRef_(v15, v16, v23, v17);
      LOBYTE(WeakRetained) = *(v29 + 24);

      if (WeakRetained)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v24, v32, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v19 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v19;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2211D6418, off_2812E2AC8[162]);

  WeakRetained = self->_trackedRefsStore;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakTrackedRefsStore);
  }

  *(v5 + 16) |= 1u;
  v8 = *(v5 + 48);
  if (!v8)
  {
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0390](v9);
    *(v5 + 48) = v8;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v6, WeakRetained, v8);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E2AC8[162], v6);

  v8 = *(v7 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211D5A3C;
  v12[3] = &unk_278460F08;
  v12[4] = self;
  v9 = unarchiverCopy;
  v11 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v12);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v12);
  }
}

- (void)registerWithCalcEngine:(BOOL)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    if (!engine)
    {
      objc_msgSend_willModify(self->_trackedRefsStore, v6, v7, v8);
      v9 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_willModify(v9, v10, v11, v12);
    }

    v13 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v13, v14, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, self->_ownerUID._lower, self->_ownerUID._upper, 7);

    self->_isRegisteredWithCalculationEngine = 1;
  }
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_willModify(self->_trackedRefsStore, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8);

  v9 = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(v9, v10, self->_ownerUID._lower, self->_ownerUID._upper);

  self->_isRegisteredWithCalculationEngine = 0;
}

- (void)beginTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_beginTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained);
}

- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref
{
  v5 = [TSCETrackedReference alloc];
  v8 = objc_msgSend_initWithCellRef_(v5, v6, ref, v7);
  objc_msgSend_beginTrackingReference_(self, v9, v8, v10);

  return v8;
}

- (void)endTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_endTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained);
}

- (TSKUIDStruct)formulaOwnerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setFormulaOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENamedReferenceManager setFormulaOwnerUID:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENamedReferenceManager.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 388, 0, "Invalid formulaOwnerUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  self->_ownerUID = *d;
  lower = self->_ownerUID._lower;
  upper = self->_ownerUID._upper;
  trackedRefsStore = self->_trackedRefsStore;

  objc_msgSend_setOwnerUID_(trackedRefsStore, a2, lower, upper);
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = engineCopy;
  if (engineCopy)
  {
    objc_msgSend_corruptCellRefs(engineCopy, v5, v6, v7);
  }

  else
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
  }

  if (!sub_2212E0280(v50))
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x5812000000;
    v45 = sub_2211D61E4;
    v46 = sub_2211D61F0;
    v47 = &unk_22188E88F;
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    v34 = 0;
    v35 = &v34;
    v36 = 0x5812000000;
    v37 = sub_2211D61F8;
    v38 = sub_2211D6204;
    v39 = &unk_22188E88F;
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_2211D620C;
    v29 = &unk_278460F30;
    v9 = v8;
    v30 = v9;
    selfCopy = self;
    v32 = &v42;
    v33 = &v34;
    sub_2212DFEC0(v50, &v26);
    v15 = objc_msgSend_namedReferenceManager(v9, v10, v11, v12, v26, v27, v28, v29);
    for (i = v35[8]; i; i = *i)
    {
      objc_msgSend_endTrackingNamesInTable_(v15, v13, (i + 2), v14);
      v19 = objc_msgSend_tableResolverForTableUID_(v9, v17, (i + 2), v18);
      v23 = v19;
      if (v19 && objc_msgSend_resolverIsATable(v19, v20, v21, v22))
      {
        objc_msgSend_beginTrackingNamesInTable_(v15, v24, (i + 2), v25);
      }
    }

    objc_msgSend_resetCorruptCellRefs_(v9, v13, (v43 + 6), v14);

    _Block_object_dispose(&v34, 8);
    sub_2210BDEC0(v40);
    _Block_object_dispose(&v42, 8);
    sub_221122744(v48);
  }

  sub_221122744(v50);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end