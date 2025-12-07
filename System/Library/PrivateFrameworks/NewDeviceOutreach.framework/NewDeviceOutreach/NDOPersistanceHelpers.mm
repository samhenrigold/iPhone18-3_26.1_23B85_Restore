@interface NDOPersistanceHelpers
+ (uint64_t)clearAllCaches;
- (_TtC8ndoagent21NDOPersistanceHelpers)init;
@end

@implementation NDOPersistanceHelpers

- (_TtC8ndoagent21NDOPersistanceHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDOPersistanceHelpers();
  return [(NDOPersistanceHelpers *)&v3 init];
}

+ (uint64_t)clearAllCaches
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v44 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  static NDOConstants.ndoDirPath.getter();
  v49 = objc_opt_self();
  defaultManager = [v49 defaultManager];
  v48 = v12;
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v51 = 0;
  v17 = [defaultManager contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:4 error:&v51];

  v18 = v51;
  v50 = v6;
  if (v17)
  {
    v44 = v5;
    v45 = v1;
    v46 = v0;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    v21 = *(v19 + 16);
    if (!v21)
    {
LABEL_7:

      v29 = sub_100049C1C();
      v30 = v44;
      v1 = v45;
      v0 = v46;
      (*(v45 + 16))(v44, v29, v46);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Sucessfully cleared cache", v33, 2u);
      }

      v6 = v50;
      goto LABEL_15;
    }

    v22 = 0;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
      }

      v23 = v50;
      (*(v7 + 16))(v10, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v50);
      defaultManager2 = [v49 defaultManager];
      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      (*(v7 + 8))(v10, v23);
      v51 = 0;
      LODWORD(v23) = [defaultManager2 removeItemAtURL:v27 error:&v51];

      if (!v23)
      {
        break;
      }

      ++v22;
      v28 = v51;
      if (v21 == v22)
      {
        goto LABEL_7;
      }
    }

    v34 = v51;

    v1 = v45;
    v0 = v46;
    v6 = v50;
  }

  else
  {
    v34 = v51;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v35 = sub_100049C1C();
  v30 = v47;
  (*(v1 + 16))(v47, v35, v0);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v1;
    v40 = swift_slowAlloc();
    *v38 = 138412290;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "Cache clearing error: %@", v38, 0xCu);
    sub_100020470(v40);
    v1 = v39;
    v6 = v50;
  }

LABEL_15:
  v42 = v48;
  (*(v1 + 8))(v30, v0);
  return (*(v7 + 8))(v42, v6);
}

@end