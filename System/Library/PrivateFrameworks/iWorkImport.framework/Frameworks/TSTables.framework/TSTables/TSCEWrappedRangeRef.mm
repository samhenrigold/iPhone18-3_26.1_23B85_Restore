@interface TSCEWrappedRangeRef
+ (id)invalidRangeRef;
- (BOOL)isEqual:(id)equal;
- (NSUUID)tableID;
- (TSCERangeCoordinate)rangeCoord;
- (TSCERangeRef)rangeRef;
- (TSCEWrappedRangeRef)init;
- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)coord tableID:(id)d;
- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)coord tableUID:(TSKUIDStruct)d;
- (TSCEWrappedRangeRef)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCEWrappedRangeRef)initWithRangeRefRect:(TSUCellRect)rect tableID:(id)d;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEWrappedRangeRef

+ (id)invalidRangeRef
{
  v2 = objc_opt_new();

  return v2;
}

- (TSCEWrappedRangeRef)initWithRangeRef:(const TSCERangeRef *)ref
{
  v6.receiver = self;
  v6.super_class = TSCEWrappedRangeRef;
  result = [(TSCEWrappedRangeRef *)&v6 init];
  if (result)
  {
    range = ref->range;
    result->_rangeRef._tableUID = ref->_tableUID;
    result->_rangeRef.range = range;
  }

  return result;
}

- (TSCEWrappedRangeRef)init
{
  v4 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v5 = 0;
  v6 = 0;
  return objc_msgSend_initWithRangeRef_(self, a2, &v4, v2);
}

- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)coord tableUID:(TSKUIDStruct)d
{
  v5[0] = coord;
  v5[1] = d;
  return objc_msgSend_initWithRangeRef_(self, a2, v5, *&coord._bottomRight);
}

- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)coord tableID:(id)d
{
  bottomRight = coord._bottomRight;
  topLeft = coord._topLeft;
  dCopy = d;
  v12[0] = topLeft;
  v12[1] = bottomRight;
  v12[2] = TSKMakeUIDStructFromNSUUID();
  v12[3] = v8;
  v10 = objc_msgSend_initWithRangeRef_(self, v8, v12, v9);

  return v10;
}

- (TSCEWrappedRangeRef)initWithRangeRefRect:(TSUCellRect)rect tableID:(id)d
{
  size = rect.size;
  origin = rect.origin;
  dCopy = d;
  v15[2] = TSKMakeUIDStructFromNSUUID();
  v15[3] = v8;
  v9 = origin;
  v10 = size;
  v15[0] = __C(v9, v10);
  v15[1] = v11;
  v13 = objc_msgSend_initWithRangeRef_(self, v11, v15, v12);

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return objc_msgSend_initWithRangeRef_(v4, v5, &self->_rangeRef, v6);
}

- (TSKUIDStruct)tableUID
{
  upper = self->_rangeRef._tableUID._upper;
  lower = self->_rangeRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (NSUUID)tableID
{
  lower = self->_rangeRef._tableUID._lower;
  p_tableUID = &self->_rangeRef._tableUID;
  if (lower || self->_rangeRef._tableUID._upper)
  {
    v6 = TSKUIDStruct::NSUUIDValue(p_tableUID);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSCERangeCoordinate)rangeCoord
{
  bottomRight = self->_rangeRef.range._bottomRight;
  topLeft = self->_rangeRef.range._topLeft;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  if (equalCopy)
  {
    objc_msgSend_rangeRef(equalCopy, v5, v6, v7);
    v9 = TSCERangeRef::operator==(&self->_rangeRef.range._topLeft, v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TSCERangeRef)rangeRef
{
  v3 = *&self->_tableUID._upper;
  retstr->range = *&self->range._bottomRight.row;
  retstr->_tableUID = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 8) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end