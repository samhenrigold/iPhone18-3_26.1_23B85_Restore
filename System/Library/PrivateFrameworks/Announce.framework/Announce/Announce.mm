uint64_t sub_2237CA2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2237CA390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2237CA440()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2237CA548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2237CA5A0()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA5D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2237CA618()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2237CA764()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA7A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2237CA7F0()
{
  MEMORY[0x223DEC650](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2237CA880()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2237CA8C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id ANLogHandleAnnouncement(uint64_t a1)
{
  if (ANLogHandleAnnouncement_once != -1)
  {
    ANLogHandleAnnouncement_cold_1();
  }

  v2 = ANLogHandleAnnouncement_logger;

  return v2;
}

uint64_t __ANLogHandleAnnouncement_block_invoke()
{
  ANLogHandleAnnouncement_logger = os_log_create("com.apple.intercom", "Announcement");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ANLogHandleVolumeController_block_invoke()
{
  ANLogHandleVolumeController_logger = os_log_create("com.apple.intercom", "VolumeController");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleLocalPlaybackSession(uint64_t a1)
{
  if (ANLogHandleLocalPlaybackSession_once != -1)
  {
    ANLogHandleLocalPlaybackSession_cold_1();
  }

  v2 = ANLogHandleLocalPlaybackSession_logger;

  return v2;
}

void sub_2237D13F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2237D1740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D1C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237D2034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2237D25B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237D27C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2237D2A2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleLocalPlaybackSession_block_invoke()
{
  ANLogHandleLocalPlaybackSession_logger = os_log_create("com.apple.intercom", "LocalPlaybackSession");

  return MEMORY[0x2821F96F8]();
}

os_log_t ANLogWithCategory(char *category)
{
  v1 = os_log_create("com.apple.intercom", category);

  return v1;
}

uint64_t ANLogBuildCategoryName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    v6 = v5;
    if (([v4 an_isLocalDevice] & 1) == 0)
    {
      v7 = [v4 UUIDString];
      v8 = [v7 componentsSeparatedByString:@"-"];

      v9 = [v8 firstObject];
      v10 = v9;
      v11 = &stru_2836DAA20;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v6 = [v5 stringByAppendingFormat:@"-%@", v12];
    }
  }

  v13 = [v6 cStringUsingEncoding:134217984];

  return v13;
}

void sub_2237D3608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ANLogHandleAnnounce(uint64_t a1)
{
  if (ANLogHandleAnnounce_once != -1)
  {
    ANLogHandleAnnounce_cold_1();
  }

  v2 = ANLogHandleAnnounce_logger;

  return v2;
}

void sub_2237D4848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2237D4C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D50CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D61A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D63DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237D6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleAnnounce_block_invoke()
{
  ANLogHandleAnnounce_logger = os_log_create("com.apple.intercom", "Announce");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ANLogHandleUtils_block_invoke()
{
  ANLogHandleUtils_logger = os_log_create("com.apple.intercom", "Utils");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementContext(uint64_t a1)
{
  if (ANLogHandleAnnouncementContext_once != -1)
  {
    ANLogHandleAnnouncementContext_cold_1();
  }

  v2 = ANLogHandleAnnouncementContext_logger;

  return v2;
}

uint64_t __ANLogHandleAnnouncementContext_block_invoke()
{
  ANLogHandleAnnouncementContext_logger = os_log_create("com.apple.intercom", "AnnouncementContext");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAnnouncementDataItem(uint64_t a1)
{
  if (ANLogHandleAnnouncementDataItem_once != -1)
  {
    ANLogHandleAnnouncementDataItem_cold_1();
  }

  v2 = ANLogHandleAnnouncementDataItem_logger;

  return v2;
}

uint64_t __ANLogHandleAnnouncementDataItem_block_invoke()
{
  ANLogHandleAnnouncementDataItem_logger = os_log_create("com.apple.intercom", "AnnouncementDataItem");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAudioProcessor(uint64_t a1)
{
  if (ANLogHandleAudioProcessor_once != -1)
  {
    ANLogHandleAudioProcessor_cold_1();
  }

  v2 = ANLogHandleAudioProcessor_logger;

  return v2;
}

uint64_t __ANLogHandleAudioProcessor_block_invoke()
{
  ANLogHandleAudioProcessor_logger = os_log_create("com.apple.intercom", "AudioProcessor");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleAudioSession(uint64_t a1)
{
  if (ANLogHandleAudioSession_once != -1)
  {
    ANLogHandleAudioSession_cold_1();
  }

  v2 = ANLogHandleAudioSession_logger;

  return v2;
}

uint64_t __ANLogHandleAudioSession_block_invoke()
{
  ANLogHandleAudioSession_logger = os_log_create("com.apple.intercom", "AudioSession");

  return MEMORY[0x2821F96F8]();
}

void sub_2237DCC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2237DCD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237DCED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ANLogHandleXPCTransactionManager(uint64_t a1)
{
  if (ANLogHandleXPCTransactionManager_once != -1)
  {
    ANLogHandleXPCTransactionManager_cold_1();
  }

  v2 = ANLogHandleXPCTransactionManager_logger;

  return v2;
}

void sub_2237DDA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleXPCTransactionManager_block_invoke()
{
  ANLogHandleXPCTransactionManager_logger = os_log_create("com.apple.intercom", "XPCTransactionManager");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleRemotePlaybackSession(uint64_t a1)
{
  if (ANLogHandleRemotePlaybackSession_once != -1)
  {
    ANLogHandleRemotePlaybackSession_cold_1();
  }

  v2 = ANLogHandleRemotePlaybackSession_logger;

  return v2;
}

void sub_2237DEAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237DF1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237DF3F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2237DF658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __ANLogHandleRemotePlaybackSession_block_invoke()
{
  ANLogHandleRemotePlaybackSession_logger = os_log_create("com.apple.intercom", "RemotePlaybackSession");

  return MEMORY[0x2821F96F8]();
}

id ANLogHandleFiles(uint64_t a1)
{
  if (ANLogHandleFiles_once != -1)
  {
    ANLogHandleFiles_cold_1();
  }

  v2 = ANLogHandleFiles_logger;

  return v2;
}

uint64_t __ANLogHandleFiles_block_invoke()
{
  ANLogHandleFiles_logger = os_log_create("com.apple.intercom", "Files");

  return MEMORY[0x2821F96F8]();
}

id ANLocalizedString(void *a1)
{
  v1 = a1;
  v2 = +[_ANBundleHelper currentBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_2836DAA20 table:@"ANSensitiveStrings-Announce"];

  return v3;
}

id ANLocalizedStringWithFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = ANLocalizedString(v10);

  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v11 initWithFormat:v12 locale:v13 arguments:&a9];

  return v14;
}

void *ANLocalizedStringWithDefaultValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ANLocalizedString(v4);
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

void sub_2237E1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2237E1954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2237E1E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id ANLogHandleTonePlayerService(uint64_t a1)
{
  if (ANLogHandleTonePlayerService_once[0] != -1)
  {
    ANLogHandleTonePlayerService_cold_1();
  }

  v2 = ANLogHandleTonePlayerService_logger;

  return v2;
}

uint64_t __ANLogHandleTonePlayerService_block_invoke()
{
  ANLogHandleTonePlayerService_logger = os_log_create("com.apple.intercom", "TonePlayerService");

  return MEMORY[0x2821F96F8]();
}

BOOL sub_2237E49F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2237E4A20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2237E4A4C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2237E4B38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2237E4B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2237E4C9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2237E4BF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2237E4C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237E4CEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2237E4D0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_2237E4D60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8Announce31RecipientResolutionResponseCodeO13FailureReasonO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Announce31RecipientResolutionResponseCodeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2237E4E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237E4E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2237E4EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237E4EE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2237E4F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_2237E4F8C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t ANPlaybackOptions.description.getter(uint64_t a1)
{
  v2 = sub_223800F70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 91;
  v62 = 0xE100000000000000;
  sub_223800F60();
  v6 = sub_2237E6E44();
  v7 = *(v6 + 16);
  v48 = v3;
  v49 = v2;
  v51 = v5;
  if (v7)
  {
    v8 = sub_2237E55FC(v7, 0);
    v9 = sub_2237E6BEC(&v60, v8 + 4, v7, v6);
    sub_2237E7128(v60);
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v50 = v8;
  v10 = v8[2];
  if (v10)
  {
    v11 = v50 + 4;
    v58 = "useAnchoredTrackPlayer";
    v59 = "noAnnounceInBetweenTone";
    v56 = "playHeardAnnouncements";
    v57 = "continuePlayingNewAnnouncements";
    v54 = "useSmartSiriVolume";
    v55 = "playUnheardAnnouncements";
    v52 = 0xD000000000000012;
    v53 = 0xD000000000000015;
    do
    {
      v13 = *v11++;
      v12 = v13;
      if ((v13 & ~a1) == 0)
      {
        v14 = MEMORY[0x277D84F98];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v14;
        sub_2237E5D04(0xD000000000000023, 0x80000002238098A0, 1, isUniquelyReferenced_nonNull_native);
        v16 = v60;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v16;
        sub_2237E5D04(v53, 0x80000002238098D0, 2, v17);
        v18 = v60;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v18;
        sub_2237E5D04(0xD000000000000017, 0x80000002238098F0, 4, v19);
        v20 = v60;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v20;
        sub_2237E5D04(0xD000000000000017, 0x8000000223809910, 8, v21);
        v22 = v60;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v22;
        sub_2237E5D04(0xD000000000000016, v59 | 0x8000000000000000, 16, v23);
        v24 = v60;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v24;
        sub_2237E5D04(0xD00000000000001FLL, v58 | 0x8000000000000000, 32, v25);
        v26 = v60;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v26;
        sub_2237E5D04(0xD000000000000016, v57 | 0x8000000000000000, 64, v27);
        v28 = v60;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v28;
        sub_2237E5D04(0xD000000000000018, v56 | 0x8000000000000000, 128, v29);
        v30 = v60;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v30;
        sub_2237E5D04(v52, v55 | 0x8000000000000000, 256, v31);
        v32 = v60;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v32;
        sub_2237E5D04(0xD00000000000001ELL, v54 | 0x8000000000000000, 512, v33);
        if (*(v60 + 16) && (sub_2237E5704(v12), (v34 & 1) != 0))
        {

          sub_223801010();
        }

        else
        {
        }
      }

      --v10;
    }

    while (v10);
  }

  v35 = sub_2237E6E44();
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = sub_2237E55FC(*(v35 + 16), 0);
    v39 = sub_2237E6BEC(&v60, v38 + 4, v37, v36);
    sub_2237E7128(v60);
    if (v39 == v37)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v38 = MEMORY[0x277D84F90];
LABEL_17:
  v40 = v38[2];
  v41 = v51;
  if (v40)
  {
    v42 = 0;
    v43 = 4;
    do
    {
      v44 = v38[v43];
      if ((v44 & ~v42) == 0)
      {
        v44 = 0;
      }

      v42 |= v44;
      ++v43;
      --v40;
    }

    while (v40);

    v45 = ~v42;
  }

  else
  {

    v45 = -1;
  }

  v46 = v48;
  if ((v45 & a1) != 0)
  {
    sub_223801010();
  }

  MEMORY[0x223DEB9F0](93, 0xE100000000000000);
  (*(v46 + 8))(v41, v49);
  return v61;
}

void *sub_2237E5514@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo17ANPlaybackOptionsV8AnnounceE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_2237E5544()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E55B8(uint64_t a1)
{
  v2 = *v1;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v2);
  return sub_223801300();
}

void *sub_2237E55FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A470, &unk_2238045E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2237E5680(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_2237E5704(uint64_t a1)
{
  sub_2238012E0();
  MEMORY[0x223DEBCB0](a1);
  v2 = sub_223801300();

  return sub_2237E5E64(a1, v2);
}

unint64_t sub_2237E5770(uint64_t a1)
{
  v1 = a1;
  sub_2238012E0();
  SendAnnouncementIntentResponseCode.rawValue.getter();
  sub_223801020();

  v2 = sub_223801300();

  return sub_2237E5ED0(v1, v2);
}

unint64_t sub_2237E57FC(uint64_t a1)
{
  v2 = sub_223801180();

  return sub_2237E6384(a1, v2);
}

unint64_t sub_2237E5840(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2237F7F14(*(v1 + 40), a1);

  return sub_2237E644C(v2, v3);
}

unint64_t sub_2237E5884(char a1)
{
  sub_2238012E0();
  sub_223801020();

  v2 = sub_223801300();

  return sub_2237E66E8(a1 & 1, v2);
}

unint64_t sub_2237E5930(uint64_t a1)
{
  v1 = a1;
  sub_2238012E0();
  sub_223801020();

  v2 = sub_223801300();

  return sub_2237E6830(v1, v2);
}

uint64_t sub_2237E5A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A468, &qword_2238045D8);
  v34 = v4;
  result = sub_223801220();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_2238012E0();
      MEMORY[0x223DEBCB0](v21);
      result = sub_223801300();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2237E5D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2237E5704(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2237E5A68(v16, a4 & 1);
      result = sub_2237E5704(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for ANPlaybackOptions(0);
        result = sub_223801280();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2237E6A84();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_2237E5E64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2237E5ED0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000646569;
      v8 = 0x6669636570736E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x7964616572;
          break;
        case 2:
          v8 = 0x6572676F72506E69;
          v7 = 0xEA00000000007373;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x73736563637573;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6572756C696166;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x80000002238095E0;
          break;
        case 6:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000223809600;
          break;
        case 7:
          v8 = 0xD000000000000026;
          v7 = 0x8000000223809620;
          break;
        case 8:
          v8 = 0xD000000000000022;
          v7 = 0x8000000223809650;
          break;
        case 9:
          v8 = 0xD00000000000002ALL;
          v7 = 0x8000000223809680;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x80000002238096B0;
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v7 = 0x80000002238096D0;
          break;
        case 0xC:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000223809700;
          break;
        case 0xD:
          v8 = 0xD00000000000002BLL;
          v7 = 0x8000000223809720;
          break;
        case 0xE:
          v8 = 0xD000000000000026;
          v7 = 0x8000000223809750;
          break;
        default:
          break;
      }

      v9 = 0x6669636570736E75;
      v10 = 0xEB00000000646569;
      switch(a1)
      {
        case 1:
          v10 = 0xE500000000000000;
          if (v8 == 0x7964616572)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          v10 = 0xEA00000000007373;
          if (v8 != 0x6572676F72506E69)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x73736563637573)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v10 = 0xE700000000000000;
          if (v8 != 0x6572756C696166)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v10 = 0x80000002238095E0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v10 = 0x8000000223809600;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v10 = 0x8000000223809620;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v10 = 0x8000000223809650;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v10 = 0x8000000223809680;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v9 = 0xD000000000000010;
          v10 = 0x80000002238096B0;
          goto LABEL_44;
        case 11:
          v10 = 0x80000002238096D0;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v10 = 0x8000000223809700;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 13:
          v10 = 0x8000000223809720;
          if (v8 != 0xD00000000000002BLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          v10 = 0x8000000223809750;
          if (v8 != 0xD000000000000026)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
LABEL_44:
          if (v8 != v9)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_46:
          v11 = sub_223801270();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2237E6384(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2237E7288(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DEBB50](v9, a1);
      sub_2237E72E4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2237E644C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7964616572;
          }

          else
          {
            v7 = 0x6572676F72506E69;
          }

          if (v6 == 1)
          {
            v8 = 0xE500000000000000;
          }

          else
          {
            v8 = 0xEA00000000007373;
          }
        }

        else
        {
          v7 = 0x6669636570736E75;
          v8 = 0xEB00000000646569;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000002238095E0;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
          v8 = 0x8000000223809780;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x73736563637573;
        }

        else
        {
          v7 = 0x6572756C696166;
        }

        v8 = 0xE700000000000000;
      }

      v9 = 0xD00000000000001CLL;
      if (v5 == 5)
      {
        v9 = 0xD000000000000019;
        v10 = 0x80000002238095E0;
      }

      else
      {
        v10 = 0x8000000223809780;
      }

      v11 = 0x73736563637573;
      if (v5 != 3)
      {
        v11 = 0x6572756C696166;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v5 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v5 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v5)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v5 <= 2 ? v12 : v9;
      v15 = v5 <= 2 ? v13 : v10;
      if (v7 == v14 && v8 == v15)
      {
        break;
      }

      v16 = sub_223801270();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2237E66E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      v7 = 0x80000002238097B0;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 0x6E776F6E6B6E75;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002238097B0 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_223801270();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2237E6830(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x73736563637573;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6572756C696166;
          }

          else
          {
            v8 = 0xD000000000000019;
          }

          if (v7 == 4)
          {
            v9 = 0xE700000000000000;
          }

          else
          {
            v9 = 0x80000002238095E0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7964616572;
        }

        else
        {
          v8 = 0x6572676F72506E69;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xEA00000000007373;
        }
      }

      else
      {
        v8 = 0x6669636570736E75;
        v9 = 0xEB00000000646569;
      }

      v10 = 0xD000000000000019;
      if (v6 == 4)
      {
        v10 = 0x6572756C696166;
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0x80000002238095E0;
      }

      if (v6 == 3)
      {
        v10 = 0x73736563637573;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6572676F72506E69;
      if (v6 == 1)
      {
        v12 = 0x7964616572;
      }

      v13 = 0xEA00000000007373;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x6669636570736E75;
        v13 = 0xEB00000000646569;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_223801270();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_2237E6A84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A468, &qword_2238045D8);
  v2 = *v0;
  v3 = sub_223801210();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2237E6BEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2237E6CEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2237E6E44()
{
  v0 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000023, 0x80000002238098A0, 1, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000015, 0x80000002238098D0, 2, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000017, 0x80000002238098F0, 4, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000017, 0x8000000223809910, 8, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000016, 0x8000000223809930, 16, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD00000000000001FLL, 0x8000000223809950, 32, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000016, 0x8000000223809970, 64, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000018, 0x8000000223809990, 128, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD000000000000012, 0x80000002238099B0, 256, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2237E5D04(0xD00000000000001ELL, 0x80000002238099D0, 512, v10);
  return v0;
}

void *_sSo17ANPlaybackOptionsV8AnnounceE8allCasesSayABGvgZ_0()
{
  v0 = sub_2237E6E44();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2237E55FC(*(v0 + 16), 0);
  v4 = sub_2237E6BEC(&v6, v3 + 4, v2, v1);
  sub_2237E7128(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_2237E7134()
{
  result = qword_27D09A450;
  if (!qword_27D09A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A458, &qword_223804528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A450);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2237E71E4()
{
  result = qword_27D09A420;
  if (!qword_27D09A420)
  {
    type metadata accessor for ANPlaybackOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A420);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2237E733C()
{
  result = 0x6669636570736E75;
  switch(*v0)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD000000000000026;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

Announce::SendAnnouncementIntentResponseCode_optional __swiftcall SendAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237E7568()
{
  v0 = SendAnnouncementIntentResponseCode.description.getter();
  v2 = v1;
  if (v0 == SendAnnouncementIntentResponseCode.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_223801270();
  }

  return v5 & 1;
}

uint64_t sub_2237E7604()
{
  sub_2238012E0();
  SendAnnouncementIntentResponseCode.description.getter();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237E766C(uint64_t a1)
{
  SendAnnouncementIntentResponseCode.description.getter();
  sub_223801020();
}

uint64_t sub_2237E76D0(uint64_t a1)
{
  sub_2238012E0();
  SendAnnouncementIntentResponseCode.description.getter();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237E7740@<X0>(uint64_t *a1@<X8>)
{
  result = SendAnnouncementIntentResponseCode.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2237E77BC(uint64_t a1)
{
  v2 = sub_2237E7FA4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237E780C(uint64_t a1)
{
  v2 = sub_2237E7F00();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t _s8Announce34SendAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4E8, &qword_223804930);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4F0, &qword_223804938) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2238045F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_223800E60();
  v4[v1] = 1;
  sub_223800E60();
  v4[2 * v1] = 2;
  sub_223800E60();
  v4[3 * v1] = 3;
  sub_223800E60();
  v4[4 * v1] = 4;
  sub_223800E60();
  v4[5 * v1] = 5;
  sub_223800E60();
  v4[6 * v1] = 6;
  sub_223800E60();
  v4[7 * v1] = 7;
  sub_223800E60();
  v4[8 * v1] = 8;
  sub_223800E60();
  v4[9 * v1] = 9;
  sub_223800E60();
  v4[10 * v1] = 10;
  sub_223800E60();
  v4[11 * v1] = 11;
  sub_223800E60();
  v4[12 * v1] = 12;
  sub_223800E60();
  v4[13 * v1] = 13;
  sub_223800E60();
  v4[14 * v1] = 14;
  sub_223800E60();
  v5 = sub_2237F8958(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_2237E7C2C()
{
  result = qword_27D09A478;
  if (!qword_27D09A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A478);
  }

  return result;
}

unint64_t sub_2237E7C84()
{
  result = qword_27D09A480;
  if (!qword_27D09A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A488, &qword_2238046A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A480);
  }

  return result;
}

unint64_t sub_2237E7CEC()
{
  result = qword_27D09A490;
  if (!qword_27D09A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A490);
  }

  return result;
}

unint64_t sub_2237E7D44()
{
  result = qword_27D09A498;
  if (!qword_27D09A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A498);
  }

  return result;
}

unint64_t sub_2237E7D9C()
{
  result = qword_27D09A4A0;
  if (!qword_27D09A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4A0);
  }

  return result;
}

unint64_t sub_2237E7E00()
{
  result = qword_27D09A4A8;
  if (!qword_27D09A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4A8);
  }

  return result;
}

unint64_t sub_2237E7E54()
{
  result = qword_27D09A4B0;
  if (!qword_27D09A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4B0);
  }

  return result;
}

unint64_t sub_2237E7EA8()
{
  result = qword_27D09A4B8;
  if (!qword_27D09A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4B8);
  }

  return result;
}

unint64_t sub_2237E7F00()
{
  result = qword_27D09A4C0;
  if (!qword_27D09A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4C0);
  }

  return result;
}

unint64_t sub_2237E7FA4()
{
  result = qword_27D09A4C8;
  if (!qword_27D09A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4C8);
  }

  return result;
}

unint64_t sub_2237E7FFC()
{
  result = qword_27D09A4D0;
  if (!qword_27D09A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4D0);
  }

  return result;
}

unint64_t sub_2237E8054()
{
  result = qword_27D09A4D8;
  if (!qword_27D09A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4D8);
  }

  return result;
}

unint64_t sub_2237E80AC()
{
  result = qword_27D09A4E0;
  if (!qword_27D09A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AnnouncementResolutionResponseCode.FailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E8300()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t sub_2237E8374(uint64_t a1)
{
  v2 = *v1;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v2);
  return sub_223801300();
}

BOOL static AnnouncementResolutionResponseCode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_2237E840C()
{
  result = qword_27D09A4F8;
  if (!qword_27D09A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A4F8);
  }

  return result;
}

BOOL sub_2237E8460(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for AnnouncementResolutionResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnouncementResolutionResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2237E85F0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2237E8604(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnouncementResolutionResponseCode.FailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnouncementResolutionResponseCode.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2237E87BC()
{
  MEMORY[0x223DEC650](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SendAnnouncementIntentError.hashValue.getter()
{
  v1 = *v0;
  sub_2238012E0();
  MEMORY[0x223DEBCB0](v1);
  return sub_223801300();
}

uint64_t SendAnnouncementIntentRequest.init(endpointID:home:rooms:zones:speechDataURL:sharedUserID:replyToAnnouncementID:transcription:isReply:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v18 = type metadata accessor for SendAnnouncementIntentRequest(0);
  result = sub_2237F0D9C(a7, a9 + v18[8], &qword_27D09A500, &unk_223804AE0);
  v20 = (a9 + v18[9]);
  *v20 = a8;
  v20[1] = a10;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  v22 = (a9 + v18[11]);
  *v22 = a13;
  v22[1] = a14;
  *(a9 + v18[12]) = a15;
  return result;
}

uint64_t sub_2237E89CC()
{
  if (![objc_opt_self() isInternalBuild])
  {
    v7 = 0;
    return v7 & 1;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_223800FE0();
  if (!v2)
  {

    goto LABEL_11;
  }

  if (v1 == v3 && v2 == v4)
  {
    goto LABEL_17;
  }

  v6 = sub_223801270();

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v8 = (v0 + *(type metadata accessor for SendAnnouncementIntentRequest(0) + 40));
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_223800FE0();
    if (!v10)
    {
      v7 = 0;
      goto LABEL_19;
    }

    if (v9 != v11 || v10 != v12)
    {
      v7 = sub_223801270();
LABEL_19:

      return v7 & 1;
    }

LABEL_17:
    v7 = 1;
    goto LABEL_19;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t SendAnnouncementIntentResponse.transcriptionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SendAnnouncementIntentResponse.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2238011C0();

  v3 = SendAnnouncementIntentResponseCode.description.getter();
  MEMORY[0x223DEB9F0](v3);

  MEMORY[0x223DEB9F0](0x64726F6365720A2CLL, 0xEB00000000203A73);
  v4 = MEMORY[0x223DEBA40](v1, &type metadata for AnnouncementRecord);
  MEMORY[0x223DEB9F0](v4);

  MEMORY[0x223DEB9F0](0xD000000000000011, 0x8000000223809A20);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DEB9F0](v5, v6);

  return 0x203A65646F63;
}

uint64_t sub_2237E8C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 256) = a6;
  *(v8 + 264) = v7;
  *(v8 + 448) = a7;
  *(v8 + 240) = a4;
  *(v8 + 248) = a5;
  *(v8 + 224) = a2;
  *(v8 + 232) = a3;
  *(v8 + 216) = a1;
  v9 = sub_223800FA0();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v10 = sub_223800F00();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237E8E3C, 0, 0);
}

uint64_t sub_2237E8E3C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_2237F0D34(*(v0 + 256), v3, &qword_27D09A500, &unk_223804AE0);
  v4 = *(v2 + 48);
  *(v0 + 392) = v4;
  *(v0 + 400) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_2237F0360(*(v0 + 352), &qword_27D09A500, &unk_223804AE0);
  }

  else
  {
    (*(*(v0 + 368) + 32))(*(v0 + 384), *(v0 + 352), *(v0 + 360));
    *(v0 + 168) = sub_223800EE0();
    *(v0 + 176) = v5;
    *(v0 + 184) = sub_223800FE0();
    *(v0 + 192) = v6;
    sub_2237F022C();
    v7 = sub_223801150();

    if (v7)
    {
      sub_2237F6C2C(*(v0 + 336));
      v8 = sub_223800F80();
      v9 = sub_223801110();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2237C8000, v8, v9, "Returning test success", v10, 2u);
        MEMORY[0x223DEC5C0](v10, -1, -1);
      }

      v11 = *(v0 + 384);
      v12 = *(v0 + 360);
      v13 = *(v0 + 368);
      v14 = *(v0 + 336);
      v15 = *(v0 + 272);
      v16 = *(v0 + 280);

      (*(v16 + 8))(v14, v15);
      (*(v13 + 8))(v11, v12);
      v17 = 4;
      goto LABEL_23;
    }

    (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
  }

  v18 = *(v0 + 448);

  if (v18 == 1)
  {
    v19 = *(v0 + 248);
    if (v19)
    {
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = *(v0 + 240) & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v21 = sub_2237F62CC(*(v0 + 224), *(v0 + 232));
        *(v0 + 408) = v21;
        v22 = sub_223800FD0();
        *(v0 + 416) = v22;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = sub_2237E949C;
        v23 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A508, &unk_223804AF8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2237E9F7C;
        *(v0 + 104) = &block_descriptor;
        *(v0 + 112) = v23;
        [v21 announcementForID:v22 reply:v0 + 80];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    sub_2237F6C2C(*(v0 + 320));
    v34 = sub_223800F80();
    v35 = sub_223801100();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2237C8000, v34, v35, "Announcement Identifier is empty for reply", v36, 2u);
      MEMORY[0x223DEC5C0](v36, -1, -1);
    }

    v37 = *(v0 + 320);
    v38 = *(v0 + 272);
    v39 = *(v0 + 280);

    (*(v39 + 8))(v37, v38);
    v17 = 1;
    goto LABEL_23;
  }

  v24 = *(v0 + 392);
  v25 = *(v0 + 360);
  v26 = *(v0 + 344);
  sub_2237F0D34(*(v0 + 256), v26, &qword_27D09A500, &unk_223804AE0);
  if (v24(v26, 1, v25) == 1)
  {
    v27 = *(v0 + 288);
    sub_2237F0360(*(v0 + 344), &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v27);
    v28 = sub_223800F80();
    v29 = sub_223801100();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2237C8000, v28, v29, "Resolving Announcement failed for no Speech Data URL.", v30, 2u);
      MEMORY[0x223DEC5C0](v30, -1, -1);
    }

    v32 = *(v0 + 280);
    v31 = *(v0 + 288);
    v33 = *(v0 + 272);

    (*(v32 + 8))(v31, v33);
    v17 = 0;
