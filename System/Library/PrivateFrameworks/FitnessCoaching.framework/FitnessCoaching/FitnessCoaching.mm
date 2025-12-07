void *sub_227787A98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227787B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227787C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227787DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2277E2104();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227787E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2277E2104();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

__n128 sub_227787F38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_227787F4C()
{
  v1 = sub_2277E23A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2277E1E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_2277880BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_227788174(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227788328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227788488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227788540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2277885EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2277886A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788750()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788788()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277887C0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22778884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_227788920@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v4 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2277889B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_227788A70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2277E2104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227788B28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788B64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227788B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227788C74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227788CAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227788CEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227788D2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227788D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227788E14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_227788EC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227788F64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227789010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227789134(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E1E84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2277891E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E1E84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22778928C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277892C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22778931C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2277E2104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22778941C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2277E2104();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227789528(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2277895D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2277896C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2277E2104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227789770(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2277E2104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227789894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2277E2104();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22778990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2277E2104();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t FirstGlanceClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init(machServiceName:)(0xD00000000000001ALL, 0x80000002277E8AC0);
  a1[3] = v2;
  a1[4] = &off_283AE4CC0;
  *a1 = result;
  return result;
}

uint64_t sub_227789A20()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_227789ABC;

  return sub_2277B9FC8();
}

uint64_t sub_227789ABC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227789BD0()
{
  v1 = __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = *v1;
  *(v0 + 24) = *v1;

  return MEMORY[0x2822009F8](sub_227789C40, v2, 0);
}

uint64_t sub_227789C40()
{
  v1 = *(v0 + 24);
  if (*(v1 + 128) != 2)
  {
    *(v1 + 128) = 2;
    [*(v1 + 112) setInterruptionHandler_];
    [*(v1 + 112) setInvalidationHandler_];
    [*(v1 + 112) invalidate];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FirstGlanceClient.requestFirstGlanceContent()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227789D08, 0, 0);
}

uint64_t sub_227789D08()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227789DC4;
  v2 = *(v0 + 16);

  return sub_227789EB8(v2, 2);
}

uint64_t sub_227789DC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227789EB8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_227789EDC, v2, 0);
}

uint64_t sub_227789EDC()
{
  v1 = sub_2277B9C34();
  v0[23] = v1;
  v0[24] = 0;
  if (v1)
  {
    v3 = v0[21];
    v4 = v1;
    swift_unknownObjectRetain();
    v5 = sub_2277E1F24();
    v0[25] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22778A0B0;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE898, &qword_2277E3A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22778A934;
    v0[13] = &block_descriptor_29;
    v0[14] = v6;
    [v4 transportRequest:v3 data:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_2277CC164(0, 0xF000000000000000, v0[20]);
    swift_unknownObjectRelease();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22778A0B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_22778A280;
  }

  else
  {
    v4 = sub_22778A1D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22778A1D0()
{
  v1 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  sub_2277CC164(v3, v2, v0[20]);
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_22778A280()
{
  v1 = *(v0 + 200);
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v2 = *(v0 + 8);

  return v2();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22778A314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22778A35C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22778A474(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_22778A494, v1, 0);
}

uint64_t sub_22778A494()
{
  v1 = sub_2277B9C34();
  v0[22] = v1;
  v0[23] = 0;
  if (v1)
  {
    v2 = v0[20];
    v3 = v1;
    swift_unknownObjectRetain();
    v4 = sub_2277E1F24();
    v0[24] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22778A6AC;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE898, &qword_2277E3A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22778A934;
    v0[13] = &block_descriptor;
    v0[14] = v5;
    [v3 transportRequest:v2 data:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = sub_2277CD8A0(0, 0xF000000000000000);
    v8 = v7;
    v9 = v6;
    swift_unknownObjectRelease();
    v10 = v0[1];

    return v10(v9, v8 & 1);
  }
}

uint64_t sub_22778A6AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_22778A8B4;
  }

  else
  {
    v4 = sub_22778A7CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22778A7CC()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v4 = v0[23];
  v5 = sub_2277CD8A0(v3, v2);
  if (v4)
  {
    swift_unknownObjectRelease();
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v6;
    v10 = v5;
    swift_unknownObjectRelease();
    v11 = v0[1];

    return v11(v10, v9 & 1);
  }
}

uint64_t sub_22778A8B4()
{
  v1 = *(v0 + 192);
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22778A934(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_2277E1F34();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

BOOL sub_22778AA30(void *a1, uint64_t *a2)
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

uint64_t sub_22778AA88()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t sub_22778AAD0(uint64_t a1)
{
  v2 = *v1;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v2);
  return sub_2277E2A44();
}

uint64_t sub_22778AB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22778AD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22778AE20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22778AE40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_22778AE7C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t FirstGlanceWorkoutSummationProtobuf.modality.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_22778B3E8(v1 + *(GlanceWorkoutSummationProtobuf + 32), v5);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v8 = *(*(GlanceModalityProtobuf - 8) + 48);
  if (v8(v5, 1, GlanceModalityProtobuf) != 1)
  {
    return sub_22778B458(v5, a1);
  }

  *a1 = 0;
  sub_2277E20F4();
  v9 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&a1[v9], 1, 1, GlanceModalityTypeProtobuf);
  result = (v8)(v5, 1, GlanceModalityProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v5, &qword_27D7CE928, &unk_2277E3A60);
  }

  return result;
}

uint64_t sub_22778B06C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_22778B3E8(a1 + *(GlanceWorkoutSummationProtobuf + 32), v6);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v9 = *(*(GlanceModalityProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceModalityProtobuf) != 1)
  {
    return sub_22778B458(v6, a2);
  }

  *a2 = 0;
  sub_2277E20F4();
  v10 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&a2[v10], 1, 1, GlanceModalityTypeProtobuf);
  result = (v9)(v6, 1, GlanceModalityProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CE928, &unk_2277E3A60);
  }

  return result;
}

uint64_t sub_22778B1EC(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v5 = *(GlanceModalityProtobuf - 8);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778B808(a1, v7);
  v8 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 32);
  sub_22778CE70(a2 + v8, &qword_27D7CE928, &unk_2277E3A60);
  sub_22778B458(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, GlanceModalityProtobuf);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.modality.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 32);
  sub_22778CE70(v1 + v3, &qword_27D7CE928, &unk_2277E3A60);
  sub_22778B458(a1, v1 + v3);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v5 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceModalityProtobuf);
}

uint64_t type metadata accessor for FirstGlanceWorkoutSummationProtobuf(uint64_t a1)
{
  result = qword_27D7CE958;
  if (!qword_27D7CE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22778B3E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22778B458(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  (*(*(GlanceModalityProtobuf - 8) + 32))(a2, a1, GlanceModalityProtobuf);
  return a2;
}

void (*FirstGlanceWorkoutSummationProtobuf.modality.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v5[2] = GlanceModalityProtobuf;
  v10 = *(GlanceModalityProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 32);
  *(v5 + 12) = v15;
  sub_22778B3E8(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceModalityProtobuf) == 1)
  {
    *v14 = 0;
    sub_2277E20F4();
    v17 = *(GlanceModalityProtobuf + 24);
    GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
    (*(*(GlanceModalityTypeProtobuf - 8) + 56))(&v14[v17], 1, 1, GlanceModalityTypeProtobuf);
    if (v16(v8, 1, GlanceModalityProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CE928, &unk_2277E3A60);
    }
  }

  else
  {
    sub_22778B458(v8, v14);
  }

  return sub_22778B6F0;
}

void sub_22778B6F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22778B808((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CE928, &unk_2277E3A60);
    sub_22778B458(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22778B86C(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CE928, &unk_2277E3A60);
    sub_22778B458(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22778B808(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  (*(*(GlanceModalityProtobuf - 8) + 16))(a2, a1, GlanceModalityProtobuf);
  return a2;
}

uint64_t sub_22778B86C(uint64_t a1)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  (*(*(GlanceModalityProtobuf - 8) + 8))(a1, GlanceModalityProtobuf);
  return a1;
}

BOOL FirstGlanceWorkoutSummationProtobuf.hasModality.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_22778B3E8(v0 + *(GlanceWorkoutSummationProtobuf + 32), v3);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v6 = (*(*(GlanceModalityProtobuf - 8) + 48))(v3, 1, GlanceModalityProtobuf) != 1;
  sub_22778CE70(v3, &qword_27D7CE928, &unk_2277E3A60);
  return v6;
}

Swift::Void __swiftcall FirstGlanceWorkoutSummationProtobuf.clearModality()()
{
  v1 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 32);
  sub_22778CE70(v0 + v1, &qword_27D7CE928, &unk_2277E3A60);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v3 = *(*(GlanceModalityProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceModalityProtobuf);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FirstGlanceWorkoutSummationProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2277E20F4();
  v3 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v5 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v5(a1 + v3, 1, 1, GlanceModalityProtobuf);
}

uint64_t sub_22778BCC0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE910);
  __swift_project_value_buffer(v0, qword_27D7CE910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3A50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modality";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalActiveEnergy";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalDistance";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "workoutCount";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceWorkoutSummationProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CE910);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FirstGlanceWorkoutSummationProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2277E2164();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_2277E21B4();
      }
    }

    else if (result == 1)
    {
      sub_22778C0B0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      sub_2277E21E4();
    }
  }
}

uint64_t sub_22778C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_22778CED0(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf, &protocol conformance descriptor for FirstGlanceModalityProtobuf);
  return sub_2277E2214();
}

uint64_t FirstGlanceWorkoutSummationProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v10 = *(GlanceModalityProtobuf - 8);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_22778B3E8(v5 + *(GlanceWorkoutSummationProtobuf + 32), v8);
  if ((*(v10 + 48))(v8, 1, GlanceModalityProtobuf) == 1)
  {
    sub_22778CE70(v8, &qword_27D7CE928, &unk_2277E3A60);
  }

  else
  {
    sub_22778B458(v8, v12);
    sub_22778CED0(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf, &protocol conformance descriptor for FirstGlanceModalityProtobuf);
    sub_2277E2314();
    result = sub_22778B86C(v12);
    if (v4)
    {
      return result;
    }
  }

  if (*v5 == 0.0 || (result = sub_2277E22E4(), !v4))
  {
    if (*(v5 + 8) == 0.0 || (result = sub_2277E22E4(), !v4))
    {
      if (!*(v5 + 16))
      {
        return sub_2277E20E4();
      }

      result = sub_2277E22D4();
      if (!v4)
      {
        return sub_2277E20E4();
      }
    }
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_22778CED0(&qword_27D7CE938, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_2277E20F4();
  v4 = *(a1 + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v6 = *(*(GlanceModalityProtobuf - 8) + 56);

  return v6(a2 + v4, 1, 1, GlanceModalityProtobuf);
}

uint64_t sub_22778C514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22778C588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22778C654(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778CED0(&qword_27D7CE970, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22778C6D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CE910);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22778C77C(uint64_t a1)
{
  v2 = sub_22778CED0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22778C7E8(uint64_t a1, uint64_t a2)
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778C840(uint64_t a1, uint64_t a2)
{
  sub_22778CED0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22778C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching35FirstGlanceWorkoutSummationProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  v5 = *(GlanceModalityProtobuf - 8);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE978, &qword_2277E3C28);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0) + 32);
  v16 = *(v12 + 56);
  sub_22778B3E8(a1 + v15, v14);
  sub_22778B3E8(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, GlanceModalityProtobuf) != 1)
  {
    sub_22778B3E8(v14, v10);
    if (v17(&v14[v16], 1, GlanceModalityProtobuf) != 1)
    {
      sub_22778B458(&v14[v16], v7);
      GlanceModalityProtobufV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching27FirstGlanceModalityProtobufV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_22778B86C(v7);
      sub_22778B86C(v10);
      sub_22778CE70(v14, &qword_27D7CE928, &unk_2277E3A60);
      if (GlanceModalityProtobufV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v19 = 0;
      return v19 & 1;
    }

    sub_22778B86C(v10);
LABEL_6:
    sub_22778CE70(v14, &qword_27D7CE978, &qword_2277E3C28);
    goto LABEL_12;
  }

  if (v17(&v14[v16], 1, GlanceModalityProtobuf) != 1)
  {
    goto LABEL_6;
  }

  sub_22778CE70(v14, &qword_27D7CE928, &unk_2277E3A60);
LABEL_8:
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  sub_2277E2104();
  sub_22778CED0(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_2277E2404();
  return v19 & 1;
}

void sub_22778CD74(uint64_t a1)
{
  sub_2277E2104();
  if (v1 <= 0x3F)
  {
    sub_22778CE18(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22778CE18(uint64_t a1)
{
  if (!qword_27D7CE968)
  {
    type metadata accessor for FirstGlanceModalityProtobuf(255);
    v1 = sub_2277E2774();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7CE968);
    }
  }
}

uint64_t sub_22778CE70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22778CED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void FirstGlanceType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeeklySummaryInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceType = type metadata accessor for FirstGlanceType(0);
  MEMORY[0x28223BE20](GlanceType);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(v2, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48)];
      v25 = *v24;
      v26 = v24[8];
      sub_22778E184(v9, v6);
      MEMORY[0x22AA9BBC0](1);
      sub_22778D4C0(a1, *v6);
      sub_2277E1E84();
      sub_22778E284(&qword_27D7CE9A0, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      sub_2277E23F4();
      sub_22778D4C0(a1, *(v6 + *(v4 + 24)));
      MEMORY[0x22AA9BBC0](*(v6 + *(v4 + 28)));
      if (v26 == 1)
      {
        sub_2277E2A24();
      }

      else
      {
        sub_2277E2A24();
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x22AA9BBE0](v28);
      }

      sub_22778E668(v6, type metadata accessor for WeeklySummaryInfo);
      return;
    case 2u:
      v19 = *v9;
      v20 = *(v9 + 1);
      v21 = 4;
      goto LABEL_13;
    case 3u:
      v19 = *v9;
      v20 = *(v9 + 1);
      v21 = 5;
LABEL_13:
      MEMORY[0x22AA9BBC0](v21);
      sub_2277E1F44();
      sub_2277E2484();
      sub_2277E2A24();
      sub_22778E130(v19, v20);

      return;
    case 4u:
      v17 = *v9;
      v18 = 6;
      goto LABEL_26;
    case 5u:
      v17 = *v9;
      v18 = 7;
      goto LABEL_26;
    case 6u:
      v17 = *v9;
      v22 = *(v9 + 1);
      v23 = 8;
      goto LABEL_21;
    case 7u:
      v17 = *v9;
      v22 = *(v9 + 1);
      v23 = 9;
LABEL_21:
      MEMORY[0x22AA9BBC0](v23);
      sub_2277E2764();
      v27 = 0.0;
      if (v22 != 0.0)
      {
        v27 = v22;
      }

      MEMORY[0x22AA9BBE0](*&v27);
      goto LABEL_27;
    case 8u:
      v17 = *v9;
      v18 = 10;
      goto LABEL_26;
    case 9u:
      v17 = *v9;
      v18 = 11;
      goto LABEL_26;
    case 0xAu:
      v17 = *v9;
      v18 = 12;
LABEL_26:
      MEMORY[0x22AA9BBC0](v18);
      sub_2277E2764();
LABEL_27:

      return;
    case 0xBu:
      v15 = *(v9 + 4);
      v16 = *(v9 + 1);
      v30 = *v9;
      v29 = v16;
      MEMORY[0x22AA9BBC0](13);
      v36 = v30;
      v37 = v29;
      *&v38 = v15;
      FirstGlanceWorkoutSummationType.hash(into:)();
      return;
    case 0xCu:
      v14 = 2;
      goto LABEL_19;
    case 0xDu:
      v14 = 3;
      goto LABEL_19;
    case 0xEu:
      v14 = 14;
      goto LABEL_19;
    case 0xFu:
      v14 = 15;
LABEL_19:
      MEMORY[0x22AA9BBC0](v14);
      break;
    default:
      v10 = *(v9 + 3);
      v38 = *(v9 + 2);
      v39 = v10;
      v40 = *(v9 + 4);
      v11 = *(v9 + 1);
      v36 = *v9;
      v37 = v11;
      v12 = *(v9 + 10);
      MEMORY[0x22AA9BBC0](0);
      v33 = v38;
      v34 = v39;
      v35 = v40;
      v31 = v36;
      v32 = v37;
      FirstGlanceWeeklySummary.hash(into:)(a1);
      sub_22778E1E8(&v36);
      v13 = 0.0;
      if (v12 != 0.0)
      {
        v13 = v12;
      }

      MEMORY[0x22AA9BBE0](*&v13);
      break;
  }
}

uint64_t FirstGlanceType.hashValue.getter()
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_22778D3D4()
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_22778D418(uint64_t a1)
{
  sub_2277E2A04();
  FirstGlanceType.hash(into:)(v2);
  return sub_2277E2A44();
}

uint64_t sub_22778D458(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA9BBC0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x22AA9BBE0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_22778D4C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2277E28E4();
    MEMORY[0x22AA9BBC0](v8);
    v3 = sub_2277E28E4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AA9BBC0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AA9B9D0](i, a2);
      sub_2277E2764();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_2277E2764();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(void *a1, char *a2)
{
  v125 = a1;
  v126 = a2;
  v117 = type metadata accessor for WeeklySummaryInfo(0);
  MEMORY[0x28223BE20](v117);
  v118 = (&v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceType = type metadata accessor for FirstGlanceType(0);
  v4 = MEMORY[0x28223BE20](GlanceType);
  v123 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v122 = (&v117 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v121 = (&v117 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v119 = (&v117 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v117 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v117 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v117 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v117 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v117 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v124 = (&v117 - v30);
  MEMORY[0x28223BE20](v29);
  v32 = &v117 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE9B8, &qword_2277E3D28);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v117 - v35;
  v37 = &v117 + *(v34 + 56) - v35;
  sub_22778E0CC(v125, &v117 - v35);
  v125 = v37;
  sub_22778E0CC(v126, v37);
  v126 = v36;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = v126;
      v87 = v124;
      sub_22778E0CC(v126, v124);
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48);
      v89 = *(v87 + v88);
      v90 = *(v87 + v88 + 8);
      v91 = v125;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22778E668(v87, type metadata accessor for WeeklySummaryInfo);
        goto LABEL_56;
      }

      v92 = *(v91 + v88);
      v93 = *(v91 + v88 + 8);
      v94 = v91;
      v95 = v118;
      sub_22778E184(v94, v118);
      if ((sub_2277D7210(*v87, *v95) & 1) == 0 || (sub_2277E1E34() & 1) == 0 || (sub_2277D7224(*(v87 + *(v117 + 24)), *(v95 + *(v117 + 24))) & 1) == 0 || *(v87 + *(v117 + 28)) != *(v95 + *(v117 + 28)))
      {
        sub_22778E668(v95, type metadata accessor for WeeklySummaryInfo);
        sub_22778E668(v87, type metadata accessor for WeeklySummaryInfo);
        goto LABEL_77;
      }

      sub_22778E668(v95, type metadata accessor for WeeklySummaryInfo);
      sub_22778E668(v87, type metadata accessor for WeeklySummaryInfo);
      if (v90)
      {
        if (v93)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v89 == v92)
        {
          v116 = v93;
        }

        else
        {
          v116 = 1;
        }

        if ((v116 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_77;
    case 2u:
      v38 = v126;
      sub_22778E0CC(v126, v28);
      v55 = *v28;
      v56 = *(v28 + 1);
      v58 = *(v28 + 2);
      v57 = *(v28 + 3);
      v59 = v28[32];
      v60 = v125;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_22778E130(v55, v56);

        goto LABEL_56;
      }

      v62 = *v60;
      v61 = v60[1];
      v63 = v60;
      v65 = v60[2];
      v64 = v60[3];
      LODWORD(v125) = *(v63 + 32);
      if (!sub_227790458(v55, v56, v62, v61))
      {
        sub_22778E130(v62, v61);

        v112 = v55;
        v113 = v56;
        goto LABEL_67;
      }

      if (v58 != v65 || v57 != v64)
      {
        v67 = sub_2277E2984();
        sub_22778E130(v62, v61);

        v68 = v55;
        v69 = v56;
        goto LABEL_30;
      }

      sub_22778E130(v62, v61);

      v114 = v55;
      v115 = v56;
      goto LABEL_71;
    case 3u:
      sub_22778E0CC(v126, v25);
      v72 = *v25;
      v71 = *(v25 + 1);
      v74 = *(v25 + 2);
      v73 = *(v25 + 3);
      v59 = v25[32];
      v75 = v125;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22778E130(v72, v71);

        v38 = v126;
        goto LABEL_56;
      }

      v77 = *v75;
      v76 = v75[1];
      v78 = v75;
      v80 = v75[2];
      v79 = v75[3];
      LODWORD(v125) = *(v78 + 32);
      if (!sub_227790458(v72, v71, v77, v76))
      {
        sub_22778E130(v77, v76);

        v112 = v72;
        v113 = v71;
LABEL_67:
        sub_22778E130(v112, v113);

        goto LABEL_68;
      }

      if (v74 == v80 && v73 == v79)
      {
        sub_22778E130(v77, v76);

        v114 = v72;
        v115 = v71;
LABEL_71:
        sub_22778E130(v114, v115);

        if (v59 != v125)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v67 = sub_2277E2984();
        sub_22778E130(v77, v76);

        v68 = v72;
        v69 = v71;
LABEL_30:
        sub_22778E130(v68, v69);

        if (v67 & 1) == 0 || ((v59 ^ v125))
        {
LABEL_68:
          sub_22778E668(v126, type metadata accessor for FirstGlanceType);
          goto LABEL_57;
        }
      }

      v97 = v126;
LABEL_47:
      sub_22778E668(v97, type metadata accessor for FirstGlanceType);
      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = 1;
      return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
    case 4u:
      v38 = v126;
      sub_22778E0CC(v126, v22);
      v51 = *v22;
      v52 = v125;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 5u:
      v38 = v126;
      sub_22778E0CC(v126, v19);
      v51 = *v19;
      v52 = v125;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    case 6u:
      v38 = v126;
      sub_22778E0CC(v126, v16);
      v51 = *v16;
      v98 = v125;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_55;
      }

      v84 = v16[1];
      v85 = *v98;
      v86 = v98[1];
      goto LABEL_50;
    case 7u:
      v38 = v126;
      v82 = v120;
      sub_22778E0CC(v126, v120);
      v51 = *v82;
      v83 = v125;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_55;
      }

      v84 = *(v82 + 8);
      v85 = *v83;
      v86 = v83[1];
LABEL_50:
      sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
      v99 = sub_2277E2754();

      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = v99 & (v84 == v86);
      goto LABEL_53;
    case 8u:
      v38 = v126;
      v102 = v119;
      sub_22778E0CC(v126, v119);
      v51 = *v102;
      v52 = v125;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    case 9u:
      v38 = v126;
      v54 = v121;
      sub_22778E0CC(v126, v121);
      v51 = *v54;
      v52 = v125;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    case 0xAu:
      v38 = v126;
      v100 = v122;
      sub_22778E0CC(v126, v122);
      v51 = *v100;
      v52 = v125;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
LABEL_52:
        v101 = *v52;
        sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
        GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = sub_2277E2754();

        goto LABEL_53;
      }

