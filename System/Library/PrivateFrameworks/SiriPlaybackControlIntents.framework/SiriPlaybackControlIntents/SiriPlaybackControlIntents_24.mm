uint64_t sub_268B09848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268B098E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_22(uint64_t a1)
{
  *(v3 - 176) = a1;
  *(v3 - 168) = v2;
  *(v3 - 200) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_22()
{

  return sub_268B368C4();
}

void OUTLINED_FUNCTION_24_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_28_21()
{
  v2 = *(v0 - 136);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 160, v2);
}

uint64_t OUTLINED_FUNCTION_30_18()
{

  return sub_268B34A54();
}

uint64_t OUTLINED_FUNCTION_32_14()
{
  *(v1 - 120) = v0;
}

BOOL OUTLINED_FUNCTION_33_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return MEMORY[0x2821BBCC0](v1 - 120, v0);
}

uint64_t OUTLINED_FUNCTION_35_15()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 200, v0);
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1)
{

  return MEMORY[0x2821BBCB8](v3 - 120, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return sub_268B37B84();
}

uint64_t OUTLINED_FUNCTION_47_10()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49_9@<X0>(uint64_t a1@<X8>)
{
  v5[6] = v2;
  v5[2] = a1;
  v5[21] = v4;
  v5[22] = v3;
  v5[18] = v1;
  sub_2688E6514((v6 - 168), (v5 + 7));
  v5[12] = *(v6 - 296);
  sub_2688E6514((v6 - 208), (v5 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm((v6 - 288));
  __swift_destroy_boxed_opaque_existential_0Tm((v6 - 248));
}

void OUTLINED_FUNCTION_52_12(uint64_t a1@<X8>)
{
  v1[3] = v2;
  v1[4] = a1;
  *v1 = v3;
}

uint64_t OUTLINED_FUNCTION_55_11(uint64_t a1)
{
  *(v3 - 176) = a1;
  *(v3 - 168) = v2;
  *(v3 - 200) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_7()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 200, v0);
}

uint64_t OUTLINED_FUNCTION_61_8()
{
}

uint64_t OUTLINED_FUNCTION_62_7()
{

  return type metadata accessor for AnalyticsServiceImpl();
}

uint64_t OUTLINED_FUNCTION_63_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_65_7(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2688F4354(a1, v4, v5, a4);
}

BOOL OUTLINED_FUNCTION_66_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_68_9()
{
  *(v1 - 120) = v0;
}

void OUTLINED_FUNCTION_71_7(uint64_t a1@<X8>)
{
  v1[3] = v2;
  v1[4] = a1;
  *v1 = v3;
}

uint64_t OUTLINED_FUNCTION_72_6()
{
  *(v3 - 256) = v0;
  *(v3 - 264) = v1;
  *(v3 - 288) = v2;

  return type metadata accessor for AnalyticsServiceImpl();
}

uint64_t OUTLINED_FUNCTION_76_7()
{

  return sub_268B34A54();
}

void *OUTLINED_FUNCTION_77_8()
{
  v5 = *v3;

  return sub_26892D53C(v2, (v0 + 88), v5, (v0 + 8), v1);
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1)
{
  *(v1 - 296) = a1;

  return sub_268B36C54();
}

uint64_t OUTLINED_FUNCTION_79_9()
{
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 72) = v0;

  return sub_2688E6514((v3 - 120), v1 + 32);
}

BOOL OUTLINED_FUNCTION_80_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_85_8()
{
  v2 = *(v0 - 264);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 288, v2);
}

uint64_t OUTLINED_FUNCTION_86_8()
{
  v2 = *(v0 + 72);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v2);
}

uint64_t OUTLINED_FUNCTION_87_7(uint64_t a1)
{
  *(v1 + 16) = a1;
  v4 = *(v2 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v2 - 128, v4);
}

uint64_t OUTLINED_FUNCTION_88_7()
{
  v2 = *(v0 + 272);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v2);
}

void OUTLINED_FUNCTION_89_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_90_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_268B349A4();
}

uint64_t OUTLINED_FUNCTION_92_8()
{

  return sub_268B36F44();
}