LABEL_23:
    **(v0 + 216) = v17;

    v40 = *(v0 + 8);

    return v40();
  }

  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 344), *(v0 + 360));
  v41 = swift_task_alloc();
  *(v0 + 424) = v41;
  *v41 = v0;
  v41[1] = sub_2237E9924;
  v42 = *(v0 + 376);

  return sub_2237EFE2C(v42);
}

uint64_t sub_2237E949C()
{

  return MEMORY[0x2822009F8](sub_2237E957C, 0, 0);
}

uint64_t sub_2237E957C()
{
  v29 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 416);

  if (!v1)
  {
    sub_2237F6C2C(*(v0 + 328));

    v14 = sub_223800F80();
    v15 = sub_223801100();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 328);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    if (v16)
    {
      v21 = *(v0 + 240);
      v20 = *(v0 + 248);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2237EF884(v21, v20, &v28);
      _os_log_impl(&dword_2237C8000, v14, v15, "Could not find reply-to announcement: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DEC5C0](v23, -1, -1);
      MEMORY[0x223DEC5C0](v22, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
    v13 = 1;
    goto LABEL_9;
  }

  v3 = *(v0 + 392);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  sub_2237F0D34(*(v0 + 256), v5, &qword_27D09A500, &unk_223804AE0);
  if (v3(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 288);
    sub_2237F0360(*(v0 + 344), &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v6);
    v7 = sub_223800F80();
    v8 = sub_223801100();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2237C8000, v7, v8, "Resolving Announcement failed for no Speech Data URL.", v9, 2u);
      MEMORY[0x223DEC5C0](v9, -1, -1);
    }

    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);

    (*(v11 + 8))(v10, v12);
    v13 = 0;
