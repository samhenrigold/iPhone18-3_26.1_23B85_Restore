@interface CRTTMergeableStringUndoEditCommand
- (BOOL)_applyToString:(id)string;
- (BOOL)applyToString:(id)string;
- (BOOL)hasTemporaryIDs;
- (CRContext)context;
- (_TtC9Coherence34CRTTMergeableStringUndoEditCommand)init;
- (id)description;
- (id)renamedWith:(id)with;
- (id)temporaryIDs;
- (void)dealloc;
- (void)retainTemporaryIDs;
- (void)updateInsertTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
@end

@implementation CRTTMergeableStringUndoEditCommand

- (_TtC9Coherence34CRTTMergeableStringUndoEditCommand)init
{
  v3.receiver = self;
  v3.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  if ([(CRTTMergeableStringUndoEditCommand *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  temporaryIDs = [(CRTTMergeableStringUndoEditCommand *)self temporaryIDs];
  [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:temporaryIDs];

  deleteRanges = self->_deleteRanges;
  if (deleteRanges)
  {
    v5 = *deleteRanges;
    if (*deleteRanges)
    {
      deleteRanges[1] = v5;
      operator delete(v5);
    }

    MEMORY[0x1B26FCDB0](deleteRanges, 0x20C40960023A9);
  }

  insertStrings = self->_insertStrings;
  if (insertStrings)
  {
    v8 = self->_insertStrings;
    std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v8);
    MEMORY[0x1B26FCDB0](insertStrings, 0x20C40960023A9);
  }

  v7.receiver = self;
  v7.super_class = _TtC9Coherence34CRTTMergeableStringUndoEditCommand;
  [(CRTTMergeableStringUndoEditCommand *)&v7 dealloc];
}

- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  v15 = *MEMORY[0x1E69E9840];
  __p = 0;
  v11 = 0;
  v12 = 0;
  deleteRanges = self->_deleteRanges;
  v8 = *deleteRanges;
  v9 = deleteRanges[1];
  if (*deleteRanges != v9)
  {
    do
    {
      Coherence_namespace::updateTopoIDRange(v8, range->charID.replica.uuid, d, &__p);
      v8 += 28;
    }

    while (v8 != v9);
    deleteRanges = self->_deleteRanges;
  }

  if (deleteRanges != &__p)
  {
    std::vector<Coherence_namespace::TopoIDRange>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoIDRange*,Coherence_namespace::TopoIDRange*>(deleteRanges, __p, v11, 0x6DB6DB6DB6DB6DB7 * ((v11 - __p) >> 2));
  }

  v14[0] = *range->charID.replica.uuid;
  *(v14 + 12) = *&range->charID.replica.uuid[12];
  v13[0] = *d->charID.replica.uuid;
  *(v13 + 12) = *&d->charID.replica.uuid[12];
  [(CRTTMergeableStringUndoEditCommand *)self updateInsertTopoIDRange:v14 toNewRangeID:v13];
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

- (id)temporaryIDs
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  while (v5 != v6)
  {
    v7 = *v5;
    *&v16[12] = *(v5 + 12);
    *v16 = v7;
    if (*&v16[16])
    {
      v8 = Coherence_namespace::TopoReplica::objc(v16);
      [(ObjCRenameSequence *)v3 addWithReplica:v8 range:*&v16[20] lastTimestamp:*&v16[24], 0, *v16, *&v16[8]];
    }

    v5 = (v5 + 28);
  }

  insertStrings = self->_insertStrings;
  v10 = *insertStrings;
  v11 = insertStrings[1];
  while (v10 != v11)
  {
    v12 = *v10;
    *&v16[12] = *(v10 + 12);
    *v16 = v12;
    v13 = *(v10 + 4);
    v17 = v13;
    if (*&v16[16])
    {
      v14 = Coherence_namespace::TopoReplica::objc(v16);
      [(ObjCRenameSequence *)v3 addWithReplica:v14 range:*&v16[20] lastTimestamp:*&v16[24], 0];

      v13 = v17;
    }

    v10 = (v10 + 40);
  }

  return v3;
}

- (BOOL)hasTemporaryIDs
{
  deleteRanges = self->_deleteRanges;
  v3 = *deleteRanges;
  v4 = deleteRanges[1];
  while (v3 != v4)
  {
    if (*(v3 + 16))
    {
      return 1;
    }

    v3 += 28;
  }

  insertStrings = self->_insertStrings;
  v7 = *insertStrings;
  v6 = insertStrings[1];
  if (v7 == v6)
  {
    return 0;
  }

  v8 = v7 + 40;
  do
  {
    v9 = *(v8 - 24);
    result = v9 != 0;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == v6;
    }

    v8 += 40;
  }

  while (!v11);
  return result;
}

