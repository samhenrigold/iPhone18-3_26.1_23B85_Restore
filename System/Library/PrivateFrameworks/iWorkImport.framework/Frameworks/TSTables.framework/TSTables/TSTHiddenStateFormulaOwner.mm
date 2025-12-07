@interface TSTHiddenStateFormulaOwner
- (TSKUIDStruct)ownerUID;
- (TSTHiddenStateFormulaOwner)initWithContext:(id)context ownerUID:(const TSKUIDStruct *)d;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)setThresholdCellValues:(id)values;
@end

@implementation TSTHiddenStateFormulaOwner

- (TSTHiddenStateFormulaOwner)initWithContext:(id)context ownerUID:(const TSKUIDStruct *)d
{
  v6.receiver = self;
  v6.super_class = TSTHiddenStateFormulaOwner;
  result = [(TSTHiddenStateFormulaOwner *)&v6 initWithContext:context];
  if (result)
  {
    result->_ownerUID = *d;
    result->_needsToUpdateFilterSetForImport = 0;
  }

  return result;
}

- (void)setOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  p_ownerUID = &self->_ownerUID;
  if (d._lower != self->_ownerUID._lower || d._upper != self->_ownerUID._upper)
  {
    objc_msgSend_willModify(self, a2, d._lower, d._upper);
    p_ownerUID->_lower = lower;
    p_ownerUID->_upper = upper;
  }
}

- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import
{
  if (self->_needsToUpdateFilterSetForImport != import)
  {
    objc_msgSend_willModify(self, a2, import, v3);
    self->_needsToUpdateFilterSetForImport = import;
  }
}

- (void)setThresholdCellValues:(id)values
{
  valuesCopy = values;
  objc_msgSend_willModify(self, v5, v6, v7);
  thresholdCellValues = self->_thresholdCellValues;
  self->_thresholdCellValues = valuesCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[240], v5);

  v7 = TSKUIDStruct::loadFromMessage();
  self->_ownerUID._lower = v7;
  self->_ownerUID._upper = v8;
  if (!(v7 | v8))
  {
    self->_ownerUID._lower = TSKMakeUIDStructRandom();
    self->_ownerUID._upper = v9;
  }

  self->_needsToUpdateFilterSetForImport = *(v6 + 56);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22125EB60, off_2812E4498[240]);

  *(v5 + 16) |= 1u;
  v6 = *(v5 + 48);
  if (!v6)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0300](v7);
    *(v5 + 48) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v6);
  v13 = objc_msgSend_count(self->_thresholdCellValues, v8, v9, v10);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(v5 + 40);
      if (!v15)
      {
        goto LABEL_12;
      }

      v16 = *(v5 + 32);
      v17 = *v15;
      if (v16 >= *v15)
      {
        break;
      }

      *(v5 + 32) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_14:
      v21 = objc_msgSend_objectAtIndex_(self->_thresholdCellValues, v11, v14, v12);
      objc_msgSend_encodeCellValueToArchive_(v21, v22, v18, v23);

      if (v13 == ++v14)
      {
        goto LABEL_15;
      }
    }

    if (v17 == *(v5 + 36))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
      v15 = *(v5 + 40);
      v17 = *v15;
    }

    *v15 = v17 + 1;
    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(v5 + 24));
    v19 = *(v5 + 32);
    v20 = *(v5 + 40) + 8 * v19;
    *(v5 + 32) = v19 + 1;
    *(v20 + 8) = v18;
    goto LABEL_14;
  }

LABEL_15:
  needsToUpdateFilterSetForImport = self->_needsToUpdateFilterSetForImport;
  *(v5 + 16) |= 2u;
  *(v5 + 56) = needsToUpdateFilterSetForImport;
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

@end