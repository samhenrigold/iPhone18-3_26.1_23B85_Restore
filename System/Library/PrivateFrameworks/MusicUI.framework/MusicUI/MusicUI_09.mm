uint64_t sub_21675BFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700C084();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + *(a4 + 20)) = a2 + 2;
      return result;
    }

    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21675C08C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21675C0EC()
{

  return swift_deallocObject();
}

uint64_t sub_21675C13C()
{

  return swift_deallocObject();
}

uint64_t sub_21675C178(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675C20C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675C298(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675C340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675C3F0()
{

  return swift_deallocObject();
}

uint64_t sub_21675C464()
{
  v1 = v0[2];
  v9[0] = v0[1];
  v8 = *&v9[0];
  v2 = v0[3];
  v3 = v0[4];
  v9[1] = v1;
  v9[2] = v2;
  v4 = v0[5];
  v9[3] = v3;
  v9[4] = v4;
  v5 = (type metadata accessor for PaginatingShelfCollection(0, v9) - 8);
  v6 = v0 + ((*(*v5 + 80) + 96) & ~*(*v5 + 80));
  (*(*(v8 - 8) + 8))(v6);

  sub_2166B8588(*&v6[v5[32]], *&v6[v5[32] + 8]);
  return swift_deallocObject();
}

uint64_t sub_21675C588(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 6);
  v4 = *a1;
  v5 = v1;
  v6 = a1[2];
  v7 = v2;
  v8 = a1[4];
  type metadata accessor for ShelfCollection(255, &v4);
  OUTLINED_FUNCTION_0_228();
  return swift_getWitnessTable();
}

uint64_t sub_21675C5E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675C68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675C7B0()
{
  v3 = OUTLINED_FUNCTION_19_53();
  type metadata accessor for ListSection(v3);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 20));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }
}

void sub_21675C84C()
{
  v4 = OUTLINED_FUNCTION_5_123();
  type metadata accessor for ListSection(v4);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_21675C8D4()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2170096D4();
  OUTLINED_FUNCTION_9_92();
  sub_2166D9530(v2, &qword_27CAC9F08, &qword_217062148, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21675C970()
{
  type metadata accessor for SettingsListSectionView(0);
  OUTLINED_FUNCTION_4_4();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v3))
  {
    OUTLINED_FUNCTION_50();
    v4 = OUTLINED_FUNCTION_82();
    v5(v4);
  }

  v6 = type metadata accessor for ListSection(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v6[5]));
  OUTLINED_FUNCTION_7_7(v6[6]);

  OUTLINED_FUNCTION_7_7(v6[7]);

  return swift_deallocObject();
}

