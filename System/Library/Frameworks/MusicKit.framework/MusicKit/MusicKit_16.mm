uint64_t sub_217352E2C()
{
  OUTLINED_FUNCTION_209();
  v1 = type metadata accessor for MusicDataRequest(0);
  v2 = OUTLINED_FUNCTION_7_16(v1);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v9 = (*(v4 + 104) + **(v4 + 104));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_217352F60;
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, v7, v3, v4);
}

uint64_t sub_217352F60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_42_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t MusicDataRequest.init(urlRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicDataRequest(0);
  v5 = *(v4 + 20);
  OUTLINED_FUNCTION_109(v4, &v11);
  v6 = off_280BEBCD0;

  (v6)(v12);

  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v7, v8, a2 + v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = sub_2177512F8();
  return (*(*(v9 - 8) + 32))(a2, a1, v9);
}

uint64_t MusicDataRequest.urlRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177512F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MusicDataRequest._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicDataRequest(0);
  v3 = OUTLINED_FUNCTION_7_16(v2);

  return sub_2172CA838(v3, a1);
}

uint64_t MusicDataRequest._configuration.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = v1 + *(type metadata accessor for MusicDataRequest(v2) + 20);

  return sub_2172CA894(v0, v3);
}

void (*MusicDataRequest._configuration.modify())()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for MusicDataRequest(v0);
  return nullsub_1;
}

uint64_t sub_217353254@<X0>(void *a1@<X8>)
{
  if (qword_27CB23EE8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CB2E3A8;
  v2 = unk_27CB2E3B0;
  v5 = qword_27CB2E3B8;
  v4 = unk_27CB2E3C0;
  v6 = qword_27CB2E3C8;
  a1[3] = &type metadata for MusicDataRequest.BasicConfiguration;
  a1[4] = &protocol witness table for MusicDataRequest.BasicConfiguration;
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v6;
  v7[7] = v3;
  v7[8] = v2;
  v7[9] = v5;
  v7[10] = v4;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_217751DE8();
}

uint64_t type metadata accessor for MusicDataRequest(uint64_t a1)
{
  result = qword_280BE6618;
  if (!qword_280BE6618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*static MusicDataRequest.defaultConfigurationBuilder.getter())()
{
  swift_beginAccess();
  v0 = off_280BEBCD0;

  return v0;
}

uint64_t static MusicDataRequest.defaultConfigurationBuilder.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_280BEBCD0 = a1;
  qword_280BEBCD8 = a2;
}

uint64_t sub_217353488@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_280BEBCD8;
  *a1 = off_280BEBCD0;
  a1[1] = v2;
}

uint64_t sub_2173534D8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_280BEBCD0 = v2;
  qword_280BEBCD8 = v1;
}

uint64_t sub_217353550()
{
  OUTLINED_FUNCTION_209();
  sub_2173BAB60();
  if (qword_280BEAE60 != -1)
  {
    swift_once();
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2173536FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C90, &qword_21775F170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2173538D0;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 requestStorefrontCountryCodeWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2173536FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_21735381C;
  }

  else
  {
    v5 = sub_217353800;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21735381C()
{
  OUTLINED_FUNCTION_209();
  v11 = v0;
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = v1;
  sub_21758BD6C(v1, &v10);
  v3 = v10;
  sub_217354318(v4, v5, v6);
  swift_allocError();
  *v7 = v3;
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v8();
}

uint64_t sub_2173538D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_217718250();
  }

  else
  {
    v8 = sub_217751F48();

    return sub_2177174C4(v4, v8, v7);
  }
}

uint64_t sub_217353968()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v3 = qword_280C023D0;
  v4 = *(qword_280C023D0 + 40);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  if (*(v3 + 16))
  {
    os_unfair_lock_unlock(*(v4 + 16));
  }

  else
  {
    *(v3 + 16) = 1;
    os_unfair_lock_unlock(*(v4 + 16));

    v7 = sub_217752538();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_21765A6D8(0, 0, v2, &unk_21775F248, v8);
  }
}

uint64_t sub_217353AE8()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_109(v1, (v0 + 12));
  v2 = off_280BEBCD0;

  (v2)(v3);

  v5 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v5, v4, (v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_217353C68;

  return v10(v6, v7);
}

uint64_t sub_217353C68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v5;

  if (v0)
  {

    v6 = sub_217353E0C;
  }

  else
  {
    v6 = sub_217353D78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_217353D78()
{
  OUTLINED_FUNCTION_10();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  sub_2177188E8(*(v0 + 128), *(v0 + 136));

  sub_21733AB9C(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217353E0C()
{
  OUTLINED_FUNCTION_10();
  sub_21733AB9C(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217353E64()
{
  type metadata accessor for LastCountryCodeTracker();
  swift_allocObject();
  result = sub_217718A08();
  qword_280C023D0 = result;
  return result;
}

uint64_t static MusicDataRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_217751298() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicDataRequest(0) + 20);
  v5 = *(a1 + v4 + 24);
  v6 = *(a1 + v4 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + v4), v5);
  v7 = *(v6 + 112);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  return v7(a2 + v4, v8, v5, v6) & 1;
}

uint64_t MusicDataRequest.hash(into:)()
{
  OUTLINED_FUNCTION_8_20();
  sub_2177512F8();
  OUTLINED_FUNCTION_0_24();
  sub_21735441C(v1, v2, MEMORY[0x277CC8680]);
  sub_217751EB8();
  v3 = type metadata accessor for MusicDataRequest(0);
  v4 = OUTLINED_FUNCTION_7_16(v3);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 120))(v0, v5, v6);
}

uint64_t MusicDataRequest.hashValue.getter()
{
  sub_2177531E8();
  sub_2177512F8();
  OUTLINED_FUNCTION_0_24();
  sub_21735441C(v0, v1, MEMORY[0x277CC8680]);
  sub_217751EB8();
  v2 = type metadata accessor for MusicDataRequest(0);
  v3 = OUTLINED_FUNCTION_7_16(v2);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 120))(v7, v4, v5);
  return sub_217753238();
}

uint64_t sub_2173540B4(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  sub_2177512F8();
  sub_21735441C(&qword_27CB25CA0, MEMORY[0x277CC8678], MEMORY[0x277CC8680]);
  sub_217751EB8();
  v4 = (v2 + *(a2 + 20));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 120))(v8, v5, v6);
  return sub_217753238();
}

unint64_t MusicDataRequest.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v12 = 0xD000000000000011;
  v13 = 0x80000002177ABE50;
  v10 = 0x22203A6C7275;
  v11 = 0xE600000000000000;
  sub_2177512C8();
  v3 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_21735436C(v2);
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = sub_217751668();
    v5 = v6;
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  MEMORY[0x21CEA23B0](v4, v5);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v7);
  MEMORY[0x21CEA23B0](v10, v11);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v8);
  return v12;
}

unint64_t sub_217354318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25C98;
  if (!qword_27CB25C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25C98);
  }

  return result;
}

uint64_t sub_21735436C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21735441C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21735448C(uint64_t a1)
{
  result = sub_2177512F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217354500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2173545AC;

  return sub_217353ACC();
}

uint64_t sub_2173545AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_42_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t static MusicLibrarySectionExtendedRequestable.validateParametersForInternalLibrarySectionedRequest<A>(with:itemPredicates:sectionPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2173546F8(a1, a2, a3);
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

unint64_t sub_2173546F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28AC0;
  if (!qword_27CB28AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28AC0);
  }

  return result;
}

unint64_t sub_2173547B8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    OUTLINED_FUNCTION_0_25();
    sub_217752AA8();
    OUTLINED_FUNCTION_2_29();
    MEMORY[0x21CEA23B0](0xD000000000000029);
    type metadata accessor for MusicKit_SoftLinking_MPMusicPlaybackState(0);
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
    result = OUTLINED_FUNCTION_1_22("Fatal error");
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_217354860@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    OUTLINED_FUNCTION_0_25();
    sub_217752AA8();
    OUTLINED_FUNCTION_2_29();
    MEMORY[0x21CEA23B0](0xD000000000000026);
    type metadata accessor for MusicKit_SoftLinking_MPMusicRepeatMode(0);
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
    result = OUTLINED_FUNCTION_1_22("Fatal error");
    __break(1u);
  }

  else
  {
    *a2 = 0x2010003u >> (8 * result);
  }

  return result;
}

uint64_t _s8MusicKit0A20LibraryMappingPolicyO5ScopeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_2173549A4@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    OUTLINED_FUNCTION_0_25();
    sub_217752AA8();
    OUTLINED_FUNCTION_2_29();
    MEMORY[0x21CEA23B0](0xD000000000000027);
    type metadata accessor for MusicKit_SoftLinking_MPMusicShuffleMode(0);
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
    result = OUTLINED_FUNCTION_1_22("Fatal error");
    __break(1u);
  }

  else
  {
    *a2 = 0x10002u >> (8 * result);
  }

  return result;
}

uint64_t MusicPlayer.ShuffleMode.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_217354AF4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 6;
  _s7MonitorCMa();
  swift_allocObject();
  v4 = sub_217548944();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 515;
  *(v1 + 24) = v4;
  *(v1 + 32) = a1;
  v5 = a1;

  sub_2175486B8(a1);

  static MusicAuthorization.currentStatus.getter(v21);
  switch(v21[0])
  {
    case 2:
      OUTLINED_FUNCTION_8_21();
      goto LABEL_3;
    case 3:

      goto LABEL_6;
    default:
LABEL_3:
      OUTLINED_FUNCTION_7_17();
      v6 = sub_217753058();

      if (v6)
      {
LABEL_6:
        sub_2173547B8([v5 playbackState], v21);
        *(v1 + 56) = v21[0];
        [v5 currentPlaybackRate];
        *(v1 + 60) = v9;
        sub_217354860([v5 repeatMode], v21);
        *(v1 + 64) = v21[0];
        sub_2173549A4([v5 shuffleMode], v21);
        *(v1 + 65) = v21[0];
        v10 = sub_2174EB138([v5 nowPlayingAudioFormat], &v20);
        v11 = v20;
        OUTLINED_FUNCTION_10_14(v10);
        *(v2 + 16) = v11;
      }

      else
      {
        *(v1 + 56) = 0;
        *(v1 + 60) = 0;
        *(v1 + 64) = 515;
        OUTLINED_FUNCTION_10_14(v7, v8);
        *(v1 + 16) = 6;
      }

      type metadata accessor for NotificationObserver();
      v12 = [objc_opt_self() playbackStateDidChangeNotificationName];
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = v5;

      v15 = static NotificationObserver.mainActorObserver(name:object:handler:)(v12, a1, &unk_21775F618, v13);

      *(v2 + 40) = v15;

      v16 = *MEMORY[0x277D7F8E8];
      v17 = swift_allocObject();
      swift_weakInit();

      v18 = static NotificationObserver.mainActorObserver(name:object:handler:)(v16, 0, &unk_21775F628, v17);

      *(v2 + 48) = v18;

      return v2;
  }
}

uint64_t sub_217354E34(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_217356260, v4, v3);
}

uint64_t sub_217354ECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_217354F64, v4, v3);
}

uint64_t sub_217354F64()
{
  OUTLINED_FUNCTION_10();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2173555AC();
  }

  v1 = *(v0 + 8);

  return v1();
}

id (*sub_21735500C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 60);
  return sub_217355038;
}

uint64_t (*sub_217355108(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_217355134;
}

uint64_t (*sub_2173551F0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 65);
  return sub_21735521C;
}

uint64_t sub_217355234(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

void *sub_217355280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2173552F4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2173552F4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_217355338(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_217355378()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24428, &qword_217758738);
  sub_217283840(&qword_27CB24430, &qword_27CB24428, &qword_217758738, &protocol conformance descriptor for ActiveMonitoring.Publisher<A, B>);
  v0 = sub_217751C38();

  return v0;
}

uint64_t sub_217355418()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
  sub_217283840(&qword_280BE73D8, &qword_27CB244D8, &qword_2177589B0, MEMORY[0x277CBCE18]);
  sub_217751BB8();
}

void sub_2173554B4()
{
  static MusicAuthorization.currentStatus.getter(&v4);
  switch(v4)
  {
    case 2:
      OUTLINED_FUNCTION_8_21();
      goto LABEL_3;
    case 3:

      goto LABEL_6;
    default:
LABEL_3:
      OUTLINED_FUNCTION_7_17();
      v1 = sub_217753058();

      if ((v1 & 1) == 0)
      {
        return;
      }

LABEL_6:
      sub_2174EB138([*(v0 + 32) nowPlayingAudioFormat], &v3);
      sub_21735584C(&v3);
      return;
  }
}

void sub_2173555AC()
{
  sub_2173547B8([*(v0 + 32) playbackState], &v5);
  sub_217355670(&v5);
  [*(v0 + 32) currentPlaybackRate];
  sub_2173556A4(1, v1);
  sub_217354860([*(v0 + 32) repeatMode], &v4);
  sub_217355718(&v4, 1);
  sub_2173549A4([*(v0 + 32) shuffleMode], &v3);
  sub_2173557AC(&v3, 1);
  sub_2174EB138([*(v0 + 32) nowPlayingAudioFormat], &v2);
  sub_21735584C(&v2);
}

unsigned __int8 *sub_217355670(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + 56) != v2)
  {
    result = sub_217355418();
    *(v1 + 56) = v2;
  }

  return result;
}

id sub_2173556A4(id result, float a2)
{
  if (*(v2 + 60) != a2)
  {
    v4 = result;
    result = sub_217355418();
    *(v2 + 60) = a2;
    if ((v4 & 1) == 0)
    {
      v6 = *(v2 + 32);
      *&v5 = a2;

      return [v6 setCurrentPlaybackRate_];
    }
  }

  return result;
}

char *sub_217355718(char *result, char a2)
{
  v4 = *result;
  v5 = *result;
  v6 = *(v2 + 64);
  if (v6 == 3)
  {
    if (v5 == 3)
    {
      return result;
    }
  }

  else if (v6 == v5)
  {
    return result;
  }

  result = sub_217355418();
  *(v2 + 64) = v5;
  if ((a2 & 1) == 0)
  {
    v7 = qword_21775F630[v4];
    v8 = *(v2 + 32);

    return [v8 setRepeatMode_];
  }

  return result;
}

unsigned __int8 *sub_2173557AC(unsigned __int8 *result, char a2)
{
  v4 = *result;
  v5 = *(v2 + 65);
  if (v5 == 2)
  {
    if (v4 == 2)
    {
      return result;
    }
  }

  else if (v4 != 2 && ((v5 ^ v4) & 1) == 0)
  {
    return result;
  }

  result = sub_217355418();
  *(v2 + 65) = v4;
  if ((a2 & 1) == 0)
  {
    v6 = *(v2 + 32);
    v7 = 1;
    if (v4)
    {
      v7 = 2;
    }

    if (v4 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    return [v6 setShuffleMode_];
  }

  return result;
}

void sub_21735584C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 == 6)
  {
    if (v2 == 6)
    {
      return;
    }
  }

  else if (v3 == v2)
  {
    return;
  }

  sub_217355418();
  *(v1 + 16) = v2;
  if (qword_27CB23C60 != -1)
  {
    swift_once();
  }

  v4 = sub_217751AF8();
  __swift_project_value_buffer(v4, qword_27CB8A2A0);
  v5 = sub_217751AD8();
  v6 = sub_217752828();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CC8, &qword_21775F608);
    v9 = sub_217751FA8();
    v11 = sub_21729C0E8(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_217751FA8();
    v14 = sub_21729C0E8(v12, v13, &v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2171EE000, v5, v6, "MusicPlayer.State's audioVariant was updated from %{public}s to %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v8, -1, -1);
    MEMORY[0x21CEA4360](v7, -1, -1);
  }
}

uint64_t MusicPlayer.State.deinit()
{

  return v0;
}

uint64_t MusicPlayer.State.__deallocating_deinit()
{
  MusicPlayer.State.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_217355AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25CB0;
  if (!qword_27CB25CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CB0);
  }

  return result;
}

unint64_t sub_217355B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25CB8;
  if (!qword_27CB25CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CB8);
  }

  return result;
}

unint64_t sub_217355B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25CC0;
  if (!qword_27CB25CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CC0);
  }

  return result;
}

uint64_t sub_217355BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217355378();
  *a1 = result;
  return result;
}

_BYTE *_s14PlaybackStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10RepeatModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *_s11ShuffleModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_217356050()
{
  OUTLINED_FUNCTION_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_5(v1);

  return sub_217354E34(v2, v3);
}

uint64_t sub_2173560D8()
{
  OUTLINED_FUNCTION_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_5(v1);

  return sub_217354ECC(v2, v3);
}

uint64_t sub_217356160()
{
  OUTLINED_FUNCTION_10();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CloudMusicVideo.Attributes.artwork.getter()
{
  OUTLINED_FUNCTION_136_4(v3);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x1B8uLL);
  return sub_2172E3D54();
}

