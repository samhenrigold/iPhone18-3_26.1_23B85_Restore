unint64_t sub_1D542C42C()
{
  result = qword_1EC7F66C0;
  if (!qword_1EC7F66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66C0);
  }

  return result;
}

unint64_t sub_1D542C480()
{
  result = qword_1EC7F66C8;
  if (!qword_1EC7F66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66C8);
  }

  return result;
}

uint64_t sub_1D542C4D8()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D542C56C;

  return sub_1D542CB8C(v2);
}

uint64_t sub_1D542C56C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D542C660, 0, 0);
}

uint64_t sub_1D542C660()
{
  v22 = v0;
  v1 = sub_1D4E62628(v0[5]);
  v2 = v0[5];
  if (v1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530) + 48);
    *v4 = v2;
    v6 = sub_1D5614898();
    (*(*(v6 - 8) + 16))(&v4[v5], v3, v6);
    v7 = type metadata accessor for MusicLibraryIntentDonation(0);
    swift_storeEnumTagMultiPayload();
    v8 = v4;
    v9 = 0;
    v10 = 1;
    v11 = v7;
  }

  else
  {

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v12 = sub_1D560C758();
    __swift_project_value_buffer(v12, qword_1EDD76AF0);
    v13 = sub_1D560C738();
    v14 = sub_1D56156C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D4E6835C(0xD000000000000014, 0x80000001D568DEF0, &v21);
      OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v17, v18, "%s: could not produce intent from music items");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    type metadata accessor for MusicLibraryIntentDonation(0);
    v8 = OUTLINED_FUNCTION_5_130();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v19 = v0[1];

  return v19();
}

uint64_t sub_1D542C85C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D542C8F0;

  return sub_1D542CB8C(v2);
}

uint64_t sub_1D542C8F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D542C9E4, 0, 0);
}

uint64_t sub_1D542C9E4()
{
  v17 = v0;
  if (sub_1D4E62628(v0[4]))
  {
    v1 = v0[2];
    *v1 = v0[4];
    v2 = type metadata accessor for MusicLibraryIntentDonation(0);
    swift_storeEnumTagMultiPayload();
    v3 = v1;
    v4 = 0;
    v5 = 1;
    v6 = v2;
  }

  else
  {

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82(&qword_1EDD544B0);
    }

    v7 = sub_1D560C758();
    __swift_project_value_buffer(v7, qword_1EDD76AF0);
    v8 = sub_1D560C738();
    v9 = sub_1D56156C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D4E6835C(0xD000000000000010, 0x80000001D568DED0, &v16);
      OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v12, v13, "%s: could not produce intent from music items");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    type metadata accessor for MusicLibraryIntentDonation(0);
    v3 = OUTLINED_FUNCTION_5_130();
  }

  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1D542CBAC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 24);
  v3 = v2[2];
  *(v0 + 32) = v3;
  if (v3)
  {
    *(v0 + 40) = 0;
    *(v0 + 48) = v1;
    OUTLINED_FUNCTION_1_170(v2);
    *(v0 + 73) = *(v0 + 72);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_0_228(v4);

    return MusicItem.convertToIntentMediaItem(for:)();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1D542CC94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;

  if (v0)
  {

    v5 = sub_1D542CEE0;
  }

  else
  {
    v5 = sub_1D542CDA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D542CDA4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = (v0 + 16);
    v3 = v1;
    MEMORY[0x1DA6EAF30]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
  }

  else
  {
    v2 = (v0 + 48);
  }

  v4 = *v2;
  v5 = *(v0 + 40) + 1;
  if (v5 == *(v0 + 32))
  {
    OUTLINED_FUNCTION_50();

    return v6();
  }

  else
  {
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    OUTLINED_FUNCTION_1_170((*(v0 + 24) + 40 * v5));
    *(v0 + 73) = *(v0 + 72);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_0_228(v8);

    return MusicItem.convertToIntentMediaItem(for:)();
  }
}

uint64_t sub_1D542CEE0()
{
  v1 = *(v0 + 40) + 1;
  if (v1 == *(v0 + 32))
  {
    OUTLINED_FUNCTION_50();

    return v2();
  }

  else
  {
    *(v0 + 40) = v1;
    OUTLINED_FUNCTION_1_170((*(v0 + 24) + 40 * v1));
    *(v0 + 73) = *(v0 + 72);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1D542CC94;

    return MusicItem.convertToIntentMediaItem(for:)();
  }
}

id sub_1D542CFEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D8, qword_1D5664538);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v39 = v6;
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D560C968();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for MusicLibraryIntentDonation(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v37 - v22);
  sub_1D542D570(v1, &v37 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *v23;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530);
    (*(v39 + 8))(v23 + *(v25 + 48), v40);
  }

  sub_1D542D570(v1, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530);
    v27 = v39;
    v28 = &v21[*(v26 + 48)];
    v29 = v40;
    (*(v39 + 32))(v8, v28, v40);
    v30 = sub_1D56146D8();
    v32 = v31;
    (*(v27 + 8))(v8, v29);
    *v15 = v30;
    v15[1] = v32;
    v33 = MEMORY[0x1E69E8180];
  }

  else
  {
    sub_1D542D5D4(v21);
    v33 = MEMORY[0x1E69E8178];
  }

  (*(v11 + 104))(v15, *v33, v9);
  (*(v11 + 32))(v17, v15, v9);
  (*(v11 + 16))(v4, v17, v9);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
  v34 = objc_allocWithZone(MEMORY[0x1E696E708]);
  v35 = sub_1D542D42C(v38, 0, v4);
  (*(v11 + 8))(v17, v9);
  return v35;
}

uint64_t sub_1D542D3B4()
{
  OUTLINED_FUNCTION_60();
  sub_1D542CFEC();
  OUTLINED_FUNCTION_50();

  return v0();
}

id sub_1D542D42C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    sub_1D5423530();
    v7 = sub_1D5615158();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1D560C968();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v8) != 1)
  {
    v9 = sub_1D560C958();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v10 = [v4 initWithMediaItems:v7 mediaSearch:a2 mediaDestination:v9];

  return v10;
}

uint64_t type metadata accessor for MusicLibraryIntentDonation(uint64_t a1)
{
  result = qword_1EC7F66E0;
  if (!qword_1EC7F66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D542D570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryIntentDonation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542D5D4(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibraryIntentDonation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D542D630(uint64_t a1)
{
  sub_1D542D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_1D542D6FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D542D6A4(uint64_t a1)
{
  if (!qword_1EC7F66F0)
  {
    sub_1D5423530();
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F66F0);
    }
  }
}

void sub_1D542D6FC(uint64_t a1)
{
  if (!qword_1EC7F66F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6700, qword_1D5664570);
    sub_1D5614898();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F66F8);
    }
  }
}

uint64_t VideoCredit.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VideoCredit.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoCredit(0) + 20);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VideoCredit(uint64_t a1)
{
  result = qword_1EC7F6730;
  if (!qword_1EC7F6730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static VideoCredit.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D5616168() & 1) != 0)
  {
    type metadata accessor for VideoCredit(0);
    if (sub_1D560BFB8())
    {

      sub_1D4F286E0();
    }
  }
}

uint64_t sub_1D542D91C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D542DA34(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x65756C6156776172;
}

uint64_t sub_1D542DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D542D91C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542DAB0(uint64_t a1)
{
  v2 = sub_1D542DD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542DAEC(uint64_t a1)
{
  v2 = sub_1D542DD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoCredit.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6708, &unk_1D5664590);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542DD00();
  sub_1D56163D8();
  v19[1] = 0;
  sub_1D5616088();
  if (!v2)
  {
    v11 = type metadata accessor for VideoCredit(0);
    v12 = *(v11 + 20);
    v19[0] = 1;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_229();
    sub_1D542E6D8(v13, v14, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_5_131(v3 + v12, v19);
    v18 = *(v3 + *(v11 + 24));
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_5_131(&v18, &v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1D542DD00()
{
  result = qword_1EC7F6710;
  if (!qword_1EC7F6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6710);
  }

  return result;
}

void VideoCredit.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for VideoCredit(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v1, v2, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();

  sub_1D4F31AC0();
}

uint64_t VideoCredit.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for VideoCredit(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v0, v1, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t VideoCredit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6718, &qword_1D56645A0);
  OUTLINED_FUNCTION_4();
  v25 = v9;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for VideoCredit(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542DD00();
  v27 = v11;
  v15 = v28;
  sub_1D5616398();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v12;
  v32 = 0;
  *v14 = sub_1D5615F98();
  v14[1] = v16;
  v22[2] = v16;
  v31 = 1;
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v17, v18, MEMORY[0x1E6968FD0]);
  sub_1D5615FD8();
  (*(v24 + 32))(v14 + *(v28 + 20), v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v30 = 2;
  sub_1D4F31CF4();
  v22[1] = 0;
  sub_1D5615FD8();
  v19 = OUTLINED_FUNCTION_2_171();
  v20(v19);
  *(v14 + *(v28 + 24)) = v29;
  sub_1D542E5D0(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D542E634(v14);
}

uint64_t sub_1D542E28C(uint64_t a1)
{
  sub_1D56162D8();
  VideoCredit.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t VideoCredit.Category.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VideoCredit.Category.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_1_1();
    v5 = sub_1D5616188();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VideoCredit.Category.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D542E534@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = VideoCredit.Category.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D542E574@<X0>(uint64_t *a1@<X8>)
{
  result = VideoCredit.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D542E5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoCredit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542E634(uint64_t a1)
{
  v2 = type metadata accessor for VideoCredit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D542E6D8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D542E724()
{
  result = qword_1EC7F6728;
  if (!qword_1EC7F6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6728);
  }

  return result;
}

void sub_1D542E7A0(uint64_t a1)
{
  sub_1D560C0A8();
  if (v1 <= 0x3F)
  {
    sub_1D4E5CF94(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoCredit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D542E924()
{
  result = qword_1EC7F6740;
  if (!qword_1EC7F6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6740);
  }

  return result;
}

unint64_t sub_1D542E97C()
{
  result = qword_1EC7F6748;
  if (!qword_1EC7F6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6748);
  }

  return result;
}

unint64_t sub_1D542E9D4()
{
  result = qword_1EC7F6750;
  if (!qword_1EC7F6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6750);
  }

  return result;
}

uint64_t Composer.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v98 = a4;
  v96 = a5;
  v95 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v94 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v11 - v10);
  v12 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v86 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v16 - v15);
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v101 = v18;
  v102 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v84 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB548, &qword_1D56648E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = OUTLINED_FUNCTION_48(&v82 - v22);
  v24 = type metadata accessor for ComposerPropertyProvider(v23);
  OUTLINED_FUNCTION_14();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v83 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v82 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v82 - v33;
  v92 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v91 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;

  v97 = a2;
  sub_1D560F7E8();
  v89 = sub_1D542F42C();
  v88 = sub_1D5614C68();

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v12);
  sub_1D5610028();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v12);
  sub_1D560D4D8();
  sub_1D4E50004(v32, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v34, &qword_1EC7EA358, &unk_1D561DF50);
  v98 = a3;
  sub_1D4EC76A8(a3, v103);
  v100 = a1;
  v90 = v39;
  if (!v104)
  {
    sub_1D4E50004(v103, &qword_1EC7EEC40, &unk_1D561C070);
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    goto LABEL_8;
  }

  if (!*(&v106 + 1))
  {
LABEL_8:
    sub_1D4E50004(&v105, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v105, &v108);
  __swift_project_boxed_opaque_existential_1(&v108, v109);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v43 = v87;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v24);
    v44 = v83;
    sub_1D4F1A9D4(v43, v83);
    v45 = v99;
    sub_1D542F480(v44, v99);
    v46 = v84;
    sub_1D560D718();
    (*(v101 + 40))(v45 + v24[8], v46, v102);
    v47 = v85;
    sub_1D5612468();
    (*(v86 + 40))(v45 + v24[9], v47, v12);
    v48 = sub_1D5612458();
    v50 = v49;
    sub_1D4F1AA38(v44);
    v51 = (v45 + v24[10]);

    *v51 = v48;
    v51[1] = v50;
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v52 = v24;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v24);
  sub_1D4E50004(v43, &qword_1EC7EB548, &qword_1D56648E0);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  a1 = v100;
LABEL_9:
  sub_1D560C328();
  v53 = v24;
  v54 = v99;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  (*(v101 + 16))(&v54[v53[8]], a1, v102);
  v52 = v53;
  sub_1D5612468();
  v87 = sub_1D5612458();
  v64 = v63;
  sub_1D5614A88();
  v65 = OUTLINED_FUNCTION_1_171();
  v66 = OUTLINED_FUNCTION_1_171();
  v67 = OUTLINED_FUNCTION_1_171();
  v68 = OUTLINED_FUNCTION_1_171();
  *v54 = 0;
  *(v54 + 1) = 0;
  if (qword_1EC7E8990 != -1)
  {
    swift_once();
  }

  v69 = qword_1EC87BE50;
  if (qword_1EC87BE50 >> 62)
  {
    sub_1D560CDE8();

    v81 = sub_1D5615E18();

    v69 = v81;
    v54 = v99;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v54[v53[7]] = v69;
  v70 = &v54[v53[10]];
  *v70 = v87;
  *(v70 + 1) = v64;
  *&v54[v53[11]] = v65;
  *&v54[v53[12]] = v66;
  *&v54[v53[13]] = v67;
  *&v54[v53[14]] = v68;
  v45 = v54;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v108) = 1;
  LODWORD(v99) = *MEMORY[0x1E6976668];
  v71 = v94;
  v87 = *(v94 + 104);
  v72 = v93;
  v73 = v95;
  v87(v93);
  v86 = sub_1D542FCB8(&qword_1EC7EB530, type metadata accessor for ComposerPropertyProvider, &unk_1D561E458);
  sub_1D5610D68();

  v74 = *(v71 + 8);
  v74(v72, v73);
  swift_getKeyPath();
  LOBYTE(v108) = 0;
  (v87)(v72, v99, v73);
  v75 = v86;
  sub_1D5610D68();

  v74(v72, v73);
  v109 = v52;
  v110 = v75;
  v76 = __swift_allocate_boxed_opaque_existential_0(&v108);
  sub_1D542F480(v45, v76);
  Composer.init(propertyProvider:)(&v108, v96);
  swift_unknownObjectRelease();
  sub_1D4E50004(v98, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v101 + 8))(v100, v102);
  (*(v91 + 8))(v90, v92);
  return sub_1D4F1AA38(v45);
}

unint64_t sub_1D542F42C()
{
  result = qword_1EC7F6758;
  if (!qword_1EC7F6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6758);
  }

  return result;
}

