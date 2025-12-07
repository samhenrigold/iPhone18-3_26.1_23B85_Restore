uint64_t sub_2166AD3A4()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_9(uint64_t a1, uint64_t a2)
{

  return sub_2166CE0B8();
}

uint64_t OUTLINED_FUNCTION_74_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_74_13()
{

  return __swift_getEnumTagSinglePayload(v1 + v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_74_18()
{

  return sub_216F704F8();
}

uint64_t OUTLINED_FUNCTION_74_21()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void *sub_2166AD6C4()
{
  v1 = v0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v1[3] = v2;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DC0, &qword_21701ED80);
  swift_allocObject();
  v1[2] = sub_21700CC44();
  v4 = [objc_opt_self() defaultCenter];
  v5 = *MEMORY[0x277D7F8D0];
  v6 = objc_opt_self();

  v7 = [v6 defaultManager];
  [v4 addObserver:v1 selector:sel_onICAgeVerificationChanged name:v5 object:v7];

  v8 = v1[3];
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  v10 = [v6 defaultManager];
  v11 = [v10 ageVerificationState];

  sub_2166AD874(v11);
  os_unfair_lock_unlock(*(v8 + 16));

  return v1;
}

void sub_2166AD874(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;

  sub_2166AD8C4();
}

void sub_2166AD8C4()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if (qword_280E397E0 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E397E8);

  v3 = sub_217007C84();
  v4 = sub_21700EDA4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_216679000, v3, v4, "AgeVerificationState changed %{public}@", v5, 0xCu);
    sub_2166ADB8C(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v9 = *(v1 + 32);
  sub_21700CC34();
}

uint64_t sub_2166ADA2C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E397E8);
  __swift_project_value_buffer(v0, qword_280E397E8);
  return sub_217007C94();
}

uint64_t sub_2166ADAAC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t sub_2166ADB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF880, &unk_21701D6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2166ADC48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  swift_allocObject();
  v0[2] = sub_21700CC44();
  swift_allocObject();
  v0[3] = sub_21700CC44();
  swift_allocObject();
  v0[4] = sub_21700CC44();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = qword_280E38808;

  if (v4 != -1)
  {
    swift_once();
  }

  if (qword_280E3CB20 != -1)
  {
    swift_once();
  }

  v5 = qword_280E3CB28;
  v6 = OUTLINED_FUNCTION_0_172();
  [v6 v7];

  v8 = [v2 defaultCenter];
  v9 = qword_280E38800;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_0_172();
  [v10 v11];

  v12 = [v2 defaultCenter];
  v13 = qword_280E387F8;

  if (v13 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v1 selector:sel_didFinishLaunching name:qword_280E73C60 object:v5];

  return v1;
}

id sub_2166ADEC8()
{
  result = [objc_opt_self() sharedApplication];
  qword_280E3CB28 = result;
  return result;
}

uint64_t sub_2166ADF54(uint64_t a1)
{
  result = sub_21700DFD4();
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

uint64_t _s18HighlightsProviderCMa(uint64_t a1)
{
  result = qword_280E439F0;
  if (!qword_280E439F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE054(uint64_t a1)
{
  if (!qword_280E483B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5618, "ܷ\n");
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E483B0);
    }
  }
}

void sub_2166AE0B8(uint64_t a1)
{
  sub_2166AE054(319);
  if (v1 <= 0x3F)
  {
    sub_21700DFD4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for SwiftMusicRequestPerformer(uint64_t a1)
{
  result = qword_280E47800;
  if (!qword_280E47800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166AE20C(uint64_t a1)
{
  result = sub_21700DFD4();
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

uint64_t type metadata accessor for ExplicitBadgingPresenter(uint64_t a1)
{
  result = qword_280E36A10;
  if (!qword_280E36A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE304(uint64_t a1)
{
  if (!qword_280E48370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9DA8, &qword_21701ED30);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48370);
    }
  }
}

void sub_2166AE368(uint64_t a1)
{
  sub_2166AE304(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for SocialGraphController(uint64_t a1)
{
  result = qword_280E39AB8;
  if (!qword_280E39AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE450(uint64_t a1)
{
  if (!qword_280E483D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1D10, &qword_217040470);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E483D0);
    }
  }
}

void sub_2166AE4B4(uint64_t a1)
{
  sub_2166AE450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_2166AE570()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340, &qword_217054AB8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
  swift_allocObject();
  *(v0 + 2) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0, &qword_21703C4F0);
  swift_allocObject();
  *(v0 + 3) = sub_21700CC44();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v1 + 4) = v8;
  *(v1 + 5) = 25965;
  *(v1 + 6) = 0xE200000000000000;
  v10 = OBJC_IVAR____TtC7MusicUI21SocialGraphController__followStateMap;
  v13[1] = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D10, &qword_217040470);
  sub_217007DA4();
  (*(v4 + 32))(&v1[v10], v7, v2);
  v11 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_followersProfileIDs] = v11;
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs] = v11;
  return v1;
}

uint64_t type metadata accessor for CloudLibraryStatusController(uint64_t a1)
{
  result = qword_280E32550;
  if (!qword_280E32550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE79C(uint64_t a1)
{
  if (!qword_280E2A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8EF0, qword_217024020);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A1C0);
    }
  }
}