LABEL_55:

      goto LABEL_56;
    case 0xBu:
      v38 = v126;
      v44 = v123;
      sub_22778E0CC(v126, v123);
      v45 = v125;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_56;
      }

      v46 = *(v44 + 32);
      v47 = v45[4];
      v48 = *(v44 + 16);
      v134 = *v44;
      v135 = v48;
      *&v136 = v46;
      v49 = *(v45 + 1);
      v129 = *v45;
      v130 = v49;
      *&v131 = v47;
      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching31FirstGlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0(&v134, &v129);
      goto LABEL_53;
    case 0xCu:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v126;
      if (EnumCaseMultiPayload == 12)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xDu:
      v96 = swift_getEnumCaseMultiPayload();
      v38 = v126;
      if (v96 == 13)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xEu:
      v43 = swift_getEnumCaseMultiPayload();
      v38 = v126;
      if (v43 == 14)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 0xFu:
      v70 = swift_getEnumCaseMultiPayload();
      v38 = v126;
      if (v70 != 15)
      {
        goto LABEL_56;
      }

LABEL_46:
      v97 = v38;
      goto LABEL_47;
    default:
      v38 = v126;
      sub_22778E0CC(v126, v32);
      v39 = *(v32 + 3);
      v136 = *(v32 + 2);
      v137 = v39;
      v138 = *(v32 + 4);
      v40 = *(v32 + 1);
      v134 = *v32;
      v135 = v40;
      v41 = *(v32 + 10);
      v42 = v125;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22778E1E8(&v134);
LABEL_56:
        sub_22778E600(v38);
        goto LABEL_57;
      }

      v104 = *(v42 + 1);
      v105 = *(v42 + 3);
      v131 = *(v42 + 2);
      v132 = v105;
      v106 = *(v42 + 3);
      v133 = *(v42 + 4);
      v107 = *(v42 + 1);
      v129 = *v42;
      v130 = v107;
      v108 = *(v32 + 3);
      v128[2] = *(v32 + 2);
      v128[3] = v108;
      v128[4] = *(v32 + 4);
      v109 = *(v32 + 1);
      v128[0] = *v32;
      v128[1] = v109;
      v127[2] = v131;
      v127[3] = v106;
      v127[4] = *(v42 + 4);
      v110 = *(v42 + 10);
      v127[0] = v129;
      v127[1] = v104;
      GlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching24FirstGlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0(v128, v127);
      sub_22778E1E8(&v129);
      sub_22778E1E8(&v134);
      if (!GlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0)
      {
LABEL_77:
        sub_22778E668(v38, type metadata accessor for FirstGlanceType);
LABEL_57:
        GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = 0;
        return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
      }

      GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 = v41 == v110;
LABEL_53:
      sub_22778E668(v38, type metadata accessor for FirstGlanceType);
      return GlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t type metadata accessor for FirstGlanceType(uint64_t a1)
{
  result = qword_2813BCB48;
  if (!qword_2813BCB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22778E0CC(uint64_t a1, uint64_t a2)
{
  GlanceType = type metadata accessor for FirstGlanceType(0);
  (*(*(GlanceType - 8) + 16))(a2, a1, GlanceType);
  return a2;
}

uint64_t sub_22778E130(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22778E184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeeklySummaryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22778E284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22778E31C(uint64_t a1)
{
  sub_22778E3EC();
  if (v1 <= 0x3F)
  {
    sub_22778E450(319);
    if (v2 <= 0x3F)
    {
      sub_22778E518();
      if (v3 <= 0x3F)
      {
        sub_22778E548();
        if (v4 <= 0x3F)
        {
          sub_22778E5A0();
          if (v5 <= 0x3F)
          {
            sub_22778E5D0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22778E3EC()
{
  if (!qword_2813BC960)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813BC960);
    }
  }
}

void sub_22778E450(uint64_t a1)
{
  if (!qword_2813BCAA8[0])
  {
    type metadata accessor for WeeklySummaryInfo(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CE9B0, &qword_2277E3CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_2813BCAA8);
    }
  }
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

ValueMetadata *sub_22778E518()
{
  result = qword_2813BC828[0];
  if (!qword_2813BC828[0])
  {
    result = &type metadata for FirstGlanceAchievementInfo;
    atomic_store(&type metadata for FirstGlanceAchievementInfo, qword_2813BC828);
  }

  return result;
}

void sub_22778E548()
{
  if (!qword_2813BC550)
  {
    v0 = sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
    if (!v1)
    {
      atomic_store(v0, &qword_2813BC550);
    }
  }
}

ValueMetadata *sub_22778E5A0()
{
  result = qword_2813BC820;
  if (!qword_2813BC820)
  {
    result = &type metadata for FirstGlanceYesterdayWorkout;
    atomic_store(&type metadata for FirstGlanceYesterdayWorkout, &qword_2813BC820);
  }

  return result;
}

ValueMetadata *sub_22778E5D0()
{
  result = qword_2813BC818;
  if (!qword_2813BC818)
  {
    result = &type metadata for FirstGlanceWorkoutSummationType;
    atomic_store(&type metadata for FirstGlanceWorkoutSummationType, &qword_2813BC818);
  }

  return result;
}

uint64_t sub_22778E600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE9B8, &qword_2277E3D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22778E668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22778E6C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t GoalProgressError.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

uint64_t sub_22778E790()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

uint64_t sub_22778E7FC(uint64_t a1)
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_22778E840()
{
  result = qword_27D7CE9C0;
  if (!qword_27D7CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE9C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GoalProgressError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GoalProgressError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void FirstGlanceModalityTypeProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FirstGlanceModalityTypeProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceModalityTypeProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FirstGlanceModalityTypeProtobuf(uint64_t a1)
{
  result = qword_27D7CEA50;
  if (!qword_27D7CEA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityTypeProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t FirstGlanceModalityTypeProtobuf.ModalityType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22778EBF0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22778EC10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22778EC2C(uint64_t a1, uint64_t a2)
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778EC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778F1D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22778ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2277E2A04();
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t FirstGlanceModalityTypeProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  return sub_2277E20F4();
}

uint64_t static FirstGlanceModalityTypeProtobuf.ModalityType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CE9C8 = a1;
}

uint64_t sub_22778EE80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CE9C8;
}

uint64_t sub_22778EEEC()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE9D0);
  __swift_project_value_buffer(v0, qword_27D7CE9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2277E3E40;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2277E2324();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_2277E2334();
}

uint64_t FirstGlanceModalityTypeProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2277E2164();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22778F1D0();
        sub_2277E2184();
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22778F1D0(), result = sub_2277E22A4(), !v4))
  {
    type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
    return sub_2277E20E4();
  }

  return result;
}

unint64_t sub_22778F1D0()
{
  result = qword_27D7CEA00;
  if (!qword_27D7CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA00);
  }

  return result;
}

uint64_t FirstGlanceModalityTypeProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  sub_22778FE10(&qword_27D7CEA08, type metadata accessor for FirstGlanceModalityTypeProtobuf, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22778F2B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return sub_2277E20F4();
}

uint64_t sub_22778F2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22778F36C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22778F434(uint64_t a1, uint64_t a2)
{
  v4 = sub_22778FE10(&qword_27D7CEA60, type metadata accessor for FirstGlanceModalityTypeProtobuf, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22778F4D4(uint64_t a1)
{
  v2 = sub_22778FE10(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22778F540(uint64_t a1, uint64_t a2)
{
  sub_22778FE10(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22778F5C0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CE9E8);
  __swift_project_value_buffer(v0, qword_27D7CE9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "standard";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "indoor";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "outdoor";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t sub_22778F7F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2277E2344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22778F8B0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2277E2344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t _s15FitnessCoaching31FirstGlanceModalityTypeProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
      sub_2277E2104();
      sub_22778FE10(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_2277E2404() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_22778FA30()
{
  result = qword_27D7CEA10;
  if (!qword_27D7CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA10);
  }

  return result;
}

unint64_t sub_22778FA88()
{
  result = qword_27D7CEA18;
  if (!qword_27D7CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA18);
  }

  return result;
}

unint64_t sub_22778FAE0()
{
  result = qword_27D7CEA20;
  if (!qword_27D7CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA20);
  }

  return result;
}

unint64_t sub_22778FB38()
{
  result = qword_27D7CEA28;
  if (!qword_27D7CEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEA30, &qword_2277E3F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA28);
  }

  return result;
}

uint64_t sub_22778FCE4(uint64_t a1)
{
  result = sub_2277E2104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FirstGlanceModalityTypeProtobuf.ModalityType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FirstGlanceModalityTypeProtobuf.ModalityType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22778FDC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22778FDE0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22778FE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FirstGlanceAchievementInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_2277E2984() & 1) != 0))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t FirstGlanceAchievementInfo.achievementData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceAchievementInfo.localizationKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FirstGlanceAchievementInfo.init(achievementData:localizationKey:shouldSuggestRecovery:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t FirstGlanceAchievementInfo.hash(into:)(uint64_t a1)
{
  sub_2277E1F44();
  sub_2277E2484();
  return sub_2277E2A24();
}

uint64_t FirstGlanceAchievementInfo.hashValue.getter()
{
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_227790034()
{
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_2277900B4(uint64_t a1)
{
  sub_2277E1F44();
  sub_2277E2484();
  return sub_2277E2A24();
}

uint64_t sub_227790108(uint64_t a1)
{
  sub_2277E2A04();
  sub_2277E1F44();
  sub_2277E2484();
  sub_2277E2A24();
  return sub_2277E2A44();
}

uint64_t sub_227790184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_2277E2984() & 1) != 0))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227790210(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2277903A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22778E130(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2277D8278(v13, a3, a4, &v12);
  v10 = v4;
  sub_22778E130(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2277903A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2277E1E94();
  v11 = result;
  if (result)
  {
    result = sub_2277E1EB4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2277E1EA4();
  sub_2277D8278(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_227790458(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2277905C0(a3, a4);
          return sub_227790210(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_2277905C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_227790618()
{
  result = qword_27D7CEA68;
  if (!qword_27D7CEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
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

uint64_t sub_22779069C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2277906E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227790794()
{
  result = qword_27D7CEA70;
  if (!qword_27D7CEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA70);
  }

  return result;
}

unint64_t sub_2277907EC()
{
  result = qword_27D7CEA78;
  if (!qword_27D7CEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA78);
  }

  return result;
}

unint64_t sub_227790844()
{
  result = qword_2813BC680;
  if (!qword_2813BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC680);
  }

  return result;
}

unint64_t sub_22779089C()
{
  result = qword_2813BC678;
  if (!qword_2813BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC678);
  }

  return result;
}

void *sub_227790918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_227790944@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for Features(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t FirstGlanceModality.protobuf()()
{
  type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_2277912B8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf, &protocol conformance descriptor for FirstGlanceModalityProtobuf);
  return sub_2277E2274();
}

uint64_t sub_227790B18(char *a1, unint64_t a2, char a3)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v7 = *(GlanceModalityTypeProtobuf - 8);
  result = MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 31)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    MEMORY[0x28223BE20](result);
    *(&v12 - 16) = a3;
    sub_2277912B8(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);
    sub_2277E2274();
    v11 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 24);
    sub_227790FBC(&a1[v11]);
    sub_2277910D8(v10, &a1[v11]);
    return (*(v7 + 56))(&a1[v11], 0, 1, GlanceModalityTypeProtobuf);
  }

  return result;
}

uint64_t FirstGlanceModality.init(_:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v8 = *(GlanceModalityTypeProtobuf - 8);
  result = MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v19 = a2;
    GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
    sub_227790F4C(a1 + *(GlanceModalityProtobuf + 24), v6);
    v14 = *(v8 + 48);
    if (v14(v6, 1, GlanceModalityTypeProtobuf) == 1)
    {
      *v11 = 0;
      v11[8] = 1;
      sub_2277E20F4();
      if (v14(v6, 1, GlanceModalityTypeProtobuf) != 1)
      {
        sub_227790FBC(v6);
      }
    }

    else
    {
      sub_2277910D8(v6, v11);
    }

    if (v11[8] == 1)
    {
      v15 = *v11;
      sub_227791078(a1, type metadata accessor for FirstGlanceModalityProtobuf);
      result = sub_227791078(v11, type metadata accessor for FirstGlanceModalityTypeProtobuf);
      v16 = v19;
      *v19 = v12;
      *(v16 + 8) = v15;
    }

    else
    {
      sub_227791024();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
      sub_227791078(a1, type metadata accessor for FirstGlanceModalityProtobuf);
      return sub_227791078(v11, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    }
  }

  return result;
}

uint64_t sub_227790F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227790FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227791024()
{
  result = qword_27D7CEA88;
  if (!qword_27D7CEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEA88);
  }

  return result;
}

uint64_t sub_227791078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277910D8(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  (*(*(GlanceModalityTypeProtobuf - 8) + 32))(a2, a1, GlanceModalityTypeProtobuf);
  return a2;
}

uint64_t sub_2277911CC()
{
  type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_2277912B8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf, &protocol conformance descriptor for FirstGlanceModalityProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277912B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TestProperty.init(_:fallback:suiteName:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  v11 = type metadata accessor for TestProperty(0, a5, a6, a4);
  v12 = *(a5 - 8);
  (*(v12 + 16))(&a7[*(v11 + 36)], a2, a5);
  if (a4)
  {
    v13 = sub_2277E2414();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v14)
  {
    v14 = [objc_opt_self() standardUserDefaults];
  }

  result = (*(v12 + 8))(a2, a5);
  *&a7[*(v11 + 40)] = v14;
  return result;
}

uint64_t TestProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_2277E2774();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  if (qword_2813BC668 == -1)
  {
    if (_s15FitnessCoaching8PlatformO15internalInstallSbvg_0())
    {
LABEL_3:
      v11 = *v3;
      if (v11 <= 2)
      {
        v18 = 0xEC00000065746144;
        v19 = 0x676E696863616F43;
        if (v11 != 1)
        {
          v19 = 0xD00000000000001ALL;
          v18 = 0x80000002277E89D0;
        }

        if (*v3)
        {
          v16 = v19;
        }

        else
        {
          v16 = 0xD000000000000017;
        }

        if (*v3)
        {
          v17 = v18;
        }

        else
        {
          v17 = 0x80000002277E89A0;
        }
      }

      else
      {
        v12 = 0x80000002277E8A20;
        v13 = 0xD000000000000011;
        if (v11 == 5)
        {
          v13 = 0xD000000000000017;
        }

        else
        {
          v12 = 0x80000002277E8A40;
        }

        v14 = 0xEE0074657366664FLL;
        v15 = 0xD000000000000019;
        if (v11 == 3)
        {
          v15 = 0x7472617453796144;
        }

        else
        {
          v14 = 0x80000002277E8A00;
        }

        if (*v3 <= 4u)
        {
          v16 = v15;
        }

        else
        {
          v16 = v13;
        }

        if (*v3 <= 4u)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }
      }

      (*(*(a1 + 24) + 8))(*&v3[*(a1 + 40)], v16, v17, v6);

      v20 = *(v6 - 8);
      v21 = *(v20 + 48);
      if (v21(v10, 1, v6) != 1)
      {
        return (*(v20 + 32))(a2, v10, v6);
      }

      (*(v20 + 16))(a2, &v3[*(a1 + 36)], v6);
      result = (v21)(v10, 1, v6);
      if (result != 1)
      {
        return (*(v8 + 8))(v10, v7);
      }

      return result;
    }
  }

  else
  {
    swift_once();
    if (_s15FitnessCoaching8PlatformO15internalInstallSbvg_0())
    {
      goto LABEL_3;
    }
  }

  v23 = *(*(v6 - 8) + 16);
  v24 = &v3[*(a1 + 36)];

  return v23(a2, v24, v6);
}

uint64_t TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_227791A28(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  TestProperty.wrappedValue.getter(a2, v11);
  return sub_22779193C;
}

void sub_22779193C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_227791A28(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_227791A28((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_227791A28(uint64_t a1, uint64_t a2)
{
  if (qword_2813BC668 == -1)
  {
    result = _s15FitnessCoaching8PlatformO15internalInstallSbvg_0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    swift_once();
    result = _s15FitnessCoaching8PlatformO15internalInstallSbvg_0();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v5 = *v2;
  if (v5 <= 2)
  {
    v12 = 0xEC00000065746144;
    v13 = 0x676E696863616F43;
    if (v5 != 1)
    {
      v13 = 0xD00000000000001ALL;
      v12 = 0x80000002277E89D0;
    }

    if (*v2)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (*v2)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x80000002277E89A0;
    }
  }

  else
  {
    v6 = 0x80000002277E8A20;
    v7 = 0xD000000000000011;
    if (v5 == 5)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x80000002277E8A40;
    }

    v8 = 0xEE0074657366664FLL;
    v9 = 0xD000000000000019;
    if (v5 == 3)
    {
      v9 = 0x7472617453796144;
    }

    else
    {
      v8 = 0x80000002277E8A00;
    }

    if (*v2 <= 4u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (*v2 <= 4u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v6;
    }
  }

  (*(*(a2 + 24) + 16))(*&v2[*(a2 + 40)], v10, v11, *(a2 + 16));
}

uint64_t sub_227791BD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_227791FA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227791C70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_227791DC8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 1] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_227791FA4()
{
  result = qword_2813BC568;
  if (!qword_2813BC568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC568);
  }

  return result;
}

BOOL HKActivitySummary.hasAnyRingWithData.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  if (v3 > 0.0)
  {
    return 1;
  }

  [v0 _exerciseTimeCompletionPercentage];
  if (v4 > 0.0)
  {
    return 1;
  }

  [v0 _standHoursCompletionPercentage];
  return v6 > 0.0;
}

id HKActivitySummary.moveCompletionPercentage.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  v3 = *v2;

  return [v0 v3];
}

double sub_227792128(SEL *a1, SEL *a2)
{
  v5 = [v2 activityMoveMode];
  if (v5 == 2)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v5 == 2)
  {
    v7 = &selRef_minuteUnit;
  }

  else
  {
    v7 = &selRef_kilocalorieUnit;
  }

  v8 = [v2 *v6];
  v9 = [objc_opt_self() *v7];
  [v8 doubleValueForUnit_];
  v11 = v10;

  return v11;
}