void static CloudMusicVideo.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_99();
  v186 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v178 - v20;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31();
  v185 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99();
  v187 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v178 - v27;
  OUTLINED_FUNCTION_203_1();
  OUTLINED_FUNCTION_149_4();
  memcpy(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_202_2();
  memcpy(v32, v2, 0x1B8uLL);
  OUTLINED_FUNCTION_149_4();
  memcpy(v33, v34, v35);
  memcpy(&v200[27] + 8, v2, 0x1B8uLL);
  OUTLINED_FUNCTION_149_4();
  memcpy(v36, v37, v38);
  OUTLINED_FUNCTION_104(&v204);
  if (v42)
  {
    OUTLINED_FUNCTION_162_3(v199);
    OUTLINED_FUNCTION_104(v199);
    if (v42)
    {
      v182 = v16;
      v183 = v11;
      v184 = v7;
      memcpy(v203, v200, 0x1B8uLL);
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_202_2();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v39, v40, v41);
      goto LABEL_12;
    }

LABEL_8:
    memcpy(v199, v200, sizeof(v199));
    v43 = OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_225_0(v43, v203);
    v44 = OUTLINED_FUNCTION_202_2();
    OUTLINED_FUNCTION_225_0(v44, v203);
    v45 = &unk_27CB25008;
    v46 = &unk_21778F850;
    v47 = v199;
LABEL_9:
    sub_2171F0738(v47, v45, v46);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_162_3(v198);
  OUTLINED_FUNCTION_104(v198);
  if (v42)
  {
    goto LABEL_8;
  }

  v182 = v16;
  v183 = v11;
  v184 = v7;
  OUTLINED_FUNCTION_162_3(v189);
  OUTLINED_FUNCTION_162_3(v199);
  memcpy(v203, v200, 0x1B8uLL);
  OUTLINED_FUNCTION_203_1();
  sub_2172E3D54();
  OUTLINED_FUNCTION_202_2();
  sub_2172E3D54();
  sub_2172A92BC();
  v49 = v48;
  sub_2171F0738(v189, &qword_27CB25000, &unk_21776EA00);
  memcpy(v190, v200, sizeof(v190));
  sub_2171F0738(v190, &qword_27CB25000, &unk_21776EA00);
  if ((v49 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v50 = v4[56];
  v51 = v2[56];
  if (v50)
  {
    if (!v51)
    {
      goto LABEL_10;
    }

    v52 = v4[55] == v2[55] && v50 == v51;
    if (!v52 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v51)
  {
    goto LABEL_10;
  }

  v53 = v4[58];
  v54 = v2[58];
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_10;
    }

    v55 = v4[57] == v2[57] && v53 == v54;
    if (!v55 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v54)
  {
    goto LABEL_10;
  }

  v180 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v181 = v5;
  v56 = *(v188 + 48);
  v57 = &unk_27CB277C0;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  v58 = v181;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v28, 1, v58);
  if (v42)
  {
    OUTLINED_FUNCTION_133(&v28[v56], 1, v58);
    if (v42)
    {
      sub_2171F0738(v28, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_5_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(&v28[v56], 1, v58);
  if (v59)
  {
    (*(v184 + 8))(v21, v58);
LABEL_38:
    v45 = &qword_27CB24840;
    v46 = &unk_217758DD0;
    v47 = v28;
    goto LABEL_9;
  }

  v60 = v184;
  v61 = &v28[v56];
  v62 = v183;
  (*(v184 + 32))(v183, v61, v58);
  OUTLINED_FUNCTION_0_26();
  sub_217361B1C(v63);
  HIDWORD(v179) = sub_217751F08();
  v64 = *(v60 + 8);
  LOBYTE(v57) = v64;
  v64(v62, v58);
  v64(v21, v58);
  sub_2171F0738(v28, &unk_27CB277C0, &qword_217758DC0);
  if ((v179 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_40:
  v65 = v180;
  OUTLINED_FUNCTION_24_3();
  if (v68)
  {
    if (!v66)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v67);
    v71 = v42 && v69 == v70;
    if (!v71 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v66)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3();
  if (v73)
  {
    if (!v72)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v74)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_142_4();
  if (v28)
  {
    if (!v21)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262A00();
    OUTLINED_FUNCTION_196_2();
    if ((v57 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v21)
  {
    goto LABEL_10;
  }

  v75 = (v4 + v65[11]);
  memcpy(v196, v75, sizeof(v196));
  v76 = (v2 + v65[11]);
  memcpy(v197, v76, sizeof(v197));
  v77 = v75[1];
  *v190 = *v75;
  *&v190[16] = v77;
  v78 = v75[3];
  *&v190[32] = v75[2];
  *&v190[48] = v78;
  v79 = v196[8];
  if (!v196[8])
  {
    if (!v197[8])
    {
      v89 = v75[1];
      v200[0] = *v75;
      v200[1] = v89;
      v90 = v75[3];
      v200[2] = v75[2];
      v200[3] = v90;
      *&v200[4] = 0;
      v79 = &qword_27CB25010;
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v91, v92, v93);
      goto LABEL_66;
    }

LABEL_63:
    v85 = v75[1];
    v200[0] = *v75;
    v200[1] = v85;
    v86 = v75[3];
    v200[2] = v75[2];
    v200[3] = v86;
    v87 = *(v76 + 1);
    *(&v200[4] + 8) = *v76;
    *(&v200[5] + 8) = v87;
    v88 = *(v76 + 3);
    *(&v200[6] + 8) = *(v76 + 2);
    *(&v200[7] + 8) = v88;
    *&v200[4] = v196[8];
    *(&v200[8] + 1) = v197[8];
    OUTLINED_FUNCTION_225_0(v196, v198);
    OUTLINED_FUNCTION_225_0(v197, v198);
    v45 = &unk_27CB25018;
    v46 = &unk_21775B500;
LABEL_64:
    v47 = v200;
    goto LABEL_9;
  }

  if (!v197[8])
  {
    goto LABEL_63;
  }

  v80 = *(v76 + 1);
  v198[0] = *v76;
  v198[1] = v80;
  v81 = *(v76 + 3);
  v198[2] = *(v76 + 2);
  v198[3] = v81;
  *&v198[4] = v197[8];
  memcpy(v202, v198, sizeof(v202));
  v82 = v75[1];
  v200[55] = *v75;
  v200[56] = v82;
  v83 = v75[3];
  v200[57] = v75[2];
  v200[58] = v83;
  v201 = v196[8];
  v76 = &qword_27CB25010;
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172A9570();
  v75 = v84;
  sub_2171F0738(v198, &qword_27CB25010, &qword_21775B4F8);
  v200[0] = *v190;
  v200[1] = *&v190[16];
  v200[2] = *&v190[32];
  v200[3] = *&v190[48];
  *&v200[4] = v79;
  sub_2171F0738(v200, &qword_27CB25010, &qword_21775B4F8);
  if ((v75 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_66:
  OUTLINED_FUNCTION_142_4();
  if (v76)
  {
    if (!v75)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262CB4();
    OUTLINED_FUNCTION_196_2();
    if ((v79 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v75)
  {
    goto LABEL_10;
  }

  v94 = v65[13];
  v95 = *(v2 + v94);
  if (*(v4 + v94))
  {
    if (!v95)
    {
      goto LABEL_10;
    }

    sub_217270790();
    if ((v96 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v95)
  {
    goto LABEL_10;
  }

  v97 = v65[14];
  v98 = *(v4 + v97);
  v99 = *(v2 + v97);
  if (v98 == 2)
  {
    if (v99 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v99 == 2 || ((v99 ^ v98) & 1) != 0)
  {
    goto LABEL_10;
  }

  v100 = v180[15];
  v101 = *(v4 + v100);
  v102 = *(v2 + v100);
  if (v101 == 2)
  {
    if (v102 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v102 == 2 || ((v102 ^ v101) & 1) != 0)
  {
    goto LABEL_10;
  }

  v103 = v180[16];
  v104 = v187;
  v105 = *(v188 + 48);
  v106 = &unk_27CB277C0;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v104);
  if (v42)
  {
    OUTLINED_FUNCTION_45(v105 + v187);
    if (v42)
    {
      sub_2171F0738(v187, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_96;
    }

LABEL_94:
    v45 = &qword_27CB24840;
    v46 = &unk_217758DD0;
    v47 = v187;
    goto LABEL_9;
  }

  v107 = v187;
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v105 + v107);
  if (v108)
  {
    (*(v184 + 8))(v186, v181);
    goto LABEL_94;
  }

  v110 = v183;
  v109 = v184;
  v111 = v187;
  v103 = v181;
  (*(v184 + 32))(v183, v105 + v187, v181);
  OUTLINED_FUNCTION_0_26();
  sub_217361B1C(v112);
  v113 = v186;
  LOBYTE(v106) = sub_217751F08();
  v105 = *(v109 + 8);
  v105(v110, v103);
  v105(v113, v103);
  sub_2171F0738(v111, &unk_27CB277C0, &qword_217758DC0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_96:
  OUTLINED_FUNCTION_24_3();
  if (v116)
  {
    if (!v114)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v115);
    v119 = v42 && v117 == v118;
    if (!v119 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v114)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_3();
  if (v122)
  {
    if (!v120)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v121);
    v125 = v42 && v123 == v124;
    if (!v125 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v120)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_142_4();
  if (v103)
  {
    if (!v105)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_2172711A8();
    OUTLINED_FUNCTION_196_2();
    if ((v106 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v105)
  {
    goto LABEL_10;
  }

  v126 = (v4 + v180[20]);
  memcpy(v190, v126, 0x78uLL);
  v127 = v2 + v180[20];
  memcpy(v198, v127, 0x78uLL);
  v128 = *v190;
  v129 = *&v190[8];
  memcpy(v195, v126 + 2, sizeof(v195));
  v130 = v198[0];
  memcpy(v194, v127 + 16, sizeof(v194));
  if (!*&v190[8])
  {
    if (!*(&v198[0] + 1))
    {
      v200[0] = *v190;
      OUTLINED_FUNCTION_221_1();
      v132 = &qword_27CB244D0;
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v133, v134, v135);
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_225_0(v190, v200);
    OUTLINED_FUNCTION_225_0(v198, v200);
    goto LABEL_126;
  }

  v200[0] = *v190;
  OUTLINED_FUNCTION_221_1();
  memcpy(v189, v200, 0x78uLL);
  if (!*(&v130 + 1))
  {
    memcpy(v193, v200, sizeof(v193));
    OUTLINED_FUNCTION_225_0(v190, v192);
    OUTLINED_FUNCTION_225_0(v198, v192);
    OUTLINED_FUNCTION_225_0(v200, v192);
    sub_2172848C0(v193);
LABEL_126:
    *&v200[0] = v128;
    *(&v200[0] + 1) = v129;
    memcpy(&v200[1], v195, 0x68uLL);
    *(&v200[7] + 8) = v130;
    memcpy(&v200[8] + 8, v194, 0x68uLL);
    v45 = &qword_27CB24AE8;
    v46 = &unk_2177590C0;
    goto LABEL_64;
  }

  memcpy(&v193[16], v127 + 16, 0x68uLL);
  *v193 = v130;
  v126 = &qword_27CB244D0;
  v127 = &unk_21775D620;
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  static PlayParameters.== infix(_:_:)(v189, v193);
  LOBYTE(v132) = v131;
  memcpy(v191, v193, sizeof(v191));
  sub_2172848C0(v191);
  memcpy(v192, v189, sizeof(v192));
  sub_2172848C0(v192);
  *v193 = v128;
  *&v193[8] = v129;
  memcpy(&v193[16], v195, 0x68uLL);
  sub_2171F0738(v193, &qword_27CB244D0, &unk_21775D620);
  if ((v132 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_128:
  OUTLINED_FUNCTION_142_4();
  if (v127)
  {
    if (!v126)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    v136 = OUTLINED_FUNCTION_5_3();
    sub_2172723E0(v136, v137, v138, v139, v140, v141, v142, v143, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189[0]);
    OUTLINED_FUNCTION_196_2();
    if ((v132 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v126)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_3();
  if (v146)
  {
    if (!v144)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v145);
    v149 = v42 && v147 == v148;
    if (!v149 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v144)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3();
  if (v151)
  {
    if (!v150)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v152)
    {
      goto LABEL_10;
    }
  }

  v153 = *(v188 + 48);
  v154 = v185;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v154);
  if (!v42)
  {
    v155 = v185;
    sub_2172E3D54();
    OUTLINED_FUNCTION_45(v155 + v153);
    if (!v156)
    {
      v157 = v184;
      v158 = v185;
      v159 = &v185[v153];
      v160 = v181;
      (*(v184 + 32))(v183, v159, v181);
      OUTLINED_FUNCTION_0_26();
      sub_217361B1C(v161);
      v162 = v182;
      v163 = sub_217751F08();
      v164 = *(v157 + 8);
      v165 = OUTLINED_FUNCTION_205_0();
      v164(v165);
      (v164)(v162, v160);
      sub_2171F0738(v158, &unk_27CB277C0, &qword_217758DC0);
      if ((v163 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_156;
    }

    (*(v184 + 8))(v182, v181);
    goto LABEL_154;
  }

  OUTLINED_FUNCTION_45(&v185[v153]);
  if (!v42)
  {
LABEL_154:
    v45 = &qword_27CB24840;
    v46 = &unk_217758DD0;
    v47 = v185;
    goto LABEL_9;
  }

  sub_2171F0738(v185, &unk_27CB277C0, &qword_217758DC0);
LABEL_156:
  OUTLINED_FUNCTION_24_3();
  if (v168)
  {
    if (!v166)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v167);
    v171 = v42 && v169 == v170;
    if (!v171 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v166)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_3();
  if (v174 && v172)
  {
    OUTLINED_FUNCTION_59_0(v173);
    if (v42)
    {
      v177 = v175 == v176;
    }

    else
    {
      v177 = 0;
    }

    if (!v177)
    {
      sub_217753058();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2173572AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002177ABFE0 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4B34736168 && a2 == 0xE500000000000000;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x524448736168 && a2 == 0xE600000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1668445033 && a2 == 0xE400000000000000;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 1701667182 && a2 == 0xE400000000000000;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                      if (v23 || (sub_217753058() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                        if (v24 || (sub_217753058() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 7107189 && a2 == 0xE300000000000000;
                                          if (v25 || (sub_217753058() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6275536F65646976 && a2 == 0xEC00000065707954;
                                            if (v26 || (sub_217753058() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_217753058();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21735799C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6D614E6D75626C61;
      break;
    case 2:
      result = 0x614E747369747261;
      break;
    case 3:
      result = 0x7255747369747261;
      break;
    case 4:
      result = 0x52746E65746E6F63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x6D614E65726E6567;
      break;
    case 10:
      result = 0x4B34736168;
      break;
    case 11:
      result = 0x524448736168;
      break;
    case 12:
      result = 0x76697372656D6D69;
      break;
    case 13:
      result = 1668445033;
      break;
    case 14:
      result = 1701667182;
      break;
    case 15:
      result = 0x73726566666FLL;
      break;
    case 16:
      result = 0x6172615079616C70;
      break;
    case 17:
      result = 0x7377656976657270;
      break;
    case 18:
      result = 0x44657361656C6572;
      break;
    case 19:
      result = 0x6D754E6B63617274;
      break;
    case 20:
      result = 7107189;
      break;
    case 21:
      result = 0x6275536F65646976;
      break;
    case 22:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217357C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173572AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217357C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217357994();
  *a1 = result;
  return result;
}

uint64_t sub_217357C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217361AC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217357CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217361AC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudMusicVideo.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CD8, &qword_21775F650);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217361AC8(v11, v12, v13);
  sub_2177532F8();
  memcpy(v60, v2, sizeof(v60));
  memcpy(v59, v2, sizeof(v59));
  v58 = 0;
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v14 = sub_2172DEEB4();
  OUTLINED_FUNCTION_37_8(v59, &v58, v15, v16, v14);
  memcpy(v57, v59, 0x1B8uLL);
  sub_2171F0738(v57, &qword_27CB25000, &unk_21776EA00);
  if (!v1)
  {
    OUTLINED_FUNCTION_12_14(1);
    sub_217752EF8();
    OUTLINED_FUNCTION_12_14(2);
    sub_217752EF8();
    v61 = type metadata accessor for CloudMusicVideo.Attributes(0);
    LOBYTE(v48[0]) = 3;
    v17 = sub_2177516D8();
    OUTLINED_FUNCTION_0_26();
    v19 = sub_217361B1C(v18);
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v43[1] = v19;
    v43[2] = v17;
    OUTLINED_FUNCTION_143_1(v61[8]);
    OUTLINED_FUNCTION_12_14(4);
    sub_217752EF8();
    OUTLINED_FUNCTION_12_14(5);
    sub_217752F28();
    v56 = *&v2[v61[10]];
    v55 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v20 = sub_217361D3C(&unk_280BE23A0);
    OUTLINED_FUNCTION_37_8(&v56, &v55, v21, v22, v20);
    v23 = v61[11];
    memcpy(v54, &v2[v23], sizeof(v54));
    memcpy(v53, &v2[v23], sizeof(v53));
    v52 = 7;
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v24 = sub_2172DF104();
    OUTLINED_FUNCTION_37_8(v53, &v52, v25, v26, v24);
    memcpy(v51, v53, 0x48uLL);
    sub_2171F0738(v51, &qword_27CB25010, &qword_21775B4F8);
    v48[0] = *&v2[v61[12]];
    v47[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v27 = sub_217361B60(&qword_280BE23B0);
    OUTLINED_FUNCTION_37_8(v48, v47, v28, v29, v27);
    v48[0] = *&v2[v61[13]];
    v47[0] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    v30 = sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_37_8(v48, v47, v31, v32, v30);
    LOBYTE(v48[0]) = 10;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F08();
    LOBYTE(v48[0]) = 11;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F08();
    LOBYTE(v48[0]) = 12;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v61[17]);
    OUTLINED_FUNCTION_12_14(13);
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v61[18]);
    OUTLINED_FUNCTION_12_14(14);
    sub_217752EF8();
    v50 = *&v2[v61[19]];
    v49 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
    v33 = sub_2172DF398();
    OUTLINED_FUNCTION_37_8(&v50, &v49, v34, v35, v33);
    v36 = v61[20];
    memcpy(v48, &v2[v36], sizeof(v48));
    memcpy(v47, &v2[v36], sizeof(v47));
    v46[127] = 16;
    v37 = sub_2172E3D54();
    sub_2172DF550(v37, v38, v39);
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    memcpy(v46, v47, 0x78uLL);
    sub_2171F0738(v46, &qword_27CB244D0, &unk_21775D620);
    v45 = *&v2[v61[21]];
    v44 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
    v40 = sub_217361BD0();
    OUTLINED_FUNCTION_37_8(&v45, &v44, v41, v42, v40);
    OUTLINED_FUNCTION_143_1(v61[22]);
    LOBYTE(v45) = 18;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    LOBYTE(v45) = 19;
    OUTLINED_FUNCTION_49_0();
    sub_217752F28();
    LOBYTE(v45) = 20;
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v61[25]);
    LOBYTE(v45) = 21;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v61[26]);
    LOBYTE(v45) = 22;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_170();
}

void CloudMusicVideo.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v46 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  memcpy(v53, v0, sizeof(v53));
  v16 = v0[54];
  memcpy(v54, v0, sizeof(v54));
  v55 = v16;
  OUTLINED_FUNCTION_104(v54);
  if (v17)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v52, v53, sizeof(v52));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v5);
    sub_217751DE8();
    sub_217265A08(v5, v16);
  }

  if (v0[56])
  {
    v1 = v0[55];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[58])
  {
    v1 = v0[57];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v18 = type metadata accessor for CloudMusicVideo.Attributes(0);
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v15, 1, v6);
  if (v17)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_110_3();
    v20(v19, v15, v6);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    v22 = sub_217361B1C(v21);
    OUTLINED_FUNCTION_147(v22);
    v23 = OUTLINED_FUNCTION_25_0();
    v24(v23);
  }

  if (*(v0 + v18[8] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[9] + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    MEMORY[0x21CEA3550](v1);
  }

  if (*(v0 + v18[10]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_129_4();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v25 = v0 + v18[11];
  if (*(v25 + 8))
  {
    v26 = *(v25 + 1);
    v52[0] = *v25;
    v52[1] = v26;
    v27 = *(v25 + 3);
    v52[2] = *(v25 + 2);
    v52[3] = v27;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v5);
    sub_217751DE8();
    v28 = OUTLINED_FUNCTION_129_4();
    sub_217265A08(v28, v29);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[12]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_129_4();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[13]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_129_4();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[14]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + v18[15]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v2, 1, v6);
  if (v17)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v30 = OUTLINED_FUNCTION_110_3();
    v31(v30, v2, v6);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    v33 = sub_217361B1C(v32);
    OUTLINED_FUNCTION_147(v33);
    v34 = OUTLINED_FUNCTION_25_0();
    v35(v34);
  }

  if (*(v0 + v18[17] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[18] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[19]))
  {
    OUTLINED_FUNCTION_119();
    sub_217280F7C();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v36 = (v0 + v18[20]);
  v37 = *v36;
  v38 = v36[1];
  memcpy(v51, v36 + 2, sizeof(v51));
  if (v38)
  {
    memcpy(&v48[2], v36 + 2, 0x68uLL);
    v48[0] = v37;
    v48[1] = v38;
    OUTLINED_FUNCTION_119();
    v49[0] = v37;
    v49[1] = v38;
    memcpy(v50, v51, sizeof(v50));
    sub_2172DF5A4(v49, v52);
    PlayParameters.hash(into:)(v5);
    memcpy(v52, v48, 0x78uLL);
    sub_2172848C0(v52);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v18[21]))
  {
    OUTLINED_FUNCTION_119();
    sub_217280BBC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v18[22] + 8))
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v18[23] + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    MEMORY[0x21CEA3550](v37);
  }

  v39 = v46;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v39, 1, v6);
  if (v17)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_103_3();
    v40();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    v42 = sub_217361B1C(v41);
    OUTLINED_FUNCTION_147(v42);
    v43 = OUTLINED_FUNCTION_25_0();
    v44(v43);
  }

  if (*(v3 + v18[25] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v18[26] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

void CloudMusicVideo.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v27;
  a24 = v28;
  v134 = v24;
  v30 = v29;
  v129 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v33 = OUTLINED_FUNCTION_45_0(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_1();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v38);
  v40 = &v122 - v39;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CF8, &qword_21775F660);
  OUTLINED_FUNCTION_0_0();
  v42 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_87_2();
  v133 = type metadata accessor for CloudMusicVideo.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_81();
  v135 = v45;
  v46 = v30[3];
  v132 = v30;
  v47 = OUTLINED_FUNCTION_160(v30, v46);
  sub_217361AC8(v47, v48, v49);
  v130 = v25;
  OUTLINED_FUNCTION_125_4();
  v50 = v134;
  sub_2177532C8();
  if (v50)
  {
    v134 = v50;
    v51 = 0;
    LODWORD(v52) = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    OUTLINED_FUNCTION_1_23();
  }

  else
  {
    v134 = v40;
    v126 = v36;
    v127 = v26;
    v128 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a14 = 0;
    sub_2172DF600();
    v55 = v130;
    sub_217752E58();
    v57 = v133;
    v62 = v135;
    memcpy(v135, v139, 0x1B8uLL);
    OUTLINED_FUNCTION_90_6(1);
    v63 = sub_217752E18();
    v53 = v128;
    v62[55] = v63;
    v62[56] = v64;
    OUTLINED_FUNCTION_90_6(2);
    v62[57] = sub_217752E18();
    v62[58] = v65;
    v51 = sub_2177516D8();
    LOBYTE(v137[0]) = 3;
    OUTLINED_FUNCTION_0_26();
    v52 = sub_217361B1C(v66);
    sub_217752E58();
    v125 = v52;
    sub_2172E21DC();
    OUTLINED_FUNCTION_90_6(4);
    v67 = sub_217752E18();
    v68 = (v62 + v57[8]);
    *v68 = v67;
    v68[1] = v69;
    OUTLINED_FUNCTION_90_6(5);
    v70 = sub_217752E48();
    v71 = v62 + v57[9];
    *v71 = v70;
    v71[8] = v72 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v54 = v62;
    v138[0] = 6;
    sub_217361D3C(&unk_280BE2398);
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    *(v62 + v57[10]) = v137[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    a13 = 7;
    sub_2172DF7DC();
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    memcpy(&v135[v57[11]], v138, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    LOBYTE(v136) = 8;
    sub_217361B60(&qword_280BE23A8);
    OUTLINED_FUNCTION_112_6();
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    v134 = 0;
    *&v135[v57[12]] = v137[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    LOBYTE(v136) = 9;
    sub_2172DF950(&unk_280BE2318);
    OUTLINED_FUNCTION_112_6();
    OUTLINED_FUNCTION_85_5();
    v73 = v134;
    sub_217752E58();
    v134 = v73;
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_18_15();
      v75(v74);
      OUTLINED_FUNCTION_3_28();
      v51 = 1;
      OUTLINED_FUNCTION_2_30();
    }

    else
    {
      *&v135[v133[13]] = v137[0];
      OUTLINED_FUNCTION_84_5(10);
      v76 = sub_217752E28();
      v134 = 0;
      v135[v133[14]] = v76;
      OUTLINED_FUNCTION_84_5(11);
      v77 = sub_217752E28();
      v134 = 0;
      v135[v133[15]] = v77;
      LOBYTE(v137[0]) = 12;
      v55 = v130;
      sub_217752E58();
      v134 = 0;
      sub_2172E21DC();
      OUTLINED_FUNCTION_84_5(13);
      v78 = v134;
      v79 = sub_217752E18();
      v134 = v78;
      if (v78)
      {
        v81 = OUTLINED_FUNCTION_18_15();
        v82(v81);
        OUTLINED_FUNCTION_6_18();
        OUTLINED_FUNCTION_2_30();
        LODWORD(v125) = v83;
        LODWORD(v126) = v83;
      }

      else
      {
        OUTLINED_FUNCTION_81_6(v79, v80, v133[17]);
        OUTLINED_FUNCTION_84_5(14);
        v84 = sub_217752E18();
        v134 = 0;
        OUTLINED_FUNCTION_81_6(v84, v85, v133[18]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
        LOBYTE(v136) = 15;
        sub_2172DF9B8();
        OUTLINED_FUNCTION_112_6();
        v91 = OUTLINED_FUNCTION_160_4(v86, v87, v88, v89, v90);
        v134 = 0;
        *&v135[v133[19]] = v137[0];
        a12 = 16;
        sub_2172DFAC8(v91, v92, v93);
        v55 = v130;
        v94 = v134;
        sub_217752E58();
        v134 = v94;
        if (!v94)
        {
          memcpy(&v135[v133[20]], v137, 0x78uLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
          a11 = 17;
          v98 = sub_217361DAC();
          OUTLINED_FUNCTION_160_4(v98, &a11, v99, v100, v98);
          v134 = 0;
          *&v135[v133[21]] = v136;
          OUTLINED_FUNCTION_80_4(18);
          v101 = sub_217752E18();
          v134 = 0;
          OUTLINED_FUNCTION_81_6(v101, v102, v133[22]);
          OUTLINED_FUNCTION_80_4(19);
          v103 = sub_217752E48();
          v134 = 0;
          v104 = &v135[v133[23]];
          *v104 = v103;
          v104[8] = v105 & 1;
          LOBYTE(v136) = 20;
          v55 = v130;
          sub_217752E58();
          v134 = 0;
          sub_2172E21DC();
          OUTLINED_FUNCTION_80_4(21);
          v107 = v134;
          v108 = sub_217752E18();
          v134 = v107;
          if (!v107)
          {
            OUTLINED_FUNCTION_81_6(v108, v109, v133[25]);
            OUTLINED_FUNCTION_80_4(22);
            v113 = sub_217752E18();
            v134 = 0;
            v114 = v113;
            v116 = v115;
            v117 = OUTLINED_FUNCTION_18_15();
            v118(v117);
            v119 = v135;
            v120 = &v135[v133[26]];
            *v120 = v114;
            *(v120 + 1) = v116;
            OUTLINED_FUNCTION_22_14();
            sub_2173625C8();
            __swift_destroy_boxed_opaque_existential_1(v132);
            OUTLINED_FUNCTION_21_13();
            sub_217362620(v119, v121);
            goto LABEL_42;
          }

          v110 = OUTLINED_FUNCTION_18_15();
          v111(v110);
          __swift_destroy_boxed_opaque_existential_1(v132);
          LODWORD(v132) = 0;
          OUTLINED_FUNCTION_2_30();
          v124 = v112;
          LODWORD(v125) = v112;
          OUTLINED_FUNCTION_34_9(v112);
          LODWORD(v130) = v106;
          LODWORD(v131) = v106;
          v51 = 1;
          v56 = v133;
          v58 = v135;
LABEL_7:
          OUTLINED_FUNCTION_149_4();
          memcpy(v59, v60, v61);
          sub_2171F0738(v139, &qword_27CB25000, &unk_21776EA00);
          if (v52)
          {
            goto LABEL_8;
          }

          goto LABEL_26;
        }

        v95 = OUTLINED_FUNCTION_18_15();
        v96(v95);
        LODWORD(v130) = 0;
        LODWORD(v131) = 0;
        v51 = 1;
        OUTLINED_FUNCTION_2_30();
        LODWORD(v125) = v97;
        OUTLINED_FUNCTION_34_9(v97);
      }
    }
  }

  v56 = v133;
  v58 = v135;
  __swift_destroy_boxed_opaque_existential_1(v132);
  if (v51)
  {
    v51 = 0;
    v124 = 0;
    LODWORD(v132) = 0;
    goto LABEL_7;
  }

  LODWORD(v132) = 0;
  v124 = 0;
  if (v52)
  {
LABEL_8:

    if ((v53 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_27:

    if (v54)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_26:
  if (v53)
  {
    goto LABEL_27;
  }

LABEL_9:
  if (v54)
  {
LABEL_10:
    sub_2171F0738(&v58[v56[7]], &unk_27CB277C0, &qword_217758DC0);
  }

LABEL_11:
  if (v55)
  {

    if ((v123 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!v123)
  {
LABEL_13:
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  memcpy(v139, &v58[v56[11]], 0x48uLL);
  sub_2171F0738(v139, &qword_27CB25010, &qword_21775B4F8);
  if (a10)
  {
LABEL_14:

    if ((v125 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v125)
  {
LABEL_15:
    if (v126)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:

  if (v126)
  {
LABEL_16:
    sub_2171F0738(&v58[v56[16]], &unk_27CB277C0, &qword_217758DC0);
    if ((v127 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v127)
  {
LABEL_17:
    if (v128)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  OUTLINED_FUNCTION_191_2();
  if (v128)
  {
LABEL_18:
    OUTLINED_FUNCTION_191_2();
    if ((v129 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v129)
  {
LABEL_19:
    if (v130)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:

  if (v130)
  {
LABEL_20:
    memcpy(v139, &v58[v56[20]], 0x78uLL);
    sub_2171F0738(v139, &qword_27CB244D0, &unk_21775D620);
    if ((v131 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v131)
  {
LABEL_21:
    if (v51)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:

  if (v51)
  {
LABEL_22:
    OUTLINED_FUNCTION_191_2();
    if ((v124 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v124)
  {
LABEL_23:
    if (!v132)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_2171F0738(&v58[v56[24]], &unk_27CB277C0, &qword_217758DC0);
  if (v132)
  {
LABEL_41:
    OUTLINED_FUNCTION_191_2();
  }

LABEL_42:
  OUTLINED_FUNCTION_170();
}

MusicKit::CloudMusicVideo::Relationships::CodingKeys_optional __swiftcall CloudMusicVideo.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudMusicVideo::Relationships::CodingKeys_optional __swiftcall CloudMusicVideo.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudMusicVideo.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t CloudMusicVideo.Relationships.CodingKeys.stringValue.getter()
{
  result = 0x736D75626C61;
  switch(*v0)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x676F6C61746163;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x7972617262696CLL;
      break;
    case 5:
      result = 0x73676E6F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217359B80@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicVideo.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217359BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217361F18(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217359C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217361F18(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudMusicVideo.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v215)
  {
    if (!v216)
    {
      sub_2171F0738(v214, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v70 = &unk_27CB25070;
    v71 = &unk_21777EF10;
LABEL_37:
    sub_2171F0738(v214, v70, v71);
    return 0;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v216)
  {
    sub_2171F0738(v213, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v197);
  v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
  v18 = sub_2172DDD44(v16, v17);
  v19 = v18;
  v27 = OUTLINED_FUNCTION_69_0(v18, v20, v21, v22, v23, v24, v25, v26, v197);
  OUTLINED_FUNCTION_68_0(v27, v28, v29, v30, v31, v32, v33, v34, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  sub_2171F0738(v214, &qword_27CB24270, &unk_21775D640);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v215)
  {
    if (!v216)
    {
      sub_2171F0738(v214, &qword_27CB24280, &unk_21775D680);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v35 = OUTLINED_FUNCTION_159_1();
  if (!v216)
  {
    sub_2171F0738(v213, &qword_27CB24288, &qword_217758F80);
LABEL_20:
    v70 = &qword_27CB25068;
    v71 = &qword_21775B528;
    goto LABEL_37;
  }

  v43 = OUTLINED_FUNCTION_75(v35, v36, v37, v38, v39, v40, v41, v42, v197);
  v51 = OUTLINED_FUNCTION_87_1(v43, v44, v45, v46, v47, v48, v49, v50, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
  v53 = sub_2172DE010(v51, v52);
  v54 = v53;
  v62 = OUTLINED_FUNCTION_69_0(v53, v55, v56, v57, v58, v59, v60, v61, v197);
  OUTLINED_FUNCTION_68_0(v62, v63, v64, v65, v66, v67, v68, v69, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  sub_2171F0738(v214, &qword_27CB24280, &unk_21775D680);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v215)
  {
    v72 = OUTLINED_FUNCTION_159_1();
    if (!v216)
    {
LABEL_33:
      sub_2171F0738(v213, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_34;
    }

    v80 = OUTLINED_FUNCTION_75(v72, v73, v74, v75, v76, v77, v78, v79, v197);
    v88 = OUTLINED_FUNCTION_87_1(v80, v81, v82, v83, v84, v85, v86, v87, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
    v90 = sub_2172DE088(v88, v89);
    v91 = v90;
    v99 = OUTLINED_FUNCTION_69_0(v90, v92, v93, v94, v95, v96, v97, v98, v197);
    OUTLINED_FUNCTION_68_0(v99, v100, v101, v102, v103, v104, v105, v106, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
    sub_2171F0738(v214, &qword_27CB242B0, &unk_21775D630);
    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v216)
    {
LABEL_34:
      v70 = &unk_27CB251A0;
      v71 = &unk_21777EF30;
      goto LABEL_37;
    }

    sub_2171F0738(v214, &qword_27CB242B0, &unk_21775D630);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v215)
  {
    if (!v216)
    {
      sub_2171F0738(v214, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_29;
    }

LABEL_36:
    v70 = &unk_27CB25078;
    v71 = &unk_21775B530;
    goto LABEL_37;
  }

  v107 = OUTLINED_FUNCTION_159_1();
  if (!v216)
  {
    sub_2171F0738(v213, &qword_27CB243B8, &qword_2177586B0);
    goto LABEL_36;
  }

  v115 = OUTLINED_FUNCTION_75(v107, v108, v109, v110, v111, v112, v113, v114, v197);
  v123 = OUTLINED_FUNCTION_87_1(v115, v116, v117, v118, v119, v120, v121, v122, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
  v125 = sub_2172DDD5C(v123, v124);
  v126 = v125;
  v134 = OUTLINED_FUNCTION_69_0(v125, v127, v128, v129, v130, v131, v132, v133, v197);
  OUTLINED_FUNCTION_68_0(v134, v135, v136, v137, v138, v139, v140, v141, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  sub_2171F0738(v214, &qword_27CB243B0, &unk_21775D670);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v215)
  {
    if (!v216)
    {
      sub_2171F0738(v214, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v142 = OUTLINED_FUNCTION_159_1();
  if (!v216)
  {
    goto LABEL_33;
  }

  v150 = OUTLINED_FUNCTION_75(v142, v143, v144, v145, v146, v147, v148, v149, v197);
  v158 = OUTLINED_FUNCTION_87_1(v150, v151, v152, v153, v154, v155, v156, v157, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
  v160 = sub_2172DE088(v158, v159);
  v161 = v160;
  v169 = OUTLINED_FUNCTION_69_0(v160, v162, v163, v164, v165, v166, v167, v168, v197);
  OUTLINED_FUNCTION_68_0(v169, v170, v171, v172, v173, v174, v175, v176, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  sub_2171F0738(v214, &qword_27CB242B0, &unk_21775D630);
  if ((v161 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v215)
  {
    if (!v216)
    {
      sub_2171F0738(v214, &qword_27CB242E0, &unk_21777EEE0);
      return 1;
    }

    goto LABEL_50;
  }

  v178 = OUTLINED_FUNCTION_159_1();
  if (!v216)
  {
    sub_2171F0738(v213, &qword_27CB242E8, &unk_21775D6B0);
LABEL_50:
    v70 = &unk_27CB25D00;
    v71 = &unk_21775F668;
    goto LABEL_37;
  }

  v186 = OUTLINED_FUNCTION_75(v178, v179, v180, v181, v182, v183, v184, v185, v197);
  v194 = OUTLINED_FUNCTION_87_1(v186, v187, v188, v189, v190, v191, v192, v193, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213[0]);
  v196 = sub_2172DE040(v194, v195);
  OUTLINED_FUNCTION_169_1(&v197);
  OUTLINED_FUNCTION_169_1(v213);
  sub_2171F0738(v214, &qword_27CB242E0, &unk_21777EEE0);
  return (v196 & 1) != 0;
}

uint64_t CloudMusicVideo.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D08, &qword_21775F670);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_87_2();
  v6 = OUTLINED_FUNCTION_68();
  sub_217361F18(v6, v7, v8);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_42_1();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217361F8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t CloudMusicVideo.Relationships.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v8);
    sub_2171F0738(&v55, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v17);
    sub_2171F0738(&v55, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v26);
    sub_2171F0738(&v55, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v35);
    sub_2171F0738(&v55, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v44);
    sub_2171F0738(&v55, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (!v71)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_24();
  v53 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6AC(v53);
  return sub_2171F0738(&v55, &qword_27CB242E8, &unk_21775D6B0);
}

uint64_t CloudMusicVideo.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6DC(v8);
    sub_2171F0738(v56, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v17);
    sub_2171F0738(v56, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v26);
    sub_2171F0738(v56, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE70C(v35);
    sub_2171F0738(v56, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v44 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v44);
    sub_2171F0738(v56, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v45 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    v53 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6AC(v53);
    sub_2171F0738(v56, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudMusicVideo.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D38, &qword_21775F678);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_87_2();
  bzero(v38, 0x100uLL);
  bzero(v41, 0x180uLL);
  v29 = OUTLINED_FUNCTION_160(v25, v25[3]);
  sub_217361F18(v29, v30, v31);
  OUTLINED_FUNCTION_125_4();
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2171F0738(v38, &qword_27CB24270, &unk_21775D640);
    sub_2171F0738(&v39, &qword_27CB24280, &unk_21775D680);
    sub_2171F0738(v41, &qword_27CB243B0, &unk_21775D670);
    sub_2171F0738(&v42, &qword_27CB242B0, &unk_21775D630);
    sub_2171F0738(&v43, &qword_27CB242E0, &unk_21777EEE0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172E0450();
    sub_217752E58();
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    v32 = sub_2172E02E4();
    OUTLINED_FUNCTION_41_10(v32);
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0ED0();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    memcpy(v40, v37, sizeof(v40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    v33 = sub_2172E05BC();
    OUTLINED_FUNCTION_41_10(v33);
    sub_2172E1F3C();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    v34 = sub_2173620F8();
    OUTLINED_FUNCTION_41_10(v34);
    v35 = OUTLINED_FUNCTION_65_0();
    v36(v35);
    sub_2172E1F3C();
    sub_217362264(v38, v27);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21726A3FC(v38);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735AD28(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v4);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE70C(v4);
    sub_2171F0738(__dst, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6AC(v4);
    sub_2171F0738(__dst, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void sub_21735B038(char *a3@<X8>)
{
  v4 = sub_217752DC8();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t CloudMusicVideo.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x2D6E692D65726F6DLL;
  }

  else
  {
    return 0x2D79622D65726F6DLL;
  }
}

uint64_t sub_21735B138@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicVideo.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21735B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736229C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21735B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736229C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudMusicVideo.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v73)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (!v74)
    {
LABEL_11:
      sub_2171F0738(v71, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_13;
    }

    v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v55);
    v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
    v18 = sub_2172DE088(v16, v17);
    v19 = v18;
    v27 = OUTLINED_FUNCTION_69_0(v18, v20, v21, v22, v23, v24, v25, v26, v55);
    OUTLINED_FUNCTION_68_0(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v74)
    {
LABEL_13:
      sub_2171F0738(v72, &qword_27CB251A0, &unk_21777EF30);
      return 0;
    }

    sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v73)
  {
    if (!v74)
    {
      sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
      return 1;
    }

    goto LABEL_13;
  }

  v35 = OUTLINED_FUNCTION_159_1();
  if (!v74)
  {
    goto LABEL_11;
  }

  v43 = OUTLINED_FUNCTION_75(v35, v36, v37, v38, v39, v40, v41, v42, v55);
  v51 = OUTLINED_FUNCTION_87_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
  v53 = sub_2172DE088(v51, v52);
  OUTLINED_FUNCTION_169_1(&v55);
  OUTLINED_FUNCTION_169_1(v71);
  sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
  return (v53 & 1) != 0;
}

uint64_t CloudMusicVideo.Associations.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D50, &qword_21775F680);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  v7 = OUTLINED_FUNCTION_68();
  sub_21736229C(v7, v8, v9);
  sub_2177532F8();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
  sub_2172E0BF8();
  OUTLINED_FUNCTION_73_8();
  sub_217752F38();
  if (!v0)
  {
    v11[14] = 1;
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t CloudMusicVideo.Associations.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v35)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v8);
    sub_2171F0738(&v19, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (!v35)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_24();
  v17 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6F4(v17);
  return sub_2171F0738(&v19, &qword_27CB242B8, &unk_21777EEA0);
}

uint64_t CloudMusicVideo.Associations.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v8);
    sub_2171F0738(v20, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v17);
    sub_2171F0738(v20, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudMusicVideo.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D60, &qword_21775F688);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  bzero(v11, 0x100uLL);
  v5 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21736229C(v5, v6, v7);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0ED0();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    sub_2172E1F3C();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    v8 = OUTLINED_FUNCTION_205_0();
    v9(v8);
    sub_2172E1F3C();
    sub_2173622F0(v11, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_2172844EC(v11);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735B950(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void *CloudMusicVideo.Metadata.init(contributors:popularity:snippets:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t CloudMusicVideo.Metadata.contributors.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_217221020(v2);
}

BOOL static CloudMusicVideo.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*a1 == 1)
  {
    sub_217221020(1);
    if (v6 == 1)
    {
      v2 = 1;
      sub_217221020(1);
      goto LABEL_20;
    }

    sub_217221020(v6);
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    sub_217221020(*a1);
    sub_217221020(1);
    sub_217221020(v2);

LABEL_7:
    sub_217221010(v2);
    v10 = v6;
LABEL_16:
    sub_217221010(v10);
    return 0;
  }

  if (v2)
  {
    v11 = *a1;
    if (v6)
    {
      v12 = sub_2172849CC();
      sub_217221020(v2);
      sub_217221020(v6);
      sub_217221020(v2);
      sub_217221010(v6);
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_217221020(v11);
      sub_217221020(0);
      sub_217221020(v2);
    }

LABEL_15:

    v10 = v2;
    goto LABEL_16;
  }

  sub_217221020(0);
  if (v6)
  {
    sub_217221020(v6);
    sub_217221020(0);
    sub_217221010(v6);
    goto LABEL_15;
  }

  sub_217221020(0);
  sub_217221020(0);
LABEL_19:

LABEL_20:
  sub_217221010(v2);
  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (v9)
    {
      sub_217751DE8();
      sub_21726F358();
      v16 = v15;

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v9;
}

uint64_t sub_21735BCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C75706F70 && a2 == 0xEA00000000007974;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21735BDDC(char a1)
{
  if (!a1)
  {
    return 0x75626972746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6972616C75706F70;
  }

  return 0x7374657070696E73;
}

uint64_t sub_21735BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21735BCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21735BE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217362328(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21735BEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217362328(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudMusicVideo.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D68, &qword_21775F690);
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_87_2();
  v29 = *v20;
  OUTLINED_FUNCTION_160(v24, v24[3]);
  v30 = sub_217221020(v29);
  sub_217362328(v30, v31, v32);
  OUTLINED_FUNCTION_125_4();
  v33 = sub_2177532F8();
  sub_21736237C(v33, v34, v35);
  OUTLINED_FUNCTION_48();
  sub_217752F38();
  v36.n128_f64[0] = sub_217221010(v29);
  if (!v21)
  {
    sub_217752F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E163C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  (*(v27 + 8))(v22, v25, v36);
  OUTLINED_FUNCTION_170();
}

void CloudMusicVideo.Metadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[3];
  if (*v2 == 1 || (sub_217753208(), !v4))
  {
    sub_217753208();
    if ((v6 & 1) == 0)
    {
LABEL_4:
      sub_217753208();
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x21CEA3580](v8);
      if (v7)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217753208();
      return;
    }
  }

  else
  {
    sub_217753208();
    sub_2172849D8();
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  sub_217753208();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_217753208();

  sub_21727DDE0(a1, v7, v9, v10, v11, v12, v13);
}

uint64_t CloudMusicVideo.Metadata.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2177531E8();
  CloudMusicVideo.Metadata.hash(into:)(v4);
  return sub_217753238();
}

void CloudMusicVideo.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D80, &qword_21775F698);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_160(v22, v22[3]);
  sub_217362328(v26, v27, v28);
  v29 = sub_2177532C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_2173623D0(v29, v30, v31);
    sub_217752E58();
    v32 = a10;
    LOBYTE(a10) = 1;
    v33 = sub_217752E38();
    v37 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E1928();
    sub_217752E58();
    v35 = OUTLINED_FUNCTION_1_3();
    v36(v35);
    *v24 = v32;
    *(v24 + 8) = v33;
    *(v24 + 16) = v37 & 1;
    *(v24 + 24) = a10;
    sub_217221020(v32);
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_217221010(v32);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735C450(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2177531E8();
  CloudMusicVideo.Metadata.hash(into:)(v5);
  return sub_217753238();
}

uint64_t CloudMusicVideo.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudMusicVideo(v0);
  OUTLINED_FUNCTION_22_14();
  return sub_2173625C8();
}

uint64_t CloudMusicVideo.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudMusicVideo(v0);
  return sub_2172E3D54();
}

double static CloudMusicVideo.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB25CD0 = a1;
}

uint64_t sub_21735C640@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB25CD0;
  return sub_217751DE8();
}

double sub_21735C690(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB25CD0 = v1;
  sub_217751DE8();
}

uint64_t CloudMusicVideo.views.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudMusicVideo(v0);
  return sub_2172E3D54();
}

uint64_t CloudMusicVideo.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = (v1 + *(type metadata accessor for CloudMusicVideo(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_21733C3CC(v4, v5, v6, v7);
}

__n128 CloudMusicVideo.meta.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CloudMusicVideo(0) + 32));
  sub_21733C410(*v3, v3[1], v3[2], v3[3]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t sub_21735C81C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8B28 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE8B38;
  v2 = byte_280BE8B40;
  *(v0 + 32) = qword_280BE8B30;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE6EA8 = v0;

  return sub_217751DE8();
}

uint64_t static CloudMusicVideo.catalogTypes.getter()
{
  if (qword_280BE6EA0 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21735C924()
{
  if (qword_280BE8B68 != -1)
  {
    swift_once();
  }

  qword_280BE6ED0 = qword_280BE8B70;
  *algn_280BE6ED8 = *algn_280BE8B78;
  byte_280BE6EE0 = byte_280BE8B80;

  return sub_217751DE8();
}

uint64_t static CloudMusicVideo.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE6ED8;
  v3 = byte_280BE6EE0;
  *a1 = qword_280BE6ED0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

void static CloudMusicVideo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for CloudMusicVideo(0);
  static CloudMusicVideo.Attributes.== infix(_:_:)();
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_159_4();
  sub_2172E3D54();
  if (v73 != 1)
  {
    sub_2172E3D54();
    if (v76[2] != 1)
    {
      memcpy(v68, v76, sizeof(v68));
      v8 = static CloudMusicVideo.Relationships.== infix(_:_:)();
      sub_21726A3FC(v68);
      sub_21726A3FC(v69);
      sub_2171F0738(v72, &qword_27CB243A8, &unk_217777720);
      if (!v8)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_21726A3FC(v69);
LABEL_12:
    v6 = &unk_27CB25D88;
    v7 = &unk_21775F6A0;
LABEL_20:
    sub_2171F0738(v72, v6, v7);
    goto LABEL_21;
  }

  if (v76[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v72, &qword_27CB243A8, &unk_217777720);
LABEL_14:
  OUTLINED_FUNCTION_159_4();
  sub_2172E3D54();
  if (v73 == 1)
  {
    if (v75[2] == 1)
    {
      sub_2171F0738(v72, &qword_27CB24A90, &unk_21775D5B0);
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_2172E3D54();
  if (v75[2] == 1)
  {
    sub_2172844EC(v69);
LABEL_19:
    v6 = &unk_27CB25D90;
    v7 = &unk_21775F6A8;
    goto LABEL_20;
  }

  memcpy(v68, v75, 0x100uLL);
  v9 = static CloudMusicVideo.Associations.== infix(_:_:)();
  sub_2172844EC(v68);
  sub_2172844EC(v69);
  sub_2171F0738(v72, &qword_27CB24A90, &unk_21775D5B0);
  if (v9)
  {
LABEL_23:
    v10 = *(v4 + 32);
    v11 = v1 + v10;
    v13 = *(v1 + v10);
    v12 = *(v1 + v10 + 8);
    v14 = *(v1 + v10 + 16);
    v15 = *(v11 + 24);
    v16 = (v0 + v10);
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    if (v15 == 1)
    {
      v21 = OUTLINED_FUNCTION_155_4();
      sub_21733C3CC(v21, v22, v23, v24);
      if (v19 == 1)
      {
        v25 = OUTLINED_FUNCTION_52_9();
        sub_21733C3CC(v25, v26, v27, 1);
        v28 = OUTLINED_FUNCTION_155_4();
        sub_21733C410(v28, v29, v30, v31);
        goto LABEL_21;
      }

      v43 = OUTLINED_FUNCTION_52_9();
      sub_21733C3CC(v43, v44, v45, v19);
    }

    else
    {
      v72[0] = v13;
      v72[1] = v12;
      v73 = v14;
      v74 = v15;
      if (v19 != 1)
      {
        v69[0] = v17;
        v69[1] = v18;
        v70 = v20 & 1;
        v71 = v19;
        v53 = OUTLINED_FUNCTION_27_15();
        sub_21733C3CC(v53, v54, v55, v56);
        v57 = OUTLINED_FUNCTION_52_9();
        sub_21733C3CC(v57, v58, v59, v19);
        v60 = OUTLINED_FUNCTION_27_15();
        sub_21733C3CC(v60, v61, v62, v63);
        static CloudMusicVideo.Metadata.== infix(_:_:)(v72, v69);
        sub_217221010(v17);

        sub_217221010(v13);

        v64 = OUTLINED_FUNCTION_27_15();
        sub_21733C410(v64, v65, v66, v67);
        goto LABEL_21;
      }

      v32 = OUTLINED_FUNCTION_27_15();
      sub_21733C3CC(v32, v33, v34, v35);
      v36 = OUTLINED_FUNCTION_52_9();
      sub_21733C3CC(v36, v37, v38, 1);
      v39 = OUTLINED_FUNCTION_27_15();
      sub_21733C3CC(v39, v40, v41, v42);
      sub_217221010(v13);
    }

    v46 = OUTLINED_FUNCTION_27_15();
    sub_21733C410(v46, v47, v48, v49);
    v50 = OUTLINED_FUNCTION_52_9();
    sub_21733C410(v50, v51, v52, v19);
  }

LABEL_21:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21735CDB0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21735CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21735CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217362424(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21735CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217362424(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudMusicVideo.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D98, &qword_21775F6B0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_87_2();
  v7 = OUTLINED_FUNCTION_68();
  sub_217362424(v7, v8, v9);
  OUTLINED_FUNCTION_125_4();
  v10 = sub_2177532F8();
  sub_2172E1B18(v10, v11, v12);
  OUTLINED_FUNCTION_48();
  sub_217752F88();
  if (!v1)
  {
    v14 = type metadata accessor for CloudMusicVideo(0);
    type metadata accessor for CloudMusicVideo.Attributes(0);
    OUTLINED_FUNCTION_60_8();
    sub_217361B1C(v15);
    OUTLINED_FUNCTION_42_1();
    v16 = sub_217752F88();
    sub_21733C4A8(v16, v17, v18);
    OUTLINED_FUNCTION_48();
    v19 = sub_217752F38();
    sub_21733C454(v19, v20, v21);
    OUTLINED_FUNCTION_48();
    sub_217752F38();
    v22 = (v0 + *(v14 + 32));
    v27 = *v22;
    v28 = v22[1];
    v29 = v22[2];
    v30 = v22[3];
    v23 = sub_21733C3CC(*v22, v28, v29, v30);
    sub_217362478(v23, v24, v25);
    OUTLINED_FUNCTION_48();
    sub_217752F38();
    v13.n128_f64[0] = sub_21733C410(v27, v28, v29, v30);
  }

  return (*(v5 + 8))(v2, v3, v13);
}

void CloudMusicVideo.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudMusicVideo(0);
  CloudMusicVideo.Attributes.hash(into:)();
  sub_217264574(a1);
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v19, __src, sizeof(v19));
    OUTLINED_FUNCTION_24();
    v4 = OUTLINED_FUNCTION_11_7();
    sub_217264414(v4, v5, v6, v7, v8, v9, v10, v11);
    sub_217264414(a1, v12, v13, v14, v15, v16, v17, v18);
    sub_2172844EC(v19);
  }

  sub_217264490(a1, *(v1 + *(v3 + 32)), *(v1 + *(v3 + 32) + 8), *(v1 + *(v3 + 32) + 16), *(v1 + *(v3 + 32) + 24));
}

uint64_t sub_21735D260(uint64_t (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void CloudMusicVideo.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v50 = v0;
  v2 = v1;
  v44[2] = v3;
  v46 = type metadata accessor for CloudMusicVideo.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_81();
  v45 = v5;
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25DA8, &qword_21775F6B8);
  OUTLINED_FUNCTION_0_0();
  v47 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v44 - v8;
  v10 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v16 = (v13 - v12 + *(v15 + 32));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 1;
  v17 = OUTLINED_FUNCTION_25_0();
  v19 = OUTLINED_FUNCTION_160(v17, v18);
  sub_217362424(v19, v20, v21);
  *&v48 = v9;
  v22 = v50;
  v23 = sub_2177532C8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21733C410(*v16, v16[1], v16[2], v16[3]);
  }

  else
  {
    sub_2172E1C68(v23, v24, v25);
    OUTLINED_FUNCTION_32_11();
    sub_217752EA8();
    v26 = *(&v51[0] + 1);
    *v14 = *&v51[0];
    v14[1] = v26;
    v44[1] = v26;
    v50 = v14;
    LOBYTE(v51[0]) = 1;
    OUTLINED_FUNCTION_60_8();
    sub_217361B1C(v27);
    sub_217752EA8();
    v28 = sub_217362730();
    sub_2173624CC(v28, v29, v30);
    OUTLINED_FUNCTION_32_11();
    v45 = 0;
    sub_217752E58();
    v46 = v2;
    v31 = v50;
    v32 = memcpy(v50 + *(v10 + 24), v51, 0x300uLL);
    sub_217362520(v32, v33, v34);
    OUTLINED_FUNCTION_32_11();
    sub_217752E58();
    v35 = memcpy((v31 + *(v10 + 28)), v51, 0x100uLL);
    sub_217362574(v35, v36, v37);
    OUTLINED_FUNCTION_32_11();
    sub_217752E58();
    (*(v47 + 8))(v48, v49);
    v38 = *v16;
    v39 = v16[1];
    v40 = v16[2];
    v41 = v16[3];
    v48 = v51[1];
    v49 = v51[0];
    sub_21733C410(v38, v39, v40, v41);
    v42 = v48;
    *v16 = v49;
    *(v16 + 1) = v42;
    OUTLINED_FUNCTION_7_18();
    sub_2173625C8();
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_20_16();
    sub_217362620(v31, v43);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

void CloudMusicVideo.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_12();
  v3 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 76));
  if (v3)
  {
    OUTLINED_FUNCTION_109_4();
    while (v2 != v1)
    {
      if (v1 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9();
      if (v0)
      {
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
        }

        OUTLINED_FUNCTION_119_5();
        if (v5)
        {
          OUTLINED_FUNCTION_133_5(v4 > 1);
        }

        OUTLINED_FUNCTION_118_5();
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

void sub_21735D8AC()
{
  OUTLINED_FUNCTION_12();
  v6 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 76));
  if (v6)
  {
    OUTLINED_FUNCTION_109_4();
    v7 = MEMORY[0x277D84F90];
    v8 = 72;
    while (v3 != v2)
    {
      if (v2 >= *(v6 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9();
      if (v0)
      {
        v4 = *(v9 - 80);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
          v7 = v12;
        }

        OUTLINED_FUNCTION_119_5();
        if (v11)
        {
          OUTLINED_FUNCTION_133_5(v10 > 1);
          v7 = v13;
        }

        OUTLINED_FUNCTION_118_5();
      }
    }

    OUTLINED_FUNCTION_51_7();
    do
    {
      if (v5 + v8 == -1)
      {
        break;
      }

      if (++v8 >= *(v7 + 16))
      {
        goto LABEL_27;
      }

      v14 = *(v4 - 1);
      v15 = *v4;
      v16 = v14 == v1 && v15 == v0;
      if (v16 || (OUTLINED_FUNCTION_132_4() & 1) != 0)
      {
        break;
      }

      v17 = v14 == v6 && v15 == 0xEA00000000006461;
    }

    while (!v17 && (OUTLINED_FUNCTION_103_5() & 1) == 0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21735D9D8()
{
  OUTLINED_FUNCTION_12();
  v6 = *(v0 + *(type metadata accessor for CloudSong.Attributes(0) + 120));
  if (v6)
  {
    OUTLINED_FUNCTION_109_4();
    v7 = MEMORY[0x277D84F90];
    v8 = 72;
    while (v3 != v2)
    {
      if (v2 >= *(v6 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9();
      if (v0)
      {
        v4 = *(v9 - 80);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
          v7 = v12;
        }

        OUTLINED_FUNCTION_119_5();
        if (v11)
        {
          OUTLINED_FUNCTION_133_5(v10 > 1);
          v7 = v13;
        }

        OUTLINED_FUNCTION_118_5();
      }
    }

    OUTLINED_FUNCTION_51_7();
    do
    {
      if (v5 + v8 == -1)
      {
        break;
      }

      if (++v8 >= *(v7 + 16))
      {
        goto LABEL_27;
      }

      v14 = *(v4 - 1);
      v15 = *v4;
      v16 = v14 == v1 && v15 == v0;
      if (v16 || (OUTLINED_FUNCTION_132_4() & 1) != 0)
      {
        break;
      }

      v17 = v14 == v6 && v15 == 0xEA00000000006461;
    }

    while (!v17 && (OUTLINED_FUNCTION_103_5() & 1) == 0);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t _s8MusicKit05CloudA5VideoV10AttributesV29hasRedownloadableCatalogAssetSbvg_0()
{
  v1 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 80) + 8);
  sub_21735D8AC();
  return v2 & 1 | (v1 != 0);
}

void sub_21735DB54()
{
  v1 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudSong.Attributes(v1);
  sub_21735D9D8();
  OUTLINED_FUNCTION_154_3();
  sub_21735D9D8();
  OUTLINED_FUNCTION_153_3();
  sub_21735D9D8();
  sub_21735D9D8();
  OUTLINED_FUNCTION_116_6();
  if (v4)
  {
    v3 = 0;
  }

  *(v0 + 4) = v3;
  *v0 = v2;
}

void sub_21735DBF4()
{
  v1 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudMusicVideo.Attributes(v1);
  sub_21735D8AC();
  OUTLINED_FUNCTION_154_3();
  sub_21735D8AC();
  OUTLINED_FUNCTION_153_3();
  sub_21735D8AC();
  sub_21735D8AC();
  OUTLINED_FUNCTION_116_6();
  if (v4)
  {
    v3 = 0;
  }

  *(v0 + 4) = v3;
  *v0 = v2;
}

void MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v415 = v2;
  v416 = v1;
  v409 = v3;
  v410 = v4;
  v6 = v5;
  v408 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31();
  v383 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99();
  v427 = v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13);
  v428 = &v376 - v14;
  v379 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v429 = &v376 - v16;
  v17 = OUTLINED_FUNCTION_206();
  type metadata accessor for PreviewAsset(v17);
  OUTLINED_FUNCTION_0_0();
  v424 = v19;
  v425 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_81();
  v426 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v422 = type metadata accessor for MusicVideoPropertyProvider(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v420 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D8, &qword_21775D7F0);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_31();
  v378 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v376 - v28;
  v30 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_31();
  v376 = v32;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_99();
  v392 = v34;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v35);
  v37 = (&v376 - v36);
  OUTLINED_FUNCTION_7_18();
  sub_2173625C8();
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  v38 = v37 + *(v30 + 20);
  v418 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v39 = v418[20];
  v421 = v38;
  v423 = &v38[v39];
  memcpy(v451, &v38[v39], sizeof(v451));
  sub_2172DA558();
  v414 = v30;
  OUTLINED_FUNCTION_63_7();
  v419 = v40;
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  v417 = v37;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_128_5();
    sub_2172E3D54();
    v45 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v45);
    v46 = v446;
    if (v446)
    {
      sub_217751DE8();
      sub_2171F0738(v445, &qword_27CB242B8, &unk_21777EEA0);
      sub_2172CE710(v46);

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
      OUTLINED_FUNCTION_133(v29, 1, v47);
      if (v41)
      {
        v43 = &qword_27CB256D8;
        v44 = &qword_21775D7F0;
      }

      else
      {
        swift_getKeyPath(byte_21775F6C0);
        sub_21735F984();

        v43 = &qword_27CB24808;
        v44 = &qword_217758D90;
      }

      v42 = v29;
    }

    else
    {
      v43 = &qword_27CB242B0;
      v44 = &unk_21775D630;
      v42 = v445;
    }
  }

  sub_2171F0738(v42, v43, v44);
  memcpy(v444, v450, sizeof(v444));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v49 = v48[10];
  v50 = v6 + v48[9];
  v51 = *(v50 + 8);
  v389 = *v50;
  LODWORD(v388) = *(v50 + 16);
  v52 = *(v6 + v49);
  v413 = *(v6 + v49 + 8);
  v53 = v48[13];
  v54 = *(v6 + v48[12]);
  v384 = v51;
  v385 = v54;
  v55 = *(v6 + v53);
  v56 = v48[14];
  v57 = v48[15];
  v377 = v48;
  v58 = *(v6 + v56);
  v411 = v6;
  v386 = *(v6 + v57);
  v387 = v52;
  sub_2172A497C(v445);
  OUTLINED_FUNCTION_128_5();
  v59 = v420;
  memcpy(v420, v60, 0x221uLL);
  sub_21733B708(v447);
  memcpy(v59 + 552, v447, 0x161uLL);
  *(v59 + 116) = 0;
  v59[936] = 1;
  v61 = v422;
  v62 = v422[9];
  v63 = sub_2177516D8();
  v390 = v62;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v391 = v61[10];
  v67 = &v59[v391];
  v67[4] = 0;
  *v67 = 512;
  v381 = v61[11];
  v59[v381] = 2;
  v68 = &v59[v61[12]];
  *v68 = 0;
  v380 = v68;
  v68[8] = 1;
  v69 = &v59[v61[14]];
  *v69 = xmmword_2177586D0;
  *(v69 + 1) = 0u;
  *(v69 + 2) = 0u;
  *(v69 + 3) = 0u;
  v59[v61[19]] = 2;
  v70 = v61[20];
  v393 = v69;
  v394 = v70;
  v71 = OUTLINED_FUNCTION_47_1(v70);
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v63);
  v382 = v61[21];
  v59[v382] = 2;
  v74 = &v59[v61[23]];
  *v74 = 0;
  *(v74 + 1) = 0;
  v74[16] = 0;
  v75 = &v59[v61[24]];
  *(v75 + 1) = 0;
  v395 = v75;
  v396 = v75 + 8;
  *v75 = 0;
  *(v75 + 2) = 1;
  OUTLINED_FUNCTION_128_5();
  memcpy(v76, v77, 0x221uLL);
  v78 = &v59[v61[27]];
  *(v78 + 14) = 0;
  *(v78 + 5) = 0u;
  *(v78 + 6) = 0u;
  *(v78 + 3) = 0u;
  *(v78 + 4) = 0u;
  *(v78 + 1) = 0u;
  *(v78 + 2) = 0u;
  v397 = v78;
  *v78 = 0u;
  v79 = v61[29];
  v80 = sub_2177517D8();
  v398 = v79;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
  OUTLINED_FUNCTION_111_6(v61[30]);
  v399 = v61[33];
  v84 = OUTLINED_FUNCTION_47_1(v399);
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v63);
  v87 = OUTLINED_FUNCTION_47_1(v61[35]);
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v80);
  v59[v61[36]] = 3;
  v59[v61[37]] = 2;
  v59[v61[39]] = 2;
  v59[v61[40]] = 5;
  v59[v61[41]] = 7;
  OUTLINED_FUNCTION_111_6(v61[42]);
  v90 = OUTLINED_FUNCTION_47_1(v61[43]);
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v80);
  v93 = OUTLINED_FUNCTION_47_1(v61[44]);
  v412 = v80;
  v94 = v80;
  v95 = v384;
  __swift_storeEnumTagSinglePayload(v93, v96, v97, v94);
  OUTLINED_FUNCTION_111_6(v61[45]);
  v59[v61[46]] = 2;
  v59[v61[47]] = 10;
  v98 = &v59[v61[48]];
  *v98 = 0;
  v98[8] = 1;
  v99 = &v59[v61[49]];
  *(v99 + 12) = 0;
  *(v99 + 4) = 0u;
  *(v99 + 5) = 0u;
  *(v99 + 2) = 0u;
  *(v99 + 3) = 0u;
  *v99 = 0u;
  *(v99 + 1) = 0u;
  v400 = v99;
  OUTLINED_FUNCTION_13_6(v61[50], 0);
  v402 = v100;
  OUTLINED_FUNCTION_13_6(v61[51], v101);
  v401 = v102;
  OUTLINED_FUNCTION_13_6(v61[52], v103);
  v403 = v104;
  OUTLINED_FUNCTION_13_6(v61[53], v105);
  v404 = v106;
  OUTLINED_FUNCTION_13_6(v61[54], v107);
  v405 = v108;
  OUTLINED_FUNCTION_13_6(v61[55], v109);
  v406 = v110;
  v111 = &v59[v61[56]];
  v112 = v385;
  *(v111 + 12) = 0;
  *(v111 + 4) = v113;
  *(v111 + 5) = v113;
  *(v111 + 2) = v113;
  *(v111 + 3) = v113;
  *v111 = v113;
  *(v111 + 1) = v113;
  v407 = v111;
  v114 = qword_280BE5E60;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v115 = v386;
  sub_217751DE8();
  if (v114 != -1)
  {
    swift_once();
  }

  v116 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_5_4();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_5_4();

    v116 = v114;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v117 = v422;
  v118 = v420;
  *&v420[v422[60]] = v116;
  v119 = &v118[v117[63]];
  memcpy(&v118[v117[61]], v444, 0x161uLL);
  v120 = &v118[v117[62]];
  *v120 = v389;
  *(v120 + 1) = v95;
  v120[16] = v388;
  v121 = v118;
  v122 = v413;
  *v119 = v387;
  *(v119 + 1) = v122;
  *&v118[v117[64]] = v112;
  *&v118[v117[65]] = v55;
  *&v118[v117[66]] = v58;
  *&v118[v117[67]] = v115;
  OUTLINED_FUNCTION_63_7();
  v123 = v417;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v124 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v127 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v127);
    v128 = v441[2];
    if (v441[2])
    {
      sub_217751DE8();
      v129 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v129, v130, v131);
      v132 = v378;
      sub_2172CE710(v128);

      OUTLINED_FUNCTION_133(v132, 1, v377);
      if (!v41)
      {
        OUTLINED_FUNCTION_7_18();
        sub_2173625C8();
        sub_2171F0738(v132, &qword_27CB24808, &qword_217758D90);
        v375 = v392;
        sub_217362730();
        goto LABEL_25;
      }

      v125 = &qword_27CB256D8;
      v126 = &qword_21775D7F0;
      v124 = v132;
    }

    else
    {
      v124 = OUTLINED_FUNCTION_152();
    }
  }

  sub_2171F0738(v124, v125, v126);
  v375 = v392;
  OUTLINED_FUNCTION_7_18();
  sub_2173625C8();
LABEL_25:
  v133 = v390;
  sub_217362678(v375, v123);
  OUTLINED_FUNCTION_136_4(v442);
  OUTLINED_FUNCTION_136_4(v443);
  OUTLINED_FUNCTION_104(v443);
  if (v41)
  {
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_128_5();
  }

  else
  {
    v134 = OUTLINED_FUNCTION_39_6();
    memcpy(v134, v443, 0x1B8uLL);
    memcpy(v432, v442, 0x1B8uLL);
    OUTLINED_FUNCTION_39_0();
    sub_2172E3D54();
    OUTLINED_FUNCTION_63_7();
    CloudAttribute<A>.convertToArtwork()(v135);
    OUTLINED_FUNCTION_49_7();
    memcpy(v136, v137, 0x1B8uLL);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v138, v139, v140);
    v141 = OUTLINED_FUNCTION_39_6();
    memcpy(v141, v440, 0x221uLL);
    OUTLINED_FUNCTION_39_6();
    nullsub_1();
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_49_7();
  }

  memcpy(v142, v143, 0x221uLL);
  memcpy(v440, v121, 0x221uLL);
  sub_2171F0738(v440, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v121, v441, 0x221uLL);
  v144 = v421;
  v145 = *(v421 + 56);
  v121[114] = *(v421 + 55);
  v121[115] = v145;
  v146 = *(v144 + 58);
  v121[118] = *(v144 + 57);
  v121[119] = v146;
  v147 = v418;
  v148 = v418[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(&v144[v148], v121 + v133);
  sub_21735D8AC();
  sub_21735D8AC();
  sub_21735D8AC();
  sub_21735D8AC();
  v149 = v420;
  OUTLINED_FUNCTION_116_6();
  if (v41)
  {
    v151 = 0;
  }

  v152 = &v149[v391];
  v152[4] = v151;
  *v152 = v150;
  if (*&v144[v147[8] + 8])
  {
    v153 = sub_217752DC8();
    if (v153 == 1)
    {
      v154 = 1;
    }

    else
    {
      v154 = 2;
    }

    if (!v153)
    {
      v154 = 0;
    }

    v149[v381] = v154;
  }

  v155 = v422;
  v156 = &v421[v418[9]];
  if ((v156[8] & 1) == 0)
  {
    v157 = *v156 / 1000.0;
    v158 = v380;
    *v380 = v157;
    *(v158 + 8) = 0;
  }

  v159 = v418;
  v160 = v421;
  *&v149[v155[13]] = *&v421[v418[10]];
  v161 = &v160[v159[11]];
  if (v161[8])
  {
    v162 = v161[7];
    v392 = v161[6];
    v163 = v161[4];
    v164 = v161[5];
    v165 = v161[3];
    v389 = v161[2];
    v390 = v163;
    v166 = v161[1];
    v388 = *v161;
    v413 = v162;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v391 = v164;
    sub_217751DE8();
  }

  else
  {
    v388 = 0;
    v389 = 0;
    v165 = 0;
    v390 = 0;
    v391 = 0;
    v392 = 0;
    v413 = 0;
    v166 = 1;
  }

  v167 = v422;
  v168 = v422[15];
  v169 = v422[16];
  v171 = v422[17];
  v170 = v422[18];
  v172 = v393;
  v173 = *(v393 + 1);
  v439[0] = *v393;
  v439[1] = v173;
  v174 = *(v393 + 3);
  v439[2] = *(v393 + 2);
  v439[3] = v174;
  sub_217751DE8();
  sub_2171F0738(v439, &qword_27CB24B70, &unk_217759460);
  v175 = v389;
  *v172 = v388;
  *(v172 + 1) = v166;
  *(v172 + 2) = v175;
  *(v172 + 3) = v165;
  v176 = v391;
  *(v172 + 4) = v390;
  *(v172 + 5) = v176;
  v177 = v413;
  *(v172 + 6) = v392;
  *(v172 + 7) = v177;
  v178 = v418;
  v180 = v420;
  v179 = v421;
  *&v420[v168] = *&v421[v418[12]];
  *&v180[v169] = *&v179[v178[13]];
  v180[v171] = v179[v178[14]];
  v180[v170] = v179[v178[15]];
  v181 = v178[16];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(&v179[v181], &v180[v394]);
  v182 = v423;
  v183 = *(v423 + 1);
  sub_21735D8AC();
  v184 = &v180[v167[22]];
  v185 = v167[26];
  v180[v167[38]] = v186 & 1 | (v183 != 0);
  v187 = &v179[v178[17]];
  v188 = *(v187 + 1);
  *v184 = *v187;
  *(v184 + 1) = v188;
  v189 = v395;
  sub_217751DE8();
  OUTLINED_FUNCTION_36();
  sub_21733B290(v190, v191, v192);
  *v189 = 131586;
  v193 = v396;
  *v396 = 0;
  v193[1] = 0;
  *&v180[v185] = *&v179[v178[19]];
  v194 = v180;
  memcpy(v437, v182, sizeof(v437));
  memcpy(v438, v397, sizeof(v438));
  memcpy(v397, v182, 0x78uLL);
  OUTLINED_FUNCTION_49_7();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  sub_217751DE8();
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v195, v196, v197);
  v198 = *&v179[v178[21]];
  if (v198)
  {
    v199 = *(v198 + 16);
    v200 = MEMORY[0x277D84F90];
    v201 = v427;
    if (v199)
    {
      v436 = MEMORY[0x277D84F90];
      sub_217276450(0, v199, 0);
      v200 = v436;
      OUTLINED_FUNCTION_46_0();
      v203 = v198 + v202;
      v423 = *(v204 + 72);
      do
      {
        OUTLINED_FUNCTION_103_3();
        sub_2172E3D54();
        OUTLINED_FUNCTION_136_4(v434);
        OUTLINED_FUNCTION_136_4(v435);
        OUTLINED_FUNCTION_104(v435);
        if (v41)
        {
          OUTLINED_FUNCTION_39_6();
          OUTLINED_FUNCTION_128_5();
        }

        else
        {
          v205 = OUTLINED_FUNCTION_39_6();
          memcpy(v205, v435, 0x1B8uLL);
          memcpy(v430, v434, sizeof(v430));
          sub_2172E3D54();
          OUTLINED_FUNCTION_63_7();
          CloudAttribute<A>.convertToArtwork()(v206);
          OUTLINED_FUNCTION_49_7();
          memcpy(v207, v208, 0x1B8uLL);
          sub_2171F0738(&v431, &qword_27CB243F0, &qword_21775D690);
          memcpy(v433, v432, 0x221uLL);
          nullsub_1();
          v209 = OUTLINED_FUNCTION_39_6();
          v210 = v433;
        }

        memcpy(v209, v210, 0x221uLL);
        type metadata accessor for CloudPreviewAsset(0);
        v211 = v426;
        v212 = v429;
        OUTLINED_FUNCTION_156_4();
        OUTLINED_FUNCTION_156_4();
        sub_2171F0738(v212, &qword_27CB24A68, &qword_217759030);
        OUTLINED_FUNCTION_49_7();
        memcpy(v211, v213, 0x221uLL);
        v436 = v200;
        v215 = *(v200 + 16);
        v214 = *(v200 + 24);
        if (v215 >= v214 >> 1)
        {
          sub_217276450(v214 > 1, v215 + 1, 1);
          v200 = v436;
        }

        *(v200 + 16) = v215 + 1;
        OUTLINED_FUNCTION_46_0();
        sub_217362730();
        v203 += v423;
        --v199;
        v201 = v427;
      }

      while (v199);
      v194 = v420;
    }

    v217 = v409;
    v216 = v410;
    v218 = v422;
  }

  else
  {
    v200 = 0;
    v217 = v409;
    v216 = v410;
    v218 = v422;
    v201 = v427;
  }

  *&v194[v218[28]] = v200;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v219 = type metadata accessor for CloudFormatter(0);
  v220 = __swift_project_value_buffer(v219, qword_280BE8918);
  v221 = *&v421[v418[22] + 8];
  OUTLINED_FUNCTION_5_5();
  v222 = v412;
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v412);
  if (v221)
  {
    v226 = *(v220 + *(v219 + 20));
    OUTLINED_FUNCTION_204();
    v227 = sub_217751F18();
    v228 = [v226 dateFromString_];

    if (v228)
    {
      v229 = v383;
      sub_2177517C8();

      v230 = 0;
      v231 = v420;
    }

    else
    {
      v230 = 1;
      v231 = v420;
      v229 = v383;
    }

    OUTLINED_FUNCTION_36();
    sub_2171F0738(v235, v236, v237);
    __swift_storeEnumTagSinglePayload(v229, v230, 1, v412);
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
  }

  else
  {
    sub_2171F0738(v201, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v232, v233, v234, v222);
    v231 = v420;
  }

  v238 = v422;
  v239 = &v231[v422[31]];
  v240 = &v231[v422[32]];
  sub_2172E1F3C();
  v241 = v418;
  v242 = v421;
  v243 = &v421[v418[18]];
  v244 = *(v243 + 1);
  *v239 = *v243;
  v239[1] = v244;
  v245 = &v242[v241[23]];
  v246 = *v245;
  LOBYTE(v245) = v245[8];
  *v240 = v246;
  v240[8] = v245;
  v247 = v241[24];
  sub_217751DE8();
  sub_2172E1ECC(&v242[v247], &v231[v399]);
  if (*&v242[v241[25] + 8])
  {
    sub_217751DE8();
    v248 = sub_217752DC8();

    v231[v382] = v248 == 0;
  }

  v249 = &v231[v238[34]];
  v250 = v417;
  v251 = &v421[v418[26]];
  v252 = *(v251 + 1);
  *v249 = *v251;
  v249[1] = v252;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    sub_217751DE8();
    v253 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    sub_2172E3D54();
    sub_217751DE8();
    v256 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v256);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB24278;
      v238 = &unk_217759070;
      v257 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v257, v258);
      sub_2172E2038(v231, v259, v260);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v261, v262, v263, v264, &type metadata for Album, v265, v266, &protocol witness table for Album, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_72;
    }

    v254 = &qword_27CB24270;
    v255 = &unk_21775D640;
    v253 = v433;
  }

  sub_2171F0738(v253, v254, v255);
  OUTLINED_FUNCTION_5_22();
LABEL_72:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v267 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v270 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v270);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB24288;
      v238 = &qword_217758F80;
      v271 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v271, v272);
      sub_2172E2188(v231, v273, v274);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v275, v276, v277, v278, &type metadata for Artist, v279, v280, &protocol witness table for Artist, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_79;
    }

    v268 = &qword_27CB24280;
    v269 = &unk_21775D680;
    v267 = v433;
  }

  sub_2171F0738(v267, v268, v269);
  OUTLINED_FUNCTION_5_22();
LABEL_79:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v281 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v284 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v284);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB242B8;
      v238 = &unk_21777EEA0;
      v285 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v285, v286);
      sub_2172E1FE4(v231, v287, v288);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v289, v290, v291, v292, &type metadata for MusicVideo, v293, v294, &protocol witness table for MusicVideo, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_86;
    }

    v282 = &qword_27CB242B0;
    v283 = &unk_21775D630;
    v281 = v433;
  }

  sub_2171F0738(v281, v282, v283);
  OUTLINED_FUNCTION_5_22();
LABEL_86:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v295 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v298 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v298);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB243B8;
      v238 = &qword_2177586B0;
      v299 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v299, v300);
      sub_2172E2134(v231, v301, v302);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v303, v304, v305, v306, &type metadata for Genre, v307, v308, &protocol witness table for Genre, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_93;
    }

    v296 = &qword_27CB243B0;
    v297 = &unk_21775D670;
    v295 = v433;
  }

  sub_2171F0738(v295, v296, v297);
  OUTLINED_FUNCTION_5_22();
LABEL_93:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v309 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v312 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v312);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB242B8;
      v238 = &unk_21777EEA0;
      v313 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v313, v314);
      sub_2172E1FE4(v231, v315, v316);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v317, v318, v319, v320, &type metadata for MusicVideo, v321, v322, &protocol witness table for MusicVideo, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_100;
    }

    v310 = &qword_27CB242B0;
    v311 = &unk_21775D630;
    v309 = v433;
  }

  sub_2171F0738(v309, v310, v311);
  OUTLINED_FUNCTION_5_22();
LABEL_100:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v323 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v326 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v326);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB242E8;
      v238 = &unk_21775D6B0;
      v327 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v327, v328);
      sub_2173626DC(v231, v329, v330);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v331, v332, v333, v334, &type metadata for Song, v335, v336, &protocol witness table for Song, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_107;
    }

    v324 = &qword_27CB242E0;
    v325 = &unk_21777EEE0;
    v323 = v433;
  }

  sub_2171F0738(v323, v324, v325);
  OUTLINED_FUNCTION_5_22();
LABEL_107:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v337 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    sub_2172E3D54();
    v340 = OUTLINED_FUNCTION_39_6();
    sub_2172844EC(v340);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB242B8;
      v238 = &unk_21777EEA0;
      v341 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v341, v342);
      sub_2172E1FE4(v231, v343, v344);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v345, v346, v347, v348, &type metadata for MusicVideo, v349, v350, &protocol witness table for MusicVideo, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_114;
    }

    v338 = &qword_27CB242B0;
    v339 = &unk_21775D630;
    v337 = v433;
  }

  sub_2171F0738(v337, v338, v339);
  OUTLINED_FUNCTION_5_22();
LABEL_114:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_63_7();
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  if (v41)
  {
    v351 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v354 = OUTLINED_FUNCTION_39_6();
    sub_2172844EC(v354);
    if (v433[2])
    {
      OUTLINED_FUNCTION_14_17();
      v250 = &qword_27CB242B8;
      v238 = &unk_21777EEA0;
      v355 = OUTLINED_FUNCTION_16_0();
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(v355, v356);
      sub_2172E1FE4(v231, v357, v358);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v359, v360, v361, v362, &type metadata for MusicVideo, v363, v364, &protocol witness table for MusicVideo, v376);
      sub_2171F0738(v435, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_121;
    }

    v352 = &qword_27CB242B0;
    v353 = &unk_21775D630;
    v351 = v433;
  }

  sub_2171F0738(v351, v352, v353);
  OUTLINED_FUNCTION_5_22();
LABEL_121:
  v365 = v414;
  sub_2172E1F3C();
  v366 = v250 + *(v365 + 32);
  v367 = *(v366 + 3);
  if (v367 == 1)
  {
    v367 = 0;
    *&v231[v238[57]] = 0;
    v368 = &v231[v238[58]];
    *v368 = 0;
    v368[8] = 1;
  }

  else
  {
    if (*v366 == 1)
    {
      v369 = 0;
    }

    else
    {
      v369 = sub_217751DE8();
    }

    *&v231[v238[57]] = v369;
    v370 = v366[16];
    v371 = &v231[v238[58]];
    *v371 = *(v366 + 1);
    v371[8] = v370;
    sub_217751DE8();
  }

  *&v231[v238[59]] = v367;
  v448 = v238;
  v449 = &protocol witness table for MusicVideoPropertyProvider;
  v372 = OUTLINED_FUNCTION_39_6();
  __swift_allocate_boxed_opaque_existential_0(v372);
  sub_2173625C8();
  v373 = OUTLINED_FUNCTION_39_6();
  MusicVideo.init(propertyProvider:)(v373, v408);

  (*(*(v216 - 8) + 8))(v217, v216);
  sub_2171F0738(v411, &qword_27CB24808, &qword_217758D90);
  sub_217362620(v231, type metadata accessor for MusicVideoPropertyProvider);
  OUTLINED_FUNCTION_20_16();
  sub_217362620(v417, v374);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21735F984()
{
  v2 = v1;
  OUTLINED_FUNCTION_169();
  v3(0);
  swift_getAtKeyPath();
  if (v13)
  {
    sub_2171F0738(v12, &qword_27CB244D0, &unk_21775D620);
    if (dynamic_cast_existential_1_conditional(*(v0 + 288), *(v0 + 288), &protocol descriptor for MusicDetailedIdentifierKindsProviding))
    {
      v5 = (*(v4 + 8))();
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v7 = sub_217696E10(7u, v5);

    if (v7)
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *v2;
  v8 = v2[1];
  sub_217751DE8();

  *(v0 + 16) = v9;
  *(v0 + 24) = v8;
  *(v0 + 32) = v6;
  v11[0] = 0;
  v11[1] = 0;
  return MusicItemDataSourceCollection.append(_:)(v11);
}

void MusicVideo.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  v422 = v4;
  v423 = v5;
  v421 = v6;
  v8 = v7;
  v424 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v419 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v389 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v388 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v385 - v19;
  v434 = type metadata accessor for CloudPreviewAsset(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_81();
  v430 = v22;
  v23 = OUTLINED_FUNCTION_206();
  v433 = type metadata accessor for PreviewAsset(v23);
  OUTLINED_FUNCTION_0_0();
  v435 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = (v27 - v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  OUTLINED_FUNCTION_0_0();
  v431 = v30;
  v432 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v385 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v35 = OUTLINED_FUNCTION_45_0(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_31();
  v427 = v36;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_99();
  v426 = v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39);
  v425 = &v385 - v40;
  v41 = OUTLINED_FUNCTION_206();
  v420 = type metadata accessor for CloudMusicVideo.Attributes(v41);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_81();
  v428 = v43;
  if (qword_280BE6B38 != -1)
  {
    swift_once();
  }

  v44 = COERCE_DOUBLE(sub_2172A4330());
  v418 = v45;
  if ((v45 & 1) == 0)
  {
    v52 = v44 * 1000.0;
    if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v52 > -9.22337204e18)
    {
      if (v52 < 9.22337204e18)
      {
        v415 = v52;
        goto LABEL_9;
      }

LABEL_165:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_165;
  }

  v415 = 0;
LABEL_9:
  if (qword_280BE6B20 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02240, v45, v46, v47, v48, v49, v50, v51, v385, v386, v387, v388, v389, v390, SWORD2(v390), SBYTE6(v390), HIBYTE(v390), v391, v392, v393, v394, v395, v396, v397, v398);
  v414 = v60;
  if (qword_280BE6B50 != -1)
  {
    swift_once();
  }

  sub_2176CA83C(qword_280C02258, v53, v54, v55, v56, v57, v58, v59, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
  memcpy(v460, v459, 0x221uLL);
  OUTLINED_FUNCTION_104(v460);
  if (v61)
  {
    sub_2172E22C0(v458);
  }

  else
  {
    memcpy(v443, v460, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v438);
    v62 = OUTLINED_FUNCTION_79_7();
    memcpy(v62, v443, 0x221uLL);
    v63 = OUTLINED_FUNCTION_79_7();
    sub_217284084(v63);
    v64 = OUTLINED_FUNCTION_139_5();
    memcpy(v64, v65, 0x1B8uLL);
    nullsub_1();
    memcpy(v458, v443, sizeof(v458));
  }

  if (qword_280BE6DA8 != -1)
  {
    swift_once();
  }

  v416 = v12;
  v417 = v8;
  v66 = sub_2172A4204();
  v412 = v67;
  v413 = v66;
  if (qword_280BE6DA0 != -1)
  {
    swift_once();
  }

  v68 = sub_2172A4204();
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  v71 = 0xE000000000000000;
  if (v69)
  {
    v71 = v69;
  }

  v410 = v71;
  v411 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  swift_allocObject();
  v72 = sub_2172E3DC0();
  sub_2176CA63C(v72, v73, v74, v75, v76, v77, v78, v79, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));

  if (qword_280BE6D00 != -1)
  {
    swift_once();
  }

  sub_2176CA688(qword_280C02330, v80, v81, v82, v83, v84, v85, v86, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
  if (LOBYTE(v452[0]) == 2)
  {
    v408 = 0;
    v409 = 0;
  }

  else
  {
    if (v452[0])
    {
      v87 = 0x746963696C707865;
    }

    else
    {
      v87 = 0x6E61656C63;
    }

    v88 = 0xE500000000000000;
    if (v452[0])
    {
      v88 = 0xE800000000000000;
    }

    v408 = v88;
    v409 = v87;
  }

  if (qword_280BE6C60 != -1)
  {
    swift_once();
  }

  v407 = sub_2172A4668(qword_280C022C8);
  if (qword_280BE6CD8 != -1)
  {
    swift_once();
  }

  sub_2176CA67C(qword_280C02318, v89, v90, v91, v92, v93, v94, v95, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
  v454 = v452[0];
  v455 = v452[1];
  v456 = v452[2];
  v457 = v452[3];
  v96 = *(&v452[0] + 1);
  if (*(&v452[0] + 1) == 1)
  {
    v400 = 0;
    v401 = 0;
    v96 = 0;
    v402 = 0;
    v403 = 0;
    v404 = 0;
    v405 = 0uLL;
    v399 = 0;
  }

  else
  {
    v405 = v457;
    v97 = *(&v456 + 1);
    v403 = v456;
    v98 = *(&v455 + 1);
    v400 = v454;
    v401 = v455;
    sub_217751DE8();
    sub_217751DE8();
    v402 = v98;
    sub_217751DE8();
    v404 = v97;
    sub_217751DE8();
    v399 = sub_217751DC8();
    sub_2171F0738(&v454, &qword_27CB24B70, &unk_217759460);
  }

  v99 = v33;
  v406 = v96;
  if (qword_280BE6DC0 != -1)
  {
    swift_once();
  }

  v398 = sub_2172A464C(qword_280C023A0);
  if (qword_280BE6D98 != -1)
  {
    swift_once();
  }

  v396 = sub_2172A4238(qword_280C02380);
  if (qword_280BE6BF0 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02280, v100, v101, v102, v103, v104, v105, v106, v385, v386, v387, v388, v389, v390, SWORD2(v390), SBYTE6(v390), HIBYTE(v390), v391, v392, v393, v394, v395, v396, v397, v398);
  HIDWORD(v397) = v114;
  if (qword_280BE6B88 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02270, v107, v108, v109, v110, v111, v112, v113, v385, v386, v387, v388, v389, v390, SWORD2(v390), SBYTE6(v390), HIBYTE(v390), v391, v392, v393, v394, v395, v396, v397, v398);
  LODWORD(v397) = v122;
  if (qword_280BE6D08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02338, v115, v116, v117, v118, v119, v120, v121, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6BF8 != -1)
  {
    swift_once();
  }

  v123 = sub_2172A4204();
  v394 = v124;
  v395 = v123;
  if (qword_280BE6BC8 != -1)
  {
    swift_once();
  }

  v125 = sub_2172A4204();
  if (v126)
  {
    v127 = v125;
  }

  else
  {
    v127 = 0;
  }

  v128 = 0xE000000000000000;
  if (v126)
  {
    v128 = v126;
  }

  v392 = v128;
  v393 = v127;
  if (qword_280BE6B70 != -1)
  {
    swift_once();
  }

  v391 = sub_2172A4630(qword_280C02260);
  if (qword_280BE6CA8 != -1)
  {
    swift_once();
  }

  sub_2176CAB9C(qword_280C022F8, v129, v130, v131, v132, v133, v134, v135, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
  if (qword_280BE6CF0 != -1)
  {
    swift_once();
  }

  v136 = sub_2172A4614(qword_280C02328);
  if (v136)
  {
    v137 = *(v136 + 16);
    if (v137)
    {
      v386 = v1;
      v387 = v3;
      v390 = v20;
      v442[0] = MEMORY[0x277D84F90];
      v138 = v136;
      sub_2172766B8(0, v137, 0);
      v139 = v442[0];
      OUTLINED_FUNCTION_46_0();
      v385 = v138;
      v141 = v138 + v140;
      v429 = *(v142 + 72);
      for (i = v137 - 1; ; --i)
      {
        v144 = v99;
        v435 = v141;
        sub_2173625C8();
        memcpy(v443, v28, 0x221uLL);
        v145 = OUTLINED_FUNCTION_79_7();
        memcpy(v145, v28, 0x221uLL);
        v146 = OUTLINED_FUNCTION_79_7();
        v147 = v139;
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v146) == 1)
        {
          sub_2172E22C0(v440);
        }

        else
        {
          memcpy(v436, v452, 0x221uLL);
          memcpy(v437, v443, 0x221uLL);
          sub_217284028(v437, v438);
          Artwork.convertToCloudArtworkAttribute()(v439);
          memcpy(v438, v436, 0x221uLL);
          sub_217284084(v438);
          memcpy(v436, v439, 0x1B8uLL);
          nullsub_1();
          memcpy(v440, v436, sizeof(v440));
        }

        v148 = v28;
        v149 = v430;
        sub_2172E3D54();
        sub_2172E3D54();
        memcpy(v149, v440, 0x1B8uLL);
        OUTLINED_FUNCTION_95_6();
        sub_2173625C8();
        v150 = sub_217751DC8();
        v151 = v149;
        v28 = v148;
        sub_217362620(v151, type metadata accessor for CloudPreviewAsset);
        sub_217362620(v148, type metadata accessor for PreviewAsset);
        *&v144[*(v432 + 28)] = v150;
        v139 = v147;
        v442[0] = v147;
        v152 = *(v147 + 16);
        v153 = *(v139 + 24);
        if (v152 >= v153 >> 1)
        {
          sub_2172766B8((v153 > 1), v152 + 1, 1);
          v139 = v442[0];
        }

        *(v139 + 16) = v152 + 1;
        OUTLINED_FUNCTION_46_0();
        sub_2172E21DC();
        if (!i)
        {
          break;
        }

        v99 = v144;
        v141 = v435 + v429;
      }

      v1 = v386;
      v3 = v387;
      v20 = v390;
    }

    else
    {

      v139 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v139 = 0;
  }

  v154 = v419;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v155 = type metadata accessor for CloudFormatter(0);
  v163 = __swift_project_value_buffer(v155, qword_280BE8918);
  if (qword_280BE6D58 != -1)
  {
    swift_once();
  }

  sub_2176CA65C(qword_280C02360, v156, v157, v158, v159, v160, v161, v162, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v1, 1, v154);
  if (v61)
  {
    OUTLINED_FUNCTION_169_1(v20);
    OUTLINED_FUNCTION_169_1(v1);
    v434 = 0;
    v435 = 0;
  }

  else
  {
    v164 = v1;
    v165 = v389;
    v166 = *(v389 + 32);
    v390 = v20;
    v167 = v388;
    v166(v388, v164, v154);
    v168 = *(v163 + *(v155 + 20));
    v169 = sub_2177517A8();
    v170 = [v168 stringFromDate_];

    v171 = sub_217751F48();
    v434 = v172;
    v435 = v171;

    (*(v165 + 8))(v167, v154);
    sub_2171F0738(v390, &qword_27CB241C0, &qword_217759480);
  }

  if (qword_280BE6D50 != -1)
  {
    swift_once();
  }

  v433 = sub_2172A4218();
  LODWORD(v432) = v173;
  if (qword_280BE6C08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02290, v173, v174, v175, v176, v177, v178, v179, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (v414)
  {
    v180 = 0x77656976657270;
  }

  else
  {
    v180 = 0;
  }

  v181 = 0xE700000000000000;
  if ((v414 & 1) == 0)
  {
    v181 = 0;
  }

  v430 = v181;
  v431 = v180;
  if (qword_280BE6B30 != -1)
  {
    swift_once();
  }

  v182 = sub_2172A4204();
  v183 = v3;
  v185 = v184;
  if (v396)
  {
    v186 = v396;
  }

  else
  {
    v186 = MEMORY[0x277D84F90];
  }

  v187 = v428;
  memcpy(v428, v458, 0x1B8uLL);
  v188 = v412;
  v187[55] = v413;
  v187[56] = v188;
  v189 = v410;
  v187[57] = v411;
  v187[58] = v189;
  v190 = v420;
  sub_2172E21DC();
  v191 = (v187 + v190[8]);
  v192 = v408;
  *v191 = v409;
  v191[1] = v192;
  v193 = v187 + v190[9];
  *v193 = v415;
  v193[8] = v418 & 1;
  *(v187 + v190[10]) = v407;
  v194 = (v187 + v190[11]);
  v195 = v406;
  *v194 = v400;
  v194[1] = v195;
  v196 = v402;
  v194[2] = v401;
  v194[3] = v196;
  v197 = v404;
  v194[4] = v403;
  v194[5] = v197;
  v198 = *(&v405 + 1);
  v194[6] = v405;
  v194[7] = v198;
  v199 = v398;
  v194[8] = v399;
  *(v187 + v190[12]) = v199;
  *(v187 + v190[13]) = v186;
  LOBYTE(v199) = v397;
  *(v187 + v190[14]) = BYTE4(v397);
  *(v187 + v190[15]) = v199;
  sub_2172E21DC();
  v200 = (v187 + v190[17]);
  v201 = v394;
  *v200 = v395;
  v200[1] = v201;
  v202 = (v187 + v190[18]);
  v203 = v392;
  *v202 = v393;
  v202[1] = v203;
  *(v187 + v190[19]) = v391;
  memcpy(v187 + v190[20], v453, 0x78uLL);
  *(v187 + v190[21]) = v139;
  v204 = (v187 + v190[22]);
  v205 = v434;
  *v204 = v435;
  v204[1] = v205;
  v206 = v187 + v190[23];
  *v206 = v433;
  v206[8] = v432 & 1;
  sub_2172E21DC();
  v207 = (v187 + v190[25]);
  v208 = v430;
  *v207 = v431;
  v207[1] = v208;
  v209 = (v187 + v190[26]);
  *v209 = v182;
  v209[1] = v185;
  v452[0] = 0uLL;
  *&v452[1] = 1;
  bzero(&v452[1] + 8, 0x2E8uLL);
  if (qword_280BE6BB0 != -1)
  {
    swift_once();
  }

  sub_2176CA620(qword_280BE6BB8, v210, v211, v212, v213, v214, v215, v216, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  v224 = v183;
  if (qword_280BE6B58 != -1)
  {
    swift_once();
  }

  sub_2176CA604(qword_280BE6B60, v217, v218, v219, v220, v221, v222, v223, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6DB0 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280C02398, v225, v226, v227, v228, v229, v230, v231, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6B98 != -1)
  {
    swift_once();
  }

  sub_2176CA5E8(qword_280BE6BA0, v232, v233, v234, v235, v236, v237, v238, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6B40 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6B48, v239, v240, v241, v242, v243, v244, v245, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6BD8 != -1)
  {
    swift_once();
  }

  sub_2176CA5CC(qword_280BE6BE0, v246, v247, v248, v249, v250, v251, v252, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (v451[11] || v450[11] || v449[11] || v448[11] || v447[11] || v446[11])
  {
    v253 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E2038(v253, v254, v255);
      OUTLINED_FUNCTION_56_6(v437);
      LOBYTE(v436[0]) = v437[0];
      v256 = OUTLINED_FUNCTION_204();
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(v256, v257);
      OUTLINED_FUNCTION_23_17(v258, v436, v258);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_67_7();
    }

    v259 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E2188(v259, v260, v261);
      OUTLINED_FUNCTION_56_6(v436);
      LOBYTE(v440[0]) = v436[0];
      v262 = OUTLINED_FUNCTION_204();
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(v262, v263);
      OUTLINED_FUNCTION_23_17(v264, v440, v264);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25310, &unk_21775D3D0);
      OUTLINED_FUNCTION_93_6();
    }

    v265 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E1FE4(v265, v266, v267);
      OUTLINED_FUNCTION_56_6(v440);
      LOBYTE(v439[0]) = v440[0];
      v268 = OUTLINED_FUNCTION_204();
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(v268, v269);
      OUTLINED_FUNCTION_23_17(v270, v439, v270);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25338, &unk_21775D3E0);
      memset(v436, 0, 128);
    }

    v271 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E2134(v271, v272, v273);
      OUTLINED_FUNCTION_56_6(v439);
      LOBYTE(v442[0]) = v439[0];
      v274 = OUTLINED_FUNCTION_204();
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(v274, v275);
      OUTLINED_FUNCTION_23_17(v276, v442, v276);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25320, &unk_21776E020);
      memset(v440, 0, 128);
    }

    v277 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E1FE4(v277, v278, v279);
      OUTLINED_FUNCTION_56_6(v442);
      LOBYTE(v444[0]) = v442[0];
      v280 = OUTLINED_FUNCTION_204();
      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(v280, v281);
      OUTLINED_FUNCTION_23_17(v282, v444, v282);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25338, &unk_21775D3E0);
      memset(v439, 0, 128);
    }

    v283 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2173626DC(v283, v284, v285);
      OUTLINED_FUNCTION_56_6(v444);
      v441 = v444[0];
      v286 = OUTLINED_FUNCTION_204();
      v288 = __swift_instantiateConcreteTypeFromMangledNameV2(v286, v287);
      OUTLINED_FUNCTION_23_17(v288, &v441, v288);
      v289 = OUTLINED_FUNCTION_79_7();
      sub_2171F0738(v289, v290, v291);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      v292 = OUTLINED_FUNCTION_79_7();
      sub_2171F0738(v292, v293, v294);
      sub_2171F0738(v443, &qword_27CB255A8, &unk_21775D450);
      memset(v442, 0, sizeof(v442));
    }

    v295 = OUTLINED_FUNCTION_139_5();
    memcpy(v295, v296, 0x80uLL);
    memcpy(&v443[16], v437, 0x80uLL);
    memcpy(&v443[32], v436, 0x80uLL);
    memcpy(&v443[48], v440, 0x80uLL);
    memcpy(&v443[64], v439, 0x80uLL);
    memcpy(&v443[80], v442, 0x80uLL);
    v297 = OUTLINED_FUNCTION_79_7();
    memcpy(v297, v443, 0x300uLL);
  }

  v436[0] = 0uLL;
  *&v436[1] = 1;
  bzero(&v436[1] + 8, 0xE8uLL);
  if (qword_280BE6D20 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D28, v298, v299, v300, v301, v302, v303, v304, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (qword_280BE6D68 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D70, v305, v306, v307, v308, v309, v310, v311, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1));
  if (v440[11] | v439[11])
  {
    v312 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E1FE4(v312, v313, v314);
      OUTLINED_FUNCTION_56_6(v437);
      LOBYTE(v442[0]) = v437[0];
      v315 = OUTLINED_FUNCTION_204();
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(v315, v316);
      OUTLINED_FUNCTION_23_17(v317, v442, v317);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v443, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_67_7();
    }

    v318 = sub_2172E3D54();
    if (v443[11])
    {
      sub_2172E1FE4(v318, v319, v320);
      OUTLINED_FUNCTION_56_6(v442);
      LOBYTE(v444[0]) = v442[0];
      v321 = OUTLINED_FUNCTION_204();
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(v321, v322);
      OUTLINED_FUNCTION_23_17(v323, v444, v323);
      sub_2171F0738(v436, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v436, &qword_27CB24A90, &unk_21775D5B0);
      sub_2171F0738(v443, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_93_6();
    }

    v324 = OUTLINED_FUNCTION_139_5();
    memcpy(v324, v325, 0x80uLL);
    memcpy(&v443[16], v437, 0x80uLL);
    memcpy(v436, v443, 0x100uLL);
  }

  if (qword_280BE6C20 != -1)
  {
    swift_once();
  }

  v326 = sub_2172A45F8(qword_280C022A0);
  if (qword_280BE6D90 != -1)
  {
    swift_once();
  }

  v327 = sub_2172A4330();
  v329 = v328;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
  swift_allocObject();
  v330 = sub_2172E3DC4();
  v331 = sub_2172A45DC(v330);

  if (v326 <= 1)
  {
    v332 = 1;
  }

  else
  {
    v332 = v326;
  }

  if (v326 || (v329 & 1) == 0 || (v332 = 1, v331))
  {
    v333 = v329 & 1;
  }

  else
  {
    v332 = 0;
    v327 = 0;
    v333 = 0;
    v331 = 1;
  }

  v335 = *v224;
  v334 = v224[1];
  v336 = v424;
  OUTLINED_FUNCTION_22_14();
  v337 = v416;
  sub_2173625C8();
  OUTLINED_FUNCTION_79_7();
  sub_2172E3D54();
  sub_2172E3D54();
  *v337 = v335;
  v337[1] = v334;
  v338 = (v337 + *(v336 + 32));
  *v338 = v332;
  v338[1] = v327;
  v338[2] = v333;
  v338[3] = v331;
  v339 = v224[5];
  v340 = v224[6];
  __swift_project_boxed_opaque_existential_1(v224 + 2, v339);
  v341 = *(v340 + 24);
  sub_217751DE8();
  v341(v437, v339, v340);
  nullsub_1();
  memcpy(v438, v437, 0x161uLL);
  OUTLINED_FUNCTION_7_18();
  v342 = v417;
  sub_2173625C8();
  OUTLINED_FUNCTION_98_8();
  v343 = OUTLINED_FUNCTION_5_4();
  v344(v343, v339);
  __swift_project_boxed_opaque_existential_1(v443, v443[3]);
  v345 = OUTLINED_FUNCTION_5_4();
  v346(v345);
  __swift_destroy_boxed_opaque_existential_1(v443);
  v434 = v444[1];
  v435 = v444[0];
  LODWORD(v433) = v445;
  OUTLINED_FUNCTION_98_8();
  v347 = OUTLINED_FUNCTION_5_4();
  v348(v347, v339);
  __swift_project_boxed_opaque_existential_1(v443, v443[3]);
  v349 = OUTLINED_FUNCTION_5_4();
  v351 = v350(v349);
  v431 = v352;
  v432 = v351;
  __swift_destroy_boxed_opaque_existential_1(v443);
  v353 = OUTLINED_FUNCTION_139_5();
  memcpy(v353, v354, 0x168uLL);
  memset(&v443[45], 0, 24);
  nullsub_1();
  OUTLINED_FUNCTION_98_8();
  v355 = OUTLINED_FUNCTION_5_4();
  v356(v355, v339);
  OUTLINED_FUNCTION_75_5();
  v357 = OUTLINED_FUNCTION_5_4();
  v359 = v358(v357);
  __swift_destroy_boxed_opaque_existential_1(v442);
  v360 = v224[6];
  __swift_project_boxed_opaque_existential_1(v224 + 2, v224[5]);
  v361 = OUTLINED_FUNCTION_5_4();
  v362(v361, v360);
  OUTLINED_FUNCTION_75_5();
  v363 = OUTLINED_FUNCTION_5_4();
  v365 = v364(v363);
  __swift_destroy_boxed_opaque_existential_1(v442);
  v366 = v224[6];
  __swift_project_boxed_opaque_existential_1(v224 + 2, v224[5]);
  v367 = OUTLINED_FUNCTION_5_4();
  v368(v367, v366);
  OUTLINED_FUNCTION_75_5();
  v369 = OUTLINED_FUNCTION_5_4();
  v371 = v370(v369);
  __swift_destroy_boxed_opaque_existential_1(v442);
  v372 = v224[5];
  v373 = v224[6];
  __swift_project_boxed_opaque_existential_1(v224 + 2, v372);
  (*(v373 + 96))(v442, v372, v373);
  v374 = v442[3];
  v375 = v442[4];
  __swift_project_boxed_opaque_existential_1(v442, v442[3]);
  v376 = (*(*(v375 + 8) + 88))(v374);
  OUTLINED_FUNCTION_20_16();
  sub_217362620(v337, v377);
  sub_2171F0738(v436, &qword_27CB24A90, &unk_21775D5B0);
  v378 = OUTLINED_FUNCTION_79_7();
  sub_2171F0738(v378, &qword_27CB243A8, &unk_217777720);
  OUTLINED_FUNCTION_21_13();
  sub_217362620(v428, v379);
  __swift_destroy_boxed_opaque_existential_1(v442);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v381 = v342 + v380[9];
  v382 = v434;
  *v381 = v435;
  *(v381 + 8) = v382;
  *(v381 + 16) = v433;
  v383 = (v342 + v380[10]);
  v384 = v431;
  *v383 = v432;
  v383[1] = v384;
  memcpy((v342 + v380[11]), v443, 0x180uLL);
  *(v342 + v380[12]) = v359;
  *(v342 + v380[13]) = v365;
  *(v342 + v380[14]) = v371;
  *(v342 + v380[15]) = v376;
  OUTLINED_FUNCTION_169_1(v440);
  sub_2171F0738(v451, &qword_27CB25318, &qword_2177657C0);
  OUTLINED_FUNCTION_169_1(v439);
  sub_2171F0738(v446, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_169_1(v447);
  sub_2171F0738(v448, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_169_1(v449);
  sub_2171F0738(v450, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_13();
}

unint64_t sub_217361AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7000;
  if (!qword_280BE7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7000);
  }

  return result;
}

unint64_t sub_217361B1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361B60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    v5 = v4();
    result = OUTLINED_FUNCTION_157_4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361BD0()
{
  result = qword_27CB25CE8;
  if (!qword_27CB25CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CE8);
  }

  return result;
}

unint64_t sub_217361C54()
{
  result = qword_27CB25CF0;
  if (!qword_27CB25CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A68, &qword_217759030);
    sub_217361B1C(&unk_280BE3D78);
    sub_217361B1C(&unk_280BE3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CF0);
  }

  return result;
}

unint64_t sub_217361D3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE8, &qword_2177595F0);
    v5 = v4();
    result = OUTLINED_FUNCTION_157_4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361DAC()
{
  result = qword_280BE2378;
  if (!qword_280BE2378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2378);
  }

  return result;
}

unint64_t sub_217361E30()
{
  result = qword_280BE4338;
  if (!qword_280BE4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A68, &qword_217759030);
    sub_217361B1C(&unk_280BE3D78);
    sub_217361B1C(&unk_280BE3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4338);
  }

  return result;
}

unint64_t sub_217361F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25D10;
  if (!qword_27CB25D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D10);
  }

  return result;
}

unint64_t sub_217361F8C()
{
  result = qword_27CB25D18;
  if (!qword_27CB25D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217362010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D18);
  }

  return result;
}

unint64_t sub_217362010()
{
  result = qword_27CB25D20;
  if (!qword_27CB25D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24748, &unk_217758CD0);
    sub_217361B1C(&unk_27CB25D28);
    sub_217361B1C(&unk_27CB25D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D20);
  }

  return result;
}

unint64_t sub_2173620F8()
{
  result = qword_27CB25D40;
  if (!qword_27CB25D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_21736217C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D40);
  }

  return result;
}

unint64_t sub_21736217C()
{
  result = qword_27CB25D48;
  if (!qword_27CB25D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24748, &unk_217758CD0);
    sub_217361B1C(&unk_27CB25D28);
    sub_217361B1C(&unk_27CB25D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D48);
  }

  return result;
}

unint64_t sub_21736229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25D58;
  if (!qword_27CB25D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D58);
  }

  return result;
}

unint64_t sub_217362328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25D70;
  if (!qword_27CB25D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D70);
  }

  return result;
}

unint64_t sub_21736237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25D78;
  if (!qword_27CB25D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D78);
  }

  return result;
}

unint64_t sub_2173623D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3DB0;
  if (!qword_280BE3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3DB0);
  }

  return result;
}

unint64_t sub_217362424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6EF8[0];
  if (!qword_280BE6EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE6EF8);
  }

  return result;
}

unint64_t sub_217362478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DA0;
  if (!qword_27CB25DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DA0);
  }

  return result;
}

