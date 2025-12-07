@interface TTMergeableString
+ (id)unserialisedReplicaID;
- (BOOL)canMergeString:(id)string;
- (BOOL)graphIsEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFragment;
- (BOOL)selection:(id)selection wasModifiedAfter:(id)after;
- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)anchor wasModifiedAfter:(id)after;
- (NSString)description;
- (TTMergeableString)initWithArchive:(const void *)archive andReplicaID:(id)d withOrderedSubstrings:(void *)substrings timestamp:(id)timestamp;
- (TTMergeableString)initWithData:(id)data andReplicaID:(id)d;
- (TTMergeableString)initWithReplicaID:(id)d asFragment:(BOOL)fragment;
- (TTMergeableStringDelegate)delegate;
- (TopoIDRange)insertAttributedString:(SEL)string after:(id)after before:(void *)before;
- (__n128)deleteSubstrings:(uint64_t)substrings withCharacterRanges:(char)ranges;
- (id).cxx_construct;
- (id)characterRangesForSelection:(id)selection;
- (id)characterRangesForSelection:(id)selection selectedSubstringsBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dotDescription:(unint64_t)description;
- (id)i_saveDeltasSinceTimestamp:(id)timestamp toArchive:(void *)archive;
- (id)replicaUUIDForCharacterAtIndex:(unint64_t)index;
- (id)selectionForCharacterRanges:(id)ranges;
- (id)selectionForCharacterRanges:(id)ranges selectionAffinity:(unint64_t)affinity;
- (id)serialize;
- (id)serializeDeltaSinceTimestamp:(id)timestamp;
- (int64_t)substring:(void *)substring modifiedAfter:(id)after;
- (unint64_t)getCharacterIndexForCharID:(TopoID)d;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)mergeWithString:(id)string mergeTimestamps:(BOOL)timestamps;
- (void)checkTimestampLogStyleErrors:(BOOL)errors;
- (void)cleanupObjectsNeedingUpdatedRanges;
- (void)coalesce;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)range;
- (void)deleteSubstrings:(void *)substrings withCharacterRanges:(void *)ranges;
- (void)dumpMergeData:(id)data;
- (void)endEditing;
- (void)enumerateRangesModifiedAfter:(id)after usingBlock:(id)block;
- (void)enumerateSubstrings:(id)substrings;
- (void)generateIdsForLocalChanges;
- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)timestamp;
- (void)getCharacterRanges:(void *)ranges forSubstrings:(void *)substrings;
- (void)getSubstringBeforeTopoID:(TopoID)d;
- (void)getSubstrings:(void *)substrings forCharacterRange:(_NSRange)range;
- (void)getSubstrings:(void *)substrings forTopoIDRange:(TopoIDRange *)range;
- (void)getSubstrings:(void *)substrings inOrderedSubstrings:(void *)orderedSubstrings forCharacterRange:(_NSRange)range;
- (void)insertAttributedString:(id)string atIndex:(unint64_t)index;
- (void)insertString:(id)string atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)moveRange:(_NSRange)range toIndex:(unint64_t)index;
- (void)orderedSubstrings;
- (void)realizeLocalChangesIn:(id)in;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)saveSubstrings:(void *)substrings archiveSet:(void *)set linkSet:(void *)linkSet archivedString:(id *)string toArchive:(void *)archive;
- (void)saveToArchive:(void *)archive;
- (void)setDocument:(id)document;
- (void)setTimestamp:(id)timestamp;
- (void)sortSplitNodes;
- (void)splitTopoSubstring:(void *)substring atIndex:(unsigned int)index;
- (void)traverseUnordered:(id)unordered;
- (void)updateAttributedStringAfterMerge;
- (void)updateCache;
- (void)updateClock;
- (void)updateSubstringIndexes;
- (void)updateTimestampsInRange:(_NSRange)range;
- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
@end

@implementation TTMergeableString

- (void)setDocument:(id)document
{
  documentCopy = document;
  replica = [documentCopy replica];
  [(TTMergeableString *)self setReplicaUUID:replica];

  v6 = objc_opt_class();
  v7 = REMDynamicCast(v6, documentCopy);
  v8 = v7;
  if (v7)
  {
    sharedTopotextTimestamp = [v7 sharedTopotextTimestamp];
    [(TTMergeableString *)self setTimestamp:sharedTopotextTimestamp];

    objc_setAssociatedObject(self, TTMergeableStringCRDataTypeCRDocumentKey, v8, 0);
  }

  else
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [TTMergeableString(CRDataType) setDocument:v10];
    }
  }
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v7);
    }

    [(TTMergeableString *)self mergeWithString:withCopy mergeTimestamps:0];
    document = [(TTMergeableString *)self document];

    if (document)
    {
      document2 = [(TTMergeableString *)self document];
      stringsWithClocksNeedingUpdating = [document2 stringsWithClocksNeedingUpdating];
      [stringsWithClocksNeedingUpdating addObject:self];
    }
  }
}

- (void)realizeLocalChangesIn:(id)in
{
  [(TTMergeableString *)self generateIdsForLocalChanges];
  document = [(TTMergeableString *)self document];

  if (document)
  {
    document2 = [(TTMergeableString *)self document];
    stringsWithClocksToResetAfterRealizingLocalChanges = [document2 stringsWithClocksToResetAfterRealizingLocalChanges];
    [stringsWithClocksToResetAfterRealizingLocalChanges addObject:self];
  }
}

- (TTMergeableString)initWithReplicaID:(id)d asFragment:(BOOL)fragment
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v17.receiver = self;
  v17.super_class = TTMergeableString;
  v8 = [(TTMergeableString *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replicaUUID, d);
    v9->_unserializedClock = 0;
    if (!fragment)
    {
      operator new();
    }

    v10 = [[TTVectorMultiTimestamp alloc] initWithCapacity:2];
    timestamp = v9->_timestamp;
    v9->_timestamp = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
    objectsNeedingUpdatedRanges = v9->_objectsNeedingUpdatedRanges;
    v9->_objectsNeedingUpdatedRanges = v12;

    v9->_cacheInvalid = 1;
    v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
    attributedString = v9->_attributedString;
    v9->_attributedString = v14;
  }

  return v9;
}

- (void)dealloc
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5812000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = &unk_19A260519;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  if (begin == end)
  {
    v7 = &v13;
  }

  else
  {
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v6 = *begin;
      v12[0] = v5;
      v12[1] = 3221225472;
      v12[2] = __28__TTMergeableString_dealloc__block_invoke;
      v12[3] = &unk_1E7509A38;
      v12[4] = &v13;
      traverseUnordered(v6, v12);
      ++begin;
    }

    while (begin != end);
    v7 = v14;
  }

  for (i = v7[8]; i; i = *i)
  {
    v9 = i[2];
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        *(v9 + 56) = v10;
        operator delete(v10);
      }

      MEMORY[0x19A8FD070](v9, 0x1080C40D9F1C51ELL);
    }
  }

  _Block_object_dispose(&v13, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v19);
  v11.receiver = self;
  v11.super_class = TTMergeableString;
  [(TTMergeableString *)&v11 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  topotext::String::String(v8);
  [(TTMergeableString *)self saveToArchive:v8];
  v4 = objc_alloc(objc_opt_class());
  replicaUUID = [(TTMergeableString *)self replicaUUID];
  v6 = [v4 initWithArchive:v8 andReplicaID:replicaUUID];

  topotext::String::~String(v8);
  return v6;
}

+ (id)unserialisedReplicaID
{
  if (+[TTMergeableString unserialisedReplicaID]::predicate != -1)
  {
    +[TTMergeableString unserialisedReplicaID];
  }

  v3 = +[TTMergeableString unserialisedReplicaID]::TTUnserialisedReplicaID;

  return v3;
}

uint64_t __42__TTMergeableString_unserialisedReplicaID__block_invoke()
{
  +[TTMergeableString unserialisedReplicaID]::TTUnserialisedReplicaID = [MEMORY[0x1E696AFB0] UUID];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)length
{
  string = [(TTMergeableString *)self string];
  v3 = [string length];

  return v3;
}

- (void)insertString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
  [(TTMergeableString *)self insertAttributedString:v6 atIndex:index];
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
  [(TTMergeableString *)self replaceCharactersInRange:location withAttributedString:length, v7];
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  delegate = [(TTMergeableString *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate beginEditing];
  }

  [(TTMergeableString *)self beginEditing];
  [(TTMergeableString *)self deleteCharactersInRange:location, length];
  [(TTMergeableString *)self insertAttributedString:stringCopy atIndex:location];
  [(TTMergeableString *)self endEditing];
  if (v8)
  {
    [v8 endEditing];
  }
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  *&v13 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    rangeCopy = range;
    v7 = 0;
    v8 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, &rangeCopy, &v13, 1uLL);
    [(TTMergeableString *)self getSubstrings:&v9 forCharacterRange:location, length];
    [(TTMergeableString *)self deleteSubstrings:&v9 withCharacterRanges:&__p];
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }
  }
}

- (void)insertAttributedString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  if ([stringCopy length])
  {
    if (index)
    {
      if ([(TTMergeableString *)self length]== index)
      {
        [(TTMergeableString *)self orderedSubstrings];
        [(TTMergeableString *)self orderedSubstrings];
        goto LABEL_13;
      }

      TTBoundedCheckedCastNSUIntegerToUInt32();
      v8 = v7;
      for (i = 0; ; i += 8)
      {
        v10 = *(*[(TTMergeableString *)self orderedSubstrings]+ i);
        if ((*(v10 + 44) & 1) == 0)
        {
          v11 = *(v10 + 16);
          v12 = v8 >= v11;
          v13 = v8 - v11;
          if (!v12)
          {
            [(TTMergeableString *)self splitTopoSubstring:v10 atIndex:v8];
            [(TTMergeableString *)self invalidateCache];
            goto LABEL_13;
          }

          v8 = v13;
          if (!v13)
          {
            break;
          }
        }
      }
    }

    [(TTMergeableString *)self orderedSubstrings];
LABEL_13:
    objc_msgSend_insertAttributedString_after_before_(self);
  }
}

- (void)endEditing
{
  editCount = self->_editCount;
  if (editCount)
  {
    v3 = editCount - 1;
    self->_editCount = v3;
    if (!v3)
    {
      [(TTMergeableString *)self coalesce];
    }
  }
}

- (id)replicaUUIDForCharacterAtIndex:(unint64_t)index
{
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v5 = *orderedSubstrings;
  v6 = orderedSubstrings[1];
  if (*orderedSubstrings == v6)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  while (1)
  {
    v8 = *v5;
    if ((*(*v5 + 44) & 1) == 0)
    {
      break;
    }

    v9 = v7;
LABEL_8:
    ++v5;
    v7 = v9;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v8 + 16);
  v9 = v7 + v10;
  v11 = index >= v7;
  v12 = index - v7;
  if (!v11 || v12 >= v10)
  {
    goto LABEL_8;
  }

  v13 = *v8;
LABEL_11:

  return v13;
}

- (id)selectionForCharacterRanges:(id)ranges
{
  v3 = [(TTMergeableString *)self selectionForCharacterRanges:ranges selectionAffinity:0];

  return v3;
}

