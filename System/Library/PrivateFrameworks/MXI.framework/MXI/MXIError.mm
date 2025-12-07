@interface MXIError
+ (id)errorWithDescription:(id)description;
+ (id)errorWithFormattedDescription:(id)description;
+ (void)fillError:(id *)error withDescription:(id)description;
+ (void)fillError:(id *)error withFormattedDescription:(id)description;
@end

@implementation MXIError

+ (void)fillError:(id *)error withDescription:(id)description
{
  if (error)
  {
    *error = objc_msgSend_errorWithDescription_(self, a2, description, description, v4);
  }
}

+ (void)fillError:(id *)error withFormattedDescription:(id)description
{
  if (error)
  {
    v6 = MEMORY[0x277CCACA8];
    descriptionCopy = description;
    v8 = [v6 alloc];
    v11 = objc_msgSend_initWithFormat_arguments_(v8, v9, descriptionCopy, &v15, v10);

    *error = objc_msgSend_errorWithDescription_(self, v12, v11, v13, v14);
  }
}

+ (id)errorWithDescription:(id)description
{
  v39 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_msgSend_prependMessage(self, v6, v7, v8, v9);
  v14 = objc_msgSend_initWithFormat_(v5, v11, @"%@%@", v12, v13, v10, descriptionCopy);

  v16 = _mxi_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = descriptionCopy;
    _os_log_impl(&dword_22F9C3000, v16, OS_LOG_TYPE_ERROR, "[Core/MXIError.m:72] MXI error: %@", buf, 0xCu);
  }

  v17 = MEMORY[0x277CCA9B8];
  v22 = objc_msgSend_code(self, v18, v19, v20, v21);
  v23 = *MEMORY[0x277CCA450];
  v36[0] = v14;
  v24 = *MEMORY[0x277CCA498];
  v35[0] = v23;
  v35[1] = v24;
  v29 = objc_msgSend_suggestion(self, v25, v26, v27, v28);
  v36[1] = v29;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v36, v35, 2);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v32, @"com.apple.mxi.MXIErrorDomain", v22, v31);

  return v33;
}

+ (id)errorWithFormattedDescription:(id)description
{
  v4 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  v6 = [v4 alloc];
  v9 = objc_msgSend_initWithFormat_arguments_(v6, v7, descriptionCopy, &v16, v8);

  v13 = objc_msgSend_errorWithDescription_(self, v10, v9, v11, v12);

  return v13;
}

@end