void sub_2166AE800(uint64_t a1)
{
  sub_2166AE79C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for UserSocialProfileCoordinator(uint64_t a1)
{
  result = qword_280E31BF0;
  if (!qword_280E31BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE930(uint64_t a1)
{
  sub_2166AEABC(319, qword_280E32B18, type metadata accessor for UserSocialProfileDescriptor);
  if (v1 <= 0x3F)
  {
    sub_2166AEABC(319, &qword_280E2BF20, type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166AEABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166AEB30(uint64_t a1)
{
  type metadata accessor for ContentDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_216690CDC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AppLifeCycleIntentDispatcher(uint64_t a1)
{
  result = qword_280E32880;
  if (!qword_280E32880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AEC70(uint64_t a1)
{
  sub_2166AE79C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for SocialBadgingMapRequestCoordinator(uint64_t a1)
{
  result = qword_280E2EA88;
  if (!qword_280E2EA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AED9C(uint64_t a1)
{
  sub_2166AEE60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2166AEE60(uint64_t a1)
{
  if (!qword_280E40850)
  {
    type metadata accessor for SocialBadgingMap(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E40850);
    }
  }
}

uint64_t type metadata accessor for SocialBadgingMap(uint64_t a1)
{
  result = qword_280E40888;
  if (!qword_280E40888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AEF04(uint64_t a1)
{
  if (!qword_280E2A0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8, &unk_217017160);
    v1 = sub_21700E3F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A0B0);
    }
  }
}

void sub_2166AEF78(uint64_t a1)
{
  sub_2170061E4();
  if (v1 <= 0x3F)
  {
    sub_2166AEF04(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SocialBadgingRequestCoordinator(uint64_t a1)
{
  result = qword_280E2FFB0;
  if (!qword_280E2FFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AF058(uint64_t a1)
{
  sub_2166AF164(319);
  if (v1 <= 0x3F)
  {
    sub_2166AEE60(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166AF164(uint64_t a1)
{
  if (!qword_280E48378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1838, &qword_21703F3B0);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48378);
    }
  }
}

uint64_t type metadata accessor for SourceBundleLoader(uint64_t a1)
{
  result = qword_280E3E748;
  if (!qword_280E3E748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166AF224(uint64_t a1)
{
  result = sub_2166AF2A8();
  if (v2 <= 0x3F)
  {
    result = sub_21700CB44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166AF2A8()
{
  result = qword_280E29D38;
  if (!qword_280E29D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D38);
  }

  return result;
}

unint64_t sub_2166AF2EC()
{
  result = qword_280E29CD0;
  if (!qword_280E29CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29CD0);
  }

  return result;
}

unint64_t sub_2166AF330()
{
  result = qword_280E29CE0;
  if (!qword_280E29CE0)
  {
    sub_21700EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29CE0);
  }

  return result;
}

unint64_t sub_2166AF388()
{
  result = qword_280E29E10;
  if (!qword_280E29E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA810, &unk_217027550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29E10);
  }

  return result;
}

uint64_t sub_2166AF3EC()
{
  OUTLINED_FUNCTION_9_14();
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

unint64_t sub_2166AF488()
{
  result = qword_280E2FFD8;
  if (!qword_280E2FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2FFD8);
  }

  return result;
}

uint64_t sub_2166AF4DC(char a1)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = sub_21700E354();
  sub_2166AF628(0xD000000000000010, 0x800000021707F380, v4);
  v6 = v5;

  if (v6)
  {
    v7 = sub_21700E4D4();

    v8 = [v7 BOOLValue];

    v9 = v8 & 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_2166AF790();

  if (v11 == 2)
  {
    v12 = a1;
  }

  else
  {
    v12 = v11;
  }

  if (v9 != 2)
  {
    v12 = v9;
  }

  return v12 & 1;
}

uint64_t sub_2166AF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_2166AF66C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v3);
    sub_21700DF14();
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

unint64_t sub_2166AF66C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_32();
  sub_21700E614();
  v4 = sub_21700F944();

  return sub_2166AF6DC(a1, a2, v4);
}

unint64_t sub_2166AF6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21700F7D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2166AF790()
{
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_216697CFC(v9);
    v4 = sub_21700E4D4();
    v5 = OUTLINED_FUNCTION_5_9();
    v7 = [v5 v6];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_216697CFC(v9);
    return 2;
  }

  return v7;
}

uint64_t sub_2166AF884()
{
  result = sub_21700E4D4();
  qword_27CAC0FD8 = result;
  return result;
}

uint64_t sub_2166AF8BC(uint64_t a1)
{
  v1 = sub_21700C384();
  if (v2 <= 0x3F)
  {
    v1 = sub_21700C084();
    if (v3 <= 0x3F)
    {
      sub_2166AFAF0(319, &qword_280E2A3C8, MEMORY[0x277CD82C8], " prominentTrackID ");
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_216781FA0(319);
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_2166AFAF0(319, &qword_280E2A358, MEMORY[0x277CD8608], " prominentEntryID ");
      if (v7 > 0x3F)
      {
        return v4;
      }

      sub_216782020(319);
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        v1 = sub_21700BEA4();
        if (v9 <= 0x3F)
        {
          v1 = sub_217007264();
          if (v10 <= 0x3F)
          {
            v1 = sub_217007324();
            if (v11 <= 0x3F)
            {
              v1 = sub_21700C554();
              if (v12 <= 0x3F)
              {
                v1 = sub_21700C924();
                if (v13 <= 0x3F)
                {
                  v1 = sub_21700C994();
                  if (v14 <= 0x3F)
                  {
                    v1 = sub_21700C254();
                    if (v15 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_2166AFAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE0, &qword_217014048);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for MusicStackAuthority(uint64_t a1)
{
  result = qword_280E46CF8;
  if (!qword_280E46CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166AFBC0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A0;

  return sub_2166AFD50(v3, v1);
}

void sub_2166AFC64(uint64_t a1)
{
  sub_2166AFFB4(319);
  if (v1 <= 0x3F)
  {
    sub_217007CA4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2166AFD50(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21700DCB4();
  v2[5] = swift_task_alloc();
  v3 = sub_21700DFD4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166AFE40, 0, 0);
}

uint64_t sub_2166AFE40()
{
  sub_216685F4C(0, &qword_280E29D78, 0x277CEE6F0);
  if (qword_280E2B740 != -1)
  {
    OUTLINED_FUNCTION_20_16(&qword_280E2B740);
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = qword_280E73A78;
  sub_21700D4D4();
  v5 = v4;
  sub_21700E094();
  v6 = sub_21700DF34();
  (*(v1 + 8))(v2, v3);
  sub_21700E094();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2166B0EA0;
  v8 = v0[5];

  return MEMORY[0x2821809B0](v5, v6, v8);
}

void sub_2166AFFB4(uint64_t a1)
{
  if (!qword_280E48400)
  {
    sub_217008674();
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48400);
    }
  }
}

void MusicStackAuthority.init(navigationPathProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_119_1();
  v30 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  sub_217008664();
  (*(v32 + 16))(v36, v39, v30);
  sub_217007DA4();
  (*(v32 + 8))(v39, v30);
  (*(v28 + 32))(v20 + v40, v21, v26);
  *(v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  sub_21700D404();
  type metadata accessor for AbstractBindingBox();
  OUTLINED_FUNCTION_33_19();
  sub_2166B0DF0(v42, v43, MEMORY[0x277D21D60]);
  *(v20 + v41) = sub_21700E384();
  OUTLINED_FUNCTION_53_11();
  sub_2166A0F18(v25, v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType);
  OUTLINED_FUNCTION_26();
}

id sub_2166B0258@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21700DFD4();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v6 = objc_allocWithZone(type metadata accessor for PushNotifications(0));
  result = sub_2166B0518(v5);
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_3()
{
  v2 = *(v0 + 56);
  *(v1 - 368) = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 32), v2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);

  return sub_21700C404();
}

uint64_t OUTLINED_FUNCTION_78_7(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);
  *v4 = a1;
  v4[1] = a2;

  return type metadata accessor for MappedSection.Content(0);
}

uint64_t OUTLINED_FUNCTION_78_9()
{

  return sub_2169BBAE8();
}

uint64_t OUTLINED_FUNCTION_78_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_78_11()
{

  return sub_216697664(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_78_14()
{
}

void OUTLINED_FUNCTION_78_15()
{
  v2 = (v0 + *(v1 + 24));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return sub_216F3DB18();
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return sub_216F5BCEC();
}

uint64_t OUTLINED_FUNCTION_78_19(uint64_t a1)
{
  v6 = v1 + *(a1 + 20);

  return sub_216683A80(v6, v3, v2, v4);
}

id sub_2166B0518(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7MusicUI17PushNotifications_lock;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *&v1[v4] = v5;
  v7 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD140, &unk_217039EC0);
  *&v1[v7] = sub_21700E384();
  v8 = &v1[OBJC_IVAR____TtC7MusicUI17PushNotifications_connection];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v9 = OBJC_IVAR____TtC7MusicUI17PushNotifications_bag;
  v10 = sub_21700DFD4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v1[v9], a1, v10);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_60_2()
{
  v2 = *(v0 + 104);

  return sub_2167ADEA8(v2, type metadata accessor for PushNowPlayingAction);
}

uint64_t OUTLINED_FUNCTION_60_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return sub_2168CBA5C();
}

uint64_t *OUTLINED_FUNCTION_60_12(uint64_t a1)
{
  *(v2 - 344) = a1;
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t sub_2166B0868(uint64_t a1)
{
  result = sub_2166B0B84();
  if (v2 <= 0x3F)
  {
    result = sub_217006224();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2167A902C(v7, a2, a3, 0, v6, a6, &unk_217015A88);
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return sub_216697664(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_61_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700A6B4();
}

uint64_t OUTLINED_FUNCTION_61_14(uint64_t a1)
{

  return sub_21700D4B4();
}

uint64_t OUTLINED_FUNCTION_61_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_216E25750(a1, v3);
}

uint64_t OUTLINED_FUNCTION_61_21@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t OUTLINED_FUNCTION_61_22()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_2166B0B84()
{
  result = qword_280E29AB0;
  if (!qword_280E29AB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280E29AB0);
  }

  return result;
}

uint64_t sub_2166B0BCC@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA800, &qword_217021320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = sub_21700DFD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v11 = sub_21700E4D4();
  sub_21700DFB4();

  sub_21700DFA4();
  (*(v4 + 8))(v6, v3);
  sub_21700DC34();
  v12 = sub_21700DC24();
  result = (*(v8 + 8))(v10, v7);
  v14 = MEMORY[0x277D221C0];
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_2166B0DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicStackAuthority.navigationControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_7_4();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2166B0EA0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)()
{
  OUTLINED_FUNCTION_49();
  v190 = v2;
  v189 = v3;
  OUTLINED_FUNCTION_80_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68, &unk_21701D690);
  v198 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v7 = *(v6 + 96);
  v8 = *(v0 + 104);
  v194 = v9;
  v193 = v10;
  v192 = v7;
  v214 = v7;
  v215 = v8;
  v191 = v8;
  v11 = OUTLINED_FUNCTION_22_11();
  type metadata accessor for SearchPageView(v11, v12);
  type metadata accessor for FlowActionPageView(255);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78, &qword_217013DD8);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80, &unk_217013DE0);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_8();
  v15 = sub_2166B5148(v13, &qword_27CAB6A68, &unk_21701D690, v14);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v210 = WitnessTable;
  v211 = sub_2166B52EC(v17, v18, &unk_217018DE4);
  OUTLINED_FUNCTION_43_5();
  v208 = swift_getWitnessTable();
  v209 = sub_2166B53E0();
  v206 = v15;
  v207 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v204 = v19;
  v205 = sub_2166B5148(v20, &qword_27CAB6A78, &qword_217013DD8, v21);
  v202 = swift_getWitnessTable();
  v203 = sub_2166B58AC();
  v197 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v200 = v197;
  v201 = sub_21669E098(v22, &qword_27CAB6A88, &qword_21706EE30, v23);
  OUTLINED_FUNCTION_0_9();
  v196 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_25_0();
  v24 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_61(v24, v25);
  v26 = OUTLINED_FUNCTION_25_0();
  v27 = OUTLINED_FUNCTION_0_15(v26);
  OUTLINED_FUNCTION_61(v27, v28);
  v29 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v29);
  v30 = OUTLINED_FUNCTION_13_6();
  v31 = OUTLINED_FUNCTION_0_15(v30);
  OUTLINED_FUNCTION_61(v31, v32);
  v33 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v33);
  v34 = OUTLINED_FUNCTION_13_6();
  v35 = OUTLINED_FUNCTION_0_15(v34);
  OUTLINED_FUNCTION_61(v35, v36);
  v37 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v37);
  v38 = OUTLINED_FUNCTION_13_6();
  v39 = OUTLINED_FUNCTION_0_15(v38);
  OUTLINED_FUNCTION_61(v39, v40);
  v41 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v41);
  v42 = OUTLINED_FUNCTION_13_6();
  v43 = OUTLINED_FUNCTION_0_15(v42);
  OUTLINED_FUNCTION_61(v43, v44);
  v45 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v45);
  v46 = OUTLINED_FUNCTION_13_6();
  v47 = OUTLINED_FUNCTION_0_15(v46);
  OUTLINED_FUNCTION_61(v47, v48);
  v49 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v49);
  v50 = OUTLINED_FUNCTION_13_6();
  v51 = OUTLINED_FUNCTION_0_15(v50);
  OUTLINED_FUNCTION_61(v51, v52);
  v53 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v53);
  v54 = OUTLINED_FUNCTION_13_6();
  v55 = OUTLINED_FUNCTION_0_15(v54);
  OUTLINED_FUNCTION_61(v55, v56);
  v57 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v57);
  v58 = OUTLINED_FUNCTION_13_6();
  v59 = OUTLINED_FUNCTION_0_15(v58);
  OUTLINED_FUNCTION_61(v59, v60);
  v61 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v61);
  v62 = OUTLINED_FUNCTION_13_6();
  v63 = OUTLINED_FUNCTION_0_15(v62);
  OUTLINED_FUNCTION_61(v63, v64);
  v65 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v65);
  v66 = OUTLINED_FUNCTION_13_6();
  v67 = OUTLINED_FUNCTION_0_15(v66);
  OUTLINED_FUNCTION_61(v67, v68);
  v69 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v69);
  v70 = OUTLINED_FUNCTION_13_6();
  v71 = OUTLINED_FUNCTION_0_15(v70);
  OUTLINED_FUNCTION_61(v71, v72);
  v73 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v73);
  v74 = OUTLINED_FUNCTION_13_6();
  v75 = OUTLINED_FUNCTION_0_15(v74);
  OUTLINED_FUNCTION_61(v75, v76);
  v77 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v77);
  v78 = OUTLINED_FUNCTION_13_6();
  v79 = OUTLINED_FUNCTION_0_15(v78);
  OUTLINED_FUNCTION_61(v79, v80);
  v81 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v81);
  v82 = OUTLINED_FUNCTION_13_6();
  v83 = OUTLINED_FUNCTION_0_15(v82);
  OUTLINED_FUNCTION_61(v83, v84);
  v85 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v85);
  v86 = OUTLINED_FUNCTION_13_6();
  v87 = OUTLINED_FUNCTION_0_15(v86);
  OUTLINED_FUNCTION_61(v87, v88);
  v89 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v89);
  v90 = OUTLINED_FUNCTION_13_6();
  v91 = OUTLINED_FUNCTION_0_15(v90);
  OUTLINED_FUNCTION_61(v91, v92);
  v93 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v93);
  v94 = OUTLINED_FUNCTION_13_6();
  v95 = OUTLINED_FUNCTION_0_15(v94);
  OUTLINED_FUNCTION_61(v95, v96);
  v97 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v97);
  v98 = OUTLINED_FUNCTION_13_6();
  v99 = OUTLINED_FUNCTION_0_15(v98);
  OUTLINED_FUNCTION_61(v99, v100);
  v101 = OUTLINED_FUNCTION_25_0();
  v102 = OUTLINED_FUNCTION_2_16(v101);
  v104 = OUTLINED_FUNCTION_61(v102, v103);
  v105 = OUTLINED_FUNCTION_25_0();
  v212 = v104;
  v213 = v105;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v187 = sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v186 = v107;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v109);
  v195 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v110);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v111);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v179 = v112;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v113);
  v115 = &v174 - v114;
  OUTLINED_FUNCTION_16();
  v178 = v116;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v118);
  v180 = v119;
  v212 = v119;
  v213 = v105;
  v184 = v105;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v188 = OpaqueTypeMetadata2;
  v212 = OpaqueTypeMetadata2;
  v213 = OpaqueTypeConformance2;
  v177 = OpaqueTypeConformance2;
  v183 = OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_1();
  v182 = v121;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_77();
  v181 = v123 - v124;
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_70(&v174 - v126);
  sub_21700D584();
  sub_2166B6328(v199);
  sub_2166BA08C();
  type metadata accessor for MusicStackAuthority(0);
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v127, v128, &protocol conformance descriptor for MusicStackAuthority);
  sub_21700A654();
  v129 = OUTLINED_FUNCTION_109_0();
  v130(v129);
  v195 = v115;
  sub_2166C3314();
  v131 = OUTLINED_FUNCTION_98();
  v132(v131);
  v133 = [objc_opt_self() sharedApplication];
  v134 = [v133 connectedScenes];

  v135 = sub_216685F4C(0, &qword_280E29B30, 0x277D75940);
  v136 = sub_2166CB5AC();
  v137 = sub_21700EB84();

  v175 = v137;
  v196 = v135;
  if ((v137 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21700F264();
    sub_21700EBC4();
    v137 = v212;
    v138 = v213;
    v136 = v214;
    v139 = v215;
    v140 = v216;
  }

  else
  {
    v138 = v137 + 56;
    OUTLINED_FUNCTION_81();
    v140 = v141 & v142;
    sub_21700DF14();
    v139 = 0;
  }

  v174 = v136;
  v143 = (v136 + 64) >> 6;
  v199 = *MEMORY[0x277D772C8];
  if (v137 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v144 = v139;
  v145 = v140;
  v146 = v139;
  if (v140)
  {
LABEL_9:
    v147 = (v145 - 1) & v145;
    v148 = *(*(v137 + 48) + ((v146 << 9) | (8 * __clz(__rbit64(v145)))));
    if (v148)
    {
      while (1)
      {
        v198 = v139;
        v197 = v140;
        v150 = [v148 session];
        v151 = [v150 role];

        v152 = sub_21700E514();
        v154 = v153;
        if (v152 == sub_21700E514() && v154 == v155)
        {
          break;
        }

        v157 = sub_21700F7D4();

        if (v157)
        {
          goto LABEL_22;
        }

        v139 = v146;
        v140 = v147;
        if ((v137 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v149 = sub_21700F2E4();
        if (!v149)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_102_2(v149);
        OUTLINED_FUNCTION_117_1();
        v148 = v217;
        v146 = v139;
        v147 = v140;
        if (!v217)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    sub_216687978(v137);

    v158 = v176;
    sub_21700A1D4();

    OUTLINED_FUNCTION_67();
    v159 = OUTLINED_FUNCTION_38();
    v160(v159);
    v161 = v185;
    v162 = v188;
    v163 = v177;
    sub_21700A2A4();
    OUTLINED_FUNCTION_67();
    v164(v158, v162);
    v165 = v187;
    sub_2170064A4();
    OUTLINED_FUNCTION_67();
    v166(v161, v165);
    v217 = v162;
    v218 = v163;
    swift_getOpaqueTypeConformance2();
    v167 = OUTLINED_FUNCTION_72_0();
    type metadata accessor for PageHostingController(v167, v183, v168, v169);
    v170 = OUTLINED_FUNCTION_92_1();
    v171(v170);
    v217 = v194;
    v218 = v193;
    OUTLINED_FUNCTION_89_1(&v219);
    sub_2166CBBF4(v163, &v217);
    v172 = OUTLINED_FUNCTION_98();
    v173(v172);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    while (1)
    {
      v146 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        break;
      }

      if (v146 >= v143)
      {
LABEL_20:
        v148 = 0;
        goto LABEL_22;
      }

      v145 = *(v138 + 8 * v146);
      ++v144;
      if (v145)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2166B1CC0()
{
  OUTLINED_FUNCTION_33();
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t OUTLINED_FUNCTION_64_4(uint64_t a1)
{
  v4 = *(a1 + 20);
  v5 = *(v2 - 352);
  v6 = (v5 + v4);
  *v6 = *(v2 - 360);
  v6[1] = v1;
  __swift_storeEnumTagSinglePayload(v5, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_64_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_64_14(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_64_15(uint64_t a1)
{
  *(v1 + 752) = a1;

  return sub_21700E984();
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, uint64_t a2)
{

  return sub_2168282D4(a1, a2, v2, v3);
}

uint64_t sub_2166B1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceBundleLoader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166B1F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceBundleLoader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166B1FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21700E244();
  OUTLINED_FUNCTION_110();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  OUTLINED_FUNCTION_68_1();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v14;

  sub_216ED06BC(0, 0, v13, a6, v16);

  return v14;
}

uint64_t OUTLINED_FUNCTION_77_3(unint64_t *a1)
{

  return sub_2167E68E4(a1, v1, v2);
}

double OUTLINED_FUNCTION_31_8()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, type metadata accessor for RecentSearchLockup);
}

uint64_t *OUTLINED_FUNCTION_77_9(uint64_t a1)
{

  return sub_216F76E04(a1, v3 - 120, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_10()
{

  return sub_21700F5C4();
}

uint64_t OUTLINED_FUNCTION_77_13()
{
  v5 = *(v3 - 88) + v2;
  v6 = *(v3 - 96);

  return sub_216683A80(v5, v6, v0, v1);
}

uint64_t OUTLINED_FUNCTION_77_14()
{

  return sub_216FCEA94();
}

void sub_2166B22FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v1;
  v2 = type metadata accessor for InternalBootstrap(319, &v20);
  if (v3 <= 0x3F)
  {
    *&v20 = v2;
    sub_216C1BE18(319, &qword_280E2A4B0, type metadata accessor for FacetBarState, MEMORY[0x277CE1438]);
    if (v5 <= 0x3F)
    {
      *(&v20 + 1) = v4;
      sub_2166B2754(319);
      if (v7 <= 0x3F)
      {
        *&v21 = v6;
        sub_216C1BDB8(319, &qword_280E2B4E8, MEMORY[0x277CDD6A0]);
        if (v9 <= 0x3F)
        {
          *(&v21 + 1) = v8;
          sub_216C1BD40(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v11 <= 0x3F)
          {
            v22 = v10;
            sub_2166B39CC(319);
            if (v13 <= 0x3F)
            {
              v23 = v12;
              sub_2166B3A60(319);
              if (v15 <= 0x3F)
              {
                v24 = v14;
                sub_216C1BE18(319, &qword_280E2A5D8, type metadata accessor for SearchScopeBar.Manager, MEMORY[0x277CE10B8]);
                if (v17 <= 0x3F)
                {
                  v25 = v16;
                  sub_216C1BE7C(319, &qword_280E2B440, &qword_27CAB8600, &qword_217020AD0, MEMORY[0x277CDF468]);
                  if (v19 <= 0x3F)
                  {
                    v26 = v18;
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_2166B2500(uint64_t a1)
{
  v2 = type metadata accessor for SourceBundleLoader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166B255C()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  v3 = OUTLINED_FUNCTION_19_10();

  return v4(v3);
}

uint64_t sub_2166B2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166B26B0(uint64_t a1)
{
  result = sub_217006714();
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

void sub_2166B2754(uint64_t a1)
{
  if (!qword_280E2B3F8)
  {
    type metadata accessor for SearchPagePresenter(255);
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3F8);
    }
  }
}

uint64_t sub_2166B27E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2166E8800;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_96_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a1 + a4;

  return sub_2166A6F60(v6, v4 - 208, a2, a3);
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return sub_2168CBAB0(v0, type metadata accessor for PlaylistTrackLockup);
}

uint64_t *OUTLINED_FUNCTION_96_4(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

uint64_t OUTLINED_FUNCTION_96_9@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for SearchPagePresenter(uint64_t a1)
{
  result = qword_280E3D238;
  if (!qword_280E3D238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166B2A10(uint64_t a1)
{
  sub_2166B2E20(319, &qword_280E483C8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2166B2E20(319, &qword_280E48468, &type metadata for SearchScope);
    if (v2 <= 0x3F)
    {
      sub_2166B2E20(319, &qword_280E48458, &type metadata for SearchPagePresenter.State);
      if (v3 <= 0x3F)
      {
        sub_2166B2E6C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return sub_2168CBAB0(v0, type metadata accessor for HorizontalLockup);
}

void OUTLINED_FUNCTION_93_8()
{

  JUMPOUT(0x21CEA0160);
}

uint64_t OUTLINED_FUNCTION_93_9()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93_10()
{
}

uint64_t sub_2166B2CC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21700CAC4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2166E8680;

  return v12(v9);
}

void sub_2166B2E20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217007E14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166B2E6C(uint64_t a1)
{
  if (!qword_280E2A850)
  {
    sub_2170098A4();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A850);
    }
  }
}

uint64_t sub_2166B2EC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166B2F08()
{
  OUTLINED_FUNCTION_33();
  v0[12] = v1;
  v0[13] = v2;
  v3 = sub_21700CB94();
  v0[14] = v3;
  OUTLINED_FUNCTION_2(v3);
  v0[15] = v4;
  v0[16] = OUTLINED_FUNCTION_80();
  v5 = sub_21700CA94();
  v0[17] = v5;
  OUTLINED_FUNCTION_2(v5);
  v0[18] = v6;
  v0[19] = OUTLINED_FUNCTION_80();
  v7 = sub_21700CBB4();
  v0[20] = v7;
  OUTLINED_FUNCTION_2(v7);
  v0[21] = v8;
  v0[22] = OUTLINED_FUNCTION_80();
  v9 = sub_217007C24();
  v0[23] = v9;
  OUTLINED_FUNCTION_2(v9);
  v0[24] = v10;
  v0[25] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8, &qword_2170506D0);
  OUTLINED_FUNCTION_36(v11);
  v0[26] = OUTLINED_FUNCTION_80();
  v12 = sub_21700E064();
  v0[27] = v12;
  OUTLINED_FUNCTION_2(v12);
  v0[28] = v13;
  v0[29] = OUTLINED_FUNCTION_80();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v14);
  v0[30] = OUTLINED_FUNCTION_80();
  v15 = sub_217005EF4();
  v0[31] = v15;
  OUTLINED_FUNCTION_2(v15);
  v0[32] = v16;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2166B3198()
{
  v54 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  sub_21700E054();
  v6 = sub_21700E044();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  sub_216A7486C(v6, v8, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_21669987C(v0[30], &qword_27CABA820, &unk_217018CE0);
LABEL_12:
    v26 = swift_task_alloc();
    v0[40] = v26;
    *v26 = v0;
    v26[1] = sub_2166E8470;
    OUTLINED_FUNCTION_120();

    return sub_2166B386C(v27);
  }

  (*(v0[32] + 32))(v0[34], v0[30], v0[31]);
  if ((sub_217005DA4() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  if (byte_280E73A84 != 1)
  {
LABEL_11:
    (*(v0[32] + 8))(v0[34], v0[31]);
    goto LABEL_12;
  }

  if (qword_27CAB5C78 != -1)
  {
    swift_once();
  }

  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[31];
  v12 = v0[32];
  v13 = sub_217007CA4();
  __swift_project_value_buffer(v13, qword_27CAC0FC0);
  (*(v12 + 16))(v9, v10, v11);
  v14 = sub_217007C84();
  v15 = sub_21700EDA4();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v20 = 136315138;
    sub_216A75710(&qword_27CAB82A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_21700F784();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2166A85FC(v21, v23, &v53);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_216679000, v14, v15, "Using local jetpack at %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x21CEA1440](v52, -1, -1);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
  }

  v0[35] = v24;
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122(&qword_280E485B8);
  }

  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[23];
  v33 = v0[24];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0, &unk_21702BAF0);
  v35 = __swift_project_value_buffer(v34, qword_280E73E20);
  (*(v33 + 16))(v31, v35, v32);
  sub_21669E79C(v31, "FetchLocalJetpack", 17, 2, v30);
  v36 = sub_217005F34();
  v0[36] = v36;
  v0[37] = v37;
  sub_21677A404(v36, v37);
  sub_21700CBA4();
  if (qword_280E3E770 != -1)
  {
    OUTLINED_FUNCTION_3_87(&qword_280E3E770);
  }

  v39 = v0[21];
  v38 = v0[22];
  v40 = v0[20];
  v42 = v0[15];
  v41 = v0[16];
  v43 = v0[14];
  v44 = __swift_project_value_buffer(v43, qword_280E73CF0);
  (*(v42 + 16))(v41, v44, v43);
  v45 = sub_21700CBD4();
  v46 = MEMORY[0x277D21A60];
  v0[5] = v45;
  v0[6] = v46;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700CBC4();
  sub_21700CA74();
  v47 = MEMORY[0x277D21A50];
  v0[10] = v40;
  v0[11] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v39 + 16))(boxed_opaque_existential_1, v38, v40);
  v49 = swift_task_alloc();
  v0[38] = v49;
  *v49 = v0;
  OUTLINED_FUNCTION_8_53(v49);
  OUTLINED_FUNCTION_120();

  return MEMORY[0x28217E6F8](v50);
}

void sub_2166B37C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166B3818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2166B386C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FE8, &qword_21703C648);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8, &qword_2170506D0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166B3AF4, 0, 0);
}

void sub_2166B39CC(uint64_t a1)
{
  if (!qword_280E2B3B8)
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3B8);
    }
  }
}

void sub_2166B3A60(uint64_t a1)
{
  if (!qword_280E2B418)
  {
    type metadata accessor for MusicPageMetricsProvider(255);
    sub_2166B2EC4(qword_280E46A08, type metadata accessor for MusicPageMetricsProvider);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B418);
    }
  }
}

uint64_t sub_2166B3AF4()
{
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122(&qword_280E485B8);
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0, &unk_21702BAF0);
  __swift_project_value_buffer(v3, qword_280E73E20);
  v4 = OUTLINED_FUNCTION_13_38();
  v5(v4);
  sub_21669E79C(v1, "FetchRemoteJetpack", 18, 2, v2);
  type metadata accessor for SourceBundleLoader(0);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_21700CAC4();
  *v6 = v0;
  v6[1] = sub_2166E8298;
  v8 = v0[6];
  v9 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v8, &unk_21703C650, 0, v7, v9);
}

uint64_t type metadata accessor for MusicPageMetricsProvider(uint64_t a1)
{
  result = qword_280E469F8;
  if (!qword_280E469F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2166B3C9C@<X0>(char **a2@<X8>)
{
  v3 = sub_21700DFD4();
  MEMORY[0x28223BE20](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  v6 = v9[1];
  v7 = objc_allocWithZone(_s18HighlightsProviderCMa(0));
  result = sub_2166B3E24(v5, v6);
  *a2 = result;
  return result;
}

void sub_2166B3D94(uint64_t a1)
{
  sub_2166B41F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_2166B3E24(char *a1, uint64_t a2)
{
  v33 = a2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98, &unk_217051550);
  OUTLINED_FUNCTION_1();
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5640, &qword_21705BCF0);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__onHighlightsChanged;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5618, "ܷ\n");
  sub_217007DA4();
  v21 = v19;
  v22 = v33;
  (*(v16 + 32))(&v2[v20], v21, v14);
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider____lazy_storage___highlightCenter] = 0;
  v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_hasStarted] = 0;
  v23 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_lock;
  type metadata accessor for UnfairLock();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *&v2[v23] = v24;
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlights] = 0;
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlightByID] = 0;
  *v25 = 0;
  v26 = *(v10 + 16);
  v37 = a1;
  v26(&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_bag], a1, v8);
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_subscriptionStatusCoordinator] = v22;
  v38.receiver = v2;
  v38.super_class = ObjectType;

  v27 = objc_msgSendSuper2(&v38, sel_init);
  v26(v13, &v27[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_bag], v8);
  v28 = v27;
  v29 = sub_21700E4D4();
  sub_21700DF64();

  v30 = *(v10 + 8);
  v30(v13, v8);
  v31 = v35;
  sub_21700DFA4();
  (*(v36 + 8))(v7, v31);
  if (v39 == 1)
  {
    sub_216BE5DB0();

    v30(v37, v8);
  }

  else
  {
    v30(v37, v8);
  }

  return v28;
}

void sub_2166B41F4(uint64_t a1)
{
  if (!qword_280E2A228)
  {
    sub_21700D194();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A228);
    }
  }
}

uint64_t sub_2166B424C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_21700DFD4();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  type metadata accessor for SwiftMusicRequestPerformer(0);
  swift_allocObject();
  *a3 = sub_216C481B4(v7, v8, v9);
  v10 = v8;
}

uint64_t sub_2166B4374(uint64_t a1)
{
  result = sub_217006714();
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

uint64_t sub_2166B443C@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)()@<X3>, uint64_t *a5@<X8>)
{
  a2(0);
  sub_21700D4D4();
  sub_21700E094();
  a3(0);
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

void sub_2166B44E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2170080E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166B453C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for FlowActionPageView(uint64_t a1)
{
  result = qword_280E3F008;
  if (!qword_280E3F008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2166B4640(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DB8, &qword_21701ED78);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DB0, &qword_21701ED70);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC7MusicUI24ExplicitBadgingPresenter__verificationState;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DA8, &qword_21701ED30);
  sub_217007DA4();
  (*(v12 + 32))(v2 + v16, v15, v10);
  *(v2 + OBJC_IVAR____TtC7MusicUI24ExplicitBadgingPresenter_ageVerificationManager) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DC0, &qword_21701ED80);
  sub_2166B4A40();

  sub_21700D1D4();
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  (*(v6 + 8))(v9, v4);
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);

  os_unfair_lock_lock(v18);
  v19 = *(a1 + 32);
  v20 = *(v17 + 16);
  v21 = v19;
  os_unfair_lock_unlock(v20);

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v19;

  sub_217007DF4();

  return v2;
}

