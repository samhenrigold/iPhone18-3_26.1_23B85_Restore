@interface TSTTableHeaderStorage
- (NSIndexSet)populatedIndexes;
- (TSTTableHeaderStorage)initWithBucket:(id)bucket owner:(id)owner;
- (TSTTableHeaderStorage)initWithOwner:(id)owner;
- (double)sizeAtIndex:(unsigned int)index;
- (id)cellStyleAtIndex:(unsigned int)index;
- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (id)metadataAtIndex:(unsigned int)index hidingAction:(unsigned __int8)action defaultSize:(double)size uuid:(TSKUIDStruct)uuid;
- (id)textStyleAtIndex:(unsigned int)index;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)cellCountAtIndex:(unsigned int)index;
- (unint64_t)count;
- (unint64_t)defaultStyleHandlesAtIndex:(unsigned int)index outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (unint64_t)defaultStylesAtIndex:(unsigned int)index outCellStyle:(id *)style outTextStyle:(id *)textStyle;
- (unint64_t)totalCellCount;
- (unsigned)hidingStateAtIndex:(unsigned int)index;
- (unsigned)maxIndex;
- (unsigned)minIndex;
- (void)decrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)forceLoadHeaders;
- (void)incrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount;
- (void)moveIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)removeIndexesAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)reset;
- (void)resetAllCellCounts;
- (void)setCellStyle:(id)style atIndex:(unsigned int)index;
- (void)setHidingState:(unsigned __int8)state atIndex:(unsigned int)index;
- (void)setSize:(double)size atIndex:(unsigned int)index;
- (void)setTextStyle:(id)style atIndex:(unsigned int)index;
- (void)shiftIndexesBackAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)shiftIndexesForwardAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)swapIndex:(unsigned int)index withIndex:(unsigned int)withIndex;
- (void)updateHeaderAtIndex:(unsigned int)index fromMetadata:(id)metadata;
- (void)updateStylesWithBlock:(id)block;
@end

@implementation TSTTableHeaderStorage

- (TSTTableHeaderStorage)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v16.receiver = self;
  v16.super_class = TSTTableHeaderStorage;
  v8 = [(TSTTableHeaderStorage *)&v16 initWithOwner:ownerCopy];
  if (v8)
  {
    v9 = objc_msgSend_context(ownerCopy, v5, v6, v7);
    v10 = sub_2211AC86C([TSTTableHeaderStorageBucket alloc], v9, 0, 0x10000);
    buckets = v8->_buckets;
    v12 = v8->_buckets[0];
    v8->_buckets[0] = v10;

    for (i = 1; i != 16; ++i)
    {
      v14 = buckets[i];
      buckets[i] = 0;
    }

    v8->_bucketCount = 1;
  }

  return v8;
}

- (TSTTableHeaderStorage)initWithBucket:(id)bucket owner:(id)owner
{
  bucketCopy = bucket;
  ownerCopy = owner;
  v11 = objc_msgSend_initWithOwner_(self, v9, ownerCopy, v10);
  if (v11)
  {
    sub_2216F746C(bucketCopy, 0, 0x10000);
    objc_storeStrong(v11->_buckets, bucket);
    v11->_bucketCount = 1;
  }

  return v11;
}

- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v28.receiver = self;
  v28.super_class = TSTTableHeaderStorage;
  v12 = [(TSTTableHeaderStorage *)&v28 initWithOwner:ownerCopy];
  if (v12)
  {
    if (*(archive + 12) != 1)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableHeaderStorage initFromArchive:unarchiver:owner:]", v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 148, 0, "Don't know how to handle this bucket hash function!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2211A9F98;
    v26[3] = &unk_27845D8D8;
    v27 = v12;
    v22 = unarchiverCopy;
    v23 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v22, v24, archive + 24, v23, 0, v26);
  }

  return v12;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  *(archive + 12) = 1;
  bucketCount = self->_bucketCount;
  if (bucketCount < 2)
  {
    v10 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v6, self->_buckets[0], v7);
  }

  else
  {
    if (bucketCount != 16)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad bucket count during archiving!", "[TSTTableHeaderStorage encodeToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 173);
      v13 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableHeaderStorage encodeToArchive:archiver:]", v15);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v16, v19, 173, 1, "Bad bucket count during archiving!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v6, 0xA000000000003, @"TSTExpandedTables");
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, self->_buckets, 16);
  }

  v12 = v10;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v11, v10, archive + 24);
}

- (unint64_t)archivingCompatibilityVersion
{
  if (self->_bucketCount <= 1)
  {
    return 0x300020000000ALL;
  }

  else
  {
    return 0xA000000000003;
  }
}