- (id)selectionForCharacterRanges:(id)ranges selectionAffinity:(unint64_t)affinity
{
  rangesCopy = ranges;
  v36 = objc_alloc_init(TTMergeableStringSelection);
  affinityCopy = affinity;
  [(TTMergeableStringSelection *)v36 setSelectionAffinity:affinity];
  if (![rangesCopy count])
  {
    goto LABEL_32;
  }

  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v33 = orderedSubstrings[1];
  v34 = *orderedSubstrings;
  if (*orderedSubstrings == v33)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = *v34;
    if (*(*v34 + 44))
    {
      goto LABEL_31;
    }

    while (1)
    {
      v12 = [rangesCopy objectAtIndexedSubscript:v9];
      rangeValue = [v12 rangeValue];
      v15 = v14;

      if (!v10)
      {
        break;
      }

      v10 = v15 == 0;
      if (v15 | affinityCopy)
      {
        v16 = 1;
      }

      else
      {
        v16 = rangeValue == 0;
      }

      v17 = !v16;
      if (affinityCopy || v8 != rangeValue)
      {
        v19 = 0;
        if (affinityCopy == 1)
        {
          v18 = 0;
          if (v8 == rangeValue)
          {
            v19 = 0;
            v18 = *(v11 + 56) == *(v11 + 48);
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v11 + 72) == 0;
      }

      v27 = rangeValue - v17;
      if (v8 + *(v11 + 16) <= rangeValue - v17 && !v18 && !v19)
      {
        v10 = 1;
        goto LABEL_29;
      }

      v28 = *v11;
      v29 = *(v11 + 8);
      tTZero = [MEMORY[0x1E696AFB0] TTZero];
      v31 = v29 + v27 - v8;
      v25 = v28;
      v37 = v25;
      v38 = v31;
      v39 = tTZero;
      v40 = 0;
      std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](-[TTMergeableStringSelection selectionRanges](v36, "selectionRanges"), &v37);
      v26 = v15 == 0;

LABEL_25:
      v9 += v26;
      if (v9 >= [rangesCopy count])
      {
        goto LABEL_29;
      }
    }

    v20 = rangeValue + v15;
    if (v8 + *(v11 + 16) > v20 - 1)
    {
      v21 = *v11;
      v22 = *(v11 + 8) + v20 + ~v8;
      v23 = *([(TTMergeableStringSelection *)v36 selectionRanges]+ 8);
      v24 = *(v23 - 16);
      *(v23 - 16) = v21;
      v25 = v21;

      *(v23 - 8) = v22;
      v10 = 1;
      v26 = 1;
      goto LABEL_25;
    }

    v10 = 0;
LABEL_29:
    if (v9 >= [rangesCopy count])
    {
      break;
    }

    v8 += *(v11 + 16);
LABEL_31:
    ++v34;
  }

  while (v34 != v33);
LABEL_32:

  return v36;
}

- (id)characterRangesForSelection:(id)selection
{
  v3 = [(TTMergeableString *)self characterRangesForSelection:selection selectedSubstringsBlock:0];

  return v3;
}

- (id)characterRangesForSelection:(id)selection selectedSubstringsBlock:(id)block
{
  selfCopy = self;
  v46[1] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  blockCopy = block;
  v45 = selectionCopy;
  selectionRanges = [selectionCopy selectionRanges];
  if (selectionRanges[1] == *selectionRanges)
  {
    v39 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
    v46[0] = v39;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];

    goto LABEL_50;
  }

  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  orderedSubstrings = [(TTMergeableString *)selfCopy orderedSubstrings];
  v10 = *orderedSubstrings;
  v42 = *(orderedSubstrings + 8);
  if (*orderedSubstrings == v42)
  {
    goto LABEL_50;
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    v43 = v10;
    v14 = *v10;
    while (1)
    {
      v15 = blockCopy;
      v16 = *[v45 selectionRanges] + 32 * v12;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = v19;
      v21 = *(v16 + 24);
      v22 = *v14;
      if (v13)
      {
        break;
      }

      if (![v19 isEqual:v22])
      {
        goto LABEL_37;
      }

      v30 = *(v14 + 8);
      if (v21 < v30 || v21 >= *(v14 + 16) + v30)
      {
        goto LABEL_37;
      }

      if (*(v14 + 44))
      {
        v31 = 0;
      }

      else
      {
        v31 = v21 - v30 + 1;
      }

      blockCopy = v15;
      v32 = [MEMORY[0x1E696B098] valueWithRange:{v4, v11 + v31 - v4}];
      [v44 addObject:v32];

      ++v12;
      if (v15)
      {
        v15[2](v15, v14, 0, v31);
      }

      v13 = 1;
LABEL_35:

      selectionRanges2 = [v45 selectionRanges];
      if (v12 >= (selectionRanges2[1] - *selectionRanges2) >> 5)
      {
        goto LABEL_38;
      }
    }

    v23 = [v17 isEqual:v22];
    v24 = *(v14 + 8);
    if (v18 >= v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1 && v18 < *(v14 + 16) + v24 || v24 == v18 && [*v14 isEqual:v17])
    {
      v4 = v11;
      if ((*(v14 + 44) & 1) == 0)
      {
        v4 = v11 + v18 - *(v14 + 8);
      }

      tTZero = [MEMORY[0x1E696AFB0] TTZero];
      v27 = [v20 isEqual:tTZero];
      if (v21)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      if (v28 == 1)
      {
        if ((*(v14 + 44) & 1) == 0 && ![v45 selectionAffinity] && *(v14 + 72))
        {
          ++v4;
        }

        v29 = [MEMORY[0x1E696B098] valueWithRange:{v4, 0}];
        [v44 addObject:v29];

        ++v12;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      blockCopy = v15;
      goto LABEL_35;
    }

LABEL_37:

    blockCopy = v15;
LABEL_38:
    selectionRanges3 = [v45 selectionRanges];
    if (v12 >= (selectionRanges3[1] - *selectionRanges3) >> 5)
    {
      break;
    }

    if (!((blockCopy == 0) | v13 & 1))
    {
      if (*(v14 + 44))
      {
        v35 = 0;
      }

      else
      {
        v35 = *(v14 + 16);
      }

      v36 = *(v14 + 40);
      v49.length = [(TTMergeableString *)selfCopy length]- v4;
      v48.location = v36;
      v48.length = v35;
      v49.location = v4;
      v37 = NSIntersectionRange(v48, v49);
      blockCopy[2](blockCopy, v14, v37.location, v37.length);
    }

    v38 = (*(v14 + 44) & 1) != 0 ? 0 : *(v14 + 16);
    v11 += v38;
    v10 = v43 + 1;
  }

  while (v43 + 1 != v42);
LABEL_50:

  return v44;
}

- (void)setTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  objc_storeStrong(&self->_timestamp, timestamp);
  if ([(TTMergeableString *)self shouldInvalidateCachedSubstringsWithTimestamp:timestampCopy])
  {
    [(TTMergeableString *)self invalidateCache];
    [(TTMergeableString *)self updateClock];
    replicaTextClock = self->_replicaTextClock;
    v6 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:0];
    if (replicaTextClock <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = replicaTextClock;
    }

    self->_replicaTextClock = v7;
    replicaStyleClock = self->_replicaStyleClock;
    v9 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1];
    if (replicaStyleClock <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = replicaStyleClock;
    }

    self->_replicaStyleClock = v10;
  }
}

- (BOOL)isFragment
{
  begin = self->_startNodes.__begin_;
  if ((self->_startNodes.__end_ - begin) != 8 || (self->_endNodes.__end_ - self->_endNodes.__begin_) != 8)
  {
    goto LABEL_9;
  }

  v4 = *begin;
  tTZero = [MEMORY[0x1E696AFB0] TTZero];
  if (*(v4 + 2))
  {
    goto LABEL_4;
  }

  v7 = [*v4 isEqual:tTZero];

  if ((v7 & 1) == 0)
  {
LABEL_9:
    LOBYTE(v6) = 1;
    return v6;
  }

  v8 = *self->_endNodes.__begin_;
  tTZero = [MEMORY[0x1E696AFB0] TTZero];
  if (*(v8 + 2) == -1)
  {
    v6 = [*v8 isEqual:tTZero] ^ 1;
    goto LABEL_5;
  }

LABEL_4:
  LOBYTE(v6) = 1;
LABEL_5:

  return v6;
}

- (void)updateTimestampsInRange:(_NSRange)range
{
  *&v16 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v6 = +[TTMergeableString unserialisedReplicaID];
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *&v15 = location;
    *(&v15 + 1) = length;
    v10 = 0;
    v11 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, &v15, &v16, 1uLL);
    [(TTMergeableString *)self getSubstrings:&v12 forCharacterRange:location, length];
    v7 = v12;
    v8 = v13;
    while (v7 != v8)
    {
      objc_storeStrong((*v7 + 24), v6);
      v7 += 8;
    }

    [(TTMergeableString *)self coalesce];
    self->_hasLocalChanges = 1;
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }
}

- (void)deleteSubstrings:(void *)substrings withCharacterRanges:(void *)ranges
{
  obj = +[TTMergeableString unserialisedReplicaID];
  v9 = *substrings;
  for (i = *(substrings + 1); v9 != i; ++v9)
  {
    v10 = *v9;
    if ((*(*v9 + 44) & 1) == 0)
    {
      *(v10 + 44) = 1;
      objc_storeStrong((v10 + 24), obj);
    }
  }

  v11 = *(ranges + 1);
  v12 = 126 - 2 * __clz((v11 - *ranges) >> 4);
  if (v11 == *ranges)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  *&v14 = std::__introsort<std::_ClassicAlgPolicy,[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(*ranges, v11, v13, 1, v7).n128_u64[0];
  v15 = *ranges;
  v16 = *(ranges + 1);
  while (v15 != v16)
  {
    [(NSMutableAttributedString *)self->_attributedString deleteCharactersInRange:v15->n128_u64[0], v15->n128_u64[1], v14];
    ++v15;
  }

  delegate = [(TTMergeableString *)self delegate];
  v18 = delegate;
  if (delegate)
  {
    [delegate beginEditing];
    v19 = *ranges;
    v20 = *(ranges + 1);
    location = **ranges;
    v21.length = *(*ranges + 8);
    if (*ranges == v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v27.location = v19->n128_u64[0];
        v24 = v19->n128_u64[1];
        v21.location = location;
        v27.length = v24;
        v21 = NSUnionRange(v21, v27);
        location = v21.location;
        v23 += v24;
        ++v19;
      }

      while (v19 != v20);
    }

    [v18 edited:2 range:location changeInLength:{v21.length, -v23}];
  }

  [(TTMergeableString *)self coalesce];
  [(TTMergeableString *)self updateSubstringIndexes];
  self->_hasLocalChanges = 1;
  if (v18)
  {
    [v18 endEditing];
  }
}

- (TopoIDRange)insertAttributedString:(SEL)string after:(id)after before:(void *)before
{
  v20 = *MEMORY[0x1E69E9840];
  afterCopy = after;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__17;
  v15 = 256;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if ([afterCopy length])
  {
    +[TTMergeableString unserialisedReplicaID];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v8 = v11;
  retstr->var0.var0 = v11[6];
  retstr->var0.var1 = *(v8 + 14);
  retstr->var1 = *(v8 + 16);
  _Block_object_dispose(&v10, 8);

  return result;
}

void __57__TTMergeableString_insertAttributedString_after_before___block_invoke(uint64_t a1, id *a2, id *a3)
{
  memset(v8, 0, sizeof(v8));
  updateTopoIDRange((*(*(a1 + 32) + 8) + 48), a2, a3, v8);
  v6 = v8[0];
  v7 = *(*(a1 + 32) + 8);
  objc_storeStrong((v7 + 48), *v8[0]);
  *(v7 + 56) = *(v6 + 8);
  *(v7 + 64) = *(v6 + 16);
  v9 = v8;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v9);
}

- (void)moveRange:(_NSRange)range toIndex:(unint64_t)index
{
  if (range.length)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    [(TTMergeableString *)self getSubstrings:&__p forCharacterRange:range.location, range.length];
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

- (void)getSubstrings:(void *)substrings forCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];

  [(TTMergeableString *)self getSubstrings:substrings inOrderedSubstrings:orderedSubstrings forCharacterRange:location, length];
}

- (void)getSubstrings:(void *)substrings inOrderedSubstrings:(void *)orderedSubstrings forCharacterRange:(_NSRange)range
{
  if (!range.length)
  {
    return;
  }

  v8 = *orderedSubstrings;
  v7 = *(orderedSubstrings + 1);
  if (*orderedSubstrings == v7)
  {
    goto LABEL_18;
  }

  location = range.location;
  v11 = 0;
  v12 = range.location + range.length;
  while (1)
  {
    v13 = *v8;
    v23 = v13;
    if ((*(v13 + 44) & 1) == 0)
    {
      break;
    }

    v14 = v11;
LABEL_6:
    v7 = *(orderedSubstrings + 1);
LABEL_12:
    v8 += 8;
    v11 = v14;
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

  v14 = v11 + *(v13 + 16);
  if (v14 <= location)
  {
    goto LABEL_12;
  }

  if (v12 <= v11)
  {
    goto LABEL_18;
  }

  if (location > v11)
  {
    TTBoundedCheckedCastNSUIntegerToUInt32();
    v22 = [(TTMergeableString *)self splitTopoSubstring:v13 atIndex:v15];
    v8 = std::vector<TopoSubstring *>::insert(orderedSubstrings, v8 + 8, &v22);
    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v22);
    if (v12 < v14)
    {
      v17 = v22;
      TTBoundedCheckedCastNSUIntegerToUInt32();
      v21 = [(TTMergeableString *)self splitTopoSubstring:v17 atIndex:v18];
      v19 = v8 + 8;
      v20 = &v21;
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (v14 <= v12)
  {
    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v23);
    goto LABEL_6;
  }

  TTBoundedCheckedCastNSUIntegerToUInt32();
  v22 = [(TTMergeableString *)self splitTopoSubstring:v13 atIndex:v16];
  std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v23);
  v19 = v8 + 8;
  v20 = &v22;
LABEL_17:
  std::vector<TopoSubstring *>::insert(orderedSubstrings, v19, v20);
LABEL_18:
  [(TTMergeableString *)self invalidateCache];
}

