uint64_t sub_216712DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216712F04()
{
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView(0);
  v2 = (*(*(FriendsButtonView - 8) + 80) + 16) & ~*(*(FriendsButtonView - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + *(FriendsButtonComponentModel + 20)));

  v6 = (v3 + *(FriendsButtonComponentModel + 28));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + *(FriendsButtonView + 20);
  sub_21680E444(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = *(FriendsButtonView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v3 + v8);

  return swift_deallocObject();
}

uint64_t sub_2167130B8()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68, &qword_2170294A8);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216713118(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68, &qword_2170294A8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216713178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  if (*(*(FriendsButtonComponentModel - 8) + 84) == a2)
  {
    v7 = FriendsButtonComponentModel;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 32);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216713250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 32) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671332C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216713360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21671341C()
{

  sub_21677A524(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21671345C()
{

  return swift_deallocObject();
}

uint64_t sub_2167134C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(type metadata accessor for CuratorDetailHeaderLockupView(0, *(v4 + 16), *(v4 + 24), a4) - 8) + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v4 + v6;
  v8 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v8))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v9 + 8))(v4 + v6, v8);
  }

  v10 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v7 + v10[5]));

  v11 = v10[7];
  v12 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v7 + v11, 1, v12))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = v7 + v10[8];
  v15 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v14);
    v17 = *(v15 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v14 + v17);
  }

  v19 = v7 + v10[10];
  if (!__swift_getEnumTagSinglePayload(v19, 1, v15))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v19);
    v21 = *(v15 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v19 + v21);
  }

  v23 = v7 + v10[11];
  v24 = type metadata accessor for VideoArtwork(0);
  if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
  {

    v25 = *(v24 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v23 + v25);
  }

  v27 = v7 + v10[12];
  v28 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {

    v29 = *(v28 + 24);
    if (!__swift_getEnumTagSinglePayload(v27 + v29, 1, v12))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v30 + 8))(v27 + v29, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216713874()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for CuratorDetailHeaderComponentModel(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2167138B8()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CuratorDetailHeaderComponentModel(0);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2167138F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CuratorDetailHeaderComponentModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_2167139A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CuratorDetailHeaderComponentModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = v4;
  }
}

uint64_t sub_216713A40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80, &unk_217029888);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216713A9C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80, &unk_217029888);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216713B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_21700C444();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 24) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216713C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_21700C444();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = -v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216713D40()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216713DB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216713E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216713F9C()
{
  v0 = OUTLINED_FUNCTION_4_39();
  type metadata accessor for SimpleChinViewModifier(v0, v1);
  OUTLINED_FUNCTION_1_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  v2 = OUTLINED_FUNCTION_4_39();
  type metadata accessor for SimpleChinViewModifier.SimpleChinView(v2, v3);
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_0_78();
  return swift_getWitnessTable();
}

uint64_t sub_216714078(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420, &qword_21702A1D0);
  sub_217009564();
  sub_21693D4B8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217009534();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217008BC4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_216714340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167143E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216714508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671459C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216714678(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for MusicMetricsContextModifier(255, v3);
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD628, &qword_21702A818);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD630, &qword_21702A820);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  sub_216941D00(&qword_27CABD638, &qword_27CABD628, &qword_21702A818);
  OUTLINED_FUNCTION_0_80();
  swift_getWitnessTable();
  sub_216941D00(&qword_27CABD640, &qword_27CABD630, &qword_21702A820);
  return swift_getWitnessTable();
}

uint64_t sub_2167147A8()
{

  return swift_deallocObject();
}

void sub_216714824()
{
  OUTLINED_FUNCTION_1_66();
  OUTLINED_FUNCTION_0_81("Fatal error", v0, v1, v2, v3, "MusicUI/ProtoRequestCovertibleIntent.swift");
  __break(1u);
}

uint64_t sub_216714868(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C644();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21671498C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C644();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216714AA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216714AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216714B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216714B8C()
{
  v1 = *(type metadata accessor for ShareImageRequestAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_216714C94()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216714CC8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216714CFC()
{

  return swift_deallocObject();
}

uint64_t sub_216714D3C()
{

  return swift_deallocObject();
}

uint64_t sub_216714D74()
{
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216714E04()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for GridItemSpacing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216714F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216714FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167150D8()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216715268()
{
  v1 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216715328()
{
  v1 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);
  if (v5 >> 60 != 15)
  {
    sub_21677A524(*(v0 + 32), v5);
  }

  (*(v3 + 8))(v0 + ((v4 + 72) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_216715410()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167154B8()
{
  type metadata accessor for MusicAppDestination(0);
  v0 = OUTLINED_FUNCTION_38();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, v1, v2);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167154FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MusicAppDestination(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2167155A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_43();
    }

    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = *(a3 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v13 = *(a3 + 64);
    }

    v9 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_2167156B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_15_29();
      return;
    }

    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = *(a4 + 64);
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2167157C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_43();
    }

    v8 = type metadata accessor for ContentDescriptor(0);
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216715888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_15_29();
      return;
    }

    v10 = type metadata accessor for ContentDescriptor(0);
    v11 = v5 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216715A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216715AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216715B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216715C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216715DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PlaylistTrackListSection(0, *(v4 + 16), *(v4 + 24), a4);
  v304 = *(*(v6 - 8) + 80);
  v7 = v4 + ((v304 + 32) & ~v304);
  v8 = sub_21700C924();
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);

  v305 = v6;
  v303 = v7;
  v12 = v7 + *(v6 + 36);

  v13 = type metadata accessor for MappedSection(0);
  v14 = (v12 + *(v13 + 24));
  v15 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v15))
  {
    v16 = OUTLINED_FUNCTION_20_11();
    v17 = _s7SectionV6HeaderV12HeaderLockupOMa(v16);
    v18 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v18, v19, v17))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_19;
        case 1u:
          v302 = v12;
          v30 = OUTLINED_FUNCTION_9_12();
          v31 = type metadata accessor for ComposerSectionHeader(v30);
          v32 = v31[5];
          v33 = sub_21700D7A4();
          if (!__swift_getEnumTagSinglePayload(&v14[v32], 1, v33))
          {
            OUTLINED_FUNCTION_50();
            (*(v34 + 8))(&v14[v32], v33);
          }

          OUTLINED_FUNCTION_8_9(v31[6]);

          OUTLINED_FUNCTION_8_9(v31[10]);

          v35 = OUTLINED_FUNCTION_13_4(v31[11]);
          v12 = v302;
          if (v36)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v35);
          }

          v37 = OUTLINED_FUNCTION_20_11();
          v38 = type metadata accessor for ContentDescriptor(v37);
          v39 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v39, v40, v38))
          {

            v41 = *(v38 + 24);
            v42 = sub_217005EF4();
            if (!__swift_getEnumTagSinglePayload(&v14[v41], 1, v42))
            {
              OUTLINED_FUNCTION_50();
              (*(v43 + 8))(&v14[v41], v42);
            }
          }

          break;
        case 2u:
          if (*(v14 + 1))
          {

            if (*(v14 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v14 + 4);
            }
          }

          if (*(v14 + 10))
          {

            if (*(v14 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v14 + 13);
            }
          }

          type metadata accessor for DefaultSectionHeader(0);
          v22 = OUTLINED_FUNCTION_20_11();
          v23 = type metadata accessor for Artwork(v22);
          v24 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v24, v25, v23))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v26 + 8))(v14);
            v27 = *(v23 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v28 + 8))(&v14[v27], v29);
          }

          break;
        case 3u:
          if (*(v14 + 1))
          {

            if (*(v14 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v14 + 4);
            }
          }

