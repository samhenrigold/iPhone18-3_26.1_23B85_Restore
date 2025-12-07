@interface IDSToolSwiftBridge
+ (IDSToolSwiftBridge)shared;
+ (NSDictionary)commandAbstractsByName;
- (IDSCLIToolDelegate)delegate;
- (IDSToolSwiftBridge)init;
- (id)help:(id)help;
- (void)run:(NSArray *)run completionHandler:(id)handler;
@end

@implementation IDSToolSwiftBridge

+ (IDSToolSwiftBridge)shared
{
  v2 = qword_1EB2DC2F0;
  if (qword_1EB2DC2F0)
  {
    v3 = qword_1EB2DC2F0;
  }

  else
  {
    v4 = [objc_allocWithZone(IDSToolSwiftBridge) init];
    v5 = qword_1EB2DC2F0;
    qword_1EB2DC2F0 = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;

  return v3;
}

- (IDSCLIToolDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSDictionary)commandAbstractsByName
{
  sub_1A7D582C4(v2);
  v3 = sub_1A7E22160();

  return v3;
}

- (void)run:(NSArray *)run completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = run;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A7E226D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E4A870;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E48E60;
  v14[5] = v13;
  runCopy = run;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v9, &unk_1A7E45700, v14);
}

- (id)help:(id)help
{
  v4 = sub_1A7E22290();
  v6 = v5;
  selfCopy = self;
  sub_1A7D58B30(v4, v6, v8);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1A7E22260();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (IDSToolSwiftBridge)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = IDSToolSwiftBridge;
  return [(IDSToolSwiftBridge *)&v4 init];
}

@end