- (void)getSubstringBeforeTopoID:(TopoID)d
{
  var1 = d.var1;
  var0 = d.var0;
  v6 = *self->_startNodes.__begin_;
  v20 = d.var0;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v9 = *orderedSubstrings;
  v8 = orderedSubstrings[1];
  if (*orderedSubstrings == v8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_18;
  }

  selfCopy = self;
  while (1)
  {
    v10 = *v9;
    v11 = **v9;
    v12 = *(v10 + 2);
    v13 = *(v10 + 4);
    if (![var0 isEqual:v11])
    {
      goto LABEL_10;
    }

    v14 = var1 - v12;
    if (var1 == v12)
    {
      goto LABEL_17;
    }

    if (var1 <= v12)
    {
      goto LABEL_10;
    }

    v15 = v11;
    v16 = v15;
    if (v13 + v12 > var1)
    {
      break;
    }

    if (v13 + v12 == var1)
    {
      v17 = [v20 TTCompare:v15];

      var0 = v20;
      if (v17 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {

      var0 = v20;
    }

LABEL_10:
    if (!*(v10 + 44))
    {
      v6 = v10;
    }

    if (++v9 == v8)
    {
      goto LABEL_13;
    }
  }

  var0 = v20;
LABEL_15:
  if ((*(v10 + 44) & 1) == 0)
  {
    [(TTMergeableString *)selfCopy splitTopoSubstring:v10 atIndex:v14];
    [(TTMergeableString *)selfCopy invalidateCache];
    v6 = v10;
  }

LABEL_17:

LABEL_18:
  return v6;
}

- (void)getSubstrings:(void *)substrings forTopoIDRange:(TopoIDRange *)range
{
  if (!range->var1)
  {
    goto LABEL_36;
  }

  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v7 = *orderedSubstrings;
  v8 = orderedSubstrings[1];
  if (*orderedSubstrings == v8)
  {
    goto LABEL_36;
  }

  v32 = 0;
  do
  {
    v9 = *v7;
    v36 = v9;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (([range->var0.var0 isEqual:v10] & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = v10;
    v14 = v12 + v11;
    v34 = v13;
    v35 = v12 + v11;
    if (TopoID::operator<=(&v34, range))
    {
      goto LABEL_13;
    }

    v15 = range->var0.var0;
    v16 = v15;
    v17 = range->var1 + range->var0.var1;
    if (v11 == v17)
    {
      if ([v13 isEqual:v15])
      {
        goto LABEL_12;
      }

      v18 = [v13 TTCompare:v16];

      if (v18 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 > v17)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    var1 = range->var0.var1;
    if (var1 > v11)
    {
      v34 = [(TTMergeableString *)self splitTopoSubstring:v36 atIndex:var1 - v11];
      v20 = range->var0.var0;
      v21 = range->var1 + range->var0.var1;
      v22 = v13;
      v23 = v22;
      if (v21 >= v14)
      {
        if (v21 != v14)
        {

          goto LABEL_32;
        }

        v31 = [v20 TTCompare:v22];

        if (v31 != -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      [(TTMergeableString *)self splitTopoSubstring:v34 atIndex:range->var1];
LABEL_32:
      std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v34);
      goto LABEL_33;
    }

    v24 = v13;
    v25 = range->var0.var0;
    v26 = v25;
    v27 = range->var1 + range->var0.var1;
    if (v14 <= v27)
    {
      if (v14 != v27)
      {

LABEL_31:
        std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v36);
        goto LABEL_14;
      }

      v30 = [v24 TTCompare:v25];

      if (v30 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v28 = v36;
    v29 = range->var0.var0;
    [(TTMergeableString *)self splitTopoSubstring:v28 atIndex:range->var0.var1 - v11 + range->var1];

    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](substrings, &v36);
LABEL_33:
    v32 = 1;
LABEL_14:

    ++v7;
  }

  while (v7 != v8);
  if (v32)
  {
    [(TTMergeableString *)self invalidateCache];
  }

LABEL_36:
}

- (void)getCharacterRanges:(void *)ranges forSubstrings:(void *)substrings
{
  std::vector<_NSRange>::reserve(ranges, (*(substrings + 1) - *substrings) >> 3);
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v7 = *substrings;
  v8 = *(substrings + 1);
  while (v7 != v8)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(&v28, v7, v7);
    ++v7;
  }

  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v10 = *orderedSubstrings;
  v11 = orderedSubstrings[1];
  if (*orderedSubstrings != v11)
  {
    v12 = 0;
    do
    {
      v27 = *v10;
      v13 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v28, &v27);
      v14 = v13;
      if (*(v27 + 44))
      {
        v15 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = *(v27 + 16);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v17 = *(ranges + 1);
      v16 = *(ranges + 2);
      if (v17 >= v16)
      {
        v19 = *ranges;
        v20 = v17 - *ranges;
        v21 = v20 >> 4;
        v22 = (v20 >> 4) + 1;
        if (v22 >> 60)
        {
          std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(ranges, v24);
        }

        v25 = (16 * v21);
        *v25 = v12;
        v25[1] = v15;
        v18 = 16 * v21 + 16;
        memcpy(0, v19, v20);
        v26 = *ranges;
        *ranges = 0;
        *(ranges + 1) = v18;
        *(ranges + 2) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v12;
        v17[1] = v15;
        v18 = (v17 + 2);
      }

      *(ranges + 1) = v18;
      if (*(&v29 + 1) == 1)
      {
        break;
      }

      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(&v28, v14);
LABEL_24:
      v12 += v15;
      ++v10;
    }

    while (v10 != v11);
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v28);
}

- (unint64_t)getCharacterIndexForCharID:(TopoID)d
{
  var1 = d.var1;
  var0 = d.var0;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v6 = *orderedSubstrings;
  v7 = orderedSubstrings[1];
  if (*orderedSubstrings == v7)
  {
LABEL_18:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      v10 = (*(*v6 + 44) & 1) != 0 ? 0 : *(v9 + 16);
      if (*(v9 + 8) == var1 && ([*v9 isEqual:var0] & 1) != 0)
      {
        break;
      }

      if ([*v9 isEqual:var0])
      {
        v11 = *(v9 + 8);
        if (v11 < var1 || v11 == var1 && [*v9 TTCompare:var0] == -1)
        {
          v12 = *v9;
          v13 = v12;
          v14 = *(v9 + 16) + *(v9 + 8);
          if (v14 > var1)
          {

LABEL_21:
            v8 = v8 + var1 - *(v9 + 8);
            break;
          }

          if (v14 == var1)
          {
            v15 = [var0 TTCompare:v12];

            if (v15 == -1)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      v8 += v10;
      if (++v6 == v7)
      {
        goto LABEL_18;
      }
    }
  }

  return v8;
}

- (void)enumerateSubstrings:(id)substrings
{
  substringsCopy = substrings;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v6 = *orderedSubstrings;
  v7 = orderedSubstrings[1];
  if (*orderedSubstrings != v7)
  {
    do
    {
      v8 = *v6;
      if ((*(*v6 + 44) & 1) == 0)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = *(v8 + 40);
          v12 = *v8;
          v11 = *(v8 + 16);
          v13 = *(v8 + 8);
          v14 = v11;
          substringsCopy[2](substringsCopy, v10, v9, &v12, *(v8 + 24), *(v8 + 32));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

- (int64_t)substring:(void *)substring modifiedAfter:(id)after
{
  afterCopy = after;
  v6 = [afterCopy clockForUUID:*substring atIndex:0] - *(substring + 2);
  if (v6 >= *(substring + 4))
  {
    if ([afterCopy clockForUUID:*(substring + 3) atIndex:1] <= *(substring + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = v6 & ~(v6 >> 63);
  }

  return v7;
}

- (void)enumerateRangesModifiedAfter:(id)after usingBlock:(id)block
{
  afterCopy = after;
  blockCopy = block;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v8 = *orderedSubstrings;
  v9 = orderedSubstrings[1];
  if (*orderedSubstrings != v9)
  {
    do
    {
      v10 = *v8;
      if ((*(*v8 + 44) & 1) == 0)
      {
        if (*(v10 + 16))
        {
          v11 = [(TTMergeableString *)self substring:*v8 modifiedAfter:afterCopy];
          if ((v11 & 0x8000000000000000) == 0)
          {
            blockCopy[2](blockCopy, v11 + *(v10 + 40), *(v10 + 16) - v11);
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)anchor wasModifiedAfter:(id)after
{
  var1 = anchor.var1;
  var0 = anchor.var0;
  afterCopy = after;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v9 = *orderedSubstrings;
  v10 = orderedSubstrings[1];
  if (*orderedSubstrings != v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *v9;
      if (v12)
      {
        break;
      }

      if ([var0 isEqual:*v13])
      {
        v14 = *(v13 + 2);
        if (v14 <= var1 && *(v13 + 4) + v14 > var1)
        {
          v15 = *(v13 + 44) != 1 || v11 == 0;
          if (!v15 && ([(TTMergeableString *)self substring:v11 modifiedAfter:afterCopy]& 0x8000000000000000) == 0 || (v16 = [(TTMergeableString *)self substring:v13 modifiedAfter:afterCopy], (v16 & 0x8000000000000000) == 0) && v16 <= var1 - *(v13 + 2))
          {
LABEL_32:
            v19 = 1;
            goto LABEL_31;
          }

          v17 = *v13;
          v18 = *(v13 + 2) + *(v13 + 4) - 1;

          if (v18 != var1)
          {
            goto LABEL_30;
          }

          goto LABEL_7;
        }
      }

      if (!*(v13 + 4) && *(v13 + 2) == var1 && ([*v13 isEqual:var0] & 1) != 0)
      {
        goto LABEL_7;
      }

      if (*(v13 + 44) != 1 || ([(TTMergeableString *)self substring:v13 modifiedAfter:afterCopy]& 0x8000000000000000) == 0)
      {
        v12 = 0;
        goto LABEL_27;
      }

      v12 = 0;
LABEL_8:
      v13 = v11;
LABEL_27:
      ++v9;
      v11 = v13;
      if (v9 == v10)
      {
        goto LABEL_30;
      }
    }

    if (![(TTMergeableString *)self substring:*v9 modifiedAfter:afterCopy]&& *(v13 + 4))
    {
      goto LABEL_32;
    }

    if ((*(v13 + 44) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

LABEL_30:
  v19 = 0;
LABEL_31:

  return v19;
}

- (BOOL)selection:(id)selection wasModifiedAfter:(id)after
{
  selectionCopy = selection;
  afterCopy = after;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  selectionRanges = [selectionCopy selectionRanges];
  if (selectionRanges[1] == *selectionRanges)
  {
    LOBYTE(self) = 0;
  }

  else
  {
    selectionRanges2 = [selectionCopy selectionRanges];
    if (selectionRanges2[1] - *selectionRanges2 != 32)
    {
LABEL_9:
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __48__TTMergeableString_selection_wasModifiedAfter___block_invoke;
      v22[3] = &unk_1E7509AA8;
      v22[4] = self;
      v23 = afterCopy;
      v24 = &v25;
      v20 = [(TTMergeableString *)self characterRangesForSelection:selectionCopy selectedSubstringsBlock:v22];
      LOBYTE(self) = *(v26 + 24);

      goto LABEL_10;
    }

    v10 = *[selectionCopy selectionRanges];
    tTZero = [MEMORY[0x1E696AFB0] TTZero];
    v12 = tTZero;
    if (*(v10 + 24))
    {

      goto LABEL_9;
    }

    v13 = [*(v10 + 16) isEqual:tTZero];

    if (!v13)
    {
      goto LABEL_9;
    }

    selectionRanges3 = [selectionCopy selectionRanges];
    v15 = *selectionRanges3;
    v16 = **selectionRanges3;
    v17 = *(v15 + 2);
    v18 = v16;
    v19 = v18;
    if (self)
    {
      LOBYTE(self) = [(TTMergeableString *)self textEitherSideOfSelectionAnchor:v18 wasModifiedAfter:v17, afterCopy];
    }

    else
    {
    }
  }

LABEL_10:
  _Block_object_dispose(&v25, 8);

  return self & 1;
}

NSUInteger __48__TTMergeableString_selection_wasModifiedAfter___block_invoke(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  result = [*(a1 + 32) substring:a2 modifiedAfter:*(a1 + 40)];
  if ((result & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 44) & 1) != 0 || (v10.length = *(a2 + 16) - result, v10.location = result + *(a2 + 40), v11.location = a3, v11.length = a4, v9 = NSIntersectionRange(v10, v11), result = v9.location, v9.length))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)splitTopoSubstring:(void *)substring atIndex:(unsigned int)index
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *substring;
  *(substring + 4) = index;
  operator new();
}

- (void)orderedSubstrings
{
  if (self->_cacheInvalid)
  {
    [(TTMergeableString *)self updateCache];
  }

  return &self->_orderedSubstrings;
}

- (void)updateCache
{
  begin = self->_orderedSubstrings.__begin_;
  self->_orderedSubstrings.__end_ = begin;
  self->_cacheInvalid = 0;
  v4 = self->_startNodes.__begin_;
  if (v4 != self->_startNodes.__end_)
  {
    v5 = *v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__TTMergeableString_updateCache__block_invoke;
    v6[3] = &unk_1E7509AD0;
    v6[4] = self;
    traverseRecursive(v5, v6);
  }

  if (self->_orderedSubstrings.__cap_ - begin)
  {
    std::vector<TopoSubstring *>::shrink_to_fit(&self->_orderedSubstrings.__begin_);
  }
}

- (void)updateAttributedStringAfterMerge
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v5 = *orderedSubstrings;
  v6 = orderedSubstrings[1];
  while (v5 != v6)
  {
    v7 = *v5;
    [(NSMutableAttributedString *)v3 length];
    if ((*(v7 + 44) & 1) == 0)
    {
      [(NSMutableAttributedString *)v3 ic_appendAttributedSubstring:self->_attributedString fromRange:*(v7 + 40), *(v7 + 16)];
    }

    TTBoundedCheckedCastNSUIntegerToUInt32();
    *(v7 + 40) = v8;
    ++v5;
  }

  attributedString = self->_attributedString;
  self->_attributedString = v3;
}

- (void)updateSubstringIndexes
{
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v3 = *orderedSubstrings;
  v4 = orderedSubstrings[1];
  if (*orderedSubstrings != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      *(v6 + 40) = v5;
      if ((*(v6 + 44) & 1) == 0)
      {
        v5 += *(v6 + 16);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

- (void)coalesce
{
  if (!self->_editCount && ![(TTMergeableString *)self isFragment])
  {
    v3 = *self->_startNodes.__begin_;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x5812000000;
    v44 = __Block_byref_object_copy__15;
    v45 = __Block_byref_object_dispose__15;
    v46 = &unk_19A260519;
    memset(v47, 0, sizeof(v47));
    v48 = 1065353216;
    v33 = 0;
    v34 = &v33;
    v35 = 0x5812000000;
    v36 = __Block_byref_object_copy__15;
    v37 = __Block_byref_object_dispose__15;
    v38 = &unk_19A260519;
    memset(v39, 0, sizeof(v39));
    v40 = 1065353216;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v4 = +[TTMergeableString unserialisedReplicaID];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29__TTMergeableString_coalesce__block_invoke;
    v25[3] = &unk_1E7509AF8;
    v32 = v3;
    v29 = &v33;
    v5 = v4;
    v26 = v5;
    v6 = uUID;
    v27 = v6;
    selfCopy = self;
    v30 = v49;
    v31 = &v41;
    [(TTMergeableString *)self traverseUnordered:v25];
    for (i = v42[8]; i; i = *i)
    {
      v8 = i[2];
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      unserializedClock = self->_unserializedClock;
      objc_storeStrong(v8, v4);
      *(v8 + 8) = unserializedClock;
      self->_unserializedClock += *(v8 + 16);
      v13 = v9;
      v22 = v13;
      v23 = v10;
      v24 = v11;
      v19 = *v8;
      v14 = *(v8 + 16);
      v20 = *(v8 + 8);
      v21 = v14;
      [(TTMergeableString *)self updateTopoIDRange:&v22 toNewRangeID:&v19];
    }

    for (j = v34[8]; j; j = *j)
    {
      v16 = j[2];
      if (v16)
      {
        v17 = *(v16 + 48);
        if (v17)
        {
          *(v16 + 56) = v17;
          operator delete(v17);
        }

        MEMORY[0x19A8FD070](v16, 0x1080C40D9F1C51ELL);
      }
    }

    [(TTMergeableString *)self invalidateCache];

    _Block_object_dispose(&v33, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v39);
    _Block_object_dispose(&v41, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v47);
    _Block_object_dispose(v49, 8);
  }
}

void __29__TTMergeableString_coalesce__block_invoke(void *a1, uint64_t a2)
{
  v41 = a2;
  if (a1[10] != a2)
  {
    v2 = a2;
    v3 = *(a2 + 48);
    if (*(a2 + 56) - v3 == 8)
    {
      do
      {
        v5 = *v3;
        v40 = v5;
        if (*(v5 + 72) != 1 || *(v2 + 44) != *(v5 + 44))
        {
          return;
        }

        if ([*v2 isEqual:*v5])
        {
          v6 = v41;
          if (*(v2 + 16) + *(v2 + 8) == *(v5 + 8) && *(v41 + 32) == *(v40 + 32))
          {
            v7 = [*(v41 + 24) isEqual:*(v40 + 24)];
            v6 = v41;
            if (v7)
            {
              v8 = v40;
              if (v41 != v40)
              {
                std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v41 + 48), *(v40 + 48), *(v40 + 56), (*(v40 + 56) - *(v40 + 48)) >> 3);
                v8 = v40;
                v6 = v41;
              }

              *(v6 + 16) += *(v8 + 16);
              std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[7] + 8) + 48), &v40, &v40);
              goto LABEL_26;
            }
          }
        }

        else
        {
          v6 = v41;
        }

        if (*v6 != a1[4] || *v40 != *v6 || *(v6 + 32) != *(v40 + 32) || ![*(v6 + 24) isEqual:*(v40 + 24)])
        {
          return;
        }

        v9 = v41;
        v10 = *v41;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (v41 != v40)
        {
          std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v41 + 48), *(v40 + 48), *(v40 + 56), (*(v40 + 56) - *(v40 + 48)) >> 3);
        }

        v13 = a1[5];
        v14 = v13;
        v15 = *(*(a1[8] + 8) + 24);
        v16 = v41;
        v17 = *(v41 + 16);
        v18 = v14;
        v19 = *(v40 + 16) + *(v16 + 16);
        objc_storeStrong(v16, v13);
        *(v16 + 8) = v15;
        *(v16 + 16) = v19;
        *(*(a1[8] + 8) + 24) += *(v41 + 16);
        v20 = a1[6];
        v21 = v10;
        v37 = v21;
        v38 = v11;
        v39 = v12;
        v22 = v18;
        v34 = v22;
        v35 = v15;
        v36 = v12;
        if (v20)
        {
          [v20 updateTopoIDRange:&v37 toNewRangeID:&v34];
        }

        else
        {
        }

        v23 = a1[6];
        v24 = v40;
        v31 = *v40;
        v25 = *(v24 + 16);
        v32 = *(v24 + 8);
        v33 = v25;
        v26 = v22;
        v28 = v26;
        v27 = *(v40 + 16);
        v29 = v17 + v15;
        v30 = v27;
        if (v23)
        {
          [v23 updateTopoIDRange:&v31 toNewRangeID:&v28];
        }

        else
        {
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[9] + 8) + 48), &v41, &v41);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[7] + 8) + 48), &v40, &v40);
        *(a1[6] + 112) = 1;

LABEL_26:
        v2 = v41;
        v3 = *(v41 + 48);
      }

      while (*(v41 + 56) - v3 == 8);
    }
  }
}

- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  objectsNeedingUpdatedRanges = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  v8 = [objectsNeedingUpdatedRanges countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(objectsNeedingUpdatedRanges);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v26 = range->var0.var0;
        var1 = range->var1;
        v27 = range->var0.var1;
        v28 = var1;
        v23 = d->var0.var0;
        v13 = d->var1;
        v24 = d->var0.var1;
        v25 = v13;
        if (v11)
        {
          [v11 updateTopoIDRange:&v26 toNewRangeID:&v23];
        }

        else
        {
        }
      }

      v8 = [objectsNeedingUpdatedRanges countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  updateRangeBlock = self->_updateRangeBlock;
  if (updateRangeBlock)
  {
    v20 = range->var0.var0;
    v15 = range->var1;
    v21 = range->var0.var1;
    v22 = v15;
    v17 = d->var0.var0;
    v16 = d->var1;
    v18 = d->var0.var1;
    v19 = v16;
    updateRangeBlock[2](updateRangeBlock, &v20, &v17);
  }
}

- (void)cleanupObjectsNeedingUpdatedRanges
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectsNeedingUpdatedRanges = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  v5 = [objectsNeedingUpdatedRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(objectsNeedingUpdatedRanges);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 hasTopoIDsThatCanChange] & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [objectsNeedingUpdatedRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objectsNeedingUpdatedRanges2 = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  [objectsNeedingUpdatedRanges2 minusHashTable:v3];
}

- (void)generateIdsForLocalChanges
{
  timestamp = [(TTMergeableString *)self timestamp];
  -[TTMergeableString generateIdsForLocalChangesSafeForSharedTimestamp:](self, "generateIdsForLocalChangesSafeForSharedTimestamp:", [timestamp isDocumentShared]);
}

- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)timestamp
{
  if (self->_hasLocalChanges)
  {
    replicaStyleClock = self->_replicaStyleClock;
    v6 = +[TTMergeableString unserialisedReplicaID];
    orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
    timestampCopy = timestamp;
    v8 = *orderedSubstrings;
    v9 = orderedSubstrings[1];
    if (*orderedSubstrings != v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = *v8;
        if (**v8 == v6)
        {
          break;
        }

        if (v11[3] == v6)
        {
          v12 = *(v11 + 8);
          LODWORD(v13) = v12 + 8;
          if (*(v11 + 44))
          {
            v13 = v13;
          }

          else
          {
            v13 = (v12 + 1);
          }

          if (replicaStyleClock <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = replicaStyleClock;
          }

          if (v14 + 1 > self->_replicaStyleClock)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = self->_replicaStyleClock;
          }

          self->_replicaStyleClock = v15;
          objc_storeStrong(v11 + 3, self->_replicaUUID);
          *(v11 + 8) = v14;
LABEL_21:
          v10 = 1;
        }

        if (++v8 == v9)
        {
          goto LABEL_25;
        }
      }

      replicaUUID = self->_replicaUUID;
      v17 = replicaUUID;
      replicaTextClock = self->_replicaTextClock;
      v19 = *(v11 + 4);
      v32 = *v11;
      v20 = *(v11 + 4);
      v33 = *(v11 + 2);
      v34 = v20;
      v21 = v17;
      v29 = v21;
      v30 = replicaTextClock;
      v31 = v19;
      [(TTMergeableString *)self updateTopoIDRange:&v32 toNewRangeID:&v29];
      objc_storeStrong(v11, replicaUUID);
      v22 = v11[3];
      *(v11 + 2) = replicaTextClock;
      *(v11 + 4) = v19;
      self->_replicaTextClock += v19;
      if (v22 == v6)
      {
        objc_storeStrong(v11 + 3, self->_replicaUUID);
        *(v11 + 8) = 0;
        v23 = self->_replicaStyleClock;
        if (v23 <= 1)
        {
          v23 = 1;
        }

        self->_replicaStyleClock = v23;
      }

      goto LABEL_21;
    }

    v10 = 0;
LABEL_25:
    [(TTMergeableString *)self cleanupObjectsNeedingUpdatedRanges];
    if ((v10 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (timestampCopy)
    {
      v24 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:0];
      v25 = self->_replicaTextClock;
      if (v24 >= v25)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = self->_replicaTextClock;
    }

    [(TTVectorMultiTimestamp *)self->_timestamp setClock:v25 forUUID:self->_replicaUUID atIndex:0];
    if (!timestampCopy)
    {
      v27 = self->_replicaStyleClock;
LABEL_34:
      [(TTVectorMultiTimestamp *)self->_timestamp setClock:v27 forUUID:self->_replicaUUID atIndex:1];
LABEL_35:
      self->_unserializedClock = 0;
      self->_hasLocalChanges = 0;

      return;
    }

LABEL_31:
    v26 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1];
    v27 = self->_replicaStyleClock;
    if (v26 >= v27)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }
}

- (BOOL)canMergeString:(id)string
{
  stringCopy = string;
  if ([(TTMergeableString *)self isFragment])
  {
    v5 = 0;
  }

  else if ([stringCopy isFragment])
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 1065353216;
    startNodes = [stringCopy startNodes];
    v7 = *startNodes;
    v8 = *(startNodes + 8);
    while (v7 != v8)
    {
      v9 = *v7;
      v10 = **v7;
      v11 = *(v9 + 2) + *(v9 + 4) - 1;
      v24 = v10;
      v25 = v11;
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID>(&v26, &v24, &v24);

      ++v7;
    }

    endNodes = [stringCopy endNodes];
    v13 = *endNodes;
    v14 = *(endNodes + 8);
    while (v13 != v14)
    {
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID const&>(&v26, *v13, *v13);
      ++v13;
    }

    orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
    v16 = *orderedSubstrings;
    v17 = orderedSubstrings[1];
LABEL_12:
    if (v16 != v17)
    {
      v18 = *v16;
      v19 = **v16;
      v20 = *(v18 + 2);
      if (*(v18 + 4) <= 1u)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v18 + 4);
      }

      while (1)
      {
        v22 = v19;
        v24 = v22;
        v25 = v20;
        std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__erase_unique<TopoID>(&v26, &v24);

        if (!*(&v27 + 1))
        {
          break;
        }

        ++v20;
        if (!--v21)
        {

          ++v16;
          goto LABEL_12;
        }
      }
    }

    v5 = *(&v27 + 1) == 0;
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(&v26);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)updateClock
{
  if (self->_replicaUUID)
  {
    tTZero = [MEMORY[0x1E696AFB0] TTZero];
    tTZero2 = [MEMORY[0x1E696AFB0] TTZero];
    orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
    selfCopy = self;
    v5 = *orderedSubstrings;
    v6 = orderedSubstrings[1];
    if (*orderedSubstrings != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *v5;
        v10 = **v5;
        tTZero3 = [MEMORY[0x1E696AFB0] TTZero];
        if ([v10 isEqual:tTZero3])
        {
          goto LABEL_12;
        }

        v12 = *v9;
        v13 = v12;
        v14 = *(v9 + 2) + *(v9 + 4) - 1;
        if (v14 > v7)
        {
          break;
        }

        if (v14 != v7)
        {

          goto LABEL_12;
        }

        v16 = [v12 TTCompare:tTZero];

        if (v16 == 1)
        {
          goto LABEL_7;
        }

LABEL_13:
        v17 = v9[3];
        tTZero4 = [MEMORY[0x1E696AFB0] TTZero];
        if (([v17 isEqual:tTZero4] & 1) == 0)
        {
          v19 = *(v9 + 8);
          if (v19 > v8)
          {

LABEL_17:
            v20 = v9[3];

            v8 = *(v9 + 8);
            tTZero2 = v20;
            goto LABEL_18;
          }

          if (v19 == v8)
          {
            v21 = [v9[3] TTCompare:tTZero2];

            if (v21 != 1)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

LABEL_18:
        if (++v5 == v6)
        {
          goto LABEL_25;
        }
      }

LABEL_7:
      v15 = *v9;
      tTZero3 = tTZero;
      v7 = *(v9 + 2) + *(v9 + 4) - 1;
      tTZero = v15;
LABEL_12:

      goto LABEL_13;
    }

    v8 = 0;
    v7 = 0;
LABEL_25:
    v22 = selfCopy;
    v23 = [tTZero TTCompare:{selfCopy->_replicaUUID, selfCopy}];
    v24 = [tTZero2 TTCompare:v22->_replicaUUID];
    if (v23 == -1)
    {
      v25 = v7;
    }

    else
    {
      v25 = v7 + 1;
    }

    if (v24 == -1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v8 + 1;
    }

    v22->_replicaTextClock = v25;
    v22->_replicaStyleClock = v26;
  }
}

void __27__TTMergeableString_check___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 8);
    v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      if ([v9 intersectsIndexesInRange:{v8, v7}])
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E696A588];
        v17[0] = @"TTMergeableString graph has two characters with the same id.";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v13 = [v11 initWithDomain:@"TopoText" code:-2 userInfo:v12];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }

      else
      {
        [v10 addIndexesInRange:{v8, v7}];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{v8, v7}];
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }
  }
}

