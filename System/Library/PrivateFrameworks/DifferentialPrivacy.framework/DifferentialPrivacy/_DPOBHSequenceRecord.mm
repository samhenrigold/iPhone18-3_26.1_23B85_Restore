@interface _DPOBHSequenceRecord
+ (id)recordWithKey:(id)key sequence:(id)sequence bitPosition:(int64_t)position bitValue:(BOOL)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (_DPOBHSequenceRecord)initWithKey:(id)key sequence:(id)sequence bitPosition:(int64_t)position bitValue:(BOOL)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)description;
- (id)jsonString;
@end

@implementation _DPOBHSequenceRecord

- (_DPOBHSequenceRecord)initWithKey:(id)key sequence:(id)sequence bitPosition:(int64_t)position bitValue:(BOOL)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  v15.receiver = self;
  v15.super_class = _DPOBHSequenceRecord;
  v11 = [(_DPOBHRecord *)&v15 initWithKey:key creationDate:submitted submitted:id objectId:date];
  v12 = v11;
  if (v11)
  {
    v11->_sequenceBitPosition = position;
    v11->_sequenceBitValue = value;
    plainSequence = v11->_plainSequence;
    v11->_plainSequence = 0;
  }

  return v12;
}

+ (id)recordWithKey:(id)key sequence:(id)sequence bitPosition:(int64_t)position bitValue:(BOOL)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  submittedCopy = submitted;
  valueCopy = value;
  idCopy = id;
  sequenceCopy = sequence;
  keyCopy = key;
  v19 = [[self alloc] initWithKey:keyCopy sequence:sequenceCopy bitPosition:position bitValue:valueCopy creationDate:submittedCopy submitted:idCopy objectId:date];

  return v19;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { ", v6];

  if (self->_sequenceBitValue)
  {
    v7 = @"+1";
  }

  else
  {
    v7 = @"-1";
  }

  [v4 appendFormat:@"sequenceBitPosition=%lld ; sequenceBitValue=%@ ; ", self->_sequenceBitPosition, v7];
  v11.receiver = self;
  v11.super_class = _DPOBHSequenceRecord;
  v8 = [(_DPOBHRecord *)&v11 description];
  [v4 appendFormat:@"%@ }", v8];

  v9 = [v4 copy];
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DPOBHSequenceRecord, [(_DPOBHRecord *)&v9 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainSequence = [(_DPOBHSequenceRecord *)self plainSequence];
    [v5 setPlainSequence:plainSequence];

    [v5 setSequenceBitPosition:{-[_DPOBHSequenceRecord sequenceBitPosition](self, "sequenceBitPosition")}];
    [v5 setSequenceBitValue:{-[_DPOBHSequenceRecord sequenceBitValue](self, "sequenceBitValue")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)copyFromManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = _DPOBHSequenceRecord, [(_DPOBHRecord *)&v10 copyFromManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    plainSequence = [v5 plainSequence];
    [(_DPOBHSequenceRecord *)self setPlainSequence:plainSequence];

    -[_DPOBHSequenceRecord setSequenceBitPosition:](self, "setSequenceBitPosition:", [v5 sequenceBitPosition]);
    sequenceBitValue = [v5 sequenceBitValue];

    [(_DPOBHSequenceRecord *)self setSequenceBitValue:sequenceBitValue];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonString
{
  v3 = MEMORY[0x277CCACA8];
  sequenceBitPosition = [(_DPOBHSequenceRecord *)self sequenceBitPosition];
  sequenceBitValue = [(_DPOBHSequenceRecord *)self sequenceBitValue];
  v6 = @"-1";
  if (sequenceBitValue)
  {
    v6 = @"+1";
  }

  return [v3 stringWithFormat:@"%lld, %@", sequenceBitPosition, v6];
}

@end