LABEL_9:
    **(v0 + 216) = v13;

    v24 = *(v0 + 8);

    return v24();
  }

  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 344), *(v0 + 360));
  v26 = swift_task_alloc();
  *(v0 + 424) = v26;
  *v26 = v0;
  v26[1] = sub_2237E9924;
  v27 = *(v0 + 376);

  return sub_2237EFE2C(v27);
}

uint64_t sub_2237E9924(double a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_2237E9CE8;
  }

  else
  {
    v4 = sub_2237E9A3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2237E9A3C(uint64_t a1)
{
  sub_2237F6C2C(*(v1 + 312));
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 432);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2237C8000, v2, v3, "Speech Data Length: %{public}f", v5, 0xCu);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }

  v6 = *(v1 + 432);
  v7 = *(v1 + 312);
  v8 = *(v1 + 272);
  v9 = *(v1 + 280);

  v10 = *(v9 + 8);
  v10(v7, v8);
  if (v6 >= 60.0)
  {
    sub_2237F6C2C(*(v1 + 296));
    v12 = sub_223800F80();
    v13 = sub_223801110();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67240192;
      *(v14 + 4) = 60;
      _os_log_impl(&dword_2237C8000, v12, v13, "Speech Data Length Exceeds Maximum (%{public}d seconds). Requires Confirmation.", v14, 8u);
      MEMORY[0x223DEC5C0](v14, -1, -1);
    }

    v16 = *(v1 + 368);
    v15 = *(v1 + 376);
    v17 = *(v1 + 360);
    v18 = *(v1 + 296);
    v19 = *(v1 + 272);

    v10(v18, v19);
    (*(v16 + 8))(v15, v17);
    v11 = 3;
  }

  else
  {
    (*(*(v1 + 368) + 8))(*(v1 + 376), *(v1 + 360));
    v11 = 4;
  }

  **(v1 + 216) = v11;

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_2237E9CE8(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 440);
  sub_2237F6C2C(*(v1 + 304));
  v3 = v2;
  v4 = sub_223800F80();
  v5 = sub_223801100();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 440);
    v7 = *(v1 + 368);
    v25 = *(v1 + 360);
    v26 = *(v1 + 376);
    v8 = *(v1 + 280);
    v23 = *(v1 + 272);
    v24 = *(v1 + 304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_223801290();
    v13 = sub_2237EF884(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2237C8000, v4, v5, "Failed to retrieve duration %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DEC5C0](v10, -1, -1);
    MEMORY[0x223DEC5C0](v9, -1, -1);

    (*(v8 + 8))(v24, v23);
    (*(v7 + 8))(v26, v25);
  }

  else
  {
    v14 = *(v1 + 440);
    v16 = *(v1 + 368);
    v15 = *(v1 + 376);
    v17 = *(v1 + 360);
    v18 = *(v1 + 304);
    v19 = *(v1 + 272);
    v20 = *(v1 + 280);

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
  }

  **(v1 + 216) = 2;

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_2237E9F7C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void sub_2237E9FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v45 = a7;
  v46 = a8;
  v49 = a3;
  v50 = a4;
  v43 = a1;
  v44 = a2;
  v13 = sub_223800FA0();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  if (!a6)
  {
    goto LABEL_7;
  }

  if (sub_223800FE0() == a5 && v22 == a6)
  {
  }

  else
  {
    v24 = sub_223801270();

    if ((v24 & 1) == 0)
    {
LABEL_7:

      sub_2237F6C2C(v19);
      v25 = sub_223800F80();
      v26 = sub_223801110();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2237C8000, v25, v26, "SendAnnouncementIntentPerformer resolving recipients", v27, 2u);
        MEMORY[0x223DEC5C0](v27, -1, -1);
      }

      v28 = *(v47 + 8);
      v29 = v19;
      v30 = v48;
      v28(v29, v48);
      v31 = a6;
      v33 = v45;
      v32 = v46;
      v34 = sub_2237F0280(a5, v31, v45, v46);
      if (sub_2237EA3D0(v49, v50, v34))
      {
        sub_2237F6C2C(v16);
        v35 = sub_223800F80();
        v36 = sub_223801100();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2237C8000, v35, v36, "Attempting to announce to the same room containing self", v37, 2u);
          MEMORY[0x223DEC5C0](v37, -1, -1);
        }

        v28(v16, v30);
        *a9 = 1;
        *(a9 + 8) = 0;
        *(a9 + 16) = 0;
        *(a9 + 24) = 0;
        *(a9 + 32) = 1;
      }

      else
      {
        if (a10)
        {
          sub_2237EA6CC(v43, v44, v49, v50, v33, v32, v34, a9);
        }

        else
        {
          sub_2237EADC0(v49, v50, v33, v32, v34, a9);
        }
      }

      return;
    }
  }

  sub_2237F6C2C(v21);
  v38 = sub_223800F80();
  v39 = sub_223801110();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2237C8000, v38, v39, "Returning test success", v40, 2u);
    MEMORY[0x223DEC5C0](v40, -1, -1);
  }

  (*(v47 + 8))(v21, v48);
  *a9 = sub_223800FE0();
  *(a9 + 8) = v41;
  v42 = MEMORY[0x277D84F90];
  *(a9 + 16) = MEMORY[0x277D84F90];
  *(a9 + 24) = v42;
  *(a9 + 32) = 0;
}

id sub_2237EA3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = [a3 roomNames];
  v16 = sub_223801070();

  v17 = *(v16 + 16);

  if (v17 != 1)
  {
    return 0;
  }

  v18 = [a3 roomNames];
  v19 = sub_223801070();

  if (*(v19 + 16))
  {

    v20 = sub_223800F40();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v14, 1, 1, v20);
    if (a2)
    {
      sub_223800F10();
      sub_2237F0360(v14, &unk_27D09A9C0, &qword_223804B08);
      sub_2237F0D9C(v12, v14, &unk_27D09A9C0, &qword_223804B08);
    }

    v22 = sub_2237F62CC(a1, a2);
    sub_2237F0D34(v14, v9, &unk_27D09A9C0, &qword_223804B08);
    if ((*(v21 + 48))(v9, 1, v20) == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_223800F20();
      (*(v21 + 8))(v9, v20);
    }

    v25 = sub_223800FD0();

    v26 = [v22 isEndpointWithUUID:v23 inRoomWithName:v25];

    sub_2237F0360(v14, &unk_27D09A9C0, &qword_223804B08);
    return v26;
  }

  else
  {

    return 0;
  }
}

void sub_2237EA6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v65 = a2;
  v66 = a3;
  v64[1] = a1;
  v68 = a8;
  v67 = sub_223800FA0();
  v12 = *(v67 - 8);
  v13 = MEMORY[0x28223BE20](v67);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v64 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v64 - v19;
  v73 = MEMORY[0x277D84F90];
  if (a5)
  {

    sub_2237EF584(v21);
  }

  if (a6)
  {

    sub_2237EF584(v22);
  }

  if (!*(v73 + 16))
  {

    sub_2237F6C2C(v20);
    v31 = sub_223800F80();
    v32 = sub_223801110();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2237C8000, v31, v32, "Skipping Resolve Recipients for Reply without recipients", v33, 2u);
      MEMORY[0x223DEC5C0](v33, -1, -1);
    }

    (v12[1])(v20, v67);
    goto LABEL_15;
  }

  v23 = [a7 homeName];
  v24 = sub_223800FE0();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_2237F6C2C(v15);
    v28 = sub_223800F80();
    v29 = sub_223801110();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2237C8000, v28, v29, "Recipients contain home name. No additional resolution required.", v30, 2u);
      MEMORY[0x223DEC5C0](v30, -1, -1);
    }

    (v12[1])(v15, v67);
LABEL_15:
    v34 = v68;
    *v68 = 0u;
    *(v34 + 1) = 0u;
    v35 = 2;
LABEL_16:
    *(v34 + 32) = v35;
    return;
  }

  v36 = sub_2237F6E84(v66, a4);
  v37 = [v36 lastPlayedAnnouncementInfo];
  v38 = sub_223800FB0();

  v69 = sub_223800FE0();
  v70 = v39;
  sub_2238011A0();
  if (!*(v38 + 16) || (v40 = sub_2237E57FC(&v71), (v41 & 1) == 0))
  {

    sub_2237E72E4(&v71);
    if (!v65)
    {
LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_26;
  }

  sub_2237F01C8(*(v38 + 56) + 32 * v40, v72);
  sub_2237E72E4(&v71);

  if (swift_dynamicCast())
  {
    v42 = v70;
  }

  else
  {
    v42 = 0;
  }

  if (v65)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (!v42)
  {
LABEL_33:
    sub_2237F6C2C(v18);
    v55 = sub_223800F80();
    v56 = sub_223801100();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2237C8000, v55, v56, "Contains Recipients with no announcement identifier. Unable to determine context for home.", v57, 2u);
      MEMORY[0x223DEC5C0](v57, -1, -1);
    }

    (v12[1])(v18, v67);
    goto LABEL_38;
  }