id HKActivitySummary.canonicalMoveUnit.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = objc_opt_self();
  v3 = &selRef_minuteUnit;
  if (v1 != 2)
  {
    v3 = &selRef_kilocalorieUnit;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t HKActivitySummary.canonicalMoveType.getter()
{
  v1 = [v0 activityMoveMode];
  sub_227792C30();
  v2 = MEMORY[0x277CCC928];
  if (v1 != 2)
  {
    v2 = MEMORY[0x277CCC918];
  }

  return MEMORY[0x22AA9B8D0](*v2);
}

BOOL HKActivitySummary.numberOfRingsClosed.getter()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  v4 = v3;
  [v0 _exerciseTimeCompletionPercentage];
  v6 = 2;
  if (v4 < 1.0)
  {
    v6 = 1;
  }

  if (v5 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4 >= 1.0;
  }

  [v0 _standHoursCompletionPercentage];
  if (v8 < 1.0)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

id HKActivitySummary.percentageComplete(for:)(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      v2 = &selRef__standHoursCompletionPercentage;
      break;
    case 2:
      v2 = &selRef__exerciseTimeCompletionPercentage;
      break;
    case 1:
      v3 = [v1 activityMoveMode];
      v2 = &selRef__activeEnergyCompletionPercentage;
      if (v3 == 2)
      {
        v2 = &selRef__moveMinutesCompletionPercentage;
      }

      break;
    default:
      result = sub_2277E28D4();
      __break(1u);
      return result;
  }

  v4 = *v2;

  return [v1 v4];
}

id HKActivitySummary.moveUnit(unitManager:)(void *a1)
{
  if ([v1 activityMoveMode] == 2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_minuteUnit;
  }

  else
  {
    v4 = &selRef_userActiveEnergyBurnedUnit;
    v3 = a1;
  }

  v5 = [v3 *v4];

  return v5;
}

double HKActivitySummary.currentValue(for:unitManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1 == 3)
  {
    v9 = [v2 appleStandHours];
    v10 = [objc_opt_self() countUnit];
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v9 = [v2 appleExerciseTime];
    v10 = [objc_opt_self() minuteUnit];
LABEL_8:
    v11 = v10;
    [v9 doubleValueForUnit_];
LABEL_14:
    v4 = v12;

    return v4;
  }

  v4 = 0.0;
  if (a1 == 1)
  {
    v6 = [v3 activityMoveMode];
    if ([v3 activityMoveMode] == 2)
    {
      v7 = objc_opt_self();
      v8 = &selRef_minuteUnit;
    }

    else
    {
      v8 = &selRef_userActiveEnergyBurnedUnit;
      v7 = a2;
    }

    v11 = [v7 *v8];
    if (v6 == 2)
    {
      v13 = [v3 appleMoveTime];
    }

    else
    {
      v13 = [v3 activeEnergyBurned];
    }

    v9 = v13;
    [v9 doubleValueForUnit_];
    goto LABEL_14;
  }

  return v4;
}

void HKActivitySummary.remainingValue(for:unitManager:)(uint64_t a1, void *a2)
{
  switch(a1)
  {
    case 3:
      v12 = [v2 appleStandHours];
      v13 = objc_opt_self();
      v14 = [v13 countUnit];
      [v12 doubleValueForUnit_];

      v10 = [v2 appleStandHoursGoal];
      v11 = [v13 countUnit];
      goto LABEL_8;
    case 2:
      v7 = [v2 appleExerciseTime];
      v8 = objc_opt_self();
      v9 = [v8 minuteUnit];
      [v7 doubleValueForUnit_];

      v10 = [v2 appleExerciseTimeGoal];
      v11 = [v8 minuteUnit];
LABEL_8:
      v15 = v11;
      [v10 doubleValueForUnit_];

      return;
    case 1:
      v4 = [v2 activityMoveMode];
      if ([v2 activityMoveMode] == 2)
      {
        v5 = objc_opt_self();
        v6 = &selRef_minuteUnit;
      }

      else
      {
        v6 = &selRef_userActiveEnergyBurnedUnit;
        v5 = a2;
      }

      v16 = [v5 *v6];
      v17 = &selRef_appleMoveTime;
      if (v4 == 2)
      {
        v18 = &selRef_appleMoveTimeGoal;
      }

      else
      {
        v17 = &selRef_activeEnergyBurned;
        v18 = &selRef_activeEnergyBurnedGoal;
      }

      v19 = [v2 *v17];
      [v19 doubleValueForUnit_];

      v20 = [v2 *v18];
      [v20 doubleValueForUnit_];

      break;
  }
}

Swift::Double __swiftcall HKActivitySummary.totalCompletionPercentage()()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  [v0 *v2];
  v4 = v3;
  [v0 _exerciseTimeCompletionPercentage];
  v6 = v4 + v5;
  [v0 _standHoursCompletionPercentage];
  return v6 + v7;
}

void Collection<>.mostRecentMoveGoal()(uint64_t a1, uint64_t a2)
{
  v2 = sub_2277E2504();
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v8 = v2;
  v3 = sub_2277E28E4();
  v2 = v8;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v6 = MEMORY[0x22AA9B9D0](v5);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v2 + 8 * v5 + 32);
LABEL_8:
    v7 = v6;

    HKActivitySummary.moveGoal.getter();

    return;
  }

  __break(1u);
}

BOOL sub_227792A58(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 _activitySummaryIndex];
  return v3 < [v2 _activitySummaryIndex];
}