- (void)checkTimestampLogStyleErrors:(BOOL)errors
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke;
  v3[3] = &unk_1E7509B48;
  v3[4] = self;
  errorsCopy = errors;
  [(TTMergeableString *)self traverseUnordered:v3];
}

void __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = [*(a1 + 32) timestamp];
    v10 = [v9 clockForUUID:v4 atIndex:0];

    v11 = [*(a1 + 32) timestamp];
    v12 = [v11 clockForUUID:v5 atIndex:1];
    v13 = (v6 + v7 - 1);

    if (v10 <= v13)
    {
      v14 = +[REMLog crdt];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = [*(a1 + 32) timestamp];
      [v22 setClock:(v13 + 1) forUUID:v4 atIndex:0];
    }

    if (v12 <= v8)
    {
      if (*(a1 + 40) == 1)
      {
        v23 = +[REMLog crdt];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
        }
      }

      v31 = [*(a1 + 32) timestamp];
      [v31 setClock:(v8 + 1) forUUID:v5 atIndex:1];
    }
  }
}

- (void)dumpMergeData:(id)data
{
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [(NSMutableAttributedString *)self->_attributedString mutableCopy];
  v6 = [dataCopy[19] mutableCopy];
  v7 = arc4random();
  v35 = v6;
  v36 = v5;
  v37 = dataCopy;
  v8 = [(NSMutableAttributedString *)self->_attributedString length];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      mutableString = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v11 = MEMORY[0x1E696AEC0];
      mutableString2 = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v13 = [v11 stringWithFormat:@"%c", (v7 ^ objc_msgSend(mutableString2, "characterAtIndex:", i)) % 0x5E + 32];
      [mutableString replaceCharactersInRange:i withString:{1, v13}];
    }
  }

  v14 = v37;
  v15 = [v37[19] length];
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v17 = v14;
      mutableString3 = [v14[19] mutableString];
      v19 = MEMORY[0x1E696AEC0];
      mutableString4 = [v17[19] mutableString];
      v21 = [v19 stringWithFormat:@"%c", (v7 ^ objc_msgSend(mutableString4, "characterAtIndex:", j)) % 0x5E + 32];
      [mutableString3 replaceCharactersInRange:j withString:{1, v21}];

      v14 = v37;
    }
  }

  serialize = [(TTMergeableString *)self serialize];
  serialize2 = [v14 serialize];
  remcrtt_createTemporaryFileDirectoryURLIfNeeded = [MEMORY[0x1E696AC08] remcrtt_createTemporaryFileDirectoryURLIfNeeded];
  path = [remcrtt_createTemporaryFileDirectoryURLIfNeeded path];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeA-%p.data", self];
  v27 = [path stringByAppendingPathComponent:v26];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeB-%p.data", self];
  v29 = [path stringByAppendingPathComponent:v28];

  [serialize writeToFile:v27 atomically:1];
  [serialize2 writeToFile:v29 atomically:1];
  v30 = +[REMLog crdt];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    replicaUUID = self->_replicaUUID;
    *buf = 134218754;
    selfCopy = self;
    v40 = 2112;
    v41 = replicaUUID;
    v42 = 2112;
    v43 = v27;
    v44 = 2112;
    v45 = v29;
    _os_log_error_impl(&dword_19A0DB000, v30, OS_LOG_TYPE_ERROR, "Dumping merge: %p %@ %@ %@", buf, 0x2Au);
  }

  attributedString = self->_attributedString;
  self->_attributedString = v36;
  v32 = v36;

  v33 = v37[19];
  v37[19] = v35;
}

