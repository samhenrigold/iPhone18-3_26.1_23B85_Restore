@interface STAMSStorefrontClient
- (void)activeiTunesAccountWithCompletionHandler:(id)handler;
- (void)bagCountryCodeWithCompletionHandler:(id)handler;
- (void)storefrontForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account withCompletionHandler:(id)handler;
@end

@implementation STAMSStorefrontClient

- (void)bagCountryCodeWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B83DDE3C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B83E9988;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9990;
  v12[5] = v11;

  sub_1B83CD2A8(0, 0, v7, &unk_1B83E9998, v12);
}

- (void)activeiTunesAccountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B83DDE3C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B83E9958;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9960;
  v12[5] = v11;

  sub_1B83CD2A8(0, 0, v7, &unk_1B83E9968, v12);
}

- (void)storefrontForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = account;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B83DDE3C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B83E9938;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B83E9940;
  v16[5] = v15;
  dCopy = d;
  accountCopy = account;

  sub_1B83CD2A8(0, 0, v11, &unk_1B83E9948, v16);
}

@end