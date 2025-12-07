@interface NTKFoghornWaterSubmersionUtilities
+ (double)lastDiveMaxDepth;
@end

@implementation NTKFoghornWaterSubmersionUtilities

+ (double)lastDiveMaxDepth
{
  v3 = CFPreferencesCopyAppValue(@"lastDive", @"com.apple.Depth");
  if (v3)
  {
    v39 = 0;
    v4 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v2, v3, 0, &v39);
    v5 = v39;
    v7 = v5;
    if (v5)
    {
      v8 = NTKFoghornFaceBundleLogObject(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_23BE7D410(v7, v8);
      }
    }

    objc_opt_class();
    v11 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"maxDepth", v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"nominal", v15);
        if (!v16)
        {
          v16 = objc_msgSend_objectForKeyedSubscript_(v13, v17, @"shallow", v18);
          if (!v16)
          {
            v16 = objc_msgSend_objectForKeyedSubscript_(v13, v19, @"depthExceedingNominalRange", v20);
          }
        }

        v21 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = objc_msgSend_allValues(v21, v22, v23, v24);
          v29 = objc_msgSend_firstObject(v25, v26, v27, v28);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = objc_msgSend_objectForKeyedSubscript_(v29, v30, @"canonicalValue", v31);
            if (v32)
            {
              v36 = v32;
              objc_msgSend_doubleValue(v32, v33, v34, v35);
              v11 = v37;
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end