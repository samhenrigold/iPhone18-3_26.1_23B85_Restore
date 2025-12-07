@interface IMDPersistentTask
+ (id)_dataForUserInfo:(id)info;
+ (id)_decodeUserInfoData:(id)data;
+ (id)keyPathsToColumns;
- (IMDPersistentTask)initWithCoder:(id)coder;
- (IMDPersistentTask)initWithGUID:(id)d flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info retryCount:(int64_t)count;
- (IMDPersistentTask)initWithGUIDForSpotlight:(id)spotlight flag:(unint64_t)flag context:(id)context;
- (IMDPersistentTask)initWithRowID:(int64_t)d guid:(id)guid group:(unint64_t)group flag:(unint64_t)flag flagPriority:(int64_t)priority lane:(unint64_t)lane reason:(int64_t)reason reasonPriority:(int64_t)self0 userInfo:(id)self1 retryCount:(int64_t)self2;
- (IMDPersistentTask)initWithStoreDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDPersistentTask

- (IMDPersistentTask)initWithRowID:(int64_t)d guid:(id)guid group:(unint64_t)group flag:(unint64_t)flag flagPriority:(int64_t)priority lane:(unint64_t)lane reason:(int64_t)reason reasonPriority:(int64_t)self0 userInfo:(id)self1 retryCount:(int64_t)self2
{
  guidCopy = guid;
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = IMDPersistentTask;
  v21 = [(IMDPersistentTask *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_rowID = d;
    objc_storeStrong(&v21->_guid, guid);
    v22->_group = group;
    v22->_flag = flag;
    v22->_flagPriority = priority;
    v22->_lane = lane;
    v22->_reason = reason;
    v22->_reasonPriority = reasonPriority;
    objc_storeStrong(&v22->_userInfo, info);
    v22->_retryCount = count;
  }

  return v22;
}

- (IMDPersistentTask)initWithGUID:(id)d flag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason userInfo:(id)info retryCount:(int64_t)count
{
  infoCopy = info;
  dCopy = d;
  v18 = objc_msgSend_groupForFlag_(IMDPersistentTaskUtilities, v16, flag, v17);
  v21 = objc_msgSend_priorityForFlag_(IMDPersistentTaskUtilities, v19, flag, v20);
  v23 = objc_msgSend_priorityForReason_flag_(IMDPersistentTaskUtilities, v22, reason, flag);
  v25 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v24, -1, dCopy, v18, flag, v21, lane, reason, v23, infoCopy, count);

  return v25;
}

- (IMDPersistentTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"r", v5);
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"g");
  v35 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"fg", v10);
  v13 = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, @"f", v12);
  v16 = objc_msgSend_decodeIntegerForKey_(coderCopy, v14, @"fp", v15);
  v19 = objc_msgSend_decodeIntegerForKey_(coderCopy, v17, @"l", v18);
  v22 = objc_msgSend_decodeIntegerForKey_(coderCopy, v20, @"s", v21);
  v25 = objc_msgSend_decodeIntegerForKey_(coderCopy, v23, @"sp", v24);
  v26 = IMGetAttributedInfoArrayAllowlistedClasses();
  v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v27, v26, @"u");
  v31 = objc_msgSend_decodeIntegerForKey_(coderCopy, v29, @"c", v30);

  v33 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v32, v36, v8, v35, v13, v16, v19, v22, v25, v28, v31);
  return v33;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rowID = self->_rowID;
  v18 = coderCopy;
  if (rowID)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v5, rowID, @"r");
    coderCopy = v18;
  }

  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_guid, @"g");
  group = self->_group;
  if (group)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, group, @"fg");
  }

  flag = self->_flag;
  if (flag)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, flag, @"f");
  }

  flagPriority = self->_flagPriority;
  if (flagPriority)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, flagPriority, @"fp");
  }

  lane = self->_lane;
  if (lane)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, lane, @"l");
  }

  reason = self->_reason;
  if (reason)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, reason, @"s");
  }

  reasonPriority = self->_reasonPriority;
  if (reasonPriority)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v7, reasonPriority, @"sp");
  }

  if (objc_msgSend_count(self->_userInfo, v7, reasonPriority, v8))
  {
    objc_msgSend_encodeObject_forKey_(v18, v15, self->_userInfo, @"u");
  }

  retryCount = self->_retryCount;
  v17 = v18;
  if (retryCount)
  {
    objc_msgSend_encodeInteger_forKey_(v18, v15, retryCount, @"c");
    v17 = v18;
  }
}

