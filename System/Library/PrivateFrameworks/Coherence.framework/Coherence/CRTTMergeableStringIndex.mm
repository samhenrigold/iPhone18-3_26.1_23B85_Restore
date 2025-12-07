@interface CRTTMergeableStringIndex
- (BOOL)isEqual:(id)equal;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)timestamp affinity:(unint64_t)affinity renameGeneration:(int64_t)generation;
- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)d affinity:(unint64_t)affinity renameGeneration:(int64_t)generation maxCounter:(int64_t)counter;
- (id).cxx_construct;
- (id)_objCRenameSequence;
- (id)description;
- (id)finalizedInContext:(id)context;
- (id)renamed:(id)renamed;
- (void)dealloc;
@end

@implementation CRTTMergeableStringIndex

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTopoID:(TopoID *)d affinity:(unint64_t)affinity renameGeneration:(int64_t)generation maxCounter:(int64_t)counter
{
  v16.receiver = self;
  v16.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v10 = [(CRTTMergeableStringIndex *)&v16 init];
  v11 = v10;
  v12 = *d->replica.uuid;
  v13 = *&d->replica.index;
  *&v10->_index.replica.index = v13;
  *v10->_index.replica.uuid = v12;
  v10->_maxCounter = counter;
  v10->_affinity = affinity;
  v10->_renameGeneration = generation;
  if (v13)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)v10 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:_objCRenameSequence];
  }

  return v11;
}

- (_TtC9Coherence24CRTTMergeableStringIndex)initWithTimestamp:(id)timestamp affinity:(unint64_t)affinity renameGeneration:(int64_t)generation
{
  v15 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  v9 = [(CRTTMergeableStringIndex *)&v12 init];
  Coherence_namespace::TopoID::TopoID(&v13, timestampCopy);
  *v9->_index.replica.uuid = v13;
  *&v9->_index.replica.index = v14;
  v9->_renameGeneration = generation;
  v9->_maxCounter = -1;
  v9->_affinity = affinity;
  if (v9->_index.replica.index)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)v9 _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC retainObjCSequence:_objCRenameSequence];
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  objc_msgSend_index(self, a2);
  if (v5)
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    [_TtC9Coherence19CRGlobalContextObjC releaseObjCSequence:_objCRenameSequence];
  }

  v4.receiver = self;
  v4.super_class = _TtC9Coherence24CRTTMergeableStringIndex;
  [(CRTTMergeableStringIndex *)&v4 dealloc];
}

- (id)finalizedInContext:(id)context
{
  contextCopy = context;
  if ([(CRTTMergeableStringIndex *)self needToFinalizeTimestamps])
  {
    _objCRenameSequence = [(CRTTMergeableStringIndex *)self _objCRenameSequence];
    v6 = [_TtC9Coherence19CRGlobalContextObjC renameObjCSequence:_objCRenameSequence after:self->_maxCounter in:contextCopy];
    selfCopy = [(CRTTMergeableStringIndex *)self renamed:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)renamed:(id)renamed
{
  v12[3] = *MEMORY[0x1E69E9840];
  renamedCopy = renamed;
  if (-[CRTTMergeableStringIndex needToFinalizeTimestamps](self, "needToFinalizeTimestamps") && ((v5 = -[CRTTMergeableStringIndex renameGeneration](self, "renameGeneration"), v5 < [renamedCopy generation]) || (objc_msgSend(renamedCopy, "hasLocalRenames") & 1) != 0))
  {
    v6 = Coherence_namespace::TopoID::objc(&self->_index);
    v7 = [renamedCopy renamed:v6];

    if (v7)
    {
      v8 = [_TtC9Coherence24CRTTMergeableStringIndex alloc];
      Coherence_namespace::TopoID::TopoID(v12, v7);
      selfCopy = -[CRTTMergeableStringIndex initWithTopoID:affinity:renameGeneration:maxCounter:](v8, "initWithTopoID:affinity:renameGeneration:maxCounter:", v12, self->_affinity, [renamedCopy generation], self->_maxCounter);
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)_objCRenameSequence
{
  v3 = objc_alloc_init(_TtC9Coherence18ObjCRenameSequence);
  v4 = Coherence_namespace::TopoReplica::objc(&self->_index);
  [(ObjCRenameSequence *)v3 addWithReplica:v4 range:self->_index.clock lastTimestamp:1, 0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v20 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    objc_msgSend_index(self);
    if (v5)
    {
      objc_msgSend_index(v5);
      if ((v19 == 0) != (v16 != 0))
      {
LABEL_4:
        objc_msgSend_index(self);
        if (v5)
        {
          objc_msgSend_index(v5);
          v6 = HIDWORD(v16);
        }

        else
        {
          v6 = 0;
          *uu2 = 0;
          v15 = 0;
          v16 = 0;
        }

        v7 = v19 == __PAIR64__(v6, v16) && uuid_compare(uu1, uu2) == 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!v19)
    {
      goto LABEL_4;
    }

    v8 = +[_TtC9Coherence19CRGlobalContextObjC objCRenames];
    v9 = [(CRTTMergeableStringIndex *)self renamed:v8];
    v10 = [v5 renamed:v8];
    v11 = v10;
    if (v9)
    {
      objc_msgSend_index(v9);
      if (v11)
      {
LABEL_10:
        objc_msgSend_index(v11);
        v12 = HIDWORD(v16);
LABEL_13:
        v7 = v19 == __PAIR64__(v12, v16) && uuid_compare(uu1, uu2) == 0;

        goto LABEL_21;
      }
    }

    else
    {
      *uu1 = 0;
      v18 = 0;
      v19 = 0;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v12 = 0;
    *uu2 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_22:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = Coherence_namespace::TopoID::toString(&self->_index);
  v5 = [v3 stringWithFormat:@"<CRTTMergeableStringIndex: %p %@ %@>", self, v4, -[CRTTMergeableStringIndex description]::affinityNames[self->_affinity]];

  return v5;
}

- (id).cxx_construct
{
  self->_index.replica.index = 0;
  uuid_clear(self->_index.replica.uuid);
  self->_index.clock = 0;
  return self;
}

@end