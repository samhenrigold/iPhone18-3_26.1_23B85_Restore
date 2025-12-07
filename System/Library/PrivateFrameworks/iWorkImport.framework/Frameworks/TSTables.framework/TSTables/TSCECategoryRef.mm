@interface TSCECategoryRef
+ (TSKUIDStruct)groupByRootUid;
+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid;
+ (int)relativeLevelOfAncestorGroupUid:(const TSKUIDStruct *)uid;
- (BOOL)convertToBadRef;
- (BOOL)isBadRef;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)mayReturnArray;
- (BOOL)restoreFromBadRef;
- (TSCECategoryRef)init;
- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel;
- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d relGroupUID:(const TSKUIDStruct *)iD absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel preserveFlags:(const TSUPreserveFlags *)self0;
- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d relGroupUID:(const TSKUIDStruct *)iD absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel preserveFlags:(const TSUPreserveFlags *)self0 relativeColumn:(signed __int16)self1 options:(unsigned __int8)self2;
- (TSKUIDStruct)absoluteGroupUid;
- (TSKUIDStruct)columnUid;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)pivotTableUid;
- (TSKUIDStruct)relativeGroupUid;
- (id)copyAndReplaceGroupUIDs:(const TSKUIDStruct *)ds;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setAsAbsoluteWithGroupUid:(const TSKUIDStruct *)uid;
- (void)setShowAggregateName:(BOOL)name;
@end

@implementation TSCECategoryRef

- (TSCECategoryRef)init
{
  v3.receiver = self;
  v3.super_class = TSCECategoryRef;
  result = [(TSCECategoryRef *)&v3 init];
  if (result)
  {
    result->_absoluteGroupUid = 0u;
    result->_relativeGroupUid = 0u;
    result->_columnUid = 0u;
    result->_groupByUid = 0u;
    *&result->_aggType = -65535;
    result->_preserveFlags._flags = 1;
    result->_relativeColumn = 0x7FFF;
    result->_options = 0;
  }

  return result;
}

- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d relGroupUID:(const TSKUIDStruct *)iD absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel preserveFlags:(const TSUPreserveFlags *)self0 relativeColumn:(signed __int16)self1 options:(unsigned __int8)self2
{
  v19.receiver = self;
  v19.super_class = TSCECategoryRef;
  result = [(TSCECategoryRef *)&v19 init];
  if (result)
  {
    result->_groupByUid = *d;
    result->_columnUid = *columnUid;
    result->_relativeGroupUid = *iD;
    result->_absoluteGroupUid = *uid;
    result->_aggType = type;
    result->_groupLevel = level;
    result->_aggrIndexLevel = indexLevel;
    result->_preserveFlags = flags->_flags;
    result->_relativeColumn = column;
    result->_options = options;
  }

  return result;
}

- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d relGroupUID:(const TSKUIDStruct *)iD absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel preserveFlags:(const TSUPreserveFlags *)self0
{
  BYTE2(v12) = 0;
  LOWORD(v12) = 0x7FFF;
  return objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(self, a2, d, iD, uid, columnUid, type, level, indexLevel, flags, v12);
}

- (TSCECategoryRef)initWithGroupByUID:(const TSKUIDStruct *)d absGroupUid:(const TSKUIDStruct *)uid columnUid:(const TSKUIDStruct *)columnUid aggType:(unsigned __int8)type groupLevel:(unsigned __int8)level aggrIndexLevel:(unsigned __int16)indexLevel
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = 1;
  BYTE2(v10) = 0;
  LOWORD(v10) = 0x7FFF;
  return objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(self, a2, d, v12, uid, columnUid, type, level, indexLevel, &v11, v10);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCECategoryRef alloc];
  BYTE2(v8) = self->_options;
  LOWORD(v8) = self->_relativeColumn;
  aggrIndexLevel = self->_aggrIndexLevel;
  return objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(v4, v5, &self->_groupByUid, &self->_relativeGroupUid, &self->_absoluteGroupUid, &self->_columnUid, self->_aggType, self->_groupLevel, aggrIndexLevel, &self->_preserveFlags, v8);
}

