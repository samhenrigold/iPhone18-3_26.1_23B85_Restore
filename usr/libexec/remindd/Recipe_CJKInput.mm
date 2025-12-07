@interface Recipe_CJKInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation Recipe_CJKInput

- (NSSet)featureNames
{
  v2 = sub_10038D894(&off_1008E45A0);
  sub_100034610(&unk_1008E45C0);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3.super.isa;
}

- (id)featureValueForName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == 1954047348 && v5 == 0xE400000000000000)
  {

    0xE400000000000000, v7, v8, v9, v10, v11, v12, v13;
LABEL_5:
    v22 = *&self->text[8];

    v23 = String._bridgeToObjectiveC()();
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31 = [objc_opt_self() featureValueWithString:v23];

    goto LABEL_7;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v6, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    goto LABEL_5;
  }

  v31 = 0;
LABEL_7:

  return v31;
}

@end