uint64_t Collection<>.numberTimesAchieved(moveGoal:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Collection<>.mostRecentMoveGoal()(v5, v8);
  v10 = v9;
  (*(v4 + 16))(v7, v2, a1);
  v15 = v10;
  v11 = sub_2277E24F4();
  if (v11 >> 62)
  {
    v12 = sub_2277E28E4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12;
}

unint64_t sub_227792C30()
{
  result = qword_27D7CEA98;
  if (!qword_27D7CEA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7CEA98);
  }

  return result;
}

void (*sub_227792C7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9B9D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_227792CFC;
  }

  __break(1u);
  return result;
}

void sub_227792D48()
{
  v0 = sub_2277E2414();
  v1 = MGGetSInt32Answer();

  byte_2813BC670 = v1 == 3;
}

uint64_t static Platform.current.getter()
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2813BC670;
}

uint64_t static Platform.current.setter(char a1)
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2813BC670 = a1;
  return result;
}

uint64_t (*static Platform.current.modify(uint64_t a1))()
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_227792F18@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_2813BC670;
  return result;
}

uint64_t sub_227792F94(char *a1)
{
  v1 = *a1;
  if (qword_2813BC668 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2813BC670 = v1;
  return result;
}

FitnessCoaching::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_22779305C()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

uint64_t sub_2277930D0(uint64_t a1)
{
  v2 = *v1;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v2);
  return sub_2277E2A44();
}

unint64_t *sub_227793114@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id _s15FitnessCoaching8PlatformO15internalInstallSbvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2277E2434();

    v2 = sub_2277E2464();

    v3 = v2 + 32;
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() isInternal_];
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_227793218()
{
  result = qword_27D7CEAA0;
  if (!qword_27D7CEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAA0);
  }

  return result;
}

unint64_t sub_227793270()
{
  result = qword_27D7CEAA8;
  if (!qword_27D7CEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEAB0, &qword_2277E45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirstGlanceModalityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FirstGlanceModalityType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_227793470@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAB8, &qword_2277E4630);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v21 - v4;
  v22 = sub_2277E1FA4();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAC0, &qword_2277E4638);
  v8 = sub_2277E2024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2277E3A50;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277CC9978], v8);
  v14(v13 + v10, *MEMORY[0x277CC9988], v8);
  v14(v13 + 2 * v10, *MEMORY[0x277CC9998], v8);
  v14(v13 + 3 * v10, *MEMORY[0x277CC9968], v8);
  sub_227799A74(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = swift_deallocClassInstance();
  v24(v15);
  v16 = v25;
  sub_2277E1FC4();

  (*(v5 + 8))(v7, v22);
  v17 = sub_2277E2044();
  v18 = *(v17 - 8);
  v19 = v26;
  (*(v18 + 16))(v26, v16, v17);
  (*(v18 + 56))(v19, 0, 1, v17);
  return sub_2277E1EE4();
}

uint64_t sub_2277937BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227793804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t static MoveModeLocalizer.localizedTitle(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 5 || a1 == 6)
    {
LABEL_20:
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_2277E2414();
      v13 = sub_2277E2414();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v5 = sub_2277E2434();
      return v5;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (qword_27D7CE7D0 != -1)
    {
      swift_once();
    }

    v6 = sub_2277E2374();
    __swift_project_value_buffer(v6, qword_27D7CEB40);
    v7 = sub_2277E2354();
    v8 = sub_2277E2704();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227786000, v7, v8, "MoveModeLocalizer attempted to present with an unknown notification type", v9, 2u);
      MEMORY[0x22AA9C370](v9, -1, -1);
    }

    v5 = 0xD000000000000020;

    return v5;
  }

  if (qword_27D7CE7D0 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_27D7CEB40);
  v2 = sub_2277E2354();
  v3 = sub_2277E2704();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227786000, v2, v3, "MoveModeLocalizer attempted to present with undefined notification type", v4, 2u);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  return 0xD000000000000022;
}

unint64_t static MoveModeLocalizer.localizedDescription(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 5 || a1 == 6)
    {
LABEL_20:
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_2277E2414();
      v13 = sub_2277E2414();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v5 = sub_2277E2434();
      return v5;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (qword_27D7CE7D0 != -1)
    {
      swift_once();
    }

    v6 = sub_2277E2374();
    __swift_project_value_buffer(v6, qword_27D7CEB40);
    v7 = sub_2277E2354();
    v8 = sub_2277E2704();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227786000, v7, v8, "MoveModeLocalizer attempted to present with an unknown notification type", v9, 2u);
      MEMORY[0x22AA9C370](v9, -1, -1);
    }

    v5 = 0xD000000000000026;

    return v5;
  }

  if (qword_27D7CE7D0 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_27D7CEB40);
  v2 = sub_2277E2354();
  v3 = sub_2277E2704();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227786000, v2, v3, "MoveModeLocalizer attempted to present with undefined notification type", v4, 2u);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  return 0xD000000000000028;
}

uint64_t sub_22779446C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2277944C8()
{
  v1 = [*v0 transportData];
  v2 = sub_2277E1F34();

  return v2;
}

void sub_227794528(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2277E1F24();
    sub_2277945BC(a1, a2);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTransportData_];

  *a3 = v7;
}

uint64_t sub_2277945BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22778E130(result, a2);
  }

  return result;
}

uint64_t FirstGlanceModalityType.protobuf()()
{
  type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  sub_227794824(&qword_27D7CEA40, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);
  return sub_2277E2274();
}

uint64_t FirstGlanceModalityType.init(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    result = sub_227794760(a1);
    *a2 = v3;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return sub_227794760(a1);
  }

  return result;
}