uint64_t OUTLINED_FUNCTION_93_9(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2688F4354(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_94_7()
{

  return type metadata accessor for AnalyticsServiceImpl();
}

uint64_t OUTLINED_FUNCTION_95_7(__int128 *a1)
{
  sub_2688E6514(a1, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v3 - 240));
  return v1;
}

Swift::String_optional __swiftcall UsoTask_pause_common_MediaItem.verb()()
{
  v0 = 0x6573756170;
  v1 = 0xE500000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_pause_common_MediaItem.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268B0A208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0A25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0A2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0A304(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0A358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0A3AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0A400(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0A454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0A4B8(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0A50C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0A570(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0A5D4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0A638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0A69C(uint64_t a1)
{
  result = sub_268B0A748(&qword_2802A8CD0, &protocol conformance descriptor for UsoTask_pause_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0A748(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B360D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_UserEntity.verb()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B0A7A4(uint64_t a1)
{
  result = sub_268B0A850(&qword_2802A8CE8, &protocol conformance descriptor for UsoTask_noVerb_common_UserEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0A850(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0A894(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0A8E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0A93C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0A990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0A9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0AA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0AA8C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0AAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0AB44(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0AB98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0ABFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0AC60(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0ACC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0AD2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = 0x6573616572636564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x6573616572636E69;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x8000000268B56230;
  v3 = UsoTask_setNumber_common_Setting.verb()();
  if (v3.value._object)
  {
    MEMORY[0x28223BE20](v3.value._countAndFlagsBits);
    v4 = sub_268ACD018();
    swift_setDeallocating();
    sub_268ACE684();

    if (v4 && sub_268B36524())
    {
      sub_2689BC4EC(a1);
    }
  }

  else
  {
    swift_setDeallocating();
    sub_268ACE684();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v6 = OUTLINED_FUNCTION_14_7();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

Swift::String_optional __swiftcall UsoTask_setNumber_common_Setting.verb()()
{
  if (sub_268B0AF38() == 3)
  {
    sub_268B36534();
    if (v6 && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
    {
      v3 = sub_26893E3F8(v1);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7628147;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_268B0AF38()
{
  v0 = sub_268A9EA48();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t sub_268B0AFA0@<X0>(uint64_t a2@<X8>)
{
  if (sub_268B36524())
  {
    sub_2689BB2D8(a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
    v4 = OUTLINED_FUNCTION_14_7();

    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_268B0B01C(uint64_t a1)
{
  if (!sub_268B36524())
  {
    return 7;
  }

  v1 = sub_2689BC188();

  return v1;
}

uint64_t sub_268B0B068@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_268B0AD2C(&v8 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v6 = __swift_getEnumTagSinglePayload(v4, 1, v5) == 1;
  result = sub_268B0B7C8(v4);
  *a1 = 2 * v6;
  return result;
}

uint64_t sub_268B0B1D8(uint64_t a1)
{
  result = sub_268B0B2A8(&qword_2802A8D00, &protocol conformance descriptor for UsoTask_setNumber_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0B2A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0B334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0B388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0B3DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0B430(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0B484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0B4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0B52C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0B580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0B5E4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0B638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0B69C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0B700(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0B764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B0B7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268B0B834(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D28, &unk_268B3D420);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FB0, &unk_268B3DF00);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - v20;
  sub_268B0C0C8(a1);
  sub_268B0C404(a1, v3);
  sub_268B0C7C8(a1);
  switch(*a1)
  {
    case 0x10:
      v55 = v10;
      v22 = type metadata accessor for MediaPlayerIntent(0);
      sub_26894D5AC(&a1[*(v22 + 52)], v21, &qword_2802A5FB0, &unk_268B3DF00);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
      if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
      {
        sub_26894DD8C(v21, &qword_2802A5FB0, &unk_268B3DF00);
      }

      else
      {
        sub_268B36654();
        v31 = v61;
        v32 = v62;
        OUTLINED_FUNCTION_70();
        (*(v33 + 8))(v21, v23);
        if ((v32 & 1) == 0)
        {
          [v3 setSpeedMagnitude_];
        }
      }

      [v3 setPlaybackSpeedType_];
      sub_26894D5AC(a2, v18, &qword_2802A5D28, &unk_268B3D420);
      v34 = sub_268B35494();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v34);
      v10 = v55;
      if (EnumTagSinglePayload == 1)
      {
        sub_26894DD8C(v18, &qword_2802A5D28, &unk_268B3D420);
        goto LABEL_7;
      }

      v36 = sub_268A40454();
      OUTLINED_FUNCTION_70();
      (*(v37 + 8))(v18, v34);
      if (!v36)
      {
        goto LABEL_7;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v38 = __swift_project_value_buffer(v6, qword_2802CDA10);
      v39 = *(v7 + 16);
      v54 = v38;
      v53 = v39;
      (v39)(v15);
      v40 = sub_268B37A34();
      v41 = sub_268B37ED4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v40, v41, "SetPlaybackSpeedIntent#amend Handling USO/Pommes parse in MediaPlayerIntent", v42, 2u);
        MEMORY[0x26D6266E0](v42, -1, -1);
      }

      v43 = *(v7 + 8);
      v43(v15, v6);

      sub_268B35DC4();

      sub_26894D5AC(v65, v56, &byte_2802A6450, &byte_268B3BE10);
      if (!v57)
      {
        sub_26894DD8C(v65, &byte_2802A6450, &byte_268B3BE10);

        sub_26894DD8C(v56, &byte_2802A6450, &byte_268B3BE10);
        v58 = 0u;
        v59 = 0u;
        v60 = 0;
LABEL_31:
        sub_26894DD8C(&v58, &qword_2802A6100, &qword_268B3E7F8);
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        goto LABEL_30;
      }

      if (!*(&v59 + 1))
      {
LABEL_30:
        sub_26894DD8C(v65, &byte_2802A6450, &byte_268B3BE10);

        goto LABEL_31;
      }

      sub_2688E6514(&v58, &v61);
      v44 = v63;
      v45 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      if (sub_268A5D7B0(v44, v45))
      {
        [v3 setRequestedPlaybackSpeedUnit_];
        v53(v13, v54, v6);
        v46 = v3;
        v47 = sub_268B37A34();
        v48 = sub_268B37ED4();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v54 = v47;
          v50 = v46;
          v51 = v49;
          *v49 = 134217984;
          *(v49 + 4) = [v50 requestedPlaybackSpeedUnit];

          v47 = v54;
          _os_log_impl(&dword_2688BB000, v54, v48, "SetPlaybackSpeedIntent#amend Amended requestedPlaybackSpeedUnit as %ld", v51, 0xCu);
          MEMORY[0x26D6266E0](v51, -1, -1);
        }

        else
        {
        }

        v43(v13, v6);
        sub_26894DD8C(v65, &byte_2802A6450, &byte_268B3BE10);
      }

      else
      {
        sub_26894DD8C(v65, &byte_2802A6450, &byte_268B3BE10);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v61);
LABEL_32:
      v10 = v55;
LABEL_7:
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v24 = __swift_project_value_buffer(v6, qword_2802CDA10);
      (*(v7 + 16))(v10, v24, v6);
      v25 = v3;
      v26 = sub_268B37A34();
      v27 = sub_268B37ED4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = [v25 playbackSpeedType];

        *(v28 + 12) = 2048;
        [v25 speedMagnitude];
        *(v28 + 14) = v29;
        _os_log_impl(&dword_2688BB000, v26, v27, "Amending intent with playbackSpeed: %ld and magnitude: %f", v28, 0x16u);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      else
      {

        v26 = v25;
      }

      return (*(v7 + 8))(v10, v6);
    case 0x13:
    case 0x15:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
    case 0x14:
    case 0x16:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
    default:
      [v3 setPlaybackSpeedType_];
      goto LABEL_7;
  }
}

uint64_t sub_268B0C0C8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_2689A9870(&qword_2802A56B0, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_28795A0D8;
    v17 = type metadata accessor for SetPlaybackSpeedIntent();
    v16(v11, v17, &off_28795A0B8);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

void sub_268B0C404(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_28795A0D8;
    v30 = type metadata accessor for SetPlaybackSpeedIntent();
    v24 = v26;
    v29(v28, v30, &off_28795A0B8);
LABEL_13:
  }
}

void sub_268B0C7C8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  v9 = sub_268B37854();
  sub_2688C2F6C(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BC78;
    v14 = type metadata accessor for SetPlaybackSpeedIntent();
    v13(v12, v14, &off_28795BC68);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_268B0CAE0()
{
  if (qword_2802A5100 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268B0CB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D60, qword_268B510B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D18 = result;
  return result;
}

uint64_t sub_268B0CB94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D50, &qword_268B510A0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D20 = result;
  return result;
}

uint64_t sub_268B0CBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_57();
  result = sub_268B35784();
  qword_2802A8D28 = result;
  return result;
}

uint64_t sub_268B0CC54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D58, &qword_268B510A8);
  OUTLINED_FUNCTION_245(v0);
  result = sub_268B35784();
  qword_2802A8D30 = result;
  return result;
}

uint64_t sub_268B0CCB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A8D38 = result;
  return result;
}

uint64_t sub_268B0CD1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  result = sub_268B35784();
  qword_2802A8D40 = result;
  return result;
}

uint64_t sub_268B0CD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268B0CDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MediaNLv3Intent(uint64_t a1)
{
  result = qword_2802A8D68;
  if (!qword_2802A8D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268B0CE84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B51090;
  if (qword_2802A50D0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A8D18;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D60, qword_268B510B0);
  *(v0 + 64) = sub_268A19C14(&qword_2802A8D98, &qword_2802A8D60, qword_268B510B0);
  *(v0 + 32) = v1;
  v2 = qword_2802A50D8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A8D20;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D50, &qword_268B510A0);
  *(v0 + 104) = sub_268A19C14(&qword_2802A8DA0, &qword_2802A8D50, &qword_268B510A0);
  *(v0 + 72) = v3;
  v4 = qword_2802A50E0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A8D28;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 136) = v6;
  v7 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_2802A50E8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A8D30;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8D58, &qword_268B510A8);
  *(v0 + 184) = sub_268A19C14(&qword_2802A8DA8, &qword_2802A8D58, &qword_268B510A8);
  *(v0 + 152) = v9;
  v10 = qword_2802A50F8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802A8D40;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 224) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 192) = v11;
  v12 = qword_2802A50F0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A8D38;
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  *(v0 + 232) = v13;
  v14 = qword_2802A4D88;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A6990;
  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  *(v0 + 272) = v15;
  v16 = qword_2802A4D90;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A6998;
  *(v0 + 336) = v6;
  *(v0 + 344) = v7;
  *(v0 + 312) = v17;
  v18 = qword_2802A4D98;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A69A0;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  *(v0 + 352) = v19;
  v20 = qword_2802A4DA0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A69A8;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 392) = v21;
  v22 = qword_2802A4DA8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A69B0;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  *(v0 + 432) = v23;
  v24 = qword_2802A4DD0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A69D8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 504) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 472) = v25;
  v26 = qword_2802A4DD8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A69E0;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 544) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 512) = v27;
  sub_268B35774();
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A8D48 = result;
  return result;
}

uint64_t sub_268B0D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v60 = v4;
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v63 = v6 - v5;
  v7 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v57 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v53[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v53[-v15];
  v17 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = (v22 - v21);
  v62 = type metadata accessor for MediaNLv3Intent(0);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  v58 = *(v9 + 16);
  v58(v16, a1, v7);
  v27 = (*(v9 + 88))(v16, v7);
  v28 = *(v9 + 8);
  if (v27 == *MEMORY[0x277D5C128])
  {
    v28(a1, v7);
    (*(v9 + 96))(v16, v7);
    v29 = *(v19 + 32);
    v29(v23, v16, v17);
    v29(v26, v23, v17);
    v30 = v64;
    sub_268B0DC14(v26, v64);
    v31 = 0;
    v32 = v30;
  }

  else
  {
    v56 = *(v9 + 8);
    v28(v16, v7);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = v61;
    v34 = __swift_project_value_buffer(v61, qword_2802CDA10);
    v35 = v60;
    (*(v60 + 16))(v63, v34, v33);
    v36 = v59;
    v37 = v58;
    v58(v59, a1, v7);
    v38 = sub_268B37A34();
    v39 = sub_268B37F04();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = a1;
      v41 = v40;
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 136315138;
      v54 = v39;
      v37(v57, v36, v7);
      v43 = sub_268B37C24();
      v45 = v44;
      v46 = v36;
      v47 = v56;
      v56(v46, v7);
      v48 = sub_26892CDB8(v43, v45, &v65);
      v49 = v35;
      v50 = v48;

      *(v41 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v38, v54, "Unsupported parse while creating MediaNLv3Intent: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26D6266E0](v42, -1, -1);
      MEMORY[0x26D6266E0](v41, -1, -1);

      v47(v55, v7);
      (*(v49 + 8))(v63, v61);
    }

    else
    {

      v51 = v56;
      v56(a1, v7);
      v51(v36, v7);
      (*(v35 + 8))(v63, v33);
    }

    v31 = 1;
    v32 = v64;
  }

  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v62);
}

uint64_t sub_268B0D970(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80, &unk_268B511CC);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268B0D9D8(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80, &unk_268B511CC);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268B0DA30(uint64_t a1)
{
  v2 = sub_268B0DBD0(&qword_2802A8D80, &unk_268B511CC);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268B0DABC(uint64_t a1)
{
  result = sub_268B0DBD0(&qword_2802A8D78, &unk_268B510EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0DB00(uint64_t a1)
{
  *(a1 + 8) = sub_268B0DBD0(&qword_2802A8D80, &unk_268B511CC);
  result = sub_268B0DBD0(&qword_2802A8D88, &unk_268B5116C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268B0DBD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0DC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaNLv3Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_268B0DD60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_268B0DDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_268B0DEEC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v99 = sub_2688EFD0C();
  v2 = 0;
  v101 = v1 & 0xFFFFFFFFFFFFFF8;
  v103 = v1 & 0xC000000000000001;
  v97 = v1 + 32;
  v3 = MEMORY[0x277D84F90];
  v92 = v1;
  while (v2 != v99)
  {
    if (v103)
    {
      v4 = MEMORY[0x26D625BD0](v2, v1);
    }

    else
    {
      if (v2 >= *(v101 + 16))
      {
        goto LABEL_126;
      }

      v4 = *(v97 + 8 * v2);
    }

    v5 = v4;
    v6 = __OFADD__(v2++, 1);
    if (v6)
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      return;
    }

    sub_2689CBC4C();
    v8 = v7;

    if (v8 >> 62)
    {
      v9 = sub_268B382A4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v11 = sub_268B382A4();
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v11 + v9;
    if (__OFADD__(v11, v9))
    {
      goto LABEL_127;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v10)
      {
LABEL_17:
        sub_268B382A4();
      }

LABEL_18:
      v3 = sub_268B381F4();
      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v10)
    {
      goto LABEL_17;
    }

    v13 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v14 = *(v13 + 16);
    v15 = (*(v13 + 24) >> 1) - v14;
    v16 = v13 + 8 * v14;
    if (v8 >> 62)
    {
      v19 = OUTLINED_FUNCTION_14_25();
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = v19;
      v95 = sub_268B382A4();
      if (v15 < v95)
      {
        goto LABEL_141;
      }

      if (v20 < 1)
      {
        goto LABEL_142;
      }

      v106 = v3;
      sub_268AA8960();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
        v22 = sub_26892D47C(v108, i, v8);
        v24 = *v23;
        v22(v108, 0);
        *(v16 + 32 + 8 * i) = v24;
      }

      v3 = v106;
      v1 = v92;
      v17 = v95;
LABEL_29:

      if (v17 < v9)
      {
        goto LABEL_128;
      }

      if (v17 > 0)
      {
        v25 = *(v13 + 16);
        v6 = __OFADD__(v25, v17);
        v26 = v25 + v17;
        if (v6)
        {
          goto LABEL_138;
        }

        *(v13 + 16) = v26;
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        if (v15 < v17)
        {
          goto LABEL_140;
        }

        v18 = type metadata accessor for Device();
        OUTLINED_FUNCTION_87(v18);
        goto LABEL_29;
      }

LABEL_33:

      if (v9 > 0)
      {
        goto LABEL_128;
      }
    }
  }

  v27 = 0;
  v108[0] = MEMORY[0x277D84F90];
  while (v99 != v27)
  {
    if (v103)
    {
      v28 = MEMORY[0x26D625BD0](v27, v1);
    }

    else
    {
      if (v27 >= *(v101 + 16))
      {
        goto LABEL_130;
      }

      v28 = *(v1 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_129;
    }

    v30 = [v28 excludeGroup];
    sub_2688C063C();
    v31 = sub_268B38054();
    v32 = v31;
    if (v30)
    {
      v33 = sub_268B38074();

      if (v33)
      {
        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
        goto LABEL_49;
      }
    }

    else
    {
    }

LABEL_49:
    ++v27;
  }

  v34 = v108[0];
  v35 = 0;
  v98 = v108[0] & 0xC000000000000001;
  v100 = sub_2688EFD0C();
  v36 = MEMORY[0x277D84F90];
  v102 = v34;
  v96 = v34 + 32;
  v107 = v3;
  while (v35 != v100)
  {
    if (v98)
    {
      v37 = MEMORY[0x26D625BD0](v35, v102);
    }

    else
    {
      if (v35 >= *(v102 + 16))
      {
        goto LABEL_132;
      }

      v37 = *(v96 + 8 * v35);
    }

    v38 = v37;
    v6 = __OFADD__(v35++, 1);
    if (v6)
    {
      goto LABEL_131;
    }

    v39 = sub_2689CB550();

    if (v39 >> 62)
    {
      v40 = sub_268B382A4();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v36 >> 62;
    if (v36 >> 62)
    {
      v42 = sub_268B382A4();
    }

    else
    {
      v42 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v42 + v40;
    if (__OFADD__(v42, v40))
    {
      goto LABEL_133;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v41)
      {
LABEL_67:
        sub_268B382A4();
      }

LABEL_68:
      v36 = sub_268B381F4();
      v44 = v36 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_69;
    }

    if (v41)
    {
      goto LABEL_67;
    }

    v44 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v43 > *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_68;
    }

LABEL_69:
    v45 = *(v44 + 16);
    v46 = (*(v44 + 24) >> 1) - v45;
    v47 = v44 + 8 * v45;
    v104 = v44;
    if (v39 >> 62)
    {
      v50 = OUTLINED_FUNCTION_14_25();
      if (!v50)
      {
        goto LABEL_83;
      }

      v51 = v50;
      v94 = sub_268B382A4();
      if (v46 < v94)
      {
        goto LABEL_144;
      }

      if (v51 < 1)
      {
        goto LABEL_145;
      }

      v93 = v36;
      v52 = v47 + 32;
      sub_268AA8960();
      for (j = 0; j != v51; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
        v54 = sub_26892D47C(v108, j, v39);
        v56 = *v55;
        v54(v108, 0);
        *(v52 + 8 * j) = v56;
      }

      v3 = v107;
      v36 = v93;
      v48 = v94;
LABEL_79:

      if (v48 < v40)
      {
        goto LABEL_134;
      }

      if (v48 > 0)
      {
        v57 = *(v104 + 16);
        v6 = __OFADD__(v57, v48);
        v58 = v57 + v48;
        if (v6)
        {
          goto LABEL_139;
        }

        *(v104 + 16) = v58;
      }
    }

    else
    {
      v48 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        if (v46 < v48)
        {
          goto LABEL_143;
        }

        v49 = type metadata accessor for Device();
        OUTLINED_FUNCTION_87(v49);
        goto LABEL_79;
      }

LABEL_83:

      if (v40 > 0)
      {
        goto LABEL_134;
      }
    }
  }

  v59 = sub_2688EFD0C();
  v60 = 0;
  v61 = v36;
  v62 = v36 & 0xC000000000000001;
  v63 = v61;
  v64 = v61 & 0xFFFFFFFFFFFFFF8;
  v105 = MEMORY[0x277D84F90];
  while (v59 != v60)
  {
    if (v62)
    {
      v65 = MEMORY[0x26D625BD0](v60, v63);
    }

    else
    {
      if (v60 >= *(v64 + 16))
      {
        goto LABEL_136;
      }

      v65 = *(v63 + 8 * v60 + 32);
    }

    v66 = v65;
    v67 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_135;
    }

    v68 = [v65 context];
    if (v68 && (v69 = sub_268B0F784(v68), v70))
    {
      v73 = v69;
      v75 = v70;
LABEL_100:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        v105 = v78;
      }

      v76 = *(v105 + 16);
      if (v76 >= *(v105 + 24) >> 1)
      {
        sub_2689876A4();
        v105 = v79;
      }

      *(v105 + 16) = v76 + 1;
      v77 = v105 + 16 * v76;
      *(v77 + 32) = v73;
      *(v77 + 40) = v75;
      v60 = v67;
      v3 = v107;
    }

    else
    {
      v71 = [v66 routeId];
      if (v71)
      {
        v72 = v71;
        v73 = sub_268B37BF4();
        v75 = v74;

        goto LABEL_100;
      }

      ++v60;
      v3 = v107;
    }
  }

  v80 = sub_2688EFD0C();
  v81 = 0;
  v82 = v3 & 0xC000000000000001;
  while (v80 != v81)
  {
    sub_2688EFD10();
    if (v82)
    {
      v83 = MEMORY[0x26D625BD0](v81, v3);
    }

    else
    {
      v83 = *(v3 + 8 * v81 + 32);
    }

    v84 = v83;
    if (__OFADD__(v81, 1))
    {
      goto LABEL_137;
    }

    v85 = [v83 context];
    if (v85 && (v86 = sub_268B0F784(v85), v87))
    {
      v88 = v87;
    }

    else
    {
      v89 = sub_26892D418(v84);
      v88 = v90;

      if (v88)
      {
        v86 = v89;
      }

      else
      {
        v86 = 0;
      }

      if (!v88)
      {
        v88 = 0xE000000000000000;
      }
    }

    v108[0] = v86;
    v108[1] = v88;
    MEMORY[0x28223BE20](v86);
    v91 = sub_268ACD018();

    if (v91)
    {
    }

    else
    {
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    v3 = v107;
    ++v81;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B0E848()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  if (qword_2802A4F30 != -1)
  {
    v4 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v4, qword_2802CDA10);
  v8 = OUTLINED_FUNCTION_6_44();
  v9(v8);
  v10 = sub_268B37A34();
  v11 = sub_268B37ED4();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v12, v13, "Default metricsIsWHAIntent: nil");
    OUTLINED_FUNCTION_12();
  }

  (*(v2 + 8))(v7, v0);
  return 0;
}

uint64_t sub_268B0E98C()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  if (qword_2802A4F30 != -1)
  {
    v4 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v4, qword_2802CDA10);
  v8 = OUTLINED_FUNCTION_6_44();
  v9(v8);
  v10 = sub_268B37A34();
  v11 = sub_268B37ED4();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v12, v13, "Default metricsMediaType: .unknown");
    OUTLINED_FUNCTION_12();
  }

  (*(v2 + 8))(v7, v0);
  return 0;
}

uint64_t sub_268B0EAD0()
{
  v3 = OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_39();
  v7 = sub_268AA0C74(v2, v1);
  v8 = v7;
  if (qword_2802A4F30 != -1)
  {
    v7 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
  (*(v5 + 16))(v0);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_2688BB000, v9, v10, "DeviceQueryableIntent metricsIsWHAIntent: %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_12();
  }

  (*(v5 + 8))(v0, v3);
  return v8 & 1;
}

void sub_268B0EC4C()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_39();
  v2 = OUTLINED_FUNCTION_13_25();
  if (v3(v2))
  {
    sub_2688EFD0C();
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v4 = OUTLINED_FUNCTION_8_34();
  v5(v4);
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v7))
  {
    OUTLINED_FUNCTION_20_23();
    v8 = OUTLINED_FUNCTION_19_21();
    v18 = v8;
    *v0 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v9 = sub_268B37C24();
    v11 = sub_26892CDB8(v9, v10, &v18);

    *(v0 + 4) = v11;
    OUTLINED_FUNCTION_309(&dword_2688BB000, v12, v13, "DeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v14 = OUTLINED_FUNCTION_11_35();
    v16 = v17;
  }

  else
  {

    v14 = OUTLINED_FUNCTION_11_35();
    v16 = v0;
  }

  v15(v14, v16);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_23();
}

void sub_268B0EE14()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_39();
  v2 = OUTLINED_FUNCTION_13_25();
  v4 = v3(v2);
  if (v4)
  {
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_8_34();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v8))
  {
    OUTLINED_FUNCTION_20_23();
    v9 = OUTLINED_FUNCTION_19_21();
    v19 = v9;
    *v0 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v10 = sub_268B37C24();
    v12 = sub_26892CDB8(v10, v11, &v19);

    *(v0 + 4) = v12;
    OUTLINED_FUNCTION_309(&dword_2688BB000, v13, v14, "SingleDeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v15 = OUTLINED_FUNCTION_11_35();
    v17 = v18;
  }

  else
  {

    v15 = OUTLINED_FUNCTION_11_35();
    v17 = v0;
  }

  v16(v15, v17);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_23();
}

void sub_268B0EFDC()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_39();
  v8 = (*(v1 + 8))(v2, v1);
  v9 = v8;
  if (qword_2802A4F30 != -1)
  {
    v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v8, qword_2802CDA10);
  (*(v6 + 16))(v0);
  v10 = sub_268B37A34();
  v11 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_160_0(v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = NLMediaType.description.getter(v9);
    v16 = sub_26892CDB8(v14, v15, &v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2688BB000, v10, v3, "MediaTypeProvidingIntent metricsMediaType: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B0F1E8(const char *a1, ...)
{
  v3 = v1;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_268B0F724(v3);
  v12 = v11;
  if (v11)
  {
    sub_268B0DEEC();

    v12 = sub_2688EFD0C();
  }

  if (qword_2802A4F30 != -1)
  {
    v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
  v13 = OUTLINED_FUNCTION_6_44();
  v14(v13);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v12;
    _os_log_impl(&dword_2688BB000, v15, v16, a1, v17, 0xCu);
    OUTLINED_FUNCTION_12_8();
  }

  (*(v6 + 8))(v10, v4);
  return v12;
}

uint64_t sub_268B0F724(void *a1)
{
  v1 = [a1 destinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceGroup();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_268B0F784(void *a1)
{
  v2 = [a1 routeId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_268B382A4();
}

uint64_t OUTLINED_FUNCTION_19_21()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_slowAlloc();
}

Swift::String_optional __swiftcall UsoTask_request_common_MediaItem.verb()()
{
  v0 = 0x74736575716572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B0F940(uint64_t a1)
{
  result = sub_268B0FA04(&qword_2802A8DB0, &protocol conformance descriptor for UsoTask_request_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B0FA04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268B0FA84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B0FAD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B0FB2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B0FB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B0FBD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B0FC28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B0FC7C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B0FCD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B0FD34(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B0FD88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B0FDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B0FE50(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B0FEB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t MultiUserConnectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  return v0;
}

uint64_t sub_268B0FF9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  sub_268B10844(sub_268B1047C, v5);
}

uint64_t sub_268B10028(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void, void, void *), uint64_t a5, uint64_t a6)
{
  v12 = sub_268B37A54();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  if (a3 || !a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v12, qword_2802CDA10);
    (*(v13 + 16))(v16, v29, v12);
    v30 = a3;
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      if (a3)
      {
        v35 = a3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v33 + 4) = v36;
      *v34 = v37;
      _os_log_impl(&dword_2688BB000, v31, v32, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving homeUserID %@", v33, 0xCu);
      sub_26898BED0(v34);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    return a4(0, 0, a3);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = a4;
    v19 = __swift_project_value_buffer(v12, qword_2802CDA10);
    (*(v13 + 16))(v18, v19, v12);

    v20 = sub_268B37A34();
    v21 = sub_268B37ED4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38[1] = a6;
      v23 = a5;
      v24 = v22;
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_26892CDB8(a1, a2, &v40);
      _os_log_impl(&dword_2688BB000, v20, v21, "MultiUserConnectionProvider#getRecognizedSharedUserID homeUserID: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26D6266E0](v25, -1, -1);
      v26 = v24;
      a5 = v23;
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    v27 = swift_allocObject();
    *(v27 + 16) = v39;
    *(v27 + 24) = a5;

    sub_268B109D4(a1, a2, sub_268B10BF0, v27);
  }
}

uint64_t sub_268B1043C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268B10488(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  if (a3 || !a2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v14, v28, v10);
    v29 = a3;
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      if (a3)
      {
        v34 = a3;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      *(v32 + 4) = v35;
      *v33 = v36;
      _os_log_impl(&dword_2688BB000, v30, v31, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving sharedUserID %@", v32, 0xCu);
      sub_26898BED0(v33);
      MEMORY[0x26D6266E0](v33, -1, -1);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v25 = 0;
    v26 = 0;
    v27 = a3;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v16, v17, v10);

    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = a5;
      v39 = v21;
      v22 = a4;
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_26892CDB8(a1, a2, &v39);
      _os_log_impl(&dword_2688BB000, v18, v19, "MultiUserConnectionProvider#getRecognizedSharedUserID SharedUserID: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v24 = v23;
      a4 = v22;
      MEMORY[0x26D6266E0](v24, -1, -1);
      MEMORY[0x26D6266E0](v20, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v25 = a1;
    v26 = a2;
    v27 = 0;
  }

  return a4(v25, v26, v27);
}

void sub_268B10844(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_1_58();
  v9[2] = v7;
  v9[3] = &block_descriptor_14;
  v8 = _Block_copy(v9);

  [v5 getHomeUserIdOfRecognizedUserWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_268B10924(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_268B109D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_268B37BC4();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_1_58();
  v12[2] = v10;
  v12[3] = &block_descriptor_9;
  v11 = _Block_copy(v12);

  [v7 getSharedUserIdForHomeUserId:v8 completion:v11];
  _Block_release(v11);
}

uint64_t MultiUserConnectionProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_268B10BB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

Swift::String_optional __swiftcall UsoTask_seekTo_common_MediaItem.verb()()
{
  v0 = 1801807219;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268B10C5C()
{
  v0 = sub_268B35E04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E10, &qword_268B51748);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E18, qword_268B51750);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  if (sub_268B365E4())
  {
    sub_268B35DF4();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v0);
  }

  (*(v1 + 104))(v13, *MEMORY[0x277D5E8E8], v0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v0);
  v16 = *(v4 + 48);
  sub_268B11664(v15, v6);
  sub_268B11664(v13, &v6[v16]);
  OUTLINED_FUNCTION_124(v6);
  if (v18)
  {
    OUTLINED_FUNCTION_0_55(v13);
    OUTLINED_FUNCTION_0_55(v15);
    OUTLINED_FUNCTION_124(&v6[v16]);
    if (v18)
    {
      sub_2688EF38C(v6, &qword_2802A8E18, qword_268B51750);
      return 1;
    }

    goto LABEL_12;
  }

  sub_268B11664(v6, v10);
  OUTLINED_FUNCTION_124(&v6[v16]);
  if (v18)
  {
    OUTLINED_FUNCTION_0_55(v13);
    OUTLINED_FUNCTION_0_55(v15);
    (*(v1 + 8))(v10, v0);
LABEL_12:
    sub_2688EF38C(v6, &qword_2802A8E10, &qword_268B51748);
    return 2;
  }

  (*(v1 + 32))(v3, &v6[v16], v0);
  sub_268B116D4(&qword_2802A8E20, MEMORY[0x277D5E8F0], MEMORY[0x277D5E8F8]);
  v19 = sub_268B37BB4();
  v20 = *(v1 + 8);
  v20(v3, v0);
  sub_2688EF38C(v13, &qword_2802A8E18, qword_268B51750);
  sub_2688EF38C(v15, &qword_2802A8E18, qword_268B51750);
  v20(v10, v0);
  sub_2688EF38C(v6, &qword_2802A8E18, qword_268B51750);
  if (v19)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268B110B4(uint64_t a1)
{
  result = sub_268B116D4(&qword_2802A8DF8, MEMORY[0x277D5EFC8], &protocol conformance descriptor for UsoTask_seekTo_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B111D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B11224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B11278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B112CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B11320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B11374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B113C8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B1141C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B11480(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B114D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B11538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B1159C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B11600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B11664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E18, qword_268B51750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268B116D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

Swift::String_optional __swiftcall UsoTask_summarise_common_MediaItem.verb()()
{
  v0 = 0x736972616D6D7573;
  v1 = 0xE900000000000065;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_summarise_common_MediaItem.shouldHandle(requestContext:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36314();
  if (v14[1])
  {

    sub_268B357C4();

    v6 = sub_268B366E4();

    if (*(v6 + 16))
    {
      sub_268A75754(0x73636972796CLL);
      v8 = v7;

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "UsoTask_summarise_common_MediaItem#shouldHandle not a lyrics request. Not handling in controls", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
LABEL_11:
  *a1 = 3;
  return result;
}

uint64_t sub_268B11A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B11A68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B11ABC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B11B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B11B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B11BB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B11C0C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B11C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B11CC4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B11D18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B11D7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B11DE0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B11E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B11EA8(uint64_t a1)
{
  result = sub_268B11F54(&qword_2802A8E28, &protocol conformance descriptor for UsoTask_summarise_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B11F54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B363C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_stop_uso_NoEntity.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_stop_uso_NoEntity.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UsoTask_stop_uso_NoEntity.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268A4C8D4();
  if (result)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37EE4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "UsoTask_stop_uso_NoEntity#shouldHandle Sleep timers request. Not handling in controls", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    result = (*(v3 + 8))(v5, v2);
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  return result;
}

uint64_t sub_268B12294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268B122E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268B1233C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268B12390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268B123E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268B12438(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268B1248C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268B124E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268B12544(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268B12598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268B125FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268B12660(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268B126C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268B12728(uint64_t a1)
{
  result = sub_268B127D4(&qword_2802A8E40, &protocol conformance descriptor for UsoTask_stop_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268B127D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35E74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id SeekTimeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SeekTimeIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_268B165D4(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268B12C2C()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v20 = v19 + v10;
  v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleSeekTimeMedia";
  *(v22 + 24) = 19;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268B12E84(v24, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_268B12E84(char *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v91 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v84 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v84 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v92 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - v20;
  v22 = swift_allocObject();
  v93 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268958D98;
  *(v23 + 24) = v22;
  v94 = v23;
  v24 = qword_2802A4F30;
  v96 = a4;

  v95 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v26 = *(v8 + 16);
  v26(v21, v25, v7);
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v87 = v17;
    v30 = v7;
    v31 = a1;
    v32 = v25;
    v33 = v8;
    v34 = v26;
    v35 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "Handling seek to time", v29, 2u);
    v36 = v35;
    v26 = v34;
    v8 = v33;
    v25 = v32;
    a1 = v31;
    v7 = v30;
    v17 = v87;
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v37 = *(v8 + 8);
  v37(v21, v7);
  v38 = sub_268B18100(a1);
  if (!v38)
  {
    goto LABEL_16;
  }

  v39 = v38;
  if (!sub_2688EFD0C())
  {

LABEL_16:

    v46 = v92;
    v26(v92, v25, v7);
    v47 = sub_268B37A34();
    v50 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v47, v50, "No devices found in SeekTimeIntent, returning failure", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    goto LABEL_18;
  }

  sub_268921344();
  v41 = v40;
  if (!*(v40 + 2))
  {

    v26(v17, v25, v7);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "Missing routeId in intent, returning failure", v54, 2u);
      MEMORY[0x26D6266E0](v54, -1, -1);
    }

    v37(v17, v7);
    goto LABEL_22;
  }

  v42 = [a1 playheadPosition];
  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = v42;
  v44 = COERCE_DOUBLE(sub_268B37DE4());
  if ((v45 & 1) != 0 || v44 < 0.0)
  {

LABEL_12:

    v46 = v90;
    v26(v90, v25, v7);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "Could not find time to seek in intent or it was invalid, returning failure", v49, 2u);
      MEMORY[0x26D6266E0](v49, -1, -1);
    }

LABEL_18:

    v37(v46, v7);
LABEL_22:

    v55 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
    v56 = SeekTimeIntentResponse.init(code:userActivity:)(5, 0);
    v97 = v56;
    v93(&v97);

    return;
  }

  v92 = a1;
  v57 = [a1 shouldStartPlaybackAfterSeek];
  v87 = v41;
  if (v57 && (v58 = v57, LOBYTE(v97) = 2, MEMORY[0x26D625760](v57, &v97), v58, v97 != 2))
  {
    v59 = v92;
    if (v97)
    {
      sub_26895761C();
      v86 = v83;
    }

    else
    {
      v86 = 0;
    }
  }

  else
  {
    v86 = 0;
    v59 = v92;
  }

  v84 = v25;
  v85 = v26;
  v26(v89, v25, v7);
  v60 = v43;
  v61 = sub_268B37A34();
  v62 = sub_268B37EC4();
  v90 = v60;

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = v90;
    *(v63 + 4) = v90;
    *v64 = v43;
    v66 = v65;
    _os_log_impl(&dword_2688BB000, v61, v62, "Seeking to: %@", v63, 0xCu);
    sub_2688C058C(v64, &qword_2802A6420, &unk_268B3C680);
    v67 = v64;
    v59 = v92;
    MEMORY[0x26D6266E0](v67, -1, -1);
    MEMORY[0x26D6266E0](v63, -1, -1);
  }

  v37(v89, v7);
  v68 = [v59 isSkipToEnd];
  sub_2688C063C();
  v69 = sub_268B38054();
  v70 = v69;
  if (v68)
  {
    v71 = sub_268B38074();

    if ((v71 & 1) != 0 && sub_2688EFD0C() >= 2)
    {

      v72 = v88;
      v85(v88, v84, v7);
      v73 = sub_268B37A34();
      v74 = sub_268B37EE4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_2688BB000, v73, v74, "Can't seek to end on multiple devices, returning failure", v75, 2u);
        MEMORY[0x26D6266E0](v75, -1, -1);
      }

      v37(v72, v7);
      v76 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
      v77 = SeekTimeIntentResponse.init(code:userActivity:)(5, 0);
      v97 = v77;
      v93(&v97);

      goto LABEL_36;
    }
  }

  else
  {
  }

  v78 = v91;
  __swift_project_boxed_opaque_existential_1(&v91[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService], *&v91[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService + 24]);
  sub_268920C54(v39);
  sub_268949478(0x656D69546B656573, 0xE800000000000000, v79, v39);

  __swift_project_boxed_opaque_existential_1(&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController], *&v78[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24]);
  v80 = swift_allocObject();
  v81 = v94;
  v80[2] = sub_2688E19F8;
  v80[3] = v81;
  v80[4] = v78;
  v82 = v78;
  sub_268B36E24();

LABEL_36:
}

void sub_268B13914(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_268B161B0();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v7 = v3;
  v8 = SeekTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_268B13A84(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for seek time", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SeekTimeDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F650], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_26890BEF0();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_268B13EDC()
{
  OUTLINED_FUNCTION_26();
  v35 = v0;
  v36 = v1;
  v37 = v3;
  v38 = v2;
  v34 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v33 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v32 = *(v12 + 16);
  v32(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for seek time", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v24 = OUTLINED_FUNCTION_138();
  v23(v24);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState), *(v35 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v26 = v33;
    v32(v33, v19, v10);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v29);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v27, v28, "Whole House Audio requests are unsupported on this platform");
      OUTLINED_FUNCTION_83_0();
    }

    (v23)(v26, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_15_27(v30, xmmword_268B3BBA0);
    v30[2].n128_u64[0] = sub_268B17B04(2);
    v36(v30);
  }

  else
  {
    v25 = v34;
    (*(v5 + 104))(v9, *MEMORY[0x277D5F650], v34);
    [v38 mediaType];

    sub_26890CC9C();
    (*(v5 + 8))(v9, v25);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268B14274()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v9 + 16))(v17);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_172_0();
        v23 = OUTLINED_FUNCTION_20_6();
        v66 = v23;
        *v20 = 136315138;
        v24 = type metadata accessor for Device();
        v25 = MEMORY[0x26D6256F0](v6, v24);
        OUTLINED_FUNCTION_30_3(v25, v26);
        v64 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v20 + 4) = v9;
        _os_log_impl(&dword_2688BB000, v21, v22, "SeekTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v27 = OUTLINED_FUNCTION_138();
        v28(v27);
        v2 = v64;
      }

      else
      {

        v49 = OUTLINED_FUNCTION_138();
        v50(v49);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v47, xmmword_268B3BBA0);
      v48 = sub_268B2CCFC(v6);
    }

    else
    {
      v64 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      v62 = *(v9 + 16);
      v63 = v35;
      v62(v20);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_172_0();
        v61 = v9;
        v39 = v38;
        v60 = swift_slowAlloc();
        v66 = v60;
        *v39 = 136315138;
        v65 = v6 & 1;
        sub_26890C84C();
        v40 = sub_268B384A4();
        v42 = sub_26892CDB8(v40, v41, &v66);

        *(v39 + 4) = v42;
        _os_log_impl(&dword_2688BB000, v36, v37, "SeekTimeIntentHandler#resolveDevices Error resolving devices: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        OUTLINED_FUNCTION_12();
        v9 = v61;
        OUTLINED_FUNCTION_12();
      }

      v43 = *(v9 + 8);
      v43(v20, v7);
      v2 = v64;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v56, xmmword_268B3BBA0);
        v56[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v62)(v13, v63, v7);
      v44 = sub_268B37A34();
      v45 = sub_268B37EE4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v46);
        OUTLINED_FUNCTION_21_6(&dword_2688BB000, v44, v45, "SeekTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v43(v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v47, xmmword_268B3BBA0);
      v48 = sub_268B17B04(1);
    }

    v47[2].n128_u64[0] = v48;
LABEL_32:
    v57 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v58(v2, v57);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  (*(v9 + 16))(v0);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_172_0();
    v31 = OUTLINED_FUNCTION_20_6();
    v66 = v31;
    *v20 = 136315138;
    v32 = type metadata accessor for Device();
    v33 = MEMORY[0x26D6256F0](v6, v32);
    OUTLINED_FUNCTION_30_3(v33, v34);
    v64 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v20 + 4) = v9;
    _os_log_impl(&dword_2688BB000, v29, v30, "SeekTimeIntentHandler#resolveDevices Success resolving devices: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v2[1](v0, v7);
    v2 = v64;
  }

  else
  {

    (*(v9 + 8))(v0, v7);
  }

  v51 = sub_2688EFD0C();
  if (!v51)
  {
LABEL_30:
    type metadata accessor for SeekTimeDevicesResolutionResult();
    goto LABEL_32;
  }

  v52 = v51;
  v66 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SeekTimeDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v6);
      }

      else
      {
        v54 = *(v6 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268B14970()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v61 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v22(v14);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_20_6();
        v63 = v25;
        *v18 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v7, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v60 = v8;
        OUTLINED_FUNCTION_16_7();
        *(v18 + 4) = v2;
        _os_log_impl(&dword_2688BB000, v23, v24, "SeekTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v10 + 8))(v14, v60);
      }

      else
      {

        (*(v10 + 8))(v14, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_15_27(v49, xmmword_268B3BBA0);
      v50 = sub_268B2CCFC(v7);
    }

    else
    {
      v60 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v58 = *(v10 + 16);
      v59 = v37;
      v58(v21);
      v38 = sub_268B37A34();
      v39 = sub_268B37EE4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_172_0();
        v57 = v10;
        v41 = v40;
        v56 = swift_slowAlloc();
        v63 = v56;
        *v41 = 136315138;
        v62 = v7 & 1;
        sub_26890C84C();
        v42 = sub_268B384A4();
        v44 = sub_26892CDB8(v42, v43, &v63);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_2688BB000, v38, v39, "SeekTimeIntentHandler#resolveDevices Error resolving devices: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        OUTLINED_FUNCTION_12();
        v10 = v57;
        OUTLINED_FUNCTION_12();
      }

      v45 = *(v10 + 8);
      v45(v21, v8);
      if (v7)
      {
        (v58)(v0, v59, v8);
        v46 = sub_268B37A34();
        v47 = sub_268B37EE4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v48);
          OUTLINED_FUNCTION_21_6(&dword_2688BB000, v46, v47, "SeekTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v45(v0, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v49, xmmword_268B3BBA0);
        v50 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_15_27(v49, xmmword_268B3BBA0);
        v50 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v49[2].n128_u64[0] = v50;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v29(v18);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v7, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v60 = v8;
    OUTLINED_FUNCTION_16_7();
    *(v32 + 4) = v2;
    _os_log_impl(&dword_2688BB000, v30, v31, "SeekTimeIntentHandler#resolveDevices Success resolving devices: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v10 + 8))(v18, v60);
  }

  else
  {

    (*(v10 + 8))(v18, v8);
  }

  v51 = sub_2688EFD0C();
  v49 = MEMORY[0x277D84F90];
  if (!v51)
  {
    goto LABEL_32;
  }

  v52 = v51;
  v63 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SeekTimeDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v7);
      }

      else
      {
        v54 = *(v7 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    v49 = v63;
LABEL_32:
    v61(v49);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268B1505C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SeekTimeDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268B150C8(void *a1, uint64_t a2, void (**a3)(void, id))
{
  v50 = a2;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v53 = swift_allocObject();
  v54 = a3;
  *(v53 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_2802CDA10);
  v14 = *(v6 + 16);
  v14(v12, v13, v5);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "Resolving playHeadPosition for seek time", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  v18 = *(v6 + 8);
  v18(v12, v5);
  v19 = [a1 isSkipToEnd];
  sub_2688C063C();
  v20 = sub_268B38054();
  v21 = v20;
  if (!v19)
  {

    goto LABEL_15;
  }

  v22 = sub_268B38074();

  if ((v22 & 1) == 0)
  {
LABEL_15:
    v31 = [a1 playheadPosition];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for SeekTimePlayheadPositionResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_268B37DC4();
      v34 = [ObjCClassFromMetadata successWithResolvedTimeInterval_];
      v30 = v54;
      v54[2](v54, v34);

      goto LABEL_25;
    }

    v35 = v51;
    v14(v51, v13, v5);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v18;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "Playhead position doesn't exist in intent.", v39, 2u);
      v40 = v39;
      v18 = v38;
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    v18(v35, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v41 = 2;
LABEL_24:
    v48 = sub_268B1CD38(v41);
    v30 = v54;
    v54[2](v54, v48);

    goto LABEL_25;
  }

  v23 = sub_268B18100(a1);
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v23;
  if (sub_2688EFD0C() != 1 || !sub_2688EFD0C())
  {

    goto LABEL_21;
  }

  sub_2688EFD10();
  v25 = (v24 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v24) : *(v24 + 32);
  v26 = v25;

  sub_268B0F784(v26);
  if (!v27)
  {
LABEL_21:
    v42 = v52;
    v14(v52, v13, v5);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v18;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "Multiple devices in intent, can't get duration info", v46, 2u);
      v47 = v46;
      v18 = v45;
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    v18(v42, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v41 = 3;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController), *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24));
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 16) = sub_26892DC18;
  *(v28 + 24) = v29;

  sub_268B36D04();

  v30 = v54;
LABEL_25:
  _Block_release(v30);
}

void sub_268B15694()
{
  OUTLINED_FUNCTION_26();
  v47 = v0;
  v50 = v1;
  v51 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
  v18 = *(v7 + 16);
  v48 = v19;
  v49 = v18;
  (v18)(v17);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v22);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v20, v21, "Resolving playHeadPosition for seek time");
    OUTLINED_FUNCTION_83_0();
  }

  v23 = *(v7 + 8);
  v24 = OUTLINED_FUNCTION_138();
  v23(v24);
  v25 = [v4 isSkipToEnd];
  sub_2688C063C();
  v26 = sub_268B38054();
  v27 = v26;
  if (!v25)
  {

    goto LABEL_15;
  }

  v28 = sub_268B38074();

  if ((v28 & 1) == 0)
  {
LABEL_15:
    v35 = [v4 playheadPosition];
    if (v35)
    {
      v36 = v35;
      type metadata accessor for SeekTimePlayheadPositionResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_268B37DC4();
      v38 = [ObjCClassFromMetadata successWithResolvedTimeInterval_];
      v50();

LABEL_25:
      goto LABEL_26;
    }

    v49(v11, v48, v5);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v41);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v39, v40, "Playhead position doesn't exist in intent.");
      OUTLINED_FUNCTION_12();
    }

    (v23)(v11, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v42 = 2;
LABEL_24:
    v38 = sub_268B1CD38(v42);
    v50();
    goto LABEL_25;
  }

  v29 = sub_268B18100(v4);
  if (!v29)
  {
    goto LABEL_21;
  }

  v30 = v29;
  if (sub_2688EFD0C() != 1 || !sub_2688EFD0C())
  {

    goto LABEL_21;
  }

  sub_2688EFD10();
  v31 = (v30 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](0, v30) : *(v30 + 32);
  v32 = v31;

  sub_268B0F784(v32);
  if (!v33)
  {
LABEL_21:
    v49(v15, v48, v5);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v45);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v43, v44, "Multiple devices in intent, can't get duration info");
      OUTLINED_FUNCTION_12();
    }

    (v23)(v15, v5);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v42 = 3;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController), *(v47 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController + 24));
  v34 = swift_allocObject();
  *(v34 + 16) = v50;
  *(v34 + 24) = v51;

  sub_268B36D04();

LABEL_26:
  OUTLINED_FUNCTION_23();
}

void sub_268B15B4C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8E78, &unk_268B51A70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_2688F1FA4(a1, &v34 - v15, &qword_2802A8E78, &unk_268B51A70);
  v17 = sub_268B370F4();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    sub_268B370E4();
    v19 = v18;
    v20 = *(*(v17 - 8) + 8);
    v20(v16, v17);
    if (v19 <= 0.0)
    {
      goto LABEL_6;
    }

    sub_2688F1FA4(a1, v14, &qword_2802A8E78, &unk_268B51A70);
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
    {
      sub_2688C058C(v14, &qword_2802A8E78, &unk_268B51A70);
    }

    else
    {
      sub_268B370D4();
      v27 = v26;
      v20(v14, v17);
      if (v27 + 15.0 < v19)
      {
        type metadata accessor for SeekTimePlayheadPositionResolutionResult();
        v28 = [swift_getObjCClassFromMetadata() successWithResolvedTimeInterval_];
LABEL_18:
        v25 = v28;
        goto LABEL_19;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v10, v29, v4);
    v30 = sub_268B37A34();
    v31 = sub_268B37EC4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Missing duration info or elapsed duration is within 15 seconds of the end. Seeking to end of duration", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    type metadata accessor for SeekTimePlayheadPositionResolutionResult();
    v28 = [swift_getObjCClassFromMetadata() successWithResolvedTimeInterval_];
    goto LABEL_18;
  }

  sub_2688C058C(v16, &qword_2802A8E78, &unk_268B51A70);
LABEL_6:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v21, v4);
  v22 = sub_268B37A34();
  v23 = sub_268B37EE4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "Content has no duration, can't skip to end", v24, 2u);
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for SeekTimePlayheadPositionResolutionResult();
  v25 = sub_268B1CD38(1);
LABEL_19:
  v33 = v25;
  v35();
}

void sub_268B1602C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v5 = SeekTimeIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268B16098(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SeekTimeIntentResponse());
  v4 = SeekTimeIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268B16124(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268B161B0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v35 = (v5 - v6);
  v8 = MEMORY[0x28223BE20](v7);
  v33 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v16, qword_2802CDA10);
  (*(v18 + 16))(v22);
  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    v32 = v12;
    OUTLINED_FUNCTION_81(v25);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v23, v24, "responseCodeFromResult for SeekTimeIntentHandler");
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v22, v16);
  sub_2688F1FA4(v1, v15, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v34;
    v27 = *(v34 + 32);
    v27(v11, v15, v2);
    v28 = v33;
    sub_268B36EC4();
    v29 = *(v26 + 8);
    v29(v11, v2);
    v30 = v35;
    v27(v35, v28, v2);
    v31 = (*(v26 + 88))(v30, v2);
    if (v31 != *MEMORY[0x277D5F6B0] && v31 != *MEMORY[0x277D5F6C8])
    {
      v29(v30, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SeekTimeIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SeekTimeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B165D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_268B16864(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_268B1682C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_268B16864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v27[3] = sub_268B36C54();
  v27[4] = MEMORY[0x277D5F680];
  v27[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  v11 = type metadata accessor for SeekTimeIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_2879539D0;
  v25[0] = v17;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceSelector] = a2;
  sub_26890C900(v25, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_analyticsService]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_deviceState]);
  sub_26890C900(a3, v24);
  sub_26890C900(a5, v23);
  type metadata accessor for AceServiceHelper();
  v18 = swift_allocObject();
  sub_2688E6514(v24, v18 + 16);
  sub_2688E6514(v23, v18 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SeekTimeIntentHandler_aceServiceHelper] = v18;
  v22.receiver = v12;
  v22.super_class = v11;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v19;
}

uint64_t sub_268B16A8C()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_268B16C34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268B16C6C()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_27(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SeekTimeDevicesResolutionResult();
}

id PauseMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B16E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), SEL *a5)
{
  if (a1)
  {
    (a4)(0, a2, a3);
    v7 = sub_268B37CE4();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

id sub_268B16ED4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDirectInvocation];
  *a2 = result;
  return result;
}