- (unint64_t)mergeWithString:(id)string mergeTimestamps:(BOOL)timestamps
{
  timestampsCopy = timestamps;
  v119[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"DebugDumpMergeData"];

  if (v6)
  {
    [(TTMergeableString *)self dumpMergeData:stringCopy];
  }

  [(TTMergeableString *)self generateIdsForLocalChanges];
  [stringCopy generateIdsForLocalChanges];
  [stringCopy checkTimestampLogStyleErrors:0];
  if (![(TTMergeableString *)self canMergeString:stringCopy])
  {
    v10 = 0;
    goto LABEL_122;
  }

  timestamp = [(TTMergeableString *)self timestamp];
  timestamp2 = [stringCopy timestamp];
  v9 = [timestamp compareTo:timestamp2];

  if (v9)
  {
    memset(v115, 0, sizeof(v115));
    v116 = 1065353216;
    v112 = 0u;
    v113 = 0u;
    v114 = 1065353216;
    v109 = 0u;
    v110 = 0u;
    v111 = 1065353216;
    v106 = 0u;
    v107 = 0u;
    v108 = 1065353216;
    v103 = 0u;
    v104 = 0u;
    v105 = 1065353216;
    v11 = [(NSMutableAttributedString *)self->_attributedString length];
    isFragment = [stringCopy isFragment];
    v92 = v11;
    orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
    v14 = *orderedSubstrings;
    v15 = orderedSubstrings[1];
    if (*orderedSubstrings != v15)
    {
      v9 = &std::piecewise_construct;
      do
      {
        v16 = *v14;
        v99 = v16;
        std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v115, v16, &std::piecewise_construct, &v99)[4] = v16;
        if (isFragment)
        {
          startNodes = [stringCopy startNodes];
          v18 = *startNodes;
          v19 = *(startNodes + 8);
          while (v18 != v19)
          {
            v20 = *v18;
            if ([**v18 isEqual:*v16])
            {
              v21 = *(v20 + 2);
              v22 = *(v16 + 2);
              if (v21 >= v22 && v21 < *(v16 + 4) + v22)
              {
                v99 = v20;
                std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v115, v20, &std::piecewise_construct, &v99)[4] = v16;
              }
            }

            ++v18;
          }
        }

        ++v14;
      }

      while (v14 != v15);
    }

    orderedSubstrings2 = [stringCopy orderedSubstrings];
    v23 = *orderedSubstrings2;
    if (*orderedSubstrings2 == orderedSubstrings2[1])
    {
LABEL_43:
      v94 = 0;
    }

    else
    {
      while (1)
      {
        v24 = *v23;
        v25 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v115, *v23);
        v26 = v25;
        if (!v25)
        {
          break;
        }

        v102 = v25[4];
        v27 = *(v102 + 16);
        v28 = *(v24 + 16);
        if (v27 <= v28)
        {
          if (v27 < v28)
          {
            v99 = [(TTMergeableString *)self splitTopoSubstring:v24 atIndex:?];
            v23 = std::vector<TopoSubstring *>::insert(orderedSubstrings2, v23 + 8, &v99) - 8;
          }
        }

        else
        {
          v29 = [TTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
          v101 = v29;
          v30 = *v29;
          v31 = *(v29 + 2);
          v32 = v30;
          v99 = v32;
          v100 = v31;
          v117 = &v99;
          std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID&&>,std::tuple<>>(v115, &v99, &std::piecewise_construct, &v117)[4] = v29;

          if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v103, &v102))
          {
            v99 = &v102;
            v33 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v103, &v102, &std::piecewise_construct, &v99)[3];
            v99 = &v101;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v103, &v101, &std::piecewise_construct, &v99)[3] = v33;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__erase_unique<TopoSubstring *>(&v103, &v102);
          }
        }

        v34 = *(v24 + 48);
        v9 = *(v24 + 56);
        while (v34 != v9)
        {
          v35 = *v34;
          v36 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v115, *v34);
          v117 = 0;
          if (!v36)
          {
            operator new();
          }

          v37 = v36[4];
          v117 = v37;
          if (*(v37 + 8) != *(v35 + 8) || ([*v37 isEqual:*v35] & 1) == 0)
          {
            v38 = [TTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
            v99 = v38;
            std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v115, v38, &std::piecewise_construct, &v99)[4] = v38;
            v117 = v38;
          }

          v101 = v26[4];
          v39 = v101[6];
          v40 = v101[7];
          if (v39 != v40)
          {
            while (*v39 != v117)
            {
              if (++v39 == v40)
              {
                goto LABEL_38;
              }
            }
          }

          if (v39 == v40)
          {
LABEL_38:
            if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v103, &v101))
            {
              v42 = v101[6];
              v41 = v101[7];
              v99 = &v101;
              std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v103, &v101, &std::piecewise_construct, &v99)[3] = (v41 - v42) >> 3;
            }

            v99 = v117;
            std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100]((v101 + 6), &v99);
            ++*(v99 + 18);
          }

          ++v34;
        }

        v23 += 8;
        if (v23 == orderedSubstrings2[1])
        {
          goto LABEL_43;
        }
      }

      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v118 = *MEMORY[0x1E696A588];
      v119[0] = @"Reached substring that is not in our graph.";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
      v94 = [v43 initWithDomain:@"TopoText" code:-3 userInfo:v44];
    }

    [(TTMergeableString *)self invalidateCache];
    if (v94 || (v98 = 0, timestamp4 = [(TTMergeableString *)self check:&v98], v94 = v98, (timestamp4 & 1) == 0))
    {
      v78 = +[REMLog crdt];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [TTMergeableString mergeWithString:v94 mergeTimestamps:v78];
      }

      v79 = +[REMLog crdt];
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [(TTMergeableString *)v79 mergeWithString:v80 mergeTimestamps:v81, v82, v83, v84, v85, v86];
      }

      for (i = v104; i; i = *i)
      {
        std::vector<TopoSubstring *>::resize((i[2] + 48), i[3]);
      }

      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_57);
      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_59_0);
      [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:v92 withString:[(NSMutableAttributedString *)self->_attributedString length]- v92, &stru_1F0D67F00];
      for (j = v110; j; j = *j)
      {
        v89 = j[2];
        if (v89)
        {
          v90 = *(v89 + 48);
          if (v90)
          {
            *(v89 + 56) = v90;
            operator delete(v90);
          }

          MEMORY[0x19A8FD070](v89, 0x1080C40D9F1C51ELL);
        }
      }

      [(TTMergeableString *)self invalidateCache];
      [(TTMergeableString *)self coalesce];
      [(TTMergeableString *)self dumpMergeData:stringCopy];
      v10 = 0;
    }

    else
    {
      v46 = *orderedSubstrings2;
      if (*orderedSubstrings2 != orderedSubstrings2[1])
      {
        v9 = &v112;
        while (1)
        {
          timestamp4 = *v46;
          v47 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v115, *v46)[4];
          v99 = v47;
          v48 = *(v47 + 8);
          v49 = *(timestamp4 + 32);
          if (v48 < v49)
          {
            goto LABEL_50;
          }

          if (v48 == v49 && [*(v47 + 3) TTCompare:*(timestamp4 + 24)] == -1)
          {
            break;
          }

LABEL_72:
          v46 += 8;
          if (v46 == orderedSubstrings2[1])
          {
            goto LABEL_73;
          }
        }

        v47 = v99;
LABEL_50:
        if (*(v47 + 44))
        {
          if (*(timestamp4 + 44))
          {
LABEL_60:
            if ((*(timestamp4 + 44) & 1) == 0)
            {
              attributedString = self->_attributedString;
              if (*(v99 + 44))
              {
                [(NSMutableAttributedString *)self->_attributedString length];
                TTBoundedCheckedCastNSUIntegerToUInt32();
                *(v99 + 10) = v52;
                v53 = self->_attributedString;
                string = [stringCopy string];
                if (*(timestamp4 + 44))
                {
                  v55 = 0;
                }

                else
                {
                  v55 = *(timestamp4 + 16);
                }

                [(NSMutableAttributedString *)v53 ic_appendAttributedSubstring:string fromRange:*(timestamp4 + 40), v55];
              }

              else
              {
                v56 = *(v99 + 10);
                v57 = *(v99 + 4);
                string = [stringCopy string];
                if (*(timestamp4 + 44))
                {
                  v58 = 0;
                }

                else
                {
                  v58 = *(timestamp4 + 16);
                }

                [(NSMutableAttributedString *)attributedString ic_replaceCharactersInRange:v56 withAttributedSubstring:v57 fromRange:string, *(timestamp4 + 40), v58];
              }
            }

            v59 = v99;
            *(v99 + 44) = *(timestamp4 + 44);
            objc_storeStrong(v59 + 3, *(timestamp4 + 24));
            *(v59 + 8) = *(timestamp4 + 32);
            goto LABEL_72;
          }

          v50 = &v109;
        }

        else if (*(timestamp4 + 44))
        {
          v50 = &v112;
        }

        else
        {
          v50 = &v106;
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v50, &v99, &v99);
        goto LABEL_60;
      }