uint64_t sub_227794738(uint64_t result, unsigned __int8 a2)
{
  *result = a2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_22779474C(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_227794760(uint64_t a1)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  (*(*(GlanceModalityTypeProtobuf - 8) + 8))(a1, GlanceModalityTypeProtobuf);
  return a1;
}

uint64_t sub_227794824(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceModalityTypeProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227794868()
{
  type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  sub_227794824(&qword_27D7CEA40, &protocol conformance descriptor for FirstGlanceModalityTypeProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277948FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    result = sub_227794760(a1);
    *a2 = v3;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return sub_227794760(a1);
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.__allocating_init(date:healthStore:)(uint64_t a1, void *a2)
{
  v4 = sub_2277E1FA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for WeeklySummaryInfoQuery(0);
  v8 = swift_allocObject();
  v9 = a2;
  v10 = sub_227796248(v9, v7, v9, v8);
  (*(v5 + 8))(a1, v4);
  return v10;
}

uint64_t WeeklySummaryInfoQuery.__allocating_init(activityDataQuery:date:healthStore:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_227796668(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t type metadata accessor for WeeklySummaryInfoQuery(uint64_t a1)
{
  result = qword_27D7CEAE8;
  if (!qword_27D7CEAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.init(activityDataQuery:date:healthStore:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2277963C0(v11, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

void sub_227794C74(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = a1;
  v89[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v64 - v4;
  v82 = sub_2277E23A4();
  v84 = *(v82 - 8);
  v5 = v84[8];
  v6 = MEMORY[0x28223BE20](v82);
  v85 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v64 - v7;
  v8 = sub_2277E1FA4();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v64 - v11;
  v12 = sub_2277E2044();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2277E1E84();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState;
  v86 = v2;
  v23 = *&v2[OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState];

  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));

  if (v24)
  {

    sub_227796770();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v65 = v15;
    v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v22;
    v67 = v5;
    v69 = v19;
    v71 = v14;
    v25 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
    v26 = [objc_opt_self() hk_gregorianCalendar];
    v27 = v76;
    sub_2277E1FE4();

    v28 = v86;
    Date.intervalForWeeklySummary(calendar:)(v27, v21);
    (*(v77 + 8))(v27, v78);
    v29 = v79;
    sub_2277E1E44();
    v30 = sub_2277E1F94();
    v32 = v80;
    v31 = v81;
    (*(v80 + 8))(v29, v81);
    v33 = v21;
    v70 = v21;
    if (v30 == 1)
    {
      sub_2277E1E64();
      (*(v32 + 16))(v72, &v28[v25], v31);
      v34 = v69;
      sub_2277E1E54();
      v35 = v83;
      v36 = v84;
    }

    else
    {
      v35 = v83;
      v34 = v69;
      (*(v83 + 16))(v69, v33, v71);
      v36 = v84;
    }

    v37 = v68;
    v38 = *(v28 + 5);
    v39 = *(v28 + 6);
    __swift_project_boxed_opaque_existential_1Tm(v28 + 2, v38);
    v40 = v88;
    (*(v39 + 56))(v34, v38, v39);
    v41 = *&v28[OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore];
    v89[0] = 0;
    v42 = [v41 wheelchairUseWithError_];
    v43 = v87;
    if (v42)
    {
      v44 = v42;
      v45 = v89[0];
      v84 = [v44 wheelchairUse];

      v46 = sub_2277E2624();
      (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
      v47 = v82;
      (v36[2])(v85, v40, v82);
      v48 = v71;
      v49 = v35;
      (*(v35 + 16))(v37, v70, v71);
      v50 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v51 = (v67 + *(v35 + 80) + v50) & ~*(v35 + 80);
      v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      (v36[4])(v53 + v50, v85, v47);
      (*(v49 + 32))(v53 + v51, v68, v48);
      *(v53 + v52) = v84;
      v54 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
      v55 = v74;
      *v54 = v73;
      v54[1] = v55;

      v56 = sub_227795D80(0, 0, v87, &unk_2277E47C0, v53);
      v57 = *&v86[v66];
      v89[0] = v56;
      MEMORY[0x28223BE20](v56);
      *(&v64 - 2) = v89;

      os_unfair_lock_lock((v57 + 24));
      v58 = v75;
      sub_227796A60((v57 + 16));
      os_unfair_lock_unlock((v57 + 24));
      if (v58)
      {
        __break(1u);
      }

      else
      {

        (v36[1])(v88, v47);
        v59 = *(v49 + 8);
        v60 = v71;
        v59(v69, v71);
        v59(v70, v60);
      }
    }

    else
    {
      v61 = v89[0];
      sub_2277E1F14();

      swift_willThrow();
      (v36[1])(v40, v82);
      v62 = *(v35 + 8);
      v63 = v71;
      v62(v34, v71);
      v62(v70, v63);
    }
  }
}

uint64_t sub_2277954D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v8[15] = type metadata accessor for WeeklySummaryInfo(0);
  v8[16] = swift_task_alloc();
  v9 = sub_2277E2394();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277955D0, 0, 0);
}

uint64_t sub_2277955D0()
{
  v1 = sub_227796DD0(MEMORY[0x277D84F90]);
  sub_2277E2384();
  v0[20] = v1;
  v0[21] = v1;
  v2 = sub_227796ECC();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2277956A8;
  v4 = v0[17];

  return MEMORY[0x282200308](v0 + 7, v4, v2);
}

uint64_t sub_2277956A8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_227795C50;
  }

  else
  {
    v2 = sub_2277957BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2277957E0()
{
  v1 = v0[24];
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_32:
      v2 = sub_2277E28E4();
      v48 = v0;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        v4 = v0[24];
        v44 = v4 & 0xFFFFFFFFFFFFFF8;
        v45 = v4 & 0xC000000000000001;
        v5 = v0[20];
        while (1)
        {
          if (v45)
          {
            v10 = MEMORY[0x22AA9B9D0](v3, v1);
          }

          else
          {
            if (v3 >= *(v44 + 16))
            {
              goto LABEL_29;
            }

            v10 = *(v1 + 8 * v3 + 32);
          }

          v11 = v10;
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v12 = v2;
          v13 = [v10 _activitySummaryIndex];
          v8 = v11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48[9] = v5;
          v15 = sub_2277A8F8C(v13);
          v17 = v5[2];
          v18 = (v16 & 1) == 0;
          v19 = __OFADD__(v17, v18);
          v20 = v17 + v18;
          if (v19)
          {
            goto LABEL_30;
          }

          v21 = v16;
          if (v5[3] < v20)
          {
            break;
          }

          v22 = v48;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v26 = v15;
          sub_2277A9CF8();
          v15 = v26;
          v5 = v48[9];
          if (v21)
          {
LABEL_5:
            v6 = v5[7];
            v7 = *(v6 + 8 * v15);
            *(v6 + 8 * v15) = v8;

            v8 = v7;
            goto LABEL_6;
          }

LABEL_17:
          v5[(v15 >> 6) + 8] |= 1 << v15;
          *(v5[6] + 8 * v15) = v13;
          *(v5[7] + 8 * v15) = v8;
          v24 = v5[2];
          v19 = __OFADD__(v24, 1);
          v25 = v24 + 1;
          if (v19)
          {
            goto LABEL_31;
          }

          v5[2] = v25;
LABEL_6:

          ++v3;
          v9 = v5;
          v2 = v12;
          if (v0 == v12)
          {
            goto LABEL_34;
          }
        }

        v22 = v48;
        sub_2277A90A4(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_2277A8F8C(v13);
        if ((v21 & 1) != (v23 & 1))
        {

          return sub_2277E29A4();
        }

LABEL_16:
        v5 = v22[9];
        if (v21)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    v5 = v0[20];
    v9 = v0[21];
LABEL_34:

    v29 = *(v9 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = sub_2277CA0B8(*(v9 + 16), 0);
      v46 = sub_227796514(v48 + 2, v31 + 4, v29, v9);
      v32 = v48[2];

      v33 = sub_227796F24(v32);
      if (v46 != v29)
      {
        __break(1u);
        return MEMORY[0x282200308](v33, v34, v35);
      }

      v30 = v31;
    }

    v37 = v48[15];
    v36 = v48[16];
    v47 = v48[13];
    v38 = v48[11];
    v39 = v48[12];
    v40 = v37[5];
    v41 = sub_2277E1E84();
    (*(*(v41 - 8) + 16))(&v36[v40], v38, v41);
    *v36 = v30;
    *&v36[v37[6]] = MEMORY[0x277D84F90];
    *&v36[v37[7]] = v39;
    v47(v36);
    sub_227796F2C(v36);
    v48[20] = v5;
    v48[21] = v9;
    v42 = sub_227796ECC();
    v43 = swift_task_alloc();
    v48[22] = v43;
    *v43 = v48;
    v43[1] = sub_2277956A8;
    v34 = v48[17];
    v33 = (v48 + 7);
    v35 = v42;

    return MEMORY[0x282200308](v33, v34, v35);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_227795C50()
{
  *(v0 + 64) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_227795CE4, 0, 0);
}

uint64_t sub_227795CE4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227795D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_227796CF8(a3, v22 - v9);
  v11 = sub_2277E2624();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_227796D68(v10);
  }

  else
  {
    sub_2277E2614();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2277E25C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2277E2464() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_227796D68(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227796D68(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_227795FEC()
{
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState;
  v2 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
    v5 = sub_2277E2634();
    v6 = *(v0 + v1);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock((v6 + 24));
    sub_227797050((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  return result;
}

uint64_t WeeklySummaryInfoQuery.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v2 = sub_2277E1FA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WeeklySummaryInfoQuery.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v2 = sub_2277E1FA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_227796248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = &type metadata for ActivityDataQuery;
  v12[4] = &protocol witness table for ActivityDataQuery;
  v12[0] = a1;
  sub_227796FEC(v12, a4 + 16);
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore) = a3;
  v7 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v8 = sub_2277E1FA4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4 + v7, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB08, &qword_2277E4860);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  (*(v9 + 8))(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *(v10 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState) = v10;
  return a4;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2277963C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_227796FEC(v17, a4 + 16);
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_healthStore) = a3;
  v12 = OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_date;
  v13 = sub_2277E1FA4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a4 + v12, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB08, &qword_2277E4860);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  (*(v14 + 8))(a2, v13);
  __swift_destroy_boxed_opaque_existential_0(v17);
  *(v15 + 16) = 0;
  *(a4 + OBJC_IVAR____TtC15FitnessCoaching22WeeklySummaryInfoQuery_protectedState) = v15;
  return a4;
}

void *sub_227796514(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_227796668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeeklySummaryInfoQuery(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_2277963C0(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_227796770()
{
  result = qword_27D7CEAD0;
  if (!qword_27D7CEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAD0);
  }

  return result;
}

uint64_t sub_2277967C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2277E23A4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2277E1E84() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v11);
  v16 = *(v1 + v11 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_22779696C;

  return sub_2277954D8(a1, v13, v14, v1 + v6, v1 + v9, v12, v15, v16);
}

uint64_t sub_22779696C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227796A78(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

uint64_t sub_227796ACC(uint64_t a1)
{
  result = sub_2277E1FA4();
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

uint64_t sub_227796C0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227796C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_227796CB0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_227796CC8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_227796CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227796D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227796DD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB00, &unk_2277E59E0);
  v3 = sub_2277E2914();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2277A8F8C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2277A8F8C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227796ECC()
{
  result = qword_27D7CEAF8;
  if (!qword_27D7CEAF8)
  {
    sub_2277E2394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEAF8);
  }

  return result;
}

uint64_t sub_227796F2C(uint64_t a1)
{
  v2 = type metadata accessor for WeeklySummaryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_227796FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FirstGlanceContent.activitySharingFriendsListData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceContent.init(activitySharingFriendsListData:experienceType:types:pregnancyState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t FirstGlanceContent.hash(into:)(uint64_t a1)
{
  GlanceType = type metadata accessor for FirstGlanceType(0);
  v4 = *(GlanceType - 8);
  MEMORY[0x28223BE20](GlanceType - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  sub_2277E1F44();
  MEMORY[0x22AA9BBC0](v7);
  MEMORY[0x22AA9BBC0](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_22778E0CC(v11, v6);
      FirstGlanceType.hash(into:)(a1);
      sub_227797398(v6);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return MEMORY[0x22AA9BBC0](v9);
}

uint64_t FirstGlanceContent.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_227797270()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_2277972C8(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_2277E2A04();
  FirstGlanceContent.hash(into:)(v5);
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching18FirstGlanceContentV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = sub_227790458(*a1, a1[1], *a2, a2[1]);
  result = 0;
  if (v8 && v3 == v6)
  {
    return sub_2277D6C5C(v2, v5) & (v4 == v7);
  }

  return result;
}

uint64_t sub_227797398(uint64_t a1)
{
  GlanceType = type metadata accessor for FirstGlanceType(0);
  (*(*(GlanceType - 8) + 8))(a1, GlanceType);
  return a1;
}

unint64_t sub_2277973F8()
{
  result = qword_27D7CEB10;
  if (!qword_27D7CEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEB10);
  }

  return result;
}

uint64_t Date.intervalForWeeklySummary(calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v74 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v8;
  v86 = sub_2277E2024();
  v79 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v80 = &v71 - v13;
  v14 = sub_2277E1FA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = &v71 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v72 = (&v71 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v71 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v82 = &v71 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v71 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v71 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v71 - v34;
  sub_2277E1FB4();
  v36 = sub_2277E1FD4();
  v37 = sub_2277E1F74();
  v38 = [v36 hk:v37 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
  v39 = a1;
  v40 = sub_2277E2004();
  v41 = v79;
  v42 = *(v79 + 104);
  v43 = (v15 + 48);
  v84 = v35;
  if (v40)
  {
    v81 = v30;
    v44 = v86;
    (v42)(v80, *MEMORY[0x277CC99A8], v86);
    v45 = v73;
    sub_2277E1FF4();
    if ((*v43)(v45, 1, v14) != 1)
    {
      (*(v41 + 8))(v80, v44);
      v46 = v81;
      (*(v15 + 32))(v81, v45, v14);
      v47 = sub_2277E1FD4();
      v48 = sub_2277E1F74();
      v49 = [v47 hk:v48 startOfFitnessWeekBeforeDate:?];

      v50 = v82;
      sub_2277E1F84();

      v51 = *(v15 + 16);
      v51(v83, v50, v14);
      v51(v72, v46, v14);
      sub_2277E1E54();
      v52 = *(v15 + 8);
      v52(v50, v14);
      v52(v46, v14);
      v53 = v33;
LABEL_7:
      v52(v53, v14);
      return (v52)(v84, v14);
    }

    v70 = v45;
  }

  else
  {
    v80 = v33;
    v54 = *MEMORY[0x277CC9968];
    v55 = v71;
    v56 = v86;
    v73 = v42;
    (v42)(v71, v54, v86);
    v57 = v74;
    sub_2277E1FF4();
    v72 = *v43;
    if (v72(v57, 1, v14) != 1)
    {
      v79 = *(v41 + 8);
      (v79)(v55, v56);
      v74 = *(v15 + 32);
      (v74)(v81, v57, v14);
      v58 = sub_2277E1FD4();
      v71 = v39;
      v59 = v58;
      v60 = sub_2277E1F74();
      v61 = [v59 hk:v60 startOfFitnessWeekBeforeDate:?];

      v62 = v86;
      v63 = v75;
      sub_2277E1F84();

      v64 = v77;
      (v73)(v77, *MEMORY[0x277CC99A8], v62);
      v65 = v63;
      v57 = v78;
      sub_2277E1FF4();
      if (v72(v57, 1, v14) != 1)
      {
        (v79)(v64, v62);
        v66 = v76;
        (v74)(v76, v57, v14);
        v67 = *(v15 + 16);
        v68 = v80;
        v67(v82, v80, v14);
        v67(v83, v66, v14);
        sub_2277E1E54();
        v52 = *(v15 + 8);
        v52(v66, v14);
        v52(v65, v14);
        v52(v81, v14);
        v53 = v68;
        goto LABEL_7;
      }
    }

    v70 = v57;
  }

  sub_227798E24(v70);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.activitySummaryComponents(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAB8, &qword_2277E4630);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEAC0, &qword_2277E4638);
  v5 = sub_2277E2024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2277E3A50;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CC9978], v5);
  v11(v10 + v7, *MEMORY[0x277CC9988], v5);
  v11(v10 + 2 * v7, *MEMORY[0x277CC9998], v5);
  v11(v10 + 3 * v7, *MEMORY[0x277CC9968], v5);
  sub_227799A74(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2277E1FC4();

  v12 = sub_2277E2044();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, a1, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  return sub_2277E1EE4();
}

uint64_t Date.byAdding(component:value:calendar:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_2277E1FF4();
  v7 = sub_2277E1FA4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a3, v6, v7);
  }

  sub_227798E24(v6);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.bySubtracting(component:value:calendar:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_2277E1FF4();
    v8 = sub_2277E1FA4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      return (*(v9 + 32))(a3, v7, v8);
    }
  }

  sub_227798E24(v7);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.endOfDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2277E2044();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_2277E2024();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_2277E1FA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = *MEMORY[0x277CC9968];
  v22 = *(v9 + 104);
  v43 = v8;
  v34 = v22;
  v22(v13, v21, v8);
  sub_2277E1FF4();
  v33 = v15[6];
  if (v33(v7, 1, v14) == 1)
  {
    v31 = v7;
  }

  else
  {
    v23 = *(v9 + 8);
    v24 = v9 + 8;
    v25 = v43;
    v37 = v24;
    v32 = v23;
    v23(v13, v43);
    v35 = v15[4];
    v35(v18, v7, v14);
    sub_2277E1FB4();
    v26 = v15[1];
    v26(v18, v14);
    v27 = v36;
    v34(v36, *MEMORY[0x277CC99A8], v25);
    v28 = v39;
    sub_2277E2014();
    v29 = v38;
    sub_2277E1FF4();
    if (v33(v29, 1, v14) != 1)
    {
      (*(v40 + 8))(v28, v41);
      v32(v27, v43);
      v26(v20, v14);
      return (v35)(v42, v29, v14);
    }

    v31 = v29;
  }

  sub_227798E24(v31);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t Date.intervalForDay(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - v4;
  v6 = sub_2277E2024();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = sub_2277E1FA4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v36 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v43 = &v36 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v49 = &v36 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  MEMORY[0x28223BE20](v22);
  v41 = &v36 - v25;
  sub_2277E1FB4();
  v26 = *MEMORY[0x277CC9968];
  v27 = *(v7 + 104);
  v51 = v6;
  v40 = v27;
  v27(v11, v26, v6);
  sub_2277E1FF4();
  v28 = v5;
  v39 = v13[6];
  if (v39(v5, 1, v12) == 1 || (v29 = *(v7 + 8), v30 = v51, v46 = v7 + 8, v38 = v29, v29(v11, v51), v37 = v13[4], v37(v24, v28, v12), v42 = v24, sub_2277E1FB4(), v40(v50, *MEMORY[0x277CC99A8], v30), v28 = v47, sub_2277E1FF4(), v39(v28, 1, v12) == 1))
  {
    sub_227798E24(v28);
    result = sub_2277E28D4();
    __break(1u);
  }

  else
  {
    v38(v50, v51);
    v31 = v43;
    v37(v43, v28, v12);
    v32 = v13[2];
    v33 = v41;
    v32(v44, v41, v12);
    v32(v45, v31, v12);
    sub_2277E1E54();
    v34 = v13[1];
    v34(v31, v12);
    v34(v49, v12);
    v34(v42, v12);
    return (v34)(v33, v12);
  }

  return result;
}

uint64_t Date.intervalForWeekSoFar(calendar:)()
{
  v1 = v0;
  v2 = sub_2277E1FA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = sub_2277E1FD4();
  v13 = sub_2277E1F74();
  v14 = [v12 hk:v13 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
  v15 = *(v3 + 16);
  v15(v9, v11, v2);
  v15(v6, v1, v2);
  sub_2277E1E54();
  return (*(v3 + 8))(v11, v2);
}

void Date.startOfFitnessWeek(for:)(uint64_t a1)
{
  v1 = sub_2277E1FD4();
  v2 = sub_2277E1F74();
  v3 = [v1 hk:v2 startOfFitnessWeekBeforeDate:?];

  sub_2277E1F84();
}

uint64_t sub_227798E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Date.intervalForFullWeek(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = sub_2277E2024();
  v57 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = sub_2277E1FA4();
  v54 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v42 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v42 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v42 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = sub_2277E1FD4();
  v25 = sub_2277E1F74();
  v26 = [v24 hk:v25 startOfFitnessWeekBeforeDate:?];

  v47 = v23;
  sub_2277E1F84();

  v27 = v57;
  v28 = *MEMORY[0x277CC9968];
  v46 = *(v57 + 104);
  v46(v10, v28, v6);
  v29 = v54;
  sub_2277E1FF4();
  v45 = *(v29 + 48);
  if (v45(v5, 1, v11) == 1)
  {
    v41 = v5;
  }

  else
  {
    v30 = *(v27 + 8);
    v57 = v27 + 8;
    v44 = v30;
    v30(v10, v6);
    v43 = *(v29 + 32);
    v43(v53, v5, v11);
    v31 = sub_2277E1FD4();
    v32 = sub_2277E1F74();
    v33 = [v31 hk:v32 startOfFitnessWeekBeforeDate:?];

    sub_2277E1F84();
    v46(v56, *MEMORY[0x277CC99A8], v6);
    v34 = v51;
    sub_2277E1FF4();
    if (v45(v34, 1, v11) != 1)
    {
      v44(v56, v6);
      v35 = v48;
      v43(v48, v34, v11);
      v36 = v54;
      v37 = *(v54 + 16);
      v38 = v47;
      v37(v49, v47, v11);
      v37(v50, v35, v11);
      sub_2277E1E54();
      v39 = *(v36 + 8);
      v39(v35, v11);
      v39(v55, v11);
      v39(v53, v11);
      return (v39)(v38, v11);
    }

    v41 = v34;
  }

  sub_227798E24(v41);
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

BOOL Date.isFirstDayOfFitnessWeek(for:)()
{
  v0 = sub_2277E2024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC99B8], v0);
  v4 = sub_2277E2034();
  (*(v1 + 8))(v3, v0);
  return HKFirstDayOfWeekForWeeklyGoalCalculations() == v4;
}

uint64_t Date.isLastDayOfFitnessWeek(for:)()
{
  v0 = sub_2277E2024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC99B8], v0);
  v4 = sub_2277E2034();
  result = (*(v1 + 8))(v3, v0);
  if (!__OFADD__(v4, 1))
  {
    return (v4 + 1) % 7 == HKFirstDayOfWeekForWeeklyGoalCalculations();
  }

  __break(1u);
  return result;
}

uint64_t sub_2277996D4@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_2277E2024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277CC9968], v6);
  sub_2277E1FF4();
  v10 = sub_2277E1FA4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_227798E24(v5);
    result = sub_2277E28D4();
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 32))(a2, v5, v10);
  }

  return result;
}

Swift::String __swiftcall Date.toISO8601()()
{
  v0 = sub_2277E2074();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v4 setFormatOptions_];
  sub_2277E2064();
  v5 = sub_2277E2054();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  v6 = sub_2277E1F74();
  v7 = [v4 stringFromDate_];

  v8 = sub_2277E2434();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_227799A74(uint64_t a1)
{
  v2 = sub_2277E2024();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB20, "hq");
    v9 = sub_2277E27E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_227799D6C(&unk_2813BCCA0, MEMORY[0x277CC99D8]);
      v16 = sub_2277E23E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_227799D6C(&qword_2813BCC98, MEMORY[0x277CC99E0]);
          v23 = sub_2277E2404();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_227799D6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2277E2024();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227799DB0(uint64_t a1)
{
  BYTE8(v3) = 0;
  *&v3 = *v1;
  sub_2277E28C4();
  return *(&v3 + 1);
}

uint64_t sub_227799E5C()
{
  v0 = sub_2277E2374();
  __swift_allocate_value_buffer(v0, qword_2813BC6B8);
  __swift_project_value_buffer(v0, qword_2813BC6B8);
  return sub_2277E2364();
}

uint64_t sub_22779A168(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2277E2374();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2277E2364();
}

uint64_t sub_22779A204@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2277E2374();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  v2 = Logger.path(file:function:)(file, function);
  oslog = sub_2277E2354();
  v3 = sub_2277E2714();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    v6 = sub_22779A830(v2._countAndFlagsBits, v2._object, &v8);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_227786000, oslog, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AA9C370](v5, -1, -1);
    MEMORY[0x22AA9C370](v4, -1, -1);
  }

  else
  {
  }
}