LABEL_27:
  v43 = sub_2237F62CC(v66, a4);
  v44 = sub_223800FD0();

  v45 = [v43 announcementForID_];

  if (!v45)
  {
LABEL_37:

LABEL_38:
    v34 = v68;
    *v68 = 4;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = 0;
    v35 = 1;
    goto LABEL_16;
  }

  v46 = [v43 contextFromAnnouncement_];
  if (!v46)
  {

    goto LABEL_37;
  }

  v47 = v46;
  v48 = [v46 homeName];
  v49 = sub_223800FE0();
  v18 = v50;

  v51 = [v47 rooms];
  v52 = sub_223800FB0();

  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = sub_2237E5680(*(v52 + 16), 0);
    v12 = sub_2237E6CEC(&v71, v54 + 4, v53, v52);
    sub_2237E7128(v71);
    if (v12 != v53)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  v58 = [v47 zones];
  v59 = sub_223800FB0();

  v60 = *(v59 + 16);
  if (!v60)
  {

    v61 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v61 = sub_2237E5680(*(v59 + 16), 0);
  v62 = sub_2237E6CEC(&v71, v61 + 4, v60, v59);
  sub_2237E7128(v71);
  if (v62 == v60)
  {

LABEL_44:
    v63 = v68;
    *v68 = v49;
    v63[1] = v18;
    v63[2] = v54;
    v63[3] = v61;
    *(v63 + 32) = 0;
    return;
  }

  __break(1u);
}

void sub_2237EADC0(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v70 = a3;
  v71 = a4;
  v72 = a6;
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v69 = &v65 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  v22 = sub_2237F62CC(a1, a2);
  v23 = [v22 homeNamesForContext_];
  v24 = sub_223801070();

  v73 = v6;
  sub_2237F6C2C(v21);

  v25 = sub_223800F80();
  v26 = sub_223801110();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v68 = v11;
    v29 = v28;
    v74 = v28;
    *v27 = 136315138;
    v30 = MEMORY[0x223DEBA40](v24, MEMORY[0x277D837D0]);
    v66 = v19;
    v67 = v10;
    v32 = v14;
    v33 = v24;
    v34 = v22;
    v35 = sub_2237EF884(v30, v31, &v74);
    v36 = v67;

    *(v27 + 4) = v35;
    v22 = v34;
    v24 = v33;
    v14 = v32;
    _os_log_impl(&dword_2237C8000, v25, v26, "Found Homes: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v37 = v29;
    v38 = v68;
    MEMORY[0x223DEC5C0](v37, -1, -1);
    MEMORY[0x223DEC5C0](v27, -1, -1);

    v39 = *(v38 + 8);
    v10 = v36;
    v40 = v36;
    v19 = v66;
    v39(v21, v40);
  }

  else
  {

    v39 = *(v11 + 8);
    v39(v21, v10);
  }

  v41 = v24[2];
  if (v41 == 1)
  {
    v46 = v69;
    sub_2237F6C2C(v69);
    v47 = sub_223800F80();
    v48 = sub_223801110();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2237C8000, v47, v48, "Found Single Home", v49, 2u);
      MEMORY[0x223DEC5C0](v49, -1, -1);
    }

    v39(v46, v10);
    if (v24[2])
    {
      v51 = v24[4];
      v50 = v24[5];

      v52 = v71;

      v53 = v70;

      v54 = MEMORY[0x277D84F90];
      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      if (v52)
      {
        v54 = v52;
      }

      v56 = v72;
      *v72 = v51;
      v56[1] = v50;
      v56[2] = v55;
      v56[3] = v54;
      *(v56 + 32) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else if (v41)
  {
    sub_2237F6C2C(v14);
    v57 = sub_223800F80();
    v58 = sub_223801110();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2237C8000, v57, v58, "Found Multiple Homes. Need to disambiguate", v59, 2u);
      MEMORY[0x223DEC5C0](v59, -1, -1);
    }

    v39(v14, v10);
    v60 = v71;

    v61 = v70;

    v62 = MEMORY[0x277D84F90];
    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    if (v60)
    {
      v62 = v60;
    }

    v64 = v72;
    *v72 = v24;
    v64[1] = v63;
    v64[2] = v62;
    v64[3] = 0;
    *(v64 + 32) = 1;
  }

  else
  {

    sub_2237F6C2C(v19);
    v42 = sub_223800F80();
    v43 = sub_223801100();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2237C8000, v42, v43, "Did not find any Homes", v44, 2u);
      MEMORY[0x223DEC5C0](v44, -1, -1);
    }

    v39(v19, v10);
    v45 = v72;
    *v72 = 0u;
    *(v45 + 1) = 0u;
    *(v45 + 32) = 1;
  }
}

uint64_t sub_2237EB340(uint64_t a1, uint64_t a2)
{
  v3[66] = v2;
  v3[65] = a2;
  v3[64] = a1;
  v4 = sub_223800F40();
  v3[67] = v4;
  v3[68] = *(v4 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A500, &unk_223804AE0);
  v3[74] = swift_task_alloc();
  v5 = sub_223800F00();
  v3[75] = v5;
  v3[76] = *(v5 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v6 = sub_223800FA0();
  v3[79] = v6;
  v3[80] = *(v6 - 8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237EB614, 0, 0);
}

uint64_t sub_2237EB614(uint64_t a1)
{
  sub_2237F6C2C(v1[96]);
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "SendAnnouncementIntentPerformer performing intent", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v5 = v1[96];
  v6 = v1[80];
  v7 = v1[79];

  v8 = *(v6 + 8);
  v1[97] = v8;
  v8(v5, v7);
  if (sub_2237E89CC())
  {
    sub_2237F6C2C(v1[95]);
    v9 = sub_223800F80();
    v10 = sub_223801110();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2237C8000, v9, v10, "Returning test success", v11, 2u);
      MEMORY[0x223DEC5C0](v11, -1, -1);
    }

    v12 = v1[95];
    v13 = v1[79];
    v14 = v1[64];

    v8(v12, v13);
    v15 = sub_223800FE0();
    *v14 = 3;
    *(v14 + 8) = MEMORY[0x277D84F90];
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
LABEL_11:

    v30 = v1[1];

    return v30();
  }

  v17 = v1[76];
  v18 = v1[75];
  v19 = v1[74];
  v20 = v1[65];
  v21 = type metadata accessor for SendAnnouncementIntentRequest(0);
  v1[98] = v21;
  sub_2237F0D34(v20 + *(v21 + 32), v19, &qword_27D09A500, &unk_223804AE0);
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    v22 = v1[82];
    sub_2237F0360(v1[74], &qword_27D09A500, &unk_223804AE0);
    sub_2237F6C2C(v22);
    v23 = sub_223800F80();
    v24 = sub_223801100();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2237C8000, v23, v24, "No speech data URL", v25, 2u);
      MEMORY[0x223DEC5C0](v25, -1, -1);
    }

    v26 = v1[82];
    v27 = v1[79];
    v28 = v1[64];

    v8(v26, v27);
    *v28 = 4;
    v29 = MEMORY[0x277D84F90];
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 8) = v29;
    goto LABEL_11;
  }

  (*(v1[76] + 32))(v1[78], v1[74], v1[75]);
  v32 = swift_task_alloc();
  v1[99] = v32;
  *v32 = v1;
  v32[1] = sub_2237EBB20;
  v33 = v1[78];

  return sub_2237EFE2C(v33);
}

uint64_t sub_2237EBB20(double a1)
{
  v3 = *v2;
  *(v3 + 800) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v4 = sub_2237EC118;
  }

  else
  {
    v4 = sub_2237EBC38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2237EBC38(uint64_t a1)
{
  v55 = v1;
  v2 = v1[78];
  v3 = v1[77];
  v4 = v1[76];
  v5 = v1[75];
  sub_2237F6C2C(v1[94]);
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_223800F80();
  v7 = sub_223801110();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[97];
  v10 = v1[94];
  v11 = v1[79];
  v12 = v1[77];
  v13 = v1[76];
  v14 = v1[75];
  if (v8)
  {
    v53 = v1[94];
    v15 = swift_slowAlloc();
    v52 = v11;
    v16 = swift_slowAlloc();
    v54 = v16;
    *v15 = 136315138;
    sub_2237F03C0(&qword_27D09A530, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v51 = v9;
    v17 = sub_223801250();
    v19 = v18;
    v50 = v7;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_2237EF884(v17, v19, &v54);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2237C8000, v6, v50, "Speech Data URL: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DEC5C0](v16, -1, -1);
    MEMORY[0x223DEC5C0](v15, -1, -1);

    v51(v53, v52);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v14);
    v9(v10, v11);
  }

  v1[102] = v20;
  sub_2237F6C2C(v1[92]);
  v22 = sub_223800F80();
  v23 = sub_223801110();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v1[100];
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v24;
    _os_log_impl(&dword_2237C8000, v22, v23, "Speech Data Length: %f", v25, 0xCu);
    MEMORY[0x223DEC5C0](v25, -1, -1);
  }

  v26 = v1[98];
  v27 = v1[97];
  v28 = v1[92];
  v29 = v1[80];
  v30 = v1[79];
  v31 = v1[65];

  v1[103] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v28, v30);
  v32 = sub_223800EF0();
  v33 = [objc_opt_self() contentWithAudioFileURL_];
  v1[104] = v33;

  if (*(v31 + *(v26 + 44) + 8))
  {
    v34 = sub_223800FD0();
  }

  else
  {
    v34 = 0;
  }

  v35 = v1[65];
  [v33 setTranscription_];

  v1[105] = *v35;
  v36 = v35[1];
  v1[106] = v36;
  if (v36)
  {
    v37 = v1[73];
    v38 = v1[68];
    v39 = v1[67];
    sub_223800F10();
    if ((*(v38 + 48))(v37, 1, v39) == 1)
    {
      v40 = 0;
    }

    else
    {
      v41 = v1[73];
      v42 = v1[68];
      v43 = v1[67];
      v40 = sub_223800F20();
      (*(v42 + 8))(v41, v43);
    }

    [v33 setEndpointIdentifier_];
  }

  v44 = [v33 endpointIdentifier];
  if (v44)
  {
    v45 = v44;
    sub_223800F30();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v1[68] + 56))(v1[71], v46, 1, v1[67]);
  v47 = swift_task_alloc();
  v1[107] = v47;
  *v47 = v1;
  v47[1] = sub_2237EC47C;
  v48 = v1[72];

  return sub_2237EED68(v48);
}

uint64_t sub_2237EC118(uint64_t a1)
{
  v25 = v1;
  v2 = v1[101];
  sub_2237F6C2C(v1[93]);
  v3 = v2;
  v4 = sub_223800F80();
  v5 = sub_223801100();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[101];
    v23 = v1[97];
    v22 = v1[93];
    v7 = v1[79];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_223801290();
    v12 = sub_2237EF884(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2237C8000, v4, v5, "Failed to retrieve duration %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DEC5C0](v9, -1, -1);
    MEMORY[0x223DEC5C0](v8, -1, -1);

    v23(v22, v7);
    v13 = v6;
  }

  else
  {
    v14 = v1[101];
    v15 = v1[97];
    v16 = v1[93];
    v17 = v1[79];

    v15(v16, v17);
    v13 = v14;
  }

  v18 = v1[64];
  (*(v1[76] + 8))(v1[78], v1[75]);
  *v18 = 4;
  v19 = MEMORY[0x277D84F90];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = v19;

  v20 = v1[1];

  return v20();
}

uint64_t sub_2237EC47C()
{
  v1 = *(*v0 + 568);

  sub_2237F0360(v1, &unk_27D09A9C0, &qword_223804B08);

  return MEMORY[0x2822009F8](sub_2237EC5A4, 0, 0);
}

uint64_t sub_2237EC5A4()
{
  v154 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_2237F0360(v1, &unk_27D09A9C0, &qword_223804B08);
  }

  else
  {
    v4 = *(v0 + 728);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    (*(v2 + 32))(v5, v1, v3);
    sub_2237F6C2C(v4);
    (*(v2 + 16))(v6, v5, v3);
    v7 = sub_223800F80();
    v8 = sub_223801110();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 776);
    v11 = *(v0 + 728);
    v12 = *(v0 + 632);
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    if (v9)
    {
      v151 = *(v0 + 728);
      v16 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146 = v10;
      v153 = v143;
      *v16 = 136315138;
      sub_2237F03C0(&qword_27D09A528, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v140 = v12;
      v17 = sub_223801250();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = v20;
      v22 = sub_2237EF884(v17, v19, &v153);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2237C8000, v7, v8, "MU HMUser ID: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v143);
      MEMORY[0x223DEC5C0](v143, -1, -1);
      MEMORY[0x223DEC5C0](v16, -1, -1);

      v146(v151, v140);
    }

    else
    {

      v23 = *(v14 + 8);
      v23(v13, v15);
      v21 = v23;
      v10(v11, v12);
    }

    v24 = *(v0 + 832);
    v25 = *(v0 + 560);
    v26 = *(v0 + 536);
    v27 = sub_223800F20();
    [v24 setHomeKitUserIdentifier_];

    v21(v25, v26);
  }

  v28 = *(v0 + 784);
  v29 = *(v0 + 520);
  v31 = v29[4];
  v30 = v29[5];
  v32 = v29[3];
  if (*(v29 + *(v28 + 48)) == 1)
  {
    if (v32 && (v30 && *(v30 + 16) || v31 && *(v31 + 16)))
    {

      v58 = sub_223800FD0();
      v59 = sub_223801060();

      v60 = sub_223801060();

      v61 = [objc_opt_self() destinationWithHomeName:v58 zoneNames:v59 roomNames:v60];

      v44 = v61;
    }

    else
    {
      v62 = (v29 + *(v28 + 40));
      v63 = *v62;
      v64 = v62[1];
      if (v64)
      {
        v65 = sub_223800FD0();
      }

      else
      {
        v65 = 0;
      }

      v70 = [objc_opt_self() destinationWithReplyToAnnouncementIdentifier_];

      if (!v64)
      {
        goto LABEL_38;
      }

      v71 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v71 = v63 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v72 = *(v0 + 720);
        v44 = v70;
        sub_2237F6C2C(v72);

        v73 = sub_223800F80();
        v74 = sub_223801110();

        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v0 + 776);
        v77 = *(v0 + 720);
        v78 = *(v0 + 632);
        if (v75)
        {
          v79 = swift_slowAlloc();
          v148 = v76;
          v80 = swift_slowAlloc();
          v153 = v80;
          *v79 = 136315138;
          *(v79 + 4) = sub_2237EF884(v63, v64, &v153);
          _os_log_impl(&dword_2237C8000, v73, v74, "Sending Reply to Announcement: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x223DEC5C0](v80, -1, -1);
          MEMORY[0x223DEC5C0](v79, -1, -1);

          v148(v77, v78);
        }

        else
        {

          v76(v77, v78);
        }
      }

      else
      {
LABEL_38:
        v81 = *(v0 + 712);
        v44 = v70;
        sub_2237F6C2C(v81);
        v82 = sub_223800F80();
        v83 = sub_223801110();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 776);
        v86 = *(v0 + 712);
        v87 = *(v0 + 632);
        if (v84)
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_2237C8000, v82, v83, "Sending Reply to latest Announcement", v88, 2u);
          MEMORY[0x223DEC5C0](v88, -1, -1);
        }

        v85(v86, v87);
      }
    }