- (unint64_t)hash
{
  if (self->_aggrIndexLevel == 0xFFFF)
  {
    aggrIndexLevel = 11;
  }

  else
  {
    aggrIndexLevel = self->_aggrIndexLevel;
  }

  v3 = veorq_s8(veorq_s8(self->_groupByUid, self->_relativeGroupUid), veorq_s8(self->_columnUid, self->_absoluteGroupUid));
  return *&veor_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) + self->_aggType + self->_groupLevel + aggrIndexLevel;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v39 = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v10 = v6;
    if (v6 && self->_columnUid._lower == objc_msgSend_columnUid(v6, v7, v8, v9) && self->_columnUid._upper == v11 && self->_absoluteGroupUid._lower == objc_msgSend_absoluteGroupUid(v10, v11, v12, v13) && self->_absoluteGroupUid._upper == v14 && (aggType = self->_aggType, aggType == objc_msgSend_type(v10, v14, v15, v16)) && (groupLevel = self->_groupLevel, groupLevel == objc_msgSend_groupLevel(v10, v18, v19, v20)) && (aggrIndexLevel = self->_aggrIndexLevel, aggrIndexLevel == objc_msgSend_aggrIndexLevel(v10, v22, v23, v24)) && self->_groupByUid._lower == objc_msgSend_groupByUid(v10, v26, v27, v28) && self->_groupByUid._upper == v29 && self->_preserveFlags._flags == objc_msgSend_preserveFlags(v10, v29, v30, v31) && self->_relativeGroupUid._lower == objc_msgSend_relativeGroupUid(v10, v32, v33, v34) && self->_relativeGroupUid._upper == v35)
    {
      options = self->_options;
      v39 = options == objc_msgSend_options(v10, v35, v36, v37);
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (BOOL)isValid
{
  if (!self->_groupByUid._lower && !self->_groupByUid._upper)
  {
    return 0;
  }

  if (self->_absoluteGroupUid._lower || self->_absoluteGroupUid._upper || self->_relativeGroupUid._lower)
  {
    return 1;
  }

  return self->_relativeGroupUid._upper != 0;
}

- (BOOL)mayReturnArray
{
  if (self->_aggType == 10)
  {
    return 1;
  }

  return objc_msgSend_refersToPivotTable(self, a2, v2, v3) && ((objc_msgSend_refersToPivotTableRows(self, v6, v7, v8) & 1) != 0 || (objc_msgSend_refersToPivotTableColumns(self, v9, v10, v11) & 1) != 0);
}

- (TSKUIDStruct)pivotTableUid
{
  if (objc_msgSend_refersToPivotTable(self, a2, v2, v3))
  {
    lower = self->_groupByUid._lower;
    upper = self->_groupByUid._upper;
  }

  else
  {
    upper = 0;
    lower = 0;
  }

  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setShowAggregateName:(BOOL)name
{
  if (name)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFB | v3;
}

- (id)copyAndReplaceGroupUIDs:(const TSKUIDStruct *)ds
{
  v5 = objc_msgSend_copy(self, a2, ds, v3);
  objc_msgSend_setAbsoluteGroupUid_(v5, v6, ds->_lower, ds->_upper);
  return v5;
}

- (void)setAsAbsoluteWithGroupUid:(const TSKUIDStruct *)uid
{
  objc_msgSend_setAbsoluteGroupUid_(self, a2, uid->_lower, uid->_upper);
  objc_msgSend_setRelativeGroupUid_(self, v4, 0, 0);
  self->_preserveFlags._flags |= 2u;
}

- (BOOL)isBadRef
{
  if (!self->_absoluteGroupUid._lower && !self->_absoluteGroupUid._upper && !self->_relativeGroupUid._lower && !self->_relativeGroupUid._upper || (objc_msgSend_isRelativeAncestorGroupUid_(TSCECategoryRef, a2, &self->_absoluteGroupUid, v2) & 1) != 0)
  {
    return 1;
  }

  if (self->_relativeGroupUid._lower || self->_relativeGroupUid._upper)
  {
    return objc_msgSend_isRelativeAncestorGroupUid_(TSCECategoryRef, v4, &self->_relativeGroupUid, v5) ^ 1;
  }

  return 0;
}

- (BOOL)convertToBadRef
{
  if (objc_msgSend_isBadRef(self, a2, v2, v3))
  {
    return 0;
  }

  lower = self->_absoluteGroupUid._lower;
  upper = self->_absoluteGroupUid._upper;
  objc_msgSend_setAbsoluteGroupUid_(self, v5, self->_relativeGroupUid._lower, self->_relativeGroupUid._upper);
  objc_msgSend_setRelativeGroupUid_(self, v9, lower, upper);

  return objc_msgSend_isBadRef(self, v10, v11, v12);
}

- (BOOL)restoreFromBadRef
{
  isBadRef = objc_msgSend_isBadRef(self, a2, v2, v3);
  if (isBadRef)
  {
    lower = self->_absoluteGroupUid._lower;
    upper = self->_absoluteGroupUid._upper;
    objc_msgSend_setAbsoluteGroupUid_(self, v6, self->_relativeGroupUid._lower, self->_relativeGroupUid._upper);
    objc_msgSend_setRelativeGroupUid_(self, v9, lower, upper);
    LOBYTE(isBadRef) = objc_msgSend_isBadRef(self, v10, v11, v12) ^ 1;
  }

  return isBadRef;
}

+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid
{
  if (uid < 1)
  {
    goto LABEL_5;
  }

  v4 = *&uid;
  if (uid >= 7)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCECategoryRef relativeAncestorGroupUid:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRef.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 300, 0, "levelsUp of %d is too large.", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = uid | 0xF4240u;
LABEL_6:
  v15 = v5;
  result._upper = v15;
  result._lower = v5;
  return result;
}

+ (int)relativeLevelOfAncestorGroupUid:(const TSKUIDStruct *)uid
{
  v3 = uid->_lower != uid->_upper || uid->_lower - 1000001 >= 6;
  v4 = uid->_lower - 1000000;
  if (v3)
  {
    v4 = 0;
  }

  if (*uid == 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (TSKUIDStruct)groupByRootUid
{
  v2 = 1;
  v3 = 0;
  result._upper = v3;
  result._lower = v2;
  return result;
}

- (TSKUIDStruct)groupByUid
{
  upper = self->_groupByUid._upper;
  lower = self->_groupByUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)relativeGroupUid
{
  upper = self->_relativeGroupUid._upper;
  lower = self->_relativeGroupUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)absoluteGroupUid
{
  upper = self->_absoluteGroupUid._upper;
  lower = self->_absoluteGroupUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)columnUid
{
  upper = self->_columnUid._upper;
  lower = self->_columnUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end