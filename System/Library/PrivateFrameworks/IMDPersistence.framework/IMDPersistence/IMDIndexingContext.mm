@interface IMDIndexingContext
+ (IMDIndexingContext)contextWithReason:(int64_t)reason;
- (IMDIndexingContext)initWithCoder:(id)coder;
- (IMDIndexingContext)initWithDictionary:(id)dictionary;
- (id)_initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t fullReindex:(BOOL)reindex messagesContributingToFullReindex:(int64_t)fullReindex chatsContributingToFullReindex:(int64_t)toFullReindex oldestFullReindexMessageGUID:(id)d preflight:(BOOL)self0 ignoreRejections:(BOOL)self1 ignoreThrottle:(BOOL)self2 forceDeferral:(BOOL)self3 laneOverride:(id)self4 needsPriorityCheck:(BOOL)self5 additionalReasons:(id)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t;
- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDIndexingContext

- (IMDIndexingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v50 = objc_msgSend_decodeBoolForKey_(coderCopy, v4, @"ri", v5);
  v49 = objc_msgSend_decodeIntegerForKey_(coderCopy, v6, @"r", v7);
  v48 = objc_msgSend_decodeBoolForKey_(coderCopy, v8, @"b", v9);
  v47 = objc_msgSend_decodeBoolForKey_(coderCopy, v10, @"f", v11);
  v46 = objc_msgSend_decodeIntegerForKey_(coderCopy, v12, @"m", v13);
  v16 = objc_msgSend_decodeIntegerForKey_(coderCopy, v14, @"c", v15);
  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"o");
  v22 = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"p", v21);
  v25 = objc_msgSend_decodeBoolForKey_(coderCopy, v23, @"i", v24);
  v28 = objc_msgSend_decodeBoolForKey_(coderCopy, v26, @"t", v27);
  v31 = objc_msgSend_decodeBoolForKey_(coderCopy, v29, @"d", v30);
  v32 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"l");
  v37 = objc_msgSend_decodeBoolForKey_(coderCopy, v35, @"np", v36);
  v38 = objc_opt_class();
  v40 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v39, v38, @"a");

  v45 = v37;
  HIBYTE(v44) = v31;
  BYTE2(v44) = v28;
  BYTE1(v44) = v25;
  LOBYTE(v44) = v22;
  v42 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, v41, v50, v49, v48, v47, v46, v16, v19, v44, v34, v45, v40);

  return v42;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = coderCopy;
  if (self->_reindexing)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v5, 1, @"ri");
    coderCopy = v12;
  }

  reason = self->_reason;
  if (reason)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, reason, @"r");
    coderCopy = v12;
  }

  if (self->_runningViaBGST)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"b");
    coderCopy = v12;
  }

  if (self->_fullReindex)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"f");
    coderCopy = v12;
  }

  messagesContributingToFullReindex = self->_messagesContributingToFullReindex;
  if (messagesContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, messagesContributingToFullReindex, @"m");
    coderCopy = v12;
  }

  chatsContributingToFullReindex = self->_chatsContributingToFullReindex;
  if (chatsContributingToFullReindex)
  {
    objc_msgSend_encodeInteger_forKey_(v12, v5, chatsContributingToFullReindex, @"c");
    coderCopy = v12;
  }

  oldestFullReindexMessageGUID = self->_oldestFullReindexMessageGUID;
  if (oldestFullReindexMessageGUID)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, oldestFullReindexMessageGUID, @"o");
    coderCopy = v12;
  }

  if (self->_preflight)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"p");
    coderCopy = v12;
  }

  if (self->_ignoreRejections)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"i");
    coderCopy = v12;
  }

  if (self->_ignoreThrottle)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"t");
    coderCopy = v12;
  }

  if (self->_forceDeferral)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"d");
    coderCopy = v12;
  }

  laneOverride = self->_laneOverride;
  if (laneOverride)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, laneOverride, @"l");
    coderCopy = v12;
  }

  if (self->_needsPriorityCheck)
  {
    objc_msgSend_encodeBool_forKey_(v12, v5, 1, @"np");
    coderCopy = v12;
  }

  additionalReasons = self->_additionalReasons;
  if (additionalReasons)
  {
    objc_msgSend_encodeObject_forKey_(v12, v5, additionalReasons, @"a");
    coderCopy = v12;
  }
}