void sub_2166B4910(uint64_t a1)
{
  type metadata accessor for FlowAction(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BootstrapState(319);
    if (v2 <= 0x3F)
    {
      sub_2166B49AC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166B49AC(uint64_t a1)
{
  if (!qword_280E2ACD0)
  {
    type metadata accessor for MusicStackAuthority(255);
    sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACD0);
    }
  }
}

unint64_t sub_2166B4A40()
{
  result = qword_280E2A2D0;
  if (!qword_280E2A2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9DC0, &qword_21701ED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2D0);
  }

  return result;
}

uint64_t sub_2166B4AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B4CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166B4D38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2166B4D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2166B4DC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = _0 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = _0 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  *(v1 + 32) = [objc_opt_self() defaultCenter];
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v11 = result;
    *(v2 + 40) = result;
    v12 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationDidBecomeActiveEventSubscription;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
    __swift_storeEnumTagSinglePayload(v2 + v12, 1, 1, v13);
    __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationWillResignActiveEventSubscription, 1, 1, v13);
    *(v2 + OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_appLifeCycleObserver) = a1;
    v14 = v11;

    LOBYTE(v12) = sub_2166B5258();

    *(v2 + 24) = (v12 & 1) == 0;
    *(v2 + 25) = [*(v2 + 40) isCloudLibraryEnabled];
    [*(v2 + 32) addObserver:v2 selector:sel_cloudLibraryIsLoadedDidChange_ name:*MEMORY[0x277CD5678] object:0];
    [*(v2 + 32) addObserver:v2 selector:sel_cloudLibraryEnabledDidChange_ name:*MEMORY[0x277CD5670] object:0];
    sub_2166B5334(v2, v15, v16, v17, v18, v19, v20, v21, _0[0], _0[1], _0[2], _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11], _0[12], _0[13], _0[14], _0[15]);
    OUTLINED_FUNCTION_1_130();
    v22 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationDidBecomeActiveEventSubscription;
    OUTLINED_FUNCTION_0_151();
    sub_2166B5938(v9, v2 + v22);
    swift_endAccess();
    sub_2166B5A34(v2);
    OUTLINED_FUNCTION_1_130();
    v23 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationWillResignActiveEventSubscription;
    OUTLINED_FUNCTION_0_151();
    sub_2166B5938(v9, v2 + v23);
    swift_endAccess();
    v24 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = a1;
    v25[5] = v2;

    sub_21677BBA0();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166B5100()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2166B5148(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2166B51C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    OUTLINED_FUNCTION_6_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2166B5258()
{
  if ([v0 isUpdateInProgress])
  {
    return 1;
  }

  else
  {
    return [v0 isInitialImport];
  }
}

unint64_t sub_2166B5298()
{
  result = qword_280E35B48[0];
  if (!qword_280E35B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35B48);
  }

  return result;
}

uint64_t sub_2166B52EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166B5370()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166B53A4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

unint64_t sub_2166B53E0()
{
  result = qword_280E2ABA8;
  if (!qword_280E2ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70, &qword_217013DD0);
    sub_2166B52EC(qword_280E3F018, type metadata accessor for FlowActionPageView, &unk_217018DE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABA8);
  }

  return result;
}

void sub_2166B5494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1172();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_143();
  v28 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v30 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00, &qword_21701BD60, MEMORY[0x277D21A98]);
  OUTLINED_FUNCTION_25_7();
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  OUTLINED_FUNCTION_1171();
}

double OUTLINED_FUNCTION_52_4@<D0>(char a1@<W8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_52_5(uint64_t a1)
{
  result = *(v1 + 1360);
  v4 = *(v1 + 1376);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(v1 + 1392);
  *(v1 + 1272) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_8(uint64_t a1)
{
  v4 = *(v1 - 304);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_52_11(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_52_12(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_52_18()
{

  return sub_216F2EB2C();
}

uint64_t OUTLINED_FUNCTION_52_19()
{

  return sub_216683A80(v1 + v4, v3, v0, v2);
}

uint64_t OUTLINED_FUNCTION_52_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_216FD9C9C(v4, v3);
}

uint64_t OUTLINED_FUNCTION_398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_216D04E68();
}

unint64_t sub_2166B57F0()
{
  result = qword_280E2A938;
  if (!qword_280E2A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AA0, &unk_217013E00);
    sub_2166B59A8();
    sub_2166B52EC(qword_280E3F018, type metadata accessor for FlowActionPageView, &unk_217018DE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A938);
  }

  return result;
}

unint64_t sub_2166B58AC()
{
  result = qword_280E2A910;
  if (!qword_280E2A910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80, &unk_217013DE0);
    sub_2166B57F0();
    sub_2166B53E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A910);
  }

  return result;
}

uint64_t sub_2166B5938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2166B59A8()
{
  result = qword_280E2A9E8;
  if (!qword_280E2A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AA8, &unk_21701D660);
    sub_2166B53E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9E8);
  }

  return result;
}

uint64_t sub_2166B5A34(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2166EFB0C;
  *(v2 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  sub_2166B5BA8();
  sub_21700D1D4();
  sub_21700D1F4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_2166B5B38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166B5B70()
{

  return swift_deallocObject();
}

unint64_t sub_2166B5BA8()
{
  result = qword_280E2A2C8;
  if (!qword_280E2A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8F00, &qword_21701BD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_216782700(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_2166997CC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 120) = v2;
  *(v3 - 112) = a2;
  *(v3 - 136) = a1;

  return type metadata accessor for MusicUIPPT.Test(0);
}

uint64_t OUTLINED_FUNCTION_44_10()
{

  return sub_21700E734();
}

uint64_t OUTLINED_FUNCTION_44_13(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, v2);
}

_OWORD *OUTLINED_FUNCTION_44_15()
{

  return sub_2166EF9C4((v0 - 248), (v0 - 280));
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return sub_21678C1C4();
}

uint64_t OUTLINED_FUNCTION_44_18()
{
  *(v0 + 144) = *(*(v0 + 32) + 40);
}

_OWORD *OUTLINED_FUNCTION_44_19(uint64_t a1, uint64_t a2)
{

  return sub_2166EF9D4();
}

uint64_t *OUTLINED_FUNCTION_44_20@<X0>(void *a1@<X8>)
{
  *(v1 + 80) = *a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 56));
}

uint64_t OUTLINED_FUNCTION_44_22()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_217007BC4();
}

uint64_t OUTLINED_FUNCTION_44_24()
{
  result = *(v1 - 200);
  *(v1 - 296) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_30()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_34()
{

  return sub_216683A80(v0 + v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44_35()
{

  return sub_217007884();
}

uint64_t OUTLINED_FUNCTION_50_11()
{

  return sub_2167B7D58(v0 - 168, v0 - 208);
}

void OUTLINED_FUNCTION_50_12()
{

  JUMPOUT(0x21CE9F490);
}

uint64_t OUTLINED_FUNCTION_50_14(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

_OWORD *OUTLINED_FUNCTION_50_17(uint64_t a1, uint64_t a2)
{

  return sub_2166EF9D4();
}

uint64_t OUTLINED_FUNCTION_50_18(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_216B914F8(v4, a1 + v3, v1);
}

uint64_t OUTLINED_FUNCTION_50_20(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_50_21()
{
}

uint64_t OUTLINED_FUNCTION_50_22(uint64_t a1)
{

  return sub_21700AB94();
}

void OUTLINED_FUNCTION_50_23()
{
}

uint64_t OUTLINED_FUNCTION_50_24(uint64_t a1)
{

  return sub_21700E424();
}

void OUTLINED_FUNCTION_50_26(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 256;
}

uint64_t sub_2166B6248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2166DFAC0;

  return sub_2166B6308(a1, v4, v5, v7, v6);
}

uint64_t sub_2166B6328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  v7 = v1[5];

  sub_2166B6484(v8);

  (*(v4 + 16))(v6, v7 + *(*v7 + 200), v3);
  sub_2166B7AE4(v6, v3, *(v2 + 104));
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2166B6484(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_2166B664C(sub_216B803C4, v3);
}

uint64_t sub_2166B6524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166B655C()
{

  return swift_deallocObject();
}

uint64_t sub_2166B659C()
{
  sub_21700EA34();
  *(v0 + 24) = sub_21700EA24();
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166E7360, v2, v1);
}

uint64_t sub_2166B664C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21700D404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction(0);
  sub_21700D414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4158, &qword_21704BC78);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v11);
  sub_2166B71A0();
  *(v3 + v11) = v13;
  swift_endAccess();
  return (*(v7 + 8))(v9, v6);
}

void *sub_2166B67B4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_21700DFD4();
  MEMORY[0x28223BE20](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 80);
  type metadata accessor for SwiftMusicRequestPerformer(0);
  sub_21700D4D4();

  sub_21700E094();
  v9 = v11[1];
  sub_21700E094();
  type metadata accessor for JSIntentDispatcher();
  swift_allocObject();
  result = sub_2166B6978(v8, v9, v7);
  *a3 = result;
  return result;
}

uint64_t sub_2166B68D8(uint64_t a1)
{
  result = sub_216692380(&qword_280E45BA8, type metadata accessor for FlowAction, &unk_21706E4C8);
  *(a1 + 8) = result;
  return result;
}

void *sub_2166B6978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB18, &qword_217025228);
  v3[5] = sub_21700E244();
  v3[2] = a1;
  v3[3] = a2;
  v8 = sub_2166B6A28();
  v9 = sub_21700DFD4();
  (*(*(v9 - 8) + 8))(a3, v9);
  *(v4 + 32) = v8 & 1;
  return v4;
}

uint64_t sub_2166B6A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98, &unk_217051550);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-v4];
  v6 = sub_21700E4D4();
  sub_21700DF64();

  sub_21700DFA4();
  (*(v2 + 8))(v5, v0);
  return v8[15];
}

void sub_2166B6BA0(uint64_t *a2@<X8>)
{
  v3 = objc_allocWithZone(type metadata accessor for UserSocialProfileCoordinator(0));

  sub_2166B6BFC();
  *a2 = v4;
}

void sub_2166B6BFC()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620, &unk_21705D770);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_0();
  v11 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingUserAttributes;
  v12 = MEMORY[0x277D84F90];
  *&v2[v11] = sub_21700E384();
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData] = xmmword_217029BA0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs] = v12;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings] = 0;
  v13 = &v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingStatePromises] = v12;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state] = 0;
  v14 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserProfileDidChange;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0, &qword_21705CA40);
  OUTLINED_FUNCTION_91_1(v15);
  *&v2[v14] = sub_21700CC44();
  v16 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserProfileCoordinatorFetchStateChange;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC39C8, &unk_21705D780);
  OUTLINED_FUNCTION_91_1(v17);
  *&v2[v16] = sub_21700CC44();
  v18 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserOnboardedStatusHasChanged;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
  OUTLINED_FUNCTION_91_1(v19);
  *&v2[v18] = sub_21700CC44();
  v20 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserSharedPlaylistsDidChange;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
  OUTLINED_FUNCTION_91_1(v21);
  *&v2[v20] = sub_21700CC44();
  v22 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserDidHideListeningHistoryContent;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  OUTLINED_FUNCTION_91_1(v23);
  *&v2[v22] = sub_21700CC44();
  v24 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onListeningToShelfVisibilityDidChange;
  swift_allocObject();
  *&v2[v24] = sub_21700CC44();
  v25 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onSocialOnboardingSharedPlaylistsHidden;
  swift_allocObject();
  *&v2[v25] = sub_21700CC44();
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile] = 0;
  type metadata accessor for UserSocialProfileDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = &v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_cachedFallbackFullname];
  *v30 = 0;
  v30[1] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isCollaborationAllowed] = 0;
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isContactCheckAllowed] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isDiscoverableByContact] = 0;
  v35 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *(v36 + 16) = v37;
  *v37 = 0;
  *&v2[v35] = v36;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_accountDidChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph] = v6;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph] = v4;
  v47.receiver = v2;
  v47.super_class = ObjectType;

  v38 = objc_msgSendSuper2(&v47, sel_init);
  sub_2166B8854(0);

  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  OUTLINED_FUNCTION_38();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8, &unk_2170206B0);
  sub_2166D9530(&qword_280E2A310, &qword_27CABA4C8, &unk_2170206B0, MEMORY[0x277D21A98]);
  sub_21700D1D4();
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  (*(v9 + 8))(v1, v45);
  v39 = *MEMORY[0x277D7F8C8];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 defaultIdentityStore];
  OUTLINED_FUNCTION_143();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_8_97();
  v44 = swift_allocObject();

  sub_2166B9AD0(v41, v42, 1, 1, sub_216CB5EA4, v43);
  OUTLINED_FUNCTION_10_87();

  *&v38[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_accountDidChangeObserver] = v44;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166B716C()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void sub_2166B71A0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_21700D404();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166B75C8();
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD250, &qword_217029F68);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166B75C8();
    OUTLINED_FUNCTION_43_17();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_22();
    v6(v5);
    v7 = OUTLINED_FUNCTION_25_21();
    sub_2166B7A4C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  *(v2 - 376) = v0;
  *(v2 - 392) = v1;

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_72_13()
{

  return sub_216A4B754();
}

uint64_t OUTLINED_FUNCTION_72_14()
{
}

uint64_t OUTLINED_FUNCTION_72_15()
{
  sub_2166EF9C4((v0 - 256), (v0 - 320));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_72_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_216F535D8();
}

uint64_t OUTLINED_FUNCTION_72_21(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_2166B7504@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  sub_21700E094();
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  type metadata accessor for AppLifeCycleIntentDispatcher(0);
  swift_allocObject();
  result = sub_2166B7678(v5, v4);
  *a2 = result;
  return result;
}

unint64_t sub_2166B75C8()
{
  OUTLINED_FUNCTION_17_70();
  sub_21700D404();
  v0 = sub_21667E974(&qword_280E2A200, MEMORY[0x277D21D58], MEMORY[0x277D21D60]);
  v1 = OUTLINED_FUNCTION_37_43(v0);
  return OUTLINED_FUNCTION_36_40(v1, v1, MEMORY[0x277D21D58], &qword_280E2A1F8, v2, MEMORY[0x277D21D68]);
}

uint64_t sub_2166B7678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30[-1] - v7;
  v9 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  OUTLINED_FUNCTION_13_1(v3 + v9);
  OUTLINED_FUNCTION_13_1(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription);
  OUTLINED_FUNCTION_13_1(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription);
  v10 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *(v3 + v10) = v11;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_intentDispatcher) = a1;
  *v12 = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_observer) = a2;
  OUTLINED_FUNCTION_143();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v13);
  OUTLINED_FUNCTION_65_0();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_216A75C7C;
  *(v14 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  sub_2166B5BA8();

  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_0_127();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  OUTLINED_FUNCTION_3_88();
  v15 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v15);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_65_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2166F0104;
  *(v17 + 24) = v15;
  OUTLINED_FUNCTION_4_72();
  v18 = OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_16_37(v18, v19, v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  OUTLINED_FUNCTION_3_88();
  v21 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v22);

  OUTLINED_FUNCTION_65_0();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_216A75CB4;
  *(v23 + 24) = v21;
  OUTLINED_FUNCTION_4_72();
  v24 = OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_16_37(v24, v25, v26);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);

  OUTLINED_FUNCTION_3_88();
  v27 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v27);
  swift_endAccess();
  return v3;
}

uint64_t sub_2166B79DC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166B7A10()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

void sub_2166B7A4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10(0);
  OUTLINED_FUNCTION_34();
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_52_10();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_2166B7AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for WrappedAppPageDestination(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = v11;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable();
  MusicStackAuthority.destination<A>(_:binding:)();
}

uint64_t sub_2166B7CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2166B7D88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F8, &qword_217050F10);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v24 - v5;
  v29 = sub_21700DC84();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = sub_21700DFD4();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700DBB4();
  sub_21700D4D4();
  sub_21700E094();
  v25 = v15;
  v26 = MEMORY[0x21CE9E9C0](v14, 0xD000000000000011, 0x8000000217082740);
  sub_21700E094();
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v38 = sub_216685F4C(0, &qword_280E29D68, 0x277CB8F48);
  v39 = MEMORY[0x277D225B8];
  v37[0] = v16;
  v17 = [objc_opt_self() mainBundle];
  sub_21700DC74();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  v38 = &type metadata for AccountMetricsFieldsProvider;
  v39 = sub_2166B9CF8();
  if (qword_280E2A188 != -1)
  {
    swift_once();
  }

  v18 = sub_21700DEA4();
  __swift_project_value_buffer(v18, qword_280E73A50);
  sub_21700DC64();
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v38 = &unk_28293C2E8;
  v19 = sub_2166B9F04();
  v37[0] = a1;
  v20 = *(v27 + 80);
  v39 = v19;
  v40 = v20;
  v27 = sub_2166BA038();
  v21 = v29;
  (*(v6 + 16))(v8, v11, v29);
  v35 = &unk_28293C388;
  v36 = sub_2166BE144();
  v34 = swift_allocObject();
  sub_2166BE198(v37, v34 + 16);
  v32 = v25;
  v33 = MEMORY[0x277D221A8];
  v31 = v26;

  v22 = v28;
  sub_21700E094();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v12);
  sub_21700D544();

  sub_2166BE3C4(v37);
  return (*(v6 + 8))(v11, v21);
}

uint64_t sub_2166B81D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_42_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(v5 - 256) = a4;
  *(v6 - 560) = a3;
  *(v6 - 416) = a2;
  *(v6 - 344) = a1;
  *(v6 - 352) = a5;
  *(v6 - 360) = *(v6 + 32);

  return sub_2170075A4();
}

uint64_t *OUTLINED_FUNCTION_42_10@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v1;
  v2[6] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 2);
}