uint64_t sub_1D542F480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposerPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542F4E4()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD54858);
  v1 = __swift_project_value_buffer(v0, qword_1EDD54858);
  v2 = *MEMORY[0x1E6976880];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Composer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD54850 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD54858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Composer.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - v1;
  sub_1D4ECC83C();
  v23 = sub_1D5614BD8();
  v3 = Composer.name.getter();
  sub_1D4EC8CD0(&v20, 0, v5, v6, v7, v8, v9, v10, v3, v4, v21, MEMORY[0x1E69E6158], v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  if (qword_1EC7E90E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560C328();
  sub_1D542FCB8(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  sub_1D542FCB8(&qword_1EDD54818, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
  {
    sub_1D4E50004(v2, &qword_1EC7EA3B8, &unk_1D561E370);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v2, v11);
  }

  sub_1D4EC8CD0(&v20, 1, v12, v13, v14, v15, v16, v17, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  return v23;
}

uint64_t Composer.LegacyModelComposerPropertyKey.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1D5615EF8();

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

unint64_t Composer.LegacyModelComposerPropertyKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_1D542F908@<X0>(unint64_t *a1@<X8>)
{
  result = Composer.LegacyModelComposerPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Composer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976880];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

unint64_t sub_1D542F9A0()
{
  result = qword_1EC7F6760;
  if (!qword_1EC7F6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6760);
  }

  return result;
}

unint64_t sub_1D542F9FC()
{
  result = qword_1EC7F6768;
  if (!qword_1EC7F6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6768);
  }

  return result;
}

uint64_t sub_1D542FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D542FCB8(&qword_1EDD54810, type metadata accessor for Composer, &protocol conformance descriptor for Composer);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D542FB50(uint64_t a1, uint64_t a2)
{
  sub_1D542FCB8(&qword_1EC7EF9A8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);

  return sub_1D56132F8();
}

_BYTE *_s30LegacyModelComposerPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D542FCB8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D542FD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (a2)
  {
    v13 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_87(0x6D75626C61, 0xE500000000000000) & 1) != 0)
    {

      sub_1D560FFB8();
LABEL_8:
      (*(v8 + 32))(a3, v12, v6);
      return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    v15 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v15 || (OUTLINED_FUNCTION_0_87(0x747369747261, 0xE600000000000000) & 1) != 0)
    {

      sub_1D560FFD8();
      goto LABEL_8;
    }

    v16 = a1 == 0x646E617262 && a2 == 0xE500000000000000;
    if (v16 || (OUTLINED_FUNCTION_0_87(0x646E617262, 0xE500000000000000) & 1) != 0)
    {

      sub_1D560FFF8();
      goto LABEL_8;
    }

    v17 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v17 || (OUTLINED_FUNCTION_0_87(0x6569766F6DLL, 0xE500000000000000) & 1) != 0)
    {

      sub_1D560FE28();
      goto LABEL_8;
    }

    v18 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
    if (v18 || (OUTLINED_FUNCTION_0_87(0x646956636973756DLL, 0xEA00000000006F65) & 1) != 0)
    {

      sub_1D560FE38();
      goto LABEL_8;
    }

    v19 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_0_87(0x7473696C79616C70, 0xE800000000000000) & 1) != 0)
    {

      sub_1D5610038();
      goto LABEL_8;
    }

    v20 = a1 == 1735290739 && a2 == 0xE400000000000000;
    if (v20 || (OUTLINED_FUNCTION_0_87(1735290739, 0xE400000000000000) & 1) != 0)
    {

      sub_1D560FFA8();
      goto LABEL_8;
    }

    v21 = a1 == 0x6174536F69646172 && a2 == 0xEC0000006E6F6974;
    if (v21 || (OUTLINED_FUNCTION_0_87(0x6174536F69646172, 0xEC0000006E6F6974) & 1) != 0)
    {

      sub_1D5610008();
      goto LABEL_8;
    }

    v22 = a1 == 0x724273656E755469 && a2 == 0xEB00000000646E61;
    if (v22 || (OUTLINED_FUNCTION_0_87(0x724273656E755469, 0xEB00000000646E61) & 1) != 0)
    {

      sub_1D560FE78();
      goto LABEL_8;
    }

    v23 = a1 == 0x646F736970457674 && a2 == 0xE900000000000065;
    if (v23 || (OUTLINED_FUNCTION_0_87(0x646F736970457674, 0xE900000000000065) & 1) != 0)
    {

      sub_1D5610078();
      goto LABEL_8;
    }

    v24 = a1 == 0x6E6F736165537674 && a2 == 0xE800000000000000;
    if (v24 || (OUTLINED_FUNCTION_0_87(0x6E6F736165537674, 0xE800000000000000) & 1) != 0)
    {

      sub_1D5610068();
      goto LABEL_8;
    }

    v25 = a1 == 0x6E617242776F6873 && a2 == 0xE900000000000064;
    if (v25 || (OUTLINED_FUNCTION_0_87(0x6E617242776F6873, 0xE900000000000064) & 1) != 0)
    {

      sub_1D560FFE8();
      goto LABEL_8;
    }

    v26 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F69647541;
    if (v26 || (OUTLINED_FUNCTION_0_87(0x646564616F6C7075, 0xED00006F69647541) & 1) != 0)
    {

      sub_1D560FF28();
      goto LABEL_8;
    }

    v27 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956;
    if (v27 || (OUTLINED_FUNCTION_0_87(0x646564616F6C7075, 0xED00006F65646956) & 1) != 0)
    {

      sub_1D560FF38();
      goto LABEL_8;
    }

    if (a1 == 0x666F725072657375 && a2 == 0xEB00000000656C69)
    {
    }

    else
    {
      v29 = OUTLINED_FUNCTION_0_87(0x666F725072657375, 0xEB00000000656C69);

      if ((v29 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    sub_1D560FE68();
    goto LABEL_8;
  }

LABEL_92:

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

uint64_t sub_1D54301F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v46 = a2;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v44 = v10;
  v45 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_5();
  v47 = v17 - v16;
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1D560FE68();
  v26 = a1;
  v27 = sub_1D4F3B22C();
  (*(v21 + 8))(v25, v19);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_4_135();
    v29(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v30 = sub_1D560DB08();
    OUTLINED_FUNCTION_4();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_3_176();
    *(v33 + 16) = xmmword_1D561C050;
    (*(v32 + 104))(v33 + v27, *MEMORY[0x1E6975048], v30);

    sub_1D560E718();
    return sub_1D560D748();
  }

  else
  {
    (*(v21 + 16))(v8, v26, v19);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);

    sub_1D560F128();
    v35 = v44;
    v36 = v45;
    (*(v44 + 16))(v43, v14, v45);
    v37 = OUTLINED_FUNCTION_4_135();
    v38(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v39 = sub_1D560DB08();
    OUTLINED_FUNCTION_4();
    v41 = v40;
    v42 = OUTLINED_FUNCTION_3_176();
    *(v42 + 16) = xmmword_1D561C050;
    (*(v41 + 104))(v42 + v27, *MEMORY[0x1E6975048], v39);
    sub_1D560E718();
    sub_1D560D798();
    return (*(v35 + 8))(v14, v36);
  }
}

uint64_t MigratedAlbum.init(id:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = a4;
  *(a5 + 32) = v5;
  *(a5 + 48) = 1;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  *(a5 + 72) = 0;
  *(a5 + 80) = 513;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t MigratedAlbum.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v22 = *(v0 + 81);
  v21 = v0[11];
  v23 = v0[12];
  OUTLINED_FUNCTION_1_172();
  v25 = v9;
  v26 = v10;
  strcpy(v24, "\n  id: ");
  BYTE1(v24[1]) = 0;
  WORD1(v24[1]) = 0;
  HIDWORD(v24[1]) = -402653184;

  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_4_136();
  MEMORY[0x1DA6EAC70](v24[0], v24[1]);

  strcpy(v24, ",\n  title: ");
  HIWORD(v24[1]) = -5120;
  MEMORY[0x1DA6EAC70](v3, v4);
  OUTLINED_FUNCTION_4_136();
  MEMORY[0x1DA6EAC70](v24[0], v24[1]);

  v24[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0798, &qword_1D5639040);
  sub_1D513CA30();
  sub_1D56155F8();

  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD00000000000001DLL;
    v24[1] = v18;
    v19 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v19);

    OUTLINED_FUNCTION_3_177();

    if (v7)
    {
LABEL_3:
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();

  v24[0] = 0x6373696420200A2CLL;
  v24[1] = 0xEF203A746E756F43;
  v20 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v20);

  OUTLINED_FUNCTION_3_177();

  if ((v8 & 1) == 0)
  {
LABEL_4:
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD000000000000010;
    v24[1] = v11;
    v12 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v12);

    OUTLINED_FUNCTION_3_177();
  }

LABEL_5:
  if (v22 != 2)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[0] = 0xD000000000000013;
    v24[1] = v13;
    if (v22)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v22)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    OUTLINED_FUNCTION_3_177();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v24[1] = v16;
    MEMORY[0x1DA6EAC70](v21, v23);
    OUTLINED_FUNCTION_4_136();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, v24[1]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v25;
}

uint64_t MigratedAlbum.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MigratedAlbum.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MigratedAlbum.artists.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MigratedAlbum.new_discCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MigratedAlbum.new_trackCount.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t MigratedAlbum.artworkImageFilePath.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MigratedAlbum.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t static MigratedAlbum.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v33 = a1[5];
  v5 = *(a1 + 48);
  v30 = a1[7];
  v34 = *(a1 + 64);
  v31 = *(a1 + 80);
  v27 = *(a1 + 81);
  v22 = a1[11];
  v24 = a1[12];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v28 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = a1[9];
  v29 = *(a2 + 80);
  v32 = *(a2 + 81);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v21 = *(a2 + 88);
  v23 = *(a2 + 96);
  if (!v12 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v4 == v7;
  if (!v13 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  sub_1D4EF9FCC(v3, v9);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v33 == v8)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v34)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v30 == v28)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v31)
  {
    v17 = v32;
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    v18 = v29;
    if (v26 != v25)
    {
      v18 = 1;
    }

    v17 = v32;
    if (v18)
    {
      return 0;
    }
  }

  if (v27 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

LABEL_37:
    if (v24)
    {
      if (!v23)
      {
        return 0;
      }

      v20 = v22 == v21 && v24 == v23;
      if (!v20 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v23)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v17 != 2 && ((v17 ^ v27) & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t MigratedAlbum.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 81);
  v9 = *(v1 + 72);
  v10 = *(v1 + 96);
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D4F086FC();
  if (v3 == 1)
  {
    sub_1D56162F8();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D56162F8();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC100](v2);
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D56162F8();
  MEMORY[0x1DA6EC100](v4);
  if (!v6)
  {
LABEL_4:
    sub_1D56162F8();
    MEMORY[0x1DA6EC100](v9);
    goto LABEL_8;
  }

LABEL_7:
  sub_1D56162F8();
LABEL_8:
  if (v7 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (!v10)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MigratedAlbum.hashValue.getter()
{
  sub_1D56162D8();
  MigratedAlbum.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5431078(uint64_t a1)
{
  sub_1D56162D8();
  MigratedAlbum.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D54310B4@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedAlbum.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MigratedAlbum.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_1_172();
  v5 = v3;
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v5;
}

uint64_t MigratedAlbum.releaseDateSeconds.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40) / 1000;
  }
}

void MigratedAlbum.releaseDateSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 40) = v3;
    OUTLINED_FUNCTION_5_132(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t *(*MigratedAlbum.releaseDateSeconds.modify(uint64_t a1))(uint64_t *result, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 40) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D5431290;
}