- (void)retainTemporaryIDs
{
  temporaryIDs = [(CRTTMergeableStringUndoEditCommand *)self temporaryIDs];
  [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:?];
}

- (void)updateInsertTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  v14 = *MEMORY[0x1E69E9840];
  insertStrings = self->_insertStrings;
  v5 = *insertStrings;
  v6 = insertStrings[1];
  if (*insertStrings != v6)
  {
    do
    {
      if (*(v5 + 16) == range->charID.replica.index && !uuid_compare(v5, range->charID.replica.uuid) && !Coherence_namespace::TopoID::operator<(v5, range))
      {
        v11 = *range->charID.replica.uuid;
        v9 = range->length + range->charID.clock;
        index = range->charID.replica.index;
        v13 = v9;
        if (!Coherence_namespace::TopoID::operator>=(v5, &v11))
        {
          v10 = *d->charID.replica.uuid;
          *(v5 + 16) = d->charID.replica.index;
          *v5 = v10;
          *(v5 + 20) = *(v5 + 20) + d->charID.clock - range->charID.clock;
        }
      }

      v5 += 40;
    }

    while (v5 != v6);
  }
}

- (id)renamedWith:(id)with
{
  v35 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v4 = objc_alloc_init(_TtC9Coherence34CRTTMergeableStringUndoEditCommand);
  selfCopy = self;
  deleteRanges = self->_deleteRanges;
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  if (*deleteRanges != v7)
  {
    do
    {
      v8 = *v6;
      *&v30[12] = *(v6 + 12);
      *v30 = v8;
      if (*&v30[16])
      {
        v9 = Coherence_namespace::TopoReplica::objc(v30);
        v10 = [withCopy renamedWithRange:*&v30[20] replica:{*&v30[24], v9}];
        if ([v10 rangeCount])
        {
          v11 = *&v30[20];
          v12 = *&v30[24];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke;
          v32[3] = &unk_1E7A126A8;
          v33 = v4;
          v34[0] = *v30;
          *(v34 + 12) = *&v30[12];
          [v10 enumerateRangesIn:v11 :{v12, v32}];
        }

        else
        {
          std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand deleteRanges](v4, "deleteRanges"), v30);
        }
      }

      else
      {
        std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand deleteRanges](v4, "deleteRanges"), v30);
      }

      v6 = (v6 + 28);
    }

    while (v6 != v7);
  }

  insertStrings = selfCopy->_insertStrings;
  v14 = *insertStrings;
  v15 = insertStrings[1];
  if (*insertStrings != v15)
  {
    do
    {
      v16 = *v14;
      *&v30[12] = *(v14 + 12);
      *v30 = v16;
      v31 = *(v14 + 4);
      if (v31)
      {
        if (*&v30[16])
        {
          v17 = Coherence_namespace::TopoReplica::objc(v30);
          v18 = [withCopy renamedWithRange:*&v30[20] replica:{*&v30[24], v17}];
          v19 = *&v30[20];
          v20 = *&v30[24];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3321888768;
          v25[2] = __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke_2;
          v25[3] = &unk_1F23BBA78;
          v26 = v4;
          v28[0] = *v30;
          *(v28 + 12) = *&v30[12];
          v29 = v31;
          v21 = v17;
          v27 = v21;
          [v18 enumerateRangesIn:v19 :{v20, v25}];
        }

        else
        {
          std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](-[CRTTMergeableStringUndoEditCommand insertStrings](v4, "insertStrings"), v30);
        }
      }

      v14 = (v14 + 40);
    }

    while (v14 != v15);
  }

  [(CRTTMergeableStringUndoEditCommand *)v4 retainTemporaryIDs];

  return v4;
}

