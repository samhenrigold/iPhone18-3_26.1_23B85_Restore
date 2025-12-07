uint64_t sub_226EE3B1C()
{
  v1 = sub_227667E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EE3BC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE3C08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE3C58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3C90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3CD0()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EE3D6C()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v3 + v9) & ~v3;

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v11(v0 + v10, v1);

  return MEMORY[0x2821FE8E8](v0, v10 + v5, v13 | 7);
}

uint64_t sub_226EE3EF4()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v16 = v1;
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v17 = v5;
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v2 + 8);
  v15(v0 + v4, v16);
  (*(v7 + 8))(v0 + v9, v6);

  v12 = *(v0 + v11 + 8);
  if (v12 >> 60 != 15)
  {
    sub_226EDC420(*(v0 + v11), v12);
  }

  v13 = (v3 + v11 + 16) & ~v3;
  v15(v0 + v13, v16);

  return MEMORY[0x2821FE8E8](v0, v13 + v17, v3 | v8 | 7);
}

uint64_t sub_226EE40C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
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

uint64_t sub_226EE417C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
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

uint64_t sub_226EE4234()
{
  v1 = sub_227667A70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE42BC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 24) & ~v17;
  v4 = *(v2 + 64);
  v5 = sub_227667A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v16 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v13 = sub_22766A4C0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v16, v17 | v7 | v11 | 7);
}

uint64_t sub_226EE44F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4530()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4568()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE45A0()
{
  v1 = sub_227664F30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE4664()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE46B8()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE4740()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4784()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE47D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE4874()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE48AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE48E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EE4994()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE49E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4A84()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE4AD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4B08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4B40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE4B80()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4BC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4BF8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4C44()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EE4D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EE4D78()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE4DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4E38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4E88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4EC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4F40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4F90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4FC8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5064()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE50C4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2276631F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EE523C()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_226EDC420(*(v0 + v6), *(v0 + v6 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_226EE532C()
{
  v12 = sub_2276624A0();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_227666130();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v13 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v12);

  (*(v6 + 8))(v0 + v8, v5);
  sub_226EDC420(*(v0 + v9), *(v0 + v9 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v13 | 7);
}

uint64_t sub_226EE54D4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227666130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE5670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE5704()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5740()
{
  MEMORY[0x22AA9A540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5790()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE57D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5808()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE5850()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE5898()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE58D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5908()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE5950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE5A80()
{

  sub_226EB2DFC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_226EE5ACC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE5B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5BBC()
{
  v1 = sub_227667830();
  v2 = *(v1 - 8);
  v29 = *(v2 + 80);
  v3 = (v29 + 24) & ~v29;
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v27 = *(v5 + 80);
  v6 = (v4 + v3 + v27 + 1) & ~v27;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext(0);
  v9 = *(*(v8 - 1) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v28 = sub_22766BA80();
  v11 = *(v28 - 8);
  v12 = *(v11 + 80);
  v25 = *(v11 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = sub_227665AD0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v6, 1, v13))
  {
    (*(v14 + 8))(v0 + v6, v13);
  }

  v15 = v0 + v10;
  v16 = v8[5];
  v17 = sub_227666C80();
  (*(*(v17 - 8) + 8))(v0 + v10 + v16, v17);
  v18 = v8[6];
  v19 = sub_2276666A0();
  (*(*(v19 - 8) + 8))(v0 + v10 + v18, v19);
  v20 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v14 + 8))(v15 + v20, v13);
  }

  v22 = (v10 + v26 + v12) & ~v12;
  v23 = (v22 + v25) & 0xFFFFFFFFFFFFFFF8;
  (*(v11 + 8))(v0 + v22, v28);

  return MEMORY[0x2821FE8E8](v0, v23 + 16, v29 | v27 | v9 | v12 | 7);
}

uint64_t sub_226EE5F64()
{
  v1 = sub_227667830();
  v2 = *(v1 - 8);
  v29 = *(v2 + 80);
  v3 = (v29 + 25) & ~v29;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v28 = *(v5 + 80);
  v6 = (v4 + v28 + 8) & ~v28;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext(0);
  v9 = *(*(v8 - 1) + 80);
  v24 = (v6 + v7 + v9) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v27 = sub_22766BA80();
  v10 = *(v27 - 8);
  v11 = *(v10 + 80);
  v25 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v12 = sub_227665AD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  v14 = v0 + v24;
  v15 = v8[5];
  v16 = sub_227666C80();
  (*(*(v16 - 8) + 8))(v0 + v24 + v15, v16);
  v17 = v8[6];
  v18 = sub_2276666A0();
  (*(*(v18 - 8) + 8))(v0 + v24 + v17, v18);
  v19 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v13 + 8))(v14 + v19, v12);
  }

  v21 = (v24 + v26 + v11) & ~v11;
  v22 = (v21 + v25) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v21, v27);

  return MEMORY[0x2821FE8E8](v0, v22 + 16, v29 | v28 | v9 | v11 | 7);
}

uint64_t sub_226EE633C()
{
  v28 = sub_227664350();
  v1 = *(v28 - 8);
  v38 = *(v1 + 80);
  v2 = *(v1 + 64);
  v27 = sub_227664DB0();
  v3 = *(v27 - 8);
  v37 = *(v3 + 80);
  v4 = (((v38 + 16) & ~v38) + v2 + v37) & ~v37;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_22766B7F0();
  v6 = *(v26 - 8);
  v36 = *(v6 + 80);
  v7 = (v5 + v36 + 8) & ~v36;
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v35 = *(v9 + 80);
  v10 = (v8 + v35 + v7 + 2) & ~v35;
  v11 = *(v9 + 64);
  v12 = type metadata accessor for MetricRecordingContext(0);
  v33 = *(*(v12 - 1) + 80);
  v29 = (v10 + v11 + v33) & ~v33;
  v32 = *(*(v12 - 1) + 64);
  v34 = sub_22766BA80();
  v13 = *(v34 - 8);
  v31 = *(v13 + 80);
  v30 = *(v13 + 64);
  (*(v1 + 8))(v0 + ((v38 + 16) & ~v38), v28);
  (*(v3 + 8))(v0 + v4, v27);

  (*(v6 + 8))(v0 + v7, v26);
  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  v16 = v0 + v29;
  v17 = v12[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v29 + v17, v18);
  v19 = v12[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v29 + v19, v20);
  v21 = v12[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v29 + v32 + v31) & ~v31;
  v24 = (v30 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v13 + 8))(v0 + v23, v34);

  return MEMORY[0x2821FE8E8](v0, v24 + 8, v38 | v37 | v36 | v35 | v33 | v31 | 7);
}

uint64_t sub_226EE6854()
{
  v1 = sub_227666C40();
  v2 = *(v1 - 8);
  v29 = *(v2 + 80);
  v3 = (v29 + 24) & ~v29;
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v27 = *(v5 + 80);
  v6 = (v4 + v3 + v27 + 1) & ~v27;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext(0);
  v9 = *(*(v8 - 1) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v28 = sub_22766BA80();
  v11 = *(v28 - 8);
  v12 = *(v11 + 80);
  v25 = *(v11 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = sub_227665AD0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v6, 1, v13))
  {
    (*(v14 + 8))(v0 + v6, v13);
  }

  v15 = v0 + v10;
  v16 = v8[5];
  v17 = sub_227666C80();
  (*(*(v17 - 8) + 8))(v0 + v10 + v16, v17);
  v18 = v8[6];
  v19 = sub_2276666A0();
  (*(*(v19 - 8) + 8))(v0 + v10 + v18, v19);
  v20 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v14 + 8))(v15 + v20, v13);
  }

  v22 = (v10 + v26 + v12) & ~v12;
  v23 = (v25 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v11 + 8))(v0 + v22, v28);

  return MEMORY[0x2821FE8E8](v0, v23 + 8, v29 | v27 | v9 | v12 | 7);
}

uint64_t sub_226EE6BFC()
{
  v1 = sub_227666C40();
  v2 = *(v1 - 8);
  v29 = *(v2 + 80);
  v3 = (v29 + 25) & ~v29;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v28 = *(v5 + 80);
  v6 = (v4 + v28 + 8) & ~v28;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext(0);
  v9 = *(*(v8 - 1) + 80);
  v24 = (v6 + v7 + v9) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v27 = sub_22766BA80();
  v10 = *(v27 - 8);
  v11 = *(v10 + 80);
  v25 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v12 = sub_227665AD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  v14 = v0 + v24;
  v15 = v8[5];
  v16 = sub_227666C80();
  (*(*(v16 - 8) + 8))(v0 + v24 + v15, v16);
  v17 = v8[6];
  v18 = sub_2276666A0();
  (*(*(v18 - 8) + 8))(v0 + v24 + v17, v18);
  v19 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v13 + 8))(v14 + v19, v12);
  }

  v21 = (v24 + v26 + v11) & ~v11;
  v22 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v21, v27);

  return MEMORY[0x2821FE8E8](v0, v22 + 8, v29 | v28 | v9 | v11 | 7);
}