uint64_t sub_21675CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ListLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_0_11(*(a1 + *(a3 + 32) + 8));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21675CB84()
{
  v4 = OUTLINED_FUNCTION_5_123();
  type metadata accessor for ListLockup(v4);
  OUTLINED_FUNCTION_17();
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = v0;
      return;
    }

    v7 = v9;
    v8 = v1 + *(v2 + 24);
  }

  __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_21675CC7C()
{
  type metadata accessor for SettingsListItemView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v35 = *(v5 + 64);
  v6 = v1 + v4;
  v7 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v7))
  {
    OUTLINED_FUNCTION_50();
    v8 = OUTLINED_FUNCTION_82();
    v9(v8);
  }

  v10 = type metadata accessor for ListLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v6 + v10[5]));
  OUTLINED_FUNCTION_7_7(v10[6]);

  OUTLINED_FUNCTION_7_7(v10[7]);

  v11 = v6 + v10[11];
  v12 = type metadata accessor for ContentDescriptor(0);
  v13 = OUTLINED_FUNCTION_19_2();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {

    v15 = *(v12 + 24);
    v16 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_21_61(v16))
    {
      OUTLINED_FUNCTION_50();
      (*(v17 + 8))(v11 + v15, v2);
    }
  }

  v18 = (v6 + v10[13]);
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  OUTLINED_FUNCTION_7_7(v10[14]);

  v19 = v6 + v10[15];
  if (*(v19 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v19 + 8));
  }

  v20 = v6 + v10[16];
  v21 = OUTLINED_FUNCTION_19_2();
  if (!__swift_getEnumTagSinglePayload(v21, v22, v12))
  {

    v23 = *(v12 + 24);
    v24 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_23_4(v20 + v23))
    {
      OUTLINED_FUNCTION_50();
      (*(v25 + 8))(v20 + v23, v24);
    }
  }

  v26 = v6 + v10[18];
  v27 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_23_4(v26))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v28 + 8))(v26);
    v29 = *(v27 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v30 + 8))(v26 + v29);
  }

  v31 = v6 + v0[5];
  if (*(v31 + 40))
  {
    if (*(v31 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }
  }

  else
  {
  }

  v32 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v33 + 8))(v6 + v32);
  }

  else
  {
  }

  sub_2166B8588(*(v6 + v0[7]), *(v6 + v0[7] + 8));
  OUTLINED_FUNCTION_7_7(v0[8]);

  OUTLINED_FUNCTION_7_7(v0[9]);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + ((v35 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_21675D06C()
{
  v3 = OUTLINED_FUNCTION_19_53();
  type metadata accessor for ListLockup(v3);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

void sub_21675D0FC()
{
  v4 = OUTLINED_FUNCTION_5_123();
  type metadata accessor for ListLockup(v4);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_21675D190()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21675D1F4(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[19];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
          v14 = a3[21];
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

void sub_21675D3C0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[19];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
          v14 = a4[21];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21675D588(uint64_t a1)
{
  result = sub_2166D4DF0(qword_280E39370, type metadata accessor for HorizontalPosterLockup, &unk_217062870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21675D5E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21675D674(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21675D6F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21675D780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21675D97C()
{
  v1 = (type metadata accessor for DislikeAction(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = v1[7];
  v4 = sub_21700D284();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  return swift_deallocObject();
}

uint64_t sub_21675DA94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675DB1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675DBC4()
{

  return swift_deallocObject();
}

uint64_t sub_21675DC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21675DC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_21675DCD8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21675DD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for FlowAction.Destination(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21675DDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for FlowAction.Destination(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21675DE94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21675DF34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21675E0BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 >= 2)
    {
      return v3 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21675E144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21675E1F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 24);
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21675E28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21675E340(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675E3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675E448(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C924();
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

void sub_21675E56C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C924();
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

uint64_t sub_21675E680(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21675E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21675E714(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21675E7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21675E86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ComposerSectionHeader(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21675E928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ComposerSectionHeader(0);
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

uint64_t sub_21675EA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21675EA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21675EAB8()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21675EB04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21675EB3C()
{

  return swift_deallocObject();
}

uint64_t sub_21675EB74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21675EBAC()
{

  return swift_deallocObject();
}

uint64_t sub_21675EBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
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

uint64_t sub_21675ECA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
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

uint64_t sub_21675ED58()
{
  v1 = *(type metadata accessor for CommerceWebView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void *sub_21675EE4C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216ECC198();
  *v0 = result;
  return result;
}

void *sub_21675EE78()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216ECC2D0();
  *v0 = result;
  return result;
}

uint64_t sub_21675EF78()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217008FD4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21675EFCC()
{
  OUTLINED_FUNCTION_49();
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
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

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21675F290()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

void sub_21675F2D4()
{
  OUTLINED_FUNCTION_17_6();
  sub_217008E24();
  *v0 = v1;
}

uint64_t sub_21675F2FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistLatestReleaseLockup(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_5:
    v10 = v3 + v13;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    OUTLINED_FUNCTION_17();
    if (*(v18 + 84) == a2)
    {
      v9 = v17;
      v13 = a3[8];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v13 = a3[10];
    }

    goto LABEL_5;
  }

  v15 = *(v3 + a3[6]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

void sub_21675F468(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistLatestReleaseLockup(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6]) = a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
        v15 = a4[10];
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21675F5C4(unint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_21675F6F0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21675F940()
{

  return swift_deallocObject();
}

uint64_t sub_21675F984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21675F9D8()
{

  return swift_deallocObject();
}

__n128 sub_21675FAA4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21675FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SectionChangeInstruction(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
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

void sub_21675FC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for SectionChangeInstruction(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21675FD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170073D4();
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

uint64_t sub_21675FDB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2170073D4();
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

uint64_t sub_21675FE58(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990, &qword_21701E3D8);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v11 = a3[12];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21675FF84(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990, &qword_21701E3D8);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v11 = a4[12];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167600AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216760100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216760258()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAC58, &qword_217065DE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16F8, &qword_21703F078);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAC50, &qword_217065DD8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAC48, &qword_217065DD0);
  sub_216E46798();
  sub_2167B2E14();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_57_0(v3, v4, v5, v6, v7, v8, v9, v10, v2);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_57_0(v11, v12, v13, v14, v15, v16, v17, v18, v1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC16E8, &qword_21703F070);
  sub_216E46948();
  OUTLINED_FUNCTION_2_2();
  v35 = OUTLINED_FUNCTION_57_0(v20, v21, v22, v23, v24, v25, v26, v27, v19);
  return OUTLINED_FUNCTION_57_0(v35, MEMORY[0x277CDEEF8], v28, v29, v30, v31, v32, v33, v0);
}

uint64_t sub_2167603C0()
{

  return swift_deallocObject();
}

__n128 sub_216760414(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216760420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_21676050C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21676069C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216760724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167607A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_216760838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2167608C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167608FC()
{

  return swift_deallocObject();
}

uint64_t sub_216760988(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216760A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216760B4C()
{
  v1 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216760C34()
{

  return swift_deallocObject();
}

uint64_t sub_216760C6C()
{

  return swift_deallocObject();
}

uint64_t sub_216760CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170080D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_216760D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2170080D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216760E30(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_216760ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_216760F70()
{
  v1 = type metadata accessor for VerticalArtworkListItemView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = type metadata accessor for VerticalArtworkListItem(0);
  v4 = v3[5];
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v2[v4], 1, v5))
  {
    (*(*(v5 - 8) + 8))(&v2[v4], v5);
  }

  v6 = &v2[v3[7]];
  sub_21700C4B4();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v6);
  v8 = *(type metadata accessor for Artwork(0) + 20);
  sub_21700C444();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(&v6[v8]);
  v10 = &v2[v3[8]];
  if (*(v10 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  sub_216684F5C(*&v2[*(v1 + 20)], v2[*(v1 + 20) + 8]);
  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(&v2[v11], 1, v12))
    {
      (*(*(v12 - 8) + 8))(&v2[v11], v12);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167611EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VerticalArtworkListItem(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 8);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167612C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VerticalArtworkListItem(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167613C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for LandingUpsell(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_216761464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for LandingUpsell(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216761530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216761580()
{
  OUTLINED_FUNCTION_6_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  v3 = OUTLINED_FUNCTION_3_17();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2167615F4()
{
  OUTLINED_FUNCTION_21_0();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v3 = OUTLINED_FUNCTION_3_17();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_21676166C()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167616E4()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216761760()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167617D8()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216761854()
{
  OUTLINED_FUNCTION_6_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  v3 = OUTLINED_FUNCTION_3_17();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2167618C8()
{
  OUTLINED_FUNCTION_21_0();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v3 = OUTLINED_FUNCTION_3_17();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_216761988()
{
  _s7MusicUI11CloseButtonVMa_0(0);
  OUTLINED_FUNCTION_117();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = *(v0 + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(&v3[v4], v5);
  v7(&v3[*(v0 + 32)], v5);

  return swift_deallocObject();
}

uint64_t sub_216761AA4()
{
  type metadata accessor for AccessoryButtonView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  sub_216684F5C(*(v3 + 56), *(v3 + 64));
  v4 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_23_54(v5))
    {
      (*(*(v0 - 8) + 8))(v3 + v4, v0);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216761BD8()
{
  type metadata accessor for PrimaryButtonView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_23_54(v5))
    {
      (*(*(v0 - 8) + 8))(v3 + v4, v0);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216761D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008EB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216761D68()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2170096A4();
  OUTLINED_FUNCTION_28_1();
  sub_2167D2D50(v2);
  sub_216E5A9C0(&qword_280E2A8F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216761EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216761F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167620A4()
{
  v19 = sub_217008144();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_43_3();
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_217008174();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v13 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  v14 = *(v3 + 8);
  v14(v0 + v4, v19);
  v15 = v0 + v8;

  v16 = *(v1 + 28);
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v17 + 8))(v15 + v16);
  v14(v15 + *(v1 + 36), v19);

  (*(v12 + 8))(v0 + v13, v20);

  return swift_deallocObject();
}

uint64_t sub_2167622B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216762338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167623C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedSection(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 36)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2167624EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MappedSection(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21676269C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB138, &unk_217068B68);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_216762720()
{

  return swift_deallocObject();
}

uint64_t sub_2167627A0()
{
  type metadata accessor for SectionHeaderView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140, &qword_217068C40);
  v0 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for AlbumTrackListSection(v0, v1, v2, v3);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148, &qword_217068C48);
  v4 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for ArtistDetailHeaderLockupView(v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB1B0, &qword_217023310);
  OUTLINED_FUNCTION_30_50(qword_280E3D9E8);
  OUTLINED_FUNCTION_17_71();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier(v8, v9);
  OUTLINED_FUNCTION_5_135();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  OUTLINED_FUNCTION_19_58();
  sub_216E8C8F4(v10, v11, &unk_217064990);
  v12 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for PaginatingGridView(v12, v13);
  v14 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(v14, v15, v16, v17);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150, &qword_217068C50);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  v18 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for CuratorDetailHeaderLockupView(v18, v19, v20, v21);
  type metadata accessor for CuratorDetailHeaderComponentModel(255);
  OUTLINED_FUNCTION_29_51();
  sub_216E8C8F4(v22, v23, &unk_21703772C);
  OUTLINED_FUNCTION_14_78();
  swift_getWitnessTable();
  v24 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier(v24, v25);
  OUTLINED_FUNCTION_5_135();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158, &qword_217068C58);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160, &qword_217068C60);
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168, &unk_217068C68);
  v26 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for TitleHeaderView(v26, v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728, &unk_217060FC0);
  sub_2166D9530(&qword_280E45808, &qword_27CAB9728, &unk_217060FC0, &unk_2170633A4);
  OUTLINED_FUNCTION_16_68();
  swift_getWitnessTable();
  v30 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier(v30, v31);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170, &qword_217068C78);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178, &qword_217068C80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180, &qword_217068C88);
  v32 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for PlaylistTrackListSection(v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188, &qword_217068C90);
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190, &qword_217068C98);
  v36 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for SocialProfileDetailHeaderLockupView(v36, v37, v38, v39);
  type metadata accessor for SocialProfileDetailHeaderLockup(255);
  OUTLINED_FUNCTION_28_44();
  sub_216E8C8F4(v40, v41, &unk_2170374D0);
  OUTLINED_FUNCTION_27_51();
  swift_getWitnessTable();
  v42 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier(v42, v43);
  OUTLINED_FUNCTION_4_143();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198, &qword_217068CA0);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0, &qword_217068CA8);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8, &qword_217068CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0, &unk_217068CB8);
  v44 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for TVMovieDetailHeaderLockupView(v44, v45, v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7A8, &qword_21705EDD0);
  sub_2166D9530(&qword_280E457C0, &qword_27CABB7A8, &qword_21705EDD0, &unk_2170633A4);
  OUTLINED_FUNCTION_23_55();
  swift_getWitnessTable();
  v48 = OUTLINED_FUNCTION_40_30();
  type metadata accessor for SingleItemSectionViewModifier(v48, v49);
  OUTLINED_FUNCTION_9_99();
  sub_2170089F4();
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8, &qword_217068CC8);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0, &qword_217068CD0);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  sub_21700AD94();
  sub_2170089F4();
  v50 = OUTLINED_FUNCTION_8_108();
  type metadata accessor for CatalogPagePresenter(v50, v51, v52, v53);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217009B34();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C8, &qword_217068CD8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_63();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_68();
  sub_2166D9530(v54, &qword_27CACB1C8, &qword_217068CD8, v55);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_21700B084();
  OUTLINED_FUNCTION_7_1();
  return swift_getWitnessTable();
}

uint64_t sub_216762F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C384();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216762FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C384();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216763070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216763120()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2167631CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    v9 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 24) + 16);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2167632A8()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24) + 16) = (v0 - 1);
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_216763374()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB708, &qword_217069638);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167633D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB708, &qword_217069638);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216763454()
{
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700C4B4();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = *(v0 + 28);
  sub_21700C444();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_216763564()
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
  if (!OUTLINED_FUNCTION_20_1(v1 + v9))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_20_1(v10 + v12))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  OUTLINED_FUNCTION_4_2();

  v20 = (v10 + *(v0 + 32));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_4_2();

  return swift_deallocObject();
}

uint64_t sub_216763834()
{
  type metadata accessor for TVMovieDetailHeaderLockup(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  v5 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_20_1(v1 + v3))
  {
    OUTLINED_FUNCTION_50();
    (*(v6 + 8))(v1 + v3, v5);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v0[5]));
  v7 = (v4 + v0[6]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();

  v8 = v4 + v0[10];
  v9 = type metadata accessor for ModalPresentationDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 40);
    sub_21700D284();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v8 + v10);
  }

  v12 = v4 + v0[11];
  v13 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_20_1(v12))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v12);
    v15 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v12 + v15);
  }

  OUTLINED_FUNCTION_4_2();

  v17 = v4 + v0[15];
  if (!OUTLINED_FUNCTION_20_1(v17))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v17 + v19);
  }

  OUTLINED_FUNCTION_4_2();
  v21 = v4 + v0[17];
  if (!OUTLINED_FUNCTION_20_1(v21))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v21);
    v23 = *(v13 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v24 + 8))(v21 + v23);
  }

  v25 = v4 + v0[18];
  v26 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
  {

    v27 = *(v26 + 24);
    v28 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v25 + v27, 1, v28))
    {
      OUTLINED_FUNCTION_50();
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216763C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216763C94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216763D2C(void *a1)
{
  sub_217009354();
  sub_216E9A248(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7670, &qword_217018330);
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638, &unk_217017490);
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B084();
  return swift_getWitnessTable();
}