uint64_t *sub_1D5431290(uint64_t *result, char a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    if (result[1])
    {
LABEL_6:
      v3 = 0;
      goto LABEL_8;
    }

    v3 = 1000 * *result;
    if ((*result * 1000) >> 64 == v3 >> 63)
    {
LABEL_8:
      v4 = result[2];
      *(v4 + 40) = v3;
      *(v4 + 48) = v2;
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_6;
  }

  v3 = 1000 * *result;
  if ((*result * 1000) >> 64 == v3 >> 63)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MigratedAlbum.discCount.getter()
{
  if ((*(v0 + 64) & 1) != 0 || !(*(v0 + 56) >> 31))
  {
    return OUTLINED_FUNCTION_5_2(*(v0 + 64));
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5431318@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.discCount.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MigratedAlbum.discCount.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 0;
LABEL_5:
    *(v1 + 56) = v2;
    *(v1 + 64) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x80000000) == 0)
  {
    v2 = result & 0x7FFFFFFF;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t *(*MigratedAlbum.discCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *result = v1;
  v2 = *(v1 + 64);
  if (v2)
  {
    LODWORD(v3) = 0;
LABEL_4:
    *(result + 2) = v3;
    *(result + 12) = v2;
    return sub_1D54313C0;
  }

  v3 = *(v1 + 56);
  if (!(v3 >> 31))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D54313C0(uint64_t *result, char a2)
{
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (a2)
  {
    if (*(result + 12))
    {
LABEL_6:
      v2 = 0;
      goto LABEL_8;
    }

    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      v4 = *result;
      *(v4 + 56) = v2;
      *(v4 + 64) = v3;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_6;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MigratedAlbum.trackCount.getter()
{
  if ((*(v0 + 80) & 1) != 0 || !(*(v0 + 72) >> 31))
  {
    return OUTLINED_FUNCTION_5_2(*(v0 + 80));
  }

  __break(1u);
  return result;
}

unint64_t sub_1D543142C@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.trackCount.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MigratedAlbum.trackCount.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 0;
LABEL_5:
    *(v1 + 72) = v2;
    *(v1 + 80) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x80000000) == 0)
  {
    v2 = result & 0x7FFFFFFF;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t *(*MigratedAlbum.trackCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *result = v1;
  v2 = *(v1 + 80);
  if (v2)
  {
    LODWORD(v3) = 0;
LABEL_4:
    *(result + 2) = v3;
    *(result + 12) = v2;
    return sub_1D5431518;
  }

  v3 = *(v1 + 72);
  if (!(v3 >> 31))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D5431518(uint64_t *result, char a2)
{
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (a2)
  {
    if (*(result + 12))
    {
LABEL_6:
      v2 = 0;
      goto LABEL_8;
    }

    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      v4 = *result;
      *(v4 + 72) = v2;
      *(v4 + 80) = v3;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_6;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5431560()
{
  result = qword_1EC7F6770;
  if (!qword_1EC7F6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6770);
  }

  return result;
}

uint64_t static CloudRealm.internal.getter()
{
  sub_1D510E1C4();
  v0 = sub_1D52FE428();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
  v1 = sub_1D560BB98();
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  if ((v0 & 1) == 0)
  {
    if (qword_1EDD5CFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_1EDD5CFA0 != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_0_231(&qword_1EDD5CFA0);
  }

LABEL_5:
  __swift_project_value_buffer(v1, qword_1EDD5CFA8);
  v2 = OUTLINED_FUNCTION_2_172();
  v3(v2);
  v4 = OUTLINED_FUNCTION_1_173();

  return MEMORY[0x1EEDCF708](v4);
}

uint64_t MusicDataRequest.ExecutionMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t static MusicDataRequest.preferredExecutionMethod.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EDD5F568;
  return result;
}

uint64_t sub_1D54318CC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return sub_1D560D318();
  }

  return result;
}

uint64_t sub_1D5431958@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560F5C8();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  a1(v5);
  v6 = sub_1D560D2E8();
  v7 = MEMORY[0x1E6974E68];
  a2[3] = v6;
  a2[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return sub_1D560D2C8();
}

unint64_t sub_1D5431A04()
{
  result = qword_1EC7F6778;
  if (!qword_1EC7F6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6780, &qword_1D5664C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6778);
  }

  return result;
}

unint64_t sub_1D5431A6C()
{
  result = qword_1EC7F6788;
  if (!qword_1EC7F6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6788);
  }

  return result;
}

_BYTE *_s15ExecutionMethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D5431B8C(void *a1@<X8>)
{
  v117 = a1;
  v135 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v140 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_1D56119D8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  *&v138 = &v111 - v15;
  v16 = sub_1D5612D38();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v111 - v32;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  sub_1D5610708();
  v34 = sub_1D5612D08();
  v36 = *(v18 + 8);
  v35 = v18 + 8;
  v119 = v36;
  (v36)(v33, v16);
  if (v34)
  {
    v111 = v35;
    v112 = v16;
    v113 = v1;
    v38 = 0;
    v137 = *(v34 + 16);
    v132 = (v7 + 8);
    v133 = v13 + 16;
    v121 = 0x80000001D568DBF0;
    v128 = *MEMORY[0x1E69763E0];
    v127 = (v140 + 104);
    v126 = (v140 + 16);
    v125 = (v140 + 8);
    v123 = 0x80000001D568DBD0;
    v131 = (v13 + 8);
    v118 = MEMORY[0x1E69E7CC0];
    *&v37 = 136315138;
    v122 = v37;
    v129 = v11;
    v33 = v13;
    v130 = v13;
    v134 = v34;
LABEL_3:
    v39 = v138;
    while (1)
    {
      if (v137 == v38)
      {

        v16 = v112;
        goto LABEL_23;
      }

      if (v38 >= *(v34 + 16))
      {
        break;
      }

      v40 = v34 + ((v33[80] + 32) & ~v33[80]);
      v41 = *(v33 + 9);
      v140 = v38;
      (*(v33 + 2))(COERCE_DOUBLE(*&v39), v40 + v41 * v38, v11);
      v42 = v136;
      sub_1D5610708();
      v43 = sub_1D56119C8();
      v45 = v44;
      v46 = *v132;
      (*v132)(v42, v139);
      if (v45)
      {
        *v5 = 0xD000000000000017;
        v47 = v123;
      }

      else
      {
        v48 = v124;
        sub_1D5610708();
        v49 = sub_1D56119A8();
        v51 = v50;
        v46(v48, v139);
        if ((v51 & 1) == 0)
        {
          (*v131)(*&v138, v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v134;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D4F02340();
            v118 = v70;
          }

          v67 = *(v118 + 16);
          if (v67 >= *(v118 + 24) >> 1)
          {
            sub_1D4F02340();
            v118 = v71;
          }

          v38 = v140 + 1;
          v68 = v118;
          *(v118 + 16) = v67 + 1;
          v69 = v68 + 16 * v67;
          *(v69 + 32) = v43 / 1000.0;
          *(v69 + 40) = v49 / 1000.0;
          v33 = v130;
          goto LABEL_3;
        }

        *v5 = 0xD000000000000014;
        v47 = v121;
        v33 = v130;
      }

      v5[1] = v47;
      v52 = v135;
      (*v127)(v5, v128, v135);
      sub_1D50F96EC();
      v53 = swift_allocError();
      (*v126)(v54, v5, v52);
      swift_willThrow();
      (*v125)(v5, v52);
      if (qword_1EDD5D8A8 != -1)
      {
        swift_once();
      }

      v55 = sub_1D560C758();
      __swift_project_value_buffer(v55, qword_1EDD76DC8);
      v56 = v53;
      v57 = sub_1D560C738();
      v58 = sub_1D56156C8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v141 = v53;
        v142 = v60;
        *v59 = v122;
        v61 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        v62 = sub_1D5614DB8();
        v64 = sub_1D4E6835C(v62, v63, &v142);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_1D4E3F000, v57, v58, "Unable to decode spatial offset because of %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1DA6ED200](v60, -1, -1);
        v65 = v59;
        v33 = v130;
        MEMORY[0x1DA6ED200](v65, -1, -1);
      }

      else
      {
      }

      v39 = v138;
      v34 = v134;
      v11 = v129;
      (*v131)(*&v138, v129);
      v38 = v140 + 1;
    }

    __break(1u);
  }

  else
  {
    v118 = 0;
LABEL_23:
    v72 = v114;
    v73 = v120;
    sub_1D5610708();
    v74 = sub_1D5612CB8();
    v76 = v75;
    v77 = v72;
    v78 = v119;
    (v119)(v77, v16);
    v79 = 0.0;
    v80 = 0.0;
    LODWORD(v139) = v76;
    if ((v76 & 1) == 0)
    {
      v80 = v74 / 1000.0;
    }

    v138 = v80;
    OUTLINED_FUNCTION_4_137();
    sub_1D5612CF8();
    v81 = OUTLINED_FUNCTION_2_173();
    v78(v81);
    LODWORD(v140) = v33;
    if ((v33 & 1) == 0)
    {
      v79 = v74 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137();
    sub_1D5612CA8();
    v82 = OUTLINED_FUNCTION_2_173();
    v78(v82);
    v83 = 0.0;
    v84 = 0.0;
    LODWORD(v137) = v33;
    if ((v33 & 1) == 0)
    {
      v84 = v74 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137();
    sub_1D5612CC8();
    v85 = OUTLINED_FUNCTION_2_173();
    v78(v85);
    LODWORD(v136) = v33;
    if ((v33 & 1) == 0)
    {
      v83 = v74 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137();
    sub_1D5612C98();
    v86 = OUTLINED_FUNCTION_2_173();
    v78(v86);
    v87 = 0.0;
    v88 = 0.0;
    LODWORD(v135) = v33;
    if ((v33 & 1) == 0)
    {
      v88 = v74 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137();
    sub_1D5612C78();
    v89 = OUTLINED_FUNCTION_2_173();
    v78(v89);
    LODWORD(v134) = v33;
    if ((v33 & 1) == 0)
    {
      v87 = v74 / 1000.0;
    }

    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    v90 = sub_1D5612CE8();
    v92 = v91;
    (v78)(v73, v16);
    v93 = 0.0;
    v94 = 0.0;
    if ((v92 & 1) == 0)
    {
      v94 = v90 / 1000.0;
    }

    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    LODWORD(v133) = sub_1D5612C68();
    (v78)(v73, v16);
    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    LODWORD(v132) = sub_1D5612C58();
    (v78)(v73, v16);
    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    v95 = sub_1D5612D28();
    v97 = v96;
    v98 = v16;
    (v78)(v73, v16);
    if ((v97 & 1) == 0)
    {
      v93 = v95 / 1000.0;
    }

    v99 = v115;
    sub_1D5610708();
    v100 = sub_1D5612C88();
    v102 = v101;
    (v78)(v99, v98);
    v103 = 0.0;
    if ((v102 & 1) == 0)
    {
      v103 = v100 / 1000.0;
    }

    v104 = v116;
    sub_1D5610708();
    v105 = sub_1D5612D18();
    v107 = v106;
    (v119)(v104, v98);
    if (v118)
    {
      v108 = v118;
    }

    else
    {
      v108 = MEMORY[0x1E69E7CC0];
    }

    v109 = sub_1D5610718();
    v110 = v117;
    *v117 = v138;
    *(v110 + 8) = v139 & 1;
    *(v110 + 2) = v79;
    *(v110 + 24) = v140 & 1;
    *(v110 + 4) = v84;
    *(v110 + 40) = v137 & 1;
    *(v110 + 6) = v83;
    *(v110 + 56) = v136 & 1;
    *(v110 + 8) = v88;
    *(v110 + 72) = v135 & 1;
    *(v110 + 10) = v87;
    *(v110 + 88) = v134 & 1;
    *(v110 + 12) = v94;
    *(v110 + 104) = v92 & 1;
    *(v110 + 105) = v133;
    *(v110 + 106) = v132;
    *(v110 + 14) = v93;
    *(v110 + 120) = v97 & 1;
    *(v110 + 16) = v103;
    *(v110 + 136) = v102 & 1;
    v110[18] = v105;
    *(v110 + 152) = v107 & 1;
    v110[20] = v108;
    v110[21] = v109;
  }
}

void sub_1D54328C8(uint64_t a1@<X8>)
{
  v68 = a1;
  v70 = sub_1D56119D8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v72 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  sub_1D5612D38();
  OUTLINED_FUNCTION_4();
  v66 = v15;
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v64 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v41 - v18;
  v49 = *v1;
  v48 = *(v1 + 8);
  v51 = *(v1 + 16);
  v50 = *(v1 + 24);
  v19 = *(v1 + 32);
  v54 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);
  v53 = *(v1 + 64);
  v52 = *(v1 + 72);
  v47 = *(v1 + 80);
  v46 = *(v1 + 88);
  v45 = *(v1 + 96);
  v44 = *(v1 + 104);
  v22 = *(v1 + 105);
  v61 = *(v1 + 106);
  v62 = v22;
  v56 = *(v1 + 112);
  v55 = *(v1 + 120);
  v58 = *(v1 + 128);
  v57 = *(v1 + 136);
  v60 = *(v1 + 144);
  v59 = *(v1 + 152);
  v23 = *(v1 + 160);
  v24 = *(v23 + 16);
  v63 = *(v1 + 168);
  if (v24)
  {
    v41 = v19;
    v42 = v21;
    v43 = v20;
    v73 = MEMORY[0x1E69E7CC0];

    sub_1D4F04A8C(0, v24, 0);
    v25 = v73;
    v69 = v10 + 32;
    v26 = (v23 + 40);
    v27 = v13;
    while (1)
    {
      v28 = *(v26 - 1) * 1000.0;
      if (v28 <= -9.22337204e18)
      {
        break;
      }

      if (v28 >= 9.22337204e18)
      {
        goto LABEL_16;
      }

      v29 = *v26 * 1000.0;
      v30 = COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE__INT64(fabs(*(v26 - 1) * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL || v30)
      {
        goto LABEL_17;
      }

      if (v29 <= -9.22337204e18)
      {
        goto LABEL_18;
      }

      if (v29 >= 9.22337204e18)
      {
        goto LABEL_19;
      }

      sub_1D56119B8();
      v31 = v70;
      (*(v3 + 16))(v72, v8, v70);
      sub_1D5614A88();
      sub_1D5614BD8();
      sub_1D56106F8();
      (*(v3 + 8))(v8, v31);
      v73 = v25;
      v32 = v27;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D4F04A8C(v33 > 1, v34 + 1, 1);
        v25 = v73;
      }

      *(v25 + 16) = v34 + 1;
      (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v34, v32, v71);
      v26 += 2;
      --v24;
      v27 = v32;
      if (!v24)
      {
        v20 = v43;
        LOBYTE(v21) = v42;
        v19 = v41;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

LABEL_14:
    v35 = v54;
    v72 = sub_1D5432F58(v45, v44);
    LODWORD(v69) = v36;
    v71 = sub_1D5432F58(v47, v46);
    v54 = v37;
    v70 = sub_1D5432F58(v49, v48);
    v51 = sub_1D5432F58(v51, v50);
    v53 = sub_1D5432F58(v53, v52);
    sub_1D5432F58(v19, v35);
    sub_1D5432F58(v20, v21);
    sub_1D5432F58(v56, v55);
    sub_1D5432F58(v58, v57);
    v38 = v65;
    sub_1D5612CD8();
    v40 = v66;
    v39 = v67;
    (*(v66 + 16))(v64, v38, v67);
    sub_1D56106F8();
    (*(v40 + 8))(v38, v39);
  }
}

uint64_t sub_1D5432F58(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  v2 = *&result * 1000.0;
  if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v2;
}

uint64_t Playlist.GeoLocation.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Playlist.GeoLocation.countryCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void static Playlist.GeoLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D5616168() & 1) == 0)
  {
    return;
  }

  if (!v3)
  {
    if (v4)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v4)
  {
    v7 = v2 == v5 && v3 == v4;
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
LABEL_13:

      sub_1D4F286E0();
    }
  }
}

void Playlist.GeoLocation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D5614E28();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
}

uint64_t Playlist.GeoLocation.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t sub_1D5433218(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_1D56162D8();
  Playlist.GeoLocation.hash(into:)(v5);
  return sub_1D5616328();
}

uint64_t Playlist.GeoLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v4 = sub_1D5610AE8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF8, &unk_1D562E640);
  OUTLINED_FUNCTION_4();
  v40 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = a1;
  sub_1D4E628D4(a1, v43);
  OUTLINED_FUNCTION_1_174(&qword_1EC7F6790);
  OUTLINED_FUNCTION_2_174(&qword_1EC7F6798);
  v42 = v4;
  sub_1D5610768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5610708();
  v19 = sub_1D5610AD8();
  v20 = v44;
  v22 = v21;
  v37 = v17;
  v23 = *(v6 + 8);
  v24 = v11;
  v25 = v42;
  v23(v24, v42);
  if (v22)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v22)
  {
    v27 = v22;
  }

  v38 = v27;
  v39 = v26;
  v28 = v41;
  sub_1D5610708();
  v29 = sub_1D5610AB8();
  v35 = v30;
  v36 = v29;
  v23(v28, v25);
  v31 = sub_1D5610718();
  __swift_destroy_boxed_opaque_existential_1(v37);
  result = (*(v40 + 8))(v16, v12);
  v32 = v38;
  *v20 = v39;
  v20[1] = v32;
  v33 = v35;
  v20[2] = v36;
  v20[3] = v33;
  v20[4] = v31;
  return result;
}

uint64_t Playlist.GeoLocation.encode(to:)(uint64_t a1)
{
  v19 = a1;
  v1 = sub_1D5610AE8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF8, &unk_1D562E640);
  OUTLINED_FUNCTION_4();
  v17 = v10;
  v18 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;

  sub_1D5610AC8();
  (*(v3 + 16))(v7, v9, v1);
  sub_1D56106F8();
  (*(v3 + 8))(v9, v1);
  OUTLINED_FUNCTION_1_174(&qword_1EC7F6790);
  OUTLINED_FUNCTION_2_174(&qword_1EC7F6798);
  v14 = v17;
  sub_1D5610778();
  return (*(v18 + 8))(v13, v14);
}

uint64_t Playlist.GeoLocation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  strcpy(v5, "GeoLocation(");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x22203A656D616ELL, 0xE700000000000000);

  if (v3)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_4_138();
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_5_133();
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v5[0];
}

