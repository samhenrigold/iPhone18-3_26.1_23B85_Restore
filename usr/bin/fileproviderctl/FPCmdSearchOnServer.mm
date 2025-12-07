@interface FPCmdSearchOnServer
+ (void)cmdSearchOnServerWithArgc:(int)argc argv:(const char *)argv completionHandler:(id)handler;
- (FPCmdSearchOnServer)init;
@end

@implementation FPCmdSearchOnServer

+ (void)cmdSearchOnServerWithArgc:(int)argc argv:(const char *)argv completionHandler:(id)handler
{
  sub_10000EFA0(&qword_1000213D8, &qword_100014C00);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = argc;
  *(v12 + 24) = argv;
  *(v12 + 32) = v11;
  *(v12 + 40) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100014C10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100014C20;
  v15[5] = v14;
  sub_10000F978(0, 0, v10, &unk_100014C30, v15);
}

- (FPCmdSearchOnServer)init
{
  v3.receiver = self;
  v3.super_class = FPCmdSearchOnServer;
  return [(FPCmdSearchOnServer *)&v3 init];
}

@end