uint64_t OUTLINED_FUNCTION_42_14()
{
  sub_216684F5C(*(v1 + *(v0 + 100)), *(v1 + *(v0 + 100) + 8));
  sub_2166B8588(*(v1 + *(v0 + 104)), *(v1 + *(v0 + 104) + 8));

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_16()
{
  v3 = *(v1 - 488);

  return sub_2167DE934(v0, v3);
}

uint64_t OUTLINED_FUNCTION_42_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_19(char a1)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_42_23(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_42_27@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_216B9143C(v3, &a2 - a1, v2);
}

uint64_t OUTLINED_FUNCTION_42_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_29(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  a13 = a1;
  a14 = a2;

  return type metadata accessor for SearchPageView(0, &a13);
}

uint64_t OUTLINED_FUNCTION_42_32()
{

  return sub_21700F8F4();
}

uint64_t OUTLINED_FUNCTION_42_33(uint64_t a1)
{

  return sub_216697664(a1, v1, v2);
}

void OUTLINED_FUNCTION_42_34()
{
}

uint64_t OUTLINED_FUNCTION_42_38(uint64_t a1, uint64_t a2)
{

  return sub_217007AB4();
}

uint64_t sub_2166B8590(uint64_t a1)
{
  result = sub_21700C1E4();
  if (v2 <= 0x3F)
  {
    result = sub_21700C084();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166B8640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 - 1);
      return;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v12 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_2166B871C(uint64_t a1)
{
  result = sub_21700C924();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166B87B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C444();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166B8854(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = v1[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538, &qword_21705D728);
  if (v5)
  {
    LOBYTE(v65) = 4;
    return sub_21700E1F4();
  }

  else
  {
    v62 = a1;
    v6 = sub_21700E244();
    v7 = *&v1[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v8 = *(v7 + 16);
    v9 = v2;
    os_unfair_lock_lock(v8);
    v63 = v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
    os_unfair_lock_unlock(*(v7 + 16));

    type metadata accessor for SubscriptionStatusCoordinator();
    v10 = *&v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph];
    sub_21700D4D4();
    v61 = v10;
    sub_21700E094();
    sub_2166C0578(&v65);
    v11 = *(&v65 + 1);

    if (v67)
    {
      OUTLINED_FUNCTION_23_46();
      sub_2166C0DB4(v66);
      OUTLINED_FUNCTION_34_33();
      v13 = v13 && v12 == a1;
      if (v13)
      {

        v17 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_40_28(v14, v15, v16);
        OUTLINED_FUNCTION_41_2();

        v17 = v10 & 1;
      }

      v18 = v11 == 0;
      sub_216697664(&v65, &qword_27CAC5980, &qword_217035260);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    sub_2166B90EC();
    v20 = v19;
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v21 = sub_217007CA4();
    __swift_project_value_buffer(v21, qword_280E73BC0);
    v22 = sub_217007C84();
    v23 = sub_21700EDA4();
    v24 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v24, v25))
    {
      v59 = v18;
      v26 = swift_slowAlloc();
      v60 = v7;
      v27 = ObjectType;
      v28 = v6;
      v29 = swift_slowAlloc();
      v64[0] = v29;
      *v26 = 67240962;
      *(v26 + 4) = v62 & 1;
      *(v26 + 8) = 1026;
      *(v26 + 10) = v17;
      *(v26 + 14) = 1026;
      *(v26 + 16) = v20 & 1;
      *(v26 + 20) = 2082;
      v30 = sub_2166C1BB8(v63);
      v17 = v31;
      v32 = sub_2166A85FC(v30, v31, v64);

      *(v26 + 22) = v32;
      _os_log_impl(&dword_216679000, v22, v23, "Fetching user social profile, shouldForceUpdate: %{BOOL,public}d, isSubscribed: %{BOOL,public}d, isSocialEnabled: %{BOOL,public}d, currentState: %{public}s", v26, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v6 = v28;
      ObjectType = v27;
      v7 = v60;
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      v18 = v59;
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    if (!v18 && (v20 & 1) != 0)
    {
      OUTLINED_FUNCTION_48_24();
      sub_2166C1BB8(v63);
      OUTLINED_FUNCTION_34_33();
      if (v13 && v33 == 0xE800000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_42();
        sub_21700F7D4();
        OUTLINED_FUNCTION_41_2();

        if (!v18)
        {
          v35 = *(v7 + 16);
          v36 = v9;
          os_unfair_lock_lock(v35);
          v37 = *&v36[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
          v17 = *(v7 + 16);
          v38 = v37;
          v39 = OUTLINED_FUNCTION_10_87();
          os_unfair_lock_unlock(v39);

          if (!v37 || (v35, (v62 & 1) != 0))
          {
            os_unfair_lock_assert_not_owner(*(v7 + 16));
            type metadata accessor for JSIntentDispatcher();
            sub_21700E094();
            v40 = v64[0];
            sub_216ECDC54(v61);
            v41 = v36;
            v42 = OUTLINED_FUNCTION_52_16();
            os_unfair_lock_lock(v42);
            sub_2166C1D2C(1);
            os_unfair_lock_unlock(*(v7 + 16));

            OUTLINED_FUNCTION_65_0();
            v43 = swift_allocObject();
            *(v43 + 16) = v40;
            *(v43 + 24) = v6;
            OUTLINED_FUNCTION_181();
            v44 = swift_allocObject();
            v44[2] = v40;
            v44[3] = v6;
            v44[4] = ObjectType;
            v45 = v6;
            v46 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
            v47 = v40;
            OUTLINED_FUNCTION_47();
            swift_retain_n();
            v48 = v40;
            v49 = sub_21700EE84();
            v64[3] = v46;
            v64[4] = MEMORY[0x277D225C0];
            v6 = v45;
            v64[0] = v49;
            sub_21700E1C4();

            __swift_destroy_boxed_opaque_existential_1Tm(v64);
            return v6;
          }
        }
      }
    }

    if (v20)
    {
      v50 = v63;
    }

    else
    {
      v50 = 4;
    }

    v51 = v9;
    v52 = OUTLINED_FUNCTION_47_18();
    os_unfair_lock_lock(v52);
    sub_2166C1D2C(v50);
    os_unfair_lock_unlock(*(v7 + 16));

    LOBYTE(v64[0]) = v50;
    sub_21700E224();
    v53 = sub_217007C84();
    sub_21700EDA4();
    v54 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_1_157();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_13(&dword_216679000, v56, v57, "Skipped fetching user social profile, fetch was not needed.");
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }
  }

  return v6;
}

uint64_t sub_2166B8DD0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicAppDestinationContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MusicAppDestination(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2166B8EB0(uint64_t a1)
{
  v1 = sub_21700C384();
  if (v2 <= 0x3F)
  {
    v1 = sub_2170072A4();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for MusicAppDestination.AlbumDescriptor(319);
      if (v4 <= 0x3F)
      {
        v1 = sub_21700C924();
        if (v5 <= 0x3F)
        {
          v6 = sub_21700C734();
          if (v7 > 0x3F)
          {
            return v6;
          }

          sub_2166B9390(319, qword_280E47000, type metadata accessor for MusicAppDestination.AlbumDescriptor, " prominentTrackID ");
          if (v8 > 0x3F)
          {
            return v6;
          }

          sub_2166B9390(319, qword_280E46F40, type metadata accessor for MusicAppDestination.PlaylistDescriptor, " prominentEntryID ");
          if (v9 > 0x3F)
          {
            return v6;
          }

          sub_2166B9410(319);
          if (v10 > 0x3F)
          {
            return v6;
          }

          sub_216692530(319);
          if (v11 > 0x3F)
          {
            return v6;
          }

          sub_216E260F4(319, &qword_280E29F10, type metadata accessor for PlaylistAddableItem, MEMORY[0x277D83940]);
          if (v12 > 0x3F)
          {
            return v6;
          }

          v6 = sub_21700C084();
          if (v13 > 0x3F)
          {
            return v6;
          }

          v6 = type metadata accessor for ReportableMusicItem(319);
          if (v14 > 0x3F)
          {
            return v6;
          }

          v6 = type metadata accessor for ShareableMusicItem(319);
          if (v15 > 0x3F)
          {
            return v6;
          }

          else
          {
            v1 = sub_217005EF4();
            if (v16 <= 0x3F)
            {
              sub_216692760(319);
              v1 = v17;
              if (v18 <= 0x3F)
              {
                v1 = type metadata accessor for MusicAppDestination.SharePageDescriptor(319);
                if (v19 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_2166B90EC()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130, &qword_21705D720);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  v2 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  if ((*(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_22();
    sub_21700D4D4();
    OUTLINED_FUNCTION_8();
    sub_21700E094();
    type metadata accessor for RestrictionsController();
    sub_21700E094();
    v9 = sub_21700E4D4();
    sub_21700DF44();

    sub_21700DF84();
    v10 = OUTLINED_FUNCTION_98();
    v11(v10);
    if (v12)
    {

      sub_2166C1A3C();
    }

    else
    {
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166B92EC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73BC0);
  __swift_project_value_buffer(v0, qword_280E73BC0);
  type metadata accessor for UserSocialProfileCoordinator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8558, &qword_21705D750);
  sub_21700E5B4();
  return sub_217007C94();
}

void sub_2166B9390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE0, &qword_217014048);
    OUTLINED_FUNCTION_82();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2166B9410(uint64_t a1)
{
  if (!qword_280E46F38)
  {
    type metadata accessor for MusicAppDestination.PlaylistDescriptor(255);
    sub_217005EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E46F38);
    }
  }
}

void *sub_2166B9480(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC0, &unk_217014290);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_1(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return sub_21700D234();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return sub_216683A80(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_10()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_11()
{
}

uint64_t OUTLINED_FUNCTION_34_14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_34_19()
{
  v5 = *(v3 - 1160);

  return sub_216681B04(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_20(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_23()
{
  *(v0 + 152) = *(*(v0 + 40) + 40);
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_34_27()
{

  return sub_2166AF66C(0x6E6F73616572, 0xE600000000000000);
}

uint64_t OUTLINED_FUNCTION_34_28()
{
}

uint64_t OUTLINED_FUNCTION_34_29()
{
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_34_35(uint64_t a1)
{

  return sub_21700D1D4();
}

uint64_t OUTLINED_FUNCTION_34_37(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_38@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1)
{

  return sub_21700E494();
}

uint64_t OUTLINED_FUNCTION_34_42()
{
  type metadata accessor for AlbumTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2166B9918(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void MusicStackAuthority.destination<A>(_:binding:)()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_21700D404();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  sub_21700D414();
  type metadata accessor for ConcreteBindingBox(0, v5, v3, v11);
  sub_2166B9F58(v9, v7);
  v12 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings, &v16);

  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v12);
  sub_2166B71A0();
  *(v1 + v12) = v15;
  swift_endAccess();
  v13 = OUTLINED_FUNCTION_45_0();
  v14(v13);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_2166B9AD0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v11 = objc_opt_self();
  v12 = a1;

  v13 = [v11 defaultCenter];
  *(v6 + 40) = v13;
  v14 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v13;

  v17 = v14;
  [v16 addObserver:v6 selector:sel_handleNotification_ name:v17 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

double OUTLINED_FUNCTION_105_1@<D0>(char a1@<W8>)
{
  *v2 = a1;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = v4;
  *(v2 + 96) = v3;
  *(v2 + 104) = 0;
  *(v2 + 112) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 224);

  return sub_2168AEDA8(v6, v3, a3);
}

BOOL OUTLINED_FUNCTION_105_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_10()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

unint64_t sub_2166B9CF8()
{
  result = qword_280E32990[0];
  if (!qword_280E32990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E32990);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_91_6()
{
}

uint64_t OUTLINED_FUNCTION_91_8(uint64_t a1, uint64_t a2)
{

  return sub_2168AEDA8(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return sub_2168CBAB0(v0, type metadata accessor for SquareLockup);
}

uint64_t OUTLINED_FUNCTION_91_10()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_91_13()
{
  type metadata accessor for VideoArtwork.Dictionary._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_91_15()
{

  return sub_216683A80(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_2166B9EA0()
{
  v0 = sub_21700DEA4();
  __swift_allocate_value_buffer(v0, qword_280E73A50);
  __swift_project_value_buffer(v0, qword_280E73A50);
  return sub_21700DE94();
}

unint64_t sub_2166B9F04()
{
  result = qword_280E45DB8[0];
  if (!qword_280E45DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E45DB8);
  }

  return result;
}

uint64_t sub_2166B9F58(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_4(uint64_t a1, uint64_t a2)
{

  return sub_2166A6F60(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_104_8@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2166A6EA4();
}

unint64_t sub_2166BA038()
{
  result = qword_280E45E48;
  if (!qword_280E45E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45E48);
  }

  return result;
}

void sub_2166BA08C()
{
  OUTLINED_FUNCTION_49();
  v900 = v1;
  v899 = v2;
  v3 = *v0;
  sub_21700C254();
  OUTLINED_FUNCTION_1();
  v844 = v5;
  v845 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v843 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700C994();
  OUTLINED_FUNCTION_1();
  v841 = v8;
  v842 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v840 = v9;
  v859 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9470, &qword_21701D650);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v862 = v11;
  v828 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9478, &qword_21701D658);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v830 = v13;
  v860 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AA0, &unk_217013E00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v839 = v15;
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A80, &unk_217013DE0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v869 = v17;
  v827 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AA8, &unk_21701D660);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v837 = v19;
  OUTLINED_FUNCTION_4_1();
  v838 = sub_21700C554();
  OUTLINED_FUNCTION_1();
  v810 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v834 = v22;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v853 = v24;
  v854 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v852 = v25;
  OUTLINED_FUNCTION_4_1();
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v835 = v27;
  v836 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v832 = v28;
  OUTLINED_FUNCTION_4_1();
  v833 = sub_21700BEA4();
  OUTLINED_FUNCTION_1();
  v831 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v829 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0, &unk_21701D840);
  OUTLINED_FUNCTION_36(v32);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v851 = v34;
  OUTLINED_FUNCTION_4_1();
  v875 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v874 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v850 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  v858 = v39;
  v881 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9480, &qword_21701D670);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  v883 = v41;
  v879 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9488, &qword_21701D678);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  v880 = v43;
  v882 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A98, &unk_21701D680);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_105();
  v884 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A78, &qword_217013DD8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v885 = v48;
  OUTLINED_FUNCTION_4_1();
  v868 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v867 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  v864 = v51;
  v52 = OUTLINED_FUNCTION_4_1();
  v857 = type metadata accessor for FlowAction.Destination(v52);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_0();
  v866 = v54;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v825 = v56;
  v826 = v55;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v823 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47_1();
  v824 = v59;
  OUTLINED_FUNCTION_4_1();
  v865 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v863 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v808 = v62;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  v809 = v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  v818 = v66;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47_1();
  v817 = v68;
  v69 = OUTLINED_FUNCTION_4_1();
  v861 = type metadata accessor for FlowAction(v69);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1_0();
  v806 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v803 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v804 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v807 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47_1();
  v805 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
  OUTLINED_FUNCTION_36(v80);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  v849 = v82;
  OUTLINED_FUNCTION_4_1();
  v873 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v872 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_1_0();
  v848 = v85;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47_1();
  v816 = v87;
  v886 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460, &qword_21701D5E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_105();
  v887 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_105();
  v888 = v92;
  OUTLINED_FUNCTION_4_1();
  v871 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v870 = v93;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_1_0();
  v847 = v95;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47_1();
  v815 = v97;
  v98 = OUTLINED_FUNCTION_4_1();
  v99 = type metadata accessor for FlowActionPageView(v98);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_1_0();
  v819 = v101;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_6_4();
  v820 = v103;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_6_4();
  v822 = v105;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_6_4();
  v821 = v107;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47_1();
  v895 = v109;
  OUTLINED_FUNCTION_4_1();
  sub_21700C384();
  OUTLINED_FUNCTION_1();
  v813 = v111;
  v814 = v110;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_6_0();
  v812 = v112;
  v113 = *(v3 + 80);
  v894 = v0;
  OUTLINED_FUNCTION_188();
  type metadata accessor for SearchPageView(255, v114);
  OUTLINED_FUNCTION_110();
  v889 = v99;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v811 = v115;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v116);
  v118 = &v802 - v117;
  v905 = v119;
  v890 = v90;
  v120 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v856 = v121;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_105();
  v855 = v123;
  v903 = v0;
  v846 = *(v0 - 1);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_77();
  v127 = (v125 - v126);
  MEMORY[0x28223BE20](v128);
  v130 = &v802 - v129;
  v876 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68, &unk_21701D690);
  v904 = v120;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v878 = v131;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_105();
  v877 = v133;
  OUTLINED_FUNCTION_4_1();
  v898 = v134;
  v891 = v46;
  v135 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v893 = v136;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_105();
  v892 = v138;
  OUTLINED_FUNCTION_188();
  v140 = type metadata accessor for MusicPageProvider.Destination(0, v139);
  OUTLINED_FUNCTION_1();
  v142 = v141;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_75_2();
  v897 = v135;
  v144 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v146 = v145;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_105();
  v896 = v148;
  v150 = *(v142 + 16);
  v149 = v142 + 16;
  v151 = v900;
  v150(v113);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v902 = v144;
  v901 = v146;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v371 = OUTLINED_FUNCTION_90();
      v372(v371);
      OUTLINED_FUNCTION_35_10();
      sub_21683E188();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v374 = sub_2166C2594(v373);
      v375 = v888;
      sub_217009554();
      v376 = OUTLINED_FUNCTION_10_1();
      v967 = OUTLINED_FUNCTION_208(v376);
      v968 = v374;
      OUTLINED_FUNCTION_42_3();
      v118 = v905;
      WitnessTable = swift_getWitnessTable();
      v378 = sub_2166B53E0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      sub_216697664(v375, &qword_27CAB6A70, &qword_217013DD0);
      OUTLINED_FUNCTION_3_38();
      v380 = sub_2166B51C0(v379);
      v965 = WitnessTable;
      v966 = v378;
      v381 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_148(v381);
      OUTLINED_FUNCTION_222();
      v382 = OUTLINED_FUNCTION_194();
      v383(v382);
      v963 = v380;
      v964 = WitnessTable;
      v384 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v386 = sub_2166B51C0(v385);
      OUTLINED_FUNCTION_41_9();
      sub_2166C2718();
      v387 = OUTLINED_FUNCTION_119();
      v388(v387);
      v961 = v384;
      v962 = v386;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v389 = OUTLINED_FUNCTION_32_12();
      v390(v389);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v391);
      v290 = *(v870 + 8);
      v291 = v815;
      goto LABEL_38;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);
      v293 = OUTLINED_FUNCTION_109_0();
      v294(v293);
      OUTLINED_FUNCTION_154();
      sub_21683E560();

      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v149, v887);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v296 = sub_2166C2594(v295);
      v297 = v888;
      OUTLINED_FUNCTION_39_7();
      v298 = OUTLINED_FUNCTION_10_1();
      v975 = OUTLINED_FUNCTION_208(v298);
      v976 = v296;
      OUTLINED_FUNCTION_42_3();
      v118 = v905;
      v299 = swift_getWitnessTable();
      v300 = sub_2166B53E0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      sub_216697664(v297, &qword_27CAB6A70, &qword_217013DD0);
      OUTLINED_FUNCTION_3_38();
      v302 = sub_2166B51C0(v301);
      v973 = v299;
      v974 = v300;
      v303 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_148(v303);
      OUTLINED_FUNCTION_222();
      v304 = OUTLINED_FUNCTION_194();
      v305(v304);
      v971 = v302;
      v972 = v299;
      v306 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v308 = sub_2166B51C0(v307);
      OUTLINED_FUNCTION_41_9();
      sub_2166C2718();
      v309 = OUTLINED_FUNCTION_119();
      v310(v309);
      v969 = v306;
      v970 = v308;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v311 = OUTLINED_FUNCTION_32_12();
      v312(v311);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v313);
      v290 = *(v872 + 8);
      v291 = v816;
      goto LABEL_32;
    case 3:
      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050);
      v342 = *(v341 + 48);
      (*(v872 + 32))(v848, v113, v873);
      sub_2167C5834(v113 + v342, v849, &qword_27CAB6AE8, qword_217014050);
      if (sub_21688D828(0, 48))
      {
        v343 = v817;
        sub_21700D234();
      }

      else
      {
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v628 = OUTLINED_FUNCTION_104_0();
        v629(v628);
        v343 = v817;
        sub_21700D244();
        v630 = OUTLINED_FUNCTION_158();
        v631(v630);
      }

      v632 = v857;
      v633 = *(v341 + 48);
      v634 = v866;
      (*(v872 + 16))(v866, v848, v873);
      sub_216683A80(v849, v634 + v633, &qword_27CAB6AE8, qword_217014050);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_175();
      v635 = v805;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v636, v637, v638, v639);
      type metadata accessor for Page.Header(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v640, v641, v642, v643);
      type metadata accessor for ReferrerInfo(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v644, v645, v646, v647);
      v648 = OUTLINED_FUNCTION_87_3();
      v649(v648);
      OUTLINED_FUNCTION_7_25();
      v651 = sub_2168451B0(v634, v635 + v650);
      OUTLINED_FUNCTION_252(v651);
      sub_2170061F4();
      v652 = OUTLINED_FUNCTION_57_7();
      v653(v652);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v634, v654);
      (*(v144 + 8))(v817, v343);
      OUTLINED_FUNCTION_183();
      sub_2166861C8(v942, v942, &qword_27CABF7B0, &qword_217016E20);
      v655 = OUTLINED_FUNCTION_164();
      sub_21683E974(v655, v656);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v635, v657);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v659 = sub_2166C2594(v658);
      v660 = v888;
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_201();
      swift_storeEnumTagMultiPayload();
      v661 = sub_2166B53E0();
      OUTLINED_FUNCTION_147_1(v661);
      sub_216697664(v660, &qword_27CAB6A70, &qword_217013DD0);
      OUTLINED_FUNCTION_204();
      swift_storeEnumTagMultiPayload();
      v662 = sub_2166B5778();
      v118 = v885;
      OUTLINED_FUNCTION_149_1(v632, v882, v663, v662);
      v664 = OUTLINED_FUNCTION_226();
      sub_216697664(v664, v665, &unk_21701D680);
      OUTLINED_FUNCTION_3_38();
      v667 = sub_2166B51C0(v666);
      OUTLINED_FUNCTION_10_1();
      v983 = swift_getWitnessTable();
      v984 = v659;
      OUTLINED_FUNCTION_42_3();
      v981 = swift_getWitnessTable();
      v982 = v942;
      v668 = OUTLINED_FUNCTION_180();
      v979 = v667;
      v980 = v668;
      v669 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      OUTLINED_FUNCTION_165();
      v671 = sub_2166B51C0(v670);
      OUTLINED_FUNCTION_24_13();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_165();
      sub_216697664(v672, v673, v674);
      v977 = v669;
      v978 = v671;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v675 = OUTLINED_FUNCTION_32_12();
      v676(v675);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v821, v677);
      sub_216697664(v849, &qword_27CAB6AE8, qword_217014050);
      v290 = *(v872 + 8);
      v291 = v848;
LABEL_32:
      v479 = v873;
      goto LABEL_39;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);
      v247 = OUTLINED_FUNCTION_109_0();
      v248(v247);
      OUTLINED_FUNCTION_154();
      sub_21683EA2C();

      OUTLINED_FUNCTION_8_19();
      v249 = v887;
      sub_2168451B0(v149, v887);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v251 = sub_2166C2594(v250);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      v252 = sub_2166B53E0();
      OUTLINED_FUNCTION_37_9(v252);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v253, v254, v255);
      OUTLINED_FUNCTION_58_4(v113);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v256 = sub_2166B5778();
      OUTLINED_FUNCTION_40_7(v256);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v257, v258, v259);
      OUTLINED_FUNCTION_3_38();
      v261 = sub_2166B51C0(v260);
      v262 = OUTLINED_FUNCTION_10_1();
      v991 = OUTLINED_FUNCTION_212(v262);
      v992 = v251;
      OUTLINED_FUNCTION_42_3();
      v989 = OUTLINED_FUNCTION_170(v263);
      v990 = v249;
      v264 = OUTLINED_FUNCTION_180();
      v987 = v261;
      v988 = v264;
      v265 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v266);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_41_9();
      sub_2166C2CB0();
      sub_216697664(v118, &qword_27CAB6A78, &qword_217013DD8);
      v985 = v265;
      v986 = v113;
      OUTLINED_FUNCTION_61_2();
      v267 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v267);
      v268 = OUTLINED_FUNCTION_28_15();
      v269(v268);
      goto LABEL_8;
    case 5:
      v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0);
      v424 = *(v423 + 48);
      (*(v874 + 32))(v850, v113, v875);
      sub_2167C5834(v113 + v424, v851, qword_27CAB6AF0, &unk_21701D840);
      if (sub_21688D828(26, 48))
      {
        v425 = v818;
        sub_21700D234();
      }

      else
      {
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v678 = OUTLINED_FUNCTION_104_0();
        v679(v678);
        v425 = v818;
        sub_21700D244();
        v680 = OUTLINED_FUNCTION_158();
        v681(v680);
      }

      v682 = v857;
      v683 = *(v423 + 48);
      v684 = v866;
      (*(v874 + 16))(v866, v850, v875);
      sub_216683A80(v851, v684 + v683, qword_27CAB6AF0, &unk_21701D840);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_175();
      v685 = v807;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v686, v687, v688, v689);
      type metadata accessor for Page.Header(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v690, v691, v692, v693);
      type metadata accessor for ReferrerInfo(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v694, v695, v696, v697);
      v698 = OUTLINED_FUNCTION_87_3();
      v699(v698);
      OUTLINED_FUNCTION_7_25();
      v701 = sub_2168451B0(v684, v685 + v700);
      OUTLINED_FUNCTION_252(v701);
      sub_2170061F4();
      v702 = OUTLINED_FUNCTION_57_7();
      v703(v702);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v684, v704);
      (*(v144 + 8))(v818, v425);
      OUTLINED_FUNCTION_183();
      sub_2166861C8(v942, v942, &qword_27CABF7B0, &qword_217016E20);
      v705 = OUTLINED_FUNCTION_164();
      sub_21683E974(v705, v706);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v685, v707);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v709 = sub_2166C2594(v708);
      v710 = v888;
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_251(v685);
      v711 = sub_2166B53E0();
      OUTLINED_FUNCTION_147_1(v711);
      sub_216697664(v710, &qword_27CAB6A70, &qword_217013DD0);
      OUTLINED_FUNCTION_204();
      swift_storeEnumTagMultiPayload();
      v712 = sub_2166B5778();
      v118 = v885;
      OUTLINED_FUNCTION_149_1(v682, v882, v713, v712);
      v714 = OUTLINED_FUNCTION_226();
      sub_216697664(v714, v715, &unk_21701D680);
      OUTLINED_FUNCTION_3_38();
      v717 = sub_2166B51C0(v716);
      OUTLINED_FUNCTION_10_1();
      v999 = swift_getWitnessTable();
      v1000 = v709;
      OUTLINED_FUNCTION_42_3();
      v997 = swift_getWitnessTable();
      v998 = v942;
      v718 = OUTLINED_FUNCTION_180();
      v995 = v717;
      v996 = v718;
      v719 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      OUTLINED_FUNCTION_165();
      v721 = sub_2166B51C0(v720);
      OUTLINED_FUNCTION_24_13();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_165();
      sub_216697664(v722, v723, v724);
      v993 = v719;
      v994 = v721;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v725 = OUTLINED_FUNCTION_32_12();
      v726(v725);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v822, v727);
      sub_216697664(v851, qword_27CAB6AF0, &unk_21701D840);
      v290 = *(v874 + 8);
      v291 = v850;
      goto LABEL_35;
    case 6:
      (*(v870 + 32))(v847, v113, v871);
      if (sub_21688D828(0, 48))
      {
        v447 = v809;
        sub_21700D234();
      }

      else
      {
        v728 = v824;
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v730 = v825;
        v729 = v826;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v731();
        v447 = v809;
        sub_21700D244();
        (*(v730 + 8))(v728, v729);
      }

      v732 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8, &unk_21701D6A0) + 48);
      v733 = v866;
      (*(v870 + 16))(v866, v847, v871);
      *(v733 + v732) = 2;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_161();
      v734 = v804;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_221_0(v735, v736, v737, v738);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_220(v739, v740, v741, v742);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v743, v744, v745, v746);
      v747 = v734 + *(v118 + 10);
      OUTLINED_FUNCTION_45_8();
      v748 = v863;
      v749 = OUTLINED_FUNCTION_73_5();
      v750 = v865;
      v751(v749);
      OUTLINED_FUNCTION_7_25();
      v753 = sub_2168451B0(v733, v734 + v752);
      OUTLINED_FUNCTION_252(v753);
      sub_2170061F4();
      v900 = v754;
      v755 = OUTLINED_FUNCTION_57_7();
      v756(v755);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v733, v757);
      (*(v748 + 8))(v447, v750);
      OUTLINED_FUNCTION_159();
      sub_2166861C8(v942, v747, &qword_27CABF7B0, &qword_217016E20);
      sub_21683E974(v734, v820);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v734, v758);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v760 = sub_2166C2594(v759);
      OUTLINED_FUNCTION_39_7();
      v761 = v880;
      OUTLINED_FUNCTION_165();
      sub_216683A80(v762, v763, v764, &qword_217013DD0);
      OUTLINED_FUNCTION_251(v761);
      v765 = sub_2166B53E0();
      v766 = v884;
      OUTLINED_FUNCTION_59_4(v761);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v767, v768, v769);
      OUTLINED_FUNCTION_58_4(v766);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v770 = sub_2166B5778();
      v771 = v885;
      OUTLINED_FUNCTION_60_3(v770, v772, v773, v770);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v774, v775, v776);
      OUTLINED_FUNCTION_3_38();
      v778 = sub_2166B51C0(v777);
      OUTLINED_FUNCTION_10_1();
      v118 = v903;
      v1007 = swift_getWitnessTable();
      v1008 = v760;
      OUTLINED_FUNCTION_42_3();
      v1005 = OUTLINED_FUNCTION_170(v779);
      v1006 = v765;
      v780 = OUTLINED_FUNCTION_180();
      v1003 = v778;
      v1004 = v780;
      v781 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v782);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_41_9();
      sub_2166C2CB0();
      sub_216697664(v771, &qword_27CAB6A78, &qword_217013DD8);
      v1001 = v781;
      v1002 = v761;
      OUTLINED_FUNCTION_61_2();
      v783 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v783);
      v784 = OUTLINED_FUNCTION_28_15();
      v785(v784);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v820, v786);
      v290 = *(v870 + 8);
      v291 = v847;