- (double)sizeAtIndex:(unsigned int)index
{
  v4 = *&index;
  if (index >= 0x100000)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage sizeAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 193, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    return 0.0;
  }

  v14 = self->_buckets[HIWORD(index)];
  if (!v14)
  {
    return 0.0;
  }

  return sub_2216F6E0C(v14);
}

- (void)setSize:(double)size atIndex:(unsigned int)index
{
  v5 = *&index;
  sub_2211A9790(self, *&index, *&index, v4);
  if (v5 < 0x100000)
  {
    v19 = self->_buckets[WORD1(v5)];
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage setSize:atIndex:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 200, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v19 = 0;
  }

  sub_2216F6E58(v19, v5, size);
}

- (unsigned)hidingStateAtIndex:(unsigned int)index
{
  v4 = *&index;
  if (index >= 0x100000)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage hidingStateAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 206, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    return 0;
  }

  v14 = self->_buckets[HIWORD(index)];
  if (!v14)
  {
    return 0;
  }

  return sub_2216F6F28(v14);
}

- (void)setHidingState:(unsigned __int8)state atIndex:(unsigned int)index
{
  v4 = *&index;
  stateCopy = state;
  sub_2211A9790(self, *&index, state, *&index);
  if (v4 < 0x100000)
  {
    v18 = self->_buckets[WORD1(v4)];
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableHeaderStorage setHidingState:atIndex:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 213, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v18 = 0;
  }

  sub_2216F6F74(v18, stateCopy, v4, v8);
}

- (id)cellStyleAtIndex:(unsigned int)index
{
  v4 = *&index;
  if (index < 0x100000)
  {
    v14 = self->_buckets[HIWORD(index)];
    if (v14)
    {
      v14 = sub_2216F7044(v14);
    }
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage cellStyleAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 219, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v14 = 0;
  }

  return v14;
}

- (void)setCellStyle:(id)style atIndex:(unsigned int)index
{
  v4 = *&index;
  styleCopy = style;
  sub_2211A9790(self, v4, v6, v7);
  if (v4 < 0x100000)
  {
    v19 = self->_buckets[v4 >> 16];
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage setCellStyle:atIndex:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 226, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v19 = 0;
  }

  sub_2211ACD34(v19, styleCopy, v4);
}

- (id)textStyleAtIndex:(unsigned int)index
{
  v4 = *&index;
  if (index < 0x100000)
  {
    v14 = self->_buckets[HIWORD(index)];
    if (v14)
    {
      v14 = sub_2211ACE6C(v14, *&index, *&index, v3);
    }
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage textStyleAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 232, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v14 = 0;
  }

  return v14;
}

- (void)setTextStyle:(id)style atIndex:(unsigned int)index
{
  v4 = *&index;
  styleCopy = style;
  sub_2211A9790(self, v4, v6, v7);
  if (v4 < 0x100000)
  {
    v19 = self->_buckets[v4 >> 16];
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage setTextStyle:atIndex:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 239, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v19 = 0;
  }

  sub_2211ACF04(v19, styleCopy, v4);
}

- (unint64_t)defaultStylesAtIndex:(unsigned int)index outCellStyle:(id *)style outTextStyle:(id *)textStyle
{
  v7 = *&index;
  if (index < 0x100000)
  {
    v17 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage defaultStylesAtIndex:outCellStyle:outTextStyle:]", style);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 247, 0, "Unexpected header bucket index: %u!", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v17 = 0;
  }

  return sub_2216F7128(v17, v7, style, textStyle);
}

- (unint64_t)defaultStyleHandlesAtIndex:(unsigned int)index outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  v7 = *&index;
  if (index < 0x100000)
  {
    v17 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage defaultStyleHandlesAtIndex:outCellStyleHandle:outTextStyleHandle:]", handle);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 255, 0, "Unexpected header bucket index: %u!", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v17 = 0;
  }

  return sub_2216F71C8(v17, v7, handle, styleHandle);
}

- (void)updateStylesWithBlock:(id)block
{
  blockCopy = block;
  if (self->_bucketCount)
  {
    v4 = 0;
    do
    {
      sub_2211AD178(self->_buckets[v4++], blockCopy);
    }

    while (v4 < self->_bucketCount);
  }
}

- (id)metadataAtIndex:(unsigned int)index hidingAction:(unsigned __int8)action defaultSize:(double)size uuid:(TSKUIDStruct)uuid
{
  upper = uuid._upper;
  lower = uuid._lower;
  actionCopy = action;
  v10 = *&index;
  if (index >= 0x100000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage metadataAtIndex:hidingAction:defaultSize:uuid:]", action);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 273, 0, "Unexpected header bucket index: %u!", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
LABEL_5:
    v22 = [TSTColumnRowMetadata alloc];
    v21 = objc_msgSend_initWithSize_hidingAction_cellStyle_textStyle_columnRowUID_(v22, v23, actionCopy, 0, 0, lower, upper, size);
    goto LABEL_6;
  }

  v20 = self->_buckets[HIWORD(index)];
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_2216F70B4(v20, *&index, action, uuid._lower, uuid._upper);
  if (!v21)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v21;
}