unint64_t Playlist.GeoLocation.debugDescription.getter()
{
  v1 = v0[3];
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x3A656D616E20200ALL, 0xEA00000000002220);

  if (v1)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_4_138();
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_5_133();
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D5433978(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5610AE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D54339C0()
{
  result = qword_1EC7F67A0;
  if (!qword_1EC7F67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F67A0);
  }

  return result;
}

uint64_t sub_1D5433A24(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = OUTLINED_FUNCTION_12_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5433A4C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[4] + 88);
  if ([v1 response])
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_61_34([v1 response]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
    OUTLINED_FUNCTION_60_28();
    sub_1D5612878();
    OUTLINED_FUNCTION_55();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[5] = v4;
    *v4 = v5;
    v4[1] = sub_1D4EFC820;
    v6 = v0[3];

    return sub_1D54379B4(v6);
  }
}

uint64_t sub_1D5433B74()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  v1[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_127();
  v1[8] = sub_1D56153C8();
  v1[9] = sub_1D56153B8();
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_26_12(v5);

  return sub_1D5436128();
}

uint64_t sub_1D5433C74()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[11] = v0;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v3[12] = v9;
  v3[13] = v10;
  if (v0)
  {
    v11 = sub_1D5434084;
  }

  else
  {
    v11 = sub_1D5433DB8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v7);
}

uint64_t sub_1D5433DB8()
{
  OUTLINED_FUNCTION_80();
  sub_1D4ECC7A8(0, &unk_1EC7F6848, off_1E84C0340);

  v2 = sub_1D543ECA4(v1);
  *(v0 + 112) = v2;
  v3 = OUTLINED_FUNCTION_61_34(v2);
  OUTLINED_FUNCTION_60_28();
  sub_1D5612878();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_9_116(v4);

  return sub_1D543ED28(v5);
}

uint64_t sub_1D5433E90()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  *v4 = *v2;
  *(v3 + 128) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_153_4();
  v9 = *(v8 + 104);
  v10 = v1[12];
  if (v0)
  {
    v11 = sub_1D54340E8;
  }

  else
  {
    v11 = sub_1D5434014;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D5434014()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5434084()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54340E8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5434158()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  v1[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[9] = v5;
  v1[10] = v6;
  v7 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5434238()
{
  OUTLINED_FUNCTION_80();
  if (*(v0 + 24))
  {
    swift_unknownObjectRetain();
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_47_43(v1);

    return sub_1D5436128();
  }

  else
  {

    v3 = sub_1D512F120();
    OUTLINED_FUNCTION_121_0(&type metadata for InternalMusicPlayer.Error, v3);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D5434340()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 80);
  v7 = *(v1 + 72);
  if (v0)
  {
    v8 = sub_1D5434764;
  }

  else
  {
    v8 = sub_1D5434468;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D5434468()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  sub_1D4ECC7A8(0, &unk_1EC7F6848, off_1E84C0340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D561EAC0;
  *(v2 + 32) = v1;
  swift_unknownObjectRetain();
  v3 = sub_1D543ECA4(v2);
  *(v0 + 104) = v3;
  v4 = OUTLINED_FUNCTION_61_34(v3);
  OUTLINED_FUNCTION_60_28();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_59_30(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_9_116(v6);

  return sub_1D543ED28(v8);
}

uint64_t sub_1D5434574()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_153_4();
  (*(v1[6] + 8))(*(v5 + 56), v1[5]);
  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 80);
  v8 = v1[9];
  if (v0)
  {
    v9 = sub_1D54347D4;
  }

  else
  {
    v9 = sub_1D54346E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D54346E4()
{
  OUTLINED_FUNCTION_80();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5434764()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54347D4()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5434850()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  sub_1D56153C8();
  v1[5] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[6] = v3;
  v1[7] = v4;
  v5 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54348D8()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  sub_1D5612858();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_47_43(v1);

  return sub_1D5434158();
}

uint64_t sub_1D5434988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1D5434A8C;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1D52C6C9C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D5434A8C()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();

  return v0();
}

void sub_1D5434AF4(uint64_t a1)
{
  sub_1D5612108();
  v2 = *(v1 + 88);
  v3 = [v2 request];
  v4 = [v3 forwardCount];

  v5 = [v2 request];
  v6 = [v5 historyCount];

  v7 = sub_1D5612128();
  v8 = sub_1D4E62628(v7);
  if (v8)
  {
    v9 = v8;
    if (v8 >= 1)
    {
      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6EB9B0](v10, v7);
        }

        else
        {
        }

        if (OUTLINED_FUNCTION_65_31())
        {
          if (v4 >= 99)
          {
            goto LABEL_17;
          }
        }

        else if (OUTLINED_FUNCTION_64_32())
        {
          if (v4 >= 1)
          {
            goto LABEL_17;
          }
        }

        else if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        if (OUTLINED_FUNCTION_65_31())
        {
          v4 = 99;
        }

        else
        {
          v4 = OUTLINED_FUNCTION_64_32();
        }

LABEL_17:
        if (OUTLINED_FUNCTION_68_27())
        {
          if (v6 < 49)
          {
            goto LABEL_19;
          }
        }

        else if (v6 < 0)
        {
LABEL_19:
          v11 = OUTLINED_FUNCTION_68_27();

          if (v11)
          {
            v6 = 49;
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_24;
        }

LABEL_24:
        if (v9 == ++v10)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    v12 = [v2 request];
    v13 = [v12 forwardCount];

    if (v4 == v13 && (v14 = [v2 request], v15 = objc_msgSend(v14, sel_historyCount), v14, v6 == v15))
    {
      OUTLINED_FUNCTION_118_2();
    }

    else
    {
      v16 = [v2 request];
      [v16 setForwardCount_];

      v17 = [v2 request];
      [v17 setHistoryCount_];

      OUTLINED_FUNCTION_118_2();

      [v18 v19];
    }
  }
}

void sub_1D5434D88(uint64_t a1)
{
  sub_1D56120F8();
  v1 = sub_1D5612128();
  v2 = sub_1D4E62628(v1);
  if (v2)
  {
    v3 = v2;
    if (v2 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6EB9B0](v6, v1);
        }

        else
        {
        }

        if (OUTLINED_FUNCTION_65_31())
        {
          break;
        }

        if (OUTLINED_FUNCTION_64_32() && v5 < 1)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_68_27())
        {
          if (v4 >= 49)
          {

            v4 = 49;
          }

          else
          {
            v7 = OUTLINED_FUNCTION_68_27();

            if (v7)
            {
              v4 = 49;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
        }

        if (v3 == ++v6)
        {
          goto LABEL_25;
        }
      }

      if (v5 <= 98)
      {
LABEL_12:
        if (!OUTLINED_FUNCTION_65_31())
        {
          v5 = OUTLINED_FUNCTION_64_32();
          goto LABEL_15;
        }
      }

      v5 = 99;
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = 0;
LABEL_25:

    v8 = OUTLINED_FUNCTION_66_25();
    v9 = [v8 forwardCount];

    if (v5 == v9 && (v10 = OUTLINED_FUNCTION_66_25(), v11 = [v10 historyCount], v10, v4 == v11))
    {
      OUTLINED_FUNCTION_118_2();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_66_25();
      [v12 setForwardCount_];

      v13 = OUTLINED_FUNCTION_66_25();
      [v13 setHistoryCount_];

      OUTLINED_FUNCTION_118_2();

      [v14 v15];
    }
  }
}

uint64_t sub_1D5434FFC(uint64_t a1, char a2, uint64_t *a3)
{
  if (qword_1EDD5EFC8 != -1)
  {
    OUTLINED_FUNCTION_40_52(&qword_1EDD5EFC8);
  }

  v5 = qword_1EDD76EC0;
  v6 = *algn_1EDD76EC8;
  v10[0] = qword_1EDD76EC0;
  v10[1] = *algn_1EDD76EC8;
  v9 = xmmword_1EDD76ED0;
  v11 = xmmword_1EDD76ED0;
  v12 = qword_1EDD76EE0;
  v13 = qword_1EDD76EE8;
  type metadata accessor for InternalMusicPlayer();
  v7 = swift_allocObject();
  sub_1D4E5EEC0(v5, v6, v9);

  swift_unknownObjectRetain();
  result = sub_1D4E5F18C(v10, a2 & 1);
  *a3 = v7;
  return result;
}

uint64_t sub_1D54350F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalMusicPlayer.Queue(0);
  swift_allocObject();

  result = sub_1D525EDAC(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1D543514C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  swift_unknownObjectRetain();
  sub_1D51ECB60(0, 0, v5, &unk_1D56651A0, v8);
}

uint64_t sub_1D5435288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54352AC, 0, 0);
}

uint64_t sub_1D54352AC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D543538C;
    v3 = OUTLINED_FUNCTION_93_0(*(v0 + 56));

    return sub_1D54354C0(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D543538C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D543548C()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t sub_1D54354C0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  _s5StateC10PropertiesVMa(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5435550, 0, 0);
}

uint64_t sub_1D5435550()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 72);
  v2 = 0;
  if (v1)
  {
    v3 = [objc_msgSend(*(v0 + 72) musicKit:sel_musicKit_responseTracklist_resetCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
    v4 = v3 != 0;
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    v1 = [v1 musicKit_playerResponse_tracklist];
    v5 = [v1 musicKit_responseTracklist_playingItem];
    if (v5)
    {
      [v5 musicKit_playerResponseItem_elapsedTime];
      v2 = v6;
      swift_unknownObjectRelease();
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = 1;
LABEL_8:
  *(v0 + 217) = v4;
  *(v0 + 104) = v1;
  *(v0 + 216) = v7;
  *(v0 + 96) = v2;
  v8 = *(v0 + 72);
  type metadata accessor for InternalMusicPlayer.State(0);
  OUTLINED_FUNCTION_54_35();
  sub_1D51908E0(v8);
  *(v0 + 112) = sub_1D56153C8();
  *(v0 + 120) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  v9 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54356D0()
{
  OUTLINED_FUNCTION_60();

  *(v0 + 128) = sub_1D543DBF8(v1);
  v2 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D5435738()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
  _s5QueueC10PropertiesVMa(0);
  sub_1D52C99A4();
  v0[8] = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0 + 8;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D543588C;
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1D543588C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54359A8()
{
  OUTLINED_FUNCTION_160();
  v16 = v1;
  v2 = v1[9];
  if (v2)
  {
    v3 = [v2 musicKit_playerPath];
    objc_opt_self();
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRetain();
    v4 = [v0 playerPathWithUnderlyingPlayerPath_];
    if (v4)
    {
      sub_1D4E5D688(v4, v15);
      swift_unknownObjectRelease_n();
      v5 = v15[0];
      v6 = v15[1];
      v7 = v15[2];
      v8 = v15[3];
      v9 = v15[4];
      v10 = v15[5];
      goto LABEL_6;
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_57_1();
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_6:
  v1[23] = v9;
  v1[24] = v10;
  v1[21] = v7;
  v1[22] = v8;
  v1[19] = v5;
  v1[20] = v6;
  v1[25] = v1[8];
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[6] = v9;
  v1[7] = v10;
  sub_1D543FDBC(v5, v6, v7, v8, v9, v10);
  v1[26] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  v11 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5435AE8()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 200);
  v2 = *(v0 + 217);
  v3 = *(v0 + 216);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);

  sub_1D543E778(v6, v2, v4, v3, v5, v1, (v0 + 16));
  sub_1D526CDE8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5435B9C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[11];
  sub_1D526CDE8(v0[19], v0[20], v0[21], v0[22], v0[23], v0[24]);
  swift_unknownObjectRelease();
  sub_1D543FE08(v1, _s5StateC10PropertiesVMa);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5435C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D5435CA4(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1D56153C8();

  v8 = sub_1D56153B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1D51ECB60(0, 0, v5, &unk_1D5665190, v9);

  if (qword_1EDD54498 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AC0);
  v12 = a1;
  v13 = sub_1D560C738();
  v14 = sub_1D56156C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D4E3F000, v13, v14, "RRC failed due to error: %{public}@. Retrying request.", v15, 0xCu);
    sub_1D4E50004(v16, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v16, -1, -1);
    MEMORY[0x1DA6ED200](v15, -1, -1);
  }

  return 1;
}

uint64_t sub_1D5435F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5435F98, v6, v5);
}

uint64_t sub_1D5435F98()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = *(Strong + 72), , , v2))
  {
    sub_1D5500F24(3);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  **(v0 + 40) = v3;
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5436040(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1D5436098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return sub_1D5436128();
}

uint64_t sub_1D5436128()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6870, &qword_1D56650D0);
  v1[4] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[7] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[8] = v4;
  v1[9] = v5;
  v6 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5436208()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[3] + 72);
  v0[10] = v1;
  if (!v1 || *(v1 + 32) == 2)
  {

    OUTLINED_FUNCTION_22_1();

    return v2();
  }

  else
  {
    if (*(v1 + 32))
    {
    }

    else
    {

      sub_1D5500F24(1);
    }

    v0[2] = v1;
    type metadata accessor for InternalPlaybackEngine();

    sub_1D5612878();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1D5436348;
    v5 = OUTLINED_FUNCTION_93_0(v0[6]);

    return sub_1D5439378(v5);
  }
}

uint64_t sub_1D5436348()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 72);
  v7 = *(v1 + 64);
  if (v0)
  {
    v8 = sub_1D54364F8;
  }

  else
  {
    v8 = sub_1D5436470;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D5436470()
{
  OUTLINED_FUNCTION_80();

  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D54364F8()
{
  OUTLINED_FUNCTION_80();

  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t InternalMusicPlayer.queue.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_71();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_123();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a1;

  OUTLINED_FUNCTION_41_7();
  sub_1D5264534();

  return sub_1D4E50004(v7, &qword_1EC7EB710, &qword_1D561F440);
}

uint64_t InternalMusicPlayer.queue(for:)(uint64_t a1)
{
  v2 = _s5QueueC3KeyVMa(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  sub_1D560C368();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v6 = a1;

  sub_1D56120E8();

  InternalMusicPlayer.Queue.player.setter(v11);
  OUTLINED_FUNCTION_26_71();
  sub_1D543FE08(v6, v12);
  return v14;
}

uint64_t sub_1D54367A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54367C8, 0, 0);
}

uint64_t sub_1D54367C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D54368A8;
    OUTLINED_FUNCTION_93_0(*(v0 + 56));

    return sub_1D5436ACC();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D54368A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54369A8()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_22_1();
  return v1();
}

uint64_t sub_1D54369DC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5436A38()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_4(v1);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D54367A4(v3, v4, v5, v6, v7);
}