uint64_t sub_216763EB8()
{
  v1 = (type metadata accessor for GoToSongAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_216764094()
{
  type metadata accessor for FavoriteAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216764170()
{
  type metadata accessor for LikeAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216764244(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_2167642D8(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21676438C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2167643F4()
{
  type metadata accessor for ListItemView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
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

uint64_t sub_216764548()
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

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167647F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for ListLockup(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_216764838(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for ListLockup(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_21676488C()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167648D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676491C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216764968(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216764A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216764B2C()
{
  v1 = _s15InlineBubbleTipVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216764CD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBF38, qword_21706AA50);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216764D34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBF38, qword_21706AA50);
  sub_216EA7DD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216764D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216764E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216764F84(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v14 = a3[15];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216765104(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v14 = a4[15];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167652C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216765368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216765404()
{
  v1 = type metadata accessor for ContainerDetailTitlesView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 32));
  }

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[9], v4);
  v6(v2 + v1[10], v4);
  sub_2168AEE00(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_2167655B0()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v6)
  {
    v8 = v5[6];
  }

  else
  {
    type metadata accessor for MappedSection.Content(0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v6)
    {
      v8 = v5[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
      OUTLINED_FUNCTION_17();
      if (*(v10 + 84) == v6)
      {
        v8 = v5[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
        v8 = v5[10];
      }
    }
  }

  v11 = OUTLINED_FUNCTION_19_1(v8);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_216765704()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      type metadata accessor for MappedSection.Content(0);
      OUTLINED_FUNCTION_17();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
        OUTLINED_FUNCTION_17();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
          v8 = v5[10];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_21676585C()
{
  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v4 = v1;
  sub_21700D194();
  v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2167658CC()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21700D194();
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_21676593C()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    return OUTLINED_FUNCTION_22_1(*(v0 + 24));
  }

  v5 = v2;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
    v8 = *(v5 + 24);
  }

  v9 = OUTLINED_FUNCTION_19_1(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_216765A04()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216765AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216765B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216765C00()
{

  return swift_deallocObject();
}

uint64_t sub_216765C38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC120, &qword_21706B900);
  sub_216EB3858();
  sub_216EB3AA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216765CB0()
{

  return swift_deallocObject();
}

uint64_t sub_216765CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D9A4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216765D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D9A4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167660C4()
{
  type metadata accessor for SocialProfileFollowRequestsPageView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v7 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + *(v7 + 20)));

  return swift_deallocObject();
}

uint64_t sub_2167661EC()
{

  return swift_deallocObject();
}

uint64_t sub_216766254()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC218, &qword_21706BDA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC250, &qword_21706BDC8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC210, &qword_21706BDA0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC208, &qword_21706BD98);
  sub_2170086D4();
  OUTLINED_FUNCTION_9_92();
  sub_2166D9530(v3, &qword_27CACC208, &qword_21706BD98, v4);
  OUTLINED_FUNCTION_5_140();
  OUTLINED_FUNCTION_57_0(v5, v6, v7, v8, v9, v10, v11, v12, v2);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_57_0(v13, v14, v15, v16, v17, v18, v19, v20, v1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC258, &qword_21706BDD0);
  OUTLINED_FUNCTION_6_122();
  sub_2166D9530(v22, &qword_27CACC258, &qword_21706BDD0, v23);
  OUTLINED_FUNCTION_2_2();
  v39 = OUTLINED_FUNCTION_57_0(v24, v25, v26, v27, v28, v29, v30, v31, v21);
  return OUTLINED_FUNCTION_57_0(v39, MEMORY[0x277CDEEF8], v32, v33, v34, v35, v36, v37, v0);
}

uint64_t sub_2167663A8()
{
  type metadata accessor for FollowRequestView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  v6 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v7 = type metadata accessor for SocialProfileFollowRequestLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + v7[5]));
  v8 = v5 + v7[6];

  v9 = *(type metadata accessor for ContentDescriptor(0) + 24);
  v10 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v8 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  v11 = (v5 + v7[11]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v12 = (v5 + v7[12]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v13 = (v5 + v7[13]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = v5 + v7[14];
  v15 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v16 + 8))(v14);
    v17 = *(v15 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v18 + 8))(v14 + v17);
  }

  return swift_deallocObject();
}

uint64_t sub_216766680()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216766714()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

__n128 sub_2167668A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2167668C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistPageToolbarContent(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = type metadata accessor for ToolbarProperties(0);
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_21676695C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for ArtistPageToolbarContent(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = type metadata accessor for ToolbarProperties(0);
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2167669F8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21700C384();
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_21700DFD4();
  OUTLINED_FUNCTION_17();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
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

void sub_216766B40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700C384();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_21700DFD4();
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216766C88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216766CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216EBA01C();
  *a1 = result;
  return result;
}

__n128 sub_216766CF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_216766D44()
{
  type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  v6 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v6))
  {

    v7 = *(v2 + 24);
    v8 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_30_44(v8))
    {
      (*(*(v2 - 8) + 8))(v5 + v7, v2);
    }
  }

  v9 = *(v0 + 20);
  sub_21700C384();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v5 + v9);
  v11 = *(v0 + 24);
  sub_21700DFD4();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v5 + v11);

  OUTLINED_FUNCTION_11_91();

  return swift_deallocObject();
}

uint64_t sub_216766EF8()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_3_14();
  sub_2166D9530(v2, &qword_27CACC478, &qword_21706C680, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216766F88()
{
  OUTLINED_FUNCTION_4_3();
  if (v0 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v1;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0) - 8) + 84) == v0)
    {
      v6 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
      v6 = *(v5 + 32);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21676705C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0) - 8) + 84) == v4)
    {
      v8 = *(v7 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
      v8 = *(v7 + 32);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_216767134()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_21700D7A4();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 36));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_2167671AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_21700D7A4();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 36));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_216767224(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_21700D194();
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2167672AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_21700D194();
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_216767350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_217009124();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167673D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_217009124();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216767480()
{
  sub_2167CC288();
  OUTLINED_FUNCTION_2_2();
  return OUTLINED_FUNCTION_57_0(v0, v1, v2, v3, v4, v5, v6, v7, &type metadata for ReplayToolbarContent);
}

uint64_t sub_2167674B4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21676752C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  if (*(v0 + 128))
  {
    if (*(v0 + 112))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167675C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  if (*(v0 + 144))
  {
    if (*(v0 + 128))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216767644(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC768, &qword_21706D1F8);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_2167676A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC700, &qword_21706D0E8);
  sub_2170091D4();
  sub_216ECB7E8();
  OUTLINED_FUNCTION_6_125();
  v10 = sub_216ECB978(v1, v2, MEMORY[0x277CDDE38]);
  return OUTLINED_FUNCTION_57_0(v10, MEMORY[0x277CDE668], v3, v4, v5, v6, v7, v8, v0);
}

uint64_t sub_216767744()
{
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC758, &qword_21706D1F0);
  sub_2166D9530(&qword_27CACC760, &qword_27CACC750, &qword_21706D1E8, MEMORY[0x277CE04B0]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC768, &qword_21706D1F8);
  sub_216ECBA78();
  OUTLINED_FUNCTION_2_2();
  v19 = OUTLINED_FUNCTION_57_0(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  return OUTLINED_FUNCTION_57_0(v19, MEMORY[0x277CDEEF8], v12, v13, v14, v15, v16, v17, v2);
}

uint64_t sub_216767868()
{

  return swift_deallocObject();
}

uint64_t sub_2167679C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216ECD970();
  *a1 = result;
  return result;
}

uint64_t sub_216767A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216ECD918();
  *a1 = result;
  return result;
}