- (void)updateHeaderAtIndex:(unsigned int)index fromMetadata:(id)metadata
{
  v4 = *&index;
  metadataCopy = metadata;
  sub_2211A9790(self, v4, v6, v7);
  if (v4 < 0x100000)
  {
    v19 = self->_buckets[v4 >> 16];
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage updateHeaderAtIndex:fromMetadata:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 295, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v19 = 0;
  }

  sub_2211AD03C(v19, v4, metadataCopy);
}

- (void)removeIndexesAtIndex:(unsigned int)index count:(unsigned int)count
{
  if (count + index > index)
  {
    countCopy = count;
    v5 = *&index;
    do
    {
      if (v5 < 0x100000)
      {
        v16 = self->_buckets[WORD1(v5)];
      }

      else
      {
        v7 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage removeIndexesAtIndex:count:]", *&count);
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v10);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 304, 0, "Unexpected header bucket index: %u!", v5);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
        v16 = 0;
      }

      sub_2211ADC14(v16, 0, v5);
      v5 = (v5 + 1);
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)shiftIndexesForwardAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  buckets = self->_buckets;
  v8 = sub_2211AD968(self->_buckets[0], *&index, *&count, *&count);
  bucketCount = self->_bucketCount;
  if (bucketCount == 1)
  {
    v28 = v8;
    if (objc_msgSend_count(v8, v9, v10, v11))
    {
      sub_2211A9944(self, v9, v10, v11);
    }

    bucketCount = self->_bucketCount;
    v8 = v28;
  }

  if (bucketCount >= 2)
  {
    v13 = 1;
    v14 = v8;
    do
    {
      p_isa = &buckets[v13]->super.super.isa;
      sub_2211ADE0C(p_isa, v14);
      v29 = sub_2211AD968(p_isa, v5, v4, v16);

      ++v13;
      v8 = v29;
      v14 = v29;
    }

    while (v13 < self->_bucketCount);
  }

  v30 = v8;
  if (objc_msgSend_count(v8, v9, v10, v11))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableHeaderStorage shiftIndexesForwardAtIndex:count:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 326, 0, "Headers spilled out of our last bucket during shift!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }
}

- (void)shiftIndexesBackAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  bucketCount = self->_bucketCount;
  if (bucketCount == 1)
  {
    v7 = sub_2211AD740(self->_buckets[0], *&index, *&count, *&count);
  }

  else if (bucketCount - 1 < 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    p_owner = &self->super._owner;
    do
    {
      p_isa = &p_owner[bucketCount]->super.isa;
      sub_2211ADE0C(p_isa, v8);
      v23 = sub_2211AD740(p_isa, v5, v4, v11);

      --bucketCount;
      v7 = v23;
      v8 = v23;
    }

    while (bucketCount > 0);
  }

  v24 = v7;
  if (objc_msgSend_count(v7, a2, *&index, *&count))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableHeaderStorage shiftIndexesBackAtIndex:count:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 344, 0, "Headers spilled below zero!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }
}

- (void)swapIndex:(unsigned int)index withIndex:(unsigned int)withIndex
{
  v4 = *&withIndex;
  v5 = *&index;
  v7 = sub_2211A9AE4(&self->super.super.isa, *&index, *&index, *&withIndex);
  v10 = v7;
  if (v7)
  {
    v11 = sub_2211ADAF8(v7, v5, v8, v9);
    if (v11)
    {
      v23 = v11;
      sub_2211ADC14(v10, 0, v5);
      v11 = v23;
    }
  }

  else
  {
    v11 = 0;
  }

  v24 = v11;
  v12 = sub_2211A9AE4(&self->super.super.isa, v4, v8, v9);
  v15 = v12;
  if (v12 && (sub_2211ADAF8(v12, v4, v13, v14), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sub_2211ADC14(v15, 0, v4);
    v17 = v24 != 0;
    v18 = 1;
    v19 = v16;
  }

  else
  {
    v19 = 0;
    if (!v24)
    {
      goto LABEL_19;
    }

    v18 = 0;
    v17 = 1;
  }

  if ((v4 | v5) >= 0x10000)
  {
    if (v5 <= v4)
    {
      v20 = v4;
    }

    else
    {
      v20 = v5;
    }

    sub_2211A9790(self, v20, v13, v14);
  }

  if (v17)
  {
    v21 = sub_2211A9AE4(&self->super.super.isa, v4, v13, v14);

    sub_2211ADC14(v21, v24, v4);
  }

  if (v18)
  {
    v22 = sub_2211A9AE4(&self->super.super.isa, v5, v13, v14);

    sub_2211ADC14(v22, v19, v5);
  }

LABEL_19:
}

- (void)moveIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  if (LODWORD(range.location) < index && LODWORD(range.location) + LODWORD(range.length) > index)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Move ranges cannot overlap!", a2, "[TSTTableHeaderStorage moveIndexRange:toIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 399, range.location);
    v4 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableHeaderStorage moveIndexRange:toIndex:]", v6);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 399, 1, "Move ranges cannot overlap!");

    TSUCrashBreakpoint();
    abort();
  }

  operator new();
}