unint64_t sub_2173624CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6E98;
  if (!qword_280BE6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6E98);
  }

  return result;
}

unint64_t sub_217362520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6EB8;
  if (!qword_280BE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EB8);
  }

  return result;
}

unint64_t sub_217362574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6E88;
  if (!qword_280BE6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6E88);
  }

  return result;
}

uint64_t sub_2173625C8()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_217362620(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_217362678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMusicVideo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2173626DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DB0;
  if (!qword_27CB25DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DB0);
  }

  return result;
}

uint64_t sub_217362730()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

unint64_t sub_2173627D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DC0;
  if (!qword_27CB25DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DC0);
  }

  return result;
}

unint64_t sub_21736282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DC8;
  if (!qword_27CB25DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DC8);
  }

  return result;
}

unint64_t sub_217362884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DD0;
  if (!qword_27CB25DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DD0);
  }

  return result;
}

unint64_t sub_21736290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DE8;
  if (!qword_27CB25DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DE8);
  }

  return result;
}

unint64_t sub_217362964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DF0;
  if (!qword_27CB25DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DF0);
  }

  return result;
}

unint64_t sub_2173629BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25DF8;
  if (!qword_27CB25DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DF8);
  }

  return result;
}

unint64_t sub_217362A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E00;
  if (!qword_27CB25E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E00);
  }

  return result;
}

