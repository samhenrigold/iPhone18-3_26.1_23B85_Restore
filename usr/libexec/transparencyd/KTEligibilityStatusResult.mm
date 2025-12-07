@interface KTEligibilityStatusResult
+ (id)statusResultWithFailureWithElement:(id)element error:(id)error;
+ (id)statusResultWithFailureWithElement:(id)element error:(id)error dateStored:(id)stored;
+ (id)statusResultWithSuccessWithElement:(id)element;
+ (id)statusResultWithSuccessWithElement:(id)element dateStored:(id)stored;
- (NSDate)dateStored;
- (NSString)description;
- (_TtC13transparencyd25KTEligibilityStatusResult)init;
@end

@implementation KTEligibilityStatusResult

- (NSDate)dateStored
{
  v3 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_1000AB050(self + OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored, &v12 - v4, &qword_100383FB0, &unk_1002D6690);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

- (NSString)description
{
  selfCopy = self;
  sub_100130444();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (id)statusResultWithSuccessWithElement:(id)element
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = objc_allocWithZone(ObjCClassMetadata);
  *&v11[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v12 = &v11[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v13 = v7;
  v13[1] = v9;
  sub_1000AB050(v6, &v11[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v16.receiver = v11;
  v16.super_class = ObjCClassMetadata;

  v14 = objc_msgSendSuper2(&v16, "init");
  sub_1000057C4(v6, &qword_100383FB0, &unk_1002D6690);

  return v14;
}

+ (id)statusResultWithSuccessWithElement:(id)element dateStored:(id)stored
{
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (stored)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1000AB050(v10, v8, &qword_100383FB0, &unk_1002D6690);
  v17 = objc_allocWithZone(ObjCClassMetadata);
  *&v17[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_result] = 0;
  v18 = &v17[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_errorString];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v17[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_element];
  *v19 = v11;
  v19[1] = v13;
  sub_1000AB050(v8, &v17[OBJC_IVAR____TtC13transparencyd25KTEligibilityStatusResult_dateStored], &qword_100383FB0, &unk_1002D6690);
  v22.receiver = v17;
  v22.super_class = ObjCClassMetadata;

  v20 = objc_msgSendSuper2(&v22, "init");
  sub_1000057C4(v8, &qword_100383FB0, &unk_1002D6690);

  sub_1000057C4(v10, &qword_100383FB0, &unk_1002D6690);

  return v20;
}

+ (id)statusResultWithFailureWithElement:(id)element error:(id)error dateStored:(id)stored
{
  v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (stored)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  errorCopy = error;
  v16 = sub_1001432B8(v10, v12, errorCopy, v9);

  sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);

  return v16;
}

+ (id)statusResultWithFailureWithElement:(id)element error:(id)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  errorCopy = error;
  v9 = sub_1001435FC(v5, v7, errorCopy);

  return v9;
}

- (_TtC13transparencyd25KTEligibilityStatusResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end