LABEL_19:

          break;
        default:
          break;
      }
    }
  }

  v20 = v13;
  v21 = (v12 + *(v13 + 28));
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_6;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v197 + 8))(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
      goto LABEL_177;
    case 2u:
      v125 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem(v125);
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_177;
    case 6u:
      v184 = OUTLINED_FUNCTION_9_12();
      v185 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v184);
      v186 = v185[5];
      v187 = sub_21700D7A4();
      v188 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v188, v189, v187))
      {
        OUTLINED_FUNCTION_50();
        (*(v190 + 8))(&v21[v186], v187);
      }

      v191 = &v21[v185[6]];
      if (!__swift_getEnumTagSinglePayload(v191, 1, v5))
      {
        v192 = (v191 + v5[5]);
        v193 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_28_9(v193))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_209;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v192);
              v284 = type metadata accessor for ComposerSectionHeader(0);
              v285 = v284[5];
              if (!OUTLINED_FUNCTION_21_2(&v192[v285]))
              {
                OUTLINED_FUNCTION_50();
                (*(v286 + 8))(&v192[v285], v187);
              }

              v287 = &v192[v284[11]];
              if (*(v287 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v287);
              }

              v288 = &v192[v284[12]];
              v289 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_28_9(v289))
              {

                v290 = *(v285 + 24);
                v291 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(&v288[v290], 1, v291))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v292 + 8))(&v288[v290], v291);
                }
              }

              break;
            case 2u:
              if (*(v192 + 1))
              {

                if (*(v192 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v192 + 4);
                }
              }

              if (*(v192 + 10))
              {

                if (*(v192 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v192 + 13);
                }
              }

              v274 = &v192[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v275 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_28_9(v275))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v276 + 8))(v274);
                v277 = *(v186 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v278 + 8))(&v274[v277], v279);
              }

              break;
            case 3u:
              if (*(v192 + 1))
              {

                if (*(v192 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v192 + 4);
                }
              }

LABEL_209:

              break;
            default:
              break;
          }
        }
      }

      v194 = &v21[v185[8]];
      v20 = v13;
      if (!__swift_getEnumTagSinglePayload(v194, 1, v5))
      {
        v195 = (v194 + v5[5]);
        v196 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v195, 1, v196))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_214;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v195);
              v293 = type metadata accessor for ComposerSectionHeader(0);
              v294 = v293[5];
              if (!OUTLINED_FUNCTION_21_2(&v195[v294]))
              {
                OUTLINED_FUNCTION_50();
                (*(v295 + 8))(&v195[v294], v187);
              }

              v296 = &v195[v293[11]];
              if (*(v296 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v296);
              }

              v297 = &v195[v293[12]];
              v298 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_21_2(v297))
              {

                v299 = *(v298 + 24);
                v300 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v297 + v299))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v301 + 8))(v297 + v299, v300);
                }
              }

              break;
            case 2u:
              if (*(v195 + 1))
              {

                if (*(v195 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v195 + 4);
                }
              }

              if (*(v195 + 10))
              {

                if (*(v195 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v195 + 13);
                }
              }

              v280 = &v195[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_21_2(v280))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v281 + 8))(v280);
                OUTLINED_FUNCTION_36_16();
                OUTLINED_FUNCTION_9_0();
                (*(v282 + 8))(v280 + v196, v283);
              }

              break;
            case 3u:
              if (*(v195 + 1))
              {

                if (*(v195 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v195 + 4);
                }
              }

LABEL_214:

              break;
            default:
              break;
          }
        }
      }

LABEL_6:

      goto LABEL_178;
    case 8u:
      v92 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v92))
      {
        OUTLINED_FUNCTION_2_11();
        v93 = OUTLINED_FUNCTION_108();
        v94(v93);
      }

      v95 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_1_15(v95);
      v96 = OUTLINED_FUNCTION_25_5();
      v97 = type metadata accessor for ContentDescriptor(v96);
      if (!OUTLINED_FUNCTION_19_3(v97))
      {

        v98 = *(v11 + 24);
        v99 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v8 + v98))
        {
          OUTLINED_FUNCTION_50();
          (*(v100 + 8))(v8 + v98, v99);
        }
      }

      OUTLINED_FUNCTION_8_9(v5[8]);

      if (*&v21[v5[9] + 8])
      {
      }

      goto LABEL_177;
    case 9u:
      v101 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v101))
      {
        OUTLINED_FUNCTION_2_11();
        v102 = OUTLINED_FUNCTION_108();
        v103(v102);
      }

      v104 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v21[v104[5]]);
      OUTLINED_FUNCTION_8_9(v104[6]);

      v105 = v104[7];
      v106 = sub_217005EF4();
      v107 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v107, v108, v106))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v109 + 8))(&v21[v105], v106);
      }

      v110 = &v21[v104[8]];
      type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_21_2(v110))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v111 + 8))(v110);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v112 + 8))(v110 + v105);
      }

      v113 = &v21[v104[10]];
      if (!OUTLINED_FUNCTION_21_2(v113))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v114 + 8))(v113);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v115 + 8))(v113 + v105);
      }

      v116 = &v21[v104[11]];
      v117 = type metadata accessor for VideoArtwork(0);
      if (!__swift_getEnumTagSinglePayload(v116, 1, v117))
      {

        v118 = *(v117 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v119 + 8))(v116 + v118);
      }

      v120 = OUTLINED_FUNCTION_20_11();
      v121 = type metadata accessor for ContentDescriptor(v120);
      v122 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v122, v123, v121))
      {
        goto LABEL_178;
      }

      v124 = *(v121 + 24);
      goto LABEL_171;
    case 0xAu:
      v156 = OUTLINED_FUNCTION_9_12();
      v157 = type metadata accessor for EmptyStateLockup(v156);
      v158 = v157[5];
      v159 = sub_21700D7A4();
      v160 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v160, v161, v159))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v162 + 8))(&v21[v158], v159);
      }

      OUTLINED_FUNCTION_8_9(v157[7]);

      OUTLINED_FUNCTION_8_9(v157[8]);

      OUTLINED_FUNCTION_8_9(v157[9]);

      v163 = &v21[v157[10]];
      v164 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v163, 1, v164))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v165 + 8))(v163);
        v166 = *(v164 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v167 + 8))(v163 + v166);
      }

      v168 = OUTLINED_FUNCTION_20_11();
      v169 = type metadata accessor for ColorSchemeArtwork(v168);
      v170 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v170, v171, v169))
      {
        goto LABEL_178;
      }

      v172 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v172, v173, v164))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v174 + 8))(v21);
        v175 = *(v164 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v176 + 8))(&v21[v175]);
      }

      v21 += *(v169 + 20);
      goto LABEL_158;
    case 0xCu:
      v80 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v80))
      {
        OUTLINED_FUNCTION_2_11();
        v81 = OUTLINED_FUNCTION_108();
        v82(v81);
      }

      v83 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_1_15(v83);
      v84 = OUTLINED_FUNCTION_25_5();
      v85 = type metadata accessor for ModalPresentationDescriptor(v84);
      if (!OUTLINED_FUNCTION_19_3(v85))
      {

        v86 = *(v11 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v87 + 8))(v8 + v86);
      }

      goto LABEL_177;
    case 0x10u:
      v134 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for InlineUpsell(v134);
      v135 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v135))
      {
        OUTLINED_FUNCTION_3_10();
        v136 = OUTLINED_FUNCTION_26_6();
        v137(v136);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      v138 = OUTLINED_FUNCTION_13_4(v5[9]);
      if (v139)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
      }

      v140 = OUTLINED_FUNCTION_13_4(v5[10]);
      if (v141)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
      }

      v142 = v5[11];
      goto LABEL_137;
    case 0x11u:
      v61 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for LandingUpsell(v61);
      v62 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v62))
      {
        OUTLINED_FUNCTION_3_10();
        v63 = OUTLINED_FUNCTION_26_6();
        v64(v63);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      OUTLINED_FUNCTION_8_9(v5[9]);

      v65 = OUTLINED_FUNCTION_13_4(v5[10]);
      if (v66)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
      }

      v67 = OUTLINED_FUNCTION_13_4(v5[11]);
      if (v68)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v69 = OUTLINED_FUNCTION_13_4(v5[12]);
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      v71 = &v21[v5[13]];
      v72 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v71, 1, v72))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v73 + 8))(v71);
        v74 = *(v72 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v75 + 8))(v71 + v74);
      }

      v21 += v5[14];
      v76 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v76, v77, v72))
      {
        goto LABEL_178;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v78 + 8))(v21);
      v79 = *(v72 + 20);
      goto LABEL_160;
    case 0x14u:
      v147 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v147))
      {
        OUTLINED_FUNCTION_2_11();
        v148 = OUTLINED_FUNCTION_108();
        v149(v148);
      }

      v150 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_1_15(v150);
      OUTLINED_FUNCTION_8_9(v151);

      OUTLINED_FUNCTION_8_9(v5[7]);

      goto LABEL_177;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 1);
      v177 = type metadata accessor for GradientListRowModel(0);
      v178 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v178))
      {
        OUTLINED_FUNCTION_3_10();
        v179 = OUTLINED_FUNCTION_26_6();
        v180(v179);
      }

      v181 = OUTLINED_FUNCTION_13_4(*(v177 + 28));
      if (v182)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v181);
      }

      v183 = &v21[*(v177 + 32)];
      if (*(v183 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v183 + 1);
      }

      goto LABEL_120;
    case 0x16u:
      v226 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v226))
      {
        OUTLINED_FUNCTION_2_11();
        v227 = OUTLINED_FUNCTION_108();
        v228(v227);
      }

      v229 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_1_15(v229);
      OUTLINED_FUNCTION_8_9(v230);
      goto LABEL_151;
    case 0x18u:
      v10(v21, v8);
      goto LABEL_177;
    case 0x19u:
      v152 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v152))
      {
        OUTLINED_FUNCTION_2_11();
        v153 = OUTLINED_FUNCTION_108();
        v154(v153);
      }

      v155 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_1_15(v155);
