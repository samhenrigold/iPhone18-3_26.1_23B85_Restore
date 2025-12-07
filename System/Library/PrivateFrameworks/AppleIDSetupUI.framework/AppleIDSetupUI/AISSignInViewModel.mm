@interface AISSignInViewModel
- (UIImage)headerImage;
- (_TtC14AppleIDSetupUI18AISSignInViewModel)init;
- (id)authenticationContext;
- (uint64_t)signInViewControllerDidCancel:;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)willAuthenticateWithContext:(id)context;
@end

@implementation AISSignInViewModel

- (UIImage)headerImage
{
  v2 = sub_240986400();

  return v2;
}

- (_TtC14AppleIDSetupUI18AISSignInViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(handler);
  v11 = sub_240A2BEBC();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = sub_240A2C24C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_240A2C21C();
  selfCopy = self;

  v15 = sub_240A2C20C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v11;
  v16[5] = selfCopy;
  v16[6] = sub_240963BB4;
  v16[7] = v12;
  sub_2409230D4(0, 0, v9, &unk_240A34810, v16);
}

- (void)willAuthenticateWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_240986694(contextCopy);
}

- (id)authenticationContext
{
  selfCopy = self;
  v3 = sub_240986060();

  return v3;
}

- (uint64_t)signInViewControllerDidCancel:
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "AISSignInViewModel: signInViewControllerDidCancel", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end