@interface TSCEViewTractRef
- (BOOL)isEqual:(id)equal;
- (BOOL)isFixedAtZeroRef;
- (TSCEViewTractRef)init;
- (TSCEViewTractRef)initWithTableUID:(const TSKUIDStruct *)d;
- (TSCEViewTractRef)initWithTract:(id)tract tableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags columnGroupLevel:(unsigned __int8)level rowGroupLevel:(unsigned __int8)groupLevel aggrIndexLevel:(unsigned __int16)indexLevel;
- (TSKUIDStruct)tableUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTract:(id)tract;
@end

@implementation TSCEViewTractRef

- (TSCEViewTractRef)init
{
  v3.receiver = self;
  v3.super_class = TSCEViewTractRef;
  result = [(TSCEViewTractRef *)&v3 init];
  if (result)
  {
    result->_tableUID._lower = 0;
    result->_tableUID._upper = 0;
    *&result->_aggregateIndexLevel = -1;
  }

  return result;
}

- (TSCEViewTractRef)initWithTract:(id)tract tableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags columnGroupLevel:(unsigned __int8)level rowGroupLevel:(unsigned __int8)groupLevel aggrIndexLevel:(unsigned __int16)indexLevel
{
  tractCopy = tract;
  v22.receiver = self;
  v22.super_class = TSCEViewTractRef;
  v18 = [(TSCEViewTractRef *)&v22 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(tractCopy, v15, v16, v17);
    tract = v18->_tract;
    v18->_tract = v19;

    v18->_tableUID = *d;
    v18->_preserveFlags = flags;
    v18->_aggregateIndexLevel = indexLevel;
    v18->_columnGroupLevel = level;
    v18->_rowGroupLevel = groupLevel;
  }

  return v18;
}

- (TSCEViewTractRef)initWithTableUID:(const TSKUIDStruct *)d
{
  v11.receiver = self;
  v11.super_class = TSCEViewTractRef;
  v4 = [(TSCEViewTractRef *)&v11 init];
  if (v4)
  {
    v5 = [TSCEUndoTract alloc];
    v8 = objc_msgSend_initWithPurpose_(v5, v6, 4, v7);
    v9 = *(v4 + 1);
    *(v4 + 1) = v8;

    *(v4 + 1) = *d;
    v4[32] = 15;
    *(v4 + 34) = -1;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEViewTractRef alloc];
  tract = self->_tract;
  flags = self->_preserveFlags._flags;
  columnGroupLevel = self->_columnGroupLevel;
  rowGroupLevel = self->_rowGroupLevel;
  aggregateIndexLevel = self->_aggregateIndexLevel;

  return objc_msgSend_initWithTract_tableUID_preserveFlags_columnGroupLevel_rowGroupLevel_aggrIndexLevel_(v4, v5, tract, &self->_tableUID, flags, columnGroupLevel, rowGroupLevel, aggregateIndexLevel);
}

- (void)setTract:(id)tract
{
  tractCopy = tract;
  if (self->_tract != tractCopy)
  {
    v10 = tractCopy;
    v8 = objc_msgSend_copy(tractCopy, v5, v6, v7);
    tract = self->_tract;
    self->_tract = v8;

    tractCopy = v10;
  }
}

- (BOOL)isFixedAtZeroRef
{
  p_isa = &self->_tract->super.isa;
  if (p_isa)
  {
    v6 = objc_msgSend_rowUids(p_isa, a2, v2, v3);
    if (*v6 == v6[1])
    {
      p_isa = objc_msgSend_columnUids(self->_tract, v7, v8, v9);
      LOBYTE(p_isa) = *p_isa == p_isa[1];
    }

    else
    {
      LOBYTE(p_isa) = 0;
    }
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v10 = v6;
    if (v6 && self->_tableUID._lower == objc_msgSend_tableUID(v6, v7, v8, v9) && self->_tableUID._upper == v11 && (aggregateIndexLevel = self->_aggregateIndexLevel, aggregateIndexLevel == objc_msgSend_aggregateIndexLevel(v10, v11, v12, v13)) && (columnGroupLevel = self->_columnGroupLevel, columnGroupLevel == objc_msgSend_columnGroupLevel(v10, v15, v16, v17)) && (rowGroupLevel = self->_rowGroupLevel, rowGroupLevel == objc_msgSend_rowGroupLevel(v10, v19, v20, v21)) && self->_preserveFlags._flags == objc_msgSend_preserveFlags(v10, v23, v24, v25))
    {
      tract = self->_tract;
      v30 = objc_msgSend_tract(v10, v26, v27, v28);
      isEqual = objc_msgSend_isEqual_(tract, v31, v30, v32);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end