@interface IDSToolObjCRequestHandler
+ (void)handleMessage:(NSData *)message completionHandler:(id)handler;
- (IDSToolObjCRequestHandler)init;
@end

@implementation IDSToolObjCRequestHandler

+ (void)handleMessage:(NSData *)message completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = message;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A7E226D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E48E58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E48E60;
  v14[5] = v13;
  messageCopy = message;
  sub_1A7DE5274(0, 0, v9, &unk_1A7E45700, v14);
}

- (IDSToolObjCRequestHandler)init
{
  v3.receiver = self;
  v3.super_class = IDSToolObjCRequestHandler;
  return [(IDSToolObjCRequestHandler *)&v3 init];
}

@end