uint64_t sub_216767A58()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216767A8C()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216767AC8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_216767B3C()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_216767B80()
{
  v1 = type metadata accessor for HideFromProfileIntent(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(type metadata accessor for ContentDescriptor(0) + 24);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_216767D14(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_216767D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_216767E1C()
{

  return swift_deallocObject();
}

uint64_t sub_216767EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216922164();
  *a1 = result;
  return result;
}

uint64_t sub_216767EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
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

void sub_216767FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
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

uint64_t sub_216768108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AlbumTrackListSection(0, *(v4 + 16), *(v4 + 24), a4);
  v305 = *(*(v6 - 8) + 80);
  v7 = v4 + ((v305 + 32) & ~v305);
  v8 = sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 8);
  v11 = v9 + 8;
  v10(v7, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);

  v306 = v6;
  v304 = v7;
  v13 = v7 + *(v6 + 36);

  v14 = type metadata accessor for MappedSection(0);
  v15 = (v13 + *(v14 + 24));
  v16 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v16))
  {
    v17 = OUTLINED_FUNCTION_20_11();
    v18 = _s7SectionV6HeaderV12HeaderLockupOMa(v17);
    v19 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v19, v20, v18))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_19;
        case 1u:
          v303 = v13;
          v31 = OUTLINED_FUNCTION_9_12();
          v32 = type metadata accessor for ComposerSectionHeader(v31);
          v33 = v32[5];
          v34 = sub_21700D7A4();
          if (!__swift_getEnumTagSinglePayload(&v15[v33], 1, v34))
          {
            OUTLINED_FUNCTION_50();
            (*(v35 + 8))(&v15[v33], v34);
          }

          OUTLINED_FUNCTION_8_9(v32[6]);

          OUTLINED_FUNCTION_8_9(v32[10]);

          v36 = OUTLINED_FUNCTION_13_4(v32[11]);
          v13 = v303;
          if (v37)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v36);
          }

          v38 = OUTLINED_FUNCTION_20_11();
          v39 = type metadata accessor for ContentDescriptor(v38);
          v40 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {

            v42 = *(v39 + 24);
            v43 = sub_217005EF4();
            if (!__swift_getEnumTagSinglePayload(&v15[v42], 1, v43))
            {
              OUTLINED_FUNCTION_50();
              (*(v44 + 8))(&v15[v42], v43);
            }
          }

          break;
        case 2u:
          if (*(v15 + 1))
          {

            if (*(v15 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v15 + 4);
            }
          }

          if (*(v15 + 10))
          {

            if (*(v15 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v15 + 13);
            }
          }

          type metadata accessor for DefaultSectionHeader(0);
          v23 = OUTLINED_FUNCTION_20_11();
          v24 = type metadata accessor for Artwork(v23);
          v25 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v25, v26, v24))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v27 + 8))(v15);
            v28 = *(v24 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v29 + 8))(&v15[v28], v30);
          }

          break;
        case 3u:
          if (*(v15 + 1))
          {

            if (*(v15 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v15 + 4);
            }
          }

LABEL_19:

          break;
        default:
          break;
      }
    }
  }

  v21 = v14;
  v22 = (v13 + *(v14 + 28));
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
      v10(v22, v8);
      goto LABEL_177;
    case 2u:
      v127 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem(v127);
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
      v187 = OUTLINED_FUNCTION_9_12();
      v188 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v187);
      OUTLINED_FUNCTION_24_46();
      v189 = sub_21700D7A4();
      v190 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v190, v191, v189))
      {
        OUTLINED_FUNCTION_50();
        (*(v192 + 8))(&v22[v11], v189);
      }

      v193 = &v22[*(v188 + 24)];
      if (!__swift_getEnumTagSinglePayload(v193, 1, v5))
      {
        v194 = (v193 + v5[5]);
        v195 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_28_9(v195))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_209;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v194);
              v285 = type metadata accessor for ComposerSectionHeader(0);
              v286 = v285[5];
              if (!OUTLINED_FUNCTION_21_2(&v194[v286]))
              {
                OUTLINED_FUNCTION_50();
                (*(v287 + 8))(&v194[v286], v189);
              }

              v288 = &v194[v285[11]];
              if (*(v288 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v288);
              }

              v289 = &v194[v285[12]];
              v290 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_28_9(v290))
              {

                v291 = *(v286 + 24);
                v292 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(&v289[v291], 1, v292))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v293 + 8))(&v289[v291], v292);
                }
              }

              break;
            case 2u:
              if (*(v194 + 1))
              {

                if (*(v194 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v194 + 4);
                }
              }

              if (*(v194 + 10))
              {

                if (*(v194 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v194 + 13);
                }
              }

              v275 = &v194[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v276 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_28_9(v276))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v277 + 8))(v275);
                v278 = *(v11 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v279 + 8))(&v275[v278], v280);
              }

              break;
            case 3u:
              if (*(v194 + 1))
              {

                if (*(v194 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v194 + 4);
                }
              }

LABEL_209:

              break;
            default:
              break;
          }
        }
      }

      v196 = &v22[*(v188 + 32)];
      v21 = v14;
      if (!__swift_getEnumTagSinglePayload(v196, 1, v5))
      {
        v197 = (v196 + v5[5]);
        v198 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v197, 1, v198))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_214;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v197);
              v294 = type metadata accessor for ComposerSectionHeader(0);
              v295 = v294[5];
              if (!OUTLINED_FUNCTION_21_2(&v197[v295]))
              {
                OUTLINED_FUNCTION_50();
                (*(v296 + 8))(&v197[v295], v189);
              }

              v297 = &v197[v294[11]];
              if (*(v297 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v297);
              }

              v298 = &v197[v294[12]];
              v299 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_21_2(v298))
              {

                v300 = *(v299 + 24);
                v301 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v298 + v300))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v302 + 8))(v298 + v300, v301);
                }
              }

              break;
            case 2u:
              if (*(v197 + 1))
              {

                if (*(v197 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v197 + 4);
                }
              }

              if (*(v197 + 10))
              {

                if (*(v197 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v197 + 13);
                }
              }

              v281 = &v197[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_21_2(v281))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v282 + 8))(v281);
                OUTLINED_FUNCTION_36_16();
                OUTLINED_FUNCTION_9_0();
                (*(v283 + 8))(v281 + v198, v284);
              }

              break;
            case 3u:
              if (*(v197 + 1))
              {

                if (*(v197 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v197 + 4);
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
      v94 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v94))
      {
        OUTLINED_FUNCTION_2_11();
        v95 = OUTLINED_FUNCTION_108();
        v96(v95);
      }

      v97 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_1_15(v97);
      v98 = OUTLINED_FUNCTION_25_5();
      v99 = type metadata accessor for ContentDescriptor(v98);
      if (!OUTLINED_FUNCTION_19_3(v99))
      {

        v100 = *(v12 + 24);
        v101 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v8 + v100))
        {
          OUTLINED_FUNCTION_50();
          (*(v102 + 8))(v8 + v100, v101);
        }
      }

      OUTLINED_FUNCTION_8_9(v5[8]);

      if (*&v22[v5[9] + 8])
      {
      }

      goto LABEL_177;
    case 9u:
      v103 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v103))
      {
        OUTLINED_FUNCTION_2_11();
        v104 = OUTLINED_FUNCTION_108();
        v105(v104);
      }

      v106 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v22[v106[5]]);
      OUTLINED_FUNCTION_8_9(v106[6]);

      v107 = v106[7];
      v108 = sub_217005EF4();
      v109 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v109, v110, v108))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v111 + 8))(&v22[v107], v108);
      }

      v112 = &v22[v106[8]];
      type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_21_2(v112))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v113 + 8))(v112);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v114 + 8))(v112 + v107);
      }

      v115 = &v22[v106[10]];
      if (!OUTLINED_FUNCTION_21_2(v115))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v116 + 8))(v115);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v117 + 8))(v115 + v107);
      }

      v118 = &v22[v106[11]];
      v119 = type metadata accessor for VideoArtwork(0);
      if (!__swift_getEnumTagSinglePayload(v118, 1, v119))
      {

        v120 = *(v119 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v121 + 8))(v118 + v120);
      }

      v122 = OUTLINED_FUNCTION_20_11();
      v123 = type metadata accessor for ContentDescriptor(v122);
      v124 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v124, v125, v123))
      {
        goto LABEL_178;
      }

      v126 = *(v123 + 24);
      goto LABEL_171;
    case 0xAu:
      v160 = OUTLINED_FUNCTION_9_12();
      v161 = type metadata accessor for EmptyStateLockup(v160);
      OUTLINED_FUNCTION_24_46();
      v162 = sub_21700D7A4();
      v163 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v163, v164, v162))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v165 + 8))(&v22[v11], v162);
      }

      OUTLINED_FUNCTION_8_9(v161[7]);

      OUTLINED_FUNCTION_8_9(v161[8]);

      OUTLINED_FUNCTION_8_9(v161[9]);

      v166 = &v22[v161[10]];
      v167 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v166, 1, v167))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v168 + 8))(v166);
        v169 = *(v167 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v170 + 8))(v166 + v169);
      }

      v171 = OUTLINED_FUNCTION_20_11();
      v172 = type metadata accessor for ColorSchemeArtwork(v171);
      v173 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v173, v174, v172))
      {
        goto LABEL_178;
      }

      v175 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v175, v176, v167))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v177 + 8))(v22);
        v178 = *(v167 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v179 + 8))(&v22[v178]);
      }

      v22 += *(v172 + 20);
      goto LABEL_158;
    case 0xCu:
      v82 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v82))
      {
        OUTLINED_FUNCTION_2_11();
        v83 = OUTLINED_FUNCTION_108();
        v84(v83);
      }

      v85 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_1_15(v85);
      v86 = OUTLINED_FUNCTION_25_5();
      v87 = type metadata accessor for ModalPresentationDescriptor(v86);
      if (!OUTLINED_FUNCTION_19_3(v87))
      {

        v88 = *(v12 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v89 + 8))(v8 + v88);
      }

      goto LABEL_177;
    case 0x10u:
      v136 = OUTLINED_FUNCTION_9_12();
      v137 = type metadata accessor for InlineUpsell(v136);
      OUTLINED_FUNCTION_24_46();
      v138 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v138))
      {
        OUTLINED_FUNCTION_3_10();
        v139 = OUTLINED_FUNCTION_26_6();
        v140(v139);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v137[7]);

      OUTLINED_FUNCTION_8_9(v137[8]);

      v141 = OUTLINED_FUNCTION_13_4(v137[9]);
      if (v142)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v141);
      }

      v143 = OUTLINED_FUNCTION_13_4(v137[10]);
      if (v144)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
      }

      v145 = v137[11];
      goto LABEL_137;
    case 0x11u:
      v62 = OUTLINED_FUNCTION_9_12();
      v63 = type metadata accessor for LandingUpsell(v62);
      OUTLINED_FUNCTION_24_46();
      v64 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v64))
      {
        OUTLINED_FUNCTION_3_10();
        v65 = OUTLINED_FUNCTION_26_6();
        v66(v65);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v63[7]);

      OUTLINED_FUNCTION_8_9(v63[8]);

      OUTLINED_FUNCTION_8_9(v63[9]);

      v67 = OUTLINED_FUNCTION_13_4(v63[10]);
      if (v68)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v69 = OUTLINED_FUNCTION_13_4(v63[11]);
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      v71 = OUTLINED_FUNCTION_13_4(v63[12]);
      if (v72)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
      }

      v73 = &v22[v63[13]];
      v74 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v73, 1, v74))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v75 + 8))(v73);
        v76 = *(v74 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v77 + 8))(v73 + v76);
      }

      v22 += v63[14];
      v78 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v78, v79, v74))
      {
        goto LABEL_178;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v80 + 8))(v22);
      v81 = *(v74 + 20);
      goto LABEL_160;
    case 0x14u:
      v150 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v150))
      {
        OUTLINED_FUNCTION_2_11();
        v151 = OUTLINED_FUNCTION_108();
        v152(v151);
      }

      v153 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_1_15(v153);
      OUTLINED_FUNCTION_8_9(v154);

      OUTLINED_FUNCTION_8_9(v5[7]);

      goto LABEL_177;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 1);
      v180 = type metadata accessor for GradientListRowModel(0);
      v181 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v181))
      {
        OUTLINED_FUNCTION_3_10();
        v182 = OUTLINED_FUNCTION_26_6();
        v183(v182);
      }

      v184 = OUTLINED_FUNCTION_13_4(*(v180 + 28));
      if (v185)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v184);
      }

      v186 = &v22[*(v180 + 32)];
      if (*(v186 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v186 + 1);
      }

      goto LABEL_120;
    case 0x16u:
      v227 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v227))
      {
        OUTLINED_FUNCTION_2_11();
        v228 = OUTLINED_FUNCTION_108();
        v229(v228);
      }

      v230 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_1_15(v230);
      OUTLINED_FUNCTION_8_9(v231);
      goto LABEL_151;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v155 + 8))(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
      goto LABEL_177;
    case 0x19u:
      v156 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v156))
      {
        OUTLINED_FUNCTION_2_11();
        v157 = OUTLINED_FUNCTION_108();
        v158(v157);
      }

      v159 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_1_15(v159);