Swift::String __swiftcall Logger.path(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  sub_22779ADE8();
  v6 = (sub_2277E2784() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_22779A614(46, 0xE100000000000000, v5, v4);
  v8 = sub_2277E24D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x22AA9B620](v8, v10, v12, v14);
  v17 = v16;

  sub_22779A614(40, 0xE100000000000000, countAndFlagsBits, object);
  v18 = sub_2277E24D4();
  v19 = MEMORY[0x22AA9B620](v18);
  v21 = v20;

  v22 = pthread_self();
  pthread_mach_thread_np(v22);
  v23 = sub_2277E2954();
  MEMORY[0x22AA9B650](v23);

  MEMORY[0x22AA9B650](8285, 0xE200000000000000);
  MEMORY[0x22AA9B650](v15, v17);

  MEMORY[0x22AA9B650](14906, 0xE200000000000000);
  MEMORY[0x22AA9B650](v19, v21);

  v24 = 91;
  v25 = 0xE100000000000000;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

unint64_t sub_22779A614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_2277E24C4() != a1 || v9 != a2)
  {
    v10 = sub_2277E2984();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2277E2494();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_22779A7D4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22779A830(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22779A830(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22779A8FC(v11, 0, 0, 1, a1, a2);
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
    sub_22778AD1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22779A8FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22779AA08(a5, a6);
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
    result = sub_2277E2834();
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

void *sub_22779AA08(uint64_t a1, unint64_t a2)
{
  v3 = sub_22779AA54(a1, a2);
  sub_22779AB84(&unk_283AE3550);
  return v3;
}

void *sub_22779AA54(uint64_t a1, unint64_t a2)
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

  v6 = sub_22779AC70(v5, 0);
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

  result = sub_2277E2834();
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
        v10 = sub_2277E24B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22779AC70(v10, 0);
        result = sub_2277E27F4();
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

uint64_t sub_22779AB84(uint64_t result)
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

  result = sub_22779ACE4(result, v11, 1, v3);
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

void *sub_22779AC70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB70, "dq");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22779ACE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB70, "dq");
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

_BYTE **sub_22779ADD8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_22779ADE8()
{
  result = qword_2813BC588[0];
  if (!qword_2813BC588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BC588);
  }

  return result;
}

uint64_t TransportJsonSerializable<>.transportData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2277E1E04();
  swift_allocObject();
  sub_2277E1DF4();
  v4 = sub_2277E1DE4();

  return v4;
}

uint64_t sub_22779AEF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v3 = 4;
    swift_willThrow();
  }

  else
  {
    sub_2277E1DD4();
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    sub_2277945BC(a1, a2);
    if (!v2)
    {
      v4 = v8;
    }
  }

  return v4 & 1;
}

uint64_t sub_22779AFFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v3 = 4;
    return swift_willThrow();
  }

  else
  {
    sub_2277E1DD4();
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    result = sub_2277945BC(a1, a2);
    if (!v2)
    {
      return v7;
    }
  }

  return result;
}

uint64_t TransportJsonSerializable<>.init(transportData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v5 = 4;
    return swift_willThrow();
  }

  else
  {
    sub_2277E1DD4();
    swift_allocObject();
    sub_2277905C0(a1, a2);
    sub_2277E1DC4();
    sub_2277E1DB4();

    sub_2277945BC(a1, a2);
    return sub_2277945BC(a1, a2);
  }
}

uint64_t sub_22779B1FC(uint64_t a1)
{
  sub_2277E1E04();
  swift_allocObject();
  sub_2277E1DF4();
  v1 = sub_2277E1DE4();

  return v1;
}

uint64_t sub_22779B290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22779AFFC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22779B2BC(uint64_t a1)
{
  sub_2277E1E04();
  swift_allocObject();
  sub_2277E1DF4();
  v1 = sub_2277E1DE4();

  return v1;
}

uint64_t sub_22779B350@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22779AEF8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t static String.read(from:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_2277E2434();

  return v6;
}

void sub_22779B420(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = sub_2277E2414();
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = sub_2277E2434();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_2277E2414();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_22779B544@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_22779CCC4(a2, a3, a4);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

void sub_22779B574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_2277E2414();
  [a1 setInteger:v5 forKey:v6];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_2277E2414();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_22779B648@<X0>(_BYTE *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = _sSb15FitnessCoachingE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a2, a3, a4);
  *a1 = result;
  return result;
}

void sub_22779B670(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_2277E2414();
  [a1 setBool:v5 forKey:v6];
}

uint64_t static Data.read(from:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 dataForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_2277E1F34();

  return v6;
}

void sub_22779B778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_2277E2414();
  [a1 setObject:v7 forKey:v8];
}