uint64_t sub_226EE6FE8()
{
  v1 = sub_2276651A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for MetricRecordingContext(0);
  v11 = *(*(v10 - 1) + 80);
  v23 = *(*(v10 - 1) + 64);
  v12 = (v9 + v11 + v8 + 1) & ~v11;

  (*(v2 + 8))(v0 + v4, v1);
  v13 = sub_227665AD0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v8, 1, v13))
  {
    (*(v14 + 8))(v0 + v8, v13);
  }

  v15 = v0 + v12;
  v16 = v10[5];
  v17 = sub_227666C80();
  (*(*(v17 - 8) + 8))(v0 + v12 + v16, v17);
  v18 = v10[6];
  v19 = sub_2276666A0();
  (*(*(v19 - 8) + 8))(v0 + v12 + v18, v19);
  v20 = v10[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v14 + 8))(v15 + v20, v13);
  }

  return MEMORY[0x2821FE8E8](v0, ((v12 + v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | v11 | 7);
}

uint64_t sub_226EE72F8()
{
  v1 = sub_2276651A0();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 25) & ~v23;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MetricRecordingContext(0);
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v22 = *(*(v9 - 1) + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v12 = sub_227665AD0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = v0 + v11;
  v15 = v9[5];
  v16 = sub_227666C80();
  (*(*(v16 - 8) + 8))(v0 + v11 + v15, v16);
  v17 = v9[6];
  v18 = sub_2276666A0();
  (*(*(v18 - 8) + 8))(v0 + v11 + v17, v18);
  v19 = v9[7];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v13 + 8))(v14 + v19, v12);
  }

  return MEMORY[0x2821FE8E8](v0, ((v11 + v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v6 | v10 | 7);
}

uint64_t sub_226EE7620()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7670()
{
  v1 = sub_227665E10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_227663260();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_226EE7840()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_227663260();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EE7998()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7A80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2276694E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EE7B2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2276694E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EE7BD4()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE7CB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7D00()
{
  v1 = sub_227664CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227665C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE7E74()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE7FD8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE8014()
{
  v1 = sub_227667500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE817C()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE8248()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE82E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE8320()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226EE83C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2276624A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226EE8448()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8544()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE85A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8614()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8688()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227663CD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EE8810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227663CD0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EE890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227667100();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227665C20();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EE89FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227667100();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227665C20();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EE8AF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8B30()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8BA8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226EE8BC0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE8BF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE8C48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8CA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EE8CF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8D3C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8D7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8DC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EE8EF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8F38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE8FC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE9018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE90AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE90EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE914C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE938C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_226F48150();
    sub_226EC1E18();
    while ((sub_227663B20() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_226EB396C(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_226EB396C(a2, a3, v18);
    sub_226EE983C(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

uint64_t sub_226EE9590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  result = sub_22766CDC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v30 = *(v18 + 16);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v30;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v7, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_226EE983C(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_226EE9590(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7B8AA0, &unk_227671720, sub_226EB396C);
      goto LABEL_12;
    }

    sub_226EE9A74(v8 + 1);
  }

  v10 = *v5;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  result = sub_22766D3F0();
  v11 = -1 << *(v10 + 32);
  a4 = result & ~v11;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v13 = *v18;
  *(*v18 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v14 = *(v13 + 48) + 24 * a4;
  *v14 = v7;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EE9A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  result = sub_22766CDC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_22766D370();
      sub_226EB396C(v19, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
      v10 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v30 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_226EE9D00()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE9D38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9D70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9DAC()
{
  v1 = sub_2276691E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE9EFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9F34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE9F7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9FB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9FEC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EEA02C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEA064()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEA09C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2F0, &qword_22767A288);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A8A58(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_226EEA2D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226EA9990(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_226EEA504@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226EA9990(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_226EEA894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_226EEA964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_226EEAA2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEAA6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEAAA4()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EEAB88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEABD4()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EEAD28()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EEAE30()
{
  v1 = sub_22766AAF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EEAFB8()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_226EEB090()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB148()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB180()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB2A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB2DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEB330()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB380()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEB3CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB5AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB60C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB64C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEB6C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227667DF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
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
}

uint64_t sub_226EEB7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227667DF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_226EEB880()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB8E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB91C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB9B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB9E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEBA7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBB48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEBBAC()
{
  v1 = sub_227668700();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEBC38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEBC78()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_226EEBCC8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBD10()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBD48()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EEBD88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_226EEBDC8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EEBE00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEBE38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEBE70()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_226EEBEB8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEBEF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEBF28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_226EEBF80()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEBFC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC12C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EEC1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EEC298()
{
  v1 = sub_227665680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEC364()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC39C()
{
  v1 = sub_2276682A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EEC438()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEC480()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEC4B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEC4F8()
{
  v1 = sub_227668390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEC5BC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 240) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = *(v5 + 64);
  v21 = sub_227667A70();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v20 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  (*(v2 + 8))(&v0[v3], v1);
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v0[v6], 1, v15))
  {
    (*(v16 + 8))(&v0[v6], v15);
  }

  (*(v8 + 8))(&v0[v10], v21);
  v17 = sub_22766A4C0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v0[v14], 1, v17))
  {
    (*(v18 + 8))(&v0[v14], v17);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | v9 | v13 | 7);
}

uint64_t sub_226EEC90C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC958()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEC9AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC9EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EECA24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EECA64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EECB60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EECB98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EECBEC()
{
  v1 = sub_227668E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EECCC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EECD04()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EECD68()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EECDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EECE2C()
{
  v1 = sub_227667100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EECF3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EECFD4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EED0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EED198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EED1E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EED220()
{
  v1 = sub_227665DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EED460(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EED4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EED53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227662750();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EED62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227662750();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EED728()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEDC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667760();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EEDD00()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEEED4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEEF10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEEF4C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EEEF94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEEFCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEF010()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF048()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEF080()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF0D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF11C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEF17C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEF1B4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEF200()
{
  v1 = sub_227664900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEF41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EEF4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EEF5B4()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226EEF774()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TransportSerializableJournalRecorder(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = (type metadata accessor for InferenceProvider(0) - 8);
  v11 = *(*v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v3 | v7 | v11;
  v14 = (*(*v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v16 - 8) + 8))(v0 + v12, v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[10]));

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v13 | 7);
}

uint64_t sub_226EEFA10()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EEFBF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEFC28()
{
  v1 = sub_227667100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EEFD08()
{
  v1 = sub_227663010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (((((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_226EEFF10()
{
  v1 = (type metadata accessor for InferenceProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = sub_227663FA0();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_227667370();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v16 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));

  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v16, v13 | 7);
}

uint64_t sub_226EF01BC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_226EF02BC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v4 + ((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_226EF038C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF043C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v7 = *(type metadata accessor for AssetLoaderResponse(0) - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v6) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);

  v12(v0 + v6, v1);
  v13 = sub_2276624A0();
  (*(*(v13 - 8) + 8))(v0 + v9, v13);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF05E4()
{
  v1 = *(type metadata accessor for AssetLoaderResponse(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF06B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF06F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF079C()
{
  v15 = sub_2276624A0();
  v1 = *(v15 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v14 = *(v5 + 64);
  v16 = sub_2276639B0();
  v8 = *(v16 - 8);
  v9 = *(v8 + 80);
  v13 = *(v8 + 64);

  v10 = *(v1 + 8);
  v10(v0 + v3, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v10(v0 + v7, v15);
  }

  v11 = (v7 + v14 + v9) & ~v9;
  (*(v8 + 8))(v0 + v11, v16);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v2 | v6 | v9 | 7);
}

uint64_t sub_226EF09AC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v16 = *(v2 + 80);
  v3 = (v16 + 16) & ~v16;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v14 = *(v5 + 64);
  v15 = sub_2276624A0();
  v8 = *(v15 - 8);
  v9 = *(v8 + 80);
  v13 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v10 = sub_227663CF0();
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  v11 = (v7 + v14 + v9) & ~v9;
  (*(v8 + 8))(v0 + v11, v15);

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v16 | v6 | v9 | 7);
}

uint64_t sub_226EF0C40()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_226EF0CF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF0D3C()
{
  v1 = sub_227665490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF0EE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF0F38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF0F84()
{
  v1 = sub_2276668A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EF110C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF1144()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EF11D4()
{
  v1 = sub_2276668A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  sub_226EDC420(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF135C()
{
  v1 = sub_227666230();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_226EF1490()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF14C8()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_226EDC420(*(v0 + v5), *(v0 + v5 + 8));

  sub_226EDC420(*(v0 + v7), *(v0 + v7 + 8));

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_226EF15D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF1624()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF16F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF17BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1814()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF18F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF1930()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF19E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1A74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF1AB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF1B04()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1CB8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF1DD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_226EF1E18@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

__n128 sub_226EF1E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_226EF1EB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1EE8()
{
  v1 = (type metadata accessor for SyncZoneChangeset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_2276694E0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_226EDC420(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF2004()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF2068()
{
  v1 = (type metadata accessor for KeyCertificate(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_226EDC420(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF215C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF21B4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF2250()
{
  v1 = sub_227666130();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF22D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2318()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227666230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EF2490()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF24E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2570()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF261C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF27D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF2848(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF28B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF2950()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF29B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF2A0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF2A5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2AEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2B30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2B68()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2BA8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2BF4()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF2C3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2D54()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF2DA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2DF0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF2E28()
{
  v1 = sub_227668AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF3008()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF306C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF310C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3144()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF31A8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF31F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF332C()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_226EF3388()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

__n128 sub_226EF36EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_226EF3718()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF37EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF385C(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_227666C80();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_2276666A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for MetricServiceSubscriptionState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *sub_226EF39C0(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
    return result;
  }

  v8 = sub_227666C80();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2276666A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for MetricServiceSubscriptionState(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226EF3B40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3C60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_226EF3EB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3EE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3F20()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3F60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3F98()
{
  MEMORY[0x22AA9A540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3FDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4028()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF409C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF40D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF410C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF416C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EF41B4()
{
  v1 = sub_227666600();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF4284()
{
  v1 = sub_227667900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF4320()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF4404()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF443C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF447C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF44BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF44F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF45A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22766B4C0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2276627D0();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_226EF4720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_22766B4C0();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_2276627D0();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_226EF48A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF48EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4938()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF4974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF4A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4A84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF4ABC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF4B24()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF4B84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4C1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4CA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4CDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4D60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4D98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF4E44()
{

  sub_226EDC420(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF4E84()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF5900()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF5938()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF5970()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF59B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF59E8()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_226EB2DFC(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EF5A40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF5A8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF5C7C()
{
  v1 = sub_2276678C0();
  v2 = *(v1 - 8);
  v5 = *(v2 + 80) & 0xF8;
  v3 = (((((((((((((*(v2 + 64) + 263) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + 256, v1);

  return MEMORY[0x2821FE8E8](v0, v3 + 8, v5 | 7);
}

uint64_t sub_226EF5EC8()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF5FF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF6048()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF6134()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF623C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6364()
{
  v1 = sub_227663FA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF64FC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EF655C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF660C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF666C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF66DC()
{
  v1 = sub_227665630();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF6764()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF67A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF6848()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF6D40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6DDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF6E48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6EA4()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF6F40()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF7048()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF70B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF70F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF7218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276627D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_227667370();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226EF733C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276627D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_227667370();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226EF7460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_226EF751C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276694E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EF75D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF7618()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF7650()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_226EF76A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF76DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF7724()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF7770()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF77A8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF77E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF7898()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF78F0()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_226EF79C0()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276685B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF7B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666F40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EF7B4C()
{
  v1 = sub_2276654E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF7BE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF7C24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7C98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF7CD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7E10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7E78()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_226EB4548(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF7F68()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_226EB4548(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF8038()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_226EB4548(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_226EF8118()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF8150()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF82C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF8330()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF8398()
{
  v1 = *(type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = sub_2276624A0();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226EF8518()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF8564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EF8624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EF887C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF88B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF88F4()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_226EF89EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF8A3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF8A88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF8AC8()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF8BF0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF8CBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_226EF8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276694E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_226EF8F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF8F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF8FFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9038()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF9080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF90B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF9128()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9198()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF91D4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF9360()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF93A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF93F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9428()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF94DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF9524()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF955C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF9990()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9AB8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF9AF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF9B9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9BD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9C0C()
{
  v1 = sub_2276640A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9E08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF9ECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9F90()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9FE8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EFA020()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFA06C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFA0B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFA118()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFA360()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EFA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2276624A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EFA668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2276624A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EFA70C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EFA870()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 9, v10 | 7);
}

uint64_t sub_226EFA9D0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AssetMediaStreamLoader.TaskResult(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_2276624A0();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EFAB6C()
{
  v1 = sub_227665490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFABF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFAC40()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EFAC80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFACC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFAD34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFAD6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFADA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFADDC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFAE2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFAEA8()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFAF6C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_226EFB04C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AssetMediaStreamLoader.TaskResult(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_2276624A0();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EFB35C()
{
  v1 = (type metadata accessor for MetricRecordingContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3;
  v6 = v1[7];
  v7 = sub_227666C80();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_2276666A0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v12 = sub_227665AD0();
    (*(*(v12 - 8) + 8))(v5 + v10, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFB4F0()
{
  v1 = *(type metadata accessor for MetricServiceSubscriptionState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_227665AD0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFB610()
{
  v1 = *(type metadata accessor for AssetLoaderResponse(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_226EFB890(void *a1)
{
  [a1 setQualityOfService_];

  return [a1 setPreferAnonymousRequests_];
}

uint64_t sub_226EFB8F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFB9A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBA50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBA88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFBAC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227662750();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226EFBBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_227662750();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226EFBD3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EFBD74()
{
  v1 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v2 = *(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v15 = sub_227668BB0();
  v3 = *(v15 - 8);
  v4 = *(v3 + 80);
  v13 = *(v3 + 64);
  v16 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);

  __swift_destroy_boxed_opaque_existential_0((v5 + 16));
  v6 = *(v1 + 24);
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v10 = *(v1 + 32);
  if (!(*(v8 + 48))(v5 + v10, 1, v7))
  {
    v9(v5 + v10, v7);
  }

  v11 = (((v2 + 16) & ~v2) + v14 + v4) & ~v4;

  (*(v3 + 8))(v16 + v11, v15);

  return MEMORY[0x2821FE8E8](v16, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v4 | 7);
}

uint64_t sub_226EFBF88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBFD8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC02C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC06C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC0E4()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EFC2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662010();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EFC30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662010();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EFC37C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC3FC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EFC43C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC48C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC4C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC4FC()
{
  v1 = sub_227665AD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFC5C0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC60C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC658()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC698()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC70C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFC7D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFC824()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC85C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC8D4()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFC984()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC9BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFCB18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EFCC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EFCCDC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EFCD14()
{
  v1 = sub_2276655F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFCDB8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFCDF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EFCE9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCED4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCF0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFCF44()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFCFF4()
{
  v1 = (type metadata accessor for AssetRequestProvider.CatalogURLs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_227663480();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + v4 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = sub_2276642E0();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);

  v15 = v1[8];
  v16 = sub_2276624A0();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v18, v13 | 7);
}

uint64_t sub_226EFD260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFD298()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFD2D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFD324()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFD3C0()
{
  v1 = (type metadata accessor for AssetRequestProvider.CatalogURLs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2276642E0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_2276624A0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFD4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276642E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2276624A0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226EFD608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276642E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2276624A0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226EFDA80()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EFDAB8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EFDAF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFDB28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFDB60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_226EFDDB4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 longestWeeklyStreak];
  *a2 = result;
  return result;
}

id sub_226EFDDFC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 numberOfWorkoutsOver5Minutes];
  *a2 = result;
  return result;
}

id sub_226EFDE44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentBestEnergyBurnedPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDE94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentStreak];
  *a2 = result;
  return result;
}

id sub_226EFDEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfGuidedWorkoutsOver5MinutesPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfWorkoutsOver5MinutesPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDF9C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 length];
  *a2 = result;
  return result;
}

id sub_226EFDFE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226EFE03C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityReference];
  *a2 = result;
  return result;
}

id sub_226EFE08C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226EFE0D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226EFE11C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 percentageCompleted];
  *a2 = v4;
  return result;
}

id sub_226EFE1EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeZoneOffset];
  *a2 = result;
  return result;
}

id sub_226EFE2BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scoreSummary];
  *a2 = result;
  return result;
}

id sub_226EFE31C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reference];
  *a2 = result;
  return result;
}

id sub_226EFE3F4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 loadStatus];
  *a2 = result;
  return result;
}

id sub_226EFE43C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 reason];
  *a2 = result;
  return result;
}

id sub_226EFE58C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 loadStatus];
  *a2 = result;
  return result;
}

id sub_226EFE654@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 size];
  *a2 = result;
  return result;
}

id sub_226EFE724@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canFreeDeviceSlot];
  *a2 = result;
  return result;
}

id sub_226EFE874@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_226EFE9FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 expirationTime];
  *a2 = v4;
  return result;
}

id sub_226EFEA84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_226EFEB0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestTime];
  *a2 = v4;
  return result;
}

id sub_226EFEB94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadToken];
  *a2 = result;
  return result;
}

id sub_226EFEC5C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226EFECAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 machTimestamp];
  *a2 = v4;
  return result;
}

id sub_226EFECFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEDD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutBodyFocuses];
  *a2 = result;
  return result;
}

id sub_226EFEF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEF84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEFD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 languageDisclaimer];
  *a2 = result;
  return result;
}

id sub_226EFF02C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityReference];
  *a2 = result;
  return result;
}

id sub_226EFF084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_226EFF0D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityReference];
  *a2 = result;
  return result;
}

id sub_226EFF22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226EFF33C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alternativeActivityTypes];
  *a2 = result;
  return result;
}

id sub_226EFF38C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 features];
  *a2 = result;
  return result;
}

id sub_226EFF3DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filterPropertyTypes];
  *a2 = result;
  return result;
}

id sub_226EFF42C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityTypes];
  *a2 = result;
  return result;
}

id sub_226EFF53C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF58C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF5DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF62C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF804@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessibilityFeatures];
  *a2 = result;
  return result;
}

id sub_226EFF854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributors];
  *a2 = result;
  return result;
}

id sub_226EFF8A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226EFF9B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributorIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFA04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 equipmentIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFA54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFAA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicGenreIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFAF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themeIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFB44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFB94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 workoutIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFD2C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_226EFFD74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_226EFFE44@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_226EFFE8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themes];
  *a2 = result;
  return result;
}

id sub_226EFFEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogTipReferenceCategories];
  *a2 = result;
  return result;
}

id sub_226EFFFBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 elapsedTime];
  *a2 = v4;
  return result;
}

id sub_226F00084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalTime];
  *a2 = v4;
  return result;
}

id sub_226F0014C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 categoryIdentifiers];
  *a2 = result;
  return result;
}

id sub_226F00424@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessibilityFeatures];
  *a2 = result;
  return result;
}

id sub_226F00474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 availableAudioLanguages];
  *a2 = result;
  return result;
}

id sub_226F004C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 coachingEvents];
  *a2 = result;
  return result;
}

id sub_226F00514@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 commentaryEvents];
  *a2 = result;
  return result;
}

id sub_226F00564@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributors];
  *a2 = result;
  return result;
}

