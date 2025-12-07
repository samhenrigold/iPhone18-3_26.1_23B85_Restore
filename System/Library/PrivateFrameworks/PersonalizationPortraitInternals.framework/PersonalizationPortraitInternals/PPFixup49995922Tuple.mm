@interface PPFixup49995922Tuple
+ (id)tupleWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTuple:(id)tuple;
- (PPFixup49995922Tuple)initWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d;
- (unint64_t)hash;
@end

@implementation PPFixup49995922Tuple

- (unint64_t)hash
{
  rowid = self->_rowid;
  v4 = [self->_record hash]- rowid + 32 * rowid;
  return [(NSUUID *)self->_dkUUID hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPFixup49995922Tuple *)self isEqualToTuple:v5];
  }

  return v6;
}

- (BOOL)isEqualToTuple:(id)tuple
{
  tupleCopy = tuple;
  v5 = tupleCopy;
  if (!tupleCopy || (rowid = self->_rowid, rowid != [tupleCopy rowid]) || (v7 = self->_record == 0, objc_msgSend(v5, "record"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 == v9) || (record = self->_record) != 0 && (objc_msgSend(v5, "record"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NSObject isEqual:](record, "isEqual:", v11), v11, !v12) || (v13 = self->_dkUUID == 0, objc_msgSend(v5, "dkUUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15))
  {
    v18 = 0;
  }

  else
  {
    dkUUID = self->_dkUUID;
    if (dkUUID)
    {
      dkUUID = [v5 dkUUID];
      v18 = [(NSUUID *)dkUUID isEqual:dkUUID];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
}

- (PPFixup49995922Tuple)initWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPFixup49995922Tuple.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v16.receiver = self;
  v16.super_class = PPFixup49995922Tuple;
  v12 = [(PPFixup49995922Tuple *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_rowid = rowid;
    objc_storeStrong(&v12->_record, record);
    objc_storeStrong(&v13->_dkUUID, d);
  }

  return v13;
}

+ (id)tupleWithRowid:(int64_t)rowid record:(id)record dkUUID:(id)d
{
  dCopy = d;
  recordCopy = record;
  v10 = [[self alloc] initWithRowid:rowid record:recordCopy dkUUID:dCopy];

  return v10;
}

@end