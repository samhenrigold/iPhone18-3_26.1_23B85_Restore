@interface TSCEWrappedCellRef
+ (id)invalidCellRef;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSUUID)tableID;
- (TSCEWrappedCellRef)init;
- (TSCEWrappedCellRef)initWithCellCoord:(TSUCellCoord)coord tableID:(id)d;
- (TSCEWrappedCellRef)initWithCellCoord:(TSUCellCoord)coord tableUID:(TSKUIDStruct)d;
- (TSCEWrappedCellRef)initWithCellRef:(const TSCECellRef *)ref;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEWrappedCellRef

+ (id)invalidCellRef
{
  v2 = objc_opt_new();

  return v2;
}

- (TSCEWrappedCellRef)init
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 0x7FFF7FFFFFFFLL;
  return objc_msgSend_initWithCellRef_(self, a2, v4, v2);
}

- (TSCEWrappedCellRef)initWithCellRef:(const TSCECellRef *)ref
{
  v6.receiver = self;
  v6.super_class = TSCEWrappedCellRef;
  result = [(TSCEWrappedCellRef *)&v6 init];
  if (result)
  {
    v5 = *&ref->coordinate.row;
    result->_cellRef._tableUID._upper = ref->_tableUID._upper;
    *&result->_cellRef.coordinate.row = v5;
  }

  return result;
}

- (TSCEWrappedCellRef)initWithCellCoord:(TSUCellCoord)coord tableUID:(TSKUIDStruct)d
{
  coordCopy = coord;
  dCopy = d;
  return objc_msgSend_initWithCellRef_(self, a2, &coordCopy, d._lower);
}

- (TSCEWrappedCellRef)initWithCellCoord:(TSUCellCoord)coord tableID:(id)d
{
  dCopy = d;
  v11[0] = coord;
  v11[1] = TSKMakeUIDStructFromNSUUID();
  v11[2] = v7;
  v9 = objc_msgSend_initWithCellRef_(self, v7, v11, v8);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return objc_msgSend_initWithCellRef_(v4, v5, &self->_cellRef, v6);
}

- (TSKUIDStruct)tableUID
{
  upper = self->_cellRef._tableUID._upper;
  lower = self->_cellRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (NSUUID)tableID
{
  upper = self->_cellRef._tableUID._upper;
  if (*&self->_cellRef._tableUID == 0)
  {
    v4 = 0;
  }

  else
  {
    v6._lower = self->_cellRef._tableUID._lower;
    v6._upper = upper;
    v4 = TSKUIDStruct::NSUUIDValue(&v6);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  v10 = equalCopy && (objc_msgSend_cellRef(equalCopy, v5, v6, v7), coordinate = self->_cellRef.coordinate, coordinate.row == v12) && ((v12 ^ *&coordinate) & 0x101FFFF00000000) == 0 && self->_cellRef._tableUID._lower == v13 && self->_cellRef._tableUID._upper == v14;

  return v10;
}

- (BOOL)isValid
{
  coordinate = self->_cellRef.coordinate;
  if (coordinate.row == 0x7FFFFFFF || (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  if (self->_cellRef._tableUID._lower)
  {
    return 1;
  }

  return self->_cellRef._tableUID._upper != 0;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end