LABEL_38:
      v479 = v871;
      goto LABEL_39;
    case 7:
      v344 = OUTLINED_FUNCTION_90();
      v345(v344);
      v346 = v803;
      sub_216F05B18(v803);
      v347 = v895;
      v348 = v894;
      sub_21683E974(v346, v895);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v346, v349);
      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v347, v887);
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v351 = sub_2166C2594(v350);
      OUTLINED_FUNCTION_38_7(v351);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      v352 = sub_2166B53E0();
      OUTLINED_FUNCTION_37_9(v352);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v353, v354, v355);
      OUTLINED_FUNCTION_58_4(v113);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v356 = sub_2166B5778();
      OUTLINED_FUNCTION_40_7(v356);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v357, v358, v359);
      OUTLINED_FUNCTION_3_38();
      v361 = sub_2166B51C0(v360);
      v362 = OUTLINED_FUNCTION_10_1();
      v1015 = OUTLINED_FUNCTION_208(v362);
      v1016 = v348;
      OUTLINED_FUNCTION_42_3();
      v1013 = OUTLINED_FUNCTION_170(v363);
      v1014 = v346;
      v364 = OUTLINED_FUNCTION_180();
      v1011 = v361;
      v1012 = v364;
      v365 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v366);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v118, &qword_27CAB6A78);
      v1009 = v365;
      v1010 = v113;
      OUTLINED_FUNCTION_61_2();
      v367 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v367);
      v368 = OUTLINED_FUNCTION_28_15();
      v369(v368);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v370);
      (*(v831 + 8))(v829, v833);
      break;
    case 8:
      v503 = v832;
      v504 = OUTLINED_FUNCTION_90();
      v505(v504);
      OUTLINED_FUNCTION_35_10();
      sub_21683EE44();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v507 = sub_2166C2594(v506);
      OUTLINED_FUNCTION_38_7(v507);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      v508 = sub_2166B53E0();
      OUTLINED_FUNCTION_37_9(v508);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v509, v510, v511);
      OUTLINED_FUNCTION_58_4(v113);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v512 = sub_2166B5778();
      OUTLINED_FUNCTION_40_7(v512);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v513, v514, v515);
      OUTLINED_FUNCTION_3_38();
      v517 = sub_2166B51C0(v516);
      v518 = OUTLINED_FUNCTION_10_1();
      v1023 = OUTLINED_FUNCTION_208(v518);
      v1024 = v503;
      OUTLINED_FUNCTION_42_3();
      v1021 = OUTLINED_FUNCTION_170(v519);
      v1022 = v151;
      v520 = OUTLINED_FUNCTION_180();
      v1019 = v517;
      v1020 = v520;
      v521 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v522);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v118, &qword_27CAB6A78);
      v1017 = v521;
      v1018 = v113;
      OUTLINED_FUNCTION_61_2();
      v523 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v523);
      v524 = OUTLINED_FUNCTION_28_15();
      v525(v524);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v526);
      (*(v835 + 8))(v832, v836);
      break;
    case 9:
      (*(v853 + 32))(v852, v113, v854);
      if (sub_21688D828(47, 48))
      {
        v292 = v808;
        sub_21700D234();
      }

      else
      {
        v569 = v824;
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v571 = v825;
        v570 = v826;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v572();
        v292 = v808;
        sub_21700D244();
        (*(v571 + 8))(v569, v570);
      }

      v573 = v866;
      (*(v853 + 16))(v866, v852, v854);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_161();
      v574 = v806;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_221_0(v575, v576, v577, v578);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_220(v579, v580, v581, v582);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v583, v584, v585, v586);
      v587 = v574 + *(v118 + 10);
      OUTLINED_FUNCTION_45_8();
      v588 = v863;
      v589 = OUTLINED_FUNCTION_73_5();
      v590 = v865;
      v591(v589);
      OUTLINED_FUNCTION_7_25();
      v593 = sub_2168451B0(v573, v574 + v592);
      OUTLINED_FUNCTION_252(v593);
      sub_2170061F4();
      v900 = v594;
      v595 = OUTLINED_FUNCTION_57_7();
      v596(v595);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v573, v597);
      (*(v588 + 8))(v292, v590);
      OUTLINED_FUNCTION_159();
      sub_2166861C8(v942, v587, &qword_27CABF7B0, &qword_217016E20);
      sub_21683E974(v574, v819);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v574, v598);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v600 = sub_2166C2594(v599);
      OUTLINED_FUNCTION_39_7();
      v601 = v880;
      OUTLINED_FUNCTION_165();
      sub_216683A80(v602, v603, v604, &qword_217013DD0);
      OUTLINED_FUNCTION_251(v601);
      v605 = sub_2166B53E0();
      v606 = v884;
      OUTLINED_FUNCTION_59_4(v601);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v607, v608, v609);
      OUTLINED_FUNCTION_58_4(v606);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v610 = sub_2166B5778();
      v611 = v885;
      OUTLINED_FUNCTION_60_3(v610, v612, v613, v610);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v614, v615, v616);
      OUTLINED_FUNCTION_3_38();
      v618 = sub_2166B51C0(v617);
      v619 = OUTLINED_FUNCTION_10_1();
      v1031 = OUTLINED_FUNCTION_208(v619);
      v1032 = v600;
      OUTLINED_FUNCTION_42_3();
      v1029 = OUTLINED_FUNCTION_170(v620);
      v1030 = v605;
      v621 = OUTLINED_FUNCTION_180();
      v1027 = v618;
      v1028 = v621;
      v118 = v898;
      v622 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v623);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      sub_216697664(v611, &qword_27CAB6A78, &qword_217013DD8);
      v1025 = v622;
      v1026 = v601;
      OUTLINED_FUNCTION_61_2();
      v624 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v624);
      v625 = OUTLINED_FUNCTION_28_15();
      v626(v625);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v819, v627);
      (*(v853 + 8))(v852, v854);
      break;
    case 10:
      v480 = v895;
      sub_21683F284();

      OUTLINED_FUNCTION_8_19();
      v481 = v887;
      sub_2168451B0(v480, v887);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v483 = sub_2166C2594(v482);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_251(v146);
      v484 = sub_2166B53E0();
      OUTLINED_FUNCTION_37_9(v484);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v485, v486, v487);
      OUTLINED_FUNCTION_58_4(v113);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      v488 = sub_2166B5778();
      OUTLINED_FUNCTION_40_7(v488);
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v489, v490, v491);
      OUTLINED_FUNCTION_3_38();
      v493 = sub_2166B51C0(v492);
      v494 = OUTLINED_FUNCTION_10_1();
      v1039 = OUTLINED_FUNCTION_208(v494);
      v1040 = v483;
      OUTLINED_FUNCTION_42_3();
      v1037 = OUTLINED_FUNCTION_170(v495);
      v1038 = v481;
      v496 = OUTLINED_FUNCTION_180();
      v1035 = v493;
      v1036 = v496;
      v497 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v498);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v118, &qword_27CAB6A78);
      v1033 = v497;
      v1034 = v113;
      OUTLINED_FUNCTION_61_2();
      v499 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v499);
      v500 = OUTLINED_FUNCTION_28_15();
      v501(v500);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v502);
      break;
    case 11:
      v229 = v810;
      v230 = OUTLINED_FUNCTION_90();
      v231(v230);
      v232 = v837;
      sub_21683F7F8();
      sub_216683A80(v232, v830, &qword_27CAB6AA8, &unk_21701D660);
      swift_storeEnumTagMultiPayload();
      sub_2166B59A8();
      OUTLINED_FUNCTION_1_34();
      v234 = sub_2166C2594(v233);
      v235 = v839;
      sub_217009554();
      sub_216683A80(v235, v862, &qword_27CAB6AA0, &unk_217013E00);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      v236 = sub_2166B53E0();
      v237 = v869;
      OUTLINED_FUNCTION_215();
      sub_217009554();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v238, v239, v240);
      OUTLINED_FUNCTION_3_38();
      v242 = sub_2166B51C0(v241);
      OUTLINED_FUNCTION_10_1();
      v1047 = swift_getWitnessTable();
      v1048 = v234;
      OUTLINED_FUNCTION_95_5();
      v1045 = swift_getWitnessTable();
      v1046 = v236;
      v243 = swift_getWitnessTable();
      v1043 = v242;
      v1044 = v243;
      v244 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      v246 = sub_2166B51C0(v245);
      v1041 = v244;
      v1042 = v246;
      swift_getWitnessTable();
      sub_2166B58AC();
      v118 = v896;
      OUTLINED_FUNCTION_226();
      sub_2166C2CB0();
      sub_216697664(v237, &qword_27CAB6A80, &unk_217013DE0);
      sub_216697664(v837, &qword_27CAB6AA8, &unk_21701D660);
      (*(v229 + 8))(v834, v838);
      break;
    case 12:
      v270 = OUTLINED_FUNCTION_90();
      v271(v270);
      OUTLINED_FUNCTION_35_10();
      sub_216840520();
      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v151, v830);
      swift_storeEnumTagMultiPayload();
      sub_2166B59A8();
      OUTLINED_FUNCTION_1_34();
      v273 = sub_2166C2594(v272);
      sub_217009554();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v274, v275, v276, v277);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v278, v279, v280);
      OUTLINED_FUNCTION_3_38();
      v282 = sub_2166B51C0(v281);
      v283 = OUTLINED_FUNCTION_10_1();
      v1055 = OUTLINED_FUNCTION_253(v283);
      v1056 = v273;
      OUTLINED_FUNCTION_42_3();
      v1053 = OUTLINED_FUNCTION_170(v284);
      v1054 = v113;
      v285 = OUTLINED_FUNCTION_83_5();
      v1051 = v282;
      v1052 = v285;
      v286 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v288 = sub_2166B51C0(v287);
      v1049 = v286;
      v1050 = v288;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v140, &qword_27CAB6A80, &unk_217013DE0);
LABEL_8:
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v289);
      v290 = *(v874 + 8);
      v291 = v858;
