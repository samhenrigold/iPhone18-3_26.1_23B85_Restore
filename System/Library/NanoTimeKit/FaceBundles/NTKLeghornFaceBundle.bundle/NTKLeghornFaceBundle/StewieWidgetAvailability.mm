@interface StewieWidgetAvailability
+ (BOOL)isAnyServiceAllowedForState:(id)state includePermittedAtLocation:(BOOL)location;
- (BOOL)shouldAddSkipperComplication;
@end

@implementation StewieWidgetAvailability

- (BOOL)shouldAddSkipperComplication
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_create("com.apple.NanoTimeKit.NTKLeghornFace.TelephonyQueue", 0);
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v6 = objc_msgSend_initWithQueue_(v4, v5, v3);
  v32 = 0;
  v8 = objc_msgSend_getStewieSupport_(v6, v7, &v32);
  v9 = v32;
  v12 = v9;
  if (v9)
  {
    v13 = NTKFoghornFaceBundleLogObject(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7458(v12, v13);
    }

    goto LABEL_9;
  }

  v14 = objc_msgSend_hwSupport(v8, v10, v11);
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v23 = NTKFoghornFaceBundleLogObject(v14, v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
      _os_log_impl(&dword_23BEB1000, v23, OS_LOG_TYPE_DEFAULT, "%s - No HW support", buf, 0xCu);
    }

    LOBYTE(isAnyServiceAllowedForState_includePermittedAtLocation) = 0;
    goto LABEL_12;
  }

  v16 = objc_alloc(MEMORY[0x277CC3768]);
  v18 = objc_msgSend_initWithDelegate_queue_(v16, v17, self, v3);
  objc_msgSend_start(v18, v19, v20);
  v23 = objc_msgSend_getState(v18, v21, v22);

  if (v23)
  {
    v26 = objc_opt_class();
    isAnyServiceAllowedForState_includePermittedAtLocation = objc_msgSend_isAnyServiceAllowedForState_includePermittedAtLocation_(v26, v27, v23, 1);
    v30 = NTKFoghornFaceBundleLogObject(isAnyServiceAllowedForState_includePermittedAtLocation, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
      v35 = 1024;
      v36 = isAnyServiceAllowedForState_includePermittedAtLocation;
      _os_log_impl(&dword_23BEB1000, v30, OS_LOG_TYPE_DEFAULT, "%s - isAnyServiceAllowed: %{BOOL}d", buf, 0x12u);
    }
  }

  else
  {
    v30 = NTKFoghornFaceBundleLogObject(v24, v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE74E4(v30);
    }

    LOBYTE(isAnyServiceAllowedForState_includePermittedAtLocation) = 0;
  }

LABEL_12:
  return isAnyServiceAllowedForState_includePermittedAtLocation;
}

+ (BOOL)isAnyServiceAllowedForState:(id)state includePermittedAtLocation:(BOOL)location
{
  locationCopy = location;
  v31 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284EB74C8, v6, &v24, v30, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v25;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(&unk_284EB74C8);
        }

        v13 = objc_msgSend_integerValue(*(*(&v24 + 1) + 8 * v12), v8, v9);
        isAllowedService = objc_msgSend_isAllowedService_(stateCopy, v14, v13);
        isDemoAllowedForService = objc_msgSend_isDemoAllowedForService_(stateCopy, v16, v13);
        if ((isAllowedService & 1) != 0 || isDemoAllowedForService)
        {
          v20 = NTKFoghornFaceBundleLogObject(isDemoAllowedForService, v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v29 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
            v22 = "%s - Found at least one available service";
            goto LABEL_19;
          }

LABEL_20:
          v21 = 1;
          goto LABEL_21;
        }

        objc_msgSend_statusReasonForService_(stateCopy, v18, v13);
        if (locationCopy)
        {
          isPermittedAtCurrentLocation = objc_msgSend_isPermittedAtCurrentLocation_(stateCopy, v8, v13);
          if (isPermittedAtCurrentLocation)
          {
            v20 = NTKFoghornFaceBundleLogObject(isPermittedAtCurrentLocation, v8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v29 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
              v22 = "%s - Found service permitted at current location";
LABEL_19:
              _os_log_impl(&dword_23BEB1000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
            }

            goto LABEL_20;
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284EB74C8, v8, &v24, v30, 16);
      v10 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v20 = NTKFoghornFaceBundleLogObject(v7, v8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
    _os_log_impl(&dword_23BEB1000, v20, OS_LOG_TYPE_DEFAULT, "%s - No services are available", buf, 0xCu);
  }

  v21 = 0;
LABEL_21:

  return v21;
}

@end