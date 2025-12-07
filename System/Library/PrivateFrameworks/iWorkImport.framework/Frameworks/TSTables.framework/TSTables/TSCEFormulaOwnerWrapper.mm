@interface TSCEFormulaOwnerWrapper
- (BOOL)isEqual:(id)equal;
- (TSCEFormulaOwnerWrapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d;
- (id)description;
@end

@implementation TSCEFormulaOwnerWrapper

- (TSCEFormulaOwnerWrapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaOwnerWrapper initWithFormulaOwnerUID:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTranslationFlags.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 49, 0, "Requires a valid ownerUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v16.receiver = self;
  v16.super_class = TSCEFormulaOwnerWrapper;
  result = [(TSCEFormulaOwnerWrapper *)&v16 init];
  if (result)
  {
    result->_ownerUID = *d;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqualToTSCEFormulaOwnerWrapper = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToTSCEFormulaOwnerWrapper = objc_msgSend_isEqualToTSCEFormulaOwnerWrapper_(self, v6, v5, v7);
  }

  else
  {
    isEqualToTSCEFormulaOwnerWrapper = 0;
  }

  return isEqualToTSCEFormulaOwnerWrapper;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSCEFormulaOwnerWrapper;
  v4 = [(TSCEFormulaOwnerWrapper *)&v10 description];
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"%@ %@", v7, v4, v5);

  return v8;
}

@end