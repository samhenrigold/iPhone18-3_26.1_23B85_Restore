@interface CoreImageLibrary
- (CoreImageLibrary)init;
- (id)kernelWithFunctionName:(id)name constants:(id)constants;
- (id)url;
@end

@implementation CoreImageLibrary

- (id)url
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_2956B1E54;
  v5[3] = &unk_29EDD4928;
  v5[4] = self;
  v6 = @"CoreImageKernels.ci";
  if (qword_2A18BA308 != -1)
  {
    dispatch_once(&qword_2A18BA308, v5);
  }

  v2 = qword_2A18BA2F8;
  v3 = qword_2A18BA2F8;

  return v2;
}

- (CoreImageLibrary)init
{
  v21.receiver = self;
  v21.super_class = CoreImageLibrary;
  v2 = [(CoreImageLibrary *)&v21 init];
  v5 = v2;
  if (v2)
  {
    v6 = MEMORY[0x29EDB9180];
    v7 = objc_msgSend_url(v2, v3, v4);
    v9 = objc_msgSend_kernelNamesFromMetalLibrary_(v6, v8, v7);

    if (v9)
    {
      if (objc_msgSend_count(v9, v10, v11))
      {
        v13 = objc_msgSend_setWithArray_(MEMORY[0x29EDB8E50], v12, v9);
        objc_msgSend_setAvailableNames_(v5, v14, v13);
      }

      else
      {
        v15 = uni_logger_compile(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_2956CD6A8(v15);
        }

        objc_msgSend_setAvailableNames_(v5, v16, 0);
      }
    }
  }

  v17 = objc_msgSend_availableNames(v5, v3, v4);
  if (v17)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v19;
}

- (id)kernelWithFunctionName:(id)name constants:(id)constants
{
  nameCopy = name;
  constantsCopy = constants;
  v10 = objc_msgSend_availableNames(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, nameCopy);

  if (v12)
  {
    v16 = MEMORY[0x29EDB9180];
    v17 = objc_msgSend_url(self, v14, v15);
    v25 = 0;
    v19 = objc_msgSend_cachedKernelWithFunctionName_fromMetalLibrary_constants_error_(v16, v18, nameCopy, v17, constantsCopy, &v25);
    v20 = v25;

    if (!v19 || v20)
    {
      v23 = uni_logger_compile(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_2956CD75C(nameCopy, v20, v23);
      }

      v22 = 0;
    }

    else
    {
      v22 = v19;
    }
  }

  else
  {
    v20 = uni_logger_compile(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_2956CD700(nameCopy);
    }

    v22 = 0;
  }

  return v22;
}

@end