LABEL_151:

      goto LABEL_175;
    case 0x1Du:
      v213 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v213))
      {
        OUTLINED_FUNCTION_2_11();
        v214 = OUTLINED_FUNCTION_108();
        v215(v214);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v217);

      OUTLINED_FUNCTION_8_9(v5[8]);

      OUTLINED_FUNCTION_8_9(v5[9]);

      OUTLINED_FUNCTION_8_9(v5[10]);

      goto LABEL_177;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);

      v81 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      v131 = OUTLINED_FUNCTION_9_12();
      v5 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v131);
      OUTLINED_FUNCTION_24_46();
      v132 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v132))
      {
        OUTLINED_FUNCTION_3_10();
        v133 = OUTLINED_FUNCTION_26_6();
        v134(v133);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);

      v126 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
      v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      v264 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v264))
      {
        OUTLINED_FUNCTION_3_10();
        v265 = OUTLINED_FUNCTION_26_6();
        v266(v265);
      }

LABEL_175:
      v135 = v5[7];
      goto LABEL_176;
    case 0x26u:
      v53 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_4_16(v53))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v54 + 8))(v22);
        v55 = v5[5];
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(&v22[v55]);
      }

      v57 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_11_13(v57);
      v58 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v58))
      {
        OUTLINED_FUNCTION_3_10();
        v59 = OUTLINED_FUNCTION_26_6();
        v60(v59);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

LABEL_87:
      v135 = v5[8];
      goto LABEL_176;
    case 0x27u:
      v232 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v232))
      {
        OUTLINED_FUNCTION_2_11();
        v233 = OUTLINED_FUNCTION_108();
        v234(v233);
      }

      v235 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v235);
      v237 = &v22[v236];

      v238 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v239 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v239))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v240 + 8))(&v237[v238], v8);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      v241 = OUTLINED_FUNCTION_20_11();
      v167 = type metadata accessor for Artwork(v241);
LABEL_158:
      v242 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v242, v243, v167))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v244 + 8))(v22);
        v81 = *(v167 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v245 + 8))(&v22[v81], v246);
      }

      goto LABEL_178;
    case 0x28u:
      v247 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v247))
      {
        OUTLINED_FUNCTION_2_11();
        v248 = OUTLINED_FUNCTION_108();
        v249(v248);
      }

      v250 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v250);
      v252 = &v22[v251];

      v253 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v254 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v254))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v255 + 8))(&v252[v253], v8);
      }

      OUTLINED_FUNCTION_8_9(v5[7]);

      OUTLINED_FUNCTION_8_9(v5[8]);

      OUTLINED_FUNCTION_8_9(v5[11]);

      OUTLINED_FUNCTION_8_9(v5[12]);

      OUTLINED_FUNCTION_8_9(v5[13]);

      OUTLINED_FUNCTION_8_9(v5[14]);

      v256 = OUTLINED_FUNCTION_25_5();
      v257 = type metadata accessor for Artwork(v256);
      if (!OUTLINED_FUNCTION_19_3(v257))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v258 + 8))(v8);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v259 + 8))(&v252[v8]);
      }

      v135 = v5[17];
      goto LABEL_176;
    case 0x29u:
      v199 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v199))
      {
        OUTLINED_FUNCTION_2_11();
        v200 = OUTLINED_FUNCTION_108();
        v201(v200);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v203);

      v145 = v5[7];
      goto LABEL_137;
    case 0x2Au:
      v146 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v146))
      {
        OUTLINED_FUNCTION_2_11();
        v147 = OUTLINED_FUNCTION_108();
        v148(v147);
      }

      v149 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      OUTLINED_FUNCTION_11_13(v149);
      goto LABEL_177;
    case 0x2Bu:
      v204 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v204))
      {
        OUTLINED_FUNCTION_2_11();
        v205 = OUTLINED_FUNCTION_108();
        v206(v205);
      }

      v207 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_1_15(v207);
      OUTLINED_FUNCTION_8_9(v208);

      OUTLINED_FUNCTION_8_9(v5[7]);

      v209 = OUTLINED_FUNCTION_13_4(v5[8]);
      if (v210)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v209);
      }

      v145 = v5[9];
LABEL_137:
      v211 = OUTLINED_FUNCTION_13_4(v145);
      if (v212)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v211);
      }

      goto LABEL_178;
    case 0x2Cu:
      v90 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v90))
      {
        OUTLINED_FUNCTION_2_11();
        v91 = OUTLINED_FUNCTION_108();
        v92(v91);
      }

      v93 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_11_13(v93);
      goto LABEL_177;
    case 0x2Eu:
      v61 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v61);
LABEL_81:
      OUTLINED_FUNCTION_24_46();
      v128 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v128))
      {
        OUTLINED_FUNCTION_3_10();
        v129 = OUTLINED_FUNCTION_26_6();
        v130(v129);
      }

      goto LABEL_177;
    case 0x2Fu:
      v45 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v45);
      OUTLINED_FUNCTION_24_46();
      v46 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v46))
      {
        OUTLINED_FUNCTION_3_10();
        v47 = OUTLINED_FUNCTION_26_6();
        v48(v47);
      }

LABEL_120:

      goto LABEL_177;
    case 0x30u:
      v49 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v49))
      {
        OUTLINED_FUNCTION_2_11();
        v50 = OUTLINED_FUNCTION_108();
        v51(v50);
      }

      v52 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_1_15(v52);

      if (*&v22[v5[7]] == 1)
      {
        goto LABEL_178;
      }

LABEL_177:

LABEL_178:
      v267 = *(v21 + 36);
      v268 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v13 + v267, 1, v268))
      {
        OUTLINED_FUNCTION_50();
        (*(v269 + 8))(v13 + v267, v268);
      }

      v270 = v13 + *(v21 + 40);
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
      if (!__swift_getEnumTagSinglePayload(v270, 1, v271))
      {

        v272 = *(v271 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v273 + 8))(v270 + v272);
      }

      sub_216684F5C(*(v304 + *(v306 + 44)), *(v304 + *(v306 + 44) + 8));

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);

      goto LABEL_177;
    case 0x32u:
      v260 = OUTLINED_FUNCTION_9_12();
      v126 = *(type metadata accessor for Spacer(v260) + 20);