id sub_226F005B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 languageDisclaimers];
  *a2 = result;
  return result;
}

id sub_226F00604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaMoments];
  *a2 = result;
  return result;
}

id sub_226F00654@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicTracks];
  *a2 = result;
  return result;
}

id sub_226F006A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226F006F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerEvents];
  *a2 = result;
  return result;
}

id sub_226F007C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F0080C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 episode];
  *a2 = result;
  return result;
}

id sub_226F00954@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bodyFocusIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F009A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributorIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F009F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 equipmentIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00A44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicGenreIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00A94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skillLevelIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00AE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themeIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00B34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traits];
  *a2 = result;
  return result;
}

id sub_226F00BDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutReference];
  *a2 = result;
  return result;
}

id sub_226F00C2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F00CF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leadDuration];
  *a2 = v4;
  return result;
}

id sub_226F00D3C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rangeLowerBound];
  *a2 = result;
  return result;
}

id sub_226F00D84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rangeUpperBound];
  *a2 = result;
  return result;
}

id sub_226F00DCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShowPlus];
  *a2 = result;
  return result;
}

id sub_226F00E14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F00E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F00EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F00F34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F00FFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F01164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226F011B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F01204@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 socialMediaHandles];
  *a2 = result;
  return result;
}

id sub_226F0125C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramContributors];
  *a2 = result;
  return result;
}