void sub_268B16F10(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_268B16F84(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id PauseMediaIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseMediaIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PauseMediaIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PauseMediaIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for PauseMediaIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id PauseMediaIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for PauseMediaIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id PauseMediaIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id PauseMediaIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PauseMediaIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t PauseMediaIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1750C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PauseMediaIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B17564()
{
  v1 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B175D0(uint64_t a1)
{
  v3 = OBJC_IVAR___PauseMediaIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *PauseMediaIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id PauseMediaIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___PauseMediaIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseMediaIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PauseMediaIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___PauseMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for PauseMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id PauseMediaIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___PauseMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for PauseMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id PauseMediaIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id PauseMediaIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PauseMediaIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for PauseMediaIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t PauseMediaDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B17AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PauseMediaDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B17B04(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id PauseMediaDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PauseMediaDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PauseMediaDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B17D64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B17DA0()
{
  result = qword_2802A8E88;
  if (!qword_2802A8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8E88);
  }

  return result;
}

unint64_t sub_268B17DF8()
{
  result = qword_2802A8E90;
  if (!qword_2802A8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8E90);
  }

  return result;
}

id sub_268B17F24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B18014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B17564();
  *a1 = result;
  return result;
}

uint64_t sub_268B18160(void *a1, SEL *a2, uint64_t (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_268B37CF4();

  return v6;
}

uint64_t OUTLINED_FUNCTION_8_35(uint64_t a1, uint64_t a2)
{

  return sub_268B37BC4();
}

id ResumeMediaIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B18320(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 targetBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_268B18388(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTargetBundleIdentifier_];
}

id ResumeMediaIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResumeMediaIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResumeMediaIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ResumeMediaIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for ResumeMediaIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ResumeMediaIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for ResumeMediaIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id ResumeMediaIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id ResumeMediaIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for ResumeMediaIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t ResumeMediaIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B188E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResumeMediaIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1893C()
{
  v1 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B189A8(uint64_t a1)
{
  v3 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *ResumeMediaIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ResumeMediaIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResumeMediaIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ResumeMediaIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ResumeMediaIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___ResumeMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for ResumeMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ResumeMediaIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___ResumeMediaIntentResponse_code) = 0;
  v13 = type metadata accessor for ResumeMediaIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id ResumeMediaIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ResumeMediaIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ResumeMediaIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ResumeMediaIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t ResumeMediaDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B18EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResumeMediaDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ResumeMediaDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ResumeMediaDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ResumeMediaDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B190F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1912C()
{
  result = qword_2802A8EA0;
  if (!qword_2802A8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EA0);
  }

  return result;
}

unint64_t sub_268B19184()
{
  result = qword_2802A8EA8;
  if (!qword_2802A8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EA8);
  }

  return result;
}

id sub_268B19268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B19354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1893C();
  *a1 = result;
  return result;
}

id SkipTimeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_268B194C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

void sub_268B19504(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

void sub_268B19578(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id SkipTimeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SkipTimeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SkipTimeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SkipTimeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SkipTimeIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SkipTimeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SkipTimeIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SkipTimeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SkipTimeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SkipTimeIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SkipTimeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B19AE4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipTimeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B19B3C()
{
  v1 = OBJC_IVAR___SkipTimeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B19BA8(uint64_t a1)
{
  v3 = OBJC_IVAR___SkipTimeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SkipTimeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SkipTimeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SkipTimeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipTimeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SkipTimeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SkipTimeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SkipTimeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipTimeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SkipTimeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipTimeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SkipTimeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SkipTimeDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1A0A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipTimeDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SkipTimeDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SkipTimeDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SkipTimeDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1A2F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1A32C()
{
  result = qword_2802A8EB8;
  if (!qword_2802A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EB8);
  }

  return result;
}

unint64_t sub_268B1A384()
{
  result = qword_2802A8EC0;
  if (!qword_2802A8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EC0);
  }

  return result;
}

id sub_268B1A48C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B1A51C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B19B3C();
  *a1 = result;
  return result;
}

id SkipContentIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SkipContentIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SkipContentIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SkipContentIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SkipContentIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SkipContentIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SkipContentIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SkipContentIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SkipContentIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SkipContentIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SkipContentIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SkipContentIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1ABC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipContentIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1AC1C()
{
  v1 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1AC88(uint64_t a1)
{
  v3 = OBJC_IVAR___SkipContentIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SkipContentIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SkipContentIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipContentIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SkipContentIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SkipContentIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipContentIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipContentIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SkipContentIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SkipContentIntentResponse_code) = 0;
  v13 = type metadata accessor for SkipContentIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SkipContentIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SkipContentIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SkipContentIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SkipContentIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SkipContentDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1B188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SkipContentDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SkipContentDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SkipContentDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SkipContentDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1B3D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1B40C()
{
  result = qword_2802A8ED0;
  if (!qword_2802A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8ED0);
  }

  return result;
}

unint64_t sub_268B1B464()
{
  result = qword_2802A8ED8;
  if (!qword_2802A8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8ED8);
  }

  return result;
}

id sub_268B1B50C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 direction];
  *a2 = result;
  return result;
}