LABEL_42:
    *(v0 + 864) = v44;
    v89 = [objc_opt_self() requestWithContent:*(v0 + 832) destination:v44];
    *(v0 + 872) = v89;
    v90 = [v44 type];

    if (!v90)
    {
      v91 = [v44 roomObjects];
      v92 = sub_223801070();

      v93 = *(v92 + 16);

      if (v93 || (v94 = [v44 zoneObjects], v95 = sub_223801070(), v94, v96 = *(v95 + 16), , v96))
      {
        sub_2237F6C2C(*(v0 + 696));
        v97 = v44;
        v98 = sub_223800F80();
        v99 = sub_223801110();
        v100 = os_log_type_enabled(v98, v99);
        v101 = *(v0 + 776);
        v102 = *(v0 + 696);
        v103 = *(v0 + 632);
        if (v100)
        {
          v152 = *(v0 + 696);
          v104 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v153 = v145;
          *v104 = 134349826;
          v105 = [v97 roomObjects];
          v149 = v103;
          v106 = MEMORY[0x277D84F70];
          v107 = v105;
          v108 = sub_223801070();

          v141 = v101;
          v109 = *(v108 + 16);

          *(v104 + 4) = v109;

          *(v104 + 12) = 2080;
          v110 = [v97 &selRef_stringFromDate_ + 1];
          v111 = sub_223801070();

          v112 = MEMORY[0x223DEBA40](v111, v106 + 8);
          v114 = v113;

          v115 = sub_2237EF884(v112, v114, &v153);

          *(v104 + 14) = v115;
          *(v104 + 22) = 2050;
          v116 = [v97 zoneObjects];
          v117 = sub_223801070();

          v118 = *(v117 + 16);

          *(v104 + 24) = v118;
          *(v104 + 32) = 2080;
          v119 = [v97 zoneObjects];
          v120 = sub_223801070();

          v121 = MEMORY[0x223DEBA40](v120, v106 + 8);
          v123 = v122;

          v124 = sub_2237EF884(v121, v123, &v153);

          *(v104 + 34) = v124;
          _os_log_impl(&dword_2237C8000, v98, v99, "Sending Announcement to Rooms (%{public}ld) = %s, Zones (%{public}ld) = %s ", v104, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x223DEC5C0](v145, -1, -1);
          MEMORY[0x223DEC5C0](v104, -1, -1);

          v141(v152, v149);
        }

        else
        {

          v101(v102, v103);
        }
      }

      else
      {
        sub_2237F6C2C(*(v0 + 688));
        v127 = v44;
        v128 = sub_223800F80();
        v129 = sub_223801110();

        v130 = os_log_type_enabled(v128, v129);
        v131 = *(v0 + 776);
        v132 = *(v0 + 688);
        v133 = *(v0 + 632);
        if (v130)
        {
          v134 = swift_slowAlloc();
          v150 = v131;
          v135 = swift_slowAlloc();
          v153 = v135;
          *v134 = 136315138;
          v136 = [v127 homeObject];
          sub_223801160();
          swift_unknownObjectRelease();
          v137 = sub_223800FF0();
          v139 = sub_2237EF884(v137, v138, &v153);

          *(v134 + 4) = v139;
          _os_log_impl(&dword_2237C8000, v128, v129, "[No Room or Zone Names] Sending Announcement to %s", v134, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v135);
          MEMORY[0x223DEC5C0](v135, -1, -1);
          MEMORY[0x223DEC5C0](v134, -1, -1);

          v150(v132, v133);
        }

        else
        {

          v131(v132, v133);
        }
      }
    }

    v125 = sub_2237F62CC(*(v0 + 840), *(v0 + 848));
    *(v0 + 880) = v125;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 488;
    *(v0 + 24) = sub_2237ED670;
    v126 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A518, &qword_223804B18);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2237EEF7C;
    *(v0 + 232) = &block_descriptor_6;
    *(v0 + 240) = v126;
    [v125 sendRequest:v89 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 16);
  }

  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = sub_2237F0280(v29[2], v32, v29[4], v30);
  v36 = sub_2237F62CC(v34, v33);
  v37 = [v36 homeNamesForContext_];

  v38 = sub_223801070();
  if (*(v38 + 16) == 1)
  {

    v39 = sub_223800FD0();

    [v35 setHomeName_];

    v40 = [v35 homeName];
    if (!v40)
    {
      sub_223800FE0();
      v40 = sub_223800FD0();
    }

    v41 = [v35 zoneNames];
    if (!v41)
    {
      sub_223801070();
      v41 = sub_223801060();
    }

    v42 = [v35 roomNames];
    if (!v42)
    {
      sub_223801070();
      v42 = sub_223801060();
    }

    v43 = [objc_opt_self() destinationWithHomeName:v40 zoneNames:v41 roomNames:v42];

    v44 = v43;
    goto LABEL_42;
  }

  sub_2237F6C2C(*(v0 + 704));

  v45 = sub_223800F80();
  v46 = sub_223801100();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 832);
  v49 = *(v0 + 776);
  v50 = *(v0 + 704);
  v51 = *(v0 + 632);
  if (v47)
  {
    v52 = swift_slowAlloc();
    v147 = v49;
    v53 = swift_slowAlloc();
    v153 = v53;
    *v52 = 136315138;
    v142 = v50;
    v144 = v48;
    v54 = MEMORY[0x223DEBA40](v38, MEMORY[0x277D837D0]);
    v56 = v55;

    v57 = sub_2237EF884(v54, v56, &v153);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_2237C8000, v45, v46, "Did not find exactly one home for recipients: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x223DEC5C0](v53, -1, -1);
    MEMORY[0x223DEC5C0](v52, -1, -1);

    v147(v142, v51);
  }

  else
  {

    v49(v50, v51);
  }

  v66 = *(v0 + 512);
  (*(v0 + 816))(*(v0 + 624), *(v0 + 600));
  *v66 = 4;
  v67 = MEMORY[0x277D84F90];
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 8) = v67;

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_2237ED670()
{
  v1 = *(*v0 + 48);
  *(*v0 + 888) = v1;
  if (v1)
  {
    v2 = sub_2237EE98C;
  }

  else
  {
    v2 = sub_2237ED780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237ED780()
{
  v65 = v0;
  v1 = *(v0 + 488);
  *(v0 + 896) = v1;
  v2 = [v1 deliveredAnnouncementID];
  if (!v2)
  {
    sub_223800FE0();
    v2 = sub_223800FD0();
  }

  *(v0 + 904) = v2;
  v3 = *(v0 + 680);
  *(v0 + 912) = sub_223800FE0();
  *(v0 + 920) = v4;
  sub_2237F6C2C(v3);
  v5 = v1;
  v6 = sub_223800F80();
  v7 = sub_223801110();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 776);
  v10 = *(v0 + 680);
  v11 = *(v0 + 632);
  if (v8)
  {
    v62 = v2;
    v12 = swift_slowAlloc();
    v60 = v10;
    v13 = swift_slowAlloc();
    v64 = v13;
    *v12 = 136315138;
    v14 = v5;
    v15 = [v14 description];
    v57 = v9;
    v16 = sub_223800FE0();
    v18 = v17;

    v19 = sub_2237EF884(v16, v18, &v64);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2237C8000, v6, v7, "Announcement sent successfully! Result = %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DEC5C0](v13, -1, -1);
    v20 = v12;
    v2 = v62;
    MEMORY[0x223DEC5C0](v20, -1, -1);

    v57(v60, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v21 = [*(v0 + 832) transcription];
  if (v21)
  {

    v22 = *(v0 + 832);
    sub_2237F6C2C(*(v0 + 664));
    v23 = v22;
    v24 = sub_223800F80();
    v25 = sub_223801110();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 832);
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      v28 = [v26 transcription];
      if (v28)
      {

        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      v33 = *(v0 + 832);
      *(v27 + 4) = v29;

      _os_log_impl(&dword_2237C8000, v24, v25, "Transcription: %{BOOL}d", v27, 8u);
      MEMORY[0x223DEC5C0](v27, -1, -1);
      v32 = *(v0 + 832);
    }

    else
    {

      v32 = *(v0 + 832);
      v24 = v32;
    }

    v34 = *(v0 + 920);
    v35 = *(v0 + 912);
    v36 = *(v0 + 896);
    v37 = *(v0 + 776);
    v38 = *(v0 + 664);
    v39 = *(v0 + 632);

    v37(v38, v39);
    v40 = [v36 destination];
    v41 = sub_2237EF0B0(v35, v34);

    v42 = [v32 transcription];
    v43 = *(v0 + 896);
    v44 = *(v0 + 880);
    v45 = *(v0 + 872);
    v46 = *(v0 + 864);
    v47 = *(v0 + 832);
    v48 = *(v0 + 624);
    v49 = *(v0 + 600);
    if (v42)
    {
      v59 = *(v0 + 896);
      v63 = v41;
      v50 = v42;
      v61 = *(v0 + 816);
      v58 = *(v0 + 832);
      v51 = sub_223800FE0();
      v53 = v52;

      v41 = v63;
      v61(v48, v49);
    }

    else
    {
      (*(v0 + 816))(*(v0 + 624), *(v0 + 600));

      v51 = 0;
      v53 = 0;
    }

    v54 = *(v0 + 512);
    *v54 = 3;
    *(v54 + 8) = v41;
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
    v30 = *(v0 + 880);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 504;
    *(v0 + 88) = sub_2237EDE30;
    v31 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A508, &unk_223804AF8);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_2237E9F7C;
    *(v0 + 296) = &block_descriptor_9;
    *(v0 + 304) = v31;
    [v30 announcementForID:v2 reply:v0 + 272];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_2237EDE30()
{

  return MEMORY[0x2822009F8](sub_2237EDF10, 0, 0);
}

uint64_t sub_2237EDF10()
{
  v1 = v0[113];
  v2 = v0[63];
  v0[116] = v2;

  if (v2)
  {
    sub_2237F6C2C(v0[84]);
    v3 = sub_223800F80();
    v4 = sub_223801110();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2237C8000, v3, v4, "Starting transcription", v5, 2u);
      MEMORY[0x223DEC5C0](v5, -1, -1);
    }

    v6 = v0[97];
    v7 = v0[84];
    v8 = v0[79];

    v6(v7, v8);
    v0[18] = v0;
    v0[23] = v0 + 117;
    v0[19] = sub_2237EE490;
    v9 = swift_continuation_init();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A520, &qword_223804B20);
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_2237EF054;
    v0[45] = &block_descriptor_12;
    v0[46] = v9;
    [v2 processAudioTranscription_];

    return MEMORY[0x282200938](v0 + 18);
  }

  else
  {
    v10 = v0[104];
    sub_2237F6C2C(v0[83]);
    v11 = v10;
    v12 = sub_223800F80();
    v13 = sub_223801110();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[104];
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      v16 = [v14 transcription];
      if (v16)
      {

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v19 = v0[104];
      *(v15 + 4) = v17;

      _os_log_impl(&dword_2237C8000, v12, v13, "Transcription: %{BOOL}d", v15, 8u);
      MEMORY[0x223DEC5C0](v15, -1, -1);
      v18 = v0[104];
    }

    else
    {

      v18 = v0[104];
      v12 = v18;
    }

    v20 = v0[115];
    v21 = v0[114];
    v22 = v0[112];
    v23 = v0[97];
    v24 = v0[83];
    v25 = v0[79];

    v23(v24, v25);
    v26 = [v22 destination];
    v27 = sub_2237EF0B0(v21, v20);

    v28 = [v18 transcription];
    v29 = v0[112];
    v30 = v0[110];
    v31 = v0[109];
    v32 = v0[108];
    v33 = v0[104];
    v34 = v0[78];
    v35 = v0[75];
    if (v28)
    {
      v44 = v0[112];
      v45 = v0[102];
      v46 = v27;
      v36 = v28;
      v43 = v0[104];
      v37 = sub_223800FE0();
      v39 = v38;

      v27 = v46;
      v45(v34, v35);
    }

    else
    {
      (v0[102])(v0[78], v0[75]);

      v37 = 0;
      v39 = 0;
    }

    v40 = v0[64];
    *v40 = 3;
    *(v40 + 8) = v27;
    *(v40 + 16) = v37;
    *(v40 + 24) = v39;

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_2237EE490()
{

  return MEMORY[0x2822009F8](sub_2237EE570, 0, 0);
}

uint64_t sub_2237EE570()
{
  v1 = v0[116];
  v2 = v0[104];
  v3 = [v1 transcriptionText];
  [v2 setTranscription_];

  v4 = v0[104];
  sub_2237F6C2C(v0[83]);
  v5 = v4;
  v6 = sub_223800F80();
  v7 = sub_223801110();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[104];
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = [v8 transcription];
    if (v10)
    {

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v13 = v0[104];
    *(v9 + 4) = v11;

    _os_log_impl(&dword_2237C8000, v6, v7, "Transcription: %{BOOL}d", v9, 8u);
    MEMORY[0x223DEC5C0](v9, -1, -1);
    v12 = v0[104];
  }

  else
  {

    v12 = v0[104];
    v6 = v12;
  }

  v14 = v0[115];
  v15 = v0[114];
  v16 = v0[112];
  v17 = v0[97];
  v18 = v0[83];
  v19 = v0[79];

  v17(v18, v19);
  v20 = [v16 destination];
  v21 = sub_2237EF0B0(v15, v14);

  v22 = [v12 transcription];
  v23 = v0[112];
  v24 = v0[110];
  v25 = v0[109];
  v26 = v0[108];
  v27 = v0[104];
  v28 = v0[78];
  v29 = v0[75];
  if (v22)
  {
    v38 = v0[112];
    v39 = v0[102];
    v40 = v21;
    v30 = v22;
    v37 = v0[104];
    v31 = sub_223800FE0();
    v33 = v32;

    v21 = v40;
    v39(v28, v29);
  }

  else
  {
    (v0[102])(v0[78], v0[75]);

    v31 = 0;
    v33 = 0;
  }

  v34 = v0[64];
  *v34 = 3;
  *(v34 + 8) = v21;
  *(v34 + 16) = v31;
  *(v34 + 24) = v33;

  v35 = v0[1];

  return v35();
}

uint64_t sub_2237EE98C()
{
  v31 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 648);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v4 = v1;
  v5 = sub_223800F80();
  v6 = sub_223801100();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 888);
    v27 = *(v0 + 872);
    v28 = *(v0 + 864);
    v29 = *(v0 + 832);
    v26 = *(v0 + 776);
    v8 = *(v0 + 648);
    v9 = *(v0 + 632);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136446466;
    swift_getErrorValue();
    v12 = sub_223801290();
    v14 = sub_2237EF884(v12, v13, v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_2237EF884(0x6572756C696166, 0xE700000000000000, v30);
    _os_log_impl(&dword_2237C8000, v5, v6, "Send Announcement failed with error: %{public}s, Intent Response Code: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DEC5C0](v11, -1, -1);
    MEMORY[0x223DEC5C0](v10, -1, -1);

    v26(v8, v9);
  }

  else
  {
    v15 = *(v0 + 888);
    v16 = *(v0 + 872);
    v17 = *(v0 + 864);
    v18 = *(v0 + 832);
    v19 = *(v0 + 776);
    v20 = *(v0 + 648);
    v21 = *(v0 + 632);

    v19(v20, v21);
  }

  v22 = *(v0 + 512);
  (*(v0 + 816))(*(v0 + 624), *(v0 + 600));
  *v22 = 4;
  v23 = MEMORY[0x277D84F90];
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 8) = v23;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2237EED68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223800FA0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237EEE28, 0, 0);
}