LABEL_170:
      v108 = sub_21700D7A4();
LABEL_171:
      v261 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v261, v262, v108))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v263 + 8))(&v22[v126], v108);
      }

      goto LABEL_178;
    case 0x3Cu:
      v218 = OUTLINED_FUNCTION_9_12();
      v219 = type metadata accessor for VerticalArtworkListItem(v218);
      OUTLINED_FUNCTION_24_46();
      v220 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v220))
      {
        OUTLINED_FUNCTION_3_10();
        v221 = OUTLINED_FUNCTION_26_6();
        v222(v221);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v223 + 8))(v8);
      type metadata accessor for Artwork(0);
      OUTLINED_FUNCTION_24_46();
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v224 + 8))(v8 + v11);
      v225 = OUTLINED_FUNCTION_13_4(*(v219 + 32));
      if (v226)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v225);
      }

      v135 = *(v219 + 36);
LABEL_176:
      OUTLINED_FUNCTION_8_9(v135);
      goto LABEL_177;
    default:
      goto LABEL_178;
  }
}

uint64_t sub_216769F90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v11 = &a1[*(a3 + 40)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_21676A024(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = &v5[*(a4 + 40)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676A0AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28, &unk_21702C4E0);
  v3 = OUTLINED_FUNCTION_108();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
  type metadata accessor for AlbumTrackLockupView(255);
  type metadata accessor for AlbumTrackListSection.DividerOverlay(255, v2, v1, v6);
  OUTLINED_FUNCTION_18_73();
  swift_getWitnessTable();
  sub_217008BC4();
  v7 = sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  v10 = sub_2166D9530(v8, &unk_27CABF8B0, &unk_217033E30, v9);
  OUTLINED_FUNCTION_15_75();
  v13 = sub_2166D28B0(v11, v12, &unk_2170230D0);
  OUTLINED_FUNCTION_21_69();
  v15[7] = v13;
  v15[8] = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v2;
  v15[3] = v10;
  v15[4] = &off_282938708;
  v15[5] = swift_getWitnessTable();
  v15[6] = v1;
  type metadata accessor for PaginatingGridView(255, v15);
  sub_21700B1D4();
  sub_21695ED20();
  OUTLINED_FUNCTION_25_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_74();
  return swift_getWitnessTable();
}

uint64_t sub_21676A294()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v7 = v6;
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21676A430(uint64_t a1, uint64_t a2)
{
  ContextLockup = type metadata accessor for SearchQueryContextLockup(0);

  return __swift_getEnumTagSinglePayload(a1, a2, ContextLockup);
}

uint64_t sub_21676A478(uint64_t a1, uint64_t a2)
{
  ContextLockup = type metadata accessor for SearchQueryContextLockup(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, ContextLockup);
}

uint64_t sub_21676A4C8(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_110();
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_17();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
      OUTLINED_FUNCTION_17();
      if (*(v18 + 84) == a2)
      {
        v8 = v17;
        v12 = a3[9];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
        v12 = a3[11];
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_21676A678(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for FlowAction.Destination(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6] + 8) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
          v14 = a4[11];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676A824(unint64_t *a1, uint64_t a2, int *a3)
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
      sub_217007064();
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

void *sub_21676A944(void *result, uint64_t a2, int a3, int *a4)
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
      sub_217007064();
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

uint64_t sub_21676AAE8()
{
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_33_1();
  type metadata accessor for ReplayMonthSelectorView(v3, v4, v5, v6);
  OUTLINED_FUNCTION_43_3();
  v8 = v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  v9 = v8 + *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CACC940, &unk_21706E7B0);
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC9D0, &qword_21706E838);

  v11 = v8 + *(v1 + 60);

  OUTLINED_FUNCTION_33_1();
  sub_21700B104();
  OUTLINED_FUNCTION_2_183();
  (*(v12 + 8))(v11 + v13, v2);

  return swift_deallocObject();
}

uint64_t sub_21676AC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_217008934();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21676ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_217008934();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_21676AD48(ValueMetadata **a1)
{
  v1 = a1[1];
  v2 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButtonsWithHighlight(v2, v3, v1, v4);
  sub_2170089F4();
  OUTLINED_FUNCTION_5_143();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217008044();
  OUTLINED_FUNCTION_12_90();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.FadingView(v5, v6, v1, v7);
  OUTLINED_FUNCTION_9_108();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170085A4();
  sub_2170089F4();
  sub_217008BA4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_21_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008BC4();
  OUTLINED_FUNCTION_23_60();
  sub_2170089F4();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_76();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v9 = *(v1->Description + 1);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_37_15();
  v11 = sub_21700E984();
  v56 = WitnessTable;
  v16 = OUTLINED_FUNCTION_25_55(v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_14_86();
  v17 = swift_getWitnessTable();
  v25 = OUTLINED_FUNCTION_24_48(v17, v18, v19, v20, v21, v22, v23, v24, v47, v49, v51, v53, v9, OpaqueTypeMetadata2, v11, v56, v9);
  v57 = v17;
  OUTLINED_FUNCTION_25_55(v25, v26, v27, v28, v29);
  v30 = sub_216EE525C();
  v38 = OUTLINED_FUNCTION_24_48(v30, v31, v32, v33, v34, v35, v36, v37, v48, v50, v52, v54, v55, v25, &type metadata for HorizontalMargins, v16, v57);
  OUTLINED_FUNCTION_25_55(v38, v39, v40, v41, v42);
  OUTLINED_FUNCTION_2_3();
  sub_217008B64();
  OUTLINED_FUNCTION_11_27();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCA08, &qword_21706E850);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_150();
  sub_2166D9530(v43, v44, &qword_21706E850, v45);
  return swift_getWitnessTable();
}

uint64_t sub_21676B0B8()
{
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_33_1();
  type metadata accessor for ReplayMonthSelectorView.PickerButtonsWithHighlight(v3, v4, v5, v6);
  OUTLINED_FUNCTION_43_3();
  v8 = v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  v9 = v8 + *(v1 + 48);

  OUTLINED_FUNCTION_33_1();
  sub_21700B104();
  OUTLINED_FUNCTION_2_183();
  (*(v10 + 8))(v9 + v11, v2);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21676B23C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButtons(v2, v3, v1, v4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_37_15();
  sub_21700E984();
  v5 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for ReplayMonthSelectorView.PickerButton(v5, v6, v1, v7);
  OUTLINED_FUNCTION_5_104();
  swift_getWitnessTable();
  sub_21700B174();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_121();
  sub_216EE73FC(v8, v9, MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_126();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676B3F0()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_27_54();
  v6 = type metadata accessor for ReplayMonthSelectorView.PickerButton(v2, v3, v4, v5);
  v7 = v0 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));

  OUTLINED_FUNCTION_27_54();
  v8 = sub_21700B104();
  v9 = *(*(v1 - 8) + 8);
  v9(v7 + *(v8 + 32), v1);
  v9(v7 + v6[9], v1);
  v10 = v7 + v6[10];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }
  }

  else
  {
  }

  v11 = v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v7 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21676B59C(uint64_t *a1)
{
  v1 = a1[1];
  OUTLINED_FUNCTION_11_27();
  sub_21700E984();
  v2 = OUTLINED_FUNCTION_11_27();
  type metadata accessor for ReplayMonthSelectorView.PickerButton(v2, v3, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCC40, &qword_21706EC28);
  v5 = OUTLINED_FUNCTION_11_27();
  type metadata accessor for ReplayMonthSelectorView.FadingView(v5, v6, v1, v7);
  sub_2170089F4();
  sub_2170089F4();
  sub_217008BA4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_2_3();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_21700B0A4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217009534();
  sub_2170089F4();
  OUTLINED_FUNCTION_5_104();
  swift_getWitnessTable();
  sub_21700B174();
  OUTLINED_FUNCTION_6_126();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21700B174();
  sub_21700B1D4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217007FE4();
  return swift_getWitnessTable();
}

uint64_t sub_21676B868(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCC90, &qword_21706EC50);
  sub_2166D9530(&qword_27CACCC98, &qword_27CACCC90, &qword_21706EC50, MEMORY[0x277CDF028]);
  sub_21700AFA4();
  sub_217008AD4();
  swift_getWitnessTable();
  sub_216EE73FC(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCCA0, &qword_21706EC58);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009584();
  swift_getOpaqueTypeConformance2();
  sub_2166D9530(&qword_27CACCCA8, &qword_27CACCCA0, &qword_21706EC58, MEMORY[0x277CE07A8]);
  swift_getWitnessTable();
  sub_216EE73FC(&qword_27CACCCB0, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_121();
  sub_216EE73FC(v1, v2, MEMORY[0x277CDE458]);
  return swift_getWitnessTable();
}