LABEL_35:
      v479 = v875;
      goto LABEL_39;
    case 13:
      v426 = v840;
      v427 = OUTLINED_FUNCTION_90();
      v428(v427);
      OUTLINED_FUNCTION_35_10();
      sub_216840A94();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v430 = sub_2166C2594(v429);
      OUTLINED_FUNCTION_38_7(v430);
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v431, v432, v433, v434);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v435, v436, v437);
      OUTLINED_FUNCTION_3_38();
      v439 = sub_2166B51C0(v438);
      v440 = OUTLINED_FUNCTION_10_1();
      v1063 = OUTLINED_FUNCTION_253(v440);
      v1064 = v426;
      OUTLINED_FUNCTION_42_3();
      v1061 = OUTLINED_FUNCTION_170(v441);
      v1062 = v113;
      v442 = OUTLINED_FUNCTION_83_5();
      v1059 = v439;
      v1060 = v442;
      v443 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v445 = sub_2166B51C0(v444);
      v1057 = v443;
      v1058 = v445;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v140, &qword_27CAB6A80, &unk_217013DE0);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v446);
      (*(v841 + 8))(v840, v842);
      break;
    case 14:
      v208 = v843;
      v209 = OUTLINED_FUNCTION_90();
      v210(v209);
      OUTLINED_FUNCTION_35_10();
      sub_216840E74();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v212 = sub_2166C2594(v211);
      OUTLINED_FUNCTION_38_7(v212);
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v213, v214, v215, v216);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v217, v218, v219);
      OUTLINED_FUNCTION_3_38();
      v221 = sub_2166B51C0(v220);
      v222 = OUTLINED_FUNCTION_10_1();
      v1081 = OUTLINED_FUNCTION_253(v222);
      v1082 = v208;
      OUTLINED_FUNCTION_42_3();
      v1079 = OUTLINED_FUNCTION_170(v223);
      v1080 = v113;
      v224 = OUTLINED_FUNCTION_83_5();
      v1077 = v221;
      v1078 = v224;
      v225 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v227 = sub_2166B51C0(v226);
      v1075 = v225;
      v1076 = v227;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v140, &qword_27CAB6A80, &unk_217013DE0);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v228);
      (*(v844 + 8))(v843, v845);
      break;
    case 15:
      OUTLINED_FUNCTION_112_1();
      v316 = *(v315 + *(v314 + 208));

      OUTLINED_FUNCTION_102_4();
      v939[0] = v316;
      OUTLINED_FUNCTION_218(xmmword_21701D480);
      v939[8] = sub_21683DBC4;
      v939[9] = 0;
      memcpy(v942, v939, sizeof(v942));
      v940 = 0;
      v943 = 0;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      v317 = sub_2166B5298();
      OUTLINED_FUNCTION_101_2(v317, &type metadata for BootstrapDeferredPageView, v318, v317);
      v319 = OUTLINED_FUNCTION_130();
      memcpy(v319, v320, 0x51uLL);
      v941 = 0;
      v944 = 0;
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90, &unk_217013DF0);
      OUTLINED_FUNCTION_48_7(v321);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v323 = sub_2166B51C0(v322);
      v324 = OUTLINED_FUNCTION_10_1();
      v325 = OUTLINED_FUNCTION_212(v324);
      OUTLINED_FUNCTION_1_34();
      v327 = sub_2166C2594(v326);
      v913 = v325;
      v914 = v327;
      OUTLINED_FUNCTION_42_3();
      v328 = swift_getWitnessTable();
      v329 = sub_2166B53E0();
      v911 = v328;
      v912 = v329;
      v330 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8(v330);
      v331 = OUTLINED_FUNCTION_130();
      memcpy(v331, v332, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v333, v334, v335);
      v909 = v323;
      v910 = v328;
      v336 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v338 = sub_2166B51C0(v337);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v339 = OUTLINED_FUNCTION_34_13();
      v340(v339);
      v907 = v336;
      v908 = v338;
      goto LABEL_24;
    case 16:
      OUTLINED_FUNCTION_112_1();
      v942[3] = type metadata accessor for BrowsePageIntent(0);
      v942[4] = sub_2166C2594(&unk_27CAB9498);
      __swift_allocate_boxed_opaque_existential_1(v942);
      v177 = OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo(v177);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v182 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v182);
      OUTLINED_FUNCTION_218(xmmword_21701D470);
      v939[8] = sub_2167E7308;
      OUTLINED_FUNCTION_151(v183);
      v940 = 1;
      v943 = 1;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      v184 = sub_2166B5298();
      OUTLINED_FUNCTION_101_2(v184, &type metadata for BootstrapDeferredPageView, v185, v184);
      v186 = OUTLINED_FUNCTION_130();
      memcpy(v186, v187, 0x51uLL);
      v941 = 0;
      v944 = 0;
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90, &unk_217013DF0);
      OUTLINED_FUNCTION_48_7(v188);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v190 = sub_2166B51C0(v189);
      v191 = OUTLINED_FUNCTION_10_1();
      v192 = OUTLINED_FUNCTION_212(v191);
      OUTLINED_FUNCTION_1_34();
      v194 = sub_2166C2594(v193);
      v921 = v192;
      v922 = v194;
      OUTLINED_FUNCTION_42_3();
      v195 = swift_getWitnessTable();
      v196 = sub_2166B53E0();
      v919 = v195;
      v920 = v196;
      v197 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8(v197);
      v198 = OUTLINED_FUNCTION_130();
      memcpy(v198, v199, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v200, v201, v202);
      v917 = v190;
      v918 = v195;
      v203 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v205 = sub_2166B51C0(v204);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v206 = OUTLINED_FUNCTION_34_13();
      v207(v206);
      v915 = v203;
      v916 = v205;
      goto LABEL_24;
    case 17:
      OUTLINED_FUNCTION_112_1();
      v942[3] = type metadata accessor for VideosPageIntent(0);
      v942[4] = sub_2166C2594(&unk_27CAB9490);
      __swift_allocate_boxed_opaque_existential_1(v942);
      v392 = OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo(v392);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v393, v394, v395, v396);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v397 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v397);
      OUTLINED_FUNCTION_218(xmmword_21701D460);
      v939[8] = sub_2167E7308;
      OUTLINED_FUNCTION_151(v398);
      v940 = 0;
      v943 = 0;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      v399 = sub_2166B5298();
      OUTLINED_FUNCTION_101_2(v399, &type metadata for BootstrapDeferredPageView, v400, v399);
      v401 = OUTLINED_FUNCTION_130();
      memcpy(v401, v402, 0x51uLL);
      v941 = 1;
      v944 = 1;
      v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90, &unk_217013DF0);
      OUTLINED_FUNCTION_48_7(v403);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v405 = sub_2166B51C0(v404);
      v406 = OUTLINED_FUNCTION_10_1();
      v407 = OUTLINED_FUNCTION_212(v406);
      OUTLINED_FUNCTION_1_34();
      v409 = sub_2166C2594(v408);
      v929 = v407;
      v930 = v409;
      OUTLINED_FUNCTION_42_3();
      v410 = swift_getWitnessTable();
      v411 = sub_2166B53E0();
      v927 = v410;
      v928 = v411;
      v412 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8(v412);
      v413 = OUTLINED_FUNCTION_130();
      memcpy(v413, v414, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v415, v416, v417);
      v925 = v405;
      v926 = v410;
      v418 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v420 = sub_2166B51C0(v419);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v421 = OUTLINED_FUNCTION_34_13();
      v422(v421);
      v923 = v418;
      v924 = v420;
      goto LABEL_24;
    case 18:
      OUTLINED_FUNCTION_112_1();
      v942[3] = type metadata accessor for RadioPageIntent(0);
      v942[4] = sub_2166C2594(&unk_280E420F8);
      __swift_allocate_boxed_opaque_existential_1(v942);
      v448 = OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo(v448);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v449, v450, v451, v452);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v453 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v453);
      OUTLINED_FUNCTION_218(xmmword_21701D450);
      v939[8] = sub_2167E6BC8;
      OUTLINED_FUNCTION_151(v454);
      v940 = 1;
      v943 = 1;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      v455 = sub_2166B5298();
      OUTLINED_FUNCTION_101_2(v455, &type metadata for BootstrapDeferredPageView, v456, v455);
      v457 = OUTLINED_FUNCTION_130();
      memcpy(v457, v458, 0x51uLL);
      v941 = 1;
      v944 = 1;
      v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90, &unk_217013DF0);
      OUTLINED_FUNCTION_48_7(v459);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v461 = sub_2166B51C0(v460);
      v462 = OUTLINED_FUNCTION_10_1();
      v463 = OUTLINED_FUNCTION_212(v462);
      OUTLINED_FUNCTION_1_34();
      v465 = sub_2166C2594(v464);
      v937 = v463;
      v938 = v465;
      OUTLINED_FUNCTION_42_3();
      v466 = swift_getWitnessTable();
      v467 = sub_2166B53E0();
      v935 = v466;
      v936 = v467;
      v468 = OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8(v468);
      v469 = OUTLINED_FUNCTION_130();
      memcpy(v469, v470, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v471, v472, v473);
      v933 = v461;
      v934 = v466;
      v474 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v476 = sub_2166B51C0(v475);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v477 = OUTLINED_FUNCTION_34_13();
      v478(v477);
      v931 = v474;
      v932 = v476;
LABEL_24:
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      sub_2166CE064(v939);
      sub_2166CE064(v939);
      v291 = OUTLINED_FUNCTION_32_12();
LABEL_39:
      v290(v291, v479);
      break;
    case 19:

      sub_2166BE1F4(v527, v528, v529, v530, v531, v532, v533, v534, v127, v535, v536, v537, v538);
      OUTLINED_FUNCTION_10_1();
      v539 = swift_getWitnessTable();
      v540 = OUTLINED_FUNCTION_90();
      sub_2166C24DC(v540, v541, v539);
      v542 = *(v846 + 8);
      v846 += 8;
      v900 = v542;
      v543 = OUTLINED_FUNCTION_90();
      v544(v543);
      v545 = OUTLINED_FUNCTION_109_0();
      sub_2166C24DC(v545, v546, v539);
      OUTLINED_FUNCTION_1_34();
      v548 = sub_2166C2594(v547);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      v951 = v539;
      v952 = v548;
      OUTLINED_FUNCTION_6_1();
      v549 = swift_getWitnessTable();
      v550 = sub_2166B53E0();
      v551 = v855;
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_110_1();
      sub_2166C2718();
      v552 = OUTLINED_FUNCTION_186();
      v553(v552);
      OUTLINED_FUNCTION_3_38();
      v555 = sub_2166B51C0(v554);
      v949 = v549;
      v950 = v550;
      v556 = v904;
      v557 = swift_getWitnessTable();
      OUTLINED_FUNCTION_223();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_222();
      v558(v551, v556);
      v947 = v555;
      v948 = v557;
      v559 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      v561 = sub_2166B51C0(v560);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_110_1();
      sub_2166C2718();
      v562 = OUTLINED_FUNCTION_34_13();
      v563(v562);
      v945 = v559;
      v564 = v903;
      v946 = v561;
      swift_getWitnessTable();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v565 = OUTLINED_FUNCTION_32_12();
      v566(v565);
      v567 = v127;
      v568 = v900;
      v900(v567, v564);
      v568(v130, v564);
      break;
    default:
      v153 = OUTLINED_FUNCTION_90();
      v154(v153);
      OUTLINED_FUNCTION_35_10();
      sub_21683DD48();
      v155 = OUTLINED_FUNCTION_10_1();
      v156 = OUTLINED_FUNCTION_253(v155);
      OUTLINED_FUNCTION_1_34();
      v158 = sub_2166C2594(v157);
      OUTLINED_FUNCTION_115();
      sub_2166C2CB0();
      v959 = v156;
      v960 = v158;
      OUTLINED_FUNCTION_42_3();
      v159 = v905;
      v160 = swift_getWitnessTable();
      v161 = sub_2166B53E0();
      v162 = v855;
      OUTLINED_FUNCTION_164();
      sub_2166C2718();
      (*(v811 + 8))(v118, v159);
      OUTLINED_FUNCTION_3_38();
      v164 = sub_2166B51C0(v163);
      v957 = v160;
      v958 = v161;
      v165 = v904;
      v166 = swift_getWitnessTable();
      OUTLINED_FUNCTION_223();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_222();
      v167(v162, v165);
      v955 = v164;
      v956 = v166;
      v168 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v170 = sub_2166B51C0(v169);
      sub_2166C2718();
      v171 = OUTLINED_FUNCTION_34_13();
      v172(v171);
      v953 = v168;
      v954 = v170;
      OUTLINED_FUNCTION_61_2();
      v173 = sub_2166B58AC();
      OUTLINED_FUNCTION_27_12(v173);
      v174 = OUTLINED_FUNCTION_42_11();
      v175(v174, v164);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v895, v176);
      (*(v813 + 8))(v812, v814);
      break;
  }

  OUTLINED_FUNCTION_3_38();
  v788 = sub_2166B51C0(v787);
  OUTLINED_FUNCTION_10_1();
  v789 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_34();
  v791 = sub_2166C2594(v790);
  v1073 = v789;
  v1074 = v791;
  OUTLINED_FUNCTION_42_3();
  v792 = swift_getWitnessTable();
  v793 = sub_2166B53E0();
  v1071 = v792;
  v1072 = v793;
  v794 = swift_getWitnessTable();
  v1069 = v788;
  v1070 = v794;
  v795 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_33();
  v797 = sub_2166B51C0(v796);
  v1067 = v795;
  v1068 = v797;
  OUTLINED_FUNCTION_90();
  v798 = swift_getWitnessTable();
  v799 = sub_2166B58AC();
  v1065 = v798;
  v1066 = v799;
  v800 = v902;
  v801 = swift_getWitnessTable();
  sub_2166C24DC(v118, v800, v801);
  (*(v901 + 8))(v118, v800);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166BE108()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

unint64_t sub_2166BE144()
{
  result = qword_280E45D68;
  if (!qword_280E45D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D68);
  }

  return result;
}

uint64_t sub_2166BE1F4@<X0>(__n128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 ***a9@<X8>, __n128 a10@<Q2>, __n128 a11@<Q3>, __n128 a12@<Q4>, __n128 a13@<Q5>)
{
  v14 = *a1;
  *a9 = a1;
  v15 = OUTLINED_FUNCTION_42_29(v14[5], v14[6], a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
  sub_2166BE418(sub_216C15BF8, 0);
  v16 = a9 + v15[14];
  *v16 = sub_216C15E14;
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = a9 + v15[15];
  *v17 = sub_217007F94() & 1;
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  v20 = a9 + v15[16];
  *v20 = sub_2166BE4D4(0) & 1;
  *(v20 + 1) = v21;
  v22 = a9 + v15[17];
  *v22 = sub_216C15E40;
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = a9 + v15[18];
  *v23 = sub_216C15EB4;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v15[19];
  if (qword_280E42D18 != -1)
  {
    swift_once();
  }

  v25 = (a9 + v24);

  *v25 = sub_2166C1B60(v26);
  v25[1] = v27;
  v28 = v15[20];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2166BE418(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for FacetBarState(0);

  return sub_217007FF4();
}

uint64_t sub_2166BE49C()
{

  return swift_deallocObject();
}

void *sub_2166BE510(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA8, &qword_217034730);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  *(v1 + 32) = 0;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  v2[5] = v4;

  v6 = sub_2166BF94C(0, a1);

  v2[6] = v6;
  v2[3] = a1;
  return v2;
}

id sub_2166BE5C8@<X0>(uint64_t *a2@<X8>)
{
  v3 = objc_allocWithZone(type metadata accessor for SocialBadgingMapRequestCoordinator(0));

  result = sub_2166BE660(v4);
  *a2 = result;
  return result;
}

void *sub_2166BE620()
{
  type metadata accessor for SearchScopeBar.Manager(0);
  swift_allocObject();
  result = sub_2166BEDBC();
  qword_280E73D58 = result;
  return result;
}

id sub_2166BE660(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  OUTLINED_FUNCTION_1();
  v50 = v4;
  v51 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v49 = &v38 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  OUTLINED_FUNCTION_1();
  v47 = v8;
  v48 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620, &unk_21705D770);
  OUTLINED_FUNCTION_1();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v42 = &v38 - v14;
  sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v39 = v16;
  v40 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v38 = v18 - v17;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = sub_21700B5E4();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_7();
  v21 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_badgingMap;
  v22 = type metadata accessor for SocialBadgingMap(0);
  __swift_storeEnumTagSinglePayload(&v1[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *&v1[v23] = v24;
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingBadgingRequest] = 0;
  v26 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests] = MEMORY[0x277D84F90];
  v45 = a1;
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_objectGraph] = a1;
  sub_2166AF2EC();

  sub_21700B5C4();
  v52[0] = v26;
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810, &unk_217027550);
  sub_2166D9530(&qword_280E29E10, &qword_27CABA810, &unk_217027550, MEMORY[0x277D83970]);
  sub_21700F214();
  (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_workQueue] = sub_21700EEA4();
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v53, sel_init);
  sub_2166BF4A4(0);

  sub_2166C0514(type metadata accessor for SubscriptionStatusCoordinator);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8, &unk_2170206B0);
  v28 = MEMORY[0x277D21A98];
  v29 = sub_2166D9530(&qword_280E2A310, &qword_27CABA4C8, &unk_2170206B0, MEMORY[0x277D21A98]);
  OUTLINED_FUNCTION_34_35(v29);
  v30 = v42;
  OUTLINED_FUNCTION_28_46(v52, v31, sub_216ED2E7C);

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  (*(v43 + 8))(v30, v44);
  v32 = sub_2166C0514(type metadata accessor for UserSocialProfileCoordinator);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
  v33 = sub_2166D9530(&qword_280E2A2F0, &qword_27CABCD68, &unk_217043AC0, v28);
  OUTLINED_FUNCTION_34_35(v33);
  v34 = v46;
  OUTLINED_FUNCTION_28_46(v52, v35, sub_216ED2E7C);

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  (*(v47 + 8))(v34, v48);
  sub_2166C0514(type metadata accessor for SocialGraphController);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
  sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790, &qword_217024070, v28);
  sub_21700D1D4();
  v36 = v49;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  (*(v50 + 8))(v36, v51);
  return v27;
}

uint64_t sub_2166BED88()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void *sub_2166BEDBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4F8, &qword_217071730);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD500, &qword_217071738);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  if (sub_2166BF3C8(v15))
  {
    sub_216F0EAF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v0[3] = v16;
  v0[4] = 0;
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  v0[5] = qword_280E73DD8;
  v17 = objc_opt_self();

  v0[6] = [v17 sharedRestrictionsMonitor];
  sub_217006704();
  sub_2166C0A20();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();

  sub_2166D9530(&qword_280E484A0, &qword_27CAB9E80, &unk_21703A3E0, MEMORY[0x277CBCEC8]);
  sub_217007E74();
  (*(v6 + 8))(v8, v5);
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v18 = sub_21700EE84();
  v31 = v18;
  v19 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_2166D9530(&qword_280E48598, &qword_27CACD4F8, &qword_217071730, MEMORY[0x277CBCBE0]);
  sub_2166C0E74();
  v20 = v28;
  sub_217007E54();
  sub_216697664(v4, &qword_27CABE1F0, &qword_217023920);

  (*(v27 + 8))(v11, v20);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_280E48538, &qword_27CACD500, &qword_217071738, MEMORY[0x277CBCD60]);
  v21 = v30;
  sub_217007E84();

  (*(v29 + 8))(v14, v21);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x277CD5CF0];

  v24 = sub_2166C1150();
  [v22 addObserver:v1 selector:sel_allowMusicSubscriptionDidChange name:v23 object:v24];

  sub_2166C0A20();
  LOBYTE(v22) = sub_2166C129C();

  sub_2166C1368(v22 & 1);
  return v1;
}

