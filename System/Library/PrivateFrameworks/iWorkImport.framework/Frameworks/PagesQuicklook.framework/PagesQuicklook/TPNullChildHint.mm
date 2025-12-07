@interface TPNullChildHint
- (TPNullChildHint)initWithContext:(id)context hint:(id)hint;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setHint:(id)hint;
@end

@implementation TPNullChildHint

- (TPNullChildHint)initWithContext:(id)context hint:(id)hint
{
  contextCopy = context;
  hintCopy = hint;
  if (hintCopy)
  {
    v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v13, v14, v15, v16, v8, v9, v10, v11);

    if (v17 != hintCopy)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "[TPNullChildHint initWithContext:hint:]", v19, v20, v21);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v29, v30, v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v37, v38, v39, v40, v41, v27, v36, 1193, 0, "should only be used for null hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v47, v48, v49, v50, v43, v44, v45, v46);
    }
  }

  v53.receiver = self;
  v53.super_class = TPNullChildHint;
  v51 = [(TPNullChildHint *)&v53 initWithContext:contextCopy];

  return v51;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(unarchiverCopy, v3, v7, v8, v9, v10, off_2812F85B8[38], v4, v5, v6);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, v6, v7, v8, v9, sub_275FE7008, off_2812F85B8[38], v4, v5);
}

- (void)setHint:(id)hint
{
  hintCopy = hint;
  v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v8, v9, v10, v11, v4, v5, v6, v7);

  if (v12 != hintCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "[TPNullChildHint setHint:]", v14, v15, v16);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 1211, 0, "should only be used for null hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }
}

@end