LABEL_73:
      [(TTMergeableString *)self sortSplitNodes];
      [(TTMergeableString *)self invalidateCache];
      [stringCopy invalidateCache];
      [(TTMergeableString *)self updateAttributedStringAfterMerge];
      if (timestampsCopy)
      {
        timestamp3 = [(TTMergeableString *)self timestamp];
        timestamp4 = [stringCopy timestamp];
        [timestamp3 mergeWithTimestamp:timestamp4];

        [(TTMergeableString *)self updateClock];
        [(TTMergeableString *)self checkTimestampLogStyleErrors:1];
      }

      delegate = [(TTMergeableString *)self delegate];
      v62 = delegate;
      if (delegate)
      {
        v96 = delegate;
        [delegate beginEditing];
        orderedSubstrings3 = [(TTMergeableString *)self orderedSubstrings];
        v64 = *orderedSubstrings3;
        v65 = orderedSubstrings3[1];
        if (*orderedSubstrings3 != v65)
        {
          v66 = 0;
          v67 = 0;
          v68 = 0;
          do
          {
            v99 = *v64;
            v69 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v109, &v99);
            v70 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v112, &v99);
            v71 = v70 != 0;
            if (v69)
            {
              if ((*(v99 + 44) & 1) == 0)
              {
                if (v68)
                {
                  v72 = v67;
                }

                else
                {
                  timestamp4 = v66;
                  v9 = 0;
                  v72 = 0;
                }

                v67 = v72 + *(v99 + 4);
                v68 = 1;
              }
            }

            else
            {
              v73 = v70;
              if (v70)
              {
                if (v68)
                {
                  v74 = v9;
                }

                else
                {
                  timestamp4 = v66;
                  v74 = 0;
                }

                if (v68)
                {
                  v75 = v67;
                }

                else
                {
                  v75 = 0;
                }

                v76 = *(v99 + 4);
                v9 = v74 + v76;
                v67 = v75 - v76;
              }

              else if (v68)
              {
                [v96 edited:2 range:timestamp4 changeInLength:{v9, v67}];
                v66 += v67;
              }

              if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v106, &v99))
              {
                [v96 edited:1 range:v66 changeInLength:{*(v99 + 4), 0}];
              }

              if (*(v99 + 44) == 1 && v73 == 0)
              {
                v68 = 0;
              }

              else
              {
                v66 += *(v99 + 4);
                v68 = v71;
              }
            }

            ++v64;
          }

          while (v64 != v65);
        }

        v62 = v96;
        [v96 endEditing];
      }

      if (*(&v113 + 1) | *(&v110 + 1) | *(&v107 + 1))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v103);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v106);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v109);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v112);
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v115);

    goto LABEL_122;
  }

  v10 = 1;
LABEL_122:

  return v10;
}

void __53__TTMergeableString_mergeWithString_mergeTimestamps___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  while (v2 != v3)
  {
    v4 = *v2++;
    ++*(v4 + 72);
  }
}

- (void)sortSplitNodes
{
  minIdPath(*self->_startNodes.__begin_, v3);
  v2 = v3[0];
}

- (void)traverseUnordered:(id)unordered
{
  unorderedCopy = unordered;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  while (begin != end)
  {
    traverseUnordered(*begin++, unorderedCopy);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  string = [(TTMergeableString *)self string];
  v7 = [v3 stringWithFormat:@"<%@ %p = '%@'>", v5, self, string];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  attributedString = self->_attributedString;
  attributedString = [equalCopy attributedString];
  LOBYTE(attributedString) = [(NSMutableAttributedString *)attributedString isEqual:attributedString];

  v7 = (attributedString & 1) != 0 && [(TTMergeableString *)self graphIsEqual:equalCopy];
  return v7;
}

- (BOOL)graphIsEqual:(id)equal
{
  equalCopy = equal;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x5812000000;
  v24 = __Block_byref_object_copy__66;
  v25 = __Block_byref_object_dispose__67;
  v26 = &unk_19A260519;
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  [(TTMergeableString *)self coalesce];
  [equalCopy coalesce];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__TTMergeableString_graphIsEqual___block_invoke;
  v20[3] = &unk_1E7509A38;
  v20[4] = &v21;
  [(TTMergeableString *)self traverseUnordered:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__TTMergeableString_graphIsEqual___block_invoke_2;
  v19[3] = &unk_1E7509B90;
  v19[4] = &v21;
  v19[5] = &v29;
  [equalCopy traverseUnordered:v19];
  if (*(v30 + 24) == 1)
  {
    v5 = v22 + 8;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[2];
      v7 = v6;
      v9 = v5[4];
      v8 = v5[5];
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10 || (v12 = *(v9 + 48), v11 = *(v9 + 56), v11 - v12 != *(v8 + 56) - *(v8 + 48)))
      {
        *(v30 + 24) = 0;

        break;
      }

      if (v11 != v12)
      {
        v13 = 0;
        if (((v11 - v12) >> 3) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = (v11 - v12) >> 3;
        }

        while (1)
        {
          v15 = **(*(v9 + 48) + 8 * v13);
          if (([v15 isEqual:v15] & 1) == 0)
          {
            break;
          }

          if (v14 == ++v13)
          {
            goto LABEL_17;
          }
        }

        *(v30 + 24) = 0;
      }

LABEL_17:
      v16 = *(v30 + 24);
    }

    while ((v16 & 1) != 0);
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v21, 8);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v27);
  _Block_object_dispose(&v29, 8);

  return v17;
}

uint64_t *__34__TTMergeableString_graphIsEqual___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v7 = a2;
  std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((v4 + 48), a2, &std::piecewise_construct, &v7)[4] = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = a2;
  result = std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((v5 + 48), a2, &std::piecewise_construct, &v7);
  result[5] = 0;
  return result;
}

uint64_t __34__TTMergeableString_graphIsEqual___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>((*(*(a1 + 32) + 8) + 48), a2);
  if (result && (v7 = result, v8 = *(result + 32), *(a2 + 32) == *(v8 + 32)) && (result = [*(a2 + 24) isEqual:*(v8 + 24)], (result & 1) != 0))
  {
    *(v7 + 40) = a2;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (unint64_t)hash
{
  attributedString = [(TTMergeableString *)self attributedString];
  v3 = [attributedString hash];

  return v3;
}

- (id)dotDescription:(unint64_t)description
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld {\n  rankdir=LR;\n", description, self, description];
  if ([(TTMergeableString *)self isFragment])
  {
    v6 = @"<Fragment>";
  }

  else
  {
    string = [(TTMergeableString *)self string];
    v7String = [string string];
    v6 = [v7String description];
  }

  v9 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  replicaUUID = [(TTMergeableString *)self replicaUUID];
  v32 = v9;
  tTShortDescription = [replicaUUID TTShortDescription];
  [v5 appendFormat:@"  label=%@_%ld (%ld)    '%@'\n", tTShortDescription, description, -[TTVectorMultiTimestamp clockForUUID:atIndex:](self->_timestamp, "clockForUUID:atIndex:", self->_replicaUUID, 0), v9];

  [v5 appendFormat:@"  color=lightgrey;\n"];
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v13 = *orderedSubstrings;
  v34 = orderedSubstrings[1];
  if (*orderedSubstrings != v34)
  {
    selfCopy = self;
    do
    {
      v14 = *v13;
      begin = self->_startNodes.__begin_;
      end = self->_startNodes.__end_;
      if (begin != end)
      {
        while (*begin != v14)
        {
          if (++begin == end)
          {
            goto LABEL_12;
          }
        }
      }

      if (begin == end)
      {
LABEL_12:
        v21 = self->_endNodes.__begin_;
        v22 = self->_endNodes.__end_;
        if (v21 != v22)
        {
          while (*v21 != v14)
          {
            if (++v21 == v22)
            {
              goto LABEL_18;
            }
          }
        }

        if (v21 != v22)
        {
          tTShortDescription2 = [*v14 TTShortDescription];
          [v5 appendFormat:@"  N%ld%p [label=End\\n%@, %d];\n", description, v14, tTShortDescription2, *(v14 + 8)];
          goto LABEL_25;
        }

LABEL_18:
        tTShortDescription2 = &stru_1F0D67F00;
        if ((*(v14 + 44) & 1) == 0)
        {
          string2 = [(NSMutableAttributedString *)self->_attributedString string];
          v24 = string2;
          if (*(v14 + 44))
          {
            v25 = 0;
          }

          else
          {
            v25 = *(v14 + 16);
          }

          tTShortDescription2 = [string2 substringWithRange:{*(v14 + 40), v25}];
        }

        tTShortDescription3 = [*v14 TTShortDescription];
        v26 = *(v14 + 8);
        v27 = *(v14 + 16);
        tTShortDescription4 = [*(v14 + 24) TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=%@ %@, %d-%u (%@, %d)];\n", description, v14, tTShortDescription2, tTShortDescription3, v26, (v26 + v27 - 1), tTShortDescription4, *(v14 + 32)];

        self = selfCopy;
      }

      else
      {
        tTShortDescription2 = *v14;
        v18 = *(v14 + 8);
        v19 = *(v14 + 16);
        tTShortDescription3 = [(__CFString *)tTShortDescription2 TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=Start\\n%@, %d];\n", description, v14, tTShortDescription3, (v18 + v19 - 1)];
      }

LABEL_25:
      v29 = *(v14 + 48);
      v30 = *(v14 + 56);
      while (v29 != v30)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", description, v14, description, *v29++];
      }

      ++v13;
    }

    while (v13 != v34);
  }

  [v5 appendString:@"}\n"];

  return v5;
}