- (IMDPersistentTask)initWithStoreDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v72 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v4, @"ROWID", v5);
  v68 = objc_msgSend_integerValue(v72, v6, v7, v8);
  v66 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"guid", v10);
  v71 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"flag_group", v12);
  v65 = objc_msgSend_integerValue(v71, v13, v14, v15);
  v69 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v16, @"flag", v17);
  v64 = objc_msgSend_integerValue(v69, v18, v19, v20);
  v67 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v21, @"flag_priority", v22);
  v63 = objc_msgSend_integerValue(v67, v23, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"lane", v27);
  v32 = objc_msgSend_integerValue(v28, v29, v30, v31);
  v35 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"reason", v34);
  v39 = objc_msgSend_integerValue(v35, v36, v37, v38);
  v42 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v40, @"reason_priority", v41);
  v46 = objc_msgSend_integerValue(v42, v43, v44, v45);
  v49 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v47, @"user_info", v48);
  v52 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v50, v49, v51);
  v55 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v53, @"retry_count", v54);

  v59 = objc_msgSend_integerValue(v55, v56, v57, v58);
  v61 = objc_msgSend_initWithRowID_guid_group_flag_flagPriority_lane_reason_reasonPriority_userInfo_retryCount_(self, v60, v68, v66, v65, v64, v63, v32, v39, v46, v52, v59);

  return v61;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_flag(self, a2, v2, v3);
  v9 = objc_msgSend_nameForFlag_(IMDPersistentTaskUtilities, v7, v6, v8);
  v13 = objc_msgSend_reason(self, v10, v11, v12);
  v17 = objc_msgSend_flag(self, v14, v15, v16);
  v19 = objc_msgSend_nameForReason_inFlag_(IMDPersistentTaskUtilities, v18, v13, v17);
  v22 = objc_msgSend_stringWithFormat_(v5, v20, @"<IMDPersistentTask: %p flag=%@ reason=%@>", v21, self, v9, v19);

  return v22;
}

+ (id)_decodeUserInfoData:(id)data
{
  dataCopy = data;
  if (objc_msgSend_length(dataCopy, v4, v5, v6))
  {
    v12 = 0;
    v8 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v7, dataCopy, 0, 0, &v12);
    v9 = v8;
    v10 = 0;
    if (!v12)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_dataForUserInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_count(infoCopy, v4, v5, v6))
  {
    v13 = 0;
    v8 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v7, infoCopy, 200, 0, &v13);
    v9 = v13;
    if (v9)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE480(v9, v10);
      }

      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5AF8 != -1)
  {
    sub_1B7CEE4F8();
  }

  v3 = qword_1EDBE5B20;

  return v3;
}

- (IMDPersistentTask)initWithGUIDForSpotlight:(id)spotlight flag:(unint64_t)flag context:(id)context
{
  contextCopy = context;
  spotlightCopy = spotlight;
  v13 = objc_msgSend_laneOverride(contextCopy, v10, v11, v12);

  if (v13)
  {
    v17 = objc_msgSend_laneOverride(contextCopy, v14, v15, v16);
    v21 = objc_msgSend_unsignedIntegerValue(v17, v18, v19, v20);
  }

  else
  {
    v25 = objc_msgSend_reason(contextCopy, v14, v15, v16);
    v21 = objc_msgSend_laneForFlag_reason_(IMDPersistentTaskUtilities, v26, flag, v25);
  }

  v27 = objc_msgSend_reason(contextCopy, v22, v23, v24);
  v31 = objc_msgSend_dictionaryRepresentation(contextCopy, v28, v29, v30);
  v33 = objc_msgSend_initWithGUID_flag_lane_reason_userInfo_retryCount_(self, v32, spotlightCopy, flag, v21, v27, v31, 0);

  return v33;
}

@end