@interface TPBodyInfo
- (TPBodyInfo)initWithBodyStorage:(id)storage;
- (TSDInfo)parentInfo;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)setGeometry:(id)geometry;
@end

@implementation TPBodyInfo

- (TPBodyInfo)initWithBodyStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = TPBodyInfo;
  v6 = [(TPBodyInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bodyStorage, storage);
  }

  return v7;
}

- (void)setGeometry:(id)geometry
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPBodyInfo setGeometry:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyInfo.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 65, 0, "can't set geometry on a body");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentInfo, 0);
  }
}

- (TSDInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

@end