@interface CLPlacemarkInternal
- (CLPlacemarkInternal)init;
@end

@implementation CLPlacemarkInternal

- (CLPlacemarkInternal)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "[GEOLocation class]";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "[GEOLocation class]";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Do not use CLPlaceMark when GeoServices is missing", "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E538);
      }
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "[GEOLocation class]";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Do not use CLPlaceMark when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLPlacemark.m", 70, "[CLPlacemarkInternal init]");
  }

  v7.receiver = self;
  v7.super_class = CLPlacemarkInternal;
  return [(CLPlacemarkInternal *)&v7 init];
}

@end