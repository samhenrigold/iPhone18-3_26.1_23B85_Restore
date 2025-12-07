@interface CSInjectionService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CSInjectionService)init;
- (id)syncgetClassForName:(id)name;
- (void)amendClassReplacementMap:(id)map missBehavior:(int)behavior;
- (void)beginService;
- (void)setClassReplacementMap:(id)map missBehavior:(int)behavior;
@end

@implementation CSInjectionService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v5 = index + 1;
  if (v5 < [blockedCopy count])
  {
    [objc_msgSend(blockedCopy objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blockedCopy, v5}];
  }
}

+ (id)getSilo
{
  if (qword_100458780 != -1)
  {
    sub_100357B34();
  }

  v3 = qword_100458778;

  return v3;
}

- (CSInjectionService)init
{
  v3.receiver = self;
  v3.super_class = CSInjectionService;
  result = [(CSInjectionService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CSInjectionServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CSInjectionServiceClientProtocol];
  if (result)
  {
    result->_mapMissBehavior = 0;
  }

  return result;
}

- (void)beginService
{
  self->_classInjectionMap = objc_opt_new();

  _objc_release_x1();
}

- (void)amendClassReplacementMap:(id)map missBehavior:(int)behavior
{
  v4 = *&behavior;
  mapCopy = map;
  classInjectionMap = [(CSInjectionService *)self classInjectionMap];
  [classInjectionMap addEntriesFromDictionary:mapCopy];

  [(CSInjectionService *)self setMapMissBehavior:v4];
}

- (void)setClassReplacementMap:(id)map missBehavior:(int)behavior
{
  v4 = *&behavior;
  mapCopy = map;
  classInjectionMap = [(CSInjectionService *)self classInjectionMap];
  [classInjectionMap removeAllObjects];

  classInjectionMap2 = [(CSInjectionService *)self classInjectionMap];
  [classInjectionMap2 addEntriesFromDictionary:mapCopy];

  [(CSInjectionService *)self setMapMissBehavior:v4];
}

- (id)syncgetClassForName:(id)name
{
  nameCopy = name;
  classInjectionMap = [(CSInjectionService *)self classInjectionMap];
  v6 = [classInjectionMap objectForKey:nameCopy];

  if (v6)
  {
    v7 = NSClassFromString(v6);
LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

  mapMissBehavior = [(CSInjectionService *)self mapMissBehavior];
  if (!mapMissBehavior)
  {
    v7 = NSClassFromString(nameCopy);
    goto LABEL_7;
  }

  if (mapMissBehavior != 2)
  {
    v9 = 0;
LABEL_8:

    return v9;
  }

  v11 = sub_1000067CC(mapMissBehavior);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = nameCopy;
    v22 = 2082;
    v23 = "assert";
    v24 = 2081;
    v25 = "realClass";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v13 = sub_1000067CC(v12);
  if (os_signpost_enabled(v13))
  {
    *buf = 68289795;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = nameCopy;
    v22 = 2082;
    v23 = "assert";
    v24 = 2081;
    v25 = "realClass";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to find classForName", "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v15 = sub_1000067CC(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = nameCopy;
    v22 = 2082;
    v23 = "assert";
    v24 = 2081;
    v25 = "realClass";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unable to find classForName, name:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyCore/CSInjectionService.mm", 61, "[CSInjectionService syncgetClassForName:]");
  __break(1u);
  return result;
}

@end