uint64_t sub_2237EEE28(uint64_t a1)
{
  sub_2237F6C2C(v1[6]);
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "Skipping MU Check", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  v8 = v1[2];

  (*(v6 + 8))(v5, v7);
  v9 = sub_223800F40();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2237EEF7C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A580, &qword_223804CF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2237EF054(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

char *sub_2237EF0B0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 type];
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    return result;
  }

  v7 = [v2 homeObject];
  sub_223801160();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = [v2 roomObjects];
  v9 = sub_223801070();

  v10 = sub_2237EF770(v9);

  if (!v10)
  {
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v11 = [v2 zoneObjects];
  v12 = sub_223801070();

  v13 = sub_2237EF770(v12);

  if (!v13)
  {

    goto LABEL_15;
  }

  v39 = MEMORY[0x277D84F90];
  v34 = a1;
  if (*(v10 + 16) || *(v13 + 16))
  {

    v14 = *(v10 + 16);
    v33 = v13;
    if (v14)
    {
      v36 = MEMORY[0x277D84F90];
      sub_2237FBDF0(0, v14, 0);
      v15 = v36;
      v16 = (v10 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v20 = *(v36 + 16);
        v19 = *(v36 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_2237FBDF0((v19 > 1), v20 + 1, 1);
        }

        *(v36 + 16) = v20 + 1;
        v21 = v36 + 56 * v20;
        *(v21 + 32) = v34;
        *(v21 + 40) = a2;
        *(v21 + 48) = 0;
        *(v21 + 56) = 1;
        *(v21 + 64) = v17;
        *(v21 + 72) = v18;
        *(v21 + 80) = 1;
        v16 += 2;
        --v14;
      }

      while (v14);

      v13 = v33;
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_2237EF678(v15);
    v22 = *(v13 + 16);
    if (v22)
    {
      v37 = MEMORY[0x277D84F90];
      sub_2237FBDF0(0, v22, 0);
      v23 = v37;
      v24 = (v13 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v28 = *(v37 + 16);
        v27 = *(v37 + 24);

        if (v28 >= v27 >> 1)
        {
          sub_2237FBDF0((v27 > 1), v28 + 1, 1);
        }

        *(v37 + 16) = v28 + 1;
        v29 = v37 + 56 * v28;
        *(v29 + 32) = v34;
        *(v29 + 40) = a2;
        *(v29 + 48) = 0;
        *(v29 + 56) = 1;
        *(v29 + 64) = v25;
        *(v29 + 72) = v26;
        *(v29 + 80) = 2;
        v24 += 2;
        --v22;
      }

      while (v22);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    sub_2237EF678(v23);
    return v39;
  }

  else
  {

    result = sub_2237FBADC(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(result + 2);
    v30 = *(result + 3);
    if (v31 >= v30 >> 1)
    {
      result = sub_2237FBADC((v30 > 1), v31 + 1, 1, result);
    }

    *(result + 2) = v31 + 1;
    v32 = &result[56 * v31];
    *(v32 + 4) = v34;
    *(v32 + 5) = a2;
    *(v32 + 6) = 0;
    v32[56] = 1;
    *(v32 + 8) = v35;
    *(v32 + 9) = v38;
    v32[80] = 0;
  }

  return result;
}

id SendAnnouncementIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendAnnouncementIntentPerformer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendAnnouncementIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id SendAnnouncementIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendAnnouncementIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2237EF584(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2237FB9D0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2237EF678(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2237FBADC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2237EF770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2237FBE10(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2237F01C8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2237FBE10((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_2237EF884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2237EF950(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2237F01C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2237EF950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2237EFA5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2238011F0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2237EFA5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2237EFAA8(a1, a2);
  sub_2237EFBD8(&unk_2836D9928);
  return v3;
}

void *sub_2237EFAA8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2237EFCC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2238011F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_223801040();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2237EFCC4(v10, 0);
        result = sub_2238011B0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2237EFBD8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2237EFD38(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2237EFCC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A588, &qword_223804CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2237EFD38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A588, &qword_223804CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2237EFE4C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v2 = sub_223800EF0();
  v0[3] = [v1 initWithURL:v2 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A590, &qword_223804D00);
  v3 = sub_223800F50();
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2237EFF58;

  return MEMORY[0x2821FAF00](v0 + 7, v3, 0, 0);
}

uint64_t sub_2237EFF58()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2237F0100;
  }

  else
  {

    v2 = sub_2237F0074;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237F0074()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);
  *(v0 + 80) = *(v0 + 56);
  *(v0 + 88) = v3;
  *(v0 + 96) = v2;
  Seconds = CMTimeGetSeconds((v0 + 80));

  v5 = *(v0 + 8);
  v6.n128_f64[0] = Seconds;

  return v5(v6);
}

uint64_t sub_2237F0100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2237F01C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2237F022C()
{
  result = qword_27D09A510;
  if (!qword_27D09A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A510);
  }

  return result;
}

void *sub_2237F0280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(ANHomeContext) init];
  v8 = a2;
  v9 = v7;
  if (v8)
  {
    v10 = sub_223800FD0();
    [v9 setHomeName_];
  }

  if (a3)
  {
    v11 = sub_223801060();
    [v9 setRoomNames_];
  }

  if (a4)
  {
    v12 = sub_223801060();
    [v9 setZoneNames_];
  }

  return v9;
}

uint64_t sub_2237F0360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2237F03C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2237F0428(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2237F0464()
{
  result = qword_27D09A538;
  if (!qword_27D09A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SendAnnouncementIntentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2237F063C(uint64_t a1)
{
  sub_2237F06F0();
  if (v1 <= 0x3F)
  {
    sub_2237F0740(319);
    if (v2 <= 0x3F)
    {
      sub_2237F07A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2237F06F0()
{
  if (!qword_27D09A550)
  {
    v0 = sub_223801140();
    if (!v1)
    {
      atomic_store(v0, &qword_27D09A550);
    }
  }
}

void sub_2237F0740(uint64_t a1)
{
  if (!qword_27D09A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A560, "&|");
    v1 = sub_223801140();
    if (!v2)
    {
      atomic_store(v1, &qword_27D09A558);
    }
  }
}

void sub_2237F07A4(uint64_t a1)
{
  if (!qword_27D09A568)
  {
    sub_223800F00();
    v1 = sub_223801140();
    if (!v2)
    {
      atomic_store(v1, &qword_27D09A568);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2237F0808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2237F0850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SendAnnouncementIntentPerformer.resolveAnnouncement(endpointID:announcementID:speechDataURL:isReply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2237F0E1C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of SendAnnouncementIntentPerformer.performIntent(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2237F0BFC;

  return v9(a1, a2);
}

uint64_t sub_2237F0BFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2237F0D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2237F0D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ANAnnouncePlaybackState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E69726170657270;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7075727265746E69;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E6979616C70;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x646570706F7473;
  }
}

uint64_t sub_2237F0ED0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6E69726170657270;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7075727265746E69;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E6979616C70;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x646570706F7473;
  }
}

uint64_t AnnounceService.__allocating_init(logger:)(uint64_t a1)
{
  v2 = sub_223800FA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = *(v3 + 16);
  v7(v6 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, a1, v2);
  v7(v5, a1, v2);
  v8 = type metadata accessor for AnnouncePlaybackHelper(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession] = 0;
  *&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer] = 0;
  v7(&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_logger], v5, v2);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v3 + 8);
  v11(a1, v2);
  v11(v5, v2);
  *(v6 + OBJC_IVAR____TtC8Announce15AnnounceService_helper) = v10;
  return v6;
}

uint64_t AnnounceService.init(logger:)(uint64_t a1)
{
  v3 = sub_223800FA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v1 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, a1, v3);
  v7(v6, a1, v3);
  v8 = type metadata accessor for AnnouncePlaybackHelper(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession] = 0;
  *&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer] = 0;
  v7(&v9[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_logger], v6, v3);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v4 + 8);
  v11(a1, v3);
  v11(v6, v3);
  *(v1 + OBJC_IVAR____TtC8Announce15AnnounceService_helper) = v10;
  return v1;
}

uint64_t AnnounceService.deinit()
{
  v1 = OBJC_IVAR____TtC8Announce15AnnounceService_logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AnnounceService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Announce15AnnounceService_logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AnnounceService.playAnnouncementSentTone(endpointID:audioSessionID:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 88) = a3;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2237F1428, 0, 0);
}

uint64_t sub_2237F1428()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2237F14D0;
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return sub_2237FCAA8(v4, v3, v2);
}