uint64_t sub_1D5436ACC()
{
  OUTLINED_FUNCTION_60();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6900, &qword_1D5665128);
  v1[6] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_127();
  v5 = _s5QueueC3KeyVMa(0);
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = OUTLINED_FUNCTION_127();
  v6 = _s5QueueC4KindOMa(0);
  OUTLINED_FUNCTION_22(v6);
  v1[11] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5436BC0()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[11];

  InternalMusicPlayer.Queue.player.setter(v2);
  sub_1D560C368();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1D526BEEC();
  v8 = v7;
  sub_1D543FE08(v1, _s5QueueC4KindOMa);
  if ((v8 & 1) == 0)
  {
    v9 = v0[10];
    v10 = v0[4];
    v11 = *(v10 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);
    sub_1D543FE60();
    *v9 = v11;
    v0[2] = v10;

    sub_1D5612118();
    OUTLINED_FUNCTION_26_71();
    sub_1D543FE08(v9, v12);
  }

  v0[3] = v0[4];
  type metadata accessor for InternalMusicPlayer.Queue(0);

  sub_1D5612878();
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1D5436D64;
  v14 = OUTLINED_FUNCTION_93_0(v0[8]);

  return sub_1D543CD54(v14);
}

uint64_t sub_1D5436D64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5436E5C()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_55_32();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5436EDC()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_55_32();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t (*InternalMusicPlayer.queue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = InternalMusicPlayer.queue(for:)(&unk_1F50A4E68);
  return sub_1D5436FB0;
}

uint64_t sub_1D5436FB0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return InternalMusicPlayer.queue.setter(*a1);
  }

  InternalMusicPlayer.queue.setter(v2);
}

uint64_t InternalMusicPlayer.isStarted.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return [*(v1 + 16) isStarted];
  }

  else
  {
    return 1;
  }
}

uint64_t InternalMusicPlayer.playbackTime.setter(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if ((a2 & 1) == 0)
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_123();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v2;
    v14[5] = a1;

    OUTLINED_FUNCTION_41_7();
    sub_1D5264320();

    return sub_1D4E50004(v9, &qword_1EC7EB710, &qword_1D561F440);
  }

  return result;
}

uint64_t sub_1D543716C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 32) = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v5 + 88) = v8;
  v9 = swift_task_alloc();
  *(v5 + 96) = v9;
  *v9 = v5;
  v9[1] = sub_1D54372E0;

  return sub_1D54377B4(v8);
}

uint64_t sub_1D54372E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54373C4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_44_40();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = [*(v0 + 16) musicKit_responseTracklist_playingItem];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    if (v1)
    {
      v6 = [v1 musicKit_playerResponseItem_seekCommand];
      OUTLINED_FUNCTION_82();
      swift_unknownObjectRelease();
      v7 = [v4 musicKit:*(v0 + 40) seekCommand:? changePositionCommandRequestToElapsedInterval:?];
      OUTLINED_FUNCTION_107_5();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 104) = v1;
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_59_30(v8);
  *v9 = v10;
  v9[1] = sub_1D543751C;
  OUTLINED_FUNCTION_93_0(*(v0 + 64));

  return sub_1D5434850();
}

uint64_t sub_1D543751C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5437614()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_63_23();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5437690()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_63_23();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5437710()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D543716C(v2, v6, v7, v8, v1);
}

uint64_t sub_1D54377B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54377D4, 0, 0);
}

uint64_t sub_1D54377D4()
{
  OUTLINED_FUNCTION_60();
  if (sub_1D5437D04())
  {
    swift_unknownObjectRelease();
    v1 = sub_1D5437D04();
    OUTLINED_FUNCTION_61_34(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6878, qword_1D56650E8);
    OUTLINED_FUNCTION_60_28();
    sub_1D5612878();
    OUTLINED_FUNCTION_55();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 40) = v4;
    *v4 = v5;
    v4[1] = sub_1D5440128;
    v6 = *(v0 + 24);

    return sub_1D5437D6C(v6);
  }
}

uint64_t (*InternalMusicPlayer.playbackTime.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
  return sub_1D54378FC;
}

uint64_t InternalMusicPlayer.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v6 = *(v1 + 40);
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  sub_1D4E5EEC0(v2, v3, v6);

  return swift_unknownObjectRetain();
}

uint64_t sub_1D54379B4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54379D4, 0, 0);
}

uint64_t sub_1D54379D4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[20] + 96);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D5437AF0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E8, &qword_1D5665108);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D51E7DC0;
  v0[13] = &block_descriptor_59_0;
  v0[14] = v2;
  [v1 performWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5437AF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5437BEC()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 80) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5437C68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 168);
  swift_willThrow();
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
  sub_1D5612878();

  OUTLINED_FUNCTION_55();

  return v2();
}

id sub_1D5437D04()
{
  v1 = [*(v0 + 88) response];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 musicKit_playerResponse_tracklist];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D5437D6C(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[7] = v3;
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_1D5437E70;

  return sub_1D54379B4(v3);
}

uint64_t sub_1D5437E70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5437F54()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_44_40();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  if (*(v0 + 16))
  {
    v4 = [*(v0 + 16) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6878, qword_1D56650E8);
  sub_1D5612878();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t InternalMusicPlayer.setFallbackRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-1] - v9;
  v11 = type metadata accessor for MusicPlaybackIntent(0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v25[3] = a2;
  v25[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_1D560D838();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_1D5424200();
  sub_1D4E50004(v10, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v21 = *(v3 + 72);
  if (v21)
  {
    [*(v21 + 16) musicKit:*v15 setFallbackPlaybackIntent:?];
  }

  OUTLINED_FUNCTION_28_63();
  return sub_1D543FE08(v15, v22);
}

uint64_t InternalMusicPlayer.start()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D5438310();
}

uint64_t sub_1D5438230()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D5438310()
{
  *(v1 + 16) = v0;
  sub_1D56153C8();
  *(v1 + 24) = sub_1D56153B8();
  v3 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54383A8, v3, v2);
}

uint64_t sub_1D54383A8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 16);

  v2 = *(v1 + 72);
  if (v2)
  {
    [*(v2 + 16) start];
  }

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t InternalMusicPlayer.perform(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F67B0, qword_1D5664EE8);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v1[7] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_127();
  v7 = _s6DialogV6ActionV17UnderlyingCommandOMa(0);
  v1[10] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[11] = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5438544()
{
  OUTLINED_FUNCTION_80();
  type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  sub_1D543FE60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[11];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_59_30(v3);
    *v4 = v5;
    v4[1] = sub_1D543884C;
    OUTLINED_FUNCTION_93_0(v0[6]);

    return sub_1D5438B04();
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v2, v0[7]);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1D54386C4;
    OUTLINED_FUNCTION_93_0(v0[9]);

    return sub_1D5434850();
  }
}

uint64_t sub_1D54386C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54387BC()
{
  OUTLINED_FUNCTION_80();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D543884C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5438944()
{
  OUTLINED_FUNCTION_80();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D54389D8()
{
  OUTLINED_FUNCTION_80();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5438A6C()
{
  OUTLINED_FUNCTION_80();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5438B04()
{
  OUTLINED_FUNCTION_80();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F67B0, qword_1D5664EE8);
  v1[8] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_127();
  v1[11] = sub_1D56153C8();
  v1[12] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v5 = sub_1D5615338();
  v1[13] = v5;
  v1[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5438C24, v5, v6);
}

uint64_t sub_1D5438C24()
{
  OUTLINED_FUNCTION_160();
  sub_1D5612858();
  v1 = v0[2];
  v2 = [v1 event];
  v0[15] = v2;

  if (v2)
  {
    v3 = [*(v0[7] + 64) musicKit_playerPath_mrPlayerPath];
    v0[16] = v3;
    v4 = sub_1D56153B8();
    v0[17] = v4;
    v5 = swift_task_alloc();
    v0[18] = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    v0[19] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6920, &qword_1D5665158);
    *v6 = v0;
    v6[1] = sub_1D5438FA4;
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 4, v4, v8, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_1D543FA70, v5, v7);
  }

  else
  {

    if (qword_1EDD54498 != -1)
    {
      OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
    }

    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[6];
    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EDD76AC0);
    (*(v10 + 16))(v9, v12, v11);
    v14 = sub_1D560C738();
    v15 = sub_1D56156E8();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      sub_1D5612858();
      (*(v18 + 8))(v17, v19);
      v22 = v0[3];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_1D4E3F000, v14, v15, "Unable to perform remote action because remoteDialogAction %{public}@ does not have an event.", v20, 0xCu);
      sub_1D4E50004(v21, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v21, -1, -1);
      MEMORY[0x1DA6ED200](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    OUTLINED_FUNCTION_55();

    return v23();
  }
}

uint64_t sub_1D5438FA4()
{
  OUTLINED_FUNCTION_91();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D543912C, v5, v4);
}

uint64_t sub_1D543912C()
{
  v24 = v0;
  v23 = *MEMORY[0x1E69E9840];

  v1 = v0[4];
  if (v1)
  {
    v2 = objc_opt_self();
    v0[5] = 0;
    v3 = [v2 extractDialogFromCommandResult:v1 error:v0 + 5];
    v4 = v3;
    v5 = v0[5];
    if (v5)
    {
      v7 = v0[15];
      v6 = v0[16];
      v5;

      swift_willThrow();
LABEL_10:

      OUTLINED_FUNCTION_55();
      goto LABEL_12;
    }

    v9 = v0[15];
    v12 = v0[16];
    if (v3)
    {
      v14 = v3;
      sub_1D4F27598(v14, v21);
      v15 = v22;
      v16 = sub_1D512F120();
      OUTLINED_FUNCTION_121_0(&type metadata for InternalMusicPlayer.Error, v16);
      v17 = v21[1];
      *v18 = v21[0];
      *(v18 + 16) = v17;
      *(v18 + 32) = v15;
      swift_willThrow();

      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDD54498 != -1)
    {
      OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
    }

    v8 = sub_1D560C758();
    __swift_project_value_buffer(v8, qword_1EDD76AC0);
    v9 = sub_1D560C738();
    v10 = sub_1D56156E8();
    v11 = os_log_type_enabled(v9, v10);
    v1 = v0[15];
    v12 = v0[16];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D4E3F000, v9, v10, "While attempting to perform remote action, MRMediaRemoteSendCommandToPlayerWithResult returned nil.", v13, 2u);
      MEMORY[0x1DA6ED200](v13, -1, -1);
    }
  }

  OUTLINED_FUNCTION_55();
LABEL_12:

  return v19();
}

uint64_t sub_1D5439398()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6870, &qword_1D56650D0);
  sub_1D5612858();
  *(v0 + 112) = *(v0 + 80);
  v1 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D5439414()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1D543952C;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  swift_beginAccess();
  sub_1D4EFF5A0();
  v4 = *(*(v1 + 24) + 16);
  sub_1D4EFF7E8();
  v5 = *(v1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = sub_1D543F8AC;
  *(v6 + 40) = v3;
  *(v1 + 24) = v5;
  swift_endAccess();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1D543952C()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54395FC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t InternalMusicPlayer.play()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D54396D4();
}

uint64_t sub_1D54396D4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_1D54397EC;

  return sub_1D5436128();
}

uint64_t sub_1D54397EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    sub_1D5615338();
    v7 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v3[11] = v10;
    *v10 = v11;
    v10[1] = sub_1D5439954;
    v12 = v3[6];

    return sub_1D5433A24(v12);
  }
}

uint64_t sub_1D5439954()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5439A78()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  if (*(v1 + 16))
  {
    v4 = [*(v1 + 16) musicKit_playerResponse_playCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v0 = 0;
  }

  *(v1 + 112) = v0;
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_6_135(v5);

  return sub_1D5434158();
}

uint64_t sub_1D5439B48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_1D5439D44;
  }

  else
  {
    v8 = sub_1D5439C70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D5439C70()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D5439CE0()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5439D44()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t InternalMusicPlayer.play(_:)()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D5436ACC();
}

uint64_t sub_1D5439E40()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D5439F54()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 40);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    v4 = sub_1D543A064();
    OUTLINED_FUNCTION_121_0(&type metadata for InternalMusicPlayer.QueueError, v4);
    v6 = v5;
    v7 = v3;
    sub_1D52975BC(v7, v6);
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  OUTLINED_FUNCTION_55();

  return v8();
}

unint64_t sub_1D543A064()
{
  result = qword_1EC7F67B8;
  if (!qword_1EC7F67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F67B8);
  }

  return result;
}

uint64_t sub_1D543A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[10] = v7;
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_1D543A248;

  return sub_1D5433A24(v7);
}

uint64_t sub_1D543A248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D543A32C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_44_40();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  if (*(v0 + 16))
  {
    v4 = [*(v0 + 16) musicKit_playerResponse_pauseCommandRequest];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 96) = v1;
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_42_45(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9_116(v6);

  return sub_1D5434850();
}

uint64_t sub_1D543A42C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D543A524()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D543A0D8(v5, v6, v7, v1);
}

uint64_t sub_1D543A5D8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_71();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_1D5264320();

  return sub_1D4E50004(v7, &qword_1EC7EB710, &qword_1D561F440);
}

uint64_t sub_1D543A6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[10] = v7;
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_1D543A834;

  return sub_1D5433A24(v7);
}

uint64_t sub_1D543A834()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D543A918()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_44_40();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  if (*(v0 + 16))
  {
    v4 = [*(v0 + 16) musicKit_playerResponse_stopCommandRequest];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 96) = v1;
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_42_45(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9_116(v6);

  return sub_1D5434850();
}

uint64_t sub_1D543AA18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D543AB10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_62_36();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D543AB8C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_62_36();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D543AC0C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D543A6C4(v5, v6, v7, v1);
}

uint64_t InternalMusicPlayer.skipToNextEntry()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543AD20();
}

uint64_t sub_1D543AD20()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1D543AE4C;

  return sub_1D54377B4(v3);
}

uint64_t sub_1D543AE4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v6, v7);
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543AF6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  if (*(v2 + 16) && (v5 = [*(v2 + 16) musicKit_responseTracklist_changeItemCommand], OUTLINED_FUNCTION_107_5(), swift_unknownObjectRelease(), v0))
  {
    v6 = [v0 musicKit_changeItemCommand_nextItemCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42_45(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_6_135(v8);

  return sub_1D5434158();
}

uint64_t sub_1D543B05C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_1D5440120;
  }

  else
  {
    v8 = sub_1D544013C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t InternalMusicPlayer.skipToPreviousEntry()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B204();
}

uint64_t sub_1D543B204()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1D543B330;

  return sub_1D54377B4(v3);
}

uint64_t sub_1D543B330()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v6, v7);
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543B450()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  if (*(v2 + 16) && (v5 = [*(v2 + 16) musicKit_responseTracklist_changeItemCommand], OUTLINED_FUNCTION_107_5(), swift_unknownObjectRelease(), v0))
  {
    v6 = [v0 musicKit_changeItemCommand_previousItemCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42_45(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_6_135(v8);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.beginSeekingForward()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B5C0();
}

uint64_t sub_1D543B5C0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1D543B6EC;

  return sub_1D54377B4(v3);
}

uint64_t sub_1D543B6EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v6, v7);
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543B80C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:1 seekCommand:? beginSeekCommandRequestWithDirection:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.beginSeekingBackward()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B9A4();
}

