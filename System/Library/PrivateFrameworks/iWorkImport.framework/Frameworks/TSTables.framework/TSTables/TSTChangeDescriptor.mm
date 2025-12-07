@interface TSTChangeDescriptor
+ (id)changeDescriptorWithAnnotationsRemovedForMerge:(id)merge;
+ (id)changeDescriptorWithType:(int)type;
+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRange:(TSUCellRect)range;
+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRange:(TSUCellRect)range strokeRange:(TSUCellRect)strokeRange;
+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRegion:(id)region strokeRegion:(id)strokeRegion;
+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d strokeRange:(TSUCellRect)range;
+ (id)changeDescriptorWithType:(int)type cellRange:(TSUCellRect)range;
+ (id)changeDescriptorWithType:(int)type cellRange:(TSUCellRect)range strokeRange:(TSUCellRect)strokeRange;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region beforeCount:(unint64_t)count afterCount:(unint64_t)afterCount;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion;
+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion beforeCount:(unint64_t)count afterCount:(unint64_t)afterCount;
+ (id)changeDescriptorWithType:(int)type referenceIdentifiers:(id)identifiers;
+ (id)changeDescriptorWithType:(int)type shuffleMapping:(id)mapping;
+ (id)changeDescriptorWithType:(int)type strokeRange:(TSUCellRect)range;
+ (id)changeDescriptorWithType:(int)type strokeRegion:(id)region;
+ (void)enumerateChangeRecords:(id)records withType:(int)type block:(id)block;
- (BOOL)isEqual:(id)equal;
- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)type cellRegion:(id)region cellID:(TSUCellCoord)d strokeRegion:(id)strokeRegion referenceIdentifiers:(id)identifiers shuffleMapping:(id)mapping annotations:(id)annotations;
- (TSUCellRect)cellRange;
- (TSUCellRect)strokeRange;
@end

@implementation TSTChangeDescriptor

- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)type cellRegion:(id)region cellID:(TSUCellCoord)d strokeRegion:(id)strokeRegion referenceIdentifiers:(id)identifiers shuffleMapping:(id)mapping annotations:(id)annotations
{
  regionCopy = region;
  strokeRegionCopy = strokeRegion;
  identifiersCopy = identifiers;
  mappingCopy = mapping;
  annotationsCopy = annotations;
  v29.receiver = self;
  v29.super_class = TSTChangeDescriptor;
  v19 = [(TSTChangeDescriptor *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cellRegion, region);
    v20->_cellID = d;
    v20->_changeDescriptor = type;
    objc_storeStrong(&v20->_strokeRegion, strokeRegion);
    v24 = objc_msgSend_copy(identifiersCopy, v21, v22, v23, strokeRegionCopy, regionCopy);
    referenceIdentifiers = v20->_referenceIdentifiers;
    v20->_referenceIdentifiers = v24;

    objc_storeStrong(&v20->_shuffleMapping, mapping);
    objc_storeStrong(&v20->_annotations, annotations);
    v20->_processedByLayoutEngine = 0;
  }

  return v20;
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region
{
  v4 = *&type;
  regionCopy = region;
  v6 = [TSTChangeDescriptor alloc];
  v10 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  v12 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v11, v4, regionCopy, 0x7FFF7FFFFFFFLL, v10, 0, 0);

  return v12;
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion
{
  v6 = *&type;
  strokeRegionCopy = strokeRegion;
  regionCopy = region;
  v9 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v10, v6, regionCopy, 0x7FFF7FFFFFFFLL, strokeRegionCopy, 0, 0);

  return v11;
}

+ (id)changeDescriptorWithType:(int)type strokeRegion:(id)region
{
  v4 = *&type;
  regionCopy = region;
  v6 = [TSTChangeDescriptor alloc];
  v10 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  v12 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v11, v4, v10, 0x7FFF7FFFFFFFLL, regionCopy, 0, 0);

  return v12;
}

+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRegion:(id)region strokeRegion:(id)strokeRegion
{
  v8 = *&type;
  strokeRegionCopy = strokeRegion;
  regionCopy = region;
  v11 = [TSTChangeDescriptor alloc];
  v13 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v11, v12, v8, regionCopy, d, strokeRegionCopy, 0, 0);

  return v13;
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region strokeRegion:(id)strokeRegion beforeCount:(unint64_t)count afterCount:(unint64_t)afterCount
{
  v10 = *&type;
  strokeRegionCopy = strokeRegion;
  regionCopy = region;
  v13 = [TSTChangeDescriptor alloc];
  v15 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v13, v14, v10, regionCopy, 0x7FFF7FFFFFFFLL, strokeRegionCopy, 0, 0);

  objc_msgSend_setBeforeCountValue_(v15, v16, count, v17);
  objc_msgSend_setAfterCountValue_(v15, v18, afterCount, v19);

  return v15;
}

+ (id)changeDescriptorWithType:(int)type cellRegion:(id)region beforeCount:(unint64_t)count afterCount:(unint64_t)afterCount
{
  v8 = *&type;
  regionCopy = region;
  v10 = [TSTChangeDescriptor alloc];
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v11, v12, v13);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v10, v15, v8, regionCopy, 0x7FFF7FFFFFFFLL, v14, 0, 0);

  objc_msgSend_setBeforeCountValue_(v16, v17, count, v18);
  objc_msgSend_setAfterCountValue_(v16, v19, afterCount, v20);

  return v16;
}