unint64_t sub_217362A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E18;
  if (!qword_27CB25E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E18);
  }

  return result;
}

unint64_t sub_217362AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E20;
  if (!qword_27CB25E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E20);
  }

  return result;
}

void sub_217362CB0(uint64_t a1)
{
  type metadata accessor for CloudMusicVideo.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE6E90, &type metadata for CloudMusicVideo.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE6EB0, &type metadata for CloudMusicVideo.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE6E80, &type metadata for CloudMusicVideo.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217362DCC(uint64_t a1)
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2DB0(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2172E2E08(319, &qword_280BE75A8, &qword_27CB24BE8);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E08(319, &qword_280BE4308, &qword_27CB25040);
          if (v12 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E08(319, &qword_280BE75B0, &qword_27CB24BE0);
          if (v13 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E08(319, &qword_280BE7548, &qword_27CB24C58);
          if (v14 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
          if (v15 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E08(319, &qword_280BE7558, &qword_27CB24C50);
          if (v16 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
          if (v17 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E08(319, &qword_280BE2370, &qword_27CB25CE0);
          if (v18 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C5AlbumVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t get_enum_tag_for_layout_string_8MusicKit17CloudContributorsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173632A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173632F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t getEnumTagSinglePayload for CloudMusicVideo.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        break;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217363678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E38;
  if (!qword_27CB25E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E38);
  }

  return result;
}

unint64_t sub_2173636D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E40;
  if (!qword_27CB25E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E40);
  }

  return result;
}

unint64_t sub_217363728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E48;
  if (!qword_27CB25E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E48);
  }

  return result;
}

unint64_t sub_217363780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6EE8;
  if (!qword_280BE6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EE8);
  }

  return result;
}

unint64_t sub_2173637D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6EF0;
  if (!qword_280BE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EF0);
  }

  return result;
}

