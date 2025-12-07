@interface AISAIDASignInViewController
- (AISAIDASignInViewController)init;
- (uint64_t)uiController:didPresentRootViewController:;
@end

@implementation AISAIDASignInViewController

- (AISAIDASignInViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)uiController:didPresentRootViewController:
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "AIDASignInViewController uiController(_:didPresentRootViewController:)", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end