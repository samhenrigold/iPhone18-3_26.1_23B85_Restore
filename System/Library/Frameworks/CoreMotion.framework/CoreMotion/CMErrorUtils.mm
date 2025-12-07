@interface CMErrorUtils
+ (id)CMErrorWithCode:(int)code userInfo:(id)info;
@end

@implementation CMErrorUtils

+ (id)CMErrorWithCode:(int)code userInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, *&code);
  v8 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v7, @"com.apple.coremotion");
  if ((code - 104) >= 8)
  {
    v12 = v8;
    v13 = MEMORY[0x1E696A578];
    if (code > 101)
    {
      if (code == 103)
      {
        v18 = MEMORY[0x1E696A588];
        v14 = @"Failure reason unknown.";
        v15 = @"Unknown failure.";
LABEL_17:
        v19 = objc_msgSend_localizedStringForKey_value_table_(v12, v9, v15, &stru_1F0E3D7A0, 0);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v20, v19, *v13);
        v22 = objc_msgSend_localizedStringForKey_value_table_(v12, v21, v14, &stru_1F0E3D7A0, 0);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, *v18);
        if (!info)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (code == 102)
      {
        v14 = @"Location Services must be available and enabled for System Services > Compass Calibration.";
        v15 = @"Unable to access location.";
        v16 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Failed to get true north.", &stru_1F0E3D7A0, 0);
        goto LABEL_14;
      }
    }

    else
    {
      if (code == 100)
      {
        return 0;
      }

      if (code == 101)
      {
        v14 = @"Rotate the device around to calibrate.";
        v15 = @"Unable to calibrate device until it is rotated.";
        v16 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Device needs to be moved.", &stru_1F0E3D7A0, 0);
LABEL_14:
        objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, *v13);
        v18 = MEMORY[0x1E696A598];
        v13 = MEMORY[0x1E696A588];
        goto LABEL_17;
      }
    }

    if (qword_1ED71C830 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v24 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "0";
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMError must be defined, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E295C0);
        }
      }

      v25 = off_1ED71C838;
      if (os_signpost_enabled(off_1ED71C838))
      {
        *buf = 68289539;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "0";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CMError must be defined", "{msg%{public}.0s:CMError must be defined, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E295C0);
        }
      }

      v26 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        v31 = 2082;
        v32 = "assert";
        v33 = 2081;
        v34 = "0";
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMError must be defined, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Error/CMErrorUtils.mm", 50, "+[CMErrorUtils CMErrorWithCode:userInfo:]");
LABEL_29:
      dispatch_once(&qword_1ED71C830, &unk_1F0E295C0);
    }
  }

  if (info)
  {
LABEL_3:
    objc_msgSend_addEntriesFromDictionary_(v6, v9, info);
  }

LABEL_4:
  v10 = MEMORY[0x1E696ABC0];

  return objc_msgSend_errorWithDomain_code_userInfo_(v10, v9, @"CMErrorDomain", code, v6);
}

@end