unint64_t sub_217363830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E50;
  if (!qword_27CB25E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E50);
  }

  return result;
}

unint64_t sub_217363888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E58;
  if (!qword_27CB25E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E58);
  }

  return result;
}

unint64_t sub_2173638E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6FF0;
  if (!qword_280BE6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6FF0);
  }

  return result;
}

unint64_t sub_217363938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE6FF8;
  if (!qword_280BE6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6FF8);
  }

  return result;
}

double OUTLINED_FUNCTION_14_17()
{
  *(v0 + 2896) = 0;
  result = 0.0;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  return result;
}

void OUTLINED_FUNCTION_34_9(int a1@<W8>)
{
  v1[6] = a1;
  v1[8] = a1;
  v1[10] = a1;
  v1[12] = a1;
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return sub_2171F0738(v0 + 3120, v1, v2);
}

void OUTLINED_FUNCTION_56_6(_BYTE *a1@<X8>)
{

  sub_217230490(a1);
}

double OUTLINED_FUNCTION_67_7()
{
  result = 0.0;
  v0[96] = 0u;
  v0[97] = 0u;
  v0[98] = 0u;
  v0[99] = 0u;
  v0[100] = 0u;
  v0[101] = 0u;
  v0[102] = 0u;
  v0[103] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 + 96) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_82_5()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1E18(0, v2, 1, v0);
}