- (TTMergeableStringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (__n128)deleteSubstrings:(uint64_t)substrings withCharacterRanges:(char)ranges
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v13 = a2 - selfCopy;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v58 = a2[-1].n128_u64[0];
        v57 = a2 - 1;
        if (selfCopy->n128_u64[0] >= v58)
        {
          return result;
        }

LABEL_107:
        v128 = *selfCopy;
        *selfCopy = *v57;
        result = v128;
LABEL_108:
        *v57 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = selfCopy + 1;
      v63 = selfCopy[1].n128_u64[0];
      v64 = selfCopy + 2;
      v65 = selfCopy[2].n128_u64[0];
      if (selfCopy->n128_u64[0] >= v63)
      {
        if (v63 < v65)
        {
          result = *v59;
          *v59 = *v64;
          *v64 = result;
          if (selfCopy->n128_u64[0] < selfCopy[1].n128_u64[0])
          {
            v131 = *selfCopy;
            *selfCopy = *v59;
            result = v131;
            *v59 = v131;
          }
        }
      }

      else
      {
        if (v63 < v65)
        {
          v129 = *selfCopy;
          *selfCopy = *v64;
          result = v129;
          goto LABEL_180;
        }

        v133 = *selfCopy;
        *selfCopy = *v59;
        result = v133;
        *v59 = v133;
        if (selfCopy[1].n128_u64[0] < v65)
        {
          result = *v59;
          *v59 = *v64;
LABEL_180:
          *v64 = result;
        }
      }

      if (v64->n128_u64[0] >= v9->n128_u64[0])
      {
        return result;
      }

      result = *v64;
      *v64 = *v9;
      *v9 = result;
      if (v59->n128_u64[0] >= v64->n128_u64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *v64;
      *v64 = result;
LABEL_184:
      if (selfCopy->n128_u64[0] < selfCopy[1].n128_u64[0])
      {
        v134 = *selfCopy;
        *selfCopy = *v59;
        result = v134;
        *v59 = v134;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(selfCopy, selfCopy + 1, selfCopy[2].n128_u64, selfCopy[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v66 = selfCopy + 1;
      v68 = selfCopy == a2 || v66 == a2;
      if (ranges)
      {
        if (!v68)
        {
          v69 = 0;
          v70 = selfCopy;
          do
          {
            v71 = v66;
            v72 = v70[1].n128_u64[0];
            if (v70->n128_u64[0] < v72)
            {
              v73 = v70[1].n128_u64[1];
              v74 = v69;
              while (1)
              {
                result = *(selfCopy + v74);
                *(selfCopy + v74 + 16) = result;
                if (!v74)
                {
                  break;
                }

                v75 = *(selfCopy[-1].n128_u64 + v74);
                v74 -= 16;
                if (v75 >= v72)
                {
                  v76 = (selfCopy + v74 + 16);
                  goto LABEL_127;
                }
              }

              v76 = selfCopy;
LABEL_127:
              v76->n128_u64[0] = v72;
              v76->n128_u64[1] = v73;
            }

            v66 = v71 + 1;
            v69 += 16;
            v70 = v71;
          }

          while (&v71[1] != a2);
        }
      }

      else if (!v68)
      {
        do
        {
          v104 = v66;
          v105 = self[1].n128_u64[0];
          if (self->n128_u64[0] < v105)
          {
            v106 = self[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v108 < v105);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v66 = v104 + 1;
          self = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!substrings)
    {
      if (selfCopy != a2)
      {
        v77 = (v13 - 2) >> 1;
        v78 = v77;
        do
        {
          v79 = v78;
          if (v77 >= v78)
          {
            v80 = (2 * v78) | 1;
            v81 = &selfCopy[v80];
            v82 = v81->n128_u64[0];
            if (2 * v79 + 2 < v13 && v81[1].n128_u64[0] < v82)
            {
              v82 = v81[1].n128_u64[0];
              ++v81;
              v80 = 2 * v79 + 2;
            }

            v83 = &selfCopy[v79];
            v84 = *v83;
            v85 = v83->n128_u64[0];
            if (v83->n128_u64[0] >= v82)
            {
              do
              {
                v86 = v81;
                *v83 = *v81;
                if (v77 < v80)
                {
                  break;
                }

                v87 = (2 * v80) | 1;
                v81 = &selfCopy[v87];
                v80 = 2 * v80 + 2;
                v88 = v81->n128_u64[0];
                if (v80 >= v13)
                {
                  v80 = v87;
                }

                else if (v81[1].n128_u64[0] >= v88)
                {
                  v80 = v87;
                }

                else
                {
                  v88 = v81[1].n128_u64[0];
                  ++v81;
                }

                v83 = v86;
              }

              while (v85 >= v88);
              *v86 = v84;
            }
          }

          v78 = v79 - 1;
        }

        while (v79);
        do
        {
          v89 = 0;
          v130 = *selfCopy;
          v90 = selfCopy;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v95 >= v94[-1].n128_u64[0])
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v130;
            *v92 = v130;
          }

          else
          {
            *v92 = *a2;
            result = v130;
            *a2 = v130;
            v96 = (v92 - selfCopy + 16) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = &selfCopy[v99];
              v101 = v92->n128_u64[0];
              if (v92->n128_u64[0] < v100->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v100;
                  result = *v100;
                  *v92 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &selfCopy[v99];
                  v92 = v103;
                }

                while (v101 < v100->n128_u64[0]);
                v103->n128_u64[0] = v101;
                v103->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = &selfCopy[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (selfCopy->n128_u64[0] >= v14->n128_u64[0])
      {
        if (v17 < v16)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (selfCopy->n128_u64[0] < v14->n128_u64[0])
          {
            v112 = *selfCopy;
            *selfCopy = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v17 < v16)
        {
          v109 = *selfCopy;
          *selfCopy = *v9;
          goto LABEL_26;
        }

        v115 = *selfCopy;
        *selfCopy = *v14;
        *v14 = v115;
        if (v14->n128_u64[0] < v9->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = selfCopy + 1;
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (selfCopy[1].n128_u64[0] >= v21)
      {
        if (v21 < v22)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v19->n128_u64[0] < v20->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v21 < v22)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v20->n128_u64[0] < v10->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = selfCopy + 2;
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (selfCopy[2].n128_u64[0] >= v29)
      {
        if (v28 < v30)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v26->n128_u64[0] < v27->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v28 < v30)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v27->n128_u64[0] < v11->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v20->n128_u64[0] >= v15->n128_u64[0])
      {
        if (v34 < v35)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v20->n128_u64[0] < v15->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v34 < v35)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v15->n128_u64[0] < v27->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *selfCopy;
      *selfCopy = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = selfCopy->n128_u64[0];
    if (v14->n128_u64[0] >= selfCopy->n128_u64[0])
    {
      if (v18 < v16)
      {
        v113 = *selfCopy;
        *selfCopy = *v9;
        result = v113;
        *v9 = v113;
        if (v14->n128_u64[0] < selfCopy->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *selfCopy;
          result = v114;
          *selfCopy = v114;
        }
      }

      goto LABEL_58;
    }

    if (v18 < v16)
    {
      v110 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v110;
      *v9 = v110;
      goto LABEL_58;
    }

    v117 = *v14;
    *v14 = *selfCopy;
    result = v117;
    *selfCopy = v117;
    if (selfCopy->n128_u64[0] < v9->n128_u64[0])
    {
      v110 = *selfCopy;
      *selfCopy = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --substrings;
    v36 = selfCopy->n128_u64[0];
    if (ranges)
    {
      v37 = selfCopy->n128_u64[1];
LABEL_61:
      v38 = 0;
      do
      {
        v39 = selfCopy[++v38].n128_u64[0];
      }

      while (v36 < v39);
      v40 = &selfCopy[v38];
      v41 = a2;
      if (v38 == 1)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v43);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v42);
      }

      selfCopy = (selfCopy + v38 * 16);
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v126 = *selfCopy;
          *selfCopy = *v44;
          result = v126;
          *v44 = v126;
          do
          {
            v45 = selfCopy[1].n128_u64[0];
            ++selfCopy;
          }

          while (v36 < v45);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v36 >= v46);
        }

        while (selfCopy < v44);
      }

      v47 = selfCopy - 1;
      if (&selfCopy[-1] != self)
      {
        result = *v47;
        *self = *v47;
      }

      selfCopy[-1].n128_u64[0] = v36;
      selfCopy[-1].n128_u64[1] = v37;
      if (v40 < v41)
      {
        goto LABEL_80;
      }

      v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(self, selfCopy - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(selfCopy, a2, v49))
      {
        a2 = selfCopy - 1;
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(self, selfCopy - 1, substrings, ranges & 1, result);
        ranges = 0;
      }
    }

    else
    {
      v37 = selfCopy->n128_u64[1];
      if (v36 < selfCopy[-1].n128_u64[0])
      {
        goto LABEL_61;
      }

      if (v9->n128_u64[0] >= v36)
      {
        n128_u64 = selfCopy[1].n128_u64;
        do
        {
          selfCopy = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (selfCopy->n128_u64[0] >= v36);
      }

      else
      {
        do
        {
          v50 = selfCopy[1].n128_u64[0];
          ++selfCopy;
        }

        while (v50 >= v36);
      }

      v52 = a2;
      if (selfCopy < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v53 < v36);
      }

      while (selfCopy < v52)
      {
        v127 = *selfCopy;
        *selfCopy = *v52;
        result = v127;
        *v52 = v127;
        do
        {
          v54 = selfCopy[1].n128_u64[0];
          ++selfCopy;
        }

        while (v54 >= v36);
        do
        {
          v55 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v55 < v36);
      }

      v56 = selfCopy - 1;
      if (&selfCopy[-1] != self)
      {
        result = *v56;
        *self = *v56;
      }

      ranges = 0;
      selfCopy[-1].n128_u64[0] = v36;
      selfCopy[-1].n128_u64[1] = v37;
    }
  }

  v59 = selfCopy + 1;
  v60 = selfCopy[1].n128_u64[0];
  v62 = a2[-1].n128_u64[0];
  v57 = a2 - 1;
  v61 = v62;
  if (selfCopy->n128_u64[0] >= v60)
  {
    if (v60 >= v61)
    {
      return result;
    }

    result = *v59;
    *v59 = *v57;
    *v57 = result;
    goto LABEL_184;
  }

  if (v60 < v61)
  {
    goto LABEL_107;
  }

  v132 = *selfCopy;
  *selfCopy = *v59;
  result = v132;
  *v59 = v132;
  if (selfCopy[1].n128_u64[0] < v57->n128_u64[0])
  {
    result = *v59;
    *v59 = *v57;
    goto LABEL_108;
  }

  return result;
}

- (TTMergeableString)initWithData:(id)data andReplicaID:(id)d
{
  dataCopy = data;
  dCopy = d;
  topotext::String::String(v13);
  bytes = [dataCopy bytes];
  [dataCopy length];
  TTBoundedCheckedCastNSUIntegerToUInt32();
  if (google::protobuf::MessageLite::ParseFromArray(v13, bytes, v9))
  {
    self = [(TTMergeableString *)self initWithArchive:v13 andReplicaID:dCopy];
    selfCopy = self;
  }

  else
  {
    v11 = +[REMLog crdt];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithData:andReplicaID:];
    }

    selfCopy = 0;
  }

  topotext::String::~String(v13);

  return selfCopy;
}

- (TTMergeableString)initWithArchive:(const void *)archive andReplicaID:(id)d withOrderedSubstrings:(void *)substrings timestamp:(id)timestamp
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  timestampCopy = timestamp;
  v44 = [(TTMergeableString *)self initWithReplicaID:dCopy asFragment:1];
  if (!v44)
  {
    goto LABEL_42;
  }

  if (*(archive + 32))
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = *(archive + 5);
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      v10 = *v10;
      v11 = *(*(archive + 5) + 8);
    }

    v12 = [v9 initWithBytes:v10 length:v11 encoding:4];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
      v38 = v13;
      [(TTMergeableString *)v44 setAttributedString:v14];

      archiveCopy = archive;
      v15 = *(archive + 14);
      __p = 0;
      v52 = 0;
      v53 = 0;
      std::vector<TopoSubstring *>::reserve(&__p, v15);
      if (v15)
      {
        operator new();
      }

      v16 = timestampCopy;
      if (!timestampCopy)
      {
        v17 = [TTVectorMultiTimestamp alloc];
        v18 = v17;
        v19 = archiveCopy[9];
        if (!v19)
        {
          v19 = *(topotext::String::default_instance(v17) + 72);
        }

        v16 = [(TTVectorMultiTimestamp *)v18 initWithArchive:v19 andCapacity:2];
      }

      [(TTMergeableString *)v44 setTimestamp:v16];
      if (!timestampCopy)
      {
      }

      timestamp = [(TTMergeableString *)v44 timestamp];
      sortedUUIDs = [timestamp sortedUUIDs];

      [sortedUUIDs count];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = sortedUUIDs;
      v22 = [v21 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v22)
      {
        v23 = *v48;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v48 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v47 + 1) + 8 * i);
            tTZero = [MEMORY[0x1E696AFB0] TTZero];
            LOBYTE(v25) = [v25 isEqual:tTZero];

            if (v25)
            {
              v27 = 0;
              goto LABEL_27;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v27 = 1;
LABEL_27:

      memset(v45, 0, sizeof(v45));
      v46 = 1065353216;
      attributedString = [(TTMergeableString *)v44 attributedString];
      v31 = [attributedString length] == 0;

      if (v31)
      {
        if (v27)
        {
          if (![(TTMergeableString *)v44 isFragment])
          {
            [(TTMergeableString *)v44 updateClock];
          }

          v32 = 1;
LABEL_36:
          if (substrings && &__p != substrings)
          {
            std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>(substrings, __p, v52, (v52 - __p) >> 3);
          }

          std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v45);

          if (__p)
          {
            v52 = __p;
            operator delete(__p);
          }

          if ((v32 & 1) == 0)
          {
            v35 = 0;
            goto LABEL_43;
          }

LABEL_42:
          v35 = v44;
LABEL_43:
          v29 = v35;
          goto LABEL_44;
        }
      }

      else
      {
        v33 = +[REMLog crdt];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
        }
      }

      startNodes = [(TTMergeableString *)v44 startNodes];
      startNodes[1] = *startNodes;
      v32 = 0;
      goto LABEL_36;
    }
  }

  v28 = +[REMLog crdt];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
  }

  v29 = 0;