uint64_t sub_21676BB38(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21676BC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21676BD0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_217008674();
  type metadata accessor for FlowActionPageView(255);
  type metadata accessor for NavigationDestinationsModifier(255, v1, v2, v3);
  sub_2170089F4();
  OUTLINED_FUNCTION_1_218();
  sub_2166B4C18(v4, v5, &unk_217018DE4);
  OUTLINED_FUNCTION_0_258();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217008A24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  sub_2170089F4();
  OUTLINED_FUNCTION_3_176();
  swift_getWitnessTable();
  sub_216A528D0();
  return swift_getWitnessTable();
}

uint64_t sub_21676BF34()
{

  return swift_deallocObject();
}

uint64_t sub_21676BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_21676C08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21676C168(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21676C1F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676C334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008D64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21676C3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC8, &qword_21706F7C0);
  sub_216EF6E30();
  sub_216DE8638();
  OUTLINED_FUNCTION_13_85();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676C424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_21676C4AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 24)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_21676C5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21676C6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEC0, &unk_21706FCA0);
  sub_216EF8CAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21676C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
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

uint64_t sub_21676C7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
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

uint64_t sub_21676C8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676C8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676C964(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676C9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700C4B4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676C9FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217006224();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CA84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217006224();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CB04(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21676CBAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21676CC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CCE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CD64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700CDF4();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676CDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700CDF4();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676CE6C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v9 = a3[13];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[8] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_21676CFA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v11 = a4[13];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_21676D0D0(uint64_t a1)
{
  result = sub_2166D5234(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup, &unk_217070820);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_21676D134(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21676D15C()
{

  return swift_deallocObject();
}

uint64_t sub_21676D1A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v8 = type metadata accessor for CompositeLibraryCatalogView.Section(0, *(a3 + 24), *(a3 + 40), a4);
  v9 = a1 + *(a3 + 60);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void *sub_21676D224(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CompositeLibraryCatalogView.Section(0, *(a4 + 24), *(a4 + 40), a4);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676D2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedSection(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21676D2F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MappedSection(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_21676D350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 44)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 36);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21676D400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_21676D4B8()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_34_38(v62, *v0, *v0);
  type metadata accessor for CompositeLibraryCatalogView.Section(v1, v2, v3, v4);
  v5 = sub_21700E984();
  v6 = &v103;
  v111.val[0] = v62[0];
  v111.val[1] = v62[1];
  vst2q_f64(v6, v111);
  v7 = type metadata accessor for CompositeLibraryCatalogView.SectionView(255, &v103);
  OUTLINED_FUNCTION_5_104();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_69();
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_63();
  v10 = swift_getWitnessTable();
  v103 = v5;
  v104 = v7;
  v105 = MEMORY[0x277CE1428];
  v106 = WitnessTable;
  v107 = v9;
  v108 = MEMORY[0x277CE1410];
  v109 = &off_2816C2F28;
  v110 = v10;
  type metadata accessor for ShelfCollection(255, &v103);
  OUTLINED_FUNCTION_0_228();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_217008B64();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_21700B0A4();
  v11 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v11, v12);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00, &qword_217024DD0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18, &unk_2170543F0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20, &qword_217024DF0);
  OUTLINED_FUNCTION_19_0();
  v13 = sub_2170089F4();
  v14 = type metadata accessor for ObjectGraph(255);
  OUTLINED_FUNCTION_10_56();
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v17 = v16;
  v20 = sub_2166D9530(v18, &qword_27CABB9F8, &unk_217054400, v19);
  v101 = v15;
  v102 = v20;
  OUTLINED_FUNCTION_8_72();
  v21 = swift_getWitnessTable();
  v62[0].n128_u64[0] = v17;
  v22 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0, v17);
  v99 = v21;
  v100 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0, v17);
  v97 = v23;
  v98 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20, &qword_217024DF0, v17);
  v95 = v25;
  v96 = v26;
  v27 = swift_getWitnessTable();
  v103 = v13;
  v104 = v14;
  v105 = v27;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD1A0, &qword_2170708B8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68, &qword_217057700);
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278, &qword_21701C850);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E70, &unk_217057738);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290, &unk_21701C860);
  sub_2170089F4();
  v28 = sub_2170089F4();
  v103 = v13;
  v104 = v14;
  v105 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22_62();
  v32 = sub_2166D9530(v30, &qword_27CACD1A0, &qword_2170708B8, v31);
  v93 = OpaqueTypeConformance2;
  v94 = v32;
  v33 = swift_getWitnessTable();
  v34 = v62[0].n128_u64[0];
  v35 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700, v62[0].n128_i64[0]);
  v91 = v33;
  v92 = v35;
  v89 = swift_getWitnessTable();
  v90 = v35;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CE0328];
  v38 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
  v87 = v36;
  v88 = v38;
  OUTLINED_FUNCTION_46_1();
  v39 = swift_getWitnessTable();
  v85 = v36;
  v86 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v37);
  v83 = v36;
  v84 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v37);
  v81 = v36;
  v82 = v43;
  v44 = swift_getWitnessTable();
  v79 = v42;
  v80 = v44;
  v45 = swift_getWitnessTable();
  v77 = v40;
  v78 = v45;
  v75 = swift_getWitnessTable();
  v76 = v36;
  v46 = swift_getWitnessTable();
  v47 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, v34);
  v73 = v46;
  v74 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_2166D9530(&qword_27CAC6E68, &qword_27CAC6E70, &unk_217057738, v34);
  v71 = v48;
  v72 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, v34);
  v69 = v50;
  v70 = v51;
  v67 = swift_getWitnessTable();
  v68 = v51;
  v52 = swift_getWitnessTable();
  v103 = v28;
  v104 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = v28;
  v104 = v52;
  v54 = OUTLINED_FUNCTION_30_53();
  v103 = OpaqueTypeMetadata2;
  v104 = v54;
  OUTLINED_FUNCTION_12_91();
  v55 = swift_getOpaqueTypeMetadata2();
  v103 = OpaqueTypeMetadata2;
  v104 = v54;
  v56 = OUTLINED_FUNCTION_30_53();
  v103 = v55;
  v104 = v56;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298, &unk_2170544C0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0, &unk_21701C870);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v103 = v55;
  v104 = v56;
  v57 = OUTLINED_FUNCTION_30_53();
  v58 = v62[0].n128_u64[0];
  v59 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, v62[0].n128_i64[0]);
  v65 = v57;
  v66 = v59;
  v60 = swift_getWitnessTable();
  v61 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, v58);
  v63 = v60;
  v64 = v61;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21676DD30()
{
  v0 = OUTLINED_FUNCTION_7_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_2_186();
  sub_2166D9530(v2, &qword_27CAC6F08, &qword_217057A30, v3);
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21676DE38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F08C30();
  *a1 = result;
  return result;
}

uint64_t sub_21676DE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LinkComponentModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 32);
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
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21676DF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LinkComponentModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676E088()
{
  v1 = type metadata accessor for LinkView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for LinkComponentModel(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + *(v5 + 20)));
  v6 = (v3 + *(v5 + 24));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v3 + v7);
  v9 = v3 + *(v1 + 24);
  sub_21680E444(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

  return swift_deallocObject();
}

uint64_t sub_21676E22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169936D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21676E29C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = type metadata accessor for SearchResultsPageIntent(0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_21676E318(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchResultsPageIntent(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676E398()
{
  OUTLINED_FUNCTION_29_26();
  v1 = type metadata accessor for SearchResultsViewModel.Data(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v8 = *(v7 + 80);
  v9 = v3 + v5 + v8;
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  if (!OUTLINED_FUNCTION_15_10(Context))
  {

    v12 = *(v5 + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v10 + v12);
  }

  v14 = v9 & ~v8;
  v15 = v10 + *(v1 + 20);
  v16 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {

    v16 = *(v16 + 20);
    sub_21700D194();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v15 + v16);
  }

  v18 = v0 + v14 + *(v6 + 24);

  v19 = v18 + *(type metadata accessor for SearchResultsPageIntent(0) + 20);
  v20 = type metadata accessor for ReferrerInfo(0);
  if (!OUTLINED_FUNCTION_15_10(v20))
  {
    v21 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v21))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v22 + 8))(v19, v16);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E624()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v2 = *(v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for SearchResultsPageIntent(0);
  v3 = OUTLINED_FUNCTION_19_64();
  if (!OUTLINED_FUNCTION_15_10(v3))
  {
    v4 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v4))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v5 + 8))(v0, v2);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E768()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_43_0();
  v2 = *(v1 + 64);

  type metadata accessor for SearchResultsPageIntent(0);
  v3 = OUTLINED_FUNCTION_19_64();
  if (!OUTLINED_FUNCTION_15_10(v3))
  {
    v4 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_9_110(v4))
    {
      OUTLINED_FUNCTION_2_11();
      (*(v5 + 8))(v0, v2);
    }

    OUTLINED_FUNCTION_12_92();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21676E8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 32)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21676E99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21676EAA4()
{

  return swift_deallocObject();
}

uint64_t sub_21676EAE4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216F1173C();
  *v0 = result;
  return result;
}