id sub_226F012AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutContributors];
  *a2 = result;
  return result;
}

id sub_226F0130C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 energyBurned];
  *a2 = v4;
  return result;
}

id sub_226F0135C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F014FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramEquipment];
  *a2 = result;
  return result;
}

id sub_226F0154C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutEquipment];
  *a2 = result;
  return result;
}

id sub_226F0159C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activeCalorieRate];
  *a2 = v4;
  return result;
}

id sub_226F015E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226F0162C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 basalCalorieRate];
  *a2 = v4;
  return result;
}

id sub_226F01674@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

id sub_226F016C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F01714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_226F0175C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityReference];
  *a2 = result;
  return result;
}

id sub_226F017EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heartRate];
  *a2 = v4;
  return result;
}

id sub_226F01934@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 standaloneMindfulSessionJob];
  *a2 = result;
  return result;
}

id sub_226F01A04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 workout];
  *a2 = result;
  return result;
}

id sub_226F01B54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sessions];
  *a2 = result;
  return result;
}

id sub_226F01BE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F01D84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutActivityType];
  *a2 = result;
  return result;
}

id sub_226F01DCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F01E1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIndoorWorkout];
  *a2 = result;
  return result;
}

id sub_226F01E6C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutActivityType];
  *a2 = result;
  return result;
}

id sub_226F01EB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sessionReference];
  *a2 = result;
  return result;
}

id sub_226F01F14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPrimary];
  *a2 = result;
  return result;
}

id sub_226F01FDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 capabilities];
  *a2 = result;
  return result;
}

id sub_226F0202C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F02084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F020D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F0211C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F021F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramModalities];
  *a2 = result;
  return result;
}

id sub_226F02244@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 onboardingSurveyResults];
  *a2 = result;
  return result;
}

id sub_226F02294@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

id sub_226F022E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F023BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F0240C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F02524@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F025AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F02634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F02684@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F026EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 onboaringSurveyResults];
  *a2 = result;
  return result;
}

id sub_226F0274C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedModalityIdentifiers];
  *a2 = result;
  return result;
}

id sub_226F0279C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F027FC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F029D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 items];
  *a2 = result;
  return result;
}

id sub_226F02A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F02A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityType];
  *a2 = result;
  return result;
}

id sub_226F02AF4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F02B7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playlist];
  *a2 = result;
  return result;
}

id sub_226F02D24@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 platform];
  *a2 = result;
  return result;
}

id sub_226F02D74@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F02F8C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityLowerMiddleScore];
  *a2 = v4;
  return result;
}

id sub_226F02FD4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityLowerScore];
  *a2 = v4;
  return result;
}

id sub_226F0301C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityUpperMiddleScore];
  *a2 = v4;
  return result;
}

id sub_226F03064@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityUpperScore];
  *a2 = v4;
  return result;
}

id sub_226F030AC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 elapsedSeconds];
  *a2 = result;
  return result;
}

id sub_226F030F4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 personalScore];
  *a2 = v4;
  return result;
}

id sub_226F0313C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 archivedSession];
  *a2 = result;
  return result;
}

id sub_226F03194@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226F03224@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutDuration];
  *a2 = result;
  return result;
}

id sub_226F03374@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutSkillLevels];
  *a2 = result;
  return result;
}

id sub_226F03444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributor];
  *a2 = result;
  return result;
}

id sub_226F03494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerMetadata];
  *a2 = result;
  return result;
}

id sub_226F03684@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 domain];
  *a2 = result;
  return result;
}

id sub_226F0370C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_226F037AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramThemes];
  *a2 = result;
  return result;
}

id sub_226F037FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutThemes];
  *a2 = result;
  return result;
}

id sub_226F0384C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F038D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leadDuration];
  *a2 = v4;
  return result;
}

id sub_226F0391C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F039A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F039FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramTrainers];
  *a2 = result;
  return result;
}

id sub_226F03A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutTrainers];
  *a2 = result;
  return result;
}

id sub_226F03B9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226F03BEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 socialMediaHandles];
  *a2 = result;
  return result;
}

id sub_226F03D0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F03D54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityType];
  *a2 = result;
  return result;
}

id sub_226F03DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F03E64@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 shownState];
  *a2 = result;
  return result;
}

id sub_226F03EB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramWorkouts];
  *a2 = result;
  return result;
}

id sub_226F03FC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F04070@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 variation];
  *a2 = result;
  return result;
}

id sub_226F040B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 schedule];
  *a2 = result;
  return result;
}

id sub_226F04110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04160@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F041B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F04200@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plan];
  *a2 = result;
  return result;
}

id sub_226F04258@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F042A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredTrainers];
  *a2 = result;
  return result;
}

id sub_226F042F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

id sub_226F04350@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreference];
  *a2 = result;
  return result;
}

id sub_226F043A8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F043F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  *a2 = result;
  return result;
}

id sub_226F04440@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_226F04490@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filterProperties];
  *a2 = result;
  return result;
}

id sub_226F044E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04530@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04580@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F045D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

id sub_226F04720@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F04818@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutPlanLength];
  *a2 = result;
  return result;
}

id sub_226F04860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreferences];
  *a2 = result;
  return result;
}

id sub_226F048B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 schedule];
  *a2 = result;
  return result;
}

id sub_226F04908@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreference];
  *a2 = result;
  return result;
}