id sub_268B1B59C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B1B62C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1AC1C();
  *a1 = result;
  return result;
}

uint64_t SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id sub_268B1B77C()
{
  v1 = [v0 language];

  return v1;
}

void sub_268B1B7B4(void *a1)
{
  [v1 setLanguage_];
}

id sub_268B1B800()
{
  v1 = [v0 device];

  return v1;
}

id SetSubtitleStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B1B8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), SEL *a5)
{
  if (a1)
  {
    (a4)(0, a2, a3);
    v7 = sub_268B37CE4();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

id sub_268B1B984@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 device];
  *a2 = result;
  return result;
}

id sub_268B1B9C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 language];
  *a2 = result;
  return result;
}

void sub_268B1B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_6_46(a1);
  v9 = [v7 *v8];
  if (v9)
  {
    v10 = v9;
    a5(0);
    v11 = sub_268B37CF4();
  }

  else
  {
    v11 = 0;
  }

  *v5 = v11;
}

void sub_268B1BA6C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  if (*a1)
  {
    a5(0);
    v8 = sub_268B37CE4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a6];
}

id SetSubtitleStateIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetSubtitleStateIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetSubtitleStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetSubtitleStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetSubtitleStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetSubtitleStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetSubtitleStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetSubtitleStateIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SetSubtitleStateIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SetSubtitleStateIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SetSubtitleStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1BFDC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetSubtitleStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1C034()
{
  v1 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  return *&v1[v0];
}