void sub_22779B804(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = sub_2277E2414();
  v7 = [a1 dataForKey_];

  if (v7)
  {
    v8 = sub_2277E1F34();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *a4 = v8;
  a4[1] = v10;
}

void sub_22779B8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_2277E2414();
  [a1 setObject:v8 forKey:v9];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_2277E2414();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_22779B9B8@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_22779CA30(a2, a3, a4);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

void sub_22779B9E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_2277E2414();
  [a1 setDouble:v6 forKey:v5];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_2277E2414();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_22779BAF4@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_22779CB74(a2, a3, a4);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_22779BB24(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7 = sub_2277E2414();
  LODWORD(v6) = v5;
  [a1 setFloat:v7 forKey:v6];
}

uint64_t static Date.read(from:key:)@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2277E2414();
  v10 = [a1 objectForKey_];

  if (v10)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (!*(&v17 + 1))
  {
    sub_22778CE70(v18, &unk_27D7CF290, &qword_2277E4A68);
    v11 = sub_2277E1FA4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_8:
    sub_22778CE70(v8, &qword_27D7CEB18, &qword_2277E4A60);
    sub_2277E1FA4();
    return (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
  }

  v11 = sub_2277E1FA4();
  v12 = swift_dynamicCast();
  v13 = *(v11 - 8);
  v14 = *(v13 + 56);
  v14(v8, v12 ^ 1u, 1, v11);
  if ((*(v13 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  (*(v13 + 32))(a4, v8, v11);
  return (v14)(a4, 0, 1, v11);
}

Swift::Void __swiftcall Date.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_2277E1F74();
  v4 = sub_2277E2414();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_22779BEAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E1F74();
  v5 = sub_2277E2414();
  [a1 setObject:v4 forKey:v5];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v4 = sub_2277E2774();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v11);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v20, v19);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    return (*(v10 + 8))(v13, a4);
  }

  (*(v16 + 32))(v18, v13, v15);
  (*(a5 + 16))(a1, a2, a3, v15, a5);
  return (*(v16 + 8))(v18, v15);
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v46 = a1;
  v47 = a7;
  v12 = sub_2277E2774();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  v44 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_2277E2774();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = *(a6 + 8);
  v26 = v46;
  v41 = a2;
  v46 = a3;
  v27 = a6;
  v29 = v28;
  v25(v26, a2, a3, AssociatedTypeWitness, v27);
  if ((*(v29 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v19, v15);
    return (*(*(a4 - 8) + 56))(v47, 1, 1, a4);
  }

  else
  {
    v31 = v47;
    (*(v29 + 32))(v24, v19, AssociatedTypeWitness);
    (*(v29 + 16))(v22, v24, AssociatedTypeWitness);
    v32 = v45;
    sub_2277E2524();
    v33 = *(a4 - 8);
    if ((*(v33 + 48))(v32, 1, a4) == 1)
    {
      v44 = v29;
      (*(v42 + 8))(v32, v43);
      if (qword_2813BC690 != -1)
      {
        swift_once();
      }

      v34 = sub_2277E2374();
      __swift_project_value_buffer(v34, qword_2813BC698);
      v35 = v46;

      v36 = sub_2277E2354();
      v37 = sub_2277E26F4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = v24;
        v40 = swift_slowAlloc();
        v48 = v40;
        *v38 = 141558274;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_22779A830(v41, v35, &v48);
        _os_log_impl(&dword_227786000, v36, v37, "Couldn't parse user default %{mask.hash}s.", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AA9C370](v40, -1, -1);
        MEMORY[0x22AA9C370](v38, -1, -1);

        (*(v44 + 8))(v39, AssociatedTypeWitness);
      }

      else
      {

        (*(v44 + 8))(v24, AssociatedTypeWitness);
      }

      return (*(v33 + 56))(v31, 1, 1, a4);
    }

    else
    {
      (*(v29 + 8))(v24, AssociatedTypeWitness);
      (*(v33 + 32))(v31, v32, a4);
      return (*(v33 + 56))(v31, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v16 - v13;
  sub_2277E2514();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

void *sub_22779C83C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

BOOL sub_22779C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_2277E2804();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _sSb15FitnessCoachingE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_22778CE70(v10, &unk_27D7CF290, &qword_2277E4A68);
    return 2;
  }
}

uint64_t sub_22779CA30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_22778CE70(v12, &unk_27D7CF290, &qword_2277E4A68);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v12[0] = 0;
  v6 = sub_22779C85C(v8, v9, v12, MEMORY[0x277D84FA8], sub_22779CE04);

  if (v6)
  {
    return *&v12[0];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22779CB74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_22778CE70(v14, &unk_27D7CF290, &qword_2277E4A68);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v7 = 0;
    v8 = 1;
    return v7 | ((v8 & 1) << 32);
  }

  LODWORD(v14[0]) = 0;
  v6 = sub_22779C85C(v10, v11, v14, MEMORY[0x277D84FB0], sub_22779CDD8);

  v7 = LODWORD(v14[0]);
  v8 = !v6;
  if (!v6)
  {
    v7 = 0;
  }

  return v7 | ((v8 & 1) << 32);
}

uint64_t sub_22779CCC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2277E2414();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2277E27B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22778CE70(v10, &unk_27D7CF290, &qword_2277E4A68);
    return 0;
  }
}

_BYTE *sub_22779CE30@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.workoutData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.workoutData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0) + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(uint64_t a1)
{
  result = qword_27D7CEBB0;
  if (!qword_27D7CEBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0) + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  return sub_2277E20F4();
}

uint64_t sub_22779D164()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CEB78);
  __swift_project_value_buffer(v0, qword_27D7CEB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutData";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "moveRingPercentage";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceYesterdayWorkoutProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2277E2164();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E21A4();
    }

    else if (result == 2)
    {
      sub_2277E21E4();
    }
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2277E22C4();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v3 + 16) == 0.0 || (result = sub_2277E22E4(), !v4))
  {
    type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
    return sub_2277E20E4();
  }

  return result;
}

uint64_t static FirstGlanceYesterdayWorkoutProtobuf.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  sub_2277E2104();
  sub_22779DCA8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2277E2404() & 1;
}

uint64_t FirstGlanceYesterdayWorkoutProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  sub_22779DCA8(&qword_27D7CEB90, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22779D68C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  return sub_2277E20F4();
}

uint64_t sub_22779D6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22779D74C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22779D814(uint64_t a1, uint64_t a2)
{
  v4 = sub_22779DCA8(&qword_27D7CEBC0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22779D890@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22779D938(uint64_t a1)
{
  v2 = sub_22779DCA8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22779D9A4(uint64_t a1, uint64_t a2)
{
  sub_22779DCA8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);

  return sub_2277E2264();
}

uint64_t sub_22779DA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_2277E2104();
  sub_22779DCA8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2277E2404() & 1;
}

uint64_t sub_22779DC24(uint64_t a1)
{
  result = sub_2277E2104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22779DCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Array<A>.protobuf()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CollectionProtobuf(0);
  sub_22779E8E8(&qword_27D7CEBC8, &protocol conformance descriptor for CollectionProtobuf);
  return sub_2277E2274();
}

uint64_t sub_22779DD9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v6 = sub_2277E25A4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  WitnessTable = swift_getWitnessTable();
  result = sub_22779DEAC(sub_22779E92C, v11, v6, MEMORY[0x277CC9318], v7, WitnessTable, MEMORY[0x277D84950], v12);
  if (!v4)
  {
    v10 = result;

    *a1 = v10;
  }

  return result;
}

uint64_t sub_22779DEAC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2277E26C4();
  if (!v19)
  {
    return sub_2277E2574();
  }

  v41 = v19;
  v45 = sub_2277E28A4();
  v32 = sub_2277E28B4();
  sub_2277E2864();
  result = sub_2277E26B4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2277E26E4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2277E2894();
      result = sub_2277E26D4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.init(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEBD0, &qword_2277E4D48);
  sub_22779E4CC();
  sub_2277E24E4();
  if (v3)
  {
    sub_22779E530(a1);
  }

  else
  {

    sub_2277E25A4();
    swift_getWitnessTable();
    a2 = sub_2277E25B4();
    sub_22779E530(a1);
  }

  return a2;
}

uint64_t sub_22779E3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a3 + 16);
  sub_2277905C0(*a1, v9);
  result = v10(v8, v9, a2, a3);
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  return result;
}

unint64_t sub_22779E4CC()
{
  result = qword_27D7CEBD8;
  if (!qword_27D7CEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEBD0, &qword_2277E4D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEBD8);
  }

  return result;
}

uint64_t sub_22779E530(uint64_t a1)
{
  v2 = type metadata accessor for CollectionProtobuf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22779E5B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(_:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v10[2] = a2;
  v10[3] = a3;
  swift_getAssociatedTypeWitness();
  v5 = sub_2277E25A4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_22779DEAC(sub_22779E860, v10, v5, a2, v6, WitnessTable, MEMORY[0x277D84950], &v11);

  if (!v3)
  {
    v12 = v8;
    sub_2277E25A4();
    swift_getWitnessTable();
    return sub_2277E25B4();
  }

  return result;
}

uint64_t sub_22779E738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1);
  result = (*(a3 + 40))(v11, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_22779E8E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22779E92C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(*(v2 + 24) + 8))(*(v2 + 16));
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t FirstGlanceModalityProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_2277E20F4();
  v3 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v5 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  return v5(&a1[v3], 1, 1, GlanceModalityTypeProtobuf);
}

uint64_t type metadata accessor for FirstGlanceModalityProtobuf(uint64_t a1)
{
  result = qword_27D7CEC10;
  if (!qword_27D7CEC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceModalityProtobuf.type.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 24);
  sub_22778CE70(v1 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
  sub_2277910D8(a1, v1 + v3);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v5 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceModalityTypeProtobuf);
}

uint64_t FirstGlanceModalityProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_227790F4C(v1 + *(GlanceModalityProtobuf + 24), v5);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v8 = *(*(GlanceModalityTypeProtobuf - 8) + 48);
  if (v8(v5, 1, GlanceModalityTypeProtobuf) != 1)
  {
    return sub_2277910D8(v5, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  sub_2277E20F4();
  result = (v8)(v5, 1, GlanceModalityTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v5, &qword_27D7CEA80, &unk_2277E4DC0);
  }

  return result;
}

uint64_t sub_22779EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_227790F4C(a1 + *(GlanceModalityProtobuf + 24), v6);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v9 = *(*(GlanceModalityTypeProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceModalityTypeProtobuf) != 1)
  {
    return sub_2277910D8(v6, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  sub_2277E20F4();
  result = (v9)(v6, 1, GlanceModalityTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEA80, &unk_2277E4DC0);
  }

  return result;
}

uint64_t sub_22779EDBC(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v5 = *(GlanceModalityTypeProtobuf - 8);
  MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22779F1D8(a1, v7);
  v8 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 24);
  sub_22778CE70(a2 + v8, &qword_27D7CEA80, &unk_2277E4DC0);
  sub_2277910D8(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, GlanceModalityTypeProtobuf);
}

void (*FirstGlanceModalityProtobuf.type.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v5[2] = GlanceModalityTypeProtobuf;
  v10 = *(GlanceModalityTypeProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_227790F4C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceModalityTypeProtobuf) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_2277E20F4();
    if (v16(v8, 1, GlanceModalityTypeProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEA80, &unk_2277E4DC0);
    }
  }

  else
  {
    sub_2277910D8(v8, v14);
  }

  return sub_22779F0C0;
}

void sub_22779F0C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22779F1D8((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
    sub_2277910D8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_227794760(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
    sub_2277910D8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22779F1D8(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  (*(*(GlanceModalityTypeProtobuf - 8) + 16))(a2, a1, GlanceModalityTypeProtobuf);
  return a2;
}

BOOL FirstGlanceModalityProtobuf.hasType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  sub_227790F4C(v0 + *(GlanceModalityProtobuf + 24), v3);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v6 = (*(*(GlanceModalityTypeProtobuf - 8) + 48))(v3, 1, GlanceModalityTypeProtobuf) != 1;
  sub_22778CE70(v3, &qword_27D7CEA80, &unk_2277E4DC0);
  return v6;
}

Swift::Void __swiftcall FirstGlanceModalityProtobuf.clearType()()
{
  v1 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 24);
  sub_22778CE70(v0 + v1, &qword_27D7CEA80, &unk_2277E4DC0);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf(0);
  v3 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceModalityTypeProtobuf);
}

uint64_t FirstGlanceModalityProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceModalityProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22779F510()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CEBE8);
  __swift_project_value_buffer(v0, qword_27D7CEBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}