uint64_t sub_226F04958(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

_OWORD *sub_226F04970(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_226F04AAC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_226F04B18(uint64_t a1, int a2)
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

uint64_t sub_226F04B38(uint64_t result, int a2, int a3)
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

uint64_t sub_226F04B7C(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8330, type metadata accessor for CKError, &unk_22766FF58);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_226F04BE8(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8330, type metadata accessor for CKError, &unk_22766FF58);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_226F04C58(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_226F04CC4(uint64_t a1, id *a2)
{
  result = sub_22766BFE0();
  *a2 = 0;
  return result;
}

uint64_t sub_226F04D3C(uint64_t a1, id *a2)
{
  v3 = sub_22766BFF0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_226F04DBC@<X0>(uint64_t *a2@<X8>)
{
  sub_22766C000();
  v3 = sub_22766BFD0();

  *a2 = v3;
  return result;
}

uint64_t sub_226F04E24(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_226F04E90(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_226F04EFC(void *a1, uint64_t a2)
{
  v4 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_226F04FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_226F0502C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_226F0508C(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8370, type metadata accessor for FileProtectionType, &unk_22767031C);
  v3 = sub_226F053F0(&qword_27D7B8378, type metadata accessor for FileProtectionType, &unk_2276702BC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

_DWORD *sub_226F05148@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_226F05164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_226F051E8(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8380, type metadata accessor for URLResourceKey, &unk_2276701C4);
  v3 = sub_226F053F0(&qword_27D7B8388, type metadata accessor for URLResourceKey, &unk_227670164);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F052A4(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8210, type metadata accessor for MTIDOptionKey, &unk_22766FC80);
  v3 = sub_226F053F0(&qword_27D7B8218, type metadata accessor for MTIDOptionKey, &unk_22766FC28);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F053F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F05480(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8360, type metadata accessor for AVContentKeySessionServerPlaybackContextOption, &unk_227670588);
  v3 = sub_226F053F0(&qword_27D7B8368, type metadata accessor for AVContentKeySessionServerPlaybackContextOption, &unk_2276704DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F0553C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22766BFD0();

  *a2 = v3;
  return result;
}

uint64_t sub_226F05584(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8390, type metadata accessor for AVMediaCharacteristic, &unk_22767006C);
  v3 = sub_226F053F0(&qword_27D7B8398, type metadata accessor for AVMediaCharacteristic, &unk_22767000C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F057CC()
{
  v0 = sub_22766C000();
  v1 = MEMORY[0x22AA984E0](v0);

  return v1;
}

uint64_t sub_226F05808(uint64_t a1)
{
  sub_22766C000();
  sub_22766C100();
}

uint64_t sub_226F0585C(uint64_t a1)
{
  sub_22766C000();
  sub_22766D370();
  sub_22766C100();
  v1 = sub_22766D3F0();

  return v1;
}

uint64_t sub_226F058D0(void *a1, uint64_t *a2)
{
  v2 = sub_22766C000();
  v4 = v3;
  if (v2 == sub_22766C000() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22766D190();
  }

  return v7 & 1;
}

unint64_t sub_226F05E24()
{
  result = qword_281399188;
  if (!qword_281399188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399188);
  }

  return result;
}

uint64_t sub_226F05EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_227669BA0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_226F05F4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      swift_getKeyPath();
      v6 = sub_227664C10();
      v8 = v7;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v26 = v6;
      v27 = v8;
      sub_226F06498();

      v9 = sub_22766C820();
      sub_226ED25F8(&v26, v24);
      v10 = v25;
      if (!v25)
      {
        v20 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      swift_getKeyPath();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v26 = a1;
      v27 = a2;
      sub_226F06498();
      sub_226F04958(a1, a2, 2);

      v9 = sub_22766C820();
      sub_226ED25F8(&v26, v24);
      v10 = v25;
      if (!v25)
      {
        v20 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    swift_getKeyPath();
    v11 = sub_227663FB0();
    v13 = v12;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v26 = v11;
    v27 = v13;
    sub_226F06498();

    v9 = sub_22766C820();
    sub_226ED25F8(&v26, v24);
    v10 = v25;
    if (!v25)
    {
      v20 = 0;
      goto LABEL_12;
    }
  }

  v15 = __swift_project_boxed_opaque_existential_0(v24, v25);
  v16 = *(v10 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = sub_22766D170();
  (*(v16 + 8))(v19, v10);
  __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_12:
  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226EBC888(&v26);
  return v22;
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

unint64_t sub_226F06498()
{
  result = qword_281398B40;
  if (!qword_281398B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B40);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_226F06518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_226F06560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226F065C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v132 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v130 = *(v5 - 8);
  v131 = v5;
  MEMORY[0x28223BE20](v5);
  v126 = v6;
  v127 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v121 = *(v9 - 8);
  v122 = v9;
  MEMORY[0x28223BE20](v9);
  v119 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v10;
  MEMORY[0x28223BE20](v11);
  v115 = &v109 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v13;
  MEMORY[0x28223BE20](v14);
  v112 = &v109 - v15;
  v16 = sub_2276665E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227664D30();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD580, &unk_22767E410);
  v23 = *(v111 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v123 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v125 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v109 - v30;
  MEMORY[0x28223BE20](v31);
  v134 = &v109 - v32;
  MEMORY[0x28223BE20](v33);
  v141 = &v109 - v34;
  MEMORY[0x28223BE20](v35);
  v140 = &v109 - v36;
  v124 = v37;
  MEMORY[0x28223BE20](v38);
  v139 = &v109 - v39;
  v133 = swift_allocObject();
  *(v133 + 16) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  v137 = swift_allocBox();
  v41 = v40;
  v42 = sub_227666C80();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  v135 = swift_allocBox();
  v44 = v43;
  v45 = sub_2276666A0();
  (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  v136 = swift_allocBox();
  v47 = v46;
  v48 = type metadata accessor for MetricServiceSubscriptionState(0);
  (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
  v138 = a1;
  sub_226F09804(a1, v22, MEMORY[0x277D50F70]);
  if ((*(v17 + 48))(v22, 1, v16) == 1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    v49 = off_283AB27A8;
    type metadata accessor for PrivacyPreferenceDataSource(0);
    v49();
  }

  else
  {
    (*(v17 + 32))(v19, v22, v16);
    v50 = sub_2276665D0();
    *(swift_allocObject() + 16) = v50;
    sub_227669280();
    (*(v17 + 8))(v19, v16);
  }

  v51 = swift_allocObject();
  v52 = v133;
  *(v51 + 16) = sub_226F09590;
  *(v51 + 24) = v52;
  v53 = v110;
  v54 = v111;
  (*(v23 + 16))(v110, v27, v111);
  v55 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v56 = swift_allocObject();
  (*(v23 + 32))(v56 + v55, v53, v54);
  v57 = (v56 + ((v24 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v57 = sub_226F095D8;
  v57[1] = v51;

  sub_227669270();
  (*(v23 + 8))(v27, v54);
  v58 = v112;
  sub_226F074A0(v138, v112);
  v59 = swift_allocObject();
  v60 = v137;
  *(v59 + 16) = sub_226F09608;
  *(v59 + 24) = v60;
  v61 = v116;
  v62 = v113;
  v63 = v117;
  (*(v116 + 16))(v113, v58, v117);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v114 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_226F09648;
  v67[1] = v59;

  sub_227669270();
  (*(v61 + 8))(v58, v63);
  v68 = v115;
  sub_226F0786C(v138, v115);
  v69 = swift_allocObject();
  v70 = v135;
  *(v69 + 16) = sub_226F09678;
  *(v69 + 24) = v70;
  v72 = v121;
  v71 = v122;
  v73 = v119;
  (*(v121 + 16))(v119, v68, v122);
  v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v75 = (v118 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (*(v72 + 32))(v76 + v74, v73, v71);
  v77 = (v76 + v75);
  *v77 = sub_226F096B8;
  v77[1] = v69;

  sub_227669270();
  (*(v72 + 8))(v68, v71);
  v78 = v129;
  sub_226F07D80(v138, v129);
  v79 = swift_allocObject();
  v80 = v136;
  *(v79 + 16) = sub_226F096E8;
  *(v79 + 24) = v80;
  v82 = v130;
  v81 = v131;
  v83 = v127;
  (*(v130 + 16))(v127, v78, v131);
  v84 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v85 = (v126 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  (*(v82 + 32))(v86 + v84, v83, v81);
  v87 = (v86 + v85);
  *v87 = sub_226F09704;
  v87[1] = v79;

  v88 = v134;
  sub_227669270();
  (*(v82 + 8))(v78, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v89 = v123;
  v90 = *(v123 + 72);
  v91 = *(v123 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_2276707E0;
  v93 = v92 + ((v91 + 32) & ~v91);
  v94 = *(v89 + 16);
  v95 = v120;
  v94(v93, v139, v120);
  v94(v93 + v90, v140, v95);
  v94(v93 + 2 * v90, v141, v95);
  v94(v93 + 3 * v90, v88, v95);
  sub_226EA1CF4();
  v96 = sub_22766C950();
  sub_227669A50();
  v97 = v128;
  sub_227669250();

  v98 = swift_allocObject();
  v99 = v137;
  v98[2] = v133;
  v98[3] = v99;
  v100 = v136;
  v98[4] = v135;
  v98[5] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_226F09734;
  *(v101 + 24) = v98;
  v102 = v125;
  v94(v125, v97, v95);
  v103 = (v91 + 16) & ~v91;
  v104 = (v124 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  (*(v89 + 32))(v105 + v103, v102, v95);
  v106 = (v105 + v104);
  *v106 = sub_226F09740;
  v106[1] = v101;
  type metadata accessor for MetricRecordingContext(0);

  sub_227669270();
  v107 = *(v89 + 8);
  v107(v97, v95);
  v107(v134, v95);
  v107(v141, v95);
  v107(v140, v95);
  v107(v139, v95);
}

uint64_t sub_226F074A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_227666C80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - v6;
  v7 = sub_2276665E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664D30();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v27, v17, MEMORY[0x277D50F70]);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    __swift_project_boxed_opaque_existential_0(v24, v24[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v12 + 8))(v14, v11);
    return sub_227360A74(v28);
  }

  else
  {
    (*(v8 + 32))(v10, v17, v7);
    v19 = v26;
    sub_2276665C0();
    v20 = v25;
    (*(v3 + 16))(v25, v19, v2);
    v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v22 = swift_allocObject();
    (*(v3 + 32))(v22 + v21, v20, v2);
    sub_227669280();
    (*(v3 + 8))(v19, v2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_226F0786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_2276666A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - v6;
  v7 = sub_2276665E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664D30();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v27, v17, MEMORY[0x277D50F70]);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    __swift_project_boxed_opaque_existential_0(v24, v24[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v12 + 8))(v14, v11);
    return sub_226EDD55C(v28);
  }

  else
  {
    (*(v8 + 32))(v10, v17, v7);
    v19 = v26;
    sub_2276665B0();
    v20 = v25;
    (*(v3 + 16))(v25, v19, v2);
    v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v22 = swift_allocObject();
    (*(v3 + 32))(v22 + v21, v20, v2);
    sub_227669280();
    (*(v3 + 8))(v19, v2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_226F07C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = swift_projectBox();
  v13 = a5(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  return sub_226F09BAC(v11, v12, a3, a4);
}

uint64_t sub_226F07D80@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v53 = type metadata accessor for MetricServiceSubscriptionState(0);
  v47 = *(v53 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v48 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_227665AD0();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276665E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = sub_227664D30();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v51, v21, MEMORY[0x277D50F70]);
  if ((*(v11 + 48))(v21, 1, v10) == 1)
  {
    v22 = *__swift_project_boxed_opaque_existential_0((v43 + 40), *(v43 + 64));
    v23 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
    swift_beginAccess();
    sub_226E92A44(v22 + v23, &v56);
    if (v57)
    {
      sub_226E92AB8(&v56, v55);
      sub_226E91B50(v55, v54);
      v24 = swift_allocObject();
      sub_226E92AB8(v54, v24 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0(v55);
    }

    else
    {
      sub_226F099DC();
      v36 = swift_allocError();
      *v37 = 0;
      *(swift_allocObject() + 16) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
      sub_227669280();
    }

    v38 = v45;
    v39 = v46;
    (*(v14 + 16))(v45, v18, v46);
    v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v41 = swift_allocObject();
    (*(v14 + 32))(v41 + v40, v38, v39);
    v42 = (v41 + ((v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_226F08FD4;
    v42[1] = 0;
    sub_227669270();
    return (*(v14 + 8))(v18, v39);
  }

  else
  {
    (*(v11 + 32))(v13, v21, v10);
    v51 = v13;
    sub_2276665A0();
    if ((*(v50 + 48))(v7, 1, v8) == 1)
    {
      sub_226E97D1C(v7, &qword_27D7B8428, &qword_227675CB0);
      v25 = v49;
      swift_storeEnumTagMultiPayload();
      v26 = v48;
      sub_226F09804(v25, v48, type metadata accessor for MetricServiceSubscriptionState);
      v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v28 = swift_allocObject();
      sub_226F0986C(v26, v28 + v27, type metadata accessor for MetricServiceSubscriptionState);
      sub_227669280();
      sub_226F09914(v25, type metadata accessor for MetricServiceSubscriptionState);
    }

    else
    {
      v29 = v50;
      v30 = v44;
      (*(v50 + 32))(v44, v7, v8);
      v31 = v49;
      (*(v29 + 16))(v49, v30, v8);
      swift_storeEnumTagMultiPayload();
      v32 = v48;
      sub_226F09804(v31, v48, type metadata accessor for MetricServiceSubscriptionState);
      v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v34 = swift_allocObject();
      sub_226F0986C(v32, v34 + v33, type metadata accessor for MetricServiceSubscriptionState);
      sub_227669280();
      sub_226F09914(v31, type metadata accessor for MetricServiceSubscriptionState);
      (*(v29 + 8))(v44, v8);
    }

    return (*(v11 + 8))(v51, v10);
  }
}

uint64_t sub_226F085B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = swift_projectBox();
  sub_226F09804(a1, v5, type metadata accessor for MetricServiceSubscriptionState);
  v7 = type metadata accessor for MetricServiceSubscriptionState(0);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_226F09BAC(v5, v6, &qword_27D7B8418, &qword_227670878);
}

uint64_t sub_226F086DC@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v71 = a5;
  v6 = sub_22766B390();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MetricRecordingContext(0);
  v57 = *(v70 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v70);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v55 - v13;
  v62 = type metadata accessor for MetricServiceSubscriptionState(0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_2276666A0();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x28223BE20](v18);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - v21;
  v23 = sub_227666C80();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v67 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_projectBox();
  v27 = swift_projectBox();
  v60 = swift_projectBox();
  swift_beginAccess();
  v28 = *(a1 + 16);
  if (v28 != 3)
  {
    swift_beginAccess();
    sub_226E93170(v26, v22, &qword_27D7B8408, &qword_2276852B0);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      v29 = &qword_27D7B8408;
      v30 = &qword_2276852B0;
      v31 = v22;
    }

    else
    {
      v32 = v67;
      (*(v24 + 32))(v67, v22, v23);
      swift_beginAccess();
      sub_226E93170(v27, v17, &qword_27D7B8410, &qword_227670870);
      v34 = v65;
      v33 = v66;
      if ((*(v65 + 48))(v17, 1, v66) == 1)
      {
        (*(v24 + 8))(v32, v23);
        v29 = &qword_27D7B8410;
        v30 = &qword_227670870;
        v31 = v17;
      }

      else
      {
        v35 = v64;
        (*(v34 + 32))(v64, v17, v33);
        v36 = v60;
        swift_beginAccess();
        v37 = v36;
        v38 = v63;
        sub_226E93170(v37, v63, &qword_27D7B8418, &qword_227670878);
        if ((*(v61 + 48))(v38, 1, v62) != 1)
        {
          v46 = v56;
          sub_226F0986C(v38, v56, type metadata accessor for MetricServiceSubscriptionState);
          v47 = v35;
          v48 = v70;
          v49 = *(v70 + 20);
          v50 = *(v24 + 16);
          v69 = v24;
          v51 = v59;
          v50(&v59[v49], v67, v23);
          (*(v34 + 16))(&v51[*(v48 + 24)], v47, v33);
          sub_226F09804(v46, &v51[*(v48 + 28)], type metadata accessor for MetricServiceSubscriptionState);
          *v51 = v28;
          v52 = v58;
          sub_226F09804(v51, v58, type metadata accessor for MetricRecordingContext);
          v53 = (*(v57 + 80) + 16) & ~*(v57 + 80);
          v54 = swift_allocObject();
          sub_226F0986C(v52, v54 + v53, type metadata accessor for MetricRecordingContext);
          sub_227669280();
          sub_226F09914(v51, type metadata accessor for MetricRecordingContext);
          sub_226F09914(v46, type metadata accessor for MetricServiceSubscriptionState);
          (*(v34 + 8))(v64, v33);
          return (*(v69 + 8))(v67, v23);
        }

        (*(v34 + 8))(v35, v33);
        (*(v24 + 8))(v67, v23);
        v29 = &qword_27D7B8418;
        v30 = &qword_227670878;
        v31 = v38;
      }
    }

    sub_226E97D1C(v31, v29, v30);
  }

  sub_22766A740();
  v39 = sub_22766B380();
  v40 = sub_22766C8B0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_226E8E000, v39, v40, "Metric recording missing required info, dropping click event", v41, 2u);
    MEMORY[0x22AA9A450](v41, -1, -1);
  }

  (*(v68 + 8))(v8, v69);
  v42 = sub_2276636A0();
  sub_226F09790();
  v43 = swift_allocError();
  (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D500C8], v42);
  *(swift_allocObject() + 16) = v43;
  return sub_227669280();
}

uint64_t sub_226F08FD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v32 = &v32 - v12;
  v13 = sub_227667900();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v15;
  sub_2276678E0();
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v17);
  (*(v16 + 8))(v15, v17, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226F09448;
  *(v18 + 24) = 0;
  v19 = v33;
  (*(v3 + 16))(v5, v8, v33);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v5, v19);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226F09A30;
  v22[1] = v18;
  type metadata accessor for MetricServiceSubscriptionState(0);
  v23 = v32;
  sub_227669270();
  (*(v3 + 8))(v8, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_226F094D0;
  *(v24 + 24) = 0;
  v25 = v34;
  v26 = v23;
  v27 = v36;
  (*(v9 + 16))(v34, v23, v36);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  (*(v9 + 32))(v29 + v28, v25, v27);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_226F09A60;
  v30[1] = v24;
  sub_227669270();
  (*(v9 + 8))(v26, v27);
  return (*(v37 + 8))(v35, v38);
}

uint64_t sub_226F09448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227665AD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for MetricServiceSubscriptionState(0);
  return swift_storeEnumTagMultiPayload();
}

id sub_226F094D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_226F09B58();
  if (sub_2276660E0())
  {
    type metadata accessor for MetricServiceSubscriptionState(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = a1;
    type metadata accessor for MetricServiceSubscriptionState(0);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t sub_226F09590(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

unint64_t sub_226F09790()
{
  result = qword_28139BCC0;
  if (!qword_28139BCC0)
  {
    sub_2276636A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BCC0);
  }

  return result;
}

uint64_t sub_226F09804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F0986C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F09914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226F099DC()
{
  result = qword_28139B558;
  if (!qword_28139B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B558);
  }

  return result;
}

uint64_t sub_226F09A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_226F09B58()
{
  result = qword_28139B550;
  if (!qword_28139B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B550);
  }

  return result;
}

uint64_t sub_226F09BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_72Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void *sub_226F09D80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);

  return v0;
}

uint64_t sub_226F09DE8()
{
  sub_226F09D80();

  return swift_deallocClassInstance();
}

uint64_t sub_226F09E40()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F09F0C, 0, 0);
}

uint64_t sub_226F09F0C()
{
  __swift_project_boxed_opaque_existential_0((v0[2] + 16), *(v0[2] + 40));
  v1 = off_283AB4FA0;
  type metadata accessor for AccountSyncStatusObserver();
  v1();
  v2 = sub_227664EE0();
  v4 = v3;
  if (v2 == sub_227664EE0() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_22766D190();

    if ((v7 & 1) == 0)
    {
LABEL_12:

      v15 = v0[1];

      return v15(0);
    }
  }

  sub_2276693D0();
  if (sub_227669390())
  {
    sub_22766A6B0();
    v8 = sub_22766B380();
    v9 = sub_22766C8B0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v8, v9, "Account is in upgradable state, but the device is in demo mode. Not showing UpgradeUI.", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
    goto LABEL_12;
  }

  sub_22766A6B0();
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_226E8E000, v17, v18, "Account is in an upgradable state, checking if shown UpgradeUI before.", v19, 2u);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  v21 = v0[4];
  v20 = v0[5];
  v23 = v0[2];
  v22 = v0[3];

  (*(v21 + 8))(v20, v22);
  v24 = v23[32];
  v25 = v23[33];
  __swift_project_boxed_opaque_existential_0(v23 + 29, v24);
  v26 = *(v25 + 24);

  v30 = (v26 + *v26);
  v27 = swift_task_alloc();
  v0[7] = v27;
  *v27 = v0;
  v27[1] = sub_226F0A2A8;
  v28 = v0[2];
  v29 = MEMORY[0x277D839B0];

  return (v30)(v0 + 9, sub_226F1974C, v28, v29, v24, v25);
}

uint64_t sub_226F0A2A8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226F0A438;
  }

  else
  {

    v2 = sub_226F0A3C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0A3C4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226F0A438()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_226F0A4B4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  result = sub_22712E360(a1);
  if (!v2)
  {
    if (result)
    {
      sub_22766A6B0();
      v18 = sub_22766B380();
      v19 = sub_22766C8B0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_226E8E000, v18, v19, "Device has shown UpgradeUI before. Not showing.", v20, 2u);
        MEMORY[0x22AA9A450](v20, -1, -1);
      }

      result = (*(v6 + 8))(v8, v5);
      v17 = 0;
    }

    else
    {
      sub_22766A6B0();
      v13 = sub_22766B380();
      v14 = sub_22766C8B0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_226E8E000, v13, v14, "Device hasn't shown UpgradeUI before. Showing.", v15, 2u);
        MEMORY[0x22AA9A450](v15, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
      v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      result = sub_2275542CC(&unk_283A91898, v16[1], *(v16 + 16), v16[3]);
      v17 = 1;
    }

    *a2 = v17;
  }

  return result;
}

uint64_t sub_226F0A70C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_2276694E0();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0A828, 0, 0);
}

uint64_t sub_226F0A828()
{
  v47 = v0;
  sub_22766A6B0();

  v1 = sub_22766B380();
  v2 = sub_22766C8B0();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136446210;
    sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v9 = sub_22766C610();
    v11 = sub_226E97AE8(v9, v10, &v46);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v1, v2, "Need to Bootstrap: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v17 = *(v14 + 56);
  v16 = v14 + 56;
  v15 = v17;
  v18 = -1 << *(*(v0 + 120) + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v44 = *(v0 + 120);

  result = swift_beginAccess();
  v22 = 0;
  v23 = (63 - v18) >> 6;
  v43 = (v12 + 8);
  v24 = MEMORY[0x277D84F90];
  v42 = v13;
  if (v20)
  {
    while (1)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v12 + 16))(*(v0 + 152), *(v44 + 48) + *(v12 + 72) * (v26 | (v22 << 6)), *(v0 + 136));
      v27 = *(v13 + 352);
      if (!*(v27 + 16))
      {
        goto LABEL_9;
      }

      v28 = *(v0 + 152);

      v29 = sub_226F39E30(v28);
      if (v30)
      {
        v31 = *(v0 + 152);
        v32 = v24;
        v33 = *(v0 + 136);
        sub_226E91B50(*(v27 + 56) + 40 * v29, v0 + 56);
        v34 = v33;
        v24 = v32;
        (*v43)(v31, v34);

        sub_226E92AB8((v0 + 56), v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2273A4CC4(0, v32[2] + 1, 1, v32);
        }

        v36 = v24[2];
        v35 = v24[3];
        v13 = v42;
        if (v36 >= v35 >> 1)
        {
          v24 = sub_2273A4CC4((v35 > 1), v36 + 1, 1, v24);
        }

        v24[2] = v36 + 1;
        result = sub_226E92AB8((v0 + 16), &v24[5 * v36 + 4]);
        if (!v20)
        {
          goto LABEL_10;
        }
      }

      else
      {

LABEL_9:
        result = (*v43)(*(v0 + 152), *(v0 + 136));
        if (!v20)
        {
          goto LABEL_10;
        }
      }
    }
  }

  while (1)
  {
LABEL_10:
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 >= v23)
    {
      break;
    }

    v20 = *(v16 + 8 * v25);
    ++v22;
    if (v20)
    {
      v22 = v25;
      goto LABEL_14;
    }
  }

  v37 = *(v0 + 128);

  __swift_project_boxed_opaque_existential_0(v37 + 39, v37[42]);
  *(v0 + 224) = 10;
  v38 = v24;
  *(v0 + 184) = sub_226F19410();
  *(v0 + 192) = sub_226F19464();
  sub_22766A130();
  v39 = v37[33];
  __swift_project_boxed_opaque_existential_0(v37 + 29, v37[32]);
  v40 = swift_allocObject();
  *(v0 + 200) = v40;
  *(v40 + 16) = v38;
  v45 = (*(v39 + 24) + **(v39 + 24));
  v41 = swift_task_alloc();
  *(v0 + 208) = v41;
  *v41 = v0;
  v41[1] = sub_226F0AD88;

  return v45();
}

uint64_t sub_226F0AD88()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226F0AFB4;
  }

  else
  {

    v2 = sub_226F0AEA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0AEA4()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 128) + 312), *(*(v0 + 128) + 336));
  *(v0 + 226) = 10;
  sub_22766A120();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0AFB4()
{
  v1 = *(v0 + 128);

  __swift_project_boxed_opaque_existential_0((v1 + 312), *(v1 + 336));
  *(v0 + 225) = 10;
  sub_22766A120();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226F0B0C8(char a1)
{
  *(v2 + 264) = v1;
  *(v2 + 696) = a1;
  *(v2 + 272) = *(type metadata accessor for SyncZoneChangeset(0) - 8);
  *(v2 + 280) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960);
  *(v2 + 288) = v3;
  *(v2 + 296) = *(v3 - 8);
  *(v2 + 304) = swift_task_alloc();
  v4 = sub_22766B390();
  *(v2 + 312) = v4;
  *(v2 + 320) = *(v4 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0B258, 0, 0);
}