uint64_t sub_2166BF390()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166BF3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2170061E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166BF480(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21700F2B4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2166BF4A4(char a1)
{
  sub_2166BF634(a1);
  v2 = *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_workQueue];
  v8[3] = sub_2166AF2EC();
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v2;
  OUTLINED_FUNCTION_143();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_38_40(v3);
  v4 = v2;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228, qword_21703D310);
  v6 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_2166BF574()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void *sub_2166BF5A8()
{
  type metadata accessor for MusicUINetworkConnectivityMonitor(0);
  swift_allocObject();
  result = sub_2166BFEAC();
  qword_280E73DD8 = result;
  return result;
}

uint64_t type metadata accessor for MusicUINetworkConnectivityMonitor(uint64_t a1)
{
  result = qword_280E46498;
  if (!qword_280E46498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166BF634(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1850, &unk_21703F440);
  v4 = sub_21700E244();
  v5 = *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_lock];
  v6 = *(v5 + 16);
  v7 = v2;

  os_unfair_lock_lock(v6);
  sub_2166C00F8(v7, v4);
  os_unfair_lock_unlock(*(v5 + 16));

  v8 = sub_2166C0514(type metadata accessor for UserSocialProfileCoordinator);
  sub_2166B8854(0);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = a1;
  *(swift_allocObject() + 16) = v7;
  v10 = sub_2166AF2EC();
  v11 = v7;
  v12 = sub_21700EE84();
  v14[3] = v10;
  v14[4] = MEMORY[0x277D225C0];
  v14[0] = v12;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v4;
}

uint64_t sub_2166BF7D0()
{

  return swift_deallocObject();
}

void sub_2166BF80C(uint64_t a1)
{
  sub_2166BF8FC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2166BF8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166BF8FC()
{
  if (!qword_280E48380)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48380);
    }
  }
}

uint64_t sub_2166BF94C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_217007C24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8, &qword_2170506D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122(&qword_280E485B8);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0, &unk_21702BAF0);
  v22 = __swift_project_value_buffer(v21, qword_280E73E20);
  (*(v9 + 16))(v13, v22, v7);
  sub_21669E79C(v13, "BootstrapJSStack", 16, 2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F0, &qword_217021308);
  sub_21700D4D4();
  sub_21700E094();
  v23 = v35;
  if (v35)
  {
    if (a1)
    {
      if (qword_280E40F40 != -1)
      {
        OUTLINED_FUNCTION_1_164(&qword_280E40F40);
      }

      v24 = sub_217007CA4();
      __swift_project_value_buffer(v24, qword_280E40F48);
      v25 = sub_217007C84();
      v26 = sub_21700EDA4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_43();
        *v27 = 0;
        _os_log_impl(&dword_216679000, v25, v26, "Forcing reload of JavaScript bundle.", v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      sub_216B88994();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1870, &unk_21703F4D0);
    v28 = sub_21700E244();
    sub_21700EA44();
    v29 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v29);
    sub_216681B04(v20, v17, &qword_27CAB94C8, &qword_2170506D0);
    v30 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v23;
    v32[5] = a2;
    sub_2166C122C(v17, v32 + v30);
    *(v32 + v31) = v28;

    sub_21677BBA0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1870, &unk_21703F4D0);
    sub_216BE16E8();
    swift_allocError();
    v28 = sub_21700E1E4();
  }

  sub_216697664(v20, &qword_27CAB94C8, &qword_2170506D0);
  return v28;
}

uint64_t sub_2166BFD94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8, &qword_2170506D0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_217007C24();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

void *sub_2166BFEAC()
{
  v1 = v0;
  v2 = *v0;
  *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken) = 0;
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_networkPathEvaluator) = result;
    v4 = OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_networkPathEvaluator;
    v5 = [result path];
    [v5 status];

    swift_beginAccess();
    sub_217007DA4();
    swift_endAccess();
    v6 = *(v1 + v4);
    swift_getKeyPath();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v9 = v6;
    v10 = sub_217005D64();

    v11 = *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken);
    *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken) = v10;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166C0088()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166C00C0()
{

  return swift_deallocObject();
}

uint64_t sub_2166C00F8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests;
  swift_beginAccess();

  MEMORY[0x21CE9F610](v4);
  sub_2166C0198(*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21700E8C4();
  return swift_endAccess();
}

uint64_t sub_2166C01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0, &unk_21701FA40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
    (*(v7 + 16))(v10, a2, v6);
    sub_21700EA34();

    v17 = sub_21700EA24();
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = a4;
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v7 + 32))(v20 + v18, v10, v6);
    *(v20 + v19) = v15;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_21677BBA0();
  }

  return result;
}

uint64_t sub_2166C03EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0, &unk_21701FA40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2166C04E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_21700E874();
  }

  return result;
}

uint64_t sub_2166C0514(uint64_t (*a1)(void))
{
  a1(0);
  sub_21700D4D4();
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  return v2;
}

double sub_2166C0578@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 112);
  v14 = *(v1 + 96);
  v15 = v5;
  v6 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v6;
  v7 = *(v3 + 16);
  sub_216681B64(&v12, &v11, &qword_27CAC5980, &qword_217035260);
  os_unfair_lock_unlock(v7);

  v8 = v13;
  *a1 = v12;
  a1[1] = v8;
  result = *&v14;
  v10 = v15;
  a1[2] = v14;
  a1[3] = v10;
  return result;
}

_OWORD *OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 296) = a1;
  *(v2 - 288) = a2;

  return sub_2166EF9C4((v2 - 296), (v2 - 328));
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1)
{
  v4 = v2 + *(a1 + 36);

  return sub_2168EB090(v1, v4);
}

uint64_t OUTLINED_FUNCTION_39_12(uint64_t a1)
{
  v4 = (v2 + *(a1 + 20));
  *v4 = *(v3 - 312);
  v4[1] = v1;
  __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_176_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_39_19(uint64_t a1)
{
  *(v1 - 384) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_39_21(char a1)
{
  *(v2 - 208) = v1;
  *(v2 - 232) = a1 & 1;
  sub_2166EF9C4((v2 - 232), (v2 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_39_26(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_39_28(unint64_t *a1)
{

  return sub_216C2BFE0(a1, v1);
}

_OWORD *OUTLINED_FUNCTION_39_31()
{

  return sub_2166EF9C4((v0 - 96), (v0 - 144));
}

uint64_t OUTLINED_FUNCTION_39_33()
{
  type metadata accessor for PosterLockup._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_39_37(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_691()
{
}

uint64_t sub_2166C0A20()
{
  swift_getKeyPath();
  sub_2166C0AF0(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager, &unk_217071670);
  sub_2170066D4();
}

uint64_t sub_2166C0AC4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2166C0A20();
  *v0 = result;
  return result;
}

uint64_t sub_2166C0AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_57_4()
{
  sub_2166EF9C4((v0 - 296), (v0 - 328));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  *(v1 + 744) = *(v6 + *(v5 + 28));
  *(v1 + 176) = v7;
  *(v1 + 184) = v4;
  *(v1 + 192) = v3;
  *(v1 + 200) = v2;
  return v0 + 48;
}

uint64_t OUTLINED_FUNCTION_57_6(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 96) = a5;

  return sub_21700D574();
}

uint64_t OUTLINED_FUNCTION_57_13()
{

  return sub_216697664(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_14()
{

  return sub_2166A6EA4();
}

uint64_t *OUTLINED_FUNCTION_57_19()
{
  *(v1 - 88) = v0;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 - 112));
}

uint64_t OUTLINED_FUNCTION_57_20(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

unint64_t sub_2166C0DB4(char a1)
{
  result = 0x6564696C67;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6373627553746F6ELL;
      break;
    case 3:
      result = 0x6269726373627573;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2166C0E74()
{
  result = qword_280E29CD8;
  if (!qword_280E29CD8)
  {
    sub_2166AF2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29CD8);
  }

  return result;
}

void OUTLINED_FUNCTION_51_0()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_51_2()
{
  *(v0 + 56) = *(v1 - 88);

  return sub_21700E094();
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_21700D244();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_2167B7D58(v0, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_51_6(uint64_t a1)
{

  return sub_2166C2CB0();
}

void OUTLINED_FUNCTION_51_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_51_13(uint64_t a1, uint64_t a2)
{

  return sub_216DDA0F4(v2, a2);
}

_OWORD *OUTLINED_FUNCTION_51_15()
{

  return sub_2166EF9C4((v0 - 144), (v0 - 96));
}

uint64_t OUTLINED_FUNCTION_51_16()
{
  type metadata accessor for PosterLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v3 = (v0 + *(v1 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *(v1 + 24));
  *v4 = 0;
  v4[1] = 0;

  return type metadata accessor for AnyAction(0);
}

uint64_t OUTLINED_FUNCTION_51_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_216FC320C();
}

uint64_t sub_2166C10E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2166C1150()
{
  swift_getKeyPath();
  sub_2166C0AF0(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager, &unk_217071670);
  sub_2170066D4();

  v1 = *(v0 + 48);

  return v1;
}

id sub_2166C1200()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2166C1150();
  *v0 = result;
  return result;
}

uint64_t sub_2166C122C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8, &qword_2170506D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C129C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2166C1310@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2166C129C();
  *a1 = result & 1;
  return result;
}

void sub_2166C1368(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD188, &qword_217029E88);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217013D90;
  *(v2 + 32) = 256;
  v3 = v2 + 32;
  v16 = v2;
  if (a1)
  {
    v4 = sub_2166C1150();
    v5 = [v4 allowsMusicSubscription];

    if (v5)
    {
LABEL_27:

      sub_2166C174C(v2);
      return;
    }

    v6 = *(v2 + 16);
    if (!v6)
    {
      v7 = 0;
LABEL_26:
      sub_216DD3AC8(v7);
      v2 = v16;
      goto LABEL_27;
    }
  }

  else
  {
    v6 = 2;
  }

  v7 = 0;
  while (1)
  {
    if (v7 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    if ((*(v3 + v7) & 1) == 0)
    {
      break;
    }

    v8 = sub_21700F7D4();

    if (v8)
    {
      goto LABEL_13;
    }

    if (v6 == ++v7)
    {
      v7 = *(v2 + 16);
      goto LABEL_26;
    }
  }

LABEL_13:
  v9 = *(v2 + 16);
  if (v9 - 1 == v7)
  {
    goto LABEL_26;
  }

  v10 = v7 + 33;
  while (1)
  {
    v11 = v10 - 32;
    if (v10 - 32 >= v9)
    {
      break;
    }

    if (*(v2 + v10) == 1 && (sub_21700F7D4() & 1) == 0)
    {
      if (v11 != v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v12 = *(v2 + 16);
        if (v7 >= v12)
        {
          goto LABEL_33;
        }

        if (v11 >= v12)
        {
          goto LABEL_34;
        }

        v13 = *(v3 + v7);
        *(v3 + v7) = *(v2 + v10);
        *(v2 + v10) = v13;
      }

      ++v7;
    }

    v9 = *(v2 + 16);
    v14 = v10 + 1;
    v15 = v10 - 31;
    ++v10;
    if (v15 == v9)
    {
      v16 = v2;
      if ((v14 - 32) < v7)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2166C1594(uint64_t a1)
{

  sub_21700E224();
}

uint64_t sub_2166C15D8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21700D574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  sub_21700D4D4();
  sub_21700E094();
  (*(v4 + 16))(v6, v9, v3);
  sub_21700D844();
  swift_allocObject();
  v10 = sub_21700D834();
  sub_2166C25D8();
  result = (*(v4 + 8))(v9, v3);
  *a2 = v10;
  return result;
}

uint64_t sub_2166C174C(uint64_t a1)
{
  v3 = sub_21700DF14();
  v4 = sub_2166C18AC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_2166C1994(v7, sub_2166C1A48, v8);
  }
}

void sub_2166C1840()
{
  OUTLINED_FUNCTION_0_0();
  sub_216F0FE50();
  *v0 = v1;
}

BOOL sub_2166C186C(void *a1)
{
  v1 = sub_21700E514();
  v3 = sub_2166C1A64(v1, v2);

  return (v3 & 1) == 0;
}

uint64_t sub_2166C18AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x7972617262696CLL;
      }

      else
      {
        v5 = 0x676F6C61746163;
      }

      if (*v4)
      {
        v6 = 0x7972617262696CLL;
      }

      else
      {
        v6 = 0x676F6C61746163;
      }

      if (v5 == v6)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = sub_21700F7D4();
        swift_bridgeObjectRelease_n();
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2166C1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_180();
  sub_2166C0AF0(v3, v4, &unk_217071670);
  return sub_2170066C4();
}

id sub_2166C1A64(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = sub_2166C1ADC(a1, a2, result);

    return (v6 != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2166C1ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();
  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_2166C1B24(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  sub_21700DF14();
}

uint64_t sub_2166C1BB8(char a1)
{
  result = 0x616974696E696E75;
  switch(a1)
  {
    case 1:
      result = 0x676E697461647075;
      break;
    case 2:
      result = 0x6F5464656C696166;
      break;
    case 3:
      result = 0x7964616572;
      break;
    case 4:
      result = 0x69446C6169636F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_164_0()
{
}

uint64_t OUTLINED_FUNCTION_164_1()
{
  *(v1 - 136) = *(v0 + 152);
}

uint64_t sub_2166C1D2C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state) = a1;
  return sub_2166C1D44(v2);
}

uint64_t sub_2166C1D44(char a1)
{
  v2 = v1;
  v4 = sub_21700B5A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v10 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state;
  v11 = v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
  v12 = sub_2166C1BB8(a1);
  v14 = v13;
  if (v12 != sub_2166C1BB8(v11) || v14 != v15)
  {
    v17 = sub_21700F7D4();

    if (v17)
    {
      return result;
    }

    v61 = v8;
    v56 = v10;
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E73BC0);
    v20 = v2;
    v21 = sub_217007C84();
    v22 = sub_21700EDA4();
    v55 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v65 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446466;
      v26 = sub_2166A85FC(v12, v14, &aBlock);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2082;
      v27 = v56;
      v28 = sub_2166C1BB8(v2[v56]);
      v30 = sub_2166A85FC(v28, v29, &aBlock);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_216679000, v21, v22, "State changed from: %{public}s to %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v25, -1, -1);
      v31 = v24;
      v5 = v65;
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    else
    {

      v27 = v56;
    }

    v33 = sub_2166C1BB8(v2[v27]) == 0x6F5464656C696166 && v32 == 0xEC00000064616F4CLL;
    v34 = v61;
    if (v33)
    {

      v36 = v55;
    }

    else
    {
      v35 = sub_21700F7D4();

      v36 = v55;
      if ((v35 & 1) == 0)
      {
LABEL_22:
        v37 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingStatePromises;
        swift_beginAccess();
        if (sub_2166BF3C8(*&v36[v37]))
        {
          if (sub_2166C1BB8(v2[v27]) == 0x676E697461647075 && v38 == 0xE800000000000000)
          {
LABEL_37:

            goto LABEL_38;
          }

          v40 = sub_21700F7D4();

          if ((v40 & 1) == 0)
          {
            v64 = v2[v27];
            v65 = *&v36[v37];
            v41 = sub_2166BF3C8(v65);
            if (v41)
            {
              v42 = v41;
              v53 = v37;
              v63 = v4;
              v54 = v2;
              result = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
              v62 = result;
              if (v42 < 1)
              {
                __break(1u);
                return result;
              }

              v58 = v70;
              v59 = v65 & 0xC000000000000001;
              v57 = (v5 + 8);
              sub_21700DF14();
              v43 = 0;
              v60 = v42;
              v61 = v7;
              do
              {
                if (v59)
                {
                  v44 = MEMORY[0x21CEA0220](v43, v65);
                }

                else
                {
                  v44 = *(v65 + 8 * v43 + 32);
                }

                ++v43;
                v45 = sub_21700EE84();
                v46 = swift_allocObject();
                *(v46 + 16) = v44;
                *(v46 + 24) = v64;
                v70[2] = sub_216CB5E04;
                v70[3] = v46;
                aBlock = MEMORY[0x277D85DD0];
                v69 = 1107296256;
                v70[0] = sub_2169F0990;
                v70[1] = &block_descriptor_35;
                v47 = _Block_copy(&aBlock);

                v48 = v66;
                sub_21700B5C4();
                aBlock = MEMORY[0x277D84F90];
                sub_216CB5E10();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
                sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
                v49 = v67;
                v50 = v63;
                sub_21700F214();
                MEMORY[0x21CE9FCB0](0, v48, v49, v47);
                _Block_release(v47);

                (*v57)(v49, v50);
                (*(v34 + 8))(v48, v61);
              }

              while (v60 != v43);

              v2 = v54;
              v27 = v56;
              v36 = v55;
              v37 = v53;
            }

            *&v36[v37] = MEMORY[0x277D84F90];
            goto LABEL_37;
          }
        }

LABEL_38:
        aBlock = sub_2166C1BB8(v2[v27]);
        v69 = v51;
        sub_21700CC34();
      }
    }

    sub_216CB040C();
    sub_216F07EC8();

    goto LABEL_22;
  }
}

uint64_t sub_2166C24A4()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for GridItemSpacing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_2166C2530(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_21702B1C0);
}

unint64_t sub_2166C2594(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_2166C25D8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_280E38808 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:sel_reportBecameActive name:qword_280E73C70 object:0];

  v3 = [v1 defaultCenter];
  v4 = v3;
  if (qword_280E38800 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 addObserver:v0 selector:sel_reportResignedActive name:qword_280E73C68 object:0];
}

uint64_t sub_2166C2718()
{
  OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_47_2();
  v1();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_32_29();
}

char *sub_2166C27C0@<X0>(char **a2@<X8>)
{
  type metadata accessor for SocialBadgingRequestCoordinator(0);
  swift_allocObject();

  result = sub_2166C291C(v3);
  *a2 = result;
  return result;
}

double OUTLINED_FUNCTION_102_4()
{

  return sub_2166CBA00(v1, v0 + 1280);
}

uint64_t OUTLINED_FUNCTION_102_5()
{

  return sub_216697664(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_102_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2166D9530(a1, a2, a3, &unk_21706321C);
}

uint64_t OUTLINED_FUNCTION_102_8()
{
  v5 = *(v3 - 360);

  return sub_216681B04(v2, v5, v0, v1);
}

__n128 *OUTLINED_FUNCTION_102_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(result->n128_u64 + v2) = 1;
  return result;
}

char *sub_2166C291C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A78, &unk_21703F850);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  if (qword_280E29C60 != -1)
  {
    OUTLINED_FUNCTION_147_3(&qword_280E29C60);
  }

  v12 = qword_280E739E8;
  *(v2 + 2) = qword_280E739E8;
  *(v2 + 5) = 0;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = v12;
  v15 = swift_slowAlloc();
  *(v13 + 16) = v15;
  *v15 = 0;
  *(v2 + 6) = v13;
  v16 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__updatedRequestDescriptors;
  v17 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1838, &qword_21703F3B0);
  sub_217007DA4();
  (*(v8 + 32))(&v2[v16], v11, v6);
  v18 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator_catalogMusicItemProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A98, &qword_21703F888);
  swift_allocObject();
  *&v2[v18] = sub_2166C3224(0);
  *&v2[OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__pendingIdentifiers] = v17;
  v19 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__badgingMap;
  v20 = type metadata accessor for SocialBadgingMap(0);
  __swift_storeEnumTagSinglePayload(&v2[v19], 1, 1, v20);
  *(v2 + 3) = a1;
  type metadata accessor for SocialBadgingMapRequestCoordinator(0);
  sub_21700D4D4();

  sub_21700E094();
  *(v2 + 4) = v26;
  v21 = sub_21700EA74();
  OUTLINED_FUNCTION_184_0(v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
  OUTLINED_FUNCTION_70_0();

  *(v2 + 5) = v22;

  return v2;
}

uint64_t sub_2166C2BF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_142_1()
{
}

uint64_t OUTLINED_FUNCTION_142_2()
{

  return sub_2166A6EA4();
}

uint64_t sub_2166C2CB0()
{
  OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_50();
  (*(v4 + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_32_29();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return sub_21700D194();
}

uint64_t OUTLINED_FUNCTION_111_3(uint64_t a1, uint64_t a2)
{

  return sub_2166A6F60(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return sub_2169BBB3C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_111_6@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X2>)
{

  return sub_2169C3618(v2, v3 + a1, a2);
}

uint64_t OUTLINED_FUNCTION_111_7()
{
}

uint64_t sub_2166C2E44()
{
  result = sub_21700E4D4();
  qword_280E739E8 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v1 = v0[4];
  v0[8] = v1[7];
  result = v1[6];
  v0[2] = v1[5];
  v0[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_6(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, type metadata accessor for TopSearchLockup);
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_76_8()
{
}

void OUTLINED_FUNCTION_76_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_76_11()
{
}

void OUTLINED_FUNCTION_76_12(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_76_13()
{
}

uint64_t OUTLINED_FUNCTION_76_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_84_8()
{
  v4 = (v0 + *(v2 + 24));
  *v4 = *(v3 - 232);
  v4[1] = v1;
  *(v0 + *(v2 + 28)) = *(v3 - 216);
}

uint64_t OUTLINED_FUNCTION_84_9()
{

  return sub_2168CBAB0(v0, type metadata accessor for RecentSearchLockup);
}

uint64_t OUTLINED_FUNCTION_84_15()
{

  return sub_2166A6EA4();
}

uint64_t sub_2166C3224(char a1)
{
  swift_defaultActor_initialize();
  sub_217006FE4();
  sub_2166C32C0();
  *(v1 + 112) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AC0, &qword_21703F8C0);
  swift_allocObject();
  *(v1 + 120) = sub_2166C4458(1000);
  *(v1 + 128) = a1;
  return v1;
}

unint64_t sub_2166C32C0()
{
  result = qword_280E2A408;
  if (!qword_280E2A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A408);
  }

  return result;
}

void sub_2166C3314()
{
  OUTLINED_FUNCTION_49();
  v78 = v1;
  v79 = v0;
  v80 = v2;
  v77 = v3;
  swift_getOpaqueTypeMetadata2();
  v4 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_21_12();
  v5 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v5);
  OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_21_12();
  v6 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v6);
  v81 = v4;
  v82 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_21_12();
  v7 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v7);
  v8 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v8);
  v10 = OUTLINED_FUNCTION_45_4(0, v9);
  OUTLINED_FUNCTION_1();
  v76 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v15 = OUTLINED_FUNCTION_36_2();
  v81 = v10;
  v82 = v15;
  v16 = v15;
  v75 = v15;
  v17 = OUTLINED_FUNCTION_21_12();
  v81 = v10;
  v82 = v16;
  v18 = OUTLINED_FUNCTION_38_3();
  v81 = v17;
  v82 = v18;
  OUTLINED_FUNCTION_21_12();
  v81 = v17;
  v82 = v18;
  v19 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v19);
  v20 = OUTLINED_FUNCTION_19_12();
  v81 = v18;
  v82 = v20;
  OUTLINED_FUNCTION_21_12();
  v21 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v21);
  v22 = OUTLINED_FUNCTION_19_12();
  v81 = v18;
  v82 = v22;
  OUTLINED_FUNCTION_21_12();
  v23 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v23);
  v24 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v24);
  v26 = OUTLINED_FUNCTION_45_4(0, v25);
  v72 = v26;
  v74 = *(v26 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v30 = OUTLINED_FUNCTION_36_2();
  v81 = v26;
  v82 = v30;
  v31 = v30;
  v73 = v30;
  v32 = OUTLINED_FUNCTION_21_12();
  v81 = v26;
  v82 = v31;
  v33 = OUTLINED_FUNCTION_38_3();
  v81 = v32;
  v82 = v33;
  OUTLINED_FUNCTION_21_12();
  v81 = v32;
  v82 = v33;
  v34 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v34);
  v35 = OUTLINED_FUNCTION_19_12();
  v81 = v33;
  v82 = v35;
  OUTLINED_FUNCTION_21_12();
  v36 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v36);
  v37 = OUTLINED_FUNCTION_19_12();
  v81 = v33;
  v82 = v37;
  OUTLINED_FUNCTION_21_12();
  v38 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v38);
  v39 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v39);
  v41 = OUTLINED_FUNCTION_45_4(0, v40);
  v68 = v41;
  v71 = *(v41 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  v70 = v43;
  v44 = OUTLINED_FUNCTION_36_2();
  v81 = v41;
  v82 = v44;
  v69 = v44;
  OUTLINED_FUNCTION_21_12();
  v45 = OUTLINED_FUNCTION_19_12();
  v81 = v33;
  v82 = v45;
  v46 = OUTLINED_FUNCTION_21_12();
  v81 = v33;
  v82 = v45;
  v47 = OUTLINED_FUNCTION_38_3();
  v81 = v46;
  v82 = v47;
  v48 = OUTLINED_FUNCTION_21_12();
  v81 = v46;
  v82 = v47;
  v49 = OUTLINED_FUNCTION_38_3();
  v50 = OUTLINED_FUNCTION_18_5(v49);
  v81 = v48;
  v82 = v49;
  v51 = OUTLINED_FUNCTION_38_3();
  v81 = v50;
  v82 = v51;
  v52 = OUTLINED_FUNCTION_21_12();
  v81 = v50;
  v82 = v51;
  v53 = OUTLINED_FUNCTION_38_3();
  v54 = OUTLINED_FUNCTION_18_5(v53);
  v81 = v52;
  v82 = v53;
  v55 = OUTLINED_FUNCTION_38_3();
  v81 = v54;
  v82 = v55;
  v56 = OUTLINED_FUNCTION_21_12();
  v67 = v56;
  v81 = v54;
  v82 = v55;
  v57 = OUTLINED_FUNCTION_38_3();
  v81 = v56;
  v82 = v57;
  v58 = OUTLINED_FUNCTION_45_4(0, &v81);
  OUTLINED_FUNCTION_1();
  v60 = v59;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  v63 = &v67 - v62;
  View.registerHomePPTs<A, B>(pageProvider:)();
  View.registerBrowsePPTs<A, B>(pageProvider:)();
  (*(v76 + 8))(v14, v10);
  v64 = v70;
  v65 = v72;
  View.registerRadioPPTs<A, B>(pageProvider:)();
  (*(v74 + 8))(v29, v65);
  v66 = v68;
  View.registerArtistDetailPPTs<A, B>(pageProvider:)();
  (*(v71 + 8))(v64, v66);
  v81 = v67;
  v82 = v57;
  OUTLINED_FUNCTION_38_3();
  View.registerReplayPPTs<A, B>(pageProvider:)();
  (*(v60 + 8))(v63, v58);
  OUTLINED_FUNCTION_26();
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  *(v3 - 128) = v2;
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;

  return sub_2170087B4();
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_22_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_2166A6E54(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_22_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 168);

  return sub_216816338(v16, type metadata accessor for NoticeAction);
}