uint64_t sub_268B1C0A0(uint64_t a1)
{
  v3 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  result = swift_beginAccess();
  *&v3[v1] = a1;
  return result;
}

id SetSubtitleStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  *&v6[v5] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetSubtitleStateIntentResponse.init()(uint64_t a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetSubtitleStateIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetSubtitleStateIntentResponse.init(coder:)(void *a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  v13 = type metadata accessor for SetSubtitleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetSubtitleStateIntentResponse.init(backingStore:)(void *a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  v13 = type metadata accessor for SetSubtitleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSubtitleStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetSubtitleStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *(OBJC_IVAR___SetSubtitleStateIntentResponse_code + v1) = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetSubtitleStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1C58C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_46(a1);
  result = SetSubtitleStateDeviceUnsupportedReason.init(rawValue:)(v2);
  *v1 = result;
  *(v1 + 8) = v4 & 1;
  return result;
}

id _s26SiriPlaybackControlIntents38SetSubtitleStateDeviceResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_268B1C768(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B1C8BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1C8F8()
{
  result = qword_2802A8EE8;
  if (!qword_2802A8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EE8);
  }

  return result;
}

unint64_t sub_268B1C950()
{
  result = qword_2802A8EF0;
  if (!qword_2802A8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EF0);
  }

  return result;
}

unint64_t sub_268B1C9A8()
{
  result = qword_2802A8EF8;
  if (!qword_2802A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8EF8);
  }

  return result;
}