uint64_t sub_226F0B258()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 696);
  sub_22766A6B0();
  sub_22766B370();
  v5 = *(v3 + 8);
  *(v0 + 344) = v5;
  *(v0 + 352) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4 == 1)
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 312);
    v8 = *(v0 + 264);
    sub_22766A6B0();
    sub_22766B370();
    v5(v6, v7);
    v9 = sub_2276694D0();

    v10 = sub_226F17C84(v9, v8);

    v11 = v8[33];
    __swift_project_boxed_opaque_existential_0(v8 + 29, v8[32]);
    v12 = swift_allocObject();
    *(v0 + 360) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v8;
    v13 = *(v11 + 24);

    v23 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 368) = v14;
    *v14 = v0;
    v14[1] = sub_226F0B690;

    return v23();
  }

  else
  {
    sub_226F0E468();
    v16 = *(v0 + 264);
    v17 = v16[32];
    v18 = v16[33];
    __swift_project_boxed_opaque_existential_0(v16 + 29, v17);
    v19 = *(v18 + 24);

    v24 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 384) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
    *(v0 + 392) = v21;
    *v20 = v0;
    v20[1] = sub_226F0BA2C;
    v22 = *(v0 + 264);

    return (v24)(v0 + 224, sub_226F0E75C, v22, v21, v17, v18);
  }
}