uint64_t sub_1D543B9A4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1D543BAD0;

  return sub_1D54377B4(v3);
}

uint64_t sub_1D543BAD0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v6, v7);
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543BBF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:-1 seekCommand:? beginSeekCommandRequestWithDirection:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.endSeeking()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543BD88();
}

uint64_t sub_1D543BD88()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1D543BEB4;

  return sub_1D54377B4(v3);
}

uint64_t sub_1D543BEB4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v6, v7);
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543BFD4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit_seekCommand_endSeekCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t sub_1D543C0E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_1D543C280;
  }

  else
  {
    v8 = sub_1D543C210;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D543C210()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D543C280()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t InternalMusicPlayer.jump(by:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return sub_1D543C37C(v1);
}

uint64_t sub_1D543C37C(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_1D56153C8();
  *(v2 + 72) = sub_1D56153B8();
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_1D543C4AC;

  return sub_1D54377B4(v4);
}

uint64_t sub_1D543C4AC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  *(v2 + 88) = v6;
  *(v2 + 96) = v7;
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D543C5D0()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_44_40();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v0 + 16);
  if (v5 && (v6 = [*(v0 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v1))
  {
    v7 = [v1 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:*(v0 + 24) seekCommand:? jumpCommandRequestByInterval:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 104) = v2;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_59_30(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_47_43(v10);

  return sub_1D5434158();
}

uint64_t sub_1D543C6F4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_153_4();
  v6 = *(v5 + 96);
  v7 = *(v1 + 88);
  if (v0)
  {
    v8 = sub_1D543C88C;
  }

  else
  {
    v8 = sub_1D543C81C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D543C81C()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D543C88C()
{
  OUTLINED_FUNCTION_60();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t InternalMusicPlayer.playabilityStatus<A>(for:)()
{
  OUTLINED_FUNCTION_60();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v0[18] = *(v1 - 8);
  v0[19] = OUTLINED_FUNCTION_127();
  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D543C9A4()
{
  OUTLINED_FUNCTION_60();
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    if (qword_1EDD55F58 != -1)
    {
      swift_once();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 160) = v1;
    *v1 = v2;
    v1[1] = sub_1D543CB2C;

    return sub_1D535ABAC();
  }

  else
  {
    v4 = *(v0 + 112);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D4E50004(v0 + 56, &qword_1EC7F3B00, &qword_1D5650210);
    *v4 = 9;

    OUTLINED_FUNCTION_22_1();

    return v5();
  }
}

uint64_t sub_1D543CB2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D543CC24()
{
  OUTLINED_FUNCTION_160();
  v13 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 97);
  v3 = *(v0 + 98);
  v4 = *(v0 + 99);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  type metadata accessor for MusicPlayer.ItemState(0, *(v0 + 128), *(v0 + 136), v7);
  v10[0] = v1;
  v10[1] = v2;
  v10[2] = v3;
  v11 = v4;
  v12 = v6;
  sub_1D544AB1C((v0 + 16), v10, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_22_1();

  return v8();
}

uint64_t sub_1D543CCEC()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D543CD54(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *(type metadata accessor for MusicPlaybackIntent(0) - 8);
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6908, &qword_1D5665138);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6910, &qword_1D5665140);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  sub_1D56153C8();
  v2[22] = sub_1D56153B8();
  v5 = sub_1D5615338();
  v2[23] = v5;
  v2[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D543CF2C, v5, v4);
}

uint64_t sub_1D543CF2C()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6900, &qword_1D5665128);
  sub_1D5612858();
  v0[25] = v0[8];
  sub_1D52686DC();
  v0[26] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[27] = v2;
  *v2 = v3;
  v2[1] = sub_1D543CFEC;
  v4 = v0[21];

  return sub_1D5433A24(v4);
}

uint64_t sub_1D543CFEC()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D543D100, v5, v4);
}

uint64_t sub_1D543D100()
{
  sub_1D5612858();
  v1 = OUTLINED_FUNCTION_58_1();
  v2(v1);
  v3 = *(v0 + 72);
  *(v0 + 224) = v3;
  if (v3)
  {
    v4 = [objc_msgSend(v3 musicKit:sel_musicKit_responseTracklist_resetCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
    v5 = [objc_msgSend(v3 musicKit:sel_musicKit_responseTracklist_insertCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v38 = v4;
  *(v0 + 232) = v5;
  *(v0 + 240) = v4;
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v9 = *(v6 + 16);
  v10 = v7 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID;
  v36 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent;
  v37 = v7;
  swift_beginAccess();
  v40 = v10;
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    if (v11 == v9)
    {
      v12 = 1;
      v11 = v9;
    }

    else
    {
      if (v11 >= *(v39 + 16))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        sub_1D56151B8();
LABEL_31:
        sub_1D56151F8();
        v8 = *(v0 + 80);
        swift_unknownObjectRelease();
        goto LABEL_32;
      }

      **(v0 + 128) = v11;
      sub_1D543FE60();
      sub_1D4FB8058();
      v12 = 0;
      ++v11;
    }

    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    __swift_storeEnumTagSinglePayload(*(v0 + 136), v12, 1, v14);
    sub_1D4FB8058();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      break;
    }

    v15 = **(v0 + 144);
    sub_1D544005C();
    if (v15)
    {
      if (v5)
      {
        v16 = [v5 musicKit:**(v0 + 112) insertItemsCommand:? insertAtEndOfTracklistCommandRequestWithPlaybackIntent:?];
      }
    }

    else
    {
      if (v38)
      {
        v17 = [v38 musicKit:**(v0 + 112) resetTracklistCommand:qword_1D5665220[*(v37 + v36)] replaceCommandRequestWithPlaybackIntent:? replaceIntent:?];
      }

      else
      {
        v17 = 0;
      }

      if (*(v40 + 8) && v17)
      {

        swift_unknownObjectRetain();
        v18 = sub_1D5614D38();

        [v17 musicKit:v18 setSessionID:?];
        swift_unknownObjectRelease();
      }
    }

    v19 = swift_unknownObjectRetain();
    MEMORY[0x1DA6EAF30](v19);
    if (*(*(v0 + 80) + 16) >= *(*(v0 + 80) + 24) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
    v20 = *(v0 + 112);
    swift_unknownObjectRelease();
    v8 = *(v0 + 80);
    OUTLINED_FUNCTION_28_63();
    sub_1D543FE08(v20, v21);
  }

  v22 = InternalMusicPlayer.Queue.isAutoPlayEnabled.getter();
  if (v22 != 2)
  {
    v23 = v22;
    v24 = [*(*(v0 + 96) + 88) response];
    if (v24)
    {
      v25 = [v24 musicKit_playerResponse_tracklist];
      swift_unknownObjectRelease();
      v26 = [v25 musicKit_responseTracklist_actionAtQueueEndCommand];
      swift_unknownObjectRelease();
      if (v26)
      {
        if ((v23 & 1) != 0 && [v26 musicKit_actionAtQueueEndCommand_isAutoPlaySupported])
        {
          v27 = [v26 musicKit:3 actionAtQueueEndCommand:? setQueueEndActionCommandRequest:?];
        }

        else
        {
          v27 = [v26 musicKit:2 actionAtQueueEndCommand:? setQueueEndActionCommandRequest:?];
        }

        v28 = v27;
        MEMORY[0x1DA6EAF30]();
        if (*(*(v0 + 80) + 16) < *(*(v0 + 80) + 24) >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }
    }
  }

LABEL_32:
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v31 = *(v8 + 16);
LABEL_33:
  *(v0 + 248) = v30;
  while (v31 != v29)
  {
    if (v29 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (*(v8 + 8 * v29++ + 32))
    {
      v33 = swift_unknownObjectRetain();
      MEMORY[0x1DA6EAF30](v33);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      v30 = v41;
      goto LABEL_33;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 256) = v34;
  *v34 = v0;
  v34[1] = sub_1D543D6FC;

  return sub_1D5433B74();
}

uint64_t sub_1D543D6FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[33] = v0;

  if (v0)
  {
    v7 = v3[23];
    v8 = v3[24];
    v9 = sub_1D543D8EC;
  }

  else
  {

    v7 = v3[23];
    v8 = v3[24];
    v9 = sub_1D543D800;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D543D800()
{

  sub_1D543D9D8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D543D8EC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D543D9D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6900, &qword_1D5665128);
  sub_1D5612858();
  v2 = v15[0];
  static ClientInfo.default.getter(v15);
  v3 = v15[8];

  v4 = sub_1D4E4AA8C(v15);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1D4F25A04();

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = [v6 isPrivateListeningEnabled];

      if ((v7 & 1) == 0)
      {
        v8 = *(v1 + 104);
        if (v8)
        {
          v9 = v8;
          if (([v9 capabilities] & 1) != 0 || objc_msgSend(v9, sel_isMatchEnabled))
          {
            sub_1D5268FB8();
          }

          if (*(v1 + 104))
          {
          }
        }

        v10 = swift_allocObject();
        *(v10 + 16) = sub_1D543FA44;
        *(v10 + 24) = v2;
        swift_beginAccess();

        sub_1D4EFF5A0();
        v11 = *(*(v1 + 128) + 16);
        sub_1D4EFF7E8();
        v12 = *(v1 + 128);
        *(v12 + 16) = v11 + 1;
        v13 = v12 + 16 * v11;
        *(v13 + 32) = sub_1D543FA48;
        *(v13 + 40) = v10;
        *(v1 + 128) = v12;
        swift_endAccess();
      }
    }
  }
}

void *sub_1D543DBF8(uint64_t a1)
{
  v1 = sub_1D5612128();
  v2 = sub_1D4F0B2D8(v1);
  if (v2)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1D4F04ACC(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v12;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6EB9B0](v5, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v5 + 32);
      }

      v8 = *(v7 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);

      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D4F04ACC((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v8;
    }

    while (v3 != v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1D52B6568(v6);

  return sub_1D54E4C8C(v11);
}

uint64_t sub_1D543DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[14] = *(_s5QueueC10PropertiesVMa(0) - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6958, &qword_1D56651D0);
  v5[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6960, &qword_1D56651D8);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D543DF4C, 0, 0);
}

uint64_t sub_1D543DF4C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 80);
    v3 = (v1 + 32);
    v4 = sub_1D5615458();
    v23 = v4;
    do
    {
      v25 = v2;
      v5 = *(v0 + 192);
      v6 = *(v0 + 96);
      v7 = *v3;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
      OUTLINED_FUNCTION_123();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v6;
      v11[5] = v7;
      sub_1D4FB8150();
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v4);

      swift_unknownObjectRetain();
      v12 = *(v0 + 192);
      if (v5 == 1)
      {
        sub_1D4E50004(*(v0 + 192), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        (*(*(v4 - 8) + 8))(v12, v4);
      }

      if (v11[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1D5615338();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = &unk_1D56651F0;
      *(v16 + 24) = v11;

      if (v15 | v13)
      {
        v17 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v0 + 200);
      *(v0 + 48) = 1;
      *(v0 + 56) = v17;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1D4E50004(v18, &qword_1EC7EB710, &qword_1D561F440);
      ++v3;
      v2 = v25 - 1;
      v4 = v23;
    }

    while (v25 != 1);
  }

  sub_1D5615378();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_20_87(v19);

  return MEMORY[0x1EEE6D8A8](v21);
}

uint64_t sub_1D543E234()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D543E318()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[20];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[17]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    OUTLINED_FUNCTION_55();

    return v2();
  }

  v4 = v0[18];
  v5 = v0[13];
  *v0[19] = *v1;
  sub_1D544005C();
  sub_1D4FB8150();
  v6 = *v4;
  sub_1D544005C();
  sub_1D543FE60();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v5;
  v0[9] = *v5;
  *v5 = 0x8000000000000000;
  v8 = sub_1D4F0E8EC();
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6968, &qword_1D5665200);
  if ((sub_1D5615D78() & 1) == 0)
  {
LABEL_12:
    v14 = v0[19];
    v15 = v0[15];
    v16 = v0[14];
    if (v11)
    {

      v17 = v0[9];
      sub_1D54400B4(v15, v17[7] + *(v16 + 72) * v10);
      OUTLINED_FUNCTION_36_56();
      sub_1D4E50004(v14, &qword_1EC7F6950, &qword_1D56651B8);
      goto LABEL_16;
    }

    v17 = v0[9];
    v17[(v10 >> 6) + 8] |= 1 << v10;
    *(v17[6] + 8 * v10) = v6;
    sub_1D544005C();
    OUTLINED_FUNCTION_36_56();
    v8 = sub_1D4E50004(v14, &qword_1EC7F6950, &qword_1D56651B8);
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      v17[2] = v20;
LABEL_16:
      *v0[13] = v17;

      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      v0[26] = v21;
      *v21 = v22;
      v8 = OUTLINED_FUNCTION_20_87(v21);

      return MEMORY[0x1EEE6D8A8](v8);
    }

LABEL_20:
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v8);
  }

  v12 = sub_1D4F0E8EC();
  if ((v11 & 1) == (v13 & 1))
  {
    v10 = v12;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);

  return sub_1D5616238();
}

uint64_t sub_1D543E6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D543E6C4, 0, 0);
}

uint64_t sub_1D543E6C4()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for InternalMusicPlayer.Queue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8);
  sub_1D5266D50(v2, v1);
  *v3 = v1;
  OUTLINED_FUNCTION_55();
  v6 = v4;

  return v6();
}