+ (id)changeDescriptorWithType:(int)type
{
  v3 = *&type;
  v4 = [TSTChangeDescriptor alloc];
  v8 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7);
  v12 = objc_msgSend_invalidRegion(TSTCellRegion, v9, v10, v11);
  v14 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v4, v13, v3, v8, 0x7FFF7FFFFFFFLL, v12, 0, 0);

  return v14;
}

+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v8 = *&type;
  v9 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_regionFromRange_(TSTCellRegion, v10, origin, size);
  v15 = objc_msgSend_invalidRegion(TSTCellRegion, v12, v13, v14);
  v17 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v16, v8, v11, d, v15, 0, 0);

  return v17;
}

+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d cellRange:(TSUCellRect)range strokeRange:(TSUCellRect)strokeRange
{
  size = strokeRange.size;
  origin = strokeRange.origin;
  v8 = range.size;
  v9 = range.origin;
  v11 = *&type;
  v12 = [TSTChangeDescriptor alloc];
  v14 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, v9, v8);
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v15, origin, size);
  v18 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v12, v17, v11, v14, d, v16, 0, 0);

  return v18;
}

+ (id)changeDescriptorWithType:(int)type cellID:(TSUCellCoord)d strokeRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v8 = *&type;
  v9 = [TSTChangeDescriptor alloc];
  v13 = objc_msgSend_invalidRegion(TSTCellRegion, v10, v11, v12);
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, origin, size);
  v17 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v16, v8, v13, d, v15, 0, 0);

  return v17;
}

+ (id)changeDescriptorWithType:(int)type cellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = *&type;
  v7 = [TSTChangeDescriptor alloc];
  v9 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, origin, size);
  v13 = objc_msgSend_invalidRegion(TSTCellRegion, v10, v11, v12);
  v15 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v7, v14, v6, v9, 0x7FFF7FFFFFFFLL, v13, 0, 0);

  return v15;
}

+ (id)changeDescriptorWithType:(int)type strokeRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = *&type;
  v7 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10);
  v13 = objc_msgSend_regionFromRange_(TSTCellRegion, v12, origin, size);
  v15 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v7, v14, v6, v11, 0x7FFF7FFFFFFFLL, v13, 0, 0);

  return v15;
}

+ (id)changeDescriptorWithType:(int)type cellRange:(TSUCellRect)range strokeRange:(TSUCellRect)strokeRange
{
  size = strokeRange.size;
  origin = strokeRange.origin;
  v7 = range.size;
  v8 = range.origin;
  v9 = *&type;
  v10 = [TSTChangeDescriptor alloc];
  v12 = objc_msgSend_regionFromRange_(TSTCellRegion, v11, v8, v7);
  v14 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, origin, size);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v10, v15, v9, v12, 0x7FFF7FFFFFFFLL, v14, 0, 0);

  return v16;
}

+ (id)changeDescriptorWithType:(int)type referenceIdentifiers:(id)identifiers
{
  v4 = *&type;
  identifiersCopy = identifiers;
  v6 = [TSTChangeDescriptor alloc];
  v10 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v11, v12, v13);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v15, v4, v10, 0x7FFF7FFFFFFFLL, v14, identifiersCopy, 0);

  return v16;
}

+ (id)changeDescriptorWithType:(int)type shuffleMapping:(id)mapping
{
  v4 = *&type;
  mappingCopy = mapping;
  v6 = [TSTChangeDescriptor alloc];
  v10 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v11, v12, v13);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v15, v4, v10, 0x7FFF7FFFFFFFLL, v14, 0, mappingCopy);

  return v16;
}

+ (id)changeDescriptorWithAnnotationsRemovedForMerge:(id)merge
{
  mergeCopy = merge;
  v4 = [TSTChangeDescriptor alloc];
  v8 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7);
  v12 = objc_msgSend_invalidRegion(TSTCellRegion, v9, v10, v11);
  v14 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_annotations_(v4, v13, 54, v8, 0x7FFF7FFFFFFFLL, v12, 0, 0, mergeCopy);

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v10 = v6;
    if (v6 && (changeDescriptor = self->_changeDescriptor, changeDescriptor == objc_msgSend_changeDescriptor(v6, v7, v8, v9)))
    {
      cellRegion = self->_cellRegion;
      v16 = objc_msgSend_cellRegion(v10, v12, v13, v14);
      if (objc_msgSend_equalsCellRegion_(cellRegion, v17, v16, v18))
      {
        v22 = objc_msgSend_cellID(v10, v19, v20, v21);
        v26 = 0;
        cellID = self->_cellID;
        if (cellID.row == v22 && ((*&cellID ^ v22) & 0xFFFF00000000) == 0)
        {
          strokeRegion = self->_strokeRegion;
          v29 = objc_msgSend_strokeRegion(v10, v23, v24, v25);
          v26 = objc_msgSend_equalsCellRegion_(strokeRegion, v30, v29, v31);
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (TSUCellRect)strokeRange
{
  v4 = objc_msgSend_boundingCellRange(self->_strokeRegion, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)cellRange
{
  v4 = objc_msgSend_boundingCellRange(self->_cellRegion, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

+ (void)enumerateChangeRecords:(id)records withType:(int)type block:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  blockCopy = block;
  v29 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = recordsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v30, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        v19 = objc_msgSend_details(v15, v16, v17, v18);
        v20 = TSUDynamicCast();

        if (v20)
        {
          if (objc_msgSend_changeDescriptor(v20, v21, v22, v23) == type)
          {
            blockCopy[2](blockCopy, v20, &v29);
            if (v29 == 1)
            {

              goto LABEL_13;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v24, &v25, v30, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end