double OUTLINED_FUNCTION_93_6()
{
  result = 0.0;
  v0[61] = 0u;
  v0[62] = 0u;
  v0[63] = 0u;
  v0[64] = 0u;
  v0[65] = 0u;
  v0[66] = 0u;
  v0[67] = 0u;
  v0[68] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_111_6(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

void OUTLINED_FUNCTION_118_5()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_132_4()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_133_5(uint64_t a1)
{

  sub_2172B1E18(a1, v2, 1, v1);
}

void *OUTLINED_FUNCTION_136_4(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_156_4()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_157_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_159_4()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_160_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

uint64_t Station.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Station.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

void *Station.editorialNotes.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6800 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_280BE6800);
  }

  v26 = qword_280C02110;

  return sub_2176CA430(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2173640AC()
{
  OUTLINED_FUNCTION_34_10();
  if (!v2)
  {
    swift_once();
  }

  return v0(*v1);
}

uint64_t sub_21736412C()
{
  OUTLINED_FUNCTION_34_10();
  if (!v2)
  {
    swift_once();
  }

  return v0(*v1);
}

uint64_t sub_217364200()
{
  OUTLINED_FUNCTION_16_4();
  if (!v2)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v3 = *v0;

  return v1(v3);
}

void *sub_217364288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4();
  if (!v34)
  {
    swift_once();
  }

  v35 = *v26;

  return sub_2176CABE4(v35, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Station.name.getter()
{
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_280BE6778);
  }

  result = sub_2172A3FDC();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *Station.playParameters.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE67F0 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02108;

  return sub_2176CAC04(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217364458()
{
  OUTLINED_FUNCTION_16_4();
  if (!v2)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v3 = *v0;

  return v1(v3);
}

void *Station._pivotMetadata.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6808 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02118;

  return sub_2176CAC48(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21736454C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_2172A3FDC();
}

void Station._friendsWhoListened.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE67D0 != -1)
  {
    swift_once();
  }

  v30 = qword_280C020F0;

  sub_2176CAC10(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void Station._recommendedEntryTracks.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_27CB23B00 != -1)
  {
    swift_once();
  }

  v30 = qword_27CB8A238;

  sub_2176CAC2C(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static Station.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Station.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = OUTLINED_FUNCTION_25_15();
  return v3(v2);
}

uint64_t Station.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_217364804@<X0>(uint64_t *a1@<X8>)
{
  result = Station.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Station.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2173692A0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2173692A0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2173692A0(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_2173649DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26140, &qword_2177619C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020A0 = result;
  return result;
}

uint64_t sub_217364A50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26180, &qword_217761A08);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02128 = result;
  return result;
}

uint64_t sub_217364AD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26178, &qword_217761A00);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, 0x80000002177ABFE0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02090 = result;
  return result;
}