LABEL_151:

      goto LABEL_175;
    case 0x1Du:
      v212 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v212))
      {
        OUTLINED_FUNCTION_2_11();
        v213 = OUTLINED_FUNCTION_108();
        v214(v213);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v216);

      OUTLINED_FUNCTION_8_9(v5[8]);

      OUTLINED_FUNCTION_8_9(v5[9]);

      OUTLINED_FUNCTION_8_9(v5[10]);

      goto LABEL_177;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v79 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      v129 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v129);
      v130 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v130))
      {
        OUTLINED_FUNCTION_3_10();
        v131 = OUTLINED_FUNCTION_26_6();
        v132(v131);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v124 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v21 + 2);
      v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      v263 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v263))
      {
        OUTLINED_FUNCTION_3_10();
        v264 = OUTLINED_FUNCTION_26_6();
        v265(v264);
      }

LABEL_175:
      v133 = v5[7];
      goto LABEL_176;
    case 0x26u:
      v52 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_4_16(v52))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v53 + 8))(v21);
        v54 = v5[5];
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v55 + 8))(&v21[v54]);
      }

      v56 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_11_13(v56);
      v57 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v57))
      {
        OUTLINED_FUNCTION_3_10();
        v58 = OUTLINED_FUNCTION_26_6();
        v59(v58);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

LABEL_87:
      v133 = v5[8];
      goto LABEL_176;
    case 0x27u:
      v231 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v231))
      {
        OUTLINED_FUNCTION_2_11();
        v232 = OUTLINED_FUNCTION_108();
        v233(v232);
      }

      v234 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v234);
      v236 = &v21[v235];

      v237 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v238 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v238))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v239 + 8))(&v236[v237], v8);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      v240 = OUTLINED_FUNCTION_20_11();
      v164 = type metadata accessor for Artwork(v240);
LABEL_158:
      v241 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v241, v242, v164))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v243 + 8))(v21);
        v79 = *(v164 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v244 + 8))(&v21[v79], v245);
      }

      goto LABEL_178;
    case 0x28u:
      v246 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v246))
      {
        OUTLINED_FUNCTION_2_11();
        v247 = OUTLINED_FUNCTION_108();
        v248(v247);
      }

      v249 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v249);
      v251 = &v21[v250];

      v252 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v253 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v253))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v254 + 8))(&v251[v252], v8);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      OUTLINED_FUNCTION_8_9(v5[11]);

      OUTLINED_FUNCTION_8_9(v5[12]);

      OUTLINED_FUNCTION_8_9(v5[13]);

      OUTLINED_FUNCTION_8_9(v5[14]);

      v255 = OUTLINED_FUNCTION_25_5();
      v256 = type metadata accessor for Artwork(v255);
      if (!OUTLINED_FUNCTION_19_3(v256))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v257 + 8))(v8);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v258 + 8))(&v251[v8]);
      }

      v133 = v5[17];
      goto LABEL_176;
    case 0x29u:
      v198 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v198))
      {
        OUTLINED_FUNCTION_2_11();
        v199 = OUTLINED_FUNCTION_108();
        v200(v199);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v202);

      v142 = v5[7];
      goto LABEL_137;
    case 0x2Au:
      v143 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v143))
      {
        OUTLINED_FUNCTION_2_11();
        v144 = OUTLINED_FUNCTION_108();
        v145(v144);
      }

      v146 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      OUTLINED_FUNCTION_11_13(v146);
      goto LABEL_177;
    case 0x2Bu:
      v203 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v203))
      {
        OUTLINED_FUNCTION_2_11();
        v204 = OUTLINED_FUNCTION_108();
        v205(v204);
      }

      v206 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_1_15(v206);
      OUTLINED_FUNCTION_8_9(v207);

      OUTLINED_FUNCTION_8_9(v5[7]);

      v208 = OUTLINED_FUNCTION_13_4(v5[8]);
      if (v209)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v208);
      }

      v142 = v5[9];
LABEL_137:
      v210 = OUTLINED_FUNCTION_13_4(v142);
      if (v211)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v210);
      }

      goto LABEL_178;
    case 0x2Cu:
      v88 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v88))
      {
        OUTLINED_FUNCTION_2_11();
        v89 = OUTLINED_FUNCTION_108();
        v90(v89);
      }

      v91 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_11_13(v91);
      goto LABEL_177;
    case 0x2Eu:
      v60 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v60);
LABEL_81:
      v126 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v126))
      {
        OUTLINED_FUNCTION_3_10();
        v127 = OUTLINED_FUNCTION_26_6();
        v128(v127);
      }

      goto LABEL_177;
    case 0x2Fu:
      v44 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v44);
      v45 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v45))
      {
        OUTLINED_FUNCTION_3_10();
        v46 = OUTLINED_FUNCTION_26_6();
        v47(v46);
      }

LABEL_120:

      goto LABEL_177;
    case 0x30u:
      v48 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v48))
      {
        OUTLINED_FUNCTION_2_11();
        v49 = OUTLINED_FUNCTION_108();
        v50(v49);
      }

      v51 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_1_15(v51);

      if (*&v21[v5[7]] == 1)
      {
        goto LABEL_178;
      }

LABEL_177:

LABEL_178:
      v266 = *(v20 + 36);
      v267 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v12 + v266, 1, v267))
      {
        OUTLINED_FUNCTION_50();
        (*(v268 + 8))(v12 + v266, v267);
      }

      v269 = v12 + *(v20 + 40);
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
      if (!__swift_getEnumTagSinglePayload(v269, 1, v270))
      {

        v271 = *(v270 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v272 + 8))(v269 + v271);
      }

      sub_216684F5C(*(v303 + *(v305 + 44)), *(v303 + *(v305 + 44) + 8));

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      goto LABEL_177;
    case 0x32u:
      v259 = OUTLINED_FUNCTION_9_12();
      v124 = *(type metadata accessor for Spacer(v259) + 20);
LABEL_170:
      v106 = sub_21700D7A4();
LABEL_171:
      v260 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v260, v261, v106))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v262 + 8))(&v21[v124], v106);
      }

      goto LABEL_178;
    case 0x3Cu:
      v217 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for VerticalArtworkListItem(v217);
      v218 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v218))
      {
        OUTLINED_FUNCTION_3_10();
        v219 = OUTLINED_FUNCTION_26_6();
        v220(v219);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v221 + 8))(v8);
      v222 = *(type metadata accessor for Artwork(0) + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v223 + 8))(v8 + v222);
      v224 = OUTLINED_FUNCTION_13_4(v5[8]);
      if (v225)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v224);
      }

      v133 = v5[9];
LABEL_176:
      OUTLINED_FUNCTION_8_9(v133);
      goto LABEL_177;
    default:
      goto LABEL_178;
  }
}

uint64_t sub_216717C08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v11 = &a1[*(a3 + 44)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_216717C9C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = &v5[*(a4 + 44)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216717D24(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28, &unk_21702C4E0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910, &unk_217023330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30, &unk_21702C4F0);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay(255, v2, v1, v3);
  OUTLINED_FUNCTION_17_34();
  swift_getWitnessTable();
  sub_217008BC4();
  v4 = sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  v7 = sub_2166D9530(v5, &unk_27CABF910, &unk_217023330, v6);
  type metadata accessor for PlaylistTrackLockupView(255);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0, &unk_2170231B0);
  OUTLINED_FUNCTION_23_24();
  sub_2166D56E4(v9, v10, &unk_2170453C0);
  OUTLINED_FUNCTION_21_27();
  sub_21695EDD0(v11, &qword_27CABB0C0, &unk_2170231B0, v12);
  OUTLINED_FUNCTION_20_23();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_31();
  v15[7] = v8;
  v15[8] = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  v15[0] = v14;
  v15[1] = v4;
  v15[2] = v2;
  v15[3] = v7;
  v15[4] = &off_282938708;
  v15[5] = swift_getWitnessTable();
  v15[6] = v1;
  type metadata accessor for PaginatingGridView(255, v15);
  sub_21700B1D4();
  sub_21695ED20();
  OUTLINED_FUNCTION_22_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_29();
  return swift_getWitnessTable();
}