LABEL_44:

  return v29;
}

- (void)saveToArchive:(void *)archive
{
  [(TTMergeableString *)self generateIdsForLocalChanges];
  [(TTMergeableString *)self coalesce];
  [(TTMergeableString *)self checkTimestampLogStyleErrors:1];
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];

  [(TTMergeableString *)self saveSubstrings:orderedSubstrings archiveSet:0 linkSet:0 archivedString:0 toArchive:archive];
}

- (void)saveSubstrings:(void *)substrings archiveSet:(void *)set linkSet:(void *)linkSet archivedString:(id *)string toArchive:(void *)archive
{
  stringCopy = string;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v11 = *substrings;
  v12 = *(substrings + 1);
  if (*substrings != v12)
  {
    v13 = 0;
    do
    {
      v65 = *v11;
      v68 = &v65;
      *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v66, &v65, &std::piecewise_construct, &v68) + 6) = v13++;
      ++v11;
    }

    while (v11 != v12);
  }

  v60 = objc_alloc_init(MEMORY[0x1E696AD40]);
  timestamp = [(TTMergeableString *)self timestamp];
  sortedUUIDs = [timestamp sortedUUIDs];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tTZero = [MEMORY[0x1E696AFB0] TTZero];
  [v15 setObject:&unk_1F0D99B50 forKeyedSubscript:tTZero];
  setCopy = set;

  v17 = [sortedUUIDs count];
  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v18 + 1, stringCopy}];
      v21 = [sortedUUIDs objectAtIndexedSubscript:v18];
      [v15 setObject:v20 forKeyedSubscript:v21];

      v18 = v19;
    }

    while (v17 != v19);
  }

  v22 = *substrings;
  v61 = *(substrings + 1);
  if (*substrings != v61)
  {
    while (1)
    {
      v65 = *v22;
      v23 = *(archive + 15);
      v24 = *(archive + 14);
      if (v24 >= v23)
      {
        if (v23 == *(archive + 16))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 12, v23 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Substring>::New();
      }

      v25 = *(archive + 6);
      *(archive + 14) = v24 + 1;
      v26 = *(v25 + 8 * v24);
      *(v26 + 32) |= 1u;
      v27 = *(v26 + 40);
      if (!v27)
      {
        operator new();
      }

      v28 = [v15 objectForKeyedSubscript:{*v65, stringCopy}];
      integerValue = [v28 integerValue];
      *(v27 + 32) |= 1u;
      *(v27 + 40) = integerValue;

      *(v26 + 32) |= 1u;
      v30 = *(v26 + 40);
      if (!v30)
      {
        operator new();
      }

      v31 = *(v65 + 8);
      *(v30 + 32) |= 2u;
      *(v30 + 44) = v31;
      if (setCopy)
      {
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(setCopy, &v65))
        {
          break;
        }
      }

      *(v26 + 32) |= 4u;
      v32 = *(v26 + 48);
      if (!v32)
      {
        operator new();
      }

      v33 = [v15 objectForKeyedSubscript:*(v65 + 24)];
      integerValue2 = [v33 integerValue];
      *(v32 + 32) |= 1u;
      *(v32 + 40) = integerValue2;

      *(v26 + 32) |= 4u;
      v35 = *(v26 + 48);
      if (!v35)
      {
        operator new();
      }

      v36 = v65;
      v37 = *(v65 + 32);
      *(v35 + 32) |= 2u;
      *(v35 + 44) = v37;
      if (*(v36 + 44) == 1)
      {
        goto LABEL_29;
      }

      attributedString = [(TTMergeableString *)self attributedString];
      v39 = attributedString;
      if (*(v65 + 44))
      {
        v40 = 0;
      }

      else
      {
        v40 = *(v65 + 16);
      }

      v43 = [attributedString attributedSubstringFromRange:{*(v65 + 40), v40}];
      [v60 appendAttributedString:v43];

      v42 = *(v26 + 32);
LABEL_32:
      v44 = v65;
      v45 = *(v65 + 16);
      *(v26 + 32) = v42 | 2;
      *(v26 + 56) = v45;
      v46 = *(v44 + 48);
      v47 = *(v44 + 56);
      while (v46 != v47)
      {
        v64 = *v46;
        if (!linkSet || std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(linkSet, &v64))
        {
          v68 = &v64;
          v48 = *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v66, &v64, &std::piecewise_construct, &v68) + 6);
          v49 = *(v26 + 72);
          if (v49 == *(v26 + 76))
          {
            google::protobuf::RepeatedField<unsigned int>::Reserve((v26 + 64), v49 + 1);
            v49 = *(v26 + 72);
          }

          v50 = *(v26 + 64);
          *(v26 + 72) = v49 + 1;
          *(v50 + 4 * v49) = v48;
        }

        ++v46;
      }

      if (++v22 == v61)
      {
        goto LABEL_41;
      }
    }

    *(v26 + 32) |= 4u;
    v41 = *(v26 + 48);
    if (!v41)
    {
      operator new();
    }

    v41[8] |= 1u;
    v41[10] = 0;
    *(v26 + 32) |= 4u;
    v41[8] |= 2u;
    v41[11] = 0;
LABEL_29:
    v42 = *(v26 + 32) | 8;
    *(v26 + 32) = v42;
    *(v26 + 60) = 1;
    goto LABEL_32;
  }

LABEL_41:
  string = [v60 string];
  [string UTF8String];
  string2 = [v60 string];
  [string2 lengthOfBytesUsingEncoding:4];
  *(archive + 8) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  if (*(archive + 5) == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  MEMORY[0x19A8FCFF0]();

  if (v58)
  {
    *v58 = v60;
  }

  timestamp2 = [(TTMergeableString *)self timestamp];
  isDocumentShared = [timestamp2 isDocumentShared];

  if ((isDocumentShared & 1) == 0)
  {
    timestamp3 = [(TTMergeableString *)self timestamp];
    *(archive + 8) |= 4u;
    v56 = *(archive + 9);
    if (!v56)
    {
      operator new();
    }

    [timestamp3 saveToArchive:v56];
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v66);
}

- (id)serialize
{
  topotext::String::String(v9);
  [(TTMergeableString *)self saveToArchive:v9];
  v3 = objc_alloc(MEMORY[0x1E695DF88]);
  v5 = [v3 initWithLength:{topotext::String::ByteSize(v9, v4)}];
  mutableBytes = [v5 mutableBytes];
  [v5 length];
  TTBoundedCheckedCastNSUIntegerToUInt32();
  google::protobuf::MessageLite::SerializeToArray(v9, mutableBytes, v7);
  topotext::String::~String(v9);

  return v5;
}

- (id)i_saveDeltasSinceTimestamp:(id)timestamp toArchive:(void *)archive
{
  timestampCopy = timestamp;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  [(TTMergeableString *)self coalesce];
  selfCopy = self;
  archiveCopy = archive;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  orderedSubstrings = [(TTMergeableString *)self orderedSubstrings];
  v9 = *orderedSubstrings;
  v8 = orderedSubstrings[1];
  v29 = v8;
  while (v9 != v8)
  {
    v10 = *v9;
    v32 = v10;
    v11 = *v10;
    v12 = *(v10 + 8);
    LODWORD(v10) = *(v10 + 16);
    v13 = [timestampCopy clockForUUID:v11 atIndex:0];
    v14 = [timestampCopy clockForUUID:v11 atIndex:1];
    if (v10 + v12 >= v13 || *(v32 + 32) >= v14)
    {
      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v33, &v32, &v32);
      if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
      {
        std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v32);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32, &v32);
      }

      v23 = *(v32 + 48);
      v24 = *(v32 + 56);
      while (v23 != v24)
      {
        v31 = *v23;
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v31))
        {
          std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v31);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v31, &v31);
        }

        ++v23;
      }
    }

    else
    {
      v15 = *(v32 + 48);
      v16 = *(v32 + 56);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = **v15;
        v19 = *(v17 + 2);
        v20 = *(v17 + 4);
        v21 = [timestampCopy clockForUUID:v18 atIndex:0];
        v22 = [timestampCopy clockForUUID:v18 atIndex:1];
        if ((v20 + v19 >= v21 || *(v17 + 8) >= v22) && !std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
        {
          std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v32);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32, &v32);
        }

        ++v15;
      }
    }

    ++v9;
    v8 = v29;
  }

  v30 = 0;
  [(TTMergeableString *)selfCopy saveSubstrings:&v37 archiveSet:v33 linkSet:v35 archivedString:&v30 toArchive:archiveCopy];
  v25 = v30;
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v33);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v35);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v25;
}

- (id)serializeDeltaSinceTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  topotext::String::String(v11);
  [(TTMergeableString *)self saveDeltaSinceTimestamp:timestampCopy toArchive:v11];
  v5 = objc_alloc(MEMORY[0x1E695DF88]);
  v7 = [v5 initWithLength:{topotext::String::ByteSize(v11, v6)}];
  mutableBytes = [v7 mutableBytes];
  [v7 length];
  TTBoundedCheckedCastNSUIntegerToUInt32();
  google::protobuf::MessageLite::SerializeToArray(v11, mutableBytes, v9);
  topotext::String::~String(v11);

  return v7;
}

- (void)mergeWithString:(uint64_t)a1 mergeTimestamps:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to merge strings: %@", &v2, 0xCu);
}

@end