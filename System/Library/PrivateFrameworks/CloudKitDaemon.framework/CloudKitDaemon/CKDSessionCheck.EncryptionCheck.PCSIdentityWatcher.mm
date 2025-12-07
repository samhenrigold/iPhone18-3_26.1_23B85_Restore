@interface CKDSessionCheck.EncryptionCheck.PCSIdentityWatcher
- (NSUUID)token;
- (void)pcsIdentityChanged;
@end

@implementation CKDSessionCheck.EncryptionCheck.PCSIdentityWatcher

- (NSUUID)token
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2250E2D1C(v5);
  v6.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

- (void)pcsIdentityChanged
{
  selfCopy = self;
  sub_2250E2E28();
}

@end