+ (IMDIndexingContext)contextWithReason:(int64_t)reason
{
  v4 = [IMDIndexingContext alloc];
  v6 = objc_msgSend_initForReindexing_reason_(v4, v5, 0, reason);

  return v6;
}

- (id)_initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t fullReindex:(BOOL)reindex messagesContributingToFullReindex:(int64_t)fullReindex chatsContributingToFullReindex:(int64_t)toFullReindex oldestFullReindexMessageGUID:(id)d preflight:(BOOL)self0 ignoreRejections:(BOOL)self1 ignoreThrottle:(BOOL)self2 forceDeferral:(BOOL)self3 laneOverride:(id)self4 needsPriorityCheck:(BOOL)self5 additionalReasons:(id)self6
{
  dCopy = d;
  overrideCopy = override;
  reasonsCopy = reasons;
  v29.receiver = self;
  v29.super_class = IMDIndexingContext;
  v23 = [(IMDIndexingContext *)&v29 init];
  v24 = v23;
  if (v23)
  {
    v23->_reindexing = reindexing;
    v23->_runningViaBGST = t;
    v23->_fullReindex = reindex;
    v23->_reason = reason;
    v23->_messagesContributingToFullReindex = fullReindex;
    v23->_chatsContributingToFullReindex = toFullReindex;
    objc_storeStrong(&v23->_oldestFullReindexMessageGUID, d);
    v24->_preflight = preflight;
    v24->_ignoreRejections = rejections;
    v24->_ignoreThrottle = throttle;
    v24->_forceDeferral = deferral;
    objc_storeStrong(&v24->_laneOverride, override);
    v24->_needsPriorityCheck = check;
    objc_storeStrong(&v24->_additionalReasons, reasons);
  }

  return v24;
}

- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t
{
  v7 = 0;
  v6 = 0;
  return objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, a2, reindexing, reason, t, 0, 0, 0, 0, v6, 0, v7, 0);
}

- (id)initForReindexing:(BOOL)reindexing reason:(int64_t)reason runningViaBGST:(BOOL)t userInfo:(id)info
{
  result = objc_msgSend_initWithDictionary_(self, a2, info, reason);
  if (result)
  {
    *(result + 8) = reindexing;
    *(result + 2) = reason;
    *(result + 9) = t;
  }

  return result;
}

- (IMDIndexingContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"f", v6);
  v11 = objc_msgSend_BOOLValue(v7, v8, v9, v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"np", v13);
  v18 = objc_msgSend_BOOLValue(v14, v15, v16, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v19, @"a", v20);

  v26 = v18;
  v25 = 0;
  v23 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(self, v22, 0, 0, 0, v11, 0, 0, 0, v25, 0, v26, v21);

  return v23;
}

- (id)dictionaryRepresentation
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_fullReindex)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, 1, v5);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v8, v7, @"f");
  }

  if (self->_needsPriorityCheck)
  {
    v9 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, 1, v5);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v10, v9, @"np");
  }

  if (objc_msgSend_count(self->_additionalReasons, v3, v4, v5))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v11, self->_additionalReasons, @"a");
  }

  if (objc_msgSend_count(v6, v11, v12, v13))
  {
    v17 = objc_msgSend_copy(v6, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [IMDIndexingContext alloc];
  reindexing = self->_reindexing;
  runningViaBGST = self->_runningViaBGST;
  fullReindex = self->_fullReindex;
  reason = self->_reason;
  messagesContributingToFullReindex = self->_messagesContributingToFullReindex;
  chatsContributingToFullReindex = self->_chatsContributingToFullReindex;
  oldestFullReindexMessageGUID = self->_oldestFullReindexMessageGUID;
  v10 = *&self->_preflight;
  needsPriorityCheck = self->_needsPriorityCheck;
  laneOverride = self->_laneOverride;
  v16 = objc_msgSend_copy(self->_additionalReasons, v13, v14, v15);
  v21 = needsPriorityCheck;
  v20 = v10;
  v18 = objc_msgSend__initForReindexing_reason_runningViaBGST_fullReindex_messagesContributingToFullReindex_chatsContributingToFullReindex_oldestFullReindexMessageGUID_preflight_ignoreRejections_ignoreThrottle_forceDeferral_laneOverride_needsPriorityCheck_additionalReasons_(v23, v17, reindexing, reason, runningViaBGST, fullReindex, messagesContributingToFullReindex, chatsContributingToFullReindex, oldestFullReindexMessageGUID, v20, laneOverride, v21, v16);

  return v18;
}

@end