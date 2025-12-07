@interface _IMPersistentTaskReportSetBuilder
- (_IMPersistentTaskReportSetBuilder)init;
- (id)_reportForFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason;
- (id)reset;
- (void)recordFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason count:(int64_t)count;
@end

@implementation _IMPersistentTaskReportSetBuilder

- (_IMPersistentTaskReportSetBuilder)init
{
  v8.receiver = self;
  v8.super_class = _IMPersistentTaskReportSetBuilder;
  v2 = [(_IMPersistentTaskReportSetBuilder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reportSetHashMap = v2->_reportSetHashMap;
    v2->_reportSetHashMap = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    reportSet = v2->_reportSet;
    v2->_reportSet = v5;
  }

  return v2;
}

- (id)_reportForFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason
{
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"f%lul%lur%lu", lane, flag, lane, reason);
  v13 = objc_msgSend_reportSetHashMap(self, v10, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v9, v15);

  if (!v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69A81D0]);
    v16 = objc_msgSend_initWithTaskFlag_lane_reason_(v17, v18, flag, lane, reason);
    v22 = objc_msgSend_reportSetHashMap(self, v19, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v16, v9);

    v27 = objc_msgSend_reportSet(self, v24, v25, v26);
    objc_msgSend_addObject_(v27, v28, v16, v29);
  }

  v30 = v16;

  return v30;
}

- (void)recordFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason count:(int64_t)count
{
  v9 = objc_msgSend__reportForFlag_lane_reason_(self, a2, flag, lane, reason);
  objc_msgSend_incrementCount_(v9, v7, count, v8);
}

- (id)reset
{
  v5 = objc_msgSend_reportSetHashMap(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v5, v6, v7, v8);

  v12 = objc_msgSend_reportSet(self, v9, v10, v11);
  v16 = objc_msgSend_copy(v12, v13, v14, v15);

  v20 = objc_msgSend_reportSet(self, v17, v18, v19);
  objc_msgSend_removeAllObjects(v20, v21, v22, v23);

  return v16;
}

@end