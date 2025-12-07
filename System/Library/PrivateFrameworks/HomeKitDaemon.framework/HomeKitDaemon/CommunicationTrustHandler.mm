@interface CommunicationTrustHandler
- (_TtC13HomeKitDaemon25CommunicationTrustHandler)init;
- (void)isTrustedPersonWithAccountHandles:(NSArray *)handles completionHandler:(id)handler;
@end

@implementation CommunicationTrustHandler

- (void)isTrustedPersonWithAccountHandles:(NSArray *)handles completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = handles;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A581CB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  handlesCopy = handles;
  selfCopy = self;
  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (_TtC13HomeKitDaemon25CommunicationTrustHandler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CommunicationTrustHandler *)&v3 init];
}

@end