@interface TSTTableHeaderStorageBucket
- (TSTTableHeaderStorageBucket)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTTableHeaderStorageBucket

- (TSTTableHeaderStorageBucket)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = TSTTableHeaderStorageBucket;
  v5 = [(TSTTableHeaderStorageBucket *)&v10 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v5->_bounds = *MEMORY[0x277D81490];
    v5->_styleCount = 0;
    v7 = objc_alloc_init(MEMORY[0x277D81330]);
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[48], v6);

  if (*(v7 + 48) != 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorageBucket(Archiving) loadFromUnarchiver:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 597, 0, "Don't know how to handle this bucket hash function!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = *(v7 + 32);
  v21 = objc_msgSend_preUFFVersion(unarchiverCopy, v8, v9, v10);
  v22 = objc_alloc_init(MEMORY[0x277D81330]);
  data = self->_data;
  self->_data = v22;

  self->_styleCount = 0;
  if (v20 >= 1)
  {
    v26 = 0;
    v27 = 8;
    do
    {
      TST::HeaderStorageBucket_Header::HeaderStorageBucket_Header(v35, *(*(v7 + 40) + v27));
      v34 = 0;
      v28 = sub_22148024C([TSTTableHeaderInfo alloc], v35, unarchiverCopy, &v34);
      v30 = v28;
      if (v21 <= 0x5200561C4 && sub_2216F7E9C(v28) && sub_2216F7E9C(v30) != 1)
      {
        if ((v26 & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(self, v29, v31, v32);
        }

        v26 = 1;
        sub_2216F7EA8(v30, 1);
      }

      objc_msgSend_setObject_forKey_(self->_data, v29, v30, v34);

      TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header(v35);
      v27 += 8;
      --v20;
    }

    while (v20);
  }

  self->_bounds = *MEMORY[0x277D81490];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2211AE1D8;
  v33[3] = &unk_27845E3F8;
  v33[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v24, v33, v25);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2211AE538, off_2812E4498[48]);

  *(v6 + 16) |= 1u;
  *(v6 + 48) = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  data = self->_data;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_2211AE40C;
  v22 = &unk_278460968;
  v25 = v6;
  v8 = archiverCopy;
  v23 = v8;
  v24 = &v26;
  objc_msgSend_foreach_(data, v9, &v19, v10);
  if (self->_styleCount != v27[3])
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Cached style count was wrong!", "[TSTTableHeaderStorageBucket(Archiving) saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 666, v19, v20, v21, v22);
    v11 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableHeaderStorageBucket(Archiving) saveToArchiver:]", v13);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v14, v17, 666, 1, "Cached style count was wrong!");

    TSUCrashBreakpoint();
    abort();
  }

  _Block_object_dispose(&v26, 8);
}

@end