- (unint64_t)cellCountAtIndex:(unsigned int)index
{
  v4 = *&index;
  if (index >= 0x100000)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage cellCountAtIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 441, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    return 0;
  }

  v14 = self->_buckets[HIWORD(index)];
  if (!v14)
  {
    return 0;
  }

  return sub_2216F7268(v14);
}

- (void)decrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount
{
  amountCopy = amount;
  v5 = *&index;
  if (index < 0x100000)
  {
    v15 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage decrementCellCountAtIndex:byAmount:]", amount);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 447, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    v15 = 0;
  }

  sub_2216F7350(v15, v5, amountCopy);
}

- (void)incrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount
{
  v5 = *&index;
  sub_2211A9790(self, *&index, *&index, amount);
  if (v5 < 0x100000)
  {
    v18 = self->_buckets[WORD1(v5)];
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableHeaderStorage incrementCellCountAtIndex:byAmount:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 454, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v18 = 0;
  }

  sub_2216F72A8(v18, v5, amount);
}

- (void)resetAllCellCounts
{
  if (self->_bucketCount)
  {
    v5 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2211AD3C8(&buckets[v5++]->super.super.isa, a2, v2, v3);
    }

    while (v5 < self->_bucketCount);
  }
}

- (unint64_t)totalCellCount
{
  if (!self->_bucketCount)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  buckets = self->_buckets;
  do
  {
    v6 += sub_2211AD5FC(buckets[v5++], a2, v2, v3);
  }

  while (v5 < self->_bucketCount);
  return v6;
}

- (void)forceLoadHeaders
{
  if (self->_bucketCount)
  {
    v5 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2216F73F8(&buckets[v5++]->super.super.isa, a2, v2, v3);
    }

    while (v5 < self->_bucketCount);
  }
}

- (void)reset
{
  if (self->_bucketCount)
  {
    v5 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2216F7418(&buckets[v5++]->super.super.isa, a2, v2, v3);
    }

    while (v5 < self->_bucketCount);
  }
}

- (unint64_t)count
{
  if (!self->_bucketCount)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  buckets = self->_buckets;
  do
  {
    v6 += sub_2216F6D84(&buckets[v5++]->super.super.isa, a2, v2, v3);
  }

  while (v5 < self->_bucketCount);
  return v6;
}

- (unsigned)minIndex
{
  buckets = self->_buckets;
  v9 = sub_2216F6D9C(&self->_buckets[0]->super.super.isa, a2, v2, v3);
  if (self->_bucketCount >= 2)
  {
    v10 = 1;
    do
    {
      v11 = sub_2216F6D9C(&buckets[v10]->super.super.isa, v6, v7, v8);
      if (v9 >= v11)
      {
        v9 = v11;
      }

      ++v10;
    }

    while (v10 < self->_bucketCount);
  }

  return v9;
}

- (unsigned)maxIndex
{
  buckets = self->_buckets;
  v9 = sub_2216F6DD4(&self->_buckets[0]->super.super.isa, a2, v2, v3);
  if (self->_bucketCount >= 2)
  {
    v10 = 1;
    do
    {
      v11 = sub_2216F6DD4(&buckets[v10]->super.super.isa, v6, v7, v8);
      if (v9 <= v11)
      {
        v9 = v11;
      }

      ++v10;
    }

    while (v10 < self->_bucketCount);
  }

  return v9;
}

- (NSIndexSet)populatedIndexes
{
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  if (self->_bucketCount)
  {
    v9 = 0;
    do
    {
      v10 = sub_2211AC9D0(self->_buckets[v9], v5, v6, v7);
      objc_msgSend_addIndexes_(v8, v11, v10, v12);

      ++v9;
    }

    while (v9 < self->_bucketCount);
  }

  v13 = objc_alloc(MEMORY[0x277CCAA78]);
  v16 = objc_msgSend_initWithIndexSet_(v13, v14, v8, v15);

  return v16;
}

@end