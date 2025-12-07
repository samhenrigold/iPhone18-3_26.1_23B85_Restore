@interface TSCHStyleOwnerReference
+ (id)styleOwnerReferenceWithType:(int)type index:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (Class)nonstyleClass;
- (Class)styleClass;
- (TSCHStyleOwnerReference)initWithStyleOwnerType:(int)type index:(unint64_t)index;
- (id)description;
@end

@implementation TSCHStyleOwnerReference

+ (id)styleOwnerReferenceWithType:(int)type index:(unint64_t)index
{
  v5 = *&type;
  v6 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithStyleOwnerType_index_(v6, v7, v8, v9, v10, v5, index);

  return v11;
}

- (TSCHStyleOwnerReference)initWithStyleOwnerType:(int)type index:(unint64_t)index
{
  v28.receiver = self;
  v28.super_class = TSCHStyleOwnerReference;
  v6 = [(TSCHStyleOwnerReference *)&v28 init];
  v11 = v6;
  if (v6)
  {
    v6->_type = type;
    v6->_index = index;
    if ((type - 1) >= 5)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHStyleOwnerReference initWithStyleOwnerType:index:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 312, 0, "Unknown TSCHStyleOwnerType: %lu", type);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
      return 0;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUSpecificCast();

  if (v5 && (v10 = objc_msgSend_type(self, v6, v7, v8, v9), v10 == objc_msgSend_type(v5, v11, v12, v13, v14)))
  {
    v18 = objc_msgSend_index(self, v15, v16, v17);
    v22 = v18 == objc_msgSend_index(v5, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)description
{
  v46.receiver = self;
  v46.super_class = TSCHStyleOwnerReference;
  v3 = [(TSCHStyleOwnerReference *)&v46 description];
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);

  v9 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_type(self, v10, v11, v12, v13) - 1;
  if (v14 > 4)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = off_27A6B94D8[v14];
  }

  v20 = objc_msgSend_index(self, v15, v16, v17);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = @"All";
    objc_msgSend_stringWithFormat_(v9, v19, v21, v22, v23, @" type: %@ index: %@", v18, @"All");
  }

  else
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = objc_msgSend_index(self, v21, v22, v23);
    v24 = objc_msgSend_numberWithUnsignedInteger_(v25, v27, v28, v29, v30, v26);
    objc_msgSend_stringWithFormat_(v9, v31, v32, v33, v34, @" type: %@ index: %@", v18, v24);
  }
  v35 = ;
  v40 = objc_msgSend_length(v8, v36, v37, v38, v39);
  objc_msgSend_insertString_atIndex_(v8, v41, v42, v43, v44, v35, v40 - 1);

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v8;
}

- (Class)styleClass
{
  type = self->_type;
  if (type <= 2)
  {
    if (type == 1 || type == 2)
    {
      goto LABEL_8;
    }
  }

  else if (type == 3 || type == 4 || type == 5)
  {
LABEL_8:
    v7 = objc_opt_class();
    goto LABEL_9;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHStyleOwnerReference styleClass]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 373, 0, "Invalid style owner type %ld", self->_type);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  v7 = 0;
LABEL_9:

  return v7;
}

- (Class)nonstyleClass
{
  type = self->_type;
  if (type <= 2)
  {
    if (type == 1 || type == 2)
    {
      goto LABEL_8;
    }
  }

  else if (type == 3 || type == 4 || type == 5)
  {
LABEL_8:
    v6 = objc_opt_class();
    goto LABEL_9;
  }

  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHStyleOwnerReference nonstyleClass]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 397, 0, "Why are we here?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  v6 = 0;
LABEL_9:

  return v6;
}

@end