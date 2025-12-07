@interface TNUIAccountRemoteUI
- (_TtC20ThreatNotificationUI19TNUIAccountRemoteUI)init;
- (id)accountsForAccountManager:(id)manager;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally;
@end

@implementation TNUIAccountRemoteUI

- (_TtC20ThreatNotificationUI19TNUIAccountRemoteUI)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  accountStore = [managerCopy accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v6 = *MEMORY[0x277CED1A0];
    v7 = aa_primaryAppleAccount;
    specialized Dictionary.subscript.setter(aa_primaryAppleAccount, v6);
  }

  type metadata accessor for AIDAServiceType(0);
  type metadata accessor for ACAccount();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  selfCopy = self;
  if (v5())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v12[3] = type metadata accessor for TNUIAccountRemoteUI(0);
    v12[4] = &protocol witness table for TNUIAccountRemoteUI;
    v12[0] = selfCopy;
    v9 = *(v7 + 8);
    v10 = selfCopy;
    v9(v12, modallyCopy, ObjectType, v7);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
  }
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  errorCopy = error;
  TNUIAccountRemoteUI.remoteUIRequestComplete(_:error:)(v9, error);

  (*(v7 + 8))(v9, v6);
}

@end