uint64_t sub_21676EB10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676EBA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676EC30()
{
  v1 = (type metadata accessor for SearchScopeBar(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
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

uint64_t sub_21676ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21676EE14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676EEFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD568, &qword_217071860);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD560, &qword_217071858);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD558, &qword_217071850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD5A0, &qword_217071880);
  OUTLINED_FUNCTION_9_112();
  sub_21669E098(v3, &qword_27CACD558, &qword_217071850, v4);
  OUTLINED_FUNCTION_8_118();
  sub_21669E098(v5, &qword_27CACD5A0, &qword_217071880, v6);
  OUTLINED_FUNCTION_4_97();
  OUTLINED_FUNCTION_57_0(v7, v8, v9, v10, v11, v12, v13, v14, v2);
  sub_2167B2E14();
  OUTLINED_FUNCTION_0_4();
  v30 = OUTLINED_FUNCTION_57_0(v15, v16, v17, v18, v19, v20, v21, v22, v1);
  return OUTLINED_FUNCTION_57_0(v30, MEMORY[0x277CDED18], v23, v24, v25, v26, v27, v28, v0);
}

uint64_t sub_21676F040@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CE99BE0]();
  *a1 = result;
  return result;
}

uint64_t sub_21676F070()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_21676F0A0()
{

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

uint64_t sub_21676F10C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD848, &qword_217071F00);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD840, &qword_217071EF8);
  sub_2170086D4();
  OUTLINED_FUNCTION_9_92();
  sub_21669E098(v2, &qword_27CACD840, &qword_217071EF8, v3);
  OUTLINED_FUNCTION_5_140();
  v19 = OUTLINED_FUNCTION_57_0(v4, v5, v6, v7, v8, v9, v10, v11, v1);
  return OUTLINED_FUNCTION_57_0(v19, MEMORY[0x277CDEB28], v12, v13, v14, v15, v16, v17, v0);
}

uint64_t sub_21676F204()
{

  return swift_deallocObject();
}

uint64_t sub_21676F2D4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA98, &qword_2170722C0);
  sub_2167B2E14();
  v1 = MEMORY[0x277CE14C0];
  sub_21669E098(&qword_27CACDAA0, &qword_27CACDA98, &qword_2170722C0, MEMORY[0x277CE14C0]);
  OUTLINED_FUNCTION_7_125();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAA8, &qword_2170722C8);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAB0, &unk_2170722D0);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_130();
  sub_21669E098(v2, &qword_27CACDAA8, &qword_2170722C8, v3);
  swift_getWitnessTable();
  sub_21669E098(&qword_27CACDAC0, &qword_27CACDAB0, &unk_2170722D0, v1);
  sub_217009F14();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_38_28();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21676F540(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21676F5D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_21676F668(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21676F674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSReplayPage(0);
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

uint64_t sub_21676F720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JSReplayPage(0);
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

uint64_t sub_21676F810(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21676F898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21676F978(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21676F9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21676FA90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_126_3();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_21676FB28()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_21676FBB8()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8, &qword_2170281B0);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    sub_217007884();
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_21676FC54()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8, &qword_2170281B0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21676FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8, &qword_2170281C0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0, &qword_2170281B8);
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_21676FDD4()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8, &qword_2170281C0);
    OUTLINED_FUNCTION_17();
    if (*(v2 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0, &qword_2170281B8);
    }
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21676FEB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_126_3();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_122_8();
    OUTLINED_FUNCTION_11_1();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_21676FF5C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_21676FFF8()
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8, &qword_2170281D0);
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_216770094()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8, &qword_2170281D0);
    OUTLINED_FUNCTION_20_44();
  }

  OUTLINED_FUNCTION_32_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216770174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_21677020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t _s18SwiftMusicProtocol16HorizontalLockupV13HeadlineColorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167702C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167702DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167703A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21677048C(unint64_t *a1, uint64_t a2, int *a3)
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
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2167705AC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167706D8()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_217007884();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_216770750(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_217007884();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2167707C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
      v15 = *(a3 + 32);
    }

    v9 = v3 + v15;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_1();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_2167708F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5] + 8) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
      v14 = a4[8];
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216770A10()
{
  OUTLINED_FUNCTION_4_3();
  if (v1 == v2)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    v5 = v0;
    sub_217007884();
    v6 = OUTLINED_FUNCTION_19_1(*(v5 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_216770A88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_217007884();
    v8 = OUTLINED_FUNCTION_19_1(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_216770B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_216770BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
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

uint64_t sub_216770C64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  v7 = sub_217007884();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_216770CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216770DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216770E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216770EE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_216770FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167710BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216771154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2167711F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578, &qword_217055270);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_217007884();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167712C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6578, &qword_217055270);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_217007884();
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167713EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_216771484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_216771528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_2167715F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2167716C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_217007884();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    v8 = v3 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
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

uint64_t sub_2167717A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  result = sub_217007884();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    v10 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216771880(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216771908(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167719E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80, &qword_217075CE0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      OUTLINED_FUNCTION_11_1();
      return OUTLINED_FUNCTION_96_9(v13);
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_216771AD4()
{
  OUTLINED_FUNCTION_18_46();
  v4 = v3;
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C80, &qword_217075CE0);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) != v2)
    {
      *(v0 + *(v1 + 24) + 8) = v4;
      return;
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_216771BBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return (v7 + 1);
  }
}

void sub_216771C58()
{
  OUTLINED_FUNCTION_18_46();
  v4 = v3;
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + *(v1 + 20)) = (v4 - 1);
  }
}

uint64_t sub_216771CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90, &qword_217075CF0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_216771DB8(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_18_46();
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90, &qword_217075CF0);
    }

    OUTLINED_FUNCTION_32_4();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_216771E90(uint64_t a1)
{
  result = sub_216F77B10(&qword_27CAB79F8, type metadata accessor for Empty, &unk_217072A50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216771EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Empty(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for BaseURLRequest(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216771F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Empty(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for BaseURLRequest(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216772044(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216772088(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_2167720FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    v9 = v3 + *(a3 + 28);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
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

void sub_2167721E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 8) = a2;
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    v9 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t sub_2167722B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216772338(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167723B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0, &qword_217077210);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8, &unk_21702A270);
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167724A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_86_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACEED0, &qword_217077210);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == a3)
    {
      v10 = v11;
      v13 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A8, &unk_21702A270);
      v13 = *(a4 + 24);
    }

    v9 = v4 + v13;
  }

  return __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t sub_2167725D4()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_217007884();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216772618()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_217007884();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_216772660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0, &unk_217072A00);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_217007884();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_216772704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0, &unk_217072A00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_217007884();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_2167727E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040, &qword_217077BD0);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a2)
  {
    v9 = OUTLINED_FUNCTION_20_44();
    goto LABEL_5;
  }

  v12 = *(v3 + *(a3 + 24) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 - 1;
  if (v13 < 0)
  {
    v13 = -1;
  }

  return (v13 + 1);
}

void sub_2167728E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACF040, &qword_217077BD0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return;
    }

    v11 = OUTLINED_FUNCTION_20_44();
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167729D4(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_217007884();
    v5 = OUTLINED_FUNCTION_20_44();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_216772A58(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217007884();
    v4 = OUTLINED_FUNCTION_20_44();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_216772AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007884();
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

uint64_t sub_216772BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217007884();
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

uint64_t sub_216772CA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217007884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216772D2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_217007884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216772EB8()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_223_1();
    v7 = v1 + *(v2 + 24);

    return __swift_getEnumTagSinglePayload(v7, v0, v6);
  }
}

void sub_216772F24()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_216772F9C()
{
  OUTLINED_FUNCTION_6_6();
  if (v1)
  {
    OUTLINED_FUNCTION_11_1();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_223_1();
    v4 = OUTLINED_FUNCTION_20_44();

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }
}

void sub_216773004()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_217007884();
    OUTLINED_FUNCTION_20_44();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_2167730D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v2, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_122_8();
    OUTLINED_FUNCTION_11_1();
    return OUTLINED_FUNCTION_96_9(v7);
  }
}

void sub_21677316C()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_147_0();
    *(v7 + 8) = v0;
  }
}

uint64_t sub_2167731FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      OUTLINED_FUNCTION_11_1();
      return OUTLINED_FUNCTION_96_9(v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538, &unk_217054E60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = *(a3 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
      v14 = *(a3 + 40);
    }

    v9 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216773314()
{
  OUTLINED_FUNCTION_14_8();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_86_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_147_0();
      *(v3 + 8) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6538, &unk_217054E60);
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
    }
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_216773420()
{
  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    OUTLINED_FUNCTION_11_1();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_223_1();
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v0)
    {
      v8 = v6;
      v9 = *(v2 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88, &unk_217072A10);
      v9 = *(v2 + 28);
    }

    return __swift_getEnumTagSinglePayload(v1 + v9, v0, v8);
  }
}

void sub_2167734D8()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v3 = v2;
    sub_217007884();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88, &unk_217072A10);
    }

    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167735A0()
{
  OUTLINED_FUNCTION_92();
  sub_217007884();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88, &unk_217072A10);
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}