uint64_t sub_217364B48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26170, &qword_2177619F8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217729830();
  qword_280C020F8 = result;
  return result;
}

uint64_t sub_217364BC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26168, &qword_2177619F0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02110 = result;
  return result;
}

uint64_t sub_217364C34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26160, &qword_2177619E8);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_212();
  result = sub_217729830();
  qword_280C020D0 = result;
  return result;
}

uint64_t sub_217364CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26158, &qword_2177619E0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x4E65646F73697065, 0xED00007265626D75, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02120 = result;
  return result;
}

uint64_t sub_217364D2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26150, &qword_2177619D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6576694C7369, 0xE600000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020A8 = result;
  return result;
}

uint64_t sub_217364D9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26140, &qword_2177619C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02100 = result;
  return result;
}

uint64_t sub_217364E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020B8 = result;
  return result;
}

uint64_t sub_217364E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26138, &qword_2177619C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02108 = result;
  return result;
}

uint64_t sub_217364F00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, 0x80000002177AC0A0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020E8 = result;
  return result;
}

uint64_t sub_217364F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26128, &qword_2177619B0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020C0 = result;
  return result;
}

uint64_t sub_217364FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26188, &unk_217761A10);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D6954726961, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02098 = result;
  return result;
}

uint64_t sub_217365058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26148, &qword_2177619D0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1684957547, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020B0 = result;
  return result;
}