uint64_t sub_1D543E778(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v54 = _s5QueueC10PropertiesVMa(0);
  v51[1] = *(v54 - 8);
  v16 = MEMORY[0x1EEE9AC00](v54);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51[0] = v51 - v19;
  v20 = *a7;
  v55 = a7[1];
  v56 = v20;
  v21 = a7[2];
  v64 = a7[3];
  v65 = v21;
  v22 = a7[4];
  v62 = a7[5];
  v63 = v22;
  v23 = *(v8 + 72);
  if (v23 && *(v23 + 32) != 2 && (a2 & 1) != 0)
  {

    sub_1D5500F24(2);
  }

  *(v8 + 136) = a3;
  *(v8 + 144) = a4 & 1;
  sub_1D5191564(a5);
  v24 = sub_1D5612128();
  result = sub_1D4E62628(v24);
  if (!result)
  {
  }

  if (result >= 1)
  {
    v27 = 0;
    v60 = v24 & 0xC000000000000001;
    *&v26 = 136446466;
    v52 = v26;
    v29 = v55;
    v28 = v56;
    v53 = v18;
    v58 = v24;
    v61 = result;
    do
    {
      if (v60)
      {
        v30 = MEMORY[0x1DA6EB9B0](v27, v24);
      }

      else
      {
        v30 = *(v24 + 8 * v27 + 32);
      }

      v31 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components;
      if (*(a6 + 16) && (sub_1D4F0E8EC(), (v32 & 1) != 0))
      {
        v33 = v51[0];
        sub_1D543FE60();
        v66 = v28;
        v67 = v29;
        v68 = v65;
        v69 = v64;
        v70 = v63;
        v71 = v62;
        sub_1D52671E4();

        v34 = v33;
      }

      else
      {
        if (qword_1EDD54498 != -1)
        {
          swift_once();
        }

        v35 = sub_1D560C758();
        __swift_project_value_buffer(v35, qword_1EDD76AC0);

        v36 = sub_1D560C738();
        v37 = sub_1D56156C8();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v59 = v31;
          v39 = v38;
          v57 = swift_slowAlloc();
          v66 = v57;
          *v39 = v52;

          v41 = MEMORY[0x1DA6EAF70](v40, &type metadata for InternalMusicPlayer.Queue.Component);
          v43 = v42;
          v28 = v56;

          v44 = sub_1D4E6835C(v41, v43, &v66);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2082;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
          sub_1D52C99A4();
          v45 = sub_1D5614BC8();
          v47 = sub_1D4E6835C(v45, v46, &v66);
          v18 = v53;

          *(v39 + 14) = v47;
          v29 = v55;
          _os_log_impl(&dword_1D4E3F000, v36, v37, "Missed updated queue map match for components: %{public}s with queue properties map: %{public}s", v39, 0x16u);
          v48 = v57;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v48, -1, -1);
          v49 = v39;
          v31 = v59;
          MEMORY[0x1DA6ED200](v49, -1, -1);
        }

        v24 = v58;
        type metadata accessor for InternalMusicPlayer.Queue(0);
        v50 = *(v30 + v31);

        sub_1D5266D50(a1, v50);

        v66 = v28;
        v67 = v29;
        v68 = v65;
        v69 = v64;
        v70 = v63;
        v71 = v62;
        sub_1D52671E4();

        v34 = v18;
      }

      sub_1D543FE08(v34, _s5QueueC10PropertiesVMa);
      ++v27;
    }

    while (v61 != v27);
  }

  __break(1u);
  return result;
}

id sub_1D543ECA4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6868, &qword_1D56650C8);
  v2 = sub_1D5615158();

  v3 = [v1 initWithCommandRequests_];

  return v3;
}

uint64_t sub_1D543ED28(uint64_t a1)
{
  v1[20] = a1;
  sub_1D56153C8();
  v1[21] = sub_1D56153B8();
  v3 = sub_1D5615338();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D543EDC0, v3, v2);
}

uint64_t sub_1D543EDC0()
{
  OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  sub_1D5612858();
  v1 = v0[19];
  v0[24] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D543EEFC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6858, &qword_1D56650B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D543F240;
  v0[13] = &block_descriptor_26;
  v0[14] = v2;
  [v1 performWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D543EEFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = sub_1D543F1D0;
  }

  else
  {
    v7 = sub_1D543F01C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void *sub_1D543F01C()
{
  v17 = v0;
  v1 = *(v0 + 192);

  v2 = *(v0 + 144);

  result = sub_1D4E62628(v2);
  if (result)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1DA6EB9B0](v5, v2);
        v6 = result;
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v5 + 32);
        result = swift_unknownObjectRetain();
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 musicKit_commandStatus_type] == 3 && objc_msgSend(v6, sel_musicKit_commandStatus_dialog))
      {

        v9 = swift_unknownObjectRetain();
        sub_1D4F27140(v9, v15);
        v10 = v16;
        v11 = sub_1D512F120();
        v13 = v15[1];
        v14 = v15[0];
        OUTLINED_FUNCTION_121_0(&type metadata for InternalMusicPlayer.Error, v11);
        *v12 = v14;
        *(v12 + 16) = v13;
        *(v12 + 32) = v10;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_55();
        goto LABEL_13;
      }

      result = swift_unknownObjectRelease();
      ++v5;
      if (v7 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_11:

    OUTLINED_FUNCTION_22_1();
LABEL_13:

    return v8();
  }

  return result;
}

uint64_t sub_1D543F1D0()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 192);

  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D543F240(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1D4F23514();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6860, &qword_1D56650C0);
    sub_1D5615168();

    return sub_1D4F23510();
  }
}

void sub_1D543F2E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  if (!sub_1D543F9AC(a2))
  {
    sub_1D5614BD8();
  }

  [a2 command];
  v9 = sub_1D5614BA8();

  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v10 = sub_1D5615738();
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_1D543FA78;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_103_0;
  v13 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v13);
}

uint64_t sub_1D543F548(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  return sub_1D5615358();
}

uint64_t InternalMusicPlayer.deinit()
{

  sub_1D4E62868(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t InternalMusicPlayer.__deallocating_deinit()
{
  InternalMusicPlayer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 145, 7);
}

uint64_t InternalMusicPlayer.state<A>(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for MusicPlayer.ItemState(0, v9, v10, v11);
  (*(v5 + 16))(v8, a1, a2);
  v14 = 0;
  memset(v13, 0, sizeof(v13));

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v8, v13, v2);
}

uint64_t InternalMusicPlayer.state<A, B>(for:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for MusicPlayer.ItemState(0, v16, v18, v17);
  (*(v12 + 16))(v15, a1, a3);
  v19 = *(a6 + 8);
  v22[3] = a4;
  v22[4] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v15, v22, v6);
}

uint64_t sub_1D543F8B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D544012C;

  return v6(a1);
}

uint64_t sub_1D543F9AC(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614BB8();

  return v3;
}

uint64_t sub_1D543FA78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  OUTLINED_FUNCTION_22(v2);

  return sub_1D543F548(a1);
}

uint64_t sub_1D543FB08()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_4(v1);

  return sub_1D5436098();
}

uint64_t objectdestroy_6Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D543FBE8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D5435F00(v5, v6, v7, v1);
}

uint64_t sub_1D543FC7C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_4(v1);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D5435288(v3, v4, v5, v6, v7);
}

uint64_t sub_1D543FD10()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D543DD54(v3, v4, v5, v6, v7);
}

uint64_t sub_1D543FDBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D4E5EEC0(result, a2, a3);

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D543FE08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D543FE60()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_2Tm(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));
  OUTLINED_FUNCTION_123();

  return swift_deallocObject();
}

uint64_t sub_1D543FF1C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_4(v1);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D543E6A0(v3, v4, v5, v6, v7);
}

uint64_t sub_1D543FFB0()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;

  return sub_1D543F8B4(v2, v3);
}

