@interface ATXSportsServer
+ (ATXSportsServer)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)requestedSchedulesForTeamsWithReply:(id)reply;
@end

@implementation ATXSportsServer

+ (ATXSportsServer)sharedInstance
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813905F0;

  return v3;
}

- (void)requestedSchedulesForTeamsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_226836628();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_226875C80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_226875C90;
  v12[5] = v11;
  selfCopy = self;
  sub_22679FE8C(0, 0, v7, &unk_226875CA0, v12);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2267F6B20(connectionCopy);

  return v9 & 1;
}

@end