uint64_t sub_216717F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216718034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216718108(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) == v2)
    {
      v7 = *(v3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v7 = *(v3 + 48);
    }

    v8 = OUTLINED_FUNCTION_19_1(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

uint64_t sub_2167181E0(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) == a3)
    {
      v7 = *(a4 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v7 = *(a4 + 48);
    }

    v8 = OUTLINED_FUNCTION_11_6(v7);

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_2167182B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionButton(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_4_4();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v5 + v7;
  if (*(v5 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v7));
  }

  if (*(v8 + 56))
  {
  }

  v9 = v4[11];
  v10 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v8 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  v11 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v8 + v11);
  }

  else
  {
  }

  v13 = v8 + v4[13];
  if (*(v13 + 40))
  {
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718460()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167184D8()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216718550()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167185C8()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216718640(void *a1)
{
  sub_21700AF54();
  OUTLINED_FUNCTION_6_43();

  return swift_getWitnessTable();
}

uint64_t sub_216718678()
{
  sub_2170080D4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_2167186EC()
{
  v1 = (type metadata accessor for ActionButtonStyle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718800()
{
  type metadata accessor for ActionButtonListStyle(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_216684F5C(*(v3 + *(v0 + 28)), *(v3 + *(v0 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_216718928(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF8, &qword_21702CA08);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671898C()
{
  OUTLINED_FUNCTION_13_21();
  if (v3)
  {
    return OUTLINED_FUNCTION_0_11(*(v1 + 24));
  }

  OUTLINED_FUNCTION_29_3();
  sub_217007F04();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v6 = *(v2 + 28);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_216718A44()
{
  OUTLINED_FUNCTION_4_33();
  if (v4)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_217007F04();
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_216718B3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDD8, &unk_21702C9D8);
  v1 = sub_217009BE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDE0, &unk_21702C9E8);
  OUTLINED_FUNCTION_7_46();
  sub_216962E24(v2, v3, MEMORY[0x277CDE4F8]);
  v4 = sub_217008CA4();
  v5 = sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v29 = OUTLINED_FUNCTION_8_39(v5, v6, v7, v8, v9, v10, v11, v12, v4);
  v28 = OUTLINED_FUNCTION_8_39(v29, v13, v14, v15, v16, v17, v18, v19, v1);
  return OUTLINED_FUNCTION_3_65(v28, v20, v21, v22, v23, v24, v25, v26, v0);
}

uint64_t sub_216718C50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDE00, &qword_21702CA10);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF8, &qword_21702CA08);
  v2 = sub_2169630A4();
  v18 = OUTLINED_FUNCTION_3_65(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  return OUTLINED_FUNCTION_8_39(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

uint64_t sub_216718CC8()
{
  type metadata accessor for SystemActionButton(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  }

  if (*(v4 + 40))
  {
  }

  v5 = v0[6];
  sub_217007F04();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v4 + v5);
  v7 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v4 + v0[8];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216718E44()
{

  return swift_deallocObject();
}

uint64_t sub_216718E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionButtonModifier(255, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  sub_2170097A4();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_216718F58()
{
  v0 = sub_217009BE4();
  OUTLINED_FUNCTION_7_46();
  v11 = sub_216962E24(v1, v2, MEMORY[0x277CDE4F8]);
  return OUTLINED_FUNCTION_3_65(v11, v3, v4, v5, v6, v7, v8, v9, v0);
}

uint64_t sub_216718FB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionButtonModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  v4 = sub_2170097A4();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for ActionButton(255, v4, WitnessTable, v6);
  v16 = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_39(v16, v8, v9, v10, v11, v12, v13, v14, v7);
}

uint64_t sub_21671908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8, &unk_21702CC00);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216719134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8, &unk_21702CC00);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167191F0()
{
  sub_2166B8588(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_216719238()
{
  sub_217006404();
  sub_216964CFC(&qword_280E4A4B0, MEMORY[0x277D269B8], MEMORY[0x277D269B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167192C0()
{

  return swift_deallocObject();
}

uint64_t sub_216719324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167193CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ContentDescriptor(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216719518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ContentDescriptor(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167195BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216719604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216719660()
{

  return swift_deallocObject();
}

uint64_t sub_2167196AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169680CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216719704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216719798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216719824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167198E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

__n128 sub_2167199AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167199B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReplayYearModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216719A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for ReplayYearModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216719B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216719BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216719D9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_5_46();

  return swift_deallocObject();
}

uint64_t sub_216719DE0()
{
  v13 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  v6 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v13);
  (*(v8 + 8))(v0 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_216719F78()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21671A014()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21671A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671A158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SectionChangeInstruction.Instruction(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671A27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchLandingBrickLockup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21671A328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchLandingBrickLockup(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21671A3E4()
{
  v1 = type metadata accessor for SearchLandingBrickLockupView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SearchLandingBrickLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v5[5]));
  v6 = (v3 + v5[6]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + v5[9];
  v8 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {

    v9 = *(v8 + 24);
    v10 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }
  }

  v11 = v3 + v5[10];
  v12 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v11);
    v14 = *(v12 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v11 + v14);
  }

  sub_216684F5C(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  sub_216684F5C(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_21671A6A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1A8, &unk_21702E250);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671A708()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

void sub_21671A784(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2166B8710(a1);
  }
}

uint64_t sub_21671A8A8()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for TextListComponentModel(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21671A8EC()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for TextListComponentModel(0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_21671A934@<X0>(uint64_t *a6@<X8>)
{
  result = sub_216AD3A94();
  *a6 = result;
  return result;
}

uint64_t sub_21671A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21671AA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21671AC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21671ACD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21671ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaButtonType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671AE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for MediaButtonType(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671AF94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE498, &qword_21702ECA8);
  sub_216980198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671B090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_102();
  type metadata accessor for ContentDescriptor(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_22_1(*(v4 + *(a3 + 20) + 8));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v10 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_21671B1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UserSocialProfileDescriptor(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_21671B23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for UserSocialProfileDescriptor(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_21671B2D8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a3[16];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21671B40C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21671B53C(uint64_t a1)
{
  result = sub_2166D4668(qword_280E43620, type metadata accessor for FlowcaseLockup, &unk_21702F2F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21671B594(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21671B628(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C444();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21671B750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
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

uint64_t sub_21671B86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21698CD80();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21671B8E8()
{
  v1 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for FullScreenArtworkView(0);
  v8 = (v4 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = *(v3 + 8);
  v9(v0 + v4, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v1))
  {
    v9(v0 + v8, v1);
  }

  v10 = *(v7 + 20);
  sub_21700C444();
  OUTLINED_FUNCTION_34();
  (*(v11 + 8))(v0 + v8 + v10);

  return swift_deallocObject();
}

uint64_t sub_21671BAC0(__int128 *a1)
{
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678, &qword_21702F818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680, &qword_21702F820);
  OUTLINED_FUNCTION_191();
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B0A4();
  return swift_getWitnessTable();
}

uint64_t sub_21671BBB0()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE778, &qword_21702FAC0);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_21671BC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21671BCC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21671BD60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v1;
  type metadata accessor for SingleItemSectionViewModifier(255, v10);
  OUTLINED_FUNCTION_7_49();
  v3 = sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  *&v10[0] = v3;
  *(&v10[0] + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v5 = sub_2170089F4();
  *&v10[0] = v3;
  *(&v10[0] + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21698EDC8();
  OUTLINED_FUNCTION_92_0();
  v6 = swift_getWitnessTable();
  *&v10[0] = v5;
  *(&v10[0] + 1) = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v10[0] = v5;
  *(&v10[0] + 1) = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v10[0] = OpaqueTypeMetadata2;
  *(&v10[0] + 1) = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21671C090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21671C140(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671C1D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671C2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671C438()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21671C478()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_22_1(*v0);
  }

  v5 = v2;
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0) - 8) + 84) == v1)
  {
    v6 = *(v5 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v6 = *(v5 + 40);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21671C548(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0) - 8) + 84) == v4)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v8 = *(v7 + 40);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_21671C648()
{
  type metadata accessor for ReplayPageBackgroundView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = *(v0 + 36);
  v6 = sub_2170098A4();
  if (!OUTLINED_FUNCTION_12_37(v6))
  {
    (*(*(v2 - 8) + 8))(v4 + v5, v2);
  }

  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671C7AC()
{
  type metadata accessor for ReplayPageBackgroundView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = *(v0 + 36);
  v6 = sub_2170098A4();
  if (!OUTLINED_FUNCTION_12_37(v6))
  {
    (*(*(v2 - 8) + 8))(v4 + v5, v2);
  }

  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671C91C()
{

  return swift_deallocObject();
}

uint64_t sub_21671C954()
{
  OUTLINED_FUNCTION_4_3();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
  v6 = OUTLINED_FUNCTION_19_1(*(v5 + 44));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21671C9D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 44));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21671CA60()
{

  return swift_deallocObject();
}

uint64_t sub_21671CA98(uint64_t *a1)
{
  sub_217009994();
  sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_217008334();
  sub_217009564();
  sub_21700AD94();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671CC40()
{

  return swift_deallocObject();
}

uint64_t sub_21671CC78()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21671CCB0()
{

  return swift_deallocObject();
}

uint64_t sub_21671CD28()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671CD78(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_2170073D4();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21671CE98(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_2170073D4();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21671CFA8(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C384();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21671D0C8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C384();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

id sub_21671D24C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CAC4();
  *v0 = result;
  return result;
}

uint64_t sub_21671D274()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CBAC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D29C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CCA4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D2C4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CC0C();
  *v0 = result;
  return result;
}

uint64_t sub_21671D2F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CB84();
  *v0 = result;
  return result;
}

uint64_t sub_21671D318()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_21699CA9C();
  *v0 = result;
  return result;
}

uint64_t sub_21671D89C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3DBC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D8C8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3D0C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671D91C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3CE4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671D970()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3BFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21671D9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0, &unk_217031840);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21671D9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0, &unk_217031840);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21671DA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217005EF4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21671DB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217005EF4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671DBF0()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21671DD68()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for ContentDescriptor(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_21671DDA8()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for ContentDescriptor(v2);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v3);
}

uint64_t sub_21671DDF0()
{
  v1 = type metadata accessor for GroupingContextMenu(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = *(v4 + 64);
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = *(type metadata accessor for ContentDescriptor(0) + 24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v3 + v9, 1, v5);
  v11 = *(v7 + 8);
  if (!EnumTagSinglePayload)
  {
    v11(v0 + v3 + v9, v5);
  }

  v11(v0 + ((v3 + v13 + v8) & ~v8), v5);

  return swift_deallocObject();
}

uint64_t sub_21671DF94()
{
  v1 = type metadata accessor for GroupingContextMenu(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(type metadata accessor for ContentDescriptor(0) + 24);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    OUTLINED_FUNCTION_50();
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E0CC()
{
  v1 = (type metadata accessor for GenericContextMenu(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  v4 = v2 + v1[7];
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v4);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v7 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21671E25C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MenuConfiguration(0);
  v8 = (v4 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v9 = v0 + v8;
  v10 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v10))
  {

    v11 = *(v10 + 24);
    v12 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      OUTLINED_FUNCTION_50();
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  v14 = v9 + *(v7 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_50();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = (v9 + *(v7 + 32));
  if (v19[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E51C()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2169C9B18(&qword_27CABF180, &qword_27CABF178, &qword_2170504C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI13PerformAction_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21671E664()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  }

  return swift_deallocObject();
}

uint64_t sub_21671E6DC()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009084();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21671E740()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009014();
  *v0 = result;
  return result;
}

uint64_t sub_21671E79C()
{
  OUTLINED_FUNCTION_17_6();
  result = MEMORY[0x21CE99E50]();
  *v0 = result;
  return result;
}

uint64_t sub_21671E7C8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  if (*(v0 + 200))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
    if (*(v0 + 272))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
    }
  }

  if (*(v0 + 368))
  {
    if (*(v0 + 352))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671E8B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF308, &qword_217032E58);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21671E920()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  if (*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  }

  if (*(v0 + 296))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
    if (*(v0 + 368))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));
    }
  }

  if (*(v0 + 464))
  {
    if (*(v0 + 448))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 424));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671EA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF310, &qword_217032E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
  sub_2169CFBFC();
  sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671EB3C(void *a1)
{
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_21700AF94();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21671EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671ED14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671EDA0()
{
  v1 = type metadata accessor for SearchLandingPageView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if ((~*v2 & 0xF000000000000007) != 0)
  {
    sub_2166DE7B8(*v2, *(v2 + 8), *(v2 + 16));
  }

  sub_2166B8588(*(v2 + 32), *(v2 + 40));

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671EF14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21671EF4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216E411C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_21671EF88(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21671EFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF498, &unk_2170332F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF490, &qword_2170332F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600, &qword_217020AD0);
  sub_2169D431C();
  sub_2169D46A0();
  OUTLINED_FUNCTION_0_12();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21671F08C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF538, &qword_217033558);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_21671F0EC()
{
  type metadata accessor for RecentSearchLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v0[6]), *(v3 + v0[6] + 8));
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v3 + v0[8];
  if (*(v8 + 40))
  {
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21671F278(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF540, &qword_217033560);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21671F2E0()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_21671F594()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_21671F610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_21671F694()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  v4 = v1;
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0) - 8) + 84) == v0)
  {
    v5 = *(v4 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v5 = *(v4 + 28);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21671F760(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0) - 8) + 84) == v4)
    {
      v8 = *(v7 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v8 = *(v7 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_21671F83C()
{
  v1 = (type metadata accessor for Card(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_21671F93C()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21671FA58(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700BA44();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_21671FB9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700BA44();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21671FCD4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21671FD68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167200F4()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650, &unk_217033A40);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670, &unk_217033A60);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_2170073D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720268()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688, &unk_217041EB0);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690, &qword_217033A80);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_21700C084();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167203D8()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698, &qword_217033A88);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0, &unk_217033A90);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_21700C924();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720548()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0, &unk_217041EA0);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8, &qword_217033AA0);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_21700BA44();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167206B8()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0, &qword_217033AA8);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0, &qword_217033AB0);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_217006B84();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216720828()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0, &qword_217033AB8);
  OUTLINED_FUNCTION_6_50();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8, qword_217033AC0);
  if (OUTLINED_FUNCTION_34_20(v4) <= 5)
  {
    sub_21700C1E4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_7_52();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v3 + v1);
  v7 = OUTLINED_FUNCTION_11_41();
  v8(v7);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167209F4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217006224();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700, &unk_217033B48);
      v14 = a3[9];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216720B18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217006224();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF700, &unk_217033B48);
      v14 = a4[9];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216720C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216720CCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216720D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 52) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_216720E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 44);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }
}