uint64_t __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke(uint64_t a1, int a2, int a3, void *a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a5 < 0)
  {
    v13 = *(a1 + 40);
    LODWORD(v14) = *(a1 + 56);
    HIDWORD(v14) = a2;
    v15 = a3;
    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100]([*(a1 + 32) deleteRanges], &v13);
  }

  else
  {
    Coherence_namespace::TopoReplica::TopoReplica(&v11, v9, 0);
    HIDWORD(v12) = a5;
    v13 = v11;
    v14 = v12;
    v15 = a3;
    std::vector<Coherence_namespace::TopoIDRange>::push_back[abi:ne200100]([*(a1 + 32) deleteRanges], &v13);
  }

  return 0;
}

uint64_t __50__CRTTMergeableStringUndoEditCommand_renamedWith___block_invoke_2(id *a1, int a2, int a3, void *a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a5 < 0)
  {
    v11 = [a1[5] uuid];
    v12 = objc_msgSend_index(a1[5]);
    Coherence_namespace::TopoReplica::TopoReplica(&v14, v11, v12);
    HIDWORD(v15) = a2;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    Coherence_namespace::TopoReplica::TopoReplica(&v14, v9, 0);
    HIDWORD(v15) = a5;
    v18 = v14;
    v19 = v15;
  }

  v10 = [a1[4] insertStrings];
  v14 = v18;
  v15 = v19;
  v16 = a3;
  v17 = a1[10];
  std::vector<std::pair<Coherence_namespace::TopoIDRange,objc_object  {objcproto26CRTTMergeableStringStorage}* {__strong}>>::push_back[abi:ne200100](v10, &v14);

  return 0;
}

- (BOOL)applyToString:(id)string
{
  stringCopy = string;
  [stringCopy useRenameIfAvailable];
  v5 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
  [stringCopy apply:v5 skipRetain:0 alwaysApply:0];
  if ([(CRTTMergeableStringUndoEditCommand *)self hasTemporaryIDs])
  {
    v6 = [(CRTTMergeableStringUndoEditCommand *)self renamedWith:v5];
    v7 = [v6 _applyToString:stringCopy];
  }

  else
  {
    v7 = [(CRTTMergeableStringUndoEditCommand *)self _applyToString:stringCopy];
  }

  return v7;
}

- (BOOL)_applyToString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy hasAllIDsIn:self->_insertStrings])
  {
    goto LABEL_21;
  }

  deleteRanges = self->_deleteRanges;
  if (deleteRanges[1] == *deleteRanges)
  {
    goto LABEL_20;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  if (*deleteRanges == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v24 = *v6;
      v25 = *(v6 + 2);
      v9 = *(v6 + 6);
      v21 = v24;
      v22 = v25;
      v23 = v9;
      [stringCopy getSubstrings:&v18 forTopoIDRange:{&v21, __p}];
      v8 += v9;
      v6 = (v6 + 28);
    }

    while (v6 != v7);
  }

  [stringCopy getCharacterRanges:&__p forSubstrings:&v18];
  v10 = __p;
  if (__p == v16)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = __p;
    do
    {
      v11 += v12[1];
      v12 += 2;
    }

    while (v12 != v16);
  }

  if (v11 == v8)
  {
    [stringCopy deleteSubstrings:&v18 withCharacterRanges:&__p];
    v10 = __p;
  }

  if (v10)
  {
    v16 = v10;
    operator delete(v10);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v11 == v8)
  {
LABEL_20:
    [stringCopy undeleteSubstrings:{self->_insertStrings, __p}];
    v13 = 1;
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  [stringCopy coalesce];
  if (v13)
  {
    [stringCopy updateSubstringIndexes];
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<CRTTMergeableStringUndoEditCommand %p Delete:", self];
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  if (*deleteRanges != v6)
  {
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];
      coherence_shortDescription = [v7 Coherence_shortDescription];
      [v3 appendFormat:@"%@.%d:%d-%u, ", coherence_shortDescription, v5[4], v5[5], v5[5] + v5[6] - 1];

      v5 += 7;
    }

    while (v5 != v6);
  }

  [v3 appendFormat:@"  Insert:"];
  insertStrings = self->_insertStrings;
  v10 = *insertStrings;
  v11 = insertStrings[1];
  if (*insertStrings != v11)
  {
    do
    {
      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v10];
      coherence_shortDescription2 = [v12 Coherence_shortDescription];
      [v3 appendFormat:@"%@.%d:%d-%u=>'%@', ", coherence_shortDescription2, *(v10 + 16), *(v10 + 20), (*(v10 + 20) + *(v10 + 24) - 1), *(v10 + 32)];

      v10 += 40;
    }

    while (v10 != v11);
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (CRContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end