uint64_t sub_226F0B690()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_226F0B998;
  }

  else
  {

    v2 = sub_226F0B7AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0B7AC(uint64_t a1)
{
  v2 = v1[47];
  sub_226F0E468();
  if (v2)
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[33];
    v6 = v5[32];
    v7 = v5[33];
    __swift_project_boxed_opaque_existential_0(v5 + 29, v6);
    v8 = *(v7 + 24);

    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[48] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
    v1[49] = v10;
    *v9 = v1;
    v9[1] = sub_226F0BA2C;
    v11 = v1[33];

    return (v12)(v1 + 28, sub_226F0E75C, v11, v10, v6, v7);
  }
}

uint64_t sub_226F0B998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0BA2C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_226F0D800;
  }

  else
  {

    v2 = sub_226F0BB48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0BB48()
{
  v1 = sub_226F0E778(v0[28], type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow);

  v0[51] = sub_226F3E1C0(v1);

  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_226F0BC38;

  return sub_226F0F10C();
}

uint64_t sub_226F0BC38(char a1)
{
  *(*v1 + 697) = a1;

  return MEMORY[0x2822009F8](sub_226F0BD38, 0, 0);
}

uint64_t sub_226F0BD38(uint64_t a1)
{
  v2 = *(v1 + 408);
  v3 = sub_2276694D0();
  if (*(v2 + 16) <= *(v3 + 16) >> 3)
  {
    v12 = v3;
    sub_227006010(*(v1 + 408));

    v4 = v12;
  }

  else
  {
    v4 = sub_227006D08(*(v1 + 408), v3);
  }

  *(v1 + 424) = v4;
  v5 = *(v1 + 697);
  v6 = *(v1 + 264);
  v7 = swift_allocObject();
  *(v1 + 432) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  v8 = swift_task_alloc();
  *(v1 + 440) = v8;
  v9 = sub_2276694E0();
  v10 = sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  *v8 = v1;
  v8[1] = sub_226F0BED0;

  return MEMORY[0x2821AFAF0](&unk_227670980, v7, v4, v9, v10);
}

uint64_t sub_226F0BED0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = sub_226F0D894;
  }

  else
  {

    *(v4 + 456) = a1;
    v5 = sub_226F0C008;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F0C008()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 264);

  *(v0 + 464) = sub_226F17C84(v1, v2);

  v3 = v2[32];
  v4 = v2[33];
  __swift_project_boxed_opaque_existential_0(v2 + 29, v3);
  v5 = *__swift_project_boxed_opaque_existential_0(v2 + 22, v2[25]);
  *(v0 + 40) = type metadata accessor for SyncDataStore();
  *(v0 + 48) = &off_283AA0CC8;
  *(v0 + 16) = v5;
  sub_226E91B50(v0 + 16, v0 + 56);
  v6 = swift_allocObject();
  sub_226E92AB8((v0 + 56), v6 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = swift_allocObject();
  *(v0 + 472) = v7;
  *(v7 + 16) = sub_226F180EC;
  *(v7 + 24) = v6;
  v11 = (*(v4 + 24) + **(v4 + 24));
  v8 = swift_task_alloc();
  *(v0 + 480) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8440, &qword_227670988);
  *v8 = v0;
  v8[1] = sub_226F0C238;

  return v11(v0 + 232, sub_226F18108, v7, v9, v3, v4);
}

