@interface FBAUserDefaultsMigrator
+ (void)run;
- (_TtC18Feedback_Assistant23FBAUserDefaultsMigrator)init;
@end

@implementation FBAUserDefaultsMigrator

- (_TtC18Feedback_Assistant23FBAUserDefaultsMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBAUserDefaultsMigrator(self, a2);
  return [(FBAUserDefaultsMigrator *)&v3 init];
}

+ (void)run
{
  sharedUserDefaults = [objc_opt_self() sharedUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [sharedUserDefaults BOOLForKey:v2];

  if (v3)
  {
    if (qword_100108E38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000466AC(v4, qword_10010AE40);
    standardUserDefaults = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(standardUserDefaults, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, standardUserDefaults, v6, "User defaults migrator already completed, skipping.", v7, 2u);
    }
  }

  else
  {
    standardUserDefaults = [objc_opt_self() standardUserDefaults];
    if (qword_100108E38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000466AC(v8, qword_10010AE40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Gathering defaults", v11, 2u);
    }

    v12 = FBKAgreedLegalVersionKey;
    v13 = [standardUserDefaults integerForKey:FBKAgreedLegalVersionKey];
    v14 = [standardUserDefaults stringForKey:@"LastSuccessfulLogin"];
    if (v14)
    {
      v15 = v14;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v28 = 0;
      v17 = 0;
    }

    v18 = FBKSuppressPrivacyNoticePreferencesKey;
    v29 = [standardUserDefaults BOOLForKey:FBKSuppressPrivacyNoticePreferencesKey, v28];
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Migrating defaults to shared domain", v21, 2u);
    }

    if (v13 && ![sharedUserDefaults integerForKey:v12])
    {
      [sharedUserDefaults setInteger:v13 forKey:v12];
    }

    if (v17)
    {
      v22 = [sharedUserDefaults stringForKey:@"LastSuccessfulLogin"];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = String._bridgeToObjectiveC()();

        [sharedUserDefaults setObject:v23 forKey:@"LastSuccessfulLogin"];
      }
    }

    if (v29 && ([sharedUserDefaults BOOLForKey:v18] & 1) == 0)
    {
      [sharedUserDefaults setBool:1 forKey:v18];
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Deleting defaults in app domain", v26, 2u);
    }

    [standardUserDefaults removeObjectForKey:v12];
    [standardUserDefaults removeObjectForKey:@"LastSuccessfulLogin"];
    [standardUserDefaults removeObjectForKey:v18];
    v27 = String._bridgeToObjectiveC()();
    [sharedUserDefaults setBool:1 forKey:v27];

    sharedUserDefaults = v27;
  }
}

@end