uint64_t sub_216720EF4()
{
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216720FAC()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721024()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721084()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167210F4()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_216721184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672122C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167212DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216721384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216721434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MenuActionType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167214E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MenuActionType(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216721588(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167215D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21672174C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169FDD04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2167217A8()
{

  return swift_deallocObject();
}

uint64_t sub_2167217E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10, &qword_217034688);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216721874()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167218C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216721914()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216721950()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_2167219AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216721A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_216721B0C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a3[13];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216721C40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a4[13];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

__n128 sub_216721D8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216721D9C()
{

  return swift_deallocObject();
}

uint64_t sub_216721DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006FE4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006FE4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721EAC()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216721EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216721F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216721FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216722028@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008E04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21672207C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC88, qword_217034F18);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216722110(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC88, qword_217034F18);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167221A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC98, &qword_217034FA8);
  OUTLINED_FUNCTION_0_111();
  sub_216A0B7B8(v0, &qword_27CABFC98, &qword_217034FA8, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216722230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167222DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216722384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216722418(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167224CC()
{
  v1 = (type metadata accessor for CollaborationAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v0 + v2);
  v8 = v1[7];
  v9 = sub_21700C924();
  if (!__swift_getEnumTagSinglePayload(v0 + v2 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  (*(v5 + 8))(v0 + ((v2 + v11 + v6) & ~v6), v3);

  return swift_deallocObject();
}

uint64_t sub_21672268C()
{
  OUTLINED_FUNCTION_29_3();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[5];
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_22_1(*(v3 + v1[6]));
    }

    sub_21700D194();
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == v0)
    {
      v5 = v1[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8, &unk_21705EC50);
      v5 = v1[9];
    }
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21672279C(uint64_t a1, int a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return;
    }

    sub_21700D194();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v9 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCE8, &unk_21705EC50);
      v9 = a4[9];
    }
  }

  v10 = OUTLINED_FUNCTION_11_6(v9);

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_216722908()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  sub_21700D194();
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216722974()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167229E0()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*v0);
  }

  OUTLINED_FUNCTION_29_3();
  sub_21700D194();
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216722A4C()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216722AB8()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*v1);
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    sub_21700D194();
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_216722B70()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      sub_21700D194();
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_216722C2C(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_2170070F4();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216722D4C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_2170070F4();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216722E84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216722F0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216723044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968, qword_217035FC0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216723134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968, qword_217035FC0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167232D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007CA4();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216723358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007CA4();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167233D8()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_12_41();
  v6 = (type metadata accessor for LibraryPinAction(v2, v3, v4, v5) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = OUTLINED_FUNCTION_12_41();
  v13 = (type metadata accessor for LibraryPinActionImplementation(v9, v10, v11, v12) - 8);
  v14 = *(*v13 + 80);
  v15 = OUTLINED_FUNCTION_12_41();
  type metadata accessor for LibraryPinActionType(v15, v16, v17, v18);
  (*(*(v1 - 8) + 8))(v0 + v7, v1);
  v19 = v6[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v20 + 8))(v0 + v7 + v19);

  v21 = (v0 + ((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14));

  v22 = v13[12];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v23 + 8))(v21 + v22);

  return swift_deallocObject();
}

uint64_t sub_2167235C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216723688(uint64_t a1, uint64_t a2)
{
  v4 = sub_217009384();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167236D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217009384();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216723750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216723800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216723A84(uint64_t *a1)
{
  type metadata accessor for MusicClickMetricsModifier(255);
  sub_2170089F4();
  sub_216A25F8C();
  return swift_getWitnessTable();
}

uint64_t sub_216723AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0080, &unk_2170371C8);
  sub_216A26514();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216723B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216723C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216723CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF4504();
  *a1 = result;
  return result;
}

__n128 sub_216723D04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216723D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF452C();
  *a1 = result;
  return result;
}