uint64_t sub_2173650C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26118, &qword_2177619A0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C020E0 = result;
  return result;
}

uint64_t sub_217365118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6C646E7542707061, 0xEB00000000444965, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020C8 = result;
  return result;
}

uint64_t sub_217365194()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26128, &qword_2177619B0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, 0x80000002177AC0C0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C020D8 = result;
  return result;
}

uint64_t sub_21736520C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26110, &qword_217761998);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C020F0 = result;
  return result;
}

uint64_t sub_217365268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26120, &qword_2177619A8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02118 = result;
  return result;
}

uint64_t sub_2173652BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26108, &qword_217761990);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_27CB8A238 = result;
  return result;
}

uint64_t static Station.catalogFilterID(for:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_217760778);
  sub_2177529D8();
  v3 = sub_217751F08();

  if (v3)
  {
    *a2 = 25705;
    a2[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21736545C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173654F0()
{
  if (qword_27CB23B08 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t Station.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE168();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Station.description.getter()
{
  sub_217752AA8();

  OUTLINED_FUNCTION_33_11();
  v7 = v1;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_280BE6778);
  }

  v2 = sub_2172A3FDC();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v4);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v5);
  return v7;
}

uint64_t Station.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_111();
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_11();
  v87 = v9;
  v88 = 0xE800000000000000;
  v79 = 0x22203A646920200ALL;
  v80 = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_22_15();

  v79 = 0x656D616E20200A2CLL;
  v80 = 0xEB0000000022203ALL;
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_280BE6778);
  }

  v10 = sub_2172A3FDC();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v10, v12);

  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_22_15();

  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v13, v14, v15, v16, v17, v18, v19, v67, v68, v69, v70, v71, v72, v73[0], v73[1], v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, v80, v81, *(&v81 + 1));
  v20 = v79;
  if (v79 != 2)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v73[0]) = v20 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_22_15();
  }

  if (qword_280BE6750 != -1)
  {
    swift_once();
  }

  sub_2172A40DC();
  if ((v21 & 1) == 0)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_22_15();
  }

  if (qword_280BE6800 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_280BE6800);
  }

  sub_2176CA430(qword_280C02110, v21, v22, v23, v24, v25, v26, v27, v67, v68, v69, v70, v71, v72, v73[0], v73[1], v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, v80);
  v29 = v79;
  v28 = v80;
  v84 = v81;
  v85 = v82;
  v86 = v83;
  if (v80 != 1)
  {
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v77 = 0xD000000000000014;
    v78 = 0x80000002177AB940;
    v73[0] = v29;
    v73[1] = v28;
    v74 = v84;
    v75 = v85;
    v76 = v86;
    v30 = EditorialNotes.debugDescription.getter();
    v32 = v31;
    v33 = sub_2171F0738(&v79, &qword_27CB24B70, &unk_217759460);
    v71 = v30;
    v72 = v32;
    v69 = 10;
    v70 = 0xE100000000000000;
    v67 = 2105354;
    v68 = 0xE300000000000000;
    sub_21733A5C8(v33, v34, v35);
    v36 = sub_217752998();
    v38 = v37;

    MEMORY[0x21CEA23B0](v36, v38, v39);

    OUTLINED_FUNCTION_27_16();
  }

  if (qword_280BE6810 != -1)
  {
    swift_once();
  }

  v40 = sub_2172A4038(qword_280C02120);
  if ((v41 & 1) == 0)
  {
    v48 = v40;
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v73[0] = 0xD000000000000013;
    v73[1] = 0x80000002177AC040;
    v77 = v48;
    v49 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v49);

    OUTLINED_FUNCTION_27_16();
  }

  strcpy(v73, ",\n  isLive: ");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  if (qword_280BE6768 != -1)
  {
    OUTLINED_FUNCTION_17_12(&qword_280BE6768);
  }

  sub_2172A402C(qword_280C020A8, v41, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, v71, v72, SWORD2(v72), SBYTE6(v72), HIBYTE(v72), v73[0], v73[1], v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1));
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v51 = 0xE500000000000000;
    v52 = 0x65736C6166;
  }

  else
  {
    v51 = 0xE400000000000000;
    v52 = 1702195828;
  }

  MEMORY[0x21CEA23B0](v52, v51);

  OUTLINED_FUNCTION_27_16();

  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v53 = sub_2172A3FDC();
  if (v54)
  {
    v61 = v53;
    v62 = v54;
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v73[0] = 0xD00000000000001ALL;
    v73[1] = 0x80000002177AC020;
    MEMORY[0x21CEA23B0](v61, v62, v63);

    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_27_16();
  }

  if (qword_280BE6780 != -1)
  {
    swift_once();
  }

  sub_2176CA410(qword_280C020C0, v54, v55, v56, v57, v58, v59, v60, v67, v68, v69, v70, v71, v72, v73[0], v73[1], v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1));
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (*(v5 + 32))(v8, v1, v3);
    strcpy(v73, ",\n  url: ");
    BYTE3(v73[1]) = 0;
    HIDWORD(v73[1]) = -369098752;
    sub_2173699E0(&qword_27CB254C8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v64 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v64);

    OUTLINED_FUNCTION_36_10();
    MEMORY[0x21CEA23B0](v73[0], v73[1]);

    (*(v5 + 8))(v8, v3, v65);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v87;
}

uint64_t Station._AirTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2177517D8();
  OUTLINED_FUNCTION_43();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Station._AirTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Station._AirTime(0) + 20);
  sub_2177517D8();
  OUTLINED_FUNCTION_43();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static Station._AirTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2177517B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Station._AirTime(0);

  return sub_2177517B8();
}

uint64_t sub_217366018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}