id sub_268B1CA2C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) enable];
  *v1 = result;
  return result;
}

id sub_268B1CAE8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) type];
  *v1 = result;
  return result;
}

uint64_t sub_268B1CB74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1C034();
  *a1 = result;
  return result;
}

uint64_t sub_268B1CCD0(void *a1, SEL *a2, uint64_t (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_268B37CF4();

  return v6;
}

uint64_t SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetAudioLanguageIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268B1CE54(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    a3(0);
    v8 = sub_268B37CF4();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

id SetAudioLanguageIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetAudioLanguageIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetAudioLanguageIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetAudioLanguageIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetAudioLanguageIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetAudioLanguageIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetAudioLanguageIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetAudioLanguageIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SetAudioLanguageIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SetAudioLanguageIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SetAudioLanguageIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1D3B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetAudioLanguageIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1D408()
{
  v1 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1D474(uint64_t a1)
{
  v3 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetAudioLanguageIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetAudioLanguageIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetAudioLanguageIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetAudioLanguageIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetAudioLanguageIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetAudioLanguageIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetAudioLanguageIntentResponse_code) = 0;
  v13 = type metadata accessor for SetAudioLanguageIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetAudioLanguageIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetAudioLanguageIntentResponse_code) = 0;
  v13 = type metadata accessor for SetAudioLanguageIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetAudioLanguageIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetAudioLanguageIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetAudioLanguageIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetAudioLanguageIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1DA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetAudioLanguageLanguageUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B1DA70(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B1DBC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1DC00()
{
  result = qword_2802A8F08;
  if (!qword_2802A8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F08);
  }

  return result;
}

unint64_t sub_268B1DC58()
{
  result = qword_2802A8F10;
  if (!qword_2802A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F10);
  }

  return result;
}

unint64_t sub_268B1DCB0()
{
  result = qword_2802A8F18;
  if (!qword_2802A8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F18);
  }

  return result;
}

