@interface AccountProvider
- (uint64_t)handleActiveAccountDidChangeNotificationWithNotification:;
@end

@implementation AccountProvider

- (uint64_t)handleActiveAccountDidChangeNotificationWithNotification:
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AccountProvider#handleActiveAccountDidChangeNotification clearing the account cache", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_280071AD0 != -1)
  {
    swift_once();
  }

  return (*(*off_280072BE8 + 200))();
}

@end