uint64_t OUTLINED_FUNCTION_22_33()
{

  return sub_2166997CC(v1, v0, v2);
}

void OUTLINED_FUNCTION_22_34()
{
  v2 = *(v0 + 16) + 1;

  sub_216938A64(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_22_36@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = v1 - a1;

  return sub_21700CF34();
}

uint64_t OUTLINED_FUNCTION_22_40()
{
}

uint64_t OUTLINED_FUNCTION_22_41(uint64_t a1)
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_22_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_43()
{
  v3 = *(v0 + v1);
  v4 = *(v0 + v1 + 8);
  v5 = *(v0 + v1 + 16);
  v6 = *(v0 + v1 + 24);
  v7 = *(v0 + v1 + 32);

  return sub_216838830(v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_22_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_22_47()
{

  return sub_216EF0D64((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_22_51(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_21698F234(va, v2 + 16);
}

__n128 OUTLINED_FUNCTION_22_53@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 128);
  v5 = *(v2 - 112);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 96);
  return result;
}

void OUTLINED_FUNCTION_22_54()
{

  sub_216DF0D70();
}

uint64_t OUTLINED_FUNCTION_22_55(uint64_t a1)
{

  return sub_216697664(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_57@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 116) = a1;
  *(v3 - 128) = a2;

  return sub_2170067A4();
}

uint64_t OUTLINED_FUNCTION_22_58(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_59()
{
}

uint64_t OUTLINED_FUNCTION_22_63(uint64_t a1)
{

  return sub_21700F554();
}

uint64_t OUTLINED_FUNCTION_22_67()
{
  type metadata accessor for SuperHeroLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2166C3E80(uint64_t a1)
{
  result = sub_217007CA4();
  if (v2 <= 0x3F)
  {
    result = sub_21700EF04();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void View.registerHomePPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_44_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v71 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v10 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v12 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = OUTLINED_FUNCTION_9_16(v14, v68);
  OUTLINED_FUNCTION_15_4(v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_7(v17, v69);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_3_25(v19, v70);
  sub_2166C74D4(v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v25, v26, v27, v1, v28);
  sub_2166C6ED4(v0);
  sub_2166C74D4(0x4031000000000000, 4, 0, 0, v0);
  v29 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v29, v30, v31, v71, v32);
  sub_2166C6ED4(v0);
  v33 = OUTLINED_FUNCTION_31_11();
  v34(v33);
  OUTLINED_FUNCTION_47_4();
  sub_2166C74D4(v35, v36, v37, 0, v38);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v39 = OUTLINED_FUNCTION_28_11();
  v40(v39);
  v41 = OUTLINED_FUNCTION_6_17();
  sub_2166C74D4(v41, v42, v43, 0, v44);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v45 = OUTLINED_FUNCTION_33_8();
  v46(v45);
  v47 = OUTLINED_FUNCTION_7_10();
  sub_2166C74D4(v47, v48, v49, 1, v50);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v51 = OUTLINED_FUNCTION_32_6();
  v52(v51);
  sub_2166C74D4(0x4030000000000000, 5, 0, 1, v0);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v53 = OUTLINED_FUNCTION_29_6();
  v54(v53);
  OUTLINED_FUNCTION_47_4();
  sub_2166C74D4(v55, v56, v57, 1, v58);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v59 = OUTLINED_FUNCTION_30_2();
  v60(v59);
  v61 = OUTLINED_FUNCTION_6_17();
  sub_2166C74D4(v61, v62, v63, 1, v64);
  v65 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v65);
  sub_2166C6ED4(v0);
  v66 = OUTLINED_FUNCTION_35_6();
  v67(v66);
  OUTLINED_FUNCTION_26();
}

uint64_t type metadata accessor for MusicUIPPT.Test(uint64_t a1)
{
  result = qword_280E46198;
  if (!qword_280E46198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166C4458(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880, &qword_21703F500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_217007C94();
  v7 = qword_280E2BC18;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *(v2 + v7) = v8;
  *v9 = 0;
  *(v2 + qword_280E2BBF8) = 1;
  *(v2 + qword_280E2BCA0) = 0;
  sub_21700EED4();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18A0, &qword_21703F538);
  sub_2166C32C0();
  *(v2 + qword_280E2BC00) = sub_21700E384();
  v10 = sub_217006FE4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  swift_allocObject();
  *(v2 + 24) = sub_2166C4CEC(0, 0, v6);
  swift_weakAssign();
  swift_weakAssign();
  sub_2166C4E68();
  return v2;
}

void sub_2166C4658(uint64_t a1)
{
  sub_2166CE230();
  if (v1 <= 0x3F)
  {
    sub_217005EF4();
    if (v2 <= 0x3F)
    {
      sub_217008144();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_31_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 232) = *(a1 + a2);

  return sub_21700DF14();
}

void OUTLINED_FUNCTION_31_19()
{
  v2 = *(v0 - 120);
  v3 = *(v2 + 16) + 1;

  sub_2169375D4(0, v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_25()
{
  v4 = *(v2 - 216);

  return sub_21695BCCC(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_31_26(uint64_t a1)
{
  v5 = *(v3 - 824);

  return sub_216681B04(a1, v5, v2, v1);
}

uint64_t OUTLINED_FUNCTION_31_27()
{

  return sub_2166997CC(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_31_30@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return type metadata accessor for StartSocialOnboardingAction(0);
}

uint64_t OUTLINED_FUNCTION_31_35(uint64_t result)
{
  *v1 = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_50(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_51@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_216683A80(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_56()
{
  type metadata accessor for HorizontalLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_31_58(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t sub_2166C4C0C(uint64_t a1)
{
  result = sub_21700F164();
  if (v2 <= 0x3F)
  {
    result = sub_21700F164();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2166C4CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v7 = *(*v3 + 136);
  v8 = sub_217006FE4();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  swift_weakInit();
  swift_weakInit();
  v3[2] = a1;
  v3[3] = a2;

  swift_beginAccess();
  sub_2166C4DF8(a3, v3 + v7);
  swift_endAccess();
  swift_weakAssign();
  swift_weakAssign();
  return v3;
}

uint64_t sub_2166C4DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880, &qword_21703F500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C4E68()
{
  v1 = v0;
  v2 = sub_21700B5A4();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21700B5E4();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700EF04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216685F4C(0, &qword_280E29C08, 0x277D85CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AC8, &qword_21703F8C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217015230;
  sub_21700EED4();
  sub_21700EEE4();
  sub_21700EEF4();
  aBlock[0] = v10;
  sub_2166C53B4(&qword_280E29C10, MEMORY[0x277D85298], MEMORY[0x277D852A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AD0, &unk_21703F8D0);
  sub_2166D9530(&unk_280E29E00, &qword_27CAC1AD0, &unk_21703F8D0, MEMORY[0x277D83970]);
  sub_21700F214();
  v11 = sub_21700EF14();
  (*(v7 + 8))(v9, v6);
  v12 = qword_280E2BCA0;
  *(v1 + qword_280E2BCA0) = v11;
  result = swift_unknownObjectRelease();
  if (*(v1 + v12))
  {
    swift_getObjectType();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_216ABE8E0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_18;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_21700B5C4();
    v16 = v19;
    sub_2166C5440();
    sub_21700EF34();
    _Block_release(v15);
    swift_unknownObjectRelease();
    (*(v21 + 8))(v16, v22);
    (*(v18 + 8))(v5, v20);

    if (*(v1 + v12))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_21700EF54();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2166C52E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 0xEA00000000006C6CLL;
      v4 = 0x6F72635374736146;
    }

    else
    {
      v5 = (a1 | a2) == 0;
      if (a1 | a2)
      {
        v4 = 0xD000000000000013;
      }

      else
      {
        v4 = 0x697473696C616552;
      }

      if (v5)
      {
        v3 = 0xEF6C6C6F72635363;
      }

      else
      {
        v3 = 0x8000000217081D00;
      }
    }
  }

  else
  {
    v3 = 0xEC0000006C6C6F72;
    v4 = 0x63537261656E694CLL;
  }

  MEMORY[0x21CE9F490](v4, v3);
}

uint64_t sub_2166C53B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166C53FC()
{
  type metadata accessor for MusicUIPPT.Test(0);
  result = sub_21700E384();
  qword_280E73DC8 = result;
  return result;
}

uint64_t sub_2166C5440()
{
  sub_21700B5A4();
  sub_2166C53B4(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
  return sub_21700F214();
}

uint64_t sub_2166C552C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicUIPPT.Test(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2166C55A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_217005EF4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_217008144();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2166C566C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2166AB4A0;
  v5 = OUTLINED_FUNCTION_4_25();

  return sub_2166C583C(v5, v6, v7, v1);
}

void sub_2166C5708()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8, qword_21703E820);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A515D0(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18, qword_21703E820);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_2166C5F48();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_2166C583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_217005974();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AA0, &unk_21703F8A0);
  v4[10] = swift_task_alloc();
  v6 = sub_21700EFA4();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166C59A8, 0, 0);
}

uint64_t sub_2166C59A8()
{
  OUTLINED_FUNCTION_31();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280E29C60 != -1)
  {
    OUTLINED_FUNCTION_147_3(&qword_280E29C60);
  }

  sub_21700EFB4();

  sub_21700EF94();
  swift_beginAccess();
  OUTLINED_FUNCTION_136_1();
  sub_2166C53B4(v2, v3, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_120_5(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_2166C5AE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_217005EF4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_217008144();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(v5 + 320);
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_2166C5C18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166C5C78()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2166C5CD4()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2166C5D28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1)
{

  return sub_21700E9B4();
}

uint64_t OUTLINED_FUNCTION_119_5()
{
}

uint64_t sub_2166C5E40()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[232] = v1;
  v2[233] = v4;
  v2[234] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 2136) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2166C5F48()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD268, &qword_217029F90);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v0 = *v0;
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_20_22();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = OUTLINED_FUNCTION_67_7();
    v13 = type metadata accessor for MusicUIPPT.Test(v12);
    v14 = OUTLINED_FUNCTION_36(v13);
    OUTLINED_FUNCTION_74_9(v14, v0 + *(v15 + 72) * v1);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_2166C6070()
{
  OUTLINED_FUNCTION_8_22();
  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Non-UI Bootstrap complete.");
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  v6 = v0[233];
  v7 = v0[264];

  sub_2166A8544();
  sub_2166997CC(v7, &qword_27CAB94C8, &qword_2170506D0);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_2166C61E8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2166C62F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166C6358()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2166C63AC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

void sub_2166C6400(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  v7 = v6(0);
  OUTLINED_FUNCTION_36(v7);
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v8;
  }
}

uint64_t sub_2166C6480()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = *(v0 + 48);
  sub_21700E224();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2166C64F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v42 = a3;
  v43 = a4;
  v48 = *a2;
  v9 = type metadata accessor for MusicUIPPT.Test(0);
  v10 = v9 - 8;
  v45 = *(v9 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217008144();
  v38 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  v52 = a4;
  v47 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v49 = v16;
  MEMORY[0x28223BE20](v17);
  v44 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v46 = &v36 - v21;
  v22 = *(v10 + 36);
  v39 = a1;
  v40 = v22;
  (*(v13 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v22, v12, v20);
  OUTLINED_FUNCTION_2_173();
  v23 = v41;
  sub_2166C6A54(a1, v41, v24);
  v25 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v26 = (v14 + *(v45 + 80) + v25) & ~*(v45 + 80);
  v27 = swift_allocObject();
  v28 = v48;
  v29 = v42;
  v30 = v43;
  *(v27 + 2) = v42;
  *(v27 + 3) = v28[10];
  *(v27 + 4) = v28[11];
  *(v27 + 5) = v30;
  *(v27 + 6) = v28[12];
  *(v27 + 7) = v28[13];
  (*(v13 + 32))(&v27[v25], v37, v38);
  sub_2166C6CFC(v23, &v27[v26]);
  *&v27[(v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  v31 = v44;
  sub_21700AA44();

  v51 = v29;
  v52 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v46;
  sub_2166C24DC(v31, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v49 + 8);
  v34(v31, OpaqueTypeMetadata2);
  sub_2166C24DC(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v33, OpaqueTypeMetadata2);
}