uint64_t sub_268B1DDC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1D408();
  *a1 = result;
  return result;
}

void sub_268B1DF04(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for DeviceContext();
    v2 = sub_268B37CE4();
  }

  else
  {
    v2 = 0;
  }

  [v1 setDeviceContext_];
}

id WhatDidTheySayIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

void sub_268B1E014(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceContext];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DeviceContext();
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B1E084(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for DeviceContext();
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeviceContext_];
}

uint64_t sub_268B1E0FC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 startTime];
  if (v3)
  {
    v4 = v3;
    sub_268B345D4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_268B34614();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_268B1E17C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_2688F33D8(a1, &v10 - v5);
  v7 = *a2;
  v8 = sub_268B34614();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_268B34594();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setStartTime_];
}

id WhatDidTheySayIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WhatDidTheySayIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WhatDidTheySayIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WhatDidTheySayIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WhatDidTheySayIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WhatDidTheySayIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WhatDidTheySayIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WhatDidTheySayIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id WhatDidTheySayIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for WhatDidTheySayIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t WhatDidTheySayIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1E76C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WhatDidTheySayIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1E7C4()
{
  v1 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1E830(uint64_t a1)
{
  v3 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WhatDidTheySayIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id WhatDidTheySayIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___WhatDidTheySayIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WhatDidTheySayIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WhatDidTheySayIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WhatDidTheySayIntentResponse_code) = 0;
  v13 = type metadata accessor for WhatDidTheySayIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id WhatDidTheySayIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WhatDidTheySayIntentResponse_code) = 0;
  v13 = type metadata accessor for WhatDidTheySayIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WhatDidTheySayIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id WhatDidTheySayIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WhatDidTheySayIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WhatDidTheySayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B1ED1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id WhatDidTheySayDeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id WhatDidTheySayDeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B1EF64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B1EFA0()
{
  result = qword_2802A8F28;
  if (!qword_2802A8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F28);
  }

  return result;
}

