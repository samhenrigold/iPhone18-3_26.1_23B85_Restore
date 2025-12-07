uint64_t sub_1D4E41008(uint64_t a1)
{
  result = sub_1D5611AB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SocialProfile(uint64_t a1)
{
  result = qword_1EDD5DC48;
  if (!qword_1EDD5DC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicDataRequest.preferredExecutionMethod.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EDD5F568 = v1;
  return sub_1D560D318();
}

uint64_t type metadata accessor for UserProfile(uint64_t a1)
{
  result = qword_1EDD57E60;
  if (!qword_1EDD57E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4E4119C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5611AB8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D4E41240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D5611AB8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t static MusicLibrary.extendedStorageType.getter()
{
  if (qword_1EDD5F238 != -1)
  {
    swift_once();
  }

  return qword_1EDD5F240;
}

uint64_t sub_1D4E41334()
{
  v0 = _s15InternalStorageCMa();
  result = sub_1D4E413BC(&qword_1EDD5F320, v1, _s15InternalStorageCMa);
  qword_1EDD5F240 = v0;
  unk_1EDD5F248 = result;
  return result;
}

uint64_t sub_1D4E413BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4E41400(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

void OUTLINED_FUNCTION_92_0()
{

  JUMPOUT(0x1DA6EC100);
}

void *OUTLINED_FUNCTION_92_1()
{
  v2 = *(v0 - 200);

  return memcpy((v0 - 160), v2, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_92_2(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_92_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  return sub_1D4F39AB0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_92_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_13()
{
  v4 = *(v2 - 448);
  v5 = *(v2 - 424);
  v6 = *(v2 - 432);
  v7 = *(v2 - 440);

  return sub_1D526CDE8(v4, v1, v5, v6, v7, v0);
}

uint64_t OUTLINED_FUNCTION_92_16(uint64_t a1)
{

  return sub_1D5614C28();
}

uint64_t sub_1D4E41774()
{
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_311_0();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_82();
  sub_1D4E41F54(v1);
  return v0;
}

uint64_t type metadata accessor for MusicLibrary.DownloadedItemsCenter(uint64_t a1)
{
  result = qword_1EDD5D448;
  if (!qword_1EDD5D448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E417F4(uint64_t a1)
{
  if (!qword_1EDD5D2C0)
  {
    sub_1D560C368();
    _s23DownloadedItemsObserverCMa(255);
    sub_1D4E421AC();
    v1 = sub_1D5611E78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5D2C0);
    }
  }
}

void sub_1D4E41870(uint64_t a1)
{
  sub_1D4E417F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D4E41918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E41774();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_167()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_112_2()
{
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return sub_1D504CF98(v0, type metadata accessor for MusicMovie);
}

uint64_t OUTLINED_FUNCTION_112_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_8()
{
}

uint64_t OUTLINED_FUNCTION_112_9()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_112_12()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

unint64_t OUTLINED_FUNCTION_112_14(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 168);

  return sub_1D4E6835C(v5, v1, (v3 - 96));
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_83()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_163(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_83_10()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_1D5612368();
}

uint64_t OUTLINED_FUNCTION_83_22(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_83_24()
{

  return static MusicDaemon.Error.== infix(_:_:)(v0 - 104, (v0 - 128));
}

uint64_t OUTLINED_FUNCTION_83_25@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return type metadata accessor for UploadedVideo(0);
}

uint64_t OUTLINED_FUNCTION_83_26()
{

  return sub_1D5551868(v0, type metadata accessor for TVShow);
}

uint64_t sub_1D4E41F54(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.DownloadedItemsCenter(0);
  OUTLINED_FUNCTION_2_19(v2);
  *(v1 + 16) = sub_1D4E43DBC();
  *(v1 + 24) = [objc_opt_self() sharedLibraryTransientStateController];
  *(v1 + 32) = [objc_opt_self() sharedContentTasteController];
  *(v1 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C770;
  *(v3 + 32) = sub_1D560F018();
  *(v3 + 40) = sub_1D560F058();
  v4 = sub_1D5612A08();
  OUTLINED_FUNCTION_2_19(v4);
  *(v1 + 40) = sub_1D56129A8();
  sub_1D4E473A4();
  v5 = OUTLINED_FUNCTION_147();
  v6 = type metadata accessor for MusicLibrary.CloudStatusController(v5);
  OUTLINED_FUNCTION_2_19(v6);
  v7 = OUTLINED_FUNCTION_143_5();
  *(v1 + 48) = sub_1D4E4AB1C(v7);
  *(v1 + 56) = sub_1D560F0C8() & 1;
  if (sub_1D4E5005C())
  {

    sub_1D4E55E98();
  }

  return v1;
}

uint64_t _s23DownloadedItemsObserverCMa(uint64_t a1)
{
  result = qword_1EDD5D328;
  if (!qword_1EDD5D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4E42100(uint64_t a1)
{
  result = sub_1D560C368();
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

unint64_t sub_1D4E421AC()
{
  result = qword_1EDD5F560;
  if (!qword_1EDD5F560)
  {
    sub_1D560C368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  v2 = v0[79];
  v4 = v0[18];
  v3 = v0[19];
  *(v1 - 176) = v0[21];
  *(v1 - 168) = v3;
  v6 = v0[15];
  v5 = v0[16];
  *(v1 - 160) = v4;
  *(v1 - 152) = v5;
  v8 = v0[12];
  v7 = v0[13];
  *(v1 - 144) = v6;
  *(v1 - 136) = v7;
  v10 = v0[9];
  v9 = v0[10];
  *(v1 - 128) = v8;
  *(v1 - 120) = v9;
  v11 = v0[7];
  *(v1 - 112) = v10;
  *(v1 - 104) = v11;
  return v2;
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2)
{

  return sub_1D5616098();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1, uint64_t a2)
{

  return sub_1D5616038();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

void OUTLINED_FUNCTION_2_30()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_2_37()
{
  v2 = *(v0 - 176);
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = v2;
  *(v0 - 224) = *(v0 - 160);

  return sub_1D4F0A668(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_2_38()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_2_48(unint64_t *a1)
{
  v2 = MEMORY[0x1E6975A58];

  return sub_1D505B694(a1, v2);
}

uint64_t OUTLINED_FUNCTION_2_55(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_56(uint64_t a1, uint64_t a2)
{

  sub_1D4EFF8E4();
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

void *OUTLINED_FUNCTION_2_60()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_2_64()
{
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_67(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_2_71()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_2_75()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_2_80@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 240) = a1;
  *(v2 - 304) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_2_82(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_91()
{
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

void OUTLINED_FUNCTION_2_93(char *a1@<X8>)
{
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t OUTLINED_FUNCTION_2_94()
{
}

uint64_t OUTLINED_FUNCTION_2_100()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_21(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_2_104(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_111(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_112(unint64_t *a1)
{
  v2 = MEMORY[0x1E69762D8];

  return sub_1D523A174(a1, v2);
}

uint64_t OUTLINED_FUNCTION_2_113(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_114()
{

  return sub_1D5612368();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_168(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_119(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_121(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_2_124@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[75];
  *(v2 - 112) = v1[76];
  *(v2 - 104) = v4;
  v5 = v1[73];
  *(v2 - 96) = v1[74];
  *(v2 - 88) = v5;
}

void OUTLINED_FUNCTION_2_126()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_2_129()
{

  return sub_1D52EC240(v0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
}

void OUTLINED_FUNCTION_75()
{

  sub_1D4F0029C();
}

uint64_t OUTLINED_FUNCTION_2_131()
{

  return type metadata accessor for UploadedVideoPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_2_140(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_149()
{

  return sub_1D56159C8();
}

void *OUTLINED_FUNCTION_2_150()
{

  return memcpy((v1 - 136), (v0 + 24), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_2_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_2_157()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_2_162(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_2_164()
{

  return sub_1D560DE38();
}

uint64_t OUTLINED_FUNCTION_2_174(unint64_t *a1)
{
  v2 = MEMORY[0x1E6975F80];

  return sub_1D5433978(a1, v2);
}

uint64_t OUTLINED_FUNCTION_2_176()
{
  *(v7 - 136) = v3;
  *(v7 - 135) = v5;
  *(v7 - 134) = v4;
  *(v7 - 133) = v1;
  *(v7 - 132) = v6;
  *(v7 - 128) = v0;
  return v2;
}

void *OUTLINED_FUNCTION_2_179()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_2_180()
{

  return type metadata accessor for UploadedAudioPropertyProvider(0);
}

void OUTLINED_FUNCTION_2_183()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t OUTLINED_FUNCTION_2_191(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_193(unint64_t *a1)
{
  v2 = MEMORY[0x1E6976688];

  return sub_1D5529598(a1, v2);
}

uint64_t OUTLINED_FUNCTION_2_195()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_203()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_2_205(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_207(uint64_t a1, uint64_t a2)
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_2_212(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t sub_1D4E43DBC()
{
  *(v0 + 16) = 0;
  sub_1D560C368();
  _s23DownloadedItemsObserverCMa(0);
  sub_1D4E421AC();
  sub_1D5611E68();
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_lock;
  sub_1D560F628();
  swift_allocObject();
  *(v0 + v1) = sub_1D560F618();
  return v0;
}

void sub_1D4E43F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryTransientStateControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelLibraryTransientStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryTransientStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryTransientStateControllerClass_block_invoke_cold_1();
    return sub_1D4E44000(v3);
  }

  return result;
}

void sub_1D4E44000(uint64_t a1)
{
  sub_1D4E440E4();
  if (v1 <= 0x3F)
  {
    sub_1D4E44134(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D4E440E4()
{
  if (!qword_1EDD5D850)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D850);
    }
  }
}

void sub_1D4E44134(uint64_t a1)
{
  if (!qword_1EDD5D2C8)
  {
    _s19SyncProgressMonitorCMa();
    sub_1D4E4FE5C();
    v1 = sub_1D5610AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5D2C8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 72) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return sub_1D560C518();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return sub_1D560CDE8();
}

void OUTLINED_FUNCTION_3_14(unint64_t a1@<X8>)
{

  sub_1D4F03BF4(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_3_15()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_3_33()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_3_35()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_42(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return type metadata accessor for MusicPinPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_3_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_60()
{
}

uint64_t OUTLINED_FUNCTION_3_64(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_3_66(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_3_69()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_71()
{

  return sub_1D560F7D8();
}

void OUTLINED_FUNCTION_3_72()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_3_79(uint64_t a1@<X8>)
{
  *(v2 + 56) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
}

void OUTLINED_FUNCTION_3_89()
{
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

__n128 OUTLINED_FUNCTION_3_99@<Q0>(uint64_t a1@<X8>, __n128 a2, __int128 a3, __int128 a4, uint64_t a5)
{
  result = a2;
  *(a1 + 96) = a5;
  *(a1 + 64) = a3;
  *(a1 + 80) = a4;
  *(a1 + 48) = a2;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_100(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_104(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_105()
{

  return sub_1D560D4D8();
}

uint64_t OUTLINED_FUNCTION_3_112(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_114(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_116(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_119(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_121(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_123()
{

  return sub_1D51EC8B4(0, 0, v0, &unk_1D564D2A0, v1);
}

uint64_t OUTLINED_FUNCTION_3_125(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_128()
{

  sub_1D4EFF8E4();
}

void OUTLINED_FUNCTION_3_129()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_131()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_133()
{

  return _s21EntryPropertyProviderVMa(0);
}

uint64_t OUTLINED_FUNCTION_3_134()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_3_135(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_136()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_137(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_3_139(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_141()
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_3_143()
{
}

uint64_t OUTLINED_FUNCTION_3_153()
{

  return sub_1D5615B68();
}

void *OUTLINED_FUNCTION_3_155(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return memcpy(va, (v18 + 24), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_3_156(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_3_157()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_3_158()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_159()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_161(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_3_162()
{

  sub_1D4EFF9AC();
}

void OUTLINED_FUNCTION_3_164()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_3_170(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 120) = v1;
  return v2 - 120;
}

uint64_t OUTLINED_FUNCTION_3_176()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_3_177()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_180()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_3_181()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_183()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_3_186()
{
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_3_189()
{
  v8 = v3[77];
  *(v0 + 16) = v1;
  v9 = v0 + 80 * v2;
  *(v9 + 32) = 542327072;
  *(v9 + 40) = 0xE400000000000000;
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  *(v9 + 96) = *(v4 + 6);
  *(v9 + 64) = v11;
  *(v9 + 80) = v12;
  *(v9 + 48) = v10;
  *(v9 + 104) = 0;
  v13 = *v8;
  v14 = v8[1];
  v3[53] = v5;
  v3[54] = v6;
  v3[50] = v13;
  v3[51] = v14;

  return sub_1D4E628D4((v3 + 50), (v3 + 12));
}

uint64_t OUTLINED_FUNCTION_3_191(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_199()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_3_201()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_3_208(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_213(uint64_t a1)
{

  return swift_once();
}

void MediaPlayerLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3890;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t MediaPlayerLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C3A28;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_2;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void MediaPlayerLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3AC8;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t MediaPlayerLibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C3BD0;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_4;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void MediaPlayerLibrary_3()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_5;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3C10;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_4()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_7;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3C68;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_5()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_9;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3CD8;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_9 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_6()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_16;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3E30;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_16 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_7()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_18;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3F00;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_18 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_8()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_19;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C3F88;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_19)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t MediaPlayerLibrary_9()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_20;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C3FC8;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_20 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_20;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t MediaPlayerLibrary_10()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_23)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_23;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C4030;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_23 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_23;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_23)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void MediaPlayerLibrary_11()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_24;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C4170;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_24 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t MediaPlayerLibrary_12()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_25;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C4210;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_25 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_25;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t MediaPlayerLibrary_13()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_26;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C4278;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_26;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t MediaPlayerLibrary_14()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_27)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_27;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C4290;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_27 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_27;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_27)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t MediaPlayerLibrary_15()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_28)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_28;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84C42C8;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_28 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_28;
  v1 = v3[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_28)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void MediaPlayerLibrary_16()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_29)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_29;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C4308;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_29 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_29)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_17()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_30)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_30;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C4320;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_30 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_30)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_18()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_33)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_33;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C4400;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_33 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_33)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void MediaPlayerLibrary_19()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_36)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke_36;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E84C4470;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_36 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_36)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

id getMPModelLibraryTransientStateControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_2();
    v6[3] = dlsym(v1, "MPModelLibraryTransientStateControllerDidChangeNotification");
    getMPModelLibraryTransientStateControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void __getMPContentTasteControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_14();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPContentTasteController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPContentTasteControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPContentTasteControllerClass_block_invoke_cold_1();
    __77__MusicKit_SoftLinking_MPContentTasteController_sharedContentTasteController__block_invoke();
  }
}

void sub_1D4E47288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPContentTasteControllerDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr;
  if (!getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_14();
    v6[3] = dlsym(v1, "MPContentTasteControllerDidChangeNotification");
    getMPContentTasteControllerDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_1D4E473A4()
{
  if (sub_1D560EFB8())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_143_5();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 userIdentity];
      OUTLINED_FUNCTION_107_5();
      swift_unknownObjectRelease();
      return v0;
    }

    swift_unknownObjectRelease();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568B930);
  sub_1D560EFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  v4 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0xD00000000000002ELL, 0x80000001D568B950);
  result = OUTLINED_FUNCTION_71_21("Fatal error", v5, v6, 0, 0xE000000000000000, "MusicKitInternal/MusicLibrary+Internal.swift");
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{

  return sub_1D5615D78();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_1D560DE38();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1)
{

  return sub_1D5615D78();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_63()
{
}

void OUTLINED_FUNCTION_17_11(__n128 a1)
{
  *v3 = a1;
  *(v3->n128_u64 + v2[7]) = v1;
  *(v3->n128_u64 + v2[8]) = v1;
  *(v3->n128_u64 + v2[9]) = v1;
  *(v3->n128_u64 + v2[10]) = v1;
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_17_27@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = v1;
  *(v3 - 88) = a1;
  *(v3 - 72) = v2;
  return v3 - 96;
}

double OUTLINED_FUNCTION_12_2()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_32()
{

  return sub_1D5614898();
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_38()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_17_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, a4);
}

void *OUTLINED_FUNCTION_17_45()
{

  return memcpy(&STACK[0x2E8], (v0 + 48), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_17_48(uint64_t a1)
{

  return sub_1D560E658();
}

uint64_t OUTLINED_FUNCTION_17_49()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_17_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_53(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_54()
{
  v7 = *(v5 - 112) + v3;

  return sub_1D4E69910(v7, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_17_55(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_17_57@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_1D5616038();
}

uint64_t OUTLINED_FUNCTION_17_61()
{
  v3 = *(v2 - 200);
  *v3 = v0;
  v3[1] = v1;
  __swift_project_boxed_opaque_existential_1((v2 - 128), *(v2 - 104));

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_17_67(uint64_t a1)
{
  sub_1D52EFD44(v1, a1);
}

void OUTLINED_FUNCTION_17_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1D531E3F4(a1, v21, v20, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_17_72(uint64_t a1)
{
  v2[71] = a1;
  v2[72] = *(v3 + 16);
  v2[73] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_74(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_17_81(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_17_83()
{

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_17_84(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_85()
{

  return type metadata accessor for CreditArtistPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_17_94(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_17_95(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_17_97(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_17_98(uint64_t a1)
{

  return sub_1D4E6C9CC(a1, v1, v2);
}

uint64_t sub_1D4E48324(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for MusicLibrary.CloudStatusController(uint64_t a1)
{
  result = qword_1EDD5D528;
  if (!qword_1EDD5D528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D4E48388()
{
  result = qword_1EDD5B4E8;
  if (!qword_1EDD5B4E8)
  {
    type metadata accessor for MusicRequestConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5B4E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a2;

  return sub_1D560D838();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_22_9(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_1D5610758();
}

void OUTLINED_FUNCTION_22_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_22_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_25(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  sub_1D4E48324((v0 - 160), v0 - 120);

  return sub_1D4E628D4(v0 - 120, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return sub_1D56151F8();
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t a1)
{

  return sub_1D560D0F8();
}

void OUTLINED_FUNCTION_22_30()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_22_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_33(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(*(v2 - 232), a2);

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_22_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_40()
{

  return sub_1D560E3F8();
}

uint64_t OUTLINED_FUNCTION_22_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_47(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E6975018];

  return sub_1D4E62A60(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_22_51()
{
  v4 = *(v2 - 192);

  return sub_1D52A9A24(v1, v4, v0);
}

double OUTLINED_FUNCTION_22_52()
{

  return sub_1D51D2A80(v0, v1, v2, v3, v4);
}

void OUTLINED_FUNCTION_22_53()
{
  v4[128] = v0;
  v4[127] = v8;
  v4[126] = v7;
  v4[125] = v5;
  v4[124] = v1;
  v4[123] = v6;
  v4[122] = v3;
  v4[121] = v2;
}

void OUTLINED_FUNCTION_22_55()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_22_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_22_62()
{

  return sub_1D531EC24(v1, v0);
}

uint64_t OUTLINED_FUNCTION_22_63(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_22_65(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_22_67()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_22_69(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_73()
{

  return sub_1D54EF4CC(v0);
}

void OUTLINED_FUNCTION_22_77()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2082;
  *(v1 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_22_82(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_22_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(v5 - 416);
  v8 = *(v5 - 432);
  v9 = *(v5 - 168);

  return sub_1D56056A8(v7, v8, v9, a4, a5);
}

void *static ClientInfo.default.getter@<X0>(uint64_t a1@<X8>)
{
  result = static ClientInfo.optionalDefault.getter(v12);
  v3 = *(&v12[0] + 1);
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v13;
  if (*(&v12[0] + 1))
  {
    *a1 = *&v12[0];
    *(a1 + 8) = v3;
    v4 = v15;
    *(a1 + 16) = v14;
    *(a1 + 32) = v4;
    *(a1 + 48) = v16;
    *(a1 + 64) = v17;
  }

  else
  {
    *&v12[0] = 0;
    *(&v12[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D568D990);
    OUTLINED_FUNCTION_10_107();
    MEMORY[0x1DA6EAC70]();
    MEMORY[0x1DA6EAC70](0xD000000000000050, 0x80000001D568D9D0);
    v5 = [objc_opt_self() processInfo];
    v6 = [v5 processName];

    v7 = sub_1D5614D68();
    v9 = v8;

    MEMORY[0x1DA6EAC70](v7, v9);

    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    result = OUTLINED_FUNCTION_28_6("Fatal error", v10, v11, *&v12[0], *(&v12[0] + 1), "MusicKitInternal/ClientInfo.swift");
    __break(1u);
  }

  return result;
}

void *static ClientInfo.optionalDefault.getter@<X0>(_OWORD *a1@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_1D5614D68();
  v6 = v5;

  v7 = [objc_opt_self() mainBundle];
  v8 = sub_1D4E4945C(v7);
  if (!v8)
  {

    memset(__src, 0, 32);
LABEL_7:
    result = sub_1D50B8C70(__src);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *(a1 + 8) = 0;
    return result;
  }

  v9 = v8;

  sub_1D4E494C8(0x696C43616964654DLL, 0xEF6F666E49746E65, v9);

  if (!*&__src[24])
  {

    goto LABEL_7;
  }

  sub_1D4E519A8(__src, &v23);
  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  v11 = sub_1D5616158();
  *__src = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:__src];
  swift_unknownObjectRelease();
  v13 = *__src;
  if (v12)
  {
    v14 = sub_1D560C198();
    v16 = v15;

    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D4E4A520();
    sub_1D560B948();

    sub_1D4E55E1C(v14, v16);

    __swift_destroy_boxed_opaque_existential_1(&v23);
    return memcpy(a1, __src, 0x48uLL);
  }

  else
  {
    v18 = v13;
    v19 = sub_1D560BE98();

    swift_willThrow();
    *__src = 0;
    *&__src[8] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000045, 0x80000001D568DA70);
    OUTLINED_FUNCTION_10_107();
    MEMORY[0x1DA6EAC70]();
    MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D568DAC0);
    MEMORY[0x1DA6EAC70](v4, v6);
    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568DB00);
    result = OUTLINED_FUNCTION_28_6("Fatal error", v20, v21, *__src, *&__src[8], "MusicKitInternal/ClientInfo.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4E4945C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614BB8();

  return v3;
}

double sub_1D4E494C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v3 = sub_1D4E4EFA0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_24_6();
  }

  v5 = OUTLINED_FUNCTION_12_12(v3);

  sub_1D4E5194C(v5, v6);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v0[2] = v0[6];
  v0[3] = v0[7];
  return 0;
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1D4E7661C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return MEMORY[0x1EEDD0430](v2, v0 & 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_1D5615B38();
}

uint64_t OUTLINED_FUNCTION_11_34(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

double OUTLINED_FUNCTION_11_35()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_42()
{

  return sub_1D5067094();
}

uint64_t OUTLINED_FUNCTION_11_44(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_46(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(*(v2 - 296), a2);

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_11_48(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{

  return sub_1D560BD58();
}

uint64_t OUTLINED_FUNCTION_11_56()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_11_59(uint64_t a1)
{

  return sub_1D560E658();
}

uint64_t OUTLINED_FUNCTION_11_63()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_11_70@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_72(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_73(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_74(unint64_t *a1)
{

  return sub_1D5208690(a1, v1, &protocol conformance descriptor for LegacyModelCodableComposer);
}

uint64_t OUTLINED_FUNCTION_11_78()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_11_81()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 48);

  return sub_1D528B2FC(v2, v3, type metadata accessor for MusicSiriRepresentation);
}

void OUTLINED_FUNCTION_11_86()
{
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 64;
}

uint64_t OUTLINED_FUNCTION_11_94(uint64_t a1)
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_11_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_97()
{

  return sub_1D56118A8();
}

void OUTLINED_FUNCTION_11_98(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_11_102()
{
  result = v0;
  *(v2 - 320) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_108()
{
}

unint64_t OUTLINED_FUNCTION_11_110(float a1)
{
  *v2 = a1;

  return sub_1D4E6835C(v1, v3 | 0x8000000000000000, (v4 - 72));
}

uint64_t OUTLINED_FUNCTION_11_112(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_11_113()
{
  v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_1D4E6C078(v2);
}

uint64_t OUTLINED_FUNCTION_11_114()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_11_117(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D54F08F4(v4, 0, 0, a4, v5 + 16);
}

uint64_t OUTLINED_FUNCTION_11_125@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

uint64_t OUTLINED_FUNCTION_11_131(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_133(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D4E4A520()
{
  result = qword_1EDD5DC60;
  if (!qword_1EDD5DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC60);
  }

  return result;
}

void ClientInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6068, &qword_1D56618D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1D4E5297C();
  sub_1D5616398();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1D4E529D0();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615FD8();
    v34 = v40;
    v35 = v38;
    LOBYTE(v36[0]) = 1;
    sub_1D4E53F68();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615FD8();
    v32 = v39;
    v33 = v37;
    v26 = v38;
    v31 = v37;
    v27 = v40;
    v30 = v39;
    v46 = 2;
    sub_1D4E4A938();
    OUTLINED_FUNCTION_6_131();
    sub_1D5615F78();
    v28 = OUTLINED_FUNCTION_28_0();
    v29(v28);
    v36[0] = v33;
    v36[1] = v35;
    v36[2] = v32;
    v36[3] = v34;
    v36[4] = v31;
    v36[5] = v26;
    v36[6] = v30;
    v36[7] = v27;
    v36[8] = a10;
    memcpy(v24, v36, 0x48uLL);
    sub_1D4E55DC0(v36, &v37);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v37 = v33;
    v38 = v35;
    v39 = v32;
    v40 = v34;
    v41 = v31;
    v42 = v26;
    v43 = v30;
    v44 = v27;
    v45 = a10;
    sub_1D4E4AA8C(&v37);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4E4A88C()
{
  result = qword_1EDD5DC70;
  if (!qword_1EDD5DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC70);
  }

  return result;
}

unint64_t sub_1D4E4A8E4()
{
  result = qword_1EDD5DC78;
  if (!qword_1EDD5DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC78);
  }

  return result;
}

unint64_t sub_1D4E4A938()
{
  result = qword_1EDD5DCA8;
  if (!qword_1EDD5DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCA8);
  }

  return result;
}

unint64_t sub_1D4E4A98C()
{
  result = qword_1EDD58A88;
  if (!qword_1EDD58A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A88);
  }

  return result;
}

uint64_t sub_1D4E4A9E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6038, &qword_1D56618C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D4E4AA5C(uint64_t *a2@<X8>)
{
  nullsub_1();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1D4E4AAE4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D4E4AB1C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7320, &qword_1D5668A80);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_notificationCoalescer) = 0;
  v13 = [objc_opt_self() controllerWithUserIdentity_];
  v14 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController;
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController) = v13;
  v15 = [objc_opt_self() controllerWithUserIdentity_];
  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController) = v15;
  if ([*(v2 + v14) isCloudLibraryEnabled])
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  swift_beginAccess();
  v23[7] = v16;
  sub_1D560C8B8();
  swift_endAccess();
  v17 = *(v2 + v14);
  _s19SyncProgressMonitorCMa();
  swift_allocObject();
  v24 = sub_1D4E4C80C(v17);
  sub_1D4E4FE5C();
  sub_1D5610A88();
  (*(v9 + 32))(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_activeMonitoringPublisher, v12, v7);
  [*(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController) beginObservingCloudLibraryEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D561C770;
  *(v18 + 32) = sub_1D4E4C894(off_1E84C0350, &selRef_cloudLibraryEnabledDidChangeNotificationName);
  *(v18 + 40) = sub_1D4E4C894(off_1E84C0348, &selRef_isUpdateInProgressDidChangeNotificationName);
  swift_allocObject();
  swift_weakInit();
  sub_1D56120C8();
  swift_allocObject();

  *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_notificationCoalescer) = sub_1D56120D8();

  v19 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();

  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  sub_1D51ECB60(0, 0, v6, &unk_1D5668BB0, v21);

  return v2;
}

uint64_t sub_1D4E4AF0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return sub_1D4E7661C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_1D5614D18();
}

char *OUTLINED_FUNCTION_5_13(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(v3 - 192);
  *v5 = v2;
  v5[1] = v1;
  return v5 + v4;
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return sub_1D560C8F8();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_5_20()
{

  return sub_1D5614D18();
}

double OUTLINED_FUNCTION_5_28()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_29()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_5_34(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

void OUTLINED_FUNCTION_5_36()
{

  sub_1D4EFFE00();
}

uint64_t OUTLINED_FUNCTION_5_38(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_50(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_53()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_5_56(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_57()
{

  return sub_1D560C0A8();
}

void OUTLINED_FUNCTION_5_58()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_5_70()
{
  v0[50] = 0;
  v0[55] = 0;
  v0[56] = 0;
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

uint64_t OUTLINED_FUNCTION_5_71(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_5_74(uint64_t a1, ...)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_5_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *(v16 + 16) = v17;
  v20 = v16 + 80 * v15;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  result = a12;
  *(v20 + 96) = a15;
  *(v20 + 64) = a13;
  *(v20 + 80) = a14;
  *(v20 + 48) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_5_82(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_5_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_92(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_93@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 72) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_95(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_99()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_104(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_108()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_111()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_112()
{

  return sub_1D5610088();
}

void OUTLINED_FUNCTION_5_116()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_5_117()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_118()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_5_120()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_124(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_5_128()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 232);
  *(v0 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_5_129()
{
}

uint64_t OUTLINED_FUNCTION_5_131(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_5_133()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_5_136()
{
  *(v3 - 132) = v2;
  *(v3 - 128) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  return a11;
}

uint64_t OUTLINED_FUNCTION_5_140@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_143(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616168();
}

__n128 OUTLINED_FUNCTION_5_144()
{
  *(v0 + 16) = v1;
  v4 = v0 + 80 * v2;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  result = *(v3 + 304);
  v6 = *(v3 + 320);
  v7 = *(v3 + 336);
  *(v4 + 96) = *(v3 + 352);
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 48) = result;
  *(v4 + 104) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_146(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *a2 = a13;
  *(a2 + 4) = v14;
  *(a2 + 8) = v13;
}

uint64_t OUTLINED_FUNCTION_5_155()
{
  *(v1 - 88) = v0;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_5_156(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for MusicLibraryMapping.ItemContent(0, v4, a1, a4);
}

double OUTLINED_FUNCTION_5_158()
{
  *(v0 - 144) = 0;
  result = 0.0;
  v2 = v0 - 224;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_160(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_5_161(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_1D55D6508(va, &a15);
}

void OUTLINED_FUNCTION_5_164()
{
  *(v0 - 72) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_5_165(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_166(uint64_t a1)
{

  return sub_1D560BE88();
}

uint64_t OUTLINED_FUNCTION_5_167(uint64_t a1)
{

  return swift_once();
}

id getMPCloudControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCloudControllerClass_softClass;
  v7 = getMPCloudControllerClass_softClass;
  if (!getMPCloudControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCloudControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCloudControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4E4C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification");
    getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPCloudControllerIsUpdateInProgressDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_10();
    v6[3] = dlsym(v1, "MPCloudControllerIsUpdateInProgressDidChangeNotification");
    getMPCloudControllerIsUpdateInProgressDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPCloudServiceStatusControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_15();
  result = objc_getClass("MPCloudServiceStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCloudServiceStatusControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPCloudServiceStatusControllerClass_block_invoke_cold_1();
    return getMPCloudServiceStatusControllerClass();
  }

  return result;
}

id getMPCloudServiceStatusControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCloudServiceStatusControllerClass_softClass;
  v7 = getMPCloudServiceStatusControllerClass_softClass;
  if (!getMPCloudServiceStatusControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPCloudServiceStatusControllerClass_block_invoke;
    v3[3] = &unk_1E84C3838;
    v3[4] = &v4;
    __getMPCloudServiceStatusControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D4E4C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr;
  if (!getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_15();
    v6[3] = dlsym(v1, "MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification");
    getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *sub_1D4E4C80C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D28, &qword_1D563C2B0);
  swift_allocObject();
  v1[2] = sub_1D560C858();
  sub_1D560F628();
  swift_allocObject();
  v3 = sub_1D560F618();
  v1[5] = 0;
  v1[6] = 0;
  v1[3] = a1;
  v1[4] = v3;
  return v1;
}

uint64_t sub_1D4E4C894(void *a1, SEL *a2)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = [objc_opt_self() *a2];
  v5 = sub_1D56157E8();

  return v5;
}

uint64_t OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

_OWORD *OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v6 = (*(a4 + 56) + 32 * v4);

  return sub_1D4E519A8(v6, &v8);
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t a1)
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_18_10()
{
  v7 = *(v5 - 304) + v3;

  return sub_1D4F1C460(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return sub_1D5615658();
}

void *OUTLINED_FUNCTION_18_15()
{
  v3 = *(v2 - 216);
  *v3 = v0;
  v3[1] = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t result, uint64_t a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_18_25()
{
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

unint64_t OUTLINED_FUNCTION_18_32(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 10;
  *(v2 - 128) = 0xE100000000000000;
  *(v2 - 152) = 2105354;
  *(v2 - 144) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_18_34(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return sub_1D50B6A1C(v0, type metadata accessor for UploadedVideoPropertyProvider);
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return sub_1D5610D28();
}

uint64_t OUTLINED_FUNCTION_18_43(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_18_48(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_18_49()
{

  JUMPOUT(0x1DA6EAC70);
}

__n128 OUTLINED_FUNCTION_18_52@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  result = a11;
  *(a1 + 96) = a14;
  *(a1 + 64) = a12;
  *(a1 + 80) = a13;
  *(a1 + 48) = a11;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_53()
{

  return type metadata accessor for MusicSuggestedPivotContainer(0);
}

uint64_t OUTLINED_FUNCTION_18_55(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_18_58(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_60()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_18_67()
{

  sub_1D51D2AD0(v4, v3, v2, v1, v0, v5);
}

uint64_t OUTLINED_FUNCTION_18_73()
{

  return sub_1D4F7B054(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_75(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_18_77()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_18_82()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_18_92@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1 - a1;

  return sub_1D560C368();
}

uint64_t OUTLINED_FUNCTION_18_94(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_97(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

unint64_t sub_1D4E4D51C()
{
  result = qword_1EDD5D038;
  if (!qword_1EDD5D038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD5D038);
  }

  return result;
}

uint64_t sub_1D4E4D560()
{
  OUTLINED_FUNCTION_80();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D4E4DC9C(v2, v3, v4, v5);
}

BOOL sub_1D4E4D5FC()
{
  v0 = [swift_getObjCClassFromMetadata() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D5614BB8();
  sub_1D4E504AC(0xD000000000000010, 0x80000001D56878D0, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_1D4E4D6C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D4E6F808;

  return v5(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_59_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_55_0()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_59_11(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, __int128 a2, __int128 a3)
{

  return sub_1D560E678();
}

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1)
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_59_20()
{
}

void OUTLINED_FUNCTION_59_21(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_59_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D545D148();
}

uint64_t OUTLINED_FUNCTION_59_34()
{

  return _s15InternalStorageVMa_0(0);
}

uint64_t OUTLINED_FUNCTION_59_36(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_59_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t sub_1D4E4DBD0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D4E6F360;

    return sub_1D4E50414();
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v4();
  }
}

uint64_t sub_1D4E4DC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4E4DBD0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_13()
{
  v0[2] = v0[6];
  v0[3] = v0[7];
  return 0;
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{

  return sub_1D4E50004(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1D4F3FF18;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_12_21()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_12_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1)
{

  return sub_1D5615BF8();
}

uint64_t OUTLINED_FUNCTION_39_1@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_12_30()
{
  v2 = *(v1 - 96) | ((*(v1 - 92) | (*(v1 - 90) << 16)) << 32);
  *v0 = *(v1 - 104);
  v0[1] = v2;
}

uint64_t OUTLINED_FUNCTION_12_33()
{
  sub_1D4E519A8((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1)
{

  return sub_1D4E7661C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_36(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_41(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_12_42()
{

  return sub_1D4E6835C(v0, v1, (v2 - 168));
}

void OUTLINED_FUNCTION_12_43(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
}

void OUTLINED_FUNCTION_12_45(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2 + a1;
  *v3 = a2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_12_48()
{

  return sub_1D5613D28();
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_54(unint64_t *a1)
{

  return sub_1D517FCAC(a1, v1, &protocol conformance descriptor for Playlist.Collaboration);
}

uint64_t OUTLINED_FUNCTION_12_57(uint64_t a1)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_12_58@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_59(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_12_63()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_12_69(uint64_t a1, uint64_t a2)
{

  return __swift_getEnumTagSinglePayload(a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_12_70()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_71(unint64_t *a1)
{
  v3 = MEMORY[0x1E6976440];

  return sub_1D52A3BAC(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_12_76(uint64_t a1)
{

  return sub_1D560CE08();
}

void OUTLINED_FUNCTION_12_78()
{
  v2[12] = sub_1D5341F94;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_12_79(unint64_t *a1)
{
  v3 = MEMORY[0x1E6975C50];

  return sub_1D534F400(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_12_80(uint64_t a1)
{
  *(a1 + 8) = sub_1D5352988;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return v2 + 296;
}

uint64_t OUTLINED_FUNCTION_12_83()
{

  return sub_1D56101C8();
}

uint64_t OUTLINED_FUNCTION_12_92(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_12_93(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_94(unint64_t *a1)
{

  return sub_1D5446EDC(a1, v1, &protocol conformance descriptor for SocialProfile);
}

uint64_t OUTLINED_FUNCTION_12_97()
{
}

uint64_t OUTLINED_FUNCTION_12_98(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

uint64_t OUTLINED_FUNCTION_12_99(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_100()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_12_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1D4F0029C();
}

uint64_t OUTLINED_FUNCTION_12_106@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

unint64_t OUTLINED_FUNCTION_12_108(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 10;
  *(v2 - 128) = 0xE100000000000000;
  *(v2 - 152) = 2105354;
  *(v2 - 144) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_12_110(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_112()
{
  *(v0 - 464) = 0;
  *(v0 - 432) = 0;
  *(v0 - 440) = 0;
  *(v0 - 328) = 0;
  *(v0 - 448) = 0;
  *(v0 - 336) = 0;
  *(v0 - 456) = 0;
}

uint64_t OUTLINED_FUNCTION_12_114(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_12_116(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_117()
{
}

uint64_t OUTLINED_FUNCTION_53_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_53_7(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return memcpy(va, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_53_14(uint64_t a1)
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_53_15(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  *(v12 + 161) = a12;

  return sub_1D56153C8();
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return sub_1D5615828();
}

uint64_t OUTLINED_FUNCTION_53_20()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_1D4EFF7D0(v3);
}

uint64_t OUTLINED_FUNCTION_53_21()
{
  v4 = *(v2 - 144);

  return sub_1D4E50004(v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_23()
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0xE000000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_53_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_27()
{
}

uint64_t OUTLINED_FUNCTION_53_28()
{
  v4 = *(v1 + 840);
  v5 = *(v1 + 800);

  return sub_1D52CB1F8(v4, v5, v0, v2);
}

void OUTLINED_FUNCTION_139()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

unint64_t sub_1D4E4EFA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  sub_1D5616328();
  v2 = OUTLINED_FUNCTION_61();

  return sub_1D4E4F548(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

uint64_t OUTLINED_FUNCTION_157_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560EC28();
}

uint64_t *OUTLINED_FUNCTION_8_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_52_17()
{

  return sub_1D51370C8(v0, type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers);
}

uint64_t OUTLINED_FUNCTION_52_18(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_52_19()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_52_20(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6].n128_u64[0] = v4;
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_52_23(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D560C4C8();
}

uint64_t OUTLINED_FUNCTION_52_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_28()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 97) & 1;

  return sub_1D51D29D8(v4, v5, v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_52_30()
{
  *(v0 + 136) = v1 + 1;

  return sub_1D552E500();
}

uint64_t OUTLINED_FUNCTION_52_31(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[55] = a3;
  v4[56] = v3;
  v4[53] = result;
  v4[54] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_33()
{
  v6 = *(v0 + 120);
  *(v2 + 16) = v1;
  v7 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;

  return sub_1D53F74C8(v6, v7, type metadata accessor for GenericMusicItem);
}

uint64_t OUTLINED_FUNCTION_52_39()
{

  return sub_1D4E5A1CC();
}

uint64_t OUTLINED_FUNCTION_52_41()
{

  return type metadata accessor for CloudEditorialItem(0);
}

unint64_t sub_1D4E4F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D5616168() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 344);

  return sub_1D4ED1434(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_1D5610708();
}

uint64_t OUTLINED_FUNCTION_70_2()
{
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return type metadata accessor for MusicRequestConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_30_18()
{
  v2 = *(v0 - 136);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 160, v2);
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_30_23@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1D4E69910(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_30_28()
{
  v2 = *(v0 + 72);

  return sub_1D4E58568(v2, type metadata accessor for MusicRequestConfiguration);
}

uint64_t OUTLINED_FUNCTION_30_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_31()
{
}

void OUTLINED_FUNCTION_23_6()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_30_32(unint64_t *a1)
{

  return sub_1D4E73624(a1, v1, &protocol conformance descriptor for CloudMusicMovie);
}

void OUTLINED_FUNCTION_30_35()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

void OUTLINED_FUNCTION_30_36()
{
  *(v0 + 16) = v1;
  v4 = v0 + 80 * v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0xE300000000000000;
}

uint64_t OUTLINED_FUNCTION_30_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_44()
{
}

uint64_t OUTLINED_FUNCTION_30_49(uint64_t a1)
{

  return sub_1D5615B98();
}

uint64_t OUTLINED_FUNCTION_30_50(uint64_t a1)
{

  return sub_1D56160F8();
}

uint64_t OUTLINED_FUNCTION_30_56()
{
}

uint64_t OUTLINED_FUNCTION_30_58()
{

  return sub_1D5610598();
}

uint64_t OUTLINED_FUNCTION_30_59(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_63()
{

  return sub_1D4F39AB0(v0, v0 + 32, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_64()
{

  return sub_1D5616458();
}

uint64_t OUTLINED_FUNCTION_30_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5614E98();
}

uint64_t OUTLINED_FUNCTION_30_72(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);

  return sub_1D4EC76A8(v4, a2);
}

uint64_t OUTLINED_FUNCTION_30_74(unint64_t *a1)
{

  return sub_1D4E74E6C(a1, v1, &protocol conformance descriptor for CloudUploadedVideo);
}

uint64_t OUTLINED_FUNCTION_30_76(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1D4E4FE5C()
{
  result = qword_1EDD5D698;
  if (!qword_1EDD5D698)
  {
    _s19SyncProgressMonitorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D698);
  }

  return result;
}

Class __getMPCloudControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPCloudController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCloudControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCloudControllerClass_block_invoke_cold_1();
    return sub_1D4E50004(v3, v4, v5);
  }

  return result;
}

uint64_t sub_1D4E50004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E5005C()
{
  v0 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D560D3F8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1D4E4D51C();
  if (sub_1D4E4D5FC())
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v14 = sub_1D560C758();
    v15 = __swift_project_value_buffer(v14, qword_1EDD76DE0);
    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_6_18(v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Testing environment detected while initializing the MusicLibrary. Skipping framework logic to provide downloaded item snapshots automatically.";
    goto LABEL_17;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = sub_1D5615818();

  if ((v21 & 1) == 0)
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v24 = sub_1D560C758();
    v15 = __swift_project_value_buffer(v24, qword_1EDD76DE0);
    v16 = sub_1D560C738();
    v25 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_6_18(v25))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Non-Music app detected while initializing the MusicLibrary, will not provide downloaded item snapshots automatically.";
    goto LABEL_17;
  }

  sub_1D560D3C8();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v22 = sub_1D560D3E8();
  (*(v2 + 8))(v6, v0);
  (*(v9 + 8))(v13, v7);
  if (v22)
  {
    return 1;
  }

  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
  }

  v26 = sub_1D560C758();
  v15 = __swift_project_value_buffer(v26, qword_1EDD76DE0);
  v16 = sub_1D560C738();
  v27 = sub_1D56156E8();
  if (OUTLINED_FUNCTION_6_18(v27))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "MusicKit/alchemy FF is not enabled, will not provide downloaded item snapshots automatically.";
LABEL_17:
    _os_log_impl(&dword_1D4E3F000, v16, v15, v19, v18, 2u);
    MEMORY[0x1DA6ED200](v18, -1, -1);
  }

LABEL_18:

  return 0;
}

uint64_t sub_1D4E50384()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D4E50414()
{
  *(v1 + 24) = v0;
  sub_1D56153C8();
  *(v1 + 32) = sub_1D56153B8();
  v3 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4E6E578, v3, v2);
}

uint64_t sub_1D4E504AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1D4E4EFA0(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_31_9(v3);
    }
  }

  return OUTLINED_FUNCTION_71();
}

double OUTLINED_FUNCTION_24_6()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_41_1()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return sub_1D56151F8();
}

uint64_t OUTLINED_FUNCTION_64_17(uint64_t a1)
{

  return sub_1D4F39A1C(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_64_20(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = 0x8000000000000000;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_64_21()
{
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_64_22(uint64_t result)
{
  *(v3 - 128) = v2;
  *(v3 - 72) = v1;
  *(v3 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_24(uint64_t a1)
{

  return sub_1D560D9F8();
}

uint64_t OUTLINED_FUNCTION_64_25(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_64_31()
{

  sub_1D5426514();
}

BOOL OUTLINED_FUNCTION_64_32()
{

  return sub_1D52F8A78(1u, v0);
}

uint64_t OUTLINED_FUNCTION_64_33()
{
}

uint64_t OUTLINED_FUNCTION_64_34()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);

  return sub_1D55078C8(v2, v3, v4);
}

void *sub_1D4E508DC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MusicRequestConfiguration(0);
  a1[4] = sub_1D4E48388();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1D4E483E0();
}

void OUTLINED_FUNCTION_26_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_10()
{
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_1D5614898();
}

uint64_t OUTLINED_FUNCTION_26_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_26_28()
{
  sub_1D4E519A8((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t *OUTLINED_FUNCTION_26_33(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

void OUTLINED_FUNCTION_26_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_26_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_26_43()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_49(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 168);

  return sub_1D52368BC(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_26_50()
{

  return sub_1D524E6A8(v0, type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation);
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v7 = *(v5 - 96) + v3;

  return sub_1D4F1C460(v7, v4 + v2, v0, v1);
}

double OUTLINED_FUNCTION_26_51@<D0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_55()
{
}

uint64_t OUTLINED_FUNCTION_26_58()
{

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_26_69(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_70(uint64_t a1)
{
  v4 = *(v1 + 40);
  *(v2 - 88) = *(v1 + 56);
  *(v2 - 80) = v4;
}

uint64_t OUTLINED_FUNCTION_26_74(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_77()
{
  sub_1D55078C8(v3, *(v4 - 152), *(v4 - 136));

  return sub_1D55078C8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_79(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 2082;
  *(v1 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_81(unint64_t *a1)
{

  return sub_1D55597C4(a1, v1, &protocol conformance descriptor for TVShow);
}

uint64_t OUTLINED_FUNCTION_26_84()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_26_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_87()
{
  *(v1 - 600) = v0;

  return sub_1D4E48324((v1 - 176), v1 - 128);
}

uint64_t sub_1D4E51274(char a1)
{
  if (!a1)
  {
    return 4804673;
  }

  if (a1 == 1)
  {
    return 6775106;
  }

  return 0x6F44746E65746E49;
}

_BYTE *storeEnumTagSinglePayload for ClientInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D4E51394);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4E51404()
{
  result = qword_1EDD5DC98;
  if (!qword_1EDD5DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC98);
  }

  return result;
}

unint64_t sub_1D4E51458()
{
  result = qword_1EDD5DCA0;
  if (!qword_1EDD5DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientInfo.IntentDonation.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1D4E515B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4E515DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for MusicRequestConfiguration(uint64_t a1)
{
  result = qword_1EDD5B4D8;
  if (!qword_1EDD5B4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E51668(uint64_t a1)
{
  sub_1D4E518A0(319, qword_1EDD54888, &type metadata for Account);
  if (v1 <= 0x3F)
  {
    sub_1D4E517E8(319);
    if (v2 <= 0x3F)
    {
      sub_1D4E5184C(319, &qword_1EDD5CF38, MEMORY[0x1E6969BC0]);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1D4E5184C(319, &qword_1EDD5F558, MEMORY[0x1E6974EF8]);
          if (v5 <= 0x3F)
          {
            sub_1D4E518A0(319, qword_1EDD55F90, &type metadata for UserInterfaceIdiom);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D4E517E8(uint64_t a1)
{
  if (!qword_1EDD527F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE568, &qword_1D562B680);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD527F0);
    }
  }
}

void sub_1D4E5184C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4E518A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D4E5194C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1D4E519A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v2 = *(v0 + 168);

  return MEMORY[0x1EEDCED68](1, 0, v2);
}

void OUTLINED_FUNCTION_118()
{

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_13()
{
  v1[12] = sub_1D4F40510;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_1D5613AF8();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1D56140F8();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_1D4E7661C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_1D4E69910(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_10_28(uint64_t a1)
{
}

void OUTLINED_FUNCTION_10_30()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_10_32()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return sub_1D4E584B8(v0, type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest);
}

void OUTLINED_FUNCTION_10_39()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_41@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8);
  *(v2 - 112) = v1;
  *(v2 - 104) = v1;
  *(v2 - 96) = v1;
  *(v2 - 88) = v4;

  return sub_1D560F168();
}

uint64_t OUTLINED_FUNCTION_10_45(unint64_t *a1)
{
  v3 = MEMORY[0x1E69763C0];

  return sub_1D507118C(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_10_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_10_50(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_53()
{
  v2 = *(v0 - 160);

  return sub_1D4EC76A8(v2, v0 - 136);
}

void OUTLINED_FUNCTION_10_57()
{
  *(v0 - 164) = 1;
  *(v0 - 160) = 1;
  *(v0 - 152) = 1;
}

uint64_t OUTLINED_FUNCTION_10_59@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 96) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_10_60()
{
  v5 = *(v3 - 216);

  return sub_1D4EF21B4(v5, v2, v1, v0, 1);
}

uint64_t OUTLINED_FUNCTION_10_61(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_10_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_10_67@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  return v2;
}

__n128 OUTLINED_FUNCTION_10_68@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_71(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_74()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_10_78()
{
  v2 = v0[17];
  *(v1 - 112) = v0[19];
  *(v1 - 104) = v2;
  v3 = v0[13];
  *(v1 - 96) = v0[14];
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_10_81(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_10_88()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_10_89()
{

  return sub_1D5615F78();
}

double OUTLINED_FUNCTION_10_92()
{
  *(v0 - 256) = 0;
  result = 0.0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return result;
}

void OUTLINED_FUNCTION_10_94()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_95()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_96()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_10_97()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_103(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_10_113(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_10_115()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_10_117(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_121(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_122(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_10_126()
{
}

uint64_t OUTLINED_FUNCTION_10_132(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_134()
{

  return sub_1D55C46FC();
}

unint64_t sub_1D4E528D0()
{
  result = qword_1EDD5DCB0;
  if (!qword_1EDD5DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCB0);
  }

  return result;
}

unint64_t sub_1D4E52928()
{
  result = qword_1EDD5DCB8;
  if (!qword_1EDD5DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCB8);
  }

  return result;
}

unint64_t sub_1D4E5297C()
{
  result = qword_1EDD5DCC0;
  if (!qword_1EDD5DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DCC0);
  }

  return result;
}

unint64_t sub_1D4E529D0()
{
  result = qword_1EDD5DC88;
  if (!qword_1EDD5DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC88);
  }

  return result;
}

void OUTLINED_FUNCTION_6_12()
{
  v2 = *(v0 + 56);
  *(v1 - 96) = *(v0 + 72);
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_6_18(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

char *OUTLINED_FUNCTION_6_21(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(v3 - 128);
  *v5 = v1;
  v5[1] = v2;
  return v5 + v4;
}

uint64_t OUTLINED_FUNCTION_146_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_30(unint64_t *a1)
{

  return sub_1D4FBE4DC(a1, v1, &protocol conformance descriptor for MusicSummary);
}

void OUTLINED_FUNCTION_6_31()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_6_34()
{
  *(v0 - 208) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_6_41(unint64_t *a1)
{
  v3 = MEMORY[0x1E6974D58];

  return sub_1D50416C4(a1, v1, v3);
}

void OUTLINED_FUNCTION_6_42(uint64_t a1@<X8>)
{
  v5 = *v3;
  v6 = *(*(v1 + 8) + 8);
  *(v4 - 112) = a1;
  *(v4 - 104) = v5;
  *(v4 - 96) = v2;
  *(v4 - 88) = v6;
}

uint64_t OUTLINED_FUNCTION_6_44(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_6_48(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_51()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_53(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_54()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_59(uint64_t a1)
{

  return sub_1D5616068();
}

void OUTLINED_FUNCTION_6_62()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_6_70()
{

  sub_1D51994A8();
}

uint64_t OUTLINED_FUNCTION_6_76()
{

  return sub_1D5222DC0(v0, type metadata accessor for CloudMarketingItem.Relationships);
}

uint64_t OUTLINED_FUNCTION_6_81()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_82(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_84(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_6_89()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_6_91()
{

  return sub_1D5615458();
}

uint64_t OUTLINED_FUNCTION_6_92(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_100(__n128 a1)
{

  return sub_1D5615568();
}

uint64_t OUTLINED_FUNCTION_6_108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_6_111(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_6_114()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_6_120()
{

  return sub_1D53A46F4();
}

void OUTLINED_FUNCTION_6_121()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_6_124(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_6_127(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_6_130(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_132(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_137()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_6_138()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_6_144@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_147()
{

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_6_149(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_155(unint64_t *a1)
{
  v2 = MEMORY[0x1E6976680];

  return sub_1D5529598(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_158()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_162(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_6_163(uint64_t a1)
{

  return sub_1D5616068();
}

uint64_t OUTLINED_FUNCTION_6_165@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_6_167(uint64_t a1)
{

  return MEMORY[0x1EEDCE5F8](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_168(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_169(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t getEnumTagSinglePayload for MusicSiriItemRequest.Error.ItemNotFoundReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1D4E53BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v27 = v26;
  v46 = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_4();
  v45 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v45 - v34;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v25();
  sub_1D5616398();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v37 = v45;
    v36 = v46;
    v38 = sub_1D5615F98();
    v40 = v39;
    v41 = sub_1D5615F98();
    v43 = v42;
    v44 = *(v37 + 8);
    v45 = v41;
    v44(v35, v31);
    *v36 = v38;
    v36[1] = v40;
    v36[2] = v45;
    v36[3] = v43;

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4E53DE0(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726556;
  }

  else
  {
    return 0x696669746E656449;
  }
}

_BYTE *sub_1D4E53E24(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D4E53EF0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1D4E53F68()
{
  result = qword_1EDD5DC68;
  if (!qword_1EDD5DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC68);
  }

  return result;
}

unint64_t sub_1D4E53FC0()
{
  result = qword_1EDD5DC80;
  if (!qword_1EDD5DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC80);
  }

  return result;
}

uint64_t sub_1D4E5401C(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726556;
  }

  else
  {
    return 0x656C69666F7250;
  }
}

void *sub_1D4E5404C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F60E8, &qword_1D5662238);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E54278();
  sub_1D5616398();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
    sub_1D4E4A9E0(&unk_1EDD52860, sub_1D4E55558, MEMORY[0x1E69E6330]);
    sub_1D5615FD8();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_1D4E541F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D4E5404C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D4E54224()
{
  result = qword_1EDD58A90;
  if (!qword_1EDD58A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A90);
  }

  return result;
}

unint64_t sub_1D4E54278()
{
  result = qword_1EDD58A98;
  if (!qword_1EDD58A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58A98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return sub_1D560C528();
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  sub_1D4F03BF4(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_4_16()
{
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  *(v2 - 128) = 10;
  *(v2 - 120) = 0xE100000000000000;
  *(v2 - 144) = 2105354;
  *(v2 - 136) = 0xE300000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1D560C8E8();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return sub_1D4F79F84(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2)
{

  return sub_1D5614E28();
}

void OUTLINED_FUNCTION_4_28()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_4_30()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

__n128 OUTLINED_FUNCTION_4_34()
{
  v2 = *(v1 - 128);
  *(v0 + 80) = *(v1 - 144);
  *(v0 + 96) = v2;
  result = *(v1 - 112);
  *(v0 + 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_13_6(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return sub_1D56150C8();
}

void *OUTLINED_FUNCTION_4_50@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  return __swift_project_boxed_opaque_existential_1((v3 - 128), *(v3 - 104));
}

void OUTLINED_FUNCTION_4_52()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_4_60()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_4_66()
{
  v0[58] = 0;
  v0[60] = 0;
  v0[62] = 0;
  v0[64] = 0;
  v0[66] = 0;
  v0[68] = 0;
}

uint64_t OUTLINED_FUNCTION_4_71@<X0>(uint64_t a1@<X8>)
{
  result = v1 - a1;
  *(v3 - 128) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_73()
{

  return sub_1D5615D98();
}

__n128 OUTLINED_FUNCTION_4_74@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __n128 a4, __int128 a5, __int128 a6, uint64_t a7)
{
  result = a4;
  *(a1 + 96) = a7;
  *(a1 + 64) = a5;
  *(a1 + 80) = a6;
  *(a1 + 48) = a4;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_76(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_83()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_4_84(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_4_89()
{

  return sub_1D4E6835C(v0, v1, (v2 - 80));
}

void *OUTLINED_FUNCTION_4_90()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_4_94(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v14 = *(v10 + 112);
  *v14 = v12;
  *(v14 + 24) = a9;
  *(v14 + 8) = a10;
  *(v14 + 40) = v11;
  return v13 + 8;
}

void *OUTLINED_FUNCTION_4_98()
{

  return __swift_coroFrameAllocStub(v0);
}

void OUTLINED_FUNCTION_4_99()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_4_101()
{

  sub_1D4F0029C();
}

void OUTLINED_FUNCTION_4_102()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_4_103()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_107(uint64_t a1)
{

  return sub_1D5615298();
}

uint64_t OUTLINED_FUNCTION_4_112()
{

  return sub_1D5615B68();
}

void OUTLINED_FUNCTION_4_113()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_115()
{

  return sub_1D5375870(v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_116()
{

  return sub_1D5614D18();
}

unint64_t OUTLINED_FUNCTION_4_118(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 120);

  return sub_1D4E6835C(v5, v2, (v3 - 72));
}

void OUTLINED_FUNCTION_4_121()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_4_122()
{

  sub_1D4EFF9AC();
}

void OUTLINED_FUNCTION_4_123()
{
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_4_124()
{

  return sub_1D5610598();
}

void OUTLINED_FUNCTION_4_125()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_128(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_4_133()
{
}

void OUTLINED_FUNCTION_4_136()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_137()
{

  return sub_1D5610708();
}

void OUTLINED_FUNCTION_4_138()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_4_144()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_148(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_4_156()
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_4_161()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_4_163@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_4_167()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_4_168(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1D4E55558()
{
  result = qword_1EDD58AA0;
  if (!qword_1EDD58AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD58AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformPlaylistEntry.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1D4E5567C()
{
  result = qword_1EDD58AA8[0];
  if (!qword_1EDD58AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD58AA8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_10(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_65_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_6()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_19(unint64_t *a1)
{

  return sub_1D5038614(a1, v1, &protocol conformance descriptor for CloudTVSeason);
}

uint64_t OUTLINED_FUNCTION_32_21(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_32_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_29()
{
}

uint64_t OUTLINED_FUNCTION_32_31(unint64_t *a1)
{

  return sub_1D4E74B10(a1, v1, &protocol conformance descriptor for UploadedAudio);
}

__n128 OUTLINED_FUNCTION_32_32()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = result;
  *(v1 + 32) = v2;
  return result;
}

void OUTLINED_FUNCTION_32_35(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0x20455441445055;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_32_38(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_32_42()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_32_43(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_32_49()
{
}

uint64_t OUTLINED_FUNCTION_32_51(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_32_55(uint64_t a1)
{

  return sub_1D53F7258(a1, type metadata accessor for MusicItemTypedIdentifier);
}

uint64_t OUTLINED_FUNCTION_32_59(uint64_t a1, uint64_t a2)
{
  v2[48] = v3;
  v2[49] = v4;
  v2[45] = a1;
  v2[46] = a2;

  return sub_1D4E628D4((v2 + 45), (v2 + 2));
}

void OUTLINED_FUNCTION_32_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1D4F152A8(v11, v10, v12, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_32_62()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_32_63()
{

  return sub_1D5615FD8();
}

uint64_t OUTLINED_FUNCTION_32_66(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_32_70(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t sub_1D4E55E1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal7AccountV4Kind33_4DC350382417CCA3AE2C16666D3F2A3DLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D4E55E98()
{
  sub_1D56129F8();
  swift_allocObject();
  sub_1D56129E8();
  swift_allocObject();
  swift_weakInit();

  sub_1D56129D8();

  sub_1D56129B8();
}

uint64_t sub_1D4E55F60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D4E55F98()
{
  v0 = type metadata accessor for MusicRequestConfiguration(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v25 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  static MusicRequestConfiguration.globalDefault.getter(v7);
  v10 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  OUTLINED_FUNCTION_40_13();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  OUTLINED_FUNCTION_8_90();
  v12 = OUTLINED_FUNCTION_98();
  sub_1D52D3D4C(v12, v13, v14);
  v15 = v7[16];
  if (v15 == 255)
  {

    OUTLINED_FUNCTION_1_131();
    sub_1D4E58668(v7, v20);
  }

  else
  {
    v17 = *(v7 + 1);
    v27[0] = *v7;
    v16 = v27[0];
    v27[1] = v17;
    v28 = v15;
    v25[0] = v11;
    v25[1] = 0;
    v26 = 0;
    sub_1D4E58128(v27[0], v17, v15);
    v18 = static Account.== infix(_:_:)(v27, v25);
    OUTLINED_FUNCTION_1_131();
    sub_1D4E58668(v7, v19);

    if (v18)
    {
      sub_1D4EF2278(v16, v17, v15);
      v16 = 0;
      v17 = 0;
      LOBYTE(v15) = 2;
    }

    sub_1D4EF2278(*v4, *(v4 + 1), v4[16]);
    *v4 = v16;
    *(v4 + 1) = v17;
    v4[16] = v15;
  }

  type metadata accessor for MusicDownloadedSongCatalogStore(0);
  OUTLINED_FUNCTION_3_127();
  v21 = OUTLINED_FUNCTION_71();
  sub_1D52D3CF0(v21, v22, v23);
  result = sub_1D4E58938(v9);
  qword_1EDD5A0D0 = result;
  return result;
}

uint64_t static MusicRequestConfiguration.globalDefault.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D560D308();
  sub_1D560CCE8();
  (*(v8 + 8))(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v13 = type metadata accessor for MusicRequestConfiguration(0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
    return sub_1D4E56C6C(v5, a1);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_1D4E50004(v5, &qword_1EC7EA838, &unk_1D561CB10);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id OUTLINED_FUNCTION_21_7()
{
  v3 = *(v1 - 104);

  return sub_1D4F42FA4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 208);

  return sub_1D4ECE7D0(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_1D5615688();
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  *(v2 - 248) = v1 + 16;
  *(v2 - 232) = v1;
  *(v2 - 224) = v0;
  *(v2 - 208) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_21_15()
{
}

uint64_t OUTLINED_FUNCTION_21_16(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1D4ED3A14(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_21_17()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_21_20()
{

  JUMPOUT(0x1DA6EAC70);
}

void *OUTLINED_FUNCTION_41_2()
{
  *v2 = v0;
  v2[1] = v1;
  return __swift_project_boxed_opaque_existential_1((v3 - 128), *(v3 - 104));
}

uint64_t OUTLINED_FUNCTION_21_23(uint64_t a1, uint64_t a2)
{

  return sub_1D5015524(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_1D504A434(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_21_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_37(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_41(uint64_t a1)
{

  return sub_1D56160F8();
}

uint64_t OUTLINED_FUNCTION_21_42(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_21_43()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_1D4E519A8(v4, (v2 - 128));
}

double OUTLINED_FUNCTION_318()
{

  return sub_1D51D2A80(v4, v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_21_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_48(unint64_t *a1)
{

  return sub_1D521E7A0(a1, v1, &protocol conformance descriptor for CloudUserProfile);
}

void OUTLINED_FUNCTION_21_52()
{

  JUMPOUT(0x1DA6EAC70);
}

__n128 OUTLINED_FUNCTION_21_59(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 160) = a1;
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_60@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{

  return sub_1D54F08F4(v2, 0, 0, a1, a2);
}

uint64_t OUTLINED_FUNCTION_21_62(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_65(uint64_t a1)
{

  return sub_1D5614CB8();
}

void OUTLINED_FUNCTION_21_69()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_21_70(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_21_75()
{
  result = v1;
  *(v2 - 224) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_79(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 4) = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_21_81(uint64_t a1)
{

  return sub_1D552808C(a1);
}

uint64_t OUTLINED_FUNCTION_21_84(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_21_85(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_88(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t sub_1D4E56C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4E56CE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D4E56DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_36_8()
{

  return sub_1D4F441CC();
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1)
{

  return sub_1D560C8D8();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_36_13@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_80_0()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_36_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_36_16()
{

  sub_1D4EFFE00();
}

uint64_t OUTLINED_FUNCTION_36_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_36_19@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_36_21()
{

  sub_1D4F286E0();
}

uint64_t OUTLINED_FUNCTION_36_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_24()
{

  return sub_1D50E11B0();
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_36_26(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_36_28()
{

  return [v1 (v0 + 3002)];
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_36_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_35()
{
  *(v1 - 120) = v0;

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_36_36(uint64_t result, uint64_t a2)
{
  v2[19] = result;
  v2[20] = a2;
  v2[41] = 10;
  v2[42] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_40()
{
}

uint64_t OUTLINED_FUNCTION_36_42(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_36_43(uint64_t result)
{
  *(v2 + 8) = v1;
  *(v3 + 16) = 150;
  *(v3 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_45(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_36_46@<X0>(uint64_t a1@<X8>)
{

  return sub_1D50D019C(v3 + a1, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_36_48()
{

  return sub_1D4EC76A8(v0 - 128, v0 - 176);
}

uint64_t OUTLINED_FUNCTION_36_49()
{
  v2 = *(v0 - 88);

  return sub_1D53B2F0C(v2, type metadata accessor for StorePlatformTrack);
}

uint64_t OUTLINED_FUNCTION_36_51(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_36_52()
{

  return sub_1D560B9C8();
}

double OUTLINED_FUNCTION_36_53()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_56()
{

  return sub_1D543FE08(v0, _s5QueueC10PropertiesVMa);
}

const char *OUTLINED_FUNCTION_36_60()
{

  return sqlite3_errstr(v0);
}

uint64_t OUTLINED_FUNCTION_36_64()
{
}

uint64_t OUTLINED_FUNCTION_36_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_36_66(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return sub_1D5615648();
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_14_17()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_1D560EC98();
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_14_23(uint64_t a1)
{

  return sub_1D4FEE8A0(a1);
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_14_28()
{
  v2 = *(v1 - 96);
  *(v1 - 72) = v0;
  *(v1 - 96) = v2 & 1;
  return v1 - 96;
}

uint64_t OUTLINED_FUNCTION_14_37@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_14_40()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_14_41()
{
  result = v1;
  *(v2 - 336) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_43(unint64_t *a1)
{

  return sub_1D5120738(a1, v1, &protocol conformance descriptor for CloudEditorialItem);
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_14_48(int a1@<W8>)
{
  v1[55] = a1;
  v1[56] = a1;
  v1[58] = a1;
  v1[60] = a1;
  v1[62] = a1;
  v1[64] = a1;
}

uint64_t OUTLINED_FUNCTION_14_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_57@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = v1 - a1;

  return sub_1D5614898();
}

void OUTLINED_FUNCTION_14_72(unint64_t a1@<X8>)
{

  sub_1D4F048BC(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_14_75()
{

  return sub_1D560E718();
}

uint64_t OUTLINED_FUNCTION_14_76()
{

  return sub_1D560F7D8();
}

void OUTLINED_FUNCTION_14_80(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_14_81()
{

  return sub_1D4E628D4(v0, v1 - 120);
}

uint64_t OUTLINED_FUNCTION_14_86()
{

  return sub_1D560DBF8();
}

uint64_t OUTLINED_FUNCTION_14_87(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_88()
{
  *(v0 - 176) = *(v0 - 256);
  *(v0 - 175) = *(v0 - 264);
  *(v0 - 174) = *(v0 - 272);
  *(v0 - 173) = *(v0 - 280);
  *(v0 - 172) = *(v0 - 288);
  *(v0 - 168) = *(v0 - 208);
  return v0 - 128;
}

uint64_t OUTLINED_FUNCTION_14_91(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_92(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_14_93()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_14_96(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_14_99@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_14_102()
{

  return sub_1D4E6C9CC(v2, v0, v1);
}

uint64_t sub_1D4E58128(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

id static Account.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = [objc_opt_self() defaultIdentityStore];
  if (!v3)
  {
    v15 = *(v2 + 16);
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    v15 = [objc_opt_self() autoupdatingActiveAccount];
LABEL_7:
    v13 = v15;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_1();
  v8 = sub_1D5614D38();
  v9 = OUTLINED_FUNCTION_27_1();
  sub_1D4E58768(v9, v10, 1);
  v11 = [v8 longLongValue];

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v13 = [objc_opt_self() specificAccountWithDSID_];

  if (!v6)
  {
LABEL_4:
    v14 = *(v4 + 16);
LABEL_11:
    v19 = v14;
    goto LABEL_12;
  }

LABEL_8:
  if (v6 != 1)
  {
    v14 = [objc_opt_self() autoupdatingActiveAccount];
    goto LABEL_11;
  }

  v16 = sub_1D5614D38();
  sub_1D4E58768(v4, v5, 1);
  v17 = [v16 longLongValue];

  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v19 = [objc_opt_self() specificAccountWithDSID_];

LABEL_12:
  v20 = [v13 isEqualToIdentity:v19 inStore:v7];

  return v20;
}

uint64_t sub_1D4E58360()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4E583B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E5840C()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4E58460(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E584B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E58510(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E58568(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E585BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E58614()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4E58668(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E586C0()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D4E58714(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4E58768(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t type metadata accessor for MusicDownloadedSongCatalogStore(uint64_t a1)
{
  result = qword_1EDD59EE8;
  if (!qword_1EDD59EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E587D4(uint64_t a1)
{
  type metadata accessor for MusicRequestConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1D500A1D4(319);
    if (v2 <= 0x3F)
    {
      sub_1D52B5088(319);
      if (v3 <= 0x3F)
      {
        sub_1D560C508();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D4E58938(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560F0D8();
  _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  sub_1D52D3D4C(a1, v4, type metadata accessor for MusicRequestConfiguration);
  v5 = sub_1D52CCFD0(v4);
  sub_1D4E58668(a1, type metadata accessor for MusicRequestConfiguration);
  return v5;
}

void sub_1D4E58A28()
{
  OUTLINED_FUNCTION_30_14();
  v3 = v2;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(v0, v1), v4 = OUTLINED_FUNCTION_11_33(), v5 = v4, (v6 = *(v3 + 16)) != 0))
  {
    v7 = 0;
    v8 = v4 + 56;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + v7++);
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v9);
      sub_1D5616328();
      while (1)
      {
        OUTLINED_FUNCTION_21_22();
        if (v14)
        {
          break;
        }

        if (*(*(v5 + 48) + v10) == v9)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 8 * v11) = v13 | v12;
      *(*(v5 + 48) + v10) = v9;
      OUTLINED_FUNCTION_20_33();
      if (v16)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v15;
LABEL_11:
      if (v7 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_31_19();
  }
}

unint64_t sub_1D4E58B48()
{
  result = qword_1EDD5A0D8;
  if (!qword_1EDD5A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5A0D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{

  return sub_1D56132E8();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_1D4E628D4(v0, v1 - 120);
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return sub_1D5611138();
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_19_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616398();
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5610D68();
}

uint64_t OUTLINED_FUNCTION_19_28(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_16_7()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_19_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_19_35()
{
  v7 = *(v5 - 96) + v3;

  return sub_1D4E69910(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_19_36()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_19_38()
{
}

void OUTLINED_FUNCTION_19_41(int a1@<W8>)
{
  *(v1 - 164) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
  *(v1 - 136) = a1;
}

void OUTLINED_FUNCTION_19_44()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_19_46(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_19_50@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 96) = *(v1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  *(a1 + 104) = 0;
  return result;
}

void OUTLINED_FUNCTION_19_51()
{
  v1[12] = sub_1D51E7DC0;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_19_53(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_58(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v2;
}

uint64_t OUTLINED_FUNCTION_19_59(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_19_65()
{

  return sub_1D4F7B054(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_67(uint64_t a1)
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_19_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_19_69(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t OUTLINED_FUNCTION_19_70()
{
}

uint64_t OUTLINED_FUNCTION_19_77()
{

  return sub_1D5614BD8();
}

void OUTLINED_FUNCTION_19_78()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 42);
  v3 = *(v0 + 43);
  v4 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 40);
  *(v0 + 57) = v1;
  *(v0 + 58) = v2;
  *(v0 + 59) = v3;
  *(v0 + 64) = v4;
}

uint64_t OUTLINED_FUNCTION_19_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void *OUTLINED_FUNCTION_19_82()
{
  *(v0 + 16) = v1;

  return memcpy((v0 + 80 * v3 + 32), (v2 + 16), 0x49uLL);
}

const char *OUTLINED_FUNCTION_19_83()
{
  v2 = *(v0 + 136);

  return sqlite3_errmsg(v2);
}

uint64_t OUTLINED_FUNCTION_19_85(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_19_87()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_19_94(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{

  return sub_1D5614CB8();
}

BOOL OUTLINED_FUNCTION_152_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1)
{

  return sub_1D5614F98();
}

uint64_t OUTLINED_FUNCTION_27_11()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_14()
{

  return sub_1D5610708();
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

void OUTLINED_FUNCTION_27_16()
{
  *(v7 - 192) = v6;
  *(v7 - 184) = v2;
  *(v7 - 176) = v5;
  *(v7 - 168) = v1;
  *(v7 - 160) = v4;
  *(v7 - 152) = v0;
  *(v7 - 144) = v3;
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_27@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return sub_1D50EF020(a1, v4, a3);
}

uint64_t OUTLINED_FUNCTION_27_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_27_29()
{

  return sub_1D4FB8150();
}

uint64_t OUTLINED_FUNCTION_27_30(uint64_t result)
{
  v4 = (v1 + *(result + 44));
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_37()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_27_39(uint64_t a1)
{

  return sub_1D560C8F8();
}

void OUTLINED_FUNCTION_27_44()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_27_64()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_27_67(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_68()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_27_74(uint64_t a1, uint64_t a2)
{

  return sub_1D4FECCC0(a1);
}

uint64_t OUTLINED_FUNCTION_27_76(unint64_t *a1)
{

  return sub_1D55597C4(a1, v1, &protocol conformance descriptor for TVEpisode);
}

uint64_t OUTLINED_FUNCTION_27_81(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1D4E59E34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4E59E8C(uint64_t a1)
{
  if (!qword_1EDD5C340)
  {
    type metadata accessor for MusicTaskCoalescer.PrioritizedTask(255);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5C340);
    }
  }
}

void sub_1D4E59EE4(uint64_t a1)
{
  sub_1D4E59E8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4E59F80(uint64_t a1)
{
  sub_1D4E5A004();
  if (v1 <= 0x3F)
  {
    sub_1D5615458();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4E5A004()
{
  if (!qword_1EDD52738)
  {
    v0 = sub_1D56154C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52738);
    }
  }
}

void *sub_1D4E5A07C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D5615458();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1D4E5A178()
{
  result = qword_1EDD5DC90;
  if (!qword_1EDD5DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5DC90);
  }

  return result;
}

uint64_t sub_1D4E5A1CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4550, &qword_1D5653F78);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  sub_1D560EFD8();
  v5 = sub_1D560CCA8();
  v6 = OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_57(v6, v7, v5);
  if (v8)
  {
    sub_1D4E7661C(v4, &qword_1EC7F4550, &qword_1D5653F78);
    OUTLINED_FUNCTION_6_3();
    v17 = 1259;
    v14 = v13 + 86;
    v16 = v15 | 0x8000000000000000;
  }

  else
  {
    sub_1D560CC98();
    OUTLINED_FUNCTION_24_0();
    (*(v9 + 8))(v4, v5);
    sub_1D4E48324(v19, v20);
    sub_1D4E62938(v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4558, &unk_1D5653F80);
    _s15InternalStorageCMa();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v18;
    }

    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x696C20636973754DLL, 0xEE00207972617262);
    v18 = v0;
    sub_1D560F0D8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000027);
    MEMORY[0x1DA6EAC70](0x6C616E7265746E49, 0xEF656761726F7453);
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_6_3();
    v17 = 1263;
  }

  result = OUTLINED_FUNCTION_71_21("Fatal error", v11, v12, v14, v16, "MusicKitInternal/MusicLibrary+Internal.swift");
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_0_14()
{
  v2 = v0[21];
  *(v1 - 176) = v0[23];
  *(v1 - 168) = v2;
  v3 = v0[18];
  *(v1 - 160) = v0[19];
  *(v1 - 152) = v3;
  v4 = v0[15];
  *(v1 - 144) = v0[16];
  *(v1 - 136) = v4;
  v5 = v0[12];
  *(v1 - 128) = v0[13];
  *(v1 - 120) = v5;
  v6 = v0[9];
  *(v1 - 112) = v0[10];
  *(v1 - 104) = v6;
  *(v1 - 96) = v0[7];
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_22()
{
  *(v2 - 168) = v1;
  v3 = *(v2 - 88);
  *(v2 - 120) = v3 + 16;
  *(v2 - 112) = v3 + 32;
  *(v2 - 160) = v3 + 8;
  *(v2 - 152) = v0;
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_36()
{
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_53(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return sub_1D56160C8();
}

void OUTLINED_FUNCTION_0_60()
{

  sub_1D4F00CFC();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return sub_1D50A229C();
}

uint64_t OUTLINED_FUNCTION_0_71@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

void OUTLINED_FUNCTION_0_72()
{

  sub_1D4EFF8E4();
}

uint64_t OUTLINED_FUNCTION_0_75@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 96) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_84()
{
  result = v1;
  *(v2 - 336) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t a1, uint64_t a2)
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_0_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return MEMORY[0x1EEE66CA0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_0_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D560F608();
}

uint64_t OUTLINED_FUNCTION_0_96(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_112(uint64_t a1, uint64_t a2)
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_0_125@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 96) = v1;
  return v2 - 128;
}

__n128 OUTLINED_FUNCTION_0_126@<Q0>(uint64_t a1@<X8>, uint64_t a2, __n128 a3, __int128 a4, __int128 a5, uint64_t a6)
{
  result = a3;
  *(a1 + 96) = a6;
  *(a1 + 64) = a4;
  *(a1 + 80) = a5;
  *(a1 + 48) = a3;
  *(a1 + 104) = 0;
  return result;
}

unsigned __int8 *OUTLINED_FUNCTION_0_132(unint64_t *a1, uint64_t a2)
{

  return sub_1D51FB830(a1, a2, 0xE100000000000000, v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_137@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 240) = a1;
  *(v2 - 304) = v1;
  return v2 - 240;
}

uint64_t OUTLINED_FUNCTION_0_142()
{

  return sub_1D52336BC(v0, type metadata accessor for GenericMusicItem);
}

uint64_t OUTLINED_FUNCTION_0_144(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_145(unint64_t *a1)
{
  v2 = MEMORY[0x1E69762D0];

  return sub_1D523A174(a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_154(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_155()
{

  sub_1D4F02708();
}

uint64_t OUTLINED_FUNCTION_0_156()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_0_159()
{
  __swift_storeEnumTagSinglePayload(*(v0 + 136), 1, 1, *(v0 + 152));

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_0_160()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 152);
  v3 = *(v0 - 160);
  v4 = *(v0 - 168);
  *(v0 - 320) = *(v0 - 176);
  *(v0 - 312) = 0;
  *(v0 - 192) = v4;
  *(v0 - 184) = v3 & 1;
  *(v0 - 208) = v2;
  *(v0 - 200) = v1 & 1;
  *(v0 - 224) = 0;
  *(v0 - 216) = 1;
}

uint64_t OUTLINED_FUNCTION_0_165()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_0_166()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 144) = result;
  *(v0 + 152) = v2;
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 160) = v3;
  *(v0 + 168) = v4;
  v5 = *(v0 + 112);
  *(v0 + 176) = v5;
  v6 = *(v0 + 120);
  *(v0 + 121) = v6;
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_179(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_188(uint64_t a1)
{

  return sub_1D5616168();
}