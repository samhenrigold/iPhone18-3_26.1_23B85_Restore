@interface WBSWebsitePasskeyAvailabilityInfo
- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)init;
- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)initWithSupportsPasskeys:(BOOL)passkeys enrollURL:(id)l manageURL:(id)rL;
@end

@implementation WBSWebsitePasskeyAvailabilityInfo

- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)initWithSupportsPasskeys:(BOOL)passkeys enrollURL:(id)l manageURL:(id)rL
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if (l)
  {
    sub_1B8565908();
    v15 = sub_1B8565938();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_1B8565938();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (rL)
  {
    sub_1B8565908();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1B8565938();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, v17, 1, v18);
  v20 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v19(self + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL, 1, 1, v18);
  v21 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v19(self + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL, 1, 1, v18);
  *(&self->super.isa + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys) = passkeys;
  swift_beginAccess();
  sub_1B854167C(v14, self + v20);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(v12, self + v21);
  swift_endAccess();
  v22 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo(0);
  v26.receiver = self;
  v26.super_class = v22;
  v23 = [(WBSWebsitePasskeyAvailabilityInfo *)&v26 init];
  sub_1B85416EC(v12);
  sub_1B85416EC(v14);
  return v23;
}

- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end