unint64_t sub_268B1EFF8()
{
  result = qword_2802A8F30;
  if (!qword_2802A8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F30);
  }

  return result;
}

uint64_t sub_268B1F080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1E7C4();
  *a1 = result;
  return result;
}

uint64_t sub_268B1F16C(void *a1)
{
  v1 = [a1 deviceContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceContext();
  v3 = sub_268B37CF4();

  return v3;
}

id SeekTimeIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id sub_268B1F268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playheadPosition];
  *a2 = result;
  return result;
}

id sub_268B1F2A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldStartPlaybackAfterSeek];
  *a2 = result;
  return result;
}

id sub_268B1F2E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isSkipToEnd];
  *a2 = result;
  return result;
}

id SeekTimeIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SeekTimeIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SeekTimeIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SeekTimeIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SeekTimeIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SeekTimeIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SeekTimeIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SeekTimeIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SeekTimeIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SeekTimeIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SeekTimeIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B1F808@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimeIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1F860()
{
  v1 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B1F8CC(uint64_t a1)
{
  v3 = OBJC_IVAR___SeekTimeIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SeekTimeIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SeekTimeIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SeekTimeIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SeekTimeIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SeekTimeIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SeekTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SeekTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SeekTimeIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SeekTimeIntentResponse_code) = 0;
  v13 = type metadata accessor for SeekTimeIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SeekTimeIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SeekTimeIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SeekTimeIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SeekTimeIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SeekTimeDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B1FDCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimeDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B1FEC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B1FF10(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B20064(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B200A0()
{
  result = qword_2802A8F40;
  if (!qword_2802A8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F40);
  }

  return result;
}

unint64_t sub_268B200F8()
{
  result = qword_2802A8F48;
  if (!qword_2802A8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F48);
  }

  return result;
}

unint64_t sub_268B20150()
{
  result = qword_2802A8F50;
  if (!qword_2802A8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F50);
  }

  return result;
}

id sub_268B202A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B20330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B1F860();
  *a1 = result;
  return result;
}

id SetShuffleStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetShuffleStateIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetShuffleStateIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetShuffleStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetShuffleStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetShuffleStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetShuffleStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetShuffleStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetShuffleStateIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SetShuffleStateIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SetShuffleStateIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SetShuffleStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B209C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetShuffleStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B20A20()
{
  v1 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B20A8C(uint64_t a1)
{
  v3 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetShuffleStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetShuffleStateIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetShuffleStateIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetShuffleStateIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetShuffleStateIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetShuffleStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetShuffleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetShuffleStateIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetShuffleStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetShuffleStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetShuffleStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetShuffleStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetShuffleStateIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetShuffleStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetShuffleStateDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B20F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetShuffleStateDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SetShuffleStateDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SetShuffleStateDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetShuffleStateDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B211D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B21210()
{
  result = qword_2802A8F60;
  if (!qword_2802A8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F60);
  }

  return result;
}

unint64_t sub_268B21268()
{
  result = qword_2802A8F68;
  if (!qword_2802A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F68);
  }

  return result;
}

id sub_268B21310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shuffleState];
  *a2 = result;
  return result;
}

id sub_268B213A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B21430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B20A20();
  *a1 = result;
  return result;
}

id SetRepeatStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetRepeatStateIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetRepeatStateIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetRepeatStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetRepeatStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetRepeatStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetRepeatStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetRepeatStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetRepeatStateIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SetRepeatStateIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SetRepeatStateIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SetRepeatStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B21A8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetRepeatStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B21AE4()
{
  v1 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B21B50(uint64_t a1)
{
  v3 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetRepeatStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetRepeatStateIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetRepeatStateIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetRepeatStateIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetRepeatStateIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRepeatStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRepeatStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetRepeatStateIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRepeatStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRepeatStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRepeatStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetRepeatStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetRepeatStateIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetRepeatStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetRepeatStateDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_268B22050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetRepeatStateDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SetRepeatStateDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SetRepeatStateDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetRepeatStateDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B22298(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B222D4()
{
  result = qword_2802A8F78;
  if (!qword_2802A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F78);
  }

  return result;
}

unint64_t sub_268B2232C()
{
  result = qword_2802A8F80;
  if (!qword_2802A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F80);
  }

  return result;
}

id sub_268B223D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 repeatState];
  *a2 = result;
  return result;
}

id sub_268B22464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B224F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B21AE4();
  *a1 = result;
  return result;
}

id GetVolumeLevelIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 7) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

id GetVolumeLevelIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetVolumeLevelIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetVolumeLevelIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetVolumeLevelIntent.init(coder:)(void *a1)
{
  VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id GetVolumeLevelIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
  v12 = OUTLINED_FUNCTION_7_36(VolumeLevelIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id GetVolumeLevelIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id GetVolumeLevelIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for GetVolumeLevelIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t GetVolumeLevelIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B22B64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetVolumeLevelIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B22B98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentVolumeLevel];
  *a2 = result;
  return result;
}

uint64_t sub_268B22BF8()
{
  v1 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B22C64(uint64_t a1)
{
  v3 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *GetVolumeLevelIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetVolumeLevelIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetVolumeLevelIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetVolumeLevelIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GetVolumeLevelIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetVolumeLevelIntentResponse_code) = 0;
  VolumeLevelIntentResponse = type metadata accessor for GetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id GetVolumeLevelIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___GetVolumeLevelIntentResponse_code) = 0;
  VolumeLevelIntentResponse = type metadata accessor for GetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(VolumeLevelIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id GetVolumeLevelIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id GetVolumeLevelIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GetVolumeLevelIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetVolumeLevelIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B23150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GetVolumeLevelDeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GetVolumeLevelDeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B23398(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B233D4()
{
  result = qword_2802A8F90;
  if (!qword_2802A8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F90);
  }

  return result;
}

unint64_t sub_268B2342C()
{
  result = qword_2802A8F98;
  if (!qword_2802A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8F98);
  }

  return result;
}

uint64_t sub_268B2354C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268B22BF8();
  *a1 = result;
  return result;
}

uint64_t SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

uint64_t SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetVolumeLevelIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_268B236E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 volumeLevel];
  *a2 = result;
  return result;
}

id SetVolumeLevelIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetVolumeLevelIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetVolumeLevelIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetVolumeLevelIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetVolumeLevelIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetVolumeLevelIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetVolumeLevelIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetVolumeLevelIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id SetVolumeLevelIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_35(a1, a2);

  v5 = sub_268B37BC4();

  if (v3)
  {
    v6 = sub_268B37B54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SetVolumeLevelIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t SetVolumeLevelIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_268B23C10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B23C68()
{
  v1 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B23CD4(uint64_t a1)
{
  v3 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetVolumeLevelIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetVolumeLevelIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetVolumeLevelIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetVolumeLevelIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SetVolumeLevelIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetVolumeLevelIntentResponse_code) = 0;
  v13 = type metadata accessor for SetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetVolumeLevelIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetVolumeLevelIntentResponse_code) = 0;
  v13 = type metadata accessor for SetVolumeLevelIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetVolumeLevelIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetVolumeLevelIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetVolumeLevelIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetVolumeLevelIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B241C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B242B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetVolumeLevelVolumeLevelUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B24304(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B24458(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B24494()
{
  result = qword_2802A8FA8;
  if (!qword_2802A8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FA8);
  }

  return result;
}

unint64_t sub_268B244EC()
{
  result = qword_2802A8FB0;
  if (!qword_2802A8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FB0);
  }

  return result;
}

unint64_t sub_268B24544()
{
  result = qword_2802A8FB8;
  if (!qword_2802A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FB8);
  }

  return result;
}

id sub_268B24644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 settingAttribute];
  *a2 = result;
  return result;
}