uint64_t sub_2237F14D0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2237F1604, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2237F1604()
{
  v15 = v0;
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_223800F80();
  v4 = sub_223801100();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_223801290();
    v10 = sub_2237EF884(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2237C8000, v3, v4, "Failed to Play Announcement Sound: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DEC5C0](v7, -1, -1);
    MEMORY[0x223DEC5C0](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t AnnounceService.stopAnnouncement(endpointID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2237F17B4, 0, 0);
}

uint64_t sub_2237F17B4()
{
  v17 = v0;

  v1 = sub_223800F80();
  v2 = sub_223801110();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    v0[3] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A598, &unk_223805380);
    v7 = sub_223800FF0();
    v9 = sub_2237EF884(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2237C8000, v1, v2, "EndpointID = %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DEC5C0](v6, -1, -1);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }

  v10 = v0[6];
  v11 = sub_2237FD0F4(v0[4]);
  v0[7] = v11;
  v12 = swift_task_alloc();
  v0[8] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_2237F19EC;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v13, 0, 0, 0xD00000000000001DLL, 0x8000000223809AC0, sub_2237F20BC, v12, v14);
}

uint64_t sub_2237F19EC()
{

  return MEMORY[0x2822009F8](sub_2237F1B04, 0, 0);
}

uint64_t sub_2237F1B04()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2237F1B64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() stopCommand];
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_2237F21E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237F469C;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [a2 sendPlaybackCommand:v9 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2237F1D74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_223800FA0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v6 + 16))(v11, Strong + OBJC_IVAR____TtC8Announce15AnnounceService_logger, v5);
      v13 = a1;

      v14 = a1;
      v15 = sub_223800F80();
      v16 = sub_223801100();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28[1] = a3;
        v18 = v17;
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_223801290();
        v22 = sub_2237EF884(v20, v21, &v29);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_2237C8000, v15, v16, "Stop Announcement failed with error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223DEC5C0](v19, -1, -1);
        MEMORY[0x223DEC5C0](v18, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (v23)
    {
      (*(v6 + 16))(v9, v23 + OBJC_IVAR____TtC8Announce15AnnounceService_logger, v5);

      v24 = sub_223800F80();
      v25 = sub_223801110();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2237C8000, v24, v25, "Stop Announcement completed successfully", v26, 2u);
        MEMORY[0x223DEC5C0](v26, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70);
  return sub_2238010C0();
}

uint64_t type metadata accessor for AnnounceService(uint64_t a1)
{
  result = qword_27D09A5A0;
  if (!qword_27D09A5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237F2118(uint64_t a1)
{
  result = sub_223800FA0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2237F21E0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A5B0, &qword_223804D70) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2237F1D74(a1, v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F2278(void *a1)
{
  v1 = a1;
  v2 = [v1 processName];
  v3 = sub_223800FE0();
  v5 = v4;

  v6 = v3 == 0x616F42646E756F53 && v5 == 0xEA00000000006472;
  if (v6 || (sub_223801270() & 1) != 0 || (v3 == 0x64627568656D6F68 ? (v7 = v5 == 0xE800000000000000) : (v7 = 0), v7))
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_223801270();
  }

  return v8 & 1;
}

uint64_t NSProcessInfo.isAutoPlaybackProcess.getter()
{
  v1 = [v0 processName];
  v2 = sub_223800FE0();
  v4 = v3;

  v5 = v2 == 0x616F42646E756F53 && v4 == 0xEA00000000006472;
  if (v5 || (sub_223801270() & 1) != 0 || (v2 == 0x64627568656D6F68 ? (v6 = v4 == 0xE800000000000000) : (v6 = 0), v6))
  {

    return 1;
  }

  else
  {
    v7 = sub_223801270();

    return v7 & 1;
  }
}

uint64_t sub_2237F2460()
{
  type metadata accessor for ReadAnnouncementHistory();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  off_27D09A5B8 = result;
  return result;
}

uint64_t static ReadAnnouncementHistory.shared.getter()
{
  if (qword_27D09A400 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2237F24F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_2237F258C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ReadAnnouncementHistory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2237F2744(_BYTE *a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 184) = a4;
  *(v5 + 192) = v4;
  *(v5 + 176) = a3;
  *(v5 + 296) = a2;
  v7 = sub_223800FA0();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 300) = *a1;

  return MEMORY[0x2822009F8](sub_2237F2874, 0, 0);
}

uint64_t sub_2237F2874()
{
  v1 = *(v0 + 248);
  if (*(v0 + 300) == 1)
  {
    v2 = *(v0 + 184);
    v3 = [objc_allocWithZone(ANTonePlayerService) init];
    *(v0 + 256) = v3;
    v4 = sub_223800F40();
    v5 = *(v4 - 8);
    (*(v5 + 56))(v1, 1, 1, v4);
    if (v2)
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      sub_223800F10();
      sub_2237F3198(v6);
      sub_2237F32E8(v7, v6);
    }

    sub_2237F6C2C(*(v0 + 224));
    v8 = sub_223800F80();
    v9 = sub_223801110();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 296);
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v10;
      _os_log_impl(&dword_2237C8000, v8, v9, "Siri Audio Session ID: %u", v11, 8u);
      MEMORY[0x223DEC5C0](v11, -1, -1);
    }

    v12 = *(v0 + 248);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);

    v17 = *(v16 + 8);
    *(v0 + 264) = v17;
    *(v0 + 272) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v15);
    sub_2237F3064(v12, v13);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      v18 = 0;
    }

    else
    {
      v22 = *(v0 + 232);
      v18 = sub_223800F20();
      (*(v5 + 8))(v22, v4);
    }

    *(v0 + 280) = v18;
    v23 = *(v0 + 296);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2237F2C24;
    v24 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2237F30D4;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v24;
    [v3 playTone:0 audioSessionID:v23 endpointUUID:v18 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2237F3010();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2237F2C24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_2237F2DE0;
  }

  else
  {
    v2 = sub_2237F2D34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237F2D34()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);

  sub_2237F3198(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2237F2DE0()
{
  v27 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 216);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v4 = v1;
  v5 = sub_223800F80();
  v6 = sub_223801100();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 256);
    v25 = *(v0 + 248);
    v23 = *(v0 + 216);
    v24 = *(v0 + 264);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_223801290();
    v14 = sub_2237EF884(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2237C8000, v5, v6, "Failed to Play Announcement Sound: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DEC5C0](v11, -1, -1);
    MEMORY[0x223DEC5C0](v10, -1, -1);

    v24(v23, v9);
    v15 = v25;
  }

  else
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);

    v17(v19, v20);
    v15 = v18;
  }

  sub_2237F3198(v15);

  v21 = *(v0 + 8);

  return v21();
}

unint64_t sub_2237F3010()
{
  result = qword_27D09A5C0;
  if (!qword_27D09A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5C0);
  }

  return result;
}

uint64_t sub_2237F3064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237F30D4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A580, &qword_223804CF0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2237F3198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PlayAnnouncementSoundIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayAnnouncementSoundIntentPerformer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayAnnouncementSoundIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlayAnnouncementSoundIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayAnnouncementSoundIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2237F32E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PlayAnnouncementSoundIntentPerformer(uint64_t a1)
{
  result = qword_27D09A5C8;
  if (!qword_27D09A5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PlayAnnouncementSoundIntentPerformer.performIntent(soundType:siriAudioSessionID:endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xF8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2237F0BFC;

  return v13(a1, a2, a3, a4);
}

unint64_t AnnouncementRecord.Originator.description.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = 1836019538;
    }

    else
    {
      v1 = 1701736282;
    }
  }

  else
  {
    v1 = 1701670728;
  }

  v3 = v1 & 0xFFFF0000FFFFFFFFLL | 0x282000000000;
  MEMORY[0x223DEB9F0](*v0, *(v0 + 8));
  MEMORY[0x223DEB9F0](41, 0xE100000000000000);
  return v3;
}

uint64_t AnnouncementRecord.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnnouncementRecord.originator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_2237F3600(v2, v3, v4);
}

uint64_t sub_2237F3600(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2237F3614(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2237F3614(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t AnnouncementRecord.description.getter()
{
  v1 = 1701736302;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  sub_2238011C0();
  MEMORY[0x223DEB9F0](0x696669746E656469, 0xEC000000203A7265);
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1701736302;
  }

  v6 = 0xE400000000000000;
  if (!v3)
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x223DEB9F0](v5, v3);

  MEMORY[0x223DEB9F0](0x6F6974617275640ALL, 0xEB00000000203A6ELL);
  sub_2238010F0();
  MEMORY[0x223DEB9F0](0x616E696769726F0ALL, 0xED0000203A726F74);
  if (v4 != 255)
  {
    v1 = AnnouncementRecord.Originator.description.getter();
    v6 = v7;
  }

  MEMORY[0x223DEB9F0](v1, v6);

  return 0;
}

uint64_t AnnouncementRecord.originatorName.getter()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  sub_2237F3600(*(v0 + 32), *(v0 + 40), v1);
  return v2;
}

uint64_t get_enum_tag_for_layout_string_8Announce18AnnouncementRecordV10OriginatorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2237F3820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2237F387C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2237F3904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2237F394C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2237F39AC()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x73736563637573;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7964616572;
  if (v1 != 1)
  {
    v5 = 0x6572676F72506E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Announce::ReadAnnouncementIntentResponseCode_optional __swiftcall ReadAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237F3B14(uint64_t a1)
{
  sub_223801020();
}

void sub_2237F3C44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xD000000000000019;
  v6 = 0x80000002238095E0;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001CLL;
    v6 = 0x8000000223809780;
  }

  v7 = 0x73736563637573;
  if (v2 != 3)
  {
    v7 = 0x6572756C696166;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE700000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7964616572;
  if (v2 != 1)
  {
    v9 = 0x6572676F72506E69;
    v8 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2237F3D7C(uint64_t a1)
{
  v2 = sub_2237F43E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237F3DCC(uint64_t a1)
{
  v2 = sub_2237F4340();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t _s8Announce34ReadAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A648, &qword_223805370);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A650, &qword_223805378) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_223805050;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_223800E60();
  v4[v1] = 1;
  sub_223800E60();
  v4[2 * v1] = 2;
  sub_223800E60();
  v4[3 * v1] = 3;
  sub_223800E60();
  v4[4 * v1] = 4;
  sub_223800E60();
  v4[5 * v1] = 5;
  sub_223800E60();
  v4[6 * v1] = 6;
  sub_223800E60();
  v5 = sub_2237F8B40(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_2237F4078()
{
  result = qword_27D09A5D8;
  if (!qword_27D09A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5D8);
  }

  return result;
}

unint64_t sub_2237F40D0()
{
  result = qword_27D09A5E0;
  if (!qword_27D09A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A5E8, &qword_223805100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5E0);
  }

  return result;
}

unint64_t sub_2237F4138()
{
  result = qword_27D09A5F0;
  if (!qword_27D09A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5F0);
  }

  return result;
}

unint64_t sub_2237F4190()
{
  result = qword_27D09A5F8;
  if (!qword_27D09A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A5F8);
  }

  return result;
}

unint64_t sub_2237F41E8()
{
  result = qword_27D09A600;
  if (!qword_27D09A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A600);
  }

  return result;
}

unint64_t sub_2237F4240()
{
  result = qword_27D09A608;
  if (!qword_27D09A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A608);
  }

  return result;
}

unint64_t sub_2237F4294()
{
  result = qword_27D09A610;
  if (!qword_27D09A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A610);
  }

  return result;
}

unint64_t sub_2237F42E8()
{
  result = qword_27D09A618;
  if (!qword_27D09A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A618);
  }

  return result;
}

unint64_t sub_2237F4340()
{
  result = qword_27D09A620;
  if (!qword_27D09A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A620);
  }

  return result;
}

unint64_t sub_2237F43E4()
{
  result = qword_27D09A628;
  if (!qword_27D09A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A628);
  }

  return result;
}

unint64_t sub_2237F443C()
{
  result = qword_27D09A630;
  if (!qword_27D09A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A630);
  }

  return result;
}

unint64_t sub_2237F4494()
{
  result = qword_27D09A638;
  if (!qword_27D09A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A638);
  }

  return result;
}

unint64_t sub_2237F44EC()
{
  result = qword_27D09A640;
  if (!qword_27D09A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2237F469C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2237F4724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_223800FA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237F6C2C(v11);

  v12 = sub_223800F80();
  v13 = sub_223801110();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v9;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = a3;
    v34 = v16;
    v31 = v16;
    *v15 = 136315138;
    aBlock = a1;
    v36 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A598, &unk_223805380);
    v17 = sub_223800FF0();
    v19 = sub_2237EF884(v17, v18, &v34);
    v30 = v8;
    v20 = a4;
    v21 = v19;

    *(v15 + 4) = v21;
    a4 = v20;
    _os_log_impl(&dword_2237C8000, v12, v13, "EndpointID = %s", v15, 0xCu);
    v22 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    v23 = v22;
    a3 = v33;
    MEMORY[0x223DEC5C0](v23, -1, -1);
    MEMORY[0x223DEC5C0](v15, -1, -1);

    (*(v32 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = sub_2237F6E84(a1, a2);
  v25 = [objc_opt_self() stopCommand];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a3;
  v27[4] = a4;
  v39 = sub_2237F4EE8;
  v40 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2237F469C;
  v38 = &block_descriptor_2;
  v28 = _Block_copy(&aBlock);

  [v24 sendPlaybackCommand:v25 completionHandler:v28];
  _Block_release(v28);
}

void sub_2237F4A74(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_223800FA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v55 = a4;
    if (a1)
    {
      v19 = Strong;
      v20 = a1;
      sub_2237F6C2C(v14);

      v21 = a1;
      v22 = sub_223800F80();
      v23 = sub_223801100();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v53 = v7;
        v25 = v24;
        v26 = swift_slowAlloc();
        v54 = a3;
        v27 = v26;
        v56[0] = v26;
        *v25 = 136315138;
        swift_getErrorValue();
        v28 = sub_223801290();
        v30 = sub_2237EF884(v28, v29, v56);
        v52 = v8;
        v31 = v30;

        *(v25 + 4) = v31;
        _os_log_impl(&dword_2237C8000, v22, v23, "Stop Announcement failed with error: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v32 = v27;
        a3 = v54;
        MEMORY[0x223DEC5C0](v32, -1, -1);
        v33 = v25;
        v7 = v53;
        MEMORY[0x223DEC5C0](v33, -1, -1);

        v34 = v52;
      }

      else
      {

        v34 = v8;
      }

      v43 = *(v34 + 8);
      v43(v14, v7);
    }

    else
    {
      v35 = Strong;
      sub_2237F6C2C(v16);

      v36 = sub_223800F80();
      v37 = sub_223801110();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v8;
        v39 = v7;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2237C8000, v36, v37, "Stop Announcement completed successfully", v40, 2u);
        v41 = v40;
        v7 = v39;
        MEMORY[0x223DEC5C0](v41, -1, -1);

        v42 = v38;
      }

      else
      {

        v42 = v8;
      }

      v43 = *(v42 + 8);
      v43(v16, v7);
    }

    v44 = v18;
    sub_2237F6C2C(v11);

    v45 = sub_223800F80();
    v46 = sub_223801110();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v7;
      v48 = a3;
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      if (qword_27D09A400 != -1)
      {
        swift_once();
      }

      v50 = off_27D09A5B8;
      swift_beginAccess();
      *(v49 + 4) = *(v50[2] + 16);
      _os_log_impl(&dword_2237C8000, v45, v46, "Records in Stop Response: %ld", v49, 0xCu);
      MEMORY[0x223DEC5C0](v49, -1, -1);
      a3 = v48;
      v7 = v47;
    }

    v43(v11, v7);
    v57 = 3;
    a3(&v57);
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2237F4F30, 0, 0);
}