uint64_t sub_226F0C238()
{
  *(*v1 + 488) = v0;

  if (v0)
  {

    v2 = sub_226F0D930;
  }

  else
  {
    v2 = sub_226F0C37C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0C37C()
{
  v1 = *(v0 + 697);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  *(v0 + 496) = v3;
  v4 = swift_allocObject();
  *(v0 + 504) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  v6 = type metadata accessor for DirtySyncZone(0);
  v7 = sub_226F1950C(&qword_28139B080, type metadata accessor for DirtySyncZone, &unk_22767D880);
  *v5 = v0;
  v5[1] = sub_226F0C4BC;

  return MEMORY[0x2821AFAF0](&unk_227670998, v4, v3, v6, v7);
}

uint64_t sub_226F0C4BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {

    v5 = sub_226F0D9BC;
  }

  else
  {
    *(v4 + 528) = a1;
    v5 = sub_226F0C60C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F0C60C()
{
  v1 = v0[66];
  v2 = v0[58];
  v3 = v0[33];

  v4 = sub_226F184E8(v1, v3);
  v0[67] = v4;

  v5 = sub_226F0E778(v4, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone);
  v6 = sub_22742F5B4(v5, v2);
  v0[68] = v6;

  if (*(v6 + 16))
  {
    v7 = v0[43];
    v8 = v0[42];
    v9 = v0[39];
    v10 = v0[33];
    sub_22766A6B0();
    sub_22766B370();
    v7(v8, v9);
    v11 = v10[32];
    v12 = v10[33];
    __swift_project_boxed_opaque_existential_0(v10 + 29, v11);
    v13 = swift_allocObject();
    v0[69] = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v6;
    v14 = *(v12 + 24);

    v20 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[70] = v15;
    *v15 = v0;
    v15[1] = sub_226F0C92C;
    v16 = v0[49];

    return (v20)(v0 + 30, sub_226F18920, v13, v16, v11, v12);
  }

  else
  {

    sub_226F1893C();
    swift_allocError();
    *v18 = 12;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_226F0C92C()
{
  *(*v1 + 568) = v0;

  if (v0)
  {

    v2 = sub_226F0DD60;
  }

  else
  {
    v2 = sub_226F0CA7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0CA7C()
{
  v1 = v0[33];
  v2 = v0[30];
  v0[72] = v2;
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  v3 = swift_task_alloc();
  v0[73] = v3;
  *v3 = v0;
  v3[1] = sub_226F0CB2C;
  v4 = v0[68];

  return sub_2270674E8(v2, v4);
}

uint64_t sub_226F0CB2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {

    v4 = sub_226F0D1B8;
  }

  else
  {

    v4 = sub_226F0CCB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0CCB0()
{
  v48 = v0;
  v1 = *(v0 + 592);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 296);
    v43 = *(v0 + 288);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v47 = MEMORY[0x277D84F90];
    sub_226F1EFB0(0, v2, 0);
    v6 = v47;
    v44 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v45 = v4;
    v7 = v5;
    v8 = swift_beginAccess();
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v1 + 16))
      {
        __break(1u);
        return MEMORY[0x2821AFB10](v8, v9, v10, v11, v12);
      }

      sub_226F19570(v44 + *(v45 + 72) * v13, *(v0 + 280), type metadata accessor for SyncZoneChangeset);
      v14 = *(v7 + 352);
      if (!*(v14 + 16))
      {
        break;
      }

      v15 = *(v0 + 280);

      v16 = sub_226F39E30(v15);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 280);
      sub_226E91B50(*(v14 + 56) + 40 * v16, v0 + 136);

      sub_226E92AB8((v0 + 136), v0 + 96);
      v20 = *(v43 + 48);
      sub_226E92AB8((v0 + 96), v18);
      sub_226F195D8(v19, v18 + v20, type metadata accessor for SyncZoneChangeset);
      v47 = v6;
      v22 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1EFB0((v21 > 1), v22 + 1, 1);
        v6 = v47;
      }

      ++v13;
      v23 = *(v0 + 304);
      *(v6 + 16) = v22 + 1;
      v8 = sub_226F18990(v23, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22);
      if (v2 == v13)
      {

        goto LABEL_18;
      }
    }

LABEL_12:
    v24 = *(v0 + 280);

    sub_226F1893C();
    v25 = swift_allocError();
    *v26 = 11;
    swift_willThrow();
    sub_226F19640(v24, type metadata accessor for SyncZoneChangeset);

    *(v0 + 656) = v25;
    sub_22766A6B0();
    v27 = v25;
    v28 = sub_22766B380();
    v29 = sub_22766C890();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 344);
    v32 = *(v0 + 328);
    v33 = *(v0 + 312);
    if (v30)
    {
      v46 = *(v0 + 344);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = MEMORY[0x22AA995D0](*(v0 + 184), *(v0 + 192));
      v38 = sub_226E97AE8(v36, v37, &v47);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_226E8E000, v28, v29, "Failed to save, due to error: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      v46(v32, v33);
    }

    else
    {

      v31(v32, v33);
    }

    v39 = swift_task_alloc();
    *(v0 + 664) = v39;
    *v39 = v0;
    v39[1] = sub_226F0DA48;

    return sub_226F10AC8(v25);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_18:
    *(v0 + 608) = v6;
    *(v0 + 256) = v6;
    v41 = swift_task_alloc();
    *(v0 + 616) = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8448, &unk_2276709B0);
    v12 = sub_226E9CFD0(&qword_281398F78, &qword_27D7B8448, &unk_2276709B0, MEMORY[0x277D83988]);
    *v41 = v0;
    v41[1] = sub_226F0D3A8;
    v9 = &unk_2276709A8;
    v8 = 5;
    v10 = 0;
    v11 = v42;

    return MEMORY[0x2821AFB10](v8, v9, v10, v11, v12);
  }
}