uint64_t sub_1D544005C()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D54400B4(uint64_t a1, uint64_t a2)
{
  v4 = _s5QueueC10PropertiesVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_35()
{
  *(v1 + 24) = v0;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_62_36()
{

  return swift_unknownObjectRelease();
}

BOOL OUTLINED_FUNCTION_65_31()
{

  return sub_1D52F8A78(2u, v0);
}

id OUTLINED_FUNCTION_66_25()
{

  return [v0 (v1 + 632)];
}

BOOL OUTLINED_FUNCTION_68_27()
{

  return sub_1D52F8A78(3u, v0);
}

uint64_t type metadata accessor for CloudEditorialElementLink(uint64_t a1)
{
  result = qword_1EDD55438;
  if (!qword_1EDD55438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D54402B0(uint64_t a1)
{
  sub_1D500A1D4(319);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD55468, &_s6TargetVN);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD55458, &_s7FeatureVN);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_1D54403B4@<X0>(char *a1@<X8>)
{
  v73 = a1;
  sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v75 = v1;
  v76 = v2;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v74 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  v9 = type metadata accessor for CloudEditorialElementLink(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v71 = v11 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - v17;
  v19 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v72 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  sub_1D5610708();
  sub_1D50D019C(v18, v8);
  sub_1D5441A2C(v18);
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    sub_1D4E50004(v8, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v30 = v74;
    v29 = v75;
    *v74 = 7107189;
    v30[1] = 0xE300000000000000;
    v31 = v76;
    (*(v76 + 104))(v30, *MEMORY[0x1E69763E0], v29);
    OUTLINED_FUNCTION_3_178();
    v34 = sub_1D5441B30(v32, v33, MEMORY[0x1E69763F8]);
    OUTLINED_FUNCTION_12_93(v34);
    (*(v31 + 16))(v35, v30, v29);
    swift_willThrow();
    return (*(v31 + 8))(v30, v29);
  }

  v68 = v19;
  v69 = v21;
  v65 = *(v21 + 32);
  v66 = v21 + 32;
  v65(v27, v8, v19);
  v70 = v28;
  sub_1D5610708();
  v67 = v9;
  v37 = &v16[*(v9 + 20)];
  v39 = *v37;
  v38 = *(v37 + 1);

  sub_1D5441A2C(v16);
  v40 = v75;
  v41 = v76;
  v42 = v27;
  v43 = v74;
  if (!v38)
  {
    goto LABEL_22;
  }

  if (v39 == 0x6C616E7265747865 && v38 == 0xE800000000000000)
  {
    v45 = 0;
    goto LABEL_11;
  }

  if ((OUTLINED_FUNCTION_13_91(0x6C616E7265747865) & 1) == 0)
  {
    if (v39 == 0x6C616E7265746E69 && v38 == 0xE800000000000000)
    {
      v45 = 1;
      goto LABEL_11;
    }

    v59 = OUTLINED_FUNCTION_13_91(0x6C616E7265746E69);

    if (v59)
    {
      v45 = 1;
      v46 = v68;
      v47 = v69;
      v48 = v72;
      v49 = v67;
      goto LABEL_12;
    }

LABEL_22:
    *v43 = 0x746567726174;
    v43[1] = 0xE600000000000000;
    (*(v41 + 104))(v43, *MEMORY[0x1E69763E0], v40);
    OUTLINED_FUNCTION_3_178();
    v62 = sub_1D5441B30(v60, v61, MEMORY[0x1E69763F8]);
    OUTLINED_FUNCTION_12_93(v62);
    (*(v41 + 16))(v63, v43, v40);
    swift_willThrow();
    (*(v41 + 8))(v43, v40);
    return (*(v69 + 8))(v27, v68);
  }

  v45 = 0;
LABEL_11:

  v46 = v68;
  v47 = v69;
  v48 = v72;
  v49 = v67;
LABEL_12:
  (*(v47 + 16))(v48, v27, v46);
  v50 = v71;
  sub_1D5610708();
  v51 = (v50 + *(v49 + 24));
  v53 = *v51;
  v52 = v51[1];

  sub_1D5441A2C(v50);
  v54 = v42;
  if (v52)
  {
    sub_1D5163C98(v53, v52, &v77);

    v55 = v77;
  }

  else
  {
    v55 = 7;
  }

  v56 = sub_1D5610718();
  (*(v47 + 8))(v54, v46);
  v57 = v73;
  v65(v73, v48, v46);
  result = type metadata accessor for EditorialElementLink(0);
  v57[result[5]] = v45;
  v57[result[6]] = v55;
  *&v57[result[7]] = v56;
  return result;
}

uint64_t sub_1D544096C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = type metadata accessor for CloudEditorialElementLink(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  (*(v14 + 16))(v4, v0, v13);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
  v15 = type metadata accessor for EditorialElementLink(0);
  v16 = 0xEE006C6C65737075;
  v17 = 0x2D73646E65697266;
  v18 = 0;
  v19 = 0;
  switch(*(v0 + *(v15 + 24)))
  {
    case 1:
      v17 = 0x676E6970756F7267;
      v16 = 0xE900000000000073;
      goto LABEL_8;
    case 2:
      v16 = 0xE900000000000078;
      v17 = 0x656C7069746C756DLL;
      goto LABEL_8;
    case 3:
      v17 = 0x6F6F7269746C756DLL;
      v16 = 0xEA0000000000736DLL;
      goto LABEL_8;
    case 4:
      v16 = 0x80000001D5685EE0;
      v17 = 0xD000000000000012;
      goto LABEL_8;
    case 5:
      v16 = 0xE500000000000000;
      v17 = 0x736D6F6F72;
      goto LABEL_8;
    case 6:
      v16 = 0xEA00000000007374;
      v17 = 0x726168632D706F74;
      goto LABEL_8;
    case 7:
      goto LABEL_9;
    default:
LABEL_8:
      v18 = v17;
      v19 = v16;
LABEL_9:
      if (*(v0 + *(v15 + 20)))
      {
        v20 = 0x6C616E7265746E69;
      }

      else
      {
        v20 = 0x6C616E7265747865;
      }

      sub_1D4F5A3D0(v4, v12);
      v21 = &v12[*(v5 + 20)];
      *v21 = v20;
      v21[1] = 0xE800000000000000;
      v22 = &v12[*(v5 + 24)];
      *v22 = v18;
      *(v22 + 1) = v19;
      sub_1D54419C8(v12, v9);

      sub_1D56106F8();
      return sub_1D5441A2C(v12);
  }
}

uint64_t sub_1D5440C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  sub_1D50D019C(a1, &v37 - v18);
  sub_1D50D019C(a2, &v19[v20]);
  OUTLINED_FUNCTION_10(v19);
  if (!v21)
  {
    sub_1D50D019C(v19, v14);
    OUTLINED_FUNCTION_10(&v19[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      OUTLINED_FUNCTION_0_232();
      sub_1D5441B30(v23, v24, MEMORY[0x1E6968FC8]);
      v25 = sub_1D5614D18();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_1D4E50004(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_1D4E50004(v19, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_13:
  type metadata accessor for CloudEditorialElementLink(0);
  OUTLINED_FUNCTION_24_3();
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v31 = *v29 == *v30 && v27 == v28;
    if (!v31 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_3();
  if (v32)
  {
    if (v33)
    {
      v36 = *v34 == *v35 && v32 == v33;
      if (v36 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v33)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5440F1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D5441028(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x746567726174;
  }

  return 0x65727574616566;
}

uint64_t sub_1D5441074(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6980, &qword_1D5665320);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54418CC();
  sub_1D56163D8();
  LOBYTE(v23) = 0;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_232();
  sub_1D5441B30(v11, v12, MEMORY[0x1E6968FB8]);
  sub_1D5616068();
  if (!v2)
  {
    v13 = type metadata accessor for CloudEditorialElementLink(0);
    v23 = *(v3 + *(v13 + 20));
    v22 = 1;
    v14 = sub_1D5441A88();
    OUTLINED_FUNCTION_10_112(v14, v15, v16, &_s6TargetVN, v14);
    v23 = *(v3 + *(v13 + 24));
    v22 = 2;
    v17 = sub_1D5441ADC();
    OUTLINED_FUNCTION_10_112(v17, v18, v19, &_s7FeatureVN, v17);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D5441244(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D50D019C(v2, &v18 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_232();
    sub_1D5441B30(v14, v15, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v9, v3);
  }

  v16 = type metadata accessor for CloudEditorialElementLink(0);
  if (*(v2 + *(v16 + 20) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (!*(v2 + *(v16 + 24) + 8))
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  return sub_1D5614E28();
}

uint64_t sub_1D5441460()
{
  sub_1D56162D8();
  sub_1D5441244(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54414A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6978, &qword_1D5665318);
  OUTLINED_FUNCTION_4();
  v23 = v9;
  v24 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for CloudEditorialElementLink(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54418CC();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560C0A8();
  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_0_232();
  sub_1D5441B30(v16, v17, MEMORY[0x1E6968FD0]);
  sub_1D5615F78();
  sub_1D4F5A3D0(v7, v15);
  v26 = 1;
  sub_1D5441920();
  OUTLINED_FUNCTION_9_117();
  sub_1D5615F78();
  *(v15 + *(v11 + 20)) = v25;
  v26 = 2;
  sub_1D5441974();
  OUTLINED_FUNCTION_9_117();
  sub_1D5615F78();
  v18 = OUTLINED_FUNCTION_5_134();
  v19(v18);
  *(v15 + *(v11 + 24)) = v25;
  sub_1D54419C8(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5441A2C(v15);
}

uint64_t sub_1D54417B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5440F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54417DC(uint64_t a1)
{
  v2 = sub_1D54418CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5441818(uint64_t a1)
{
  v2 = sub_1D54418CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5441890(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5441244(v2);
  return sub_1D5616328();
}

unint64_t sub_1D54418CC()
{
  result = qword_1EDD55488[0];
  if (!qword_1EDD55488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55488);
  }

  return result;
}

unint64_t sub_1D5441920()
{
  result = qword_1EDD55470;
  if (!qword_1EDD55470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55470);
  }

  return result;
}

unint64_t sub_1D5441974()
{
  result = qword_1EDD55460;
  if (!qword_1EDD55460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55460);
  }

  return result;
}

uint64_t sub_1D54419C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudEditorialElementLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5441A2C(uint64_t a1)
{
  v2 = type metadata accessor for CloudEditorialElementLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5441A88()
{
  result = qword_1EC7F6988;
  if (!qword_1EC7F6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6988);
  }

  return result;
}

unint64_t sub_1D5441ADC()
{
  result = qword_1EC7F6990;
  if (!qword_1EC7F6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6990);
  }

  return result;
}

uint64_t sub_1D5441B30(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CloudEditorialElementLink.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5441C58()
{
  result = qword_1EC7F6998;
  if (!qword_1EC7F6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6998);
  }

  return result;
}

unint64_t sub_1D5441CB0()
{
  result = qword_1EDD55478;
  if (!qword_1EDD55478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55478);
  }

  return result;
}

unint64_t sub_1D5441D08()
{
  result = qword_1EDD55480;
  if (!qword_1EDD55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55480);
  }

  return result;
}

uint64_t sub_1D5441D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v27[1] = a2;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v27 - v8;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  v16 = sub_1D5614898();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v10 + 16);
  v20(v15, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
    (*(v17 + 32))(v19, v9, v16);
    Playlist.variant.getter();
    result = (*(v17 + 8))(v19, v16);
    if (LOBYTE(v37[0]) == 3)
    {
      *v28 = 1;
      return result;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
    sub_1D4E6C9CC(v9, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  v20(v13, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    result = sub_1D4E6C9CC(&v34, &qword_1EC7EC548, &qword_1D5621090);
LABEL_15:
    *v28 = 0;
    return result;
  }

  sub_1D4F69344(&v34, v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_1D560DB68();
  if (!v30)
  {
    sub_1D4E6C9CC(v29, &qword_1EC7EEC40, &unk_1D561C070);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_14;
  }

  if (!*(&v32 + 1))
  {
LABEL_14:
    sub_1D4E6C9CC(&v31, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_15;
  }

  sub_1D4F69344(&v31, &v34);
  v22 = *(&v35 + 1);
  v23 = v36;
  v24 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  sub_1D4F67E14(v24, v22, v23);
  v25 = v31;
  if (MusicLibrary.isRemovalRestricted.getter())
  {
    v26 = 1;
  }

  else if (v25 == 128)
  {
    v26 = 4;
  }

  else if (v25 == 66)
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  *v28 = v26;
  __swift_destroy_boxed_opaque_existential_1(&v34);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t MusicLibrary.RemoveAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5442258()
{
  result = qword_1EC7F69A0;
  if (!qword_1EC7F69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F69A0);
  }

  return result;
}

_BYTE *_s12RemoveActionVwst(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s12RemoveActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void MusicLibraryRequest<>.filter<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v33 = v0;
  v30 = v3;
  v31 = v2;
  v5 = v4;
  v6 = v2;
  v8 = (*v7 + *MEMORY[0x1E69E77B0]);
  v34 = *(v8[1] + 16);
  v9 = *(v34 + 16);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v29 - v13;
  v14 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v18 = *v8;
  v19 = *(*(v30 + 8) + 8);
  v35 = *(v5 + 16);
  v36 = v18;
  v37 = v9;
  v38 = v19;
  sub_1D560F168();
  v20 = *(v11 + 16);
  v20(v1, v6, v9);
  (*(v16 + 104))(v1, *MEMORY[0x1E69750A0], v14);

  sub_1D560F178();

  v21 = sub_1D560DBF8();
  MEMORY[0x1DA6EAF30]();
  OUTLINED_FUNCTION_11_113();
  sub_1D56151F8();
  v22 = OUTLINED_FUNCTION_20_11();
  v21(v22);
  v23 = sub_1D560DC18();
  v25 = v24;
  sub_1D4EFF488();
  v26 = *(*v25 + 16);
  sub_1D4EFF6F0();
  v27 = v32;
  v20(v32, v31, v9);
  sub_1D504A434(v26, v27, v25, v9, *(v34 + 24));
  v28 = OUTLINED_FUNCTION_20_11();
  v23(v28);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54426E0@<X0>(uint64_t *a3@<X8>)
{
  sub_1D560DD78();
  result = MusicLibraryRequest.library.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D544271C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D560DD78();

  return MusicLibraryRequest.library.setter(v5, v4);
}

uint64_t (*MusicLibraryRequest.library.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvg_0();
  return sub_1D54427B8;
}

uint64_t sub_1D54427B8(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
}

uint64_t (*MusicLibraryRequest.wantsDetailedLibraryResponse.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE013wantsDetailedC8ResponseSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442870;
}

uint64_t (*MusicLibraryRequest.ignoreExplicitContentRestrictions.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D54428D8;
}

uint64_t (*MusicLibraryRequest.includeNonLibraryAddedContent.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE010includeNonC12AddedContentSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442944;
}

uint64_t (*MusicLibraryRequest.excludeNonPinnedItems.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE21excludeNonPinnedItemsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D54429B0;
}

uint64_t (*MusicLibraryRequest.excludeNonPinnedPlaylists.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE25excludeNonPinnedPlaylistsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442A1C;
}

uint64_t sub_1D5442A44@<X0>(uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = sub_1D560DD78();
  result = a3(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D5442A94(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = sub_1D560DD78();
  return a5(v6, v7);
}

uint64_t (*MusicLibraryRequest.deferIdentifierResolution.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442B24;
}

void sub_1D5442EEC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_8_39();
  v4 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_124();
  sub_1D560F168();
  *v1 = v3;
  (*(v6 + 104))(v1, *MEMORY[0x1E6975098], v4);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = OUTLINED_FUNCTION_20_11();
  v0(v9);

  OUTLINED_FUNCTION_46();
}

void MusicLibraryRequest<>.include<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_8_39();
  v5 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v6 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_124();
  sub_1D560F168();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  (*(v8 + 104))(v1, *MEMORY[0x1E6975090], v6);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v10 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v10);
  OUTLINED_FUNCTION_36_0();
  v11 = OUTLINED_FUNCTION_20_11();
  v0(v11);

  OUTLINED_FUNCTION_46();
}

void MusicLibraryRequest<>.filter(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  OUTLINED_FUNCTION_10_41(*(v3 + 8));
  v16[0] = v7;
  v16[1] = v3;
  swift_getKeyPath();
  (*(*(v7 - 8) + 16))(v13, v5, v7);
  (*(v10 + 104))(v13, *MEMORY[0x1E6975090], v8);
  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v1(v15);

  OUTLINED_FUNCTION_46();
}

void MusicLibraryRequest<>.filter(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v16 - v12);
  OUTLINED_FUNCTION_10_41(*(v3 + 8));
  v16[0] = v7;
  v16[1] = v3;
  swift_getKeyPath();
  *v13 = v5;
  (*(v10 + 104))(v13, *MEMORY[0x1E6975098], v8);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v14 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v14);
  OUTLINED_FUNCTION_36_0();
  v15 = OUTLINED_FUNCTION_20_11();
  v1(v15);

  OUTLINED_FUNCTION_46();
}

uint64_t MusicLibraryRequest<>.sort<A>(by:ascending:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D560DE18();

  sub_1D560DE28();

  sub_1D560DC08();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v4 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v4);
  OUTLINED_FUNCTION_36_0();
  v3(&v6, 0);
}

uint64_t MusicLibraryRequest.containersToDonateForPlayback.getter(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54435CC, 0, 0);
}

uint64_t sub_1D54435CC()
{
  v1 = sub_1D560DC28();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D4E628D4(v3, v0 + 16);
      sub_1D4E48324((v0 + 16), v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_1D4E48324((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F01348(0);
            v4 = v7;
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            sub_1D4F01348(v5 > 1);
            v4 = v8;
          }

          *(v4 + 16) = v6 + 1;
          sub_1D4E48324((v0 + 56), v4 + 40 * v6 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_1D4E6C9CC(v0 + 96, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_12:
      v3 += 40;
      if (!--v2)
      {

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_1D54437C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4FBE678;

  return MusicLibraryRequest.containersToDonateForPlayback.getter(a1);
}

uint64_t MusicItem.typedIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicItemTypedIdentifier(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  (*(v11 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4F69344(&v19, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_1D560D078();
    v12 = *(&v20 + 1);
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    MusicItem.typedIdentifier.getter(v12, v13, a3);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1D5443B4C(&v19);
    *v9 = sub_1D560EC18();
    v9[1] = v15;
    if (dynamic_cast_existential_1_conditional(a1, a1, MEMORY[0x1E6975230]))
    {
      sub_1D560E358();
      v9[2] = MEMORY[0x1E69E7CC0];
      v16 = *(v6 + 28);
      v17 = sub_1D5610088();
      __swift_storeEnumTagSinglePayload(v9 + v16, 1, 1, v17);
      return sub_1D514B46C(v9, a3);
    }

    else
    {
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D5685C90);
      v18 = sub_1D5616458();
      MEMORY[0x1DA6EAC70](v18);

      MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5443B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC520, &unk_1D5621050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SocialProfile.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  v14 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  type metadata accessor for SocialProfile(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5443D84()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_135();
  sub_1D5446EDC(v2, v0, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v3, v0, v4);
  sub_1D560EC28();
  return v6 & 1;
}

uint64_t sub_1D5443E50()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_135();
  sub_1D5446EDC(v2, v0, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v3, v0, v4);
  sub_1D560EC28();
  return v6;
}

uint64_t static SocialProfile.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SocialProfile(0);

  return sub_1D5611A78();
}

uint64_t SocialProfile.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  v5 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v41 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  OUTLINED_FUNCTION_23_67();
  v45 = v15;
  v46 = v16;
  v43 = 0x22203A646920200ALL;
  v44 = 0xE800000000000000;
  v17 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v17);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v43, v44);

  if (qword_1EDD53F98 != -1)
  {
    OUTLINED_FUNCTION_17_84(&qword_1EDD53F98);
  }

  v18 = qword_1EDD768A0;
  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v19, v0, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v20, v0, v21);
  OUTLINED_FUNCTION_16_8(v18, MEMORY[0x1E69E6158]);
  v22 = v44;
  if (v44)
  {
    v23 = v43;
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v43 = v24 | 0x646E616800000000;
    v44 = 0xED000022203A656CLL;
    MEMORY[0x1DA6EAC70](v23, v22);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_51_21();
  }

  if (qword_1EDD53FA8 != -1)
  {
    OUTLINED_FUNCTION_14_87(&qword_1EDD53FA8);
  }

  OUTLINED_FUNCTION_16_8(qword_1EDD768A8, MEMORY[0x1E69E6158]);
  if (v44)
  {
    OUTLINED_FUNCTION_51_0();
    v43 = v25 | 0x656D616E00000000;
    v44 = 0xEB0000000022203ALL;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_51_21();
  }

  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDD76898;
  v27 = sub_1D56140F8();
  OUTLINED_FUNCTION_16_8(v26, v27);
  LODWORD(v26) = __swift_getEnumTagSinglePayload(v14, 1, v27);
  sub_1D4E50004(v14, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (v26 != 1)
  {
    MEMORY[0x1DA6EAC70](0x1000000000000010, 0x80000001D56883C0);
  }

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  v43 = 0xD000000000000013;
  v44 = 0x80000001D568BCE0;
  if (qword_1EDD53FC0 != -1)
  {
    OUTLINED_FUNCTION_10_50(&qword_1EDD53FC0);
  }

  v28 = 0x65736C6166;
  OUTLINED_FUNCTION_16_8(qword_1EDD768B8, MEMORY[0x1E69E6370]);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    v29 = 0xE500000000000000;
    v30 = 0x65736C6166;
  }

  else
  {
    v29 = 0xE400000000000000;
    v30 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v30, v29);

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_51_0();
  v43 = v31 | 0x7250736900000000;
  v44 = 0xEF203A6574617669;
  if (qword_1EDD53F88 != -1)
  {
    OUTLINED_FUNCTION_9_49(&qword_1EDD53F88);
  }

  OUTLINED_FUNCTION_16_8(qword_1EDD76890, MEMORY[0x1E69E6370]);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    v32 = 0xE500000000000000;
    v33 = 0x65736C6166;
  }

  else
  {
    v32 = 0xE400000000000000;
    v33 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v33, v32);

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  v43 = 0xD000000000000010;
  v44 = 0x80000001D5688330;
  if (qword_1EDD53FD0 != -1)
  {
    OUTLINED_FUNCTION_7_9(&qword_1EDD53FD0);
  }

  OUTLINED_FUNCTION_16_8(qword_1EDD768C0, MEMORY[0x1E69E6370]);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
    v28 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v28, v34);

  MEMORY[0x1DA6EAC70](v43, v44);

  if (qword_1EDD53FB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_8(qword_1EDD768B0, v5);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v35 = v41;
    (*(v41 + 32))(v10, v4, v5);
    OUTLINED_FUNCTION_51_0();
    v43 = v36 | 0x3A6C727500000000;
    v44 = 0xEA00000000002220;
    OUTLINED_FUNCTION_7_124();
    sub_1D5446EDC(v37, v38, MEMORY[0x1E6968FE0]);
    v39 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v39);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v43, v44);

    (*(v35 + 8))(v10, v5);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v45;
}