uint64_t sub_2237F4F30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2237F5038;
  v6 = v0[2];

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000011, 0x8000000223809C30, sub_2237F5390, v4, &type metadata for StopAnnouncementIntentResponseCode);
}

uint64_t sub_2237F5038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2237F5148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_2237F4724(a3, a4, sub_2237F5590, v12);
}

id StopAnnouncementIntentPerfomer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StopAnnouncementIntentPerfomer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentPerfomer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id StopAnnouncementIntentPerfomer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAnnouncementIntentPerfomer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StopAnnouncementIntentPerfomer(uint64_t a1)
{
  result = qword_27D09A658;
  if (!qword_27D09A658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StopAnnouncementIntentPerfomer.performIntent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x100);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2237F0BFC;

  return v11(a1, a2, a3);
}

uint64_t sub_2237F5590(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A668, &qword_2238053C8);
  return sub_2238010C0();
}

Announce::AnnouncementSoundType_optional __swiftcall AnnouncementSoundType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AnnouncementSoundType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2237F56E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000002238097B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0x80000002238097B0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_223801270();
  }

  return v8 & 1;
}

uint64_t sub_2237F5794()
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F581C(uint64_t a1)
{
  sub_223801020();
}

uint64_t sub_2237F5890(uint64_t a1)
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F5914@<X0>(char *a2@<X8>)
{
  v3 = sub_223801240();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2237F5974(unint64_t *a1@<X8>)
{
  v2 = 0x80000002238097B0;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2237F59E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A6E8, &qword_2238056A0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A6F0, &unk_2238056A8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2238053D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_223800E60();
  v4[v1] = 1;
  sub_223800E60();
  v5 = sub_2237F8D28(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D09A670 = v5;
  return result;
}

uint64_t static AnnouncementSoundType.caseDisplayRepresentations.getter()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AnnouncementSoundType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27D09A670 = a1;
}

uint64_t (*static AnnouncementSoundType.caseDisplayRepresentations.modify(uint64_t a1))()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_2237F5CC0()
{
  result = qword_27D09A678;
  if (!qword_27D09A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A678);
  }

  return result;
}

unint64_t sub_2237F5D18()
{
  result = qword_27D09A680;
  if (!qword_27D09A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A688, &qword_223805480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A680);
  }

  return result;
}

unint64_t sub_2237F5D80()
{
  result = qword_27D09A690;
  if (!qword_27D09A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A690);
  }

  return result;
}

unint64_t sub_2237F5DD8()
{
  result = qword_27D09A698;
  if (!qword_27D09A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A698);
  }

  return result;
}

unint64_t sub_2237F5E30()
{
  result = qword_27D09A6A0;
  if (!qword_27D09A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6A0);
  }

  return result;
}

unint64_t sub_2237F5E88()
{
  result = qword_27D09A6A8;
  if (!qword_27D09A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6A8);
  }

  return result;
}

unint64_t sub_2237F5EDC()
{
  result = qword_27D09A6B0;
  if (!qword_27D09A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6B0);
  }

  return result;
}

unint64_t sub_2237F5F30()
{
  result = qword_27D09A6B8;
  if (!qword_27D09A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6B8);
  }

  return result;
}

unint64_t sub_2237F5F88()
{
  result = qword_27D09A6C0;
  if (!qword_27D09A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6C0);
  }

  return result;
}

unint64_t sub_2237F6048()
{
  result = qword_27D09A6C8;
  if (!qword_27D09A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6C8);
  }

  return result;
}

uint64_t sub_2237F609C(uint64_t a1)
{
  v2 = sub_2237F6048();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2237F60EC()
{
  result = qword_27D09A6D0;
  if (!qword_27D09A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6D0);
  }

  return result;
}

unint64_t sub_2237F6144()
{
  result = qword_27D09A6D8;
  if (!qword_27D09A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6D8);
  }

  return result;
}

unint64_t sub_2237F619C()
{
  result = qword_27D09A6E0;
  if (!qword_27D09A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A6E0);
  }

  return result;
}

uint64_t sub_2237F61F0()
{
  if (qword_27D09A408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2237F6268(uint64_t a1)
{
  v2 = sub_2237F5F88();

  return MEMORY[0x28210C300](a1, v2);
}

id sub_2237F62CC(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = sub_223800FA0();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223800F40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v11 = MEMORY[0x28223BE20](v59);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v65 = v6;
  v24 = *(v6 + 56);
  v24(&v56 - v22, 1, 1, v5);
  if (a2)
  {
    sub_223800F10();
    sub_2237F7D88(v21, v23, &unk_27D09A9C0, &qword_223804B08);
  }

  v60 = OBJC_IVAR____TtC8Announce15IntentPerformer_announce;
  v25 = *(v66 + OBJC_IVAR____TtC8Announce15IntentPerformer_announce);
  if (v25)
  {
    v57 = v21;
    v26 = v25;
    v27 = [v26 endpointIdentifier];
    if (v27)
    {
      v28 = v27;
      sub_223800F30();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v24(v18, v29, 1, v5);
    v30 = *(v8 + 48);
    sub_2237F0D34(v18, v10, &unk_27D09A9C0, &qword_223804B08);
    sub_2237F0D34(v23, &v10[v30], &unk_27D09A9C0, &qword_223804B08);
    v31 = v65;
    v32 = *(v65 + 48);
    if (v32(v10, 1, v5) == 1)
    {
      sub_2237F0360(v18, &unk_27D09A9C0, &qword_223804B08);
      if (v32(&v10[v30], 1, v5) == 1)
      {
        sub_2237F0360(v10, &unk_27D09A9C0, &qword_223804B08);
        goto LABEL_19;
      }
    }

    else
    {
      sub_2237F0D34(v10, v15, &unk_27D09A9C0, &qword_223804B08);
      if (v32(&v10[v30], 1, v5) != 1)
      {
        v52 = &v10[v30];
        v53 = v58;
        (*(v31 + 32))(v58, v52, v5);
        sub_2237F7D10();
        v54 = sub_223800FC0();
        v55 = *(v31 + 8);
        v55(v53, v5);
        sub_2237F0360(v18, &unk_27D09A9C0, &qword_223804B08);
        v55(v15, v5);
        sub_2237F0360(v10, &unk_27D09A9C0, &qword_223804B08);
        if (v54)
        {
          goto LABEL_19;
        }

        v21 = v57;
        goto LABEL_14;
      }

      sub_2237F0360(v18, &unk_27D09A9C0, &qword_223804B08);
      (*(v31 + 8))(v15, v5);
    }

    v21 = v57;
    sub_2237F0360(v10, &unk_27D09A7D0, "rt");
  }

LABEL_14:
  v33 = v21;
  v34 = v62;
  sub_2237F6C2C(v62);
  v35 = sub_223800F80();
  v36 = sub_223801110();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    swift_beginAccess();
    sub_2237F0D34(v23, v33, &unk_27D09A9C0, &qword_223804B08);
    v39 = sub_223800FF0();
    v41 = sub_2237EF884(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_2237C8000, v35, v36, "EndpointID = %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x223DEC5C0](v38, -1, -1);
    MEMORY[0x223DEC5C0](v37, -1, -1);
  }

  (*(v63 + 8))(v34, v64);
  v42 = v65;
  v43 = v61;
  swift_beginAccess();
  sub_2237F0D34(v23, v43, &unk_27D09A9C0, &qword_223804B08);
  v44 = 0;
  if ((*(v42 + 48))(v43, 1, v5) != 1)
  {
    v44 = sub_223800F20();
    (*(v42 + 8))(v43, v5);
  }

  v45 = [objc_allocWithZone(ANAnnounce) initWithEndpointIdentifier_];

  v46 = v66;
  v47 = sub_2237F6B24();
  [v45 setDelegate_];

  v48 = *(v46 + v60);
  *(v46 + v60) = v45;
  v26 = v45;

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2237F7D68;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237F469C;
  aBlock[3] = &block_descriptor_3;
  v50 = _Block_copy(aBlock);

  [v26 prewarmWithHandler_];
  _Block_release(v50);
LABEL_19:
  sub_2237F0360(v23, &unk_27D09A9C0, &qword_223804B08);
  return v26;
}

uint64_t *sub_2237F6B60(uint64_t *a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = a2(0);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*a3];
    *v14 = a4;
    *(v14 + 1) = v11;
    v19.receiver = v13;
    v19.super_class = v12;
    v15 = objc_msgSendSuper2(&v19, sel_init);
    v16 = *(v4 + v5);
    *(v4 + v5) = v15;
    v7 = v15;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

uint64_t sub_2237F6C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A7C8, "Xt");
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___logger;
  swift_beginAccess();
  sub_2237F0D34(v1 + v9, v8, &qword_27D09A7C8, "Xt");
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  v12 = sub_2237F0360(v8, &qword_27D09A7C8, "Xt");
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v12);
  sub_223800F90();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_2237F7D88(v6, v1 + v9, &qword_27D09A7C8, "Xt");
  return swift_endAccess();
}

id sub_2237F6E84(void *a1, uint64_t a2)
{
  v46 = a1;
  v3 = sub_223800F40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v47 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v42[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v42[-v20];
  v22 = *(v4 + 56);
  v22(&v42[-v20], 1, 1, v3);
  if (a2)
  {
    sub_223800F10();
    sub_2237F0360(v21, &unk_27D09A9C0, &qword_223804B08);
    sub_2237F32E8(v19, v21);
  }

  v23 = OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession;
  v24 = *(v48 + OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession);
  if (!v24)
  {
    goto LABEL_14;
  }

  v46 = v24;
  v25 = [v46 endpointIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_223800F30();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v22(v16, v27, 1, v3);
  v28 = *(v6 + 48);
  sub_2237F0D34(v16, v8, &unk_27D09A9C0, &qword_223804B08);
  sub_2237F0D34(v21, &v8[v28], &unk_27D09A9C0, &qword_223804B08);
  v29 = *(v4 + 48);
  if (v29(v8, 1, v3) == 1)
  {
    sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
    if (v29(&v8[v28], 1, v3) == 1)
    {
      sub_2237F0360(v8, &unk_27D09A9C0, &qword_223804B08);
LABEL_19:
      sub_2237F0360(v21, &unk_27D09A9C0, &qword_223804B08);
      return v46;
    }

    goto LABEL_13;
  }

  v30 = v45;
  sub_2237F0D34(v8, v45, &unk_27D09A9C0, &qword_223804B08);
  if (v29(&v8[v28], 1, v3) == 1)
  {

    sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
    (*(v4 + 8))(v30, v3);
LABEL_13:
    sub_2237F0360(v8, &unk_27D09A7D0, "rt");
    goto LABEL_14;
  }

  v39 = v44;
  (*(v4 + 32))(v44, &v8[v28], v3);
  sub_2237F7D10();
  v43 = sub_223800FC0();
  v40 = v30;
  v41 = *(v4 + 8);
  v41(v39, v3);
  sub_2237F0360(v16, &unk_27D09A9C0, &qword_223804B08);
  v41(v40, v3);
  sub_2237F0360(v8, &unk_27D09A9C0, &qword_223804B08);
  if (v43)
  {
    goto LABEL_19;
  }

LABEL_14:
  v31 = v47;
  sub_2237F0D34(v21, v47, &unk_27D09A9C0, &qword_223804B08);
  if ((*(v4 + 48))(v31, 1, v3) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_223800F20();
    (*(v4 + 8))(v31, v3);
  }

  v33 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier_];

  v34 = v48;
  v35 = sub_2237F6AE8();
  [v33 setDelegate_];

  sub_2237F0360(v21, &unk_27D09A9C0, &qword_223804B08);
  v36 = *(v34 + v23);
  *(v34 + v23) = v33;
  v37 = v33;

  return v37;
}

void sub_2237F745C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *a2;
    v6 = *(Strong + v5);
    if (v6)
    {
      [v6 setDelegate_];
      v7 = *&v4[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v4[v5] = 0;
  }
}