uint64_t sub_216723D4C()
{
  v0 = OUTLINED_FUNCTION_4_66();
  type metadata accessor for NestedPresentationModifier(v0, v1);
  swift_getWitnessTable();
  v2 = sub_2170097A4();
  OUTLINED_FUNCTION_42();
  v7 = type metadata accessor for PresentationItem(v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_4_66();
  v10 = type metadata accessor for PresentationView(v8, v9);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_0_116();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = OUTLINED_FUNCTION_2_77(OpaqueTypeMetadata2, v15, v16, v17, v18, v19, v20, v21, v31, v2, v7, v10, WitnessTable, v12, v13);
  swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  OUTLINED_FUNCTION_2_77(v22, v23, v24, v25, v26, v27, v28, v29, v32, OpaqueTypeMetadata2, v7, v10, v33, v12, v13);
  sub_2167B2E14();
  sub_2167C4D74();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216723FB4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167240DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216724200(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216724248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167242D4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216724308()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216724350()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216724388()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21672440C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationDestinationsModifier(255, a1[2], a1[5], a4);
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2167244A4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[11];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          v14 = a3[12];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216724670(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[11];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          v14 = a4[12];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216724838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2170067A4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167248D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2170067A4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216724978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for DefaultSectionHeader(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v15 = *(v3 + a3[6] + 32);
        if (v15 > 1)
        {
          return (v15 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v13 = a3[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0208, &qword_217037948);
        OUTLINED_FUNCTION_17();
        if (*(v19 + 84) == a2)
        {
          v9 = v18;
          v13 = a3[8];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
          v13 = a3[9];
        }
      }
    }

    v10 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_216724B2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for DefaultSectionHeader(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(v4 + a4[6] + 32) = -a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0208, &qword_217037948);
        OUTLINED_FUNCTION_17();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[8];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
          v15 = a4[9];
        }
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_216724CE0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  sub_21678817C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_216724D6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0288, &qword_217037BC0);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_216724E30()
{
  v1 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11[0] = v10;
  v11[1] = v1;
  v2 = type metadata accessor for LibraryButtonView(0, v11);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    if (*(v4 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
    }
  }

  else
  {
  }

  v5 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_2166B8588(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  (*(*(v10 - 8) + 8))(v4 + v2[15]);
  v7 = v2[17];
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v4 + v7);
  return swift_deallocObject();
}

uint64_t sub_216724FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21672509C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21672516C()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(v0);
  v1 = OUTLINED_FUNCTION_38();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2167251A8()
{
  v1 = OUTLINED_FUNCTION_102();
  type metadata accessor for MarketingAlbumArtworkGridModel.Attributes(v1);
  v2 = OUTLINED_FUNCTION_38();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_2167251E8()
{
  OUTLINED_FUNCTION_102();
  sub_21700C4B4();
  v0 = OUTLINED_FUNCTION_38();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_216725224()
{
  OUTLINED_FUNCTION_102();
  sub_21700C4B4();
  v1 = OUTLINED_FUNCTION_38();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

uint64_t sub_2167252B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216725368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21672543C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2167254C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167255BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170067A4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216725658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2170067A4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167257A8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167257DC()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216725810()
{
  v1 = sub_217006A94();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2167258D0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_216725990(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167259C8()
{

  return swift_deallocObject();
}

uint64_t sub_216725A00()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_216725A4C()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216725AAC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A45CF8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216725B0C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A403B4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216725BA0(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_217006B84();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_216725CC0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_217006B84();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216725DD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_216725E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216725ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216725FAC()
{
  v1 = type metadata accessor for SocialProfileViewFollowRequestsView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + *(v5 + 20)));

  v6 = v3 + *(v1 + 20);
  sub_21680E444(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  return swift_deallocObject();
}

uint64_t sub_216726100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 32);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167261AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = -a2;
  }

  return result;
}

uint64_t sub_21672625C()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21672630C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726354()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726394(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3[0] = *(a1 + 1);
  v3[1] = v1;
  type metadata accessor for PresentationSourceModifier(255, v3);
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21672643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167264F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167265E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216726630(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672667C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988, &unk_21703A2A0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21672671C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988, &unk_21703A2A0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2167267A8()
{
  OUTLINED_FUNCTION_0_0();
  sub_216A54194();
  *v0 = v1;
}

uint64_t sub_216726804()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void sub_216726838()
{
  OUTLINED_FUNCTION_0_0();
  sub_216A53D50();
  *v0 = v1;
}

uint64_t sub_216726864()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

void sub_2167268C4()
{
  OUTLINED_FUNCTION_0_0();
  sub_216A53F4C();
  *v0 = v1;
}

uint64_t sub_2167268F0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A53B88();
  *v0 = result;
  return result;
}

uint64_t sub_21672691C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216726964()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216726998()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2167269DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216726A14()
{

  sub_21677A524(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_216726A84(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0A80, &unk_21703AF60);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216726B18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0A80, &unk_21703AF60);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216726BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF4504();
  *a1 = result;
  return result;
}

__n128 sub_216726BD8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216726BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AF452C();
  *a1 = result;
  return result;
}

uint64_t sub_216726C48()
{
  v0 = OUTLINED_FUNCTION_22_35();
  type metadata accessor for PresentationSourceModifier(v0, v1);
  OUTLINED_FUNCTION_6_55();
  swift_getWitnessTable();
  v2 = sub_2170097A4();
  OUTLINED_FUNCTION_42();
  v7 = type metadata accessor for PresentationItem(v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_22_35();
  v10 = type metadata accessor for PresentationView(v8, v9);
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_82();
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_125();
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = OUTLINED_FUNCTION_17_41(OpaqueTypeMetadata2, v15, v16, v17, v18, v19, v20, v21, v51, v2, v7, v10, WitnessTable, v12, v13);
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  v31 = OUTLINED_FUNCTION_17_41(v23, v24, v25, v26, v27, v28, v29, v30, v52, OpaqueTypeMetadata2, v7, v10, v55, v12, v13);
  v32 = sub_2167B2E14();
  v33 = sub_2167C4D74();
  v34 = swift_getOpaqueTypeMetadata2();
  v56 = OUTLINED_FUNCTION_13_36(v34, v35, v36, v37, v38, v39, v40, v41, v53, v22, MEMORY[0x277D837D0], v10, v23, v7, v31, v32, v13, v33);
  v54 = swift_getOpaqueTypeMetadata2();
  v42 = sub_217008034();
  OUTLINED_FUNCTION_13_36(v42, v43, v44, v45, v46, v47, v48, v49, v54, v34, MEMORY[0x277D837D0], v10, v23, v7, v56, v32, v13, v33);
  sub_216A5F1E0();
  OUTLINED_FUNCTION_0_12();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216726EC8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216726F5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216727010()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216727064()
{

  return swift_deallocObject();
}

uint64_t sub_2167270A4()
{

  return swift_deallocObject();
}

uint64_t sub_216727114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_102();
  v7 = type metadata accessor for CuratorToolbarContent(v6);
  if (*(*(v7 - 8) + 84) == v3)
  {
    v8 = v7;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for ToolbarProperties(0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_2167271A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  v9 = type metadata accessor for CuratorToolbarContent(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for ToolbarProperties(0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216727244()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for CuratorDetailHeaderComponentModel(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_216727284()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for CuratorDetailHeaderComponentModel(v2);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v3);
}

uint64_t sub_2167272C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D98, &qword_21703B7B8);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216727324()
{
  v2 = type metadata accessor for ShareMusicItemAction(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_2(v6);
  v8 = *(v7 + 80);
  v9 = v4 + v5 + v8;
  v10 = v0 + v4;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v10);
  v12 = v10 + *(v2 + 20);
  v13 = type metadata accessor for ShareableMusicItem(0);
  if (!OUTLINED_FUNCTION_15_10(v13))
  {
    OUTLINED_FUNCTION_22_4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C1E4();
        goto LABEL_32;
      case 1u:
        sub_21700C384();
        goto LABEL_32;
      case 2u:
        sub_2170072A4();
        goto LABEL_32;
      case 3u:
        sub_21700C554();
        goto LABEL_32;
      case 4u:
        sub_217006F54();
        goto LABEL_32;
      case 5u:
        v19 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v19))
        {
          OUTLINED_FUNCTION_50();
          v20 = OUTLINED_FUNCTION_22_4();
          v21(v20);
        }

        v22 = type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_9_53(v22);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
        v23 = *(v1 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_9_0();
        (*(v24 + 8))(v12 + v23);
        v25 = type metadata accessor for MusicFriendsInviteDescriptor(0);
        OUTLINED_FUNCTION_9_53(v25);
        OUTLINED_FUNCTION_89();
        break;
      case 6u:
        sub_21700C254();
        goto LABEL_32;
      case 7u:
        sub_217006B84();
        goto LABEL_32;
      case 8u:
        sub_21700BA44();
        goto LABEL_32;
      case 9u:
        sub_21700C924();
        goto LABEL_32;
      case 0xAu:
        sub_21700C994();
        goto LABEL_32;
      case 0xBu:
        sub_21700BEA4();
        goto LABEL_32;
      case 0xCu:
        v14 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v14))
        {
          OUTLINED_FUNCTION_50();
          v15 = OUTLINED_FUNCTION_22_4();
          v16(v15);
        }

        v17 = type metadata accessor for ShareURLDescriptor(0);
        OUTLINED_FUNCTION_89();
        v18 = *(v17 + 28);
        goto LABEL_26;
      case 0xDu:
        v26 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_15_10(v26))
        {
          OUTLINED_FUNCTION_50();
          v27 = OUTLINED_FUNCTION_22_4();
          v28(v27);
        }

        v29 = type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_9_53(v29);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
        v18 = *(v1 + 32);
LABEL_26:
        sub_217005EF4();
        OUTLINED_FUNCTION_9_0();
        (*(v30 + 8))(v12 + v18);
        break;
      case 0xEu:
        sub_21700C084();
        goto LABEL_32;
      case 0xFu:
        sub_21700C644();
        goto LABEL_32;
      case 0x10u:
        sub_21700C2F4();
        goto LABEL_32;
      case 0x11u:
        sub_2170073D4();
        goto LABEL_32;
      case 0x12u:
        sub_217007324();
        goto LABEL_32;
      case 0x13u:
        sub_217007264();
        goto LABEL_32;
      case 0x14u:
        sub_217007064();
        goto LABEL_32;
      case 0x15u:
        sub_2170070F4();
LABEL_32:
        OUTLINED_FUNCTION_9_0();
        (*(v31 + 8))(v12);
        break;
      default:
        break;
    }
  }

  v32 = v9 & ~v8;
  v33 = *(v2 + 24);
  v34 = sub_217005EF4();
  if (!OUTLINED_FUNCTION_12_42())
  {
    OUTLINED_FUNCTION_50();
    (*(v35 + 8))(&v33[v10], v34);
  }

  v36 = v0 + v32;
  v37 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v37))
  {
    OUTLINED_FUNCTION_50();
    (*(v38 + 8))(v0 + v32, v33);
  }

  v39 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  OUTLINED_FUNCTION_13_37(v39);
  v40 = *(v33 + 7);
  if (!__swift_getEnumTagSinglePayload(v36 + v40, 1, v34))
  {
    OUTLINED_FUNCTION_50();
    (*(v41 + 8))(v36 + v40, v34);
  }

  v42 = v36 + *(v33 + 8);
  v43 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v44 + 8))(v42);
    v45 = *(v43 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v46 + 8))(v42 + v45);
  }

  v47 = v36 + *(v33 + 10);
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v48 + 8))(v47);
    v49 = *(v43 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v50 + 8))(v47 + v49);
  }

  v51 = v36 + *(v33 + 11);
  v52 = type metadata accessor for VideoArtwork(0);
  if (!OUTLINED_FUNCTION_4_16(v52))
  {

    v53 = *(v47 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v54 + 8))(v51 + v53);
  }

  v55 = v36 + *(v33 + 12);
  v56 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v56))
  {

    v57 = *(v33 + 6);
    if (!OUTLINED_FUNCTION_12_42())
    {
      OUTLINED_FUNCTION_50();
      (*(v58 + 8))(v55 + v57, v34);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216727A30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216727A68()
{
  v2 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v0 + v4;
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v0 + v4, v6);
  }

  v8 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  OUTLINED_FUNCTION_13_37(v8);
  v9 = v1[7];
  v10 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v5 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_50();
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v5 + v1[8];
  v13 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v12);
    v15 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v12 + v15);
  }

  v17 = v5 + v1[10];
  if (!OUTLINED_FUNCTION_7_61())
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v17 + v19);
  }

  v21 = v5 + v1[11];
  v22 = type metadata accessor for VideoArtwork(0);
  if (!OUTLINED_FUNCTION_4_16(v22))
  {

    v23 = *(v17 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v24 + 8))(v21 + v23);
  }

  v25 = v5 + v1[12];
  v26 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v26))
  {

    v27 = v1[6];
    if (!OUTLINED_FUNCTION_12_42())
    {
      OUTLINED_FUNCTION_50();
      (*(v28 + 8))(v25 + v27, v10);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216727D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D98, &qword_21703B7B8);
  sub_216A6945C();
  OUTLINED_FUNCTION_2_2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216727DD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216727E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216727EF0()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v1;
  v2 = type metadata accessor for MenuButton(0, v8);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v2 + 64);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21672804C(_OWORD *a1)
{
  sub_217009F14();
  OUTLINED_FUNCTION_0_126();
  return swift_getWitnessTable();
}

uint64_t sub_216728088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C084();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C084();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672821C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216728350(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216728480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167285D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216728620(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21672866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21672871C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167287C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C084();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216728864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C084();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216728918()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E28, &qword_21703BF30);
  sub_216A6CFA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216728A18()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216728A50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EC8, &qword_21703C2D8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216728B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0EC8, &qword_21703C2D8);
  sub_216A6F0F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216728B94(uint64_t a1, uint64_t (*a2)(uint64_t *, double))
{
  sub_21700CE24();
  OUTLINED_FUNCTION_1();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = a1;
  return a2(&v7, v5);
}

uint64_t sub_216728E88()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_34();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_216728F1C()
{

  return swift_deallocObject();
}

uint64_t sub_216728F6C()
{

  return swift_deallocObject();
}

uint64_t sub_216728FB0()
{

  return swift_deallocObject();
}

uint64_t sub_216728FF0()
{
  v1 = sub_21700CCA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_2167290D0()
{
  v1 = sub_21700CCA4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216729188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_216729254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_216729334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2170061E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167293BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700CB44();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216729444(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700CB44();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167294C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672956C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = type metadata accessor for ContentDescriptor(0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167296E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 16) = -a2;
      return result;
    }

    v9 = type metadata accessor for ContentDescriptor(0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167297B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007324();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216729860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007324();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216729930(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2167299C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216729A6C()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216729AFC()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216729DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SuperHeroLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216729E68()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for SuperHeroLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_216729EF8()
{

  if (*(v0 + 80) != 1)
  {
  }

  sub_216684F5C(*(v0 + 224), *(v0 + 232));

  return swift_deallocObject();
}

__n128 sub_216729FA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216729FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v11 - 8;
    if (v10 >= 9)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21672A098()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 + 9);
  }
}

uint64_t sub_21672A1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672A2A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672A354(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700C8E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21672A3DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700C8E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672A484()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21672A4C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21672A500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1368, &qword_21703D6E0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21672A60C()
{
  v1 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21672A6EC()
{
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21672A774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A81B48();
  *a1 = result;
  return result;
}

uint64_t sub_21672A7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216A819F8();
  *a1 = result;
  return result;
}

uint64_t sub_21672A800(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_217007264();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_21672A920(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_217007264();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21672AA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 0xC)
  {
    return EnumTagSinglePayload - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21672AA84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21672AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoticeActionType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21672AB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NoticeActionType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21672AC30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_21672ACC4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672AD68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1438, &qword_21703DB08);
  sub_216A875C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21672ADCC()
{

  return swift_deallocObject();
}

uint64_t sub_21672AE0C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21672AEA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21672AF40()
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v9))
  {

    v10 = *(v9 + 24);
    v11 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

  v12 = v8 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v12);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v15 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = (v8 + *(v0 + 32));
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_21672B210(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for BubbleLockup(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(v3 + a3[6]);
        if (v14 >= 2)
        {
          return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v13 = a3[7];
    }

    v10 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}