uint64_t sub_264888994()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264888A58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264888A98()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264888B64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264888BA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_264888D34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2648B88D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_264888EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B8874();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264888FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2648B8874();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2648890C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2648891AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264889364()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2648893B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2648893F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
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

uint64_t sub_2648895A0()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_264889708()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264889878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26488990C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
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

uint64_t sub_264889AAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_2648B88D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_264889B50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_2648B88D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264889BFC()
{
  MEMORY[0x266743A70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889C44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264889C84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889CBC()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264889D80()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82070, &qword_2648BB248);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_264889DB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82078, &qword_2648BB250);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_264889E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B8874();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264889EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2648B8874();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_264889F98()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
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

uint64_t sub_26488A120()
{
  v0 = swift_allocObject();
  sub_26488A158();
  return v0;
}

void *sub_26488A158()
{
  v1 = v0;
  v12 = sub_2648B8E54();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648B8EB4();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2648B8B54();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2648910A8(0, &qword_280F78F88, 0x277D85C90);
  v11[0] = "ility";
  v11[1] = v7;
  sub_2648B8B44();
  v13 = MEMORY[0x277D84F90];
  sub_26488BBE0(&qword_280F78F90, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90, MEMORY[0x277D83970]);
  sub_2648B8F24();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v12);
  v8 = sub_2648B8EC4();
  v9 = MEMORY[0x277D84F98];
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  return v1;
}

uint64_t sub_26488A418()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t sub_26488A48C(uint64_t a1)
{
  v2 = *v1;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v2);
  return sub_2648B9214();
}

uint64_t sub_26488A4D0()
{
  v1[26] = v0;
  v2 = sub_2648B8B14();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v3, type metadata accessor for SharingController, &unk_2648B9B40);
  v5 = sub_2648B8CB4();
  v1[32] = v5;
  v1[33] = v4;

  return MEMORY[0x2822009F8](sub_26488A5F8, v5, v4);
}

uint64_t sub_26488A5F8()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_2648A5874();
  v0[34] = v4;
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will fetch list of eligible devices", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[26];

  v13 = *(v11 + 8);
  v0[37] = v13;
  v13(v9, v10);
  v14 = *(v12 + 16);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_26488A7F0;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B88, &qword_2648B9AD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26488AE24;
  v0[13] = &block_descriptor_37;
  v0[14] = v15;
  [v14 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26488A7F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_26488AC58;
  }

  else
  {
    v5 = sub_26488A920;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_26488A920()
{
  v28 = v0;
  v1 = *(v0 + 184);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_2648B8F54())
    {
      goto LABEL_8;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_8;
  }

  (*(v0 + 280))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
  v2 = sub_2648B8AF4();
  v3 = sub_2648B8E44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264887000, v2, v3, "No devices are eligible", v4, 2u);
    MEMORY[0x2667439C0](v4, -1, -1);
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);

  v5(v6, v7);
LABEL_8:
  v26 = MEMORY[0x277D84F98];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2648B8F44();
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    sub_2648B8E14();
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
  }

  else
  {
    v13 = -1 << *(v1 + 32);
    v8 = v1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v1 + 56);

    v11 = 0;
    v9 = v1;
  }

  v16 = (v10 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_19:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_25:
      sub_264891158(v9);

      v23 = v26;
      v24 = *(v0 + 304) != 0;

      v25 = *(v0 + 8);

      v25(v23, v24);
      return;
    }

    while (1)
    {
      v27 = v21;
      sub_26488AF20(&v26, &v27);

      v11 = v19;
      v12 = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_21:
      v22 = sub_2648B8F64();
      if (v22)
      {
        *(v0 + 200) = v22;
        sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
        swift_dynamicCast();
        v21 = *(v0 + 192);
        v19 = v11;
        v20 = v12;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_25;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_26488AC58()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[34];
  v4 = v0[29];
  v5 = v0[27];
  swift_willThrow();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[38];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_264887000, v7, v8, "Failed to list candidate devices: %@", v10, 0xCu);
    sub_264891214(v11, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v11, -1, -1);
    MEMORY[0x2667439C0](v10, -1, -1);
  }

  v14 = v0[37];
  v15 = v0[29];
  v16 = v0[27];

  v14(v15, v16);
  v17 = v0[38];

  v18 = v0[1];

  return v18(v17, v17 != 0);
}

uint64_t sub_26488AE24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    **(*(v4 + 64) + 40) = sub_2648B8E04();

    return MEMORY[0x282200950](v4);
  }
}

void sub_26488AF20(uint64_t *a1, void **a2)
{
  v4 = sub_2648B8B14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v60 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_2648B88D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = [v20 uniqueID];
  if (!v21)
  {
    goto LABEL_4;
  }

  v61 = v19;
  v62 = v5;
  v59 = a1;
  v22 = v4;
  v23 = v21;
  sub_2648B8C24();

  sub_2648B8884();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_264891214(v15, &qword_27FF81BD0, &unk_2648BAEC0);
    v4 = v22;
    v5 = v62;
LABEL_4:
    v24 = sub_2648A5874();
    (*(v5 + 16))(v8, v24, v4);
    v25 = v20;
    v26 = sub_2648B8AF4();
    v27 = sub_2648B8E34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v5;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = v30;
      *v29 = 136446210;
      v31 = [v25 uniqueID];

      if (v31)
      {
        v32 = sub_2648B8C24();
        v34 = v33;

        v35 = sub_26488EB20(v32, v34, &v63);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_264887000, v26, v27, "Device ID is not a UUID: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x2667439C0](v30, -1, -1);
        MEMORY[0x2667439C0](v29, -1, -1);

        (*(v28 + 8))(v8, v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return;
  }

  v36 = v16;
  (*(v17 + 32))(v61, v15, v16);
  v37 = [v20 enabledAsKey];
  v38 = sub_2648A5874();
  v39 = *(v62 + 16);
  v40 = v22;
  if (v37)
  {
    v39(v12, v38, v22);
    v41 = v20;
    v42 = sub_2648B8AF4();
    v43 = sub_2648B8E44();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_264887000, v42, v43, "Unlock enabled for device %{public}@", v44, 0xCu);
      sub_264891214(v45, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v45, -1, -1);
      MEMORY[0x2667439C0](v44, -1, -1);
    }

    (*(v62 + 8))(v12, v22);
    v47 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *v47;
    v49 = 1;
  }

  else
  {
    v50 = v60;
    v39(v60, v38, v40);
    v51 = v20;
    v52 = sub_2648B8AF4();
    v53 = sub_2648B8E44();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138543362;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_264887000, v52, v53, "Unlock not enabled for device %{public}@", v54, 0xCu);
      sub_264891214(v55, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v55, -1, -1);
      MEMORY[0x2667439C0](v54, -1, -1);
    }

    (*(v62 + 8))(v50, v40);
    v47 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *v47;
    v49 = 0;
  }

  v57 = v61;
  sub_26488FEE8(v49, v61, isUniquelyReferenced_nonNull_native);
  (*(v17 + 8))(v57, v36);
  *v47 = v63;
}

uint64_t sub_26488B5AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_264891214(a1, &qword_27FF81BA0, &qword_2648B9C38);
    sub_26488F0C8(v7, a2);
    v12 = sub_2648B88D4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_264891214(v7, &qword_27FF81BA0, &qword_2648B9C38);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_264890088(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2648B88D4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_26488B7E0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B70, &qword_2648B9AA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B80, &qword_2648B9AB0);
  (*(v5 + 104))(v7, *MEMORY[0x277D858A0], v4);
  sub_2648B8D94();
  (*(v5 + 8))(v7, v4);
  v15 = sub_2648B8D14();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v17 = sub_26488BBE0(&qword_280F78F70, v16, type metadata accessor for SharingController, &unk_2648B9B40);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v23;
  *(v19 + 2) = v23;
  *(v19 + 3) = v17;
  *(v19 + 4) = v20;
  (*(v9 + 32))(&v19[v18], v12, v8);
  swift_retain_n();
  sub_26488BD30(0, 0, v3, &unk_2648B9AC0, v19);

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_26488BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2648913EC;

  return sub_26488D194(a5);
}

uint64_t sub_26488BBE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26488BC4C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26488BB44(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26488BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2648911A4(a3, v25 - v10);
  v12 = sub_2648B8D14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264891214(v11, &qword_27FF81B68, &qword_2648BA520);
  }

  else
  {
    sub_2648B8D04();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2648B8CB4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2648B8C44() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_264891214(a3, &qword_27FF81B68, &qword_2648BA520);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264891214(a3, &qword_27FF81B68, &qword_2648BA520);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26488C030(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_2648B88D4();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_2648B8B14();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v5, type metadata accessor for SharingController, &unk_2648B9B40);
  v7 = sub_2648B8CB4();
  v2[27] = v7;
  v2[28] = v6;

  return MEMORY[0x2822009F8](sub_26488C19C, v7, v6);
}

uint64_t sub_26488C19C()
{
  v1 = *(v0[20] + 16);
  v0[29] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26488C2C4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B88, &qword_2648B9AD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26488AE24;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26488C2C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_26488C6B8;
  }

  else
  {
    v5 = sub_26488C3F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_26488C3F4()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_2648B8F54())
    {
      goto LABEL_8;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_8;
  }

  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = sub_2648A5874();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "No devices are eligible", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];

  (*(v10 + 8))(v9, v11);
LABEL_8:
  v12 = v0[19];
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  sub_26488C8C8(sub_26488C7F8, v13, v1);
  v15 = v14;

  if (v15)
  {
    result = [v15 idsDeviceID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = v0[29];
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];

    v22 = [v18 disableForType:5 withIDSDeviceID:v17];

    sub_2648B88B4();
    (*(v20 + 8))(v19, v21);

    v23 = v0[1];
  }

  else
  {
    v24 = v0[21];
    v25 = v0[22];
    v26 = v0[19];

    type metadata accessor for SharingController.SharingError(0);
    sub_26488CB58();
    swift_allocError();
    (*(v25 + 16))(v27, v26, v24);
    swift_willThrow();

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_26488C6B8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26488C748(uint64_t a1, uint64_t a2)
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

uint64_t sub_26488C7F8(id *a1)
{
  v1 = [*a1 uniqueID];
  if (!v1)
  {
    sub_2648B8894();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_2648B8C24();
  v5 = v4;

  v6 = sub_2648B8894();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_2648B9144();
  }

LABEL_11:

  return v9 & 1;
}

void sub_26488C8C8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2648B8F44();
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    sub_2648B8E14();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2648B8F64())
        {
          goto LABEL_20;
        }

        sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_264891158(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_264891158(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for SharingController.SharingError(uint64_t a1)
{
  result = qword_27FF82280;
  if (!qword_27FF82280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26488CB58()
{
  result = qword_27FF82170[0];
  if (!qword_27FF82170[0])
  {
    type metadata accessor for SharingController.SharingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82170);
  }

  return result;
}

uint64_t sub_26488CBB0(void *a1, int a2)
{
  v18 = a2;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  swift_beginAccess();
  v7 = *(v2 + 32);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = (*(v4 + 8))(v6, v3))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v4 + 16))(v6, *(v7 + 56) + *(v4 + 72) * (v15 | (v14 << 6)), v3);
    sub_264890BE4(v17, v18 & 1, v6);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26488CD7C()
{
  v1[2] = v0;
  v2 = sub_2648B8B14();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v3, type metadata accessor for SharingController, &unk_2648B9B40);
  v5 = sub_2648B8CB4();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_26488CE8C, v5, v4);
}

uint64_t sub_26488CE8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2648A5874();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2648B8AF4();
  v6 = sub_2648B8E44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264887000, v5, v6, "Authentication state changed", v7, 2u);
    MEMORY[0x2667439C0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_26488CFD8;

  return sub_26488A4D0();
}

uint64_t sub_26488CFD8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);

  return MEMORY[0x2822009F8](sub_26488D104, v6, v5);
}

uint64_t sub_26488D104()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_26488CBB0(v1, v2 & 1);
  sub_26488E84C(v1, v2 & 1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26488D194(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38);
  v2[21] = swift_task_alloc();
  v5 = sub_2648B88D4();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  type metadata accessor for SharingController();
  v2[27] = sub_26488BBE0(&qword_280F78F70, v7, type metadata accessor for SharingController, &unk_2648B9B40);
  v9 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488D39C, v9, v8);
}

uint64_t sub_26488D39C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  sub_2648B88C4();
  swift_beginAccess();
  v31 = *(v4 + 16);
  v32 = *(*(v9 + 32) + 16);
  v31(v1, v2, v3);
  v33 = *(v7 + 16);
  v33(v5, v8, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  sub_26488B5AC(v5, v1);
  swift_endAccess();
  if (!v32)
  {
    v10 = v0[15];
    v11 = *(v10 + 16);
    v0[6] = sub_26488E798;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26488DA30;
    v0[5] = &block_descriptor_23;
    v12 = _Block_copy(v0 + 2);

    [v11 startObservingForAuthenticationStateChanges:v12 queue:*(v10 + 24)];
    _Block_release(v12);
  }

  v13 = v0[25];
  v15 = v0[22];
  v14 = v0[23];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[27];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[14];
  v19 = v0[15];
  v30 = v0[26];
  (v31)(v13);
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v14 + 32))(v21 + v20, v13, v15);

  sub_2648B8DA4();
  v22 = sub_2648B8D14();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  v33(v28, v18, v17);
  v23 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v19;
  *(v24 + 3) = v29;
  *(v24 + 4) = v19;
  (*(v16 + 32))(&v24[v23], v28, v17);
  swift_retain_n();
  sub_26488BD30(0, 0, v27, &unk_2648B9C48, v24);

  (*(v14 + 8))(v30, v15);

  v25 = v0[1];

  return v25();
}

uint64_t sub_26488D764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2648B8D14();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = sub_26488BBE0(&qword_280F78F70, v6, type metadata accessor for SharingController, &unk_2648B9B40);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = a1;
  swift_retain_n();
  sub_26488BD30(0, 0, v4, &unk_2648B9C58, v8);
}

uint64_t sub_26488D8AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26488D93C;

  return sub_26488CD7C();
}

uint64_t sub_26488D93C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26488DA30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26488DA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2648B8D14();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_26488BD30(0, 0, v9, &unk_2648B9C70, v12);
}

uint64_t sub_26488DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38);
  v5[7] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v6, type metadata accessor for SharingController, &unk_2648B9B40);
  v8 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488DD44, v8, v7);
}

uint64_t sub_26488DD44()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();
  sub_26488F0C8(v1, v2);
  sub_264891214(v1, &qword_27FF81BA0, &qword_2648B9C38);
  swift_endAccess();
  if (!*(*(v3 + 32) + 16))
  {
    [*(v0[5] + 16) stopObservingForAuthenticationStateChanges];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_26488DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA8, &qword_2648B9C60);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_26488DF14;

  return sub_26488A4D0();
}

uint64_t sub_26488DF14(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 25) = a2;

  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v4, type metadata accessor for SharingController, &unk_2648B9B40);
  v6 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488E080, v6, v5);
}

uint64_t sub_26488E080()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  *(v0 + 16) = v1;
  v5 = *(v0 + 25) & 1;
  *(v0 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  sub_2648B8DB4();
  (*(v3 + 8))(v2, v4);
  sub_26488E84C(v1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26488E160()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_26488E1D0()
{
  result = qword_27FF81B90;
  if (!qword_27FF81B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingController.Unlockability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingController.Unlockability(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26488E39C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26488E3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26488E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B88D4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_26488E4D4(uint64_t a1)
{
  result = sub_2648B88D4();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_26488E578()
{
  v1 = *(sub_2648B88D4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26488DA74(v2, v3);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26488E6B4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26488DE18(v5, v6, v7, v4, v0 + v3);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26488E7B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2648913EC;

  return sub_26488D8AC();
}

void sub_26488E84C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26488E858()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26488D93C;

  return sub_26488DC54(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26488E930(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26488EA28;

  return v6(a1);
}

uint64_t sub_26488EA28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26488EB20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26488EBEC(v11, 0, 0, 1, a1, a2);
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
    sub_26488C748(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26488EBEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26488ECF8(a5, a6);
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
    result = sub_2648B8FD4();
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

void *sub_26488ECF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26488ED44(a1, a2);
  sub_26488EE74(&unk_28762E700);
  return v3;
}

void *sub_26488ED44(uint64_t a1, unint64_t a2)
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

  v6 = sub_26488EF60(v5, 0);
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

  result = sub_2648B8FD4();
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
        v10 = sub_2648B8C84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26488EF60(v10, 0);
        result = sub_2648B8F94();
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

uint64_t sub_26488EE74(uint64_t result)
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

  result = sub_26488EFD4(result, v11, 1, v3);
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

void *sub_26488EF60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC8, &unk_2648B9C90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26488EFD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC8, &unk_2648B9C90);
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

uint64_t sub_26488F0C8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_26488F280(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264890888();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2648B88D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_26488FB94(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_26488F280(uint64_t a1)
{
  sub_2648B88D4();
  sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2648B8BC4();

  return sub_264890454(a1, v2);
}

uint64_t sub_26488F31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2648B88D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD8, &unk_2648B9CA0);
  v40 = v4;
  result = sub_2648B9024();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26488F6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_2648B88D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB0, &qword_2648B9C78);
  v47 = v4;
  result = sub_2648B9024();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_26488FB94(int64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2648B8F34();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_2648B8BC4();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26488FEE8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26488F280(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_264890618();
    goto LABEL_7;
  }

  sub_26488F31C(result, a3 & 1);
  result = sub_26488F280(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_264890298(v14, v11, a1 & 1, v20);
}

uint64_t sub_264890088(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26488F280(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_264890888();
      goto LABEL_7;
    }

    sub_26488F6E0(v17, a3 & 1);
    v28 = sub_26488F280(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_264890354(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_264890298(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3 & 1;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264890354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_264890454(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26488BBE0(&qword_280F796D8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2648B8BE4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_264890618()
{
  v1 = v0;
  v31 = sub_2648B88D4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD8, &unk_2648B9CA0);
  v3 = *v0;
  v4 = sub_2648B9014();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_264890888()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_2648B88D4();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB0, &qword_2648B9C78);
  v4 = *v0;
  v5 = sub_2648B9014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_264890BE4(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA8, &qword_2648B9C60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = sub_2648B8B14();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (a2)
  {
    v44 = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
    swift_willThrowTypedImpl();
    v18 = sub_2648A5874();
    (*(v11 + 16))(v14, v18, v10);
    v19 = a1;
    v20 = sub_2648B8AF4();
    v21 = sub_2648B8E34();
    sub_26488E84C(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_264887000, v20, v21, "Failed to get info about device unlockability: %{public}@", v22, 0xCu);
      sub_264891214(v23, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v23, -1, -1);
      MEMORY[0x2667439C0](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v44 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    return sub_2648B8DD4();
  }

  else
  {
    v27 = sub_2648A5874();
    (*(v11 + 16))(v16, v27, v10);

    v28 = sub_2648B8AF4();
    v29 = sub_2648B8E44();
    sub_26488E84C(a1, 0);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = a3;
      v31 = v30;
      v40 = v30;
      v41 = swift_slowAlloc();
      v44 = v41;
      *v31 = 136315138;
      sub_2648B88D4();
      v42 = v6;
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v32 = sub_2648B8BB4();
      LOBYTE(v31) = v29;
      v34 = v7;
      v35 = sub_26488EB20(v32, v33, &v44);
      v6 = v42;

      v36 = v40;
      *(v40 + 4) = v35;
      v7 = v34;
      v37 = v36;
      _os_log_impl(&dword_264887000, v28, v31, "Got info about device unlockability: %s", v36, 0xCu);
      v38 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2667439C0](v38, -1, -1);
      MEMORY[0x2667439C0](v37, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v44 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    sub_2648B8DC4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2648910A8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2648910F0()
{
  result = qword_280F78EB0;
  if (!qword_280F78EB0)
  {
    sub_2648910A8(255, &qword_280F78EB8, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78EB0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2648911A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264891214(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_264891274(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2648913EC;

  return sub_26488E930(a1, v4);
}

uint64_t sub_26489132C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26488D93C;

  return sub_26488E930(a1, v4);
}

uint64_t CompanionDevice.idsDeviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompanionDevice(0) + 20);
  v4 = sub_2648B88D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CompanionDevice.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompanionDevice(0) + 24));

  return v1;
}

uint64_t CompanionDevice.marketingName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompanionDevice(0) + 32));

  return v1;
}

uint64_t CompanionDevice.PairingState.hashValue.getter()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t CompanionDevice.Screen.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x266743400](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x266743400](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x266743400](*&v7);
  if (v5 == 1)
  {
    return sub_2648B91F4();
  }

  sub_2648B91F4();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x266743400](v9);
}

uint64_t CompanionDevice.Screen.hashValue.getter()
{
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_2648917A0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2648917B8()
{
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_264891820(uint64_t a1)
{
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t CompanionDevice.replicatorPairing.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

__n128 CompanionDevice.deviceScreen.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompanionDevice(0) + 52);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

uint64_t CompanionDevice.remoteScreenPairing.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t CompanionDevice.Proximity.hashValue.getter()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t CompanionDevice.proximity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t CompanionDevice.SessionInfo.hash(into:)(uint64_t a1)
{
  v2 = sub_2648B8874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2648B8BD4();
  v9 = type metadata accessor for CompanionDevice.SessionInfo(0);
  sub_264893A10(v1 + *(v9 + 20), v8, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_2648B91F4();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_2648B91F4();
  sub_2648B8BD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CompanionDevice.SessionInfo.hashValue.getter()
{
  v1 = sub_2648B8874();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_2648B91D4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2648B8BD4();
  v8 = type metadata accessor for CompanionDevice.SessionInfo(0);
  sub_264893A10(v0 + *(v8 + 20), v7, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v2 + 8))(v4, v1);
  }

  return sub_2648B9214();
}

uint64_t sub_264891E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2648B8874();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for CompanionDevice.SessionInfo(0);
  return sub_264893A78(a2, a3 + *(v7 + 20), &qword_27FF81BE8, &qword_2648BB0C0);
}

uint64_t sub_264891F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2648B8BD4();
  sub_264893A10(v2 + *(a2 + 20), v10, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_2648B91F4();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_2648B91F4();
  sub_2648B8BD4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_264892110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_2648B91D4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2648B8BD4();
  sub_264893A10(v2 + *(a2 + 20), v10, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v5 + 8))(v7, v4);
  }

  return sub_2648B9214();
}

uint64_t sub_264892378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char *a12, __int128 *a13, char *a14, char *a15, uint64_t a16)
{
  v31 = *a12;
  v32 = *(a13 + 33);
  v33 = *(a13 + 32);
  v34 = *a14;
  v36 = *a15;
  v22 = sub_2648B88D4();
  v23 = *(*(v22 - 8) + 32);
  v29 = a13[1];
  v30 = *a13;
  v23(a9, a1, v22);
  v24 = type metadata accessor for CompanionDevice(0);
  v23(a9 + v24[5], a2, v22);
  v25 = (a9 + v24[6]);
  *v25 = a3;
  v25[1] = a4;
  sub_264893A78(a5, a9 + v24[7], &qword_27FF81BE0, &unk_2648B9CD0);
  v26 = (a9 + v24[8]);
  *v26 = a6;
  v26[1] = a7;
  *(a9 + v24[9]) = a8;
  *(a9 + v24[10]) = a10;
  *(a9 + v24[11]) = a11;
  *(a9 + v24[12]) = v31;
  v27 = a9 + v24[13];
  *v27 = v30;
  *(v27 + 16) = v29;
  *(v27 + 32) = v33;
  *(v27 + 33) = v32;
  *(a9 + v24[14]) = v34;
  *(a9 + v24[15]) = v36;
  return sub_264893A78(a16, a9 + v24[16], &qword_27FF81BF8, &qword_2648B9CE0);
}

uint64_t CompanionDevice.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2648B8874();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - v6;
  v7 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v40 - v10;
  v11 = sub_2648B8AE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  sub_2648B88D4();
  sub_264893AE0(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2648B8BD4();
  v18 = type metadata accessor for CompanionDevice(0);
  sub_2648B8BD4();
  sub_2648B8C54();
  sub_264893A10(v1 + v18[7], v17, &qword_27FF81BE0, &unk_2648B9CD0);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    sub_2648B91F4();
    sub_264893AE0(&qword_27FF81C00, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    sub_2648B8BD4();
    (*(v12 + 8))(v14, v11);
  }

  v19 = v47;
  if (*(v1 + v18[8] + 8))
  {
    sub_2648B91F4();
    sub_2648B8C54();
  }

  else
  {
    sub_2648B91F4();
  }

  sub_2648B91F4();
  sub_2648B91F4();
  sub_2648B91F4();
  v20 = *(v1 + v18[12]);
  sub_2648B91F4();
  if (v20 != 4)
  {
    MEMORY[0x2667433E0](v20);
  }

  v21 = v1 + v18[13];
  if (*(v21 + 33) == 1 || ((v22 = *(v21 + 32), v24 = *(v21 + 16), v23 = *(v21 + 24), v26 = *v21, v25 = *(v21 + 8), sub_2648B91F4(), v26 != 0.0) ? (v27 = v26) : (v27 = 0.0), (MEMORY[0x266743400](*&v27), v25 != 0.0) ? (v28 = v25) : (v28 = 0.0), (MEMORY[0x266743400](*&v28), (v24 & 0x7FFFFFFFFFFFFFFFLL) != 0) ? (v29 = v24) : (v29 = 0), MEMORY[0x266743400](v29), (v22 & 1) != 0))
  {
    sub_2648B91F4();
  }

  else
  {
    sub_2648B91F4();
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v23;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x266743400](v30);
  }

  v31 = *(v1 + v18[14]);
  sub_2648B91F4();
  if (v31 != 4)
  {
    MEMORY[0x2667433E0](v31);
  }

  v32 = *(v1 + v18[15]);
  sub_2648B91F4();
  if (v32 != 2)
  {
    MEMORY[0x2667433E0](v32 & 1);
  }

  v33 = v45;
  sub_264893A10(v2 + v18[16], v45, &qword_27FF81BF8, &qword_2648B9CE0);
  if ((*(v46 + 48))(v33, 1, v19) == 1)
  {
    return sub_2648B91F4();
  }

  v35 = v42;
  sub_264893B28(v33, v42);
  sub_2648B91F4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v36 = v44;
  sub_2648B8BD4();
  v37 = v41;
  sub_264893A10(v35 + *(v19 + 20), v41, &qword_27FF81BE8, &qword_2648BB0C0);
  v38 = v43;
  if ((*(v43 + 48))(v37, 1, v36) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    v39 = v40;
    (*(v38 + 32))(v40, v37, v36);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v38 + 8))(v39, v36);
  }

  return sub_264893B8C(v35);
}

uint64_t CompanionDevice.hashValue.getter()
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)(v1);
  return sub_2648B9214();
}

uint64_t sub_264892CDC()
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)(v1);
  return sub_2648B9214();
}

uint64_t sub_264892D20(uint64_t a1)
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)(v2);
  return sub_2648B9214();
}

uint64_t sub_264892D5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_264892DCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2648B88D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV0A0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

uint64_t sub_264892EB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v75 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C38, &qword_2648BA050);
  MEMORY[0x28223BE20](v80);
  v82 = &v75 - v9;
  v10 = sub_2648B8AE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C40, &qword_2648BA058);
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  if ((sub_2648B88A4() & 1) == 0)
  {
    return 0;
  }

  v78 = v11;
  v20 = type metadata accessor for CompanionDevice(0);
  if ((sub_2648B88A4() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v20 + 24);
  v77 = a1;
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = a2;
  v25 = (a2 + v21);
  v26 = v25[1];
  v27 = v22 == *v25;
  v28 = v20;
  if (!v27 || v23 != v26)
  {
    v29 = sub_2648B9144();
    v28 = v20;
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v75 = v6;
  v76 = v4;
  v30 = v28;
  v31 = *(v28 + 28);
  v32 = *(v17 + 48);
  sub_264893A10(v77 + v31, v19, &qword_27FF81BE0, &unk_2648B9CD0);
  v33 = v24 + v31;
  v34 = v24;
  sub_264893A10(v33, &v19[v32], &qword_27FF81BE0, &unk_2648B9CD0);
  v35 = *(v78 + 48);
  if (v35(v19, 1, v10) == 1)
  {
    if (v35(&v19[v32], 1, v10) == 1)
    {
      sub_264891214(v19, &qword_27FF81BE0, &unk_2648B9CD0);
      goto LABEL_17;
    }

LABEL_12:
    v36 = &qword_27FF81C40;
    v37 = &qword_2648BA058;
    v38 = v19;
LABEL_13:
    sub_264891214(v38, v36, v37);
    return 0;
  }

  sub_264893A10(v19, v16, &qword_27FF81BE0, &unk_2648B9CD0);
  if (v35(&v19[v32], 1, v10) == 1)
  {
    (*(v78 + 8))(v16, v10);
    goto LABEL_12;
  }

  v40 = v78;
  (*(v78 + 32))(v13, &v19[v32], v10);
  sub_264893AE0(&qword_27FF81C48, MEMORY[0x277D85578], MEMORY[0x277D85590]);
  v41 = sub_2648B8BE4();
  v42 = *(v40 + 8);
  v42(v13, v10);
  v42(v16, v10);
  sub_264891214(v19, &qword_27FF81BE0, &unk_2648B9CD0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v43 = v30;
  v44 = v30[8];
  v45 = v77;
  v46 = (v77 + v44);
  v47 = *(v77 + v44 + 8);
  v48 = (v34 + v44);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = sub_2648B9144();
      v43 = v30;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v49)
  {
    return 0;
  }

  if (*(v45 + v43[9]) != *(v34 + v43[9]) || *(v45 + v43[10]) != *(v34 + v43[10]) || *(v45 + v43[11]) != *(v34 + v43[11]))
  {
    return 0;
  }

  v51 = v43[12];
  v52 = *(v45 + v51);
  v53 = *(v34 + v51);
  if (v52 == 4)
  {
    if (v53 != 4)
    {
      return 0;
    }
  }

  else if (v52 != v53)
  {
    return 0;
  }

  v54 = v43[13];
  v55 = v45 + v54;
  v56 = *(v45 + v54 + 33);
  v57 = v34 + v54;
  v58 = *(v57 + 33);
  if (v56)
  {
    goto LABEL_32;
  }

  if (*(v57 + 33))
  {
    return 0;
  }

  result = 0;
  if (*v55 == *v57 && *(v55 + 8) == *(v57 + 8) && *(v55 + 16) == *(v57 + 16))
  {
    v58 = *(v57 + 32);
    if (*(v55 + 32))
    {
LABEL_32:
      if ((v58 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

    result = 0;
    if ((*(v57 + 32) & 1) == 0 && *(v55 + 24) == *(v57 + 24))
    {
LABEL_33:
      v59 = v43[14];
      v60 = *(v45 + v59);
      v61 = *(v34 + v59);
      if (v60 == 4)
      {
        if (v61 != 4)
        {
          return 0;
        }
      }

      else if (v60 != v61)
      {
        return 0;
      }

      v62 = v43[15];
      v63 = *(v45 + v62);
      v64 = *(v34 + v62);
      if (v63 == 2)
      {
        if (v64 != 2)
        {
          return 0;
        }
      }

      else if (v64 == 2 || ((v64 ^ v63) & 1) != 0)
      {
        return 0;
      }

      v65 = v43[16];
      v66 = *(v80 + 48);
      v67 = v45 + v65;
      v68 = v82;
      sub_264893A10(v67, v82, &qword_27FF81BF8, &qword_2648B9CE0);
      sub_264893A10(v34 + v65, v68 + v66, &qword_27FF81BF8, &qword_2648B9CE0);
      v69 = *(v81 + 48);
      v70 = v76;
      if (v69(v68, 1, v76) == 1)
      {
        if (v69(v68 + v66, 1, v70) == 1)
        {
          sub_264891214(v68, &qword_27FF81BF8, &qword_2648B9CE0);
          return 1;
        }
      }

      else
      {
        sub_264893A10(v68, v79, &qword_27FF81BF8, &qword_2648B9CE0);
        if (v69(v68 + v66, 1, v70) != 1)
        {
          v71 = v82;
          v72 = v75;
          sub_264893B28(v82 + v66, v75);
          v73 = v79;
          v74 = _s24ScreenContinuityServices15CompanionDeviceV11SessionInfoV2eeoiySbAE_AEtFZ_0(v79, v72);
          sub_264893B8C(v72);
          sub_264893B8C(v73);
          sub_264891214(v71, &qword_27FF81BF8, &qword_2648B9CE0);
          return v74;
        }

        sub_264893B8C(v79);
        v68 = v82;
      }

      v36 = &qword_27FF81C38;
      v37 = &qword_2648BA050;
      v38 = v68;
      goto LABEL_13;
    }
  }

  return result;
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV11SessionInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C50, &unk_2648BA060);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_2648B8854() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for CompanionDevice.SessionInfo(0) + 20);
  v15 = *(v11 + 48);
  sub_264893A10(a1 + v14, v13, &qword_27FF81BE8, &qword_2648BB0C0);
  sub_264893A10(a2 + v14, &v13[v15], &qword_27FF81BE8, &qword_2648BB0C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_264891214(v13, &qword_27FF81BE8, &qword_2648BB0C0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_264893A10(v13, v10, &qword_27FF81BE8, &qword_2648BB0C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_264891214(v13, &qword_27FF81C50, &unk_2648BA060);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_264893AE0(&qword_27FF81C58, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v19 = sub_2648B8BE4();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_264891214(v13, &qword_27FF81BE8, &qword_2648BB0C0);
  return (v19 & 1) != 0;
}

uint64_t sub_264893A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264893A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_264893AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264893B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264893B8C(uint64_t a1)
{
  v2 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264893BEC()
{
  result = qword_27FF81C08;
  if (!qword_27FF81C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C08);
  }

  return result;
}

unint64_t sub_264893C44()
{
  result = qword_27FF81C10;
  if (!qword_27FF81C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C10);
  }

  return result;
}

unint64_t sub_264893C9C()
{
  result = qword_27FF81C18;
  if (!qword_27FF81C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C18);
  }

  return result;
}

void sub_264893DF0(uint64_t a1)
{
  sub_2648B88D4();
  if (v1 <= 0x3F)
  {
    sub_264893FD4(319, &qword_280F796D0, MEMORY[0x277D85578]);
    if (v2 <= 0x3F)
    {
      sub_264894348(319, &qword_280F78FB0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_264894348(319, qword_280F79408, &type metadata for CompanionDevice.PairingState, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_264894348(319, qword_280F79498, &type metadata for CompanionDevice.Screen, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_264894348(319, &qword_280F79400, &type metadata for CompanionDevice.Proximity, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_264893FD4(319, qword_280F79468, type metadata accessor for CompanionDevice.SessionInfo);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_264893FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2648B8F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CompanionDevice.PairingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompanionDevice.PairingState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264894194(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2648941B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

void sub_26489422C(uint64_t a1)
{
  sub_2648B8874();
  if (v1 <= 0x3F)
  {
    sub_264893FD4(319, &qword_280F796E8, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2648942D8(uint64_t a1, int a2)
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

uint64_t sub_2648942F8(uint64_t result, int a2, int a3)
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

void sub_264894348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ContinuityLaunchRequest.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContinuityLaunchRequest.payload.getter()
{
  v1 = *(v0 + 16);
  sub_264894464(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_264894464(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2648944C0()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2648944F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2648B9144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2648B9144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2648945E8(uint64_t a1)
{
  v2 = sub_264895C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264894624(uint64_t a1)
{
  v2 = sub_264895C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264894660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C88, &qword_2648BA3F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895C58();
  sub_2648B9234();
  LOBYTE(v14) = 0;
  sub_2648B90F4();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_264894464(v12, v13);
    sub_2648958D8();
    sub_2648B9104();
    sub_264894BFC(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2648947FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_264895CAC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t ContinuityLaunchRequest.init(type:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double ContinuityLaunchRequest.init(forAppLaunch:encodedRemoteAppIdentifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_2648B8B14();
  MEMORY[0x28223BE20](v9);
  if (!a2 && a4 >> 60 == 15)
  {
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    sub_2648B8714();
    swift_allocObject();
    sub_264894B80(a3, a4);
    sub_2648B8704();
    sub_264894B94();
    v10 = sub_2648B86F4();
    v12 = v11;

    sub_264894BE8(a3, a4);

    sub_264894BE8(a3, a4);
    *a5 = xmmword_2648BA070;
    *(a5 + 16) = v10;
    *(a5 + 24) = v12;

    sub_264894464(v10, v12);

    sub_264894BFC(v10, v12);
  }

  return result;
}

uint64_t ContinuityAppLaunchRequest.init(bundleIdentifier:encodedRemoteAppIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_264894B80(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264894464(result, a2);
  }

  return result;
}

unint64_t sub_264894B94()
{
  result = qword_27FF81C60;
  if (!qword_27FF81C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C60);
  }

  return result;
}

uint64_t sub_264894BE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264894BFC(result, a2);
  }

  return result;
}

uint64_t sub_264894BFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ContinuityLaunchRequest.translateIfNeeded()@<X0>(void *a1@<X8>)
{
  v3 = sub_2648B8B14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v8 == 0x697463416576696CLL && v7 == 0xEC00000079746976;
  if (v11 || (sub_2648B9144() & 1) != 0)
  {
    v12 = v9;
    v13 = sub_2648A572C();
    (*(v4 + 16))(v6, v13, v3);
    v14 = sub_2648B8AF4();
    v15 = sub_2648B8E44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_264887000, v14, v15, "Translating live activity launch type to 'widget'", v16, 2u);
      MEMORY[0x2667439C0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    *a1 = 0x746567646977;
    a1[1] = 0xE600000000000000;
    a1[2] = v10;
    a1[3] = v12;
    return sub_264894464(v10, v12);
  }

  else
  {
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v10;
    a1[3] = v9;

    return sub_264894464(v10, v9);
  }
}

uint64_t ContinuityLaunchRequest.encode()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2648B8714();
  swift_allocObject();

  sub_264894464(v1, v2);
  sub_2648B8704();
  sub_2648957DC();
  v3 = sub_2648B86F4();

  sub_264894BFC(v1, v2);
  return v3;
}

uint64_t ContinuityLaunchRequest.init(decoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2648B8B14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648B86E4();
  swift_allocObject();
  sub_2648B86D4();
  sub_264895830();
  sub_2648B86C4();
  if (v3)
  {

    v11 = sub_2648A572C();
    (*(v8 + 16))(v10, v11, v7);
    v12 = sub_2648B8AF4();
    v13 = sub_2648B8E34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = a2;
      v15 = v14;
      *v14 = 0;
      _os_log_impl(&dword_264887000, v12, v13, "Error decoding ContinuityLaunchRequest, falling back to legacy notification.", v14, 2u);
      v16 = v15;
      a2 = v21;
      MEMORY[0x2667439C0](v16, -1, -1);
    }

    (*(v8 + 8))(v10, v7);

    v18 = 0x6163696669746F6ELL;
    v19 = 0xEC0000006E6F6974;
  }

  else
  {

    sub_264894BFC(a1, a2);
    v18 = v20[0];
    v19 = v20[1];
    a1 = v20[2];
    a2 = v20[3];

    sub_264894464(a1, a2);

    result = sub_264894BFC(a1, a2);
  }

  *a3 = v18;
  a3[1] = v19;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t ContinuityAppLaunchRequest.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContinuityAppLaunchRequest.encodedRemoteAppIdentifier.getter()
{
  v1 = *(v0 + 16);
  sub_264894B80(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_264895204()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_264895244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002648BBA80 == a2 || (sub_2648B9144() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002648BBAA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2648B9144();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264895328(uint64_t a1)
{
  v2 = sub_264895884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264895364(uint64_t a1)
{
  v2 = sub_264895884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContinuityAppLaunchRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C68, &qword_2648BA088);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895884();
  sub_2648B9234();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_2648B90D4();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_264894B80(v12, v11);
    sub_2648958D8();
    sub_2648B90E4();
    sub_264894BE8(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ContinuityAppLaunchRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C78, &qword_2648BA090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895884();
  sub_2648B9224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_2648B9074();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_26489592C();
  sub_2648B9084();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_264894B80(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_264894BE8(v13, v14);
}

uint64_t sub_264895774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC0, &qword_2648BA080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2648957DC()
{
  result = qword_27FF82890;
  if (!qword_27FF82890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82890);
  }

  return result;
}

unint64_t sub_264895830()
{
  result = qword_27FF82898;
  if (!qword_27FF82898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82898);
  }

  return result;
}

unint64_t sub_264895884()
{
  result = qword_27FF828A0[0];
  if (!qword_27FF828A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF828A0);
  }

  return result;
}

unint64_t sub_2648958D8()
{
  result = qword_27FF81C70;
  if (!qword_27FF81C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C70);
  }

  return result;
}

unint64_t sub_26489592C()
{
  result = qword_27FF81C80;
  if (!qword_27FF81C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C80);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2648959E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_264895A3C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_264895AB4(uint64_t a1, int a2)
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

uint64_t sub_264895B00(uint64_t result, int a2, int a3)
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

unint64_t sub_264895B54()
{
  result = qword_27FF82AB0[0];
  if (!qword_27FF82AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82AB0);
  }

  return result;
}

unint64_t sub_264895BAC()
{
  result = qword_27FF82BC0;
  if (!qword_27FF82BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82BC0);
  }

  return result;
}

unint64_t sub_264895C04()
{
  result = qword_27FF82BC8[0];
  if (!qword_27FF82BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82BC8);
  }

  return result;
}

unint64_t sub_264895C58()
{
  result = qword_27FF82D50[0];
  if (!qword_27FF82D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82D50);
  }

  return result;
}

uint64_t sub_264895CAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C90, &qword_2648BA3F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895C58();
  sub_2648B9224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_2648B9094();
    v11[15] = 1;
    sub_26489592C();
    sub_2648B90A4();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_264894464(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_264894BFC(v9, v10);
  }

  return v7;
}

unint64_t sub_264895EE4()
{
  result = qword_27FF82E60[0];
  if (!qword_27FF82E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82E60);
  }

  return result;
}

unint64_t sub_264895F3C()
{
  result = qword_27FF82F70;
  if (!qword_27FF82F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82F70);
  }

  return result;
}

unint64_t sub_264895F94()
{
  result = qword_27FF82F78[0];
  if (!qword_27FF82F78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82F78);
  }

  return result;
}

void *CompanionDeviceManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for ReplicatorController();
  v0[14] = sub_2648A4A7C();
  type metadata accessor for SharingController();
  v0[15] = sub_26488A120();
  type metadata accessor for RapportController();
  v0[16] = sub_2648A59C0();
  type metadata accessor for SessionManager(0);
  v0[17] = sub_2648ABAF4();
  return v0;
}

void *CompanionDeviceManager.init()()
{
  swift_defaultActor_initialize();
  type metadata accessor for ReplicatorController();
  v0[14] = sub_2648A4A7C();
  type metadata accessor for SharingController();
  v0[15] = sub_26488A120();
  type metadata accessor for RapportController();
  v0[16] = sub_2648A59C0();
  type metadata accessor for SessionManager(0);
  v0[17] = sub_2648ABAF4();
  return v0;
}

BOOL sub_264896190(void *a1, uint64_t *a2)
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

void *sub_2648961C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2648961EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2648962D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26489630C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_264896364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C98, &qword_2648BA510);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  v67 = *(v4 - 8);
  v68 = v4;
  v69 = *(v67 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA8, &qword_2648BA528);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v15 = *(v71 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v18 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  v59 = *(v61 - 8);
  v60 = *(v59 + 64);
  v21 = MEMORY[0x28223BE20](v61);
  v58 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = *a1;
  v73 = &v52 - v23;
  v55 = *MEMORY[0x277D858A0];
  (*(v12 + 104))(v14);
  sub_2648B8D94();
  (*(v12 + 8))(v14, v11);
  v24 = sub_2648B8D14();
  v25 = *(v24 - 8);
  v53 = *(v25 + 56);
  v54 = v25 + 56;
  v53(v10, 1, 1, v24);
  v26 = v15;
  v27 = *(v15 + 16);
  v56 = v20;
  v28 = v71;
  v27(v18, v20, v71);
  v30 = sub_26489D9E0(qword_280F790C0, v29, type metadata accessor for CompanionDeviceManager, &protocol conformance descriptor for CompanionDeviceManager);
  v31 = *(v15 + 80);
  v57 = v15;
  v32 = (v31 + 40) & ~v31;
  v33 = (v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v62;
  *(v34 + 2) = v62;
  *(v34 + 3) = v30;
  *(v34 + 4) = v35;
  (*(v26 + 32))(&v34[v32], v18, v28);
  *&v34[v33] = v72;
  swift_retain_n();
  v52 = v10;
  v62 = sub_26488BD30(0, 0, v10, &unk_2648BA548, v34);

  sub_2648B8DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  v37 = v63;
  v36 = v64;
  v38 = v66;
  (*(v64 + 104))(v63, v55, v66);
  v39 = v74;
  sub_2648B8D94();
  (*(v36 + 8))(v37, v38);
  v53(v10, 1, 1, v24);
  v40 = v58;
  v41 = v59;
  v42 = v61;
  (*(v59 + 16))(v58, v73, v61);
  v43 = v67;
  v44 = v68;
  v45 = v65;
  (*(v67 + 16))(v65, v39, v68);
  v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v47 = (v60 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  (*(v41 + 32))(v49 + v46, v40, v42);
  *(v49 + v47) = v72;
  (*(v43 + 32))(v49 + v48, v45, v44);
  sub_26488BD30(0, 0, v52, &unk_2648BA560, v49);
  v50 = v74;
  sub_2648B8DA4();

  (*(v43 + 8))(v50, v44);
  (*(v57 + 8))(v56, v71);
  return (*(v41 + 8))(v73, v42);
}

uint64_t sub_264896B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_264896B44, a4, 0);
}

uint64_t sub_264896B44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_26489D9E0(qword_280F790C0, a2, type metadata accessor for CompanionDeviceManager, &protocol conformance descriptor for CompanionDeviceManager);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  v11 = *(v2 + 24);
  *(v5 + 16) = v11;
  *(v5 + 32) = v3;
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *v6 = v2;
  v6[1] = sub_264896C74;
  v7 = *(v2 + 16);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v7, v8, v11, v4, &unk_2648BA8E8, v5, v9);
}

uint64_t sub_264896C74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264896DA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2648913EC;

  return sub_264896B20(a1, v8, v9, v6, v1 + v5, v7);
}

uint64_t sub_264896ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v5[8] = *(v8 + 64);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264896FE4, a3, 0);
}

uint64_t sub_264896FE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v25 = v0[5];
  v5 = v0[4];
  v6 = *(v0[3] + 112);
  v7 = sub_2648B8D14();
  v28 = *(*(v7 - 8) + 56);
  v29 = v7;
  v28(v1, 1, 1);
  v27 = *(v3 + 16);
  v27(v2, v5, v4);
  v8 = *(v3 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v6;
  v26 = *(v3 + 32);
  v26(&v10[v9], v2, v4);

  sub_264897908(v1, &unk_2648BA8F8, v10);
  sub_264891214(v1, &qword_27FF81B68, &qword_2648BA520);
  if (v25)
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[6];
    v14 = v0[4];
    v15 = *(v0[3] + 120);
    (v28)(v11, 1, 1, v29);
    v27(v12, v14, v13);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = v15;
    v26(&v16[v9], v12, v13);

    sub_264897908(v11, &unk_2648BA918, v16);
    sub_264891214(v11, &qword_27FF81B68, &qword_2648BA520);
  }

  if ((v0[5] & 4) != 0)
  {
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[6];
    v20 = v0[4];
    v21 = *(v0[3] + 136);
    (v28)(v17, 1, 1, v29);
    v27(v18, v20, v19);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v21;
    v26(&v22[(v8 + 40) & ~v8], v18, v19);

    sub_264897908(v17, &unk_2648BA908, v22);
    sub_264891214(v17, &qword_27FF81B68, &qword_2648BA520);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_26489733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D38, &qword_2648BA958);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D40, &unk_2648BA960);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = (*a3 + 88) & 0xFFFFFFFFFFFFLL | 0xB12C000000000000;
  v4[15] = *(*a3 + 88);
  v4[16] = v8;

  return MEMORY[0x2822009F8](sub_2648974CC, a3, 0);
}

uint64_t sub_2648974CC()
{
  (*(v0 + 120))();

  return MEMORY[0x2822009F8](sub_26489753C, 0, 0);
}

uint64_t sub_26489753C(uint64_t a1)
{
  *(v1 + 136) = swift_getOpaqueTypeConformance2();
  sub_2648B8D84();
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_26489764C;

  return MEMORY[0x282200310](v1 + 32, 0, 0);
}

uint64_t sub_26489764C()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26489775C, 0, 0);
  }

  return result;
}

uint64_t sub_26489775C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v4);
    swift_getAssociatedConformanceWitness();
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_26489764C;

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_264897908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_2648911A4(a1, v20 - v9);
  v11 = sub_2648B8D14();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_264891214(v10, &qword_27FF81B68, &qword_2648BA520);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2648B8CB4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2648B8D04();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_264897B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B98, &qword_2648B9BE0);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D20, &qword_2648BA930);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = (*a3 + 128) & 0xFFFFFFFFFFFFLL | 0xC1F000000000000;
  v4[17] = *(*a3 + 128);
  v4[18] = v8;
  type metadata accessor for SharingController();
  sub_26489D9E0(&qword_280F78F70, 255, type metadata accessor for SharingController, &unk_2648B9B40);
  v10 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_264897CF8, v10, v9);
}

uint64_t sub_264897CF8()
{
  (*(v0 + 136))();

  return MEMORY[0x2822009F8](sub_264897D68, 0, 0);
}

uint64_t sub_264897D68()
{
  sub_26488E39C(&qword_280F78EC0, &qword_27FF81B98, &qword_2648B9BE0, MEMORY[0x277D858E0]);
  sub_2648B8D84();
  sub_26488E39C(qword_280F78ED0, &qword_27FF81D20, &qword_2648BA930, MEMORY[0x277D858D0]);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_264897E9C;

  return MEMORY[0x282200310](v0 + 32, 0, 0);
}

uint64_t sub_264897E9C()
{

  if (v0)
  {
    v1 = sub_264898170;
  }

  else
  {
    v1 = sub_264897FAC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264897FAC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    *(v0 + 16) = v1;
    *(v0 + 24) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v4);
    sub_26488E39C(qword_280F78ED0, &qword_27FF81D20, &qword_2648BA930, MEMORY[0x277D858D0]);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_264897E9C;

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_264898170()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v0[6] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  sub_2648B8DD4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_264898230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D28, &qword_2648BA938);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D30, &qword_2648BA940);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = *a3;
  v4[17] = *(*a3 + 400);
  v4[18] = (v8 + 400) & 0xFFFFFFFFFFFFLL | 0xAEB9000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager, &unk_2648BB180);
  v10 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_264898430, v10, v9);
}

uint64_t sub_264898430()
{
  (*(v0 + 136))();

  return MEMORY[0x2822009F8](sub_2648984A0, 0, 0);
}

uint64_t sub_2648984A0(uint64_t a1)
{
  *(v1 + 152) = swift_getOpaqueTypeConformance2();
  sub_2648B8D84();
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v1;
  v2[1] = sub_2648985B4;

  return MEMORY[0x282200310](v1 + 32, 0, 0);
}

uint64_t sub_2648985B4()
{

  if (v0)
  {
    v1 = sub_26489DC0C;
  }

  else
  {
    v1 = sub_2648986C4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2648986C4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    *(v0 + 16) = v1;
    *(v0 + 24) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v4);
    swift_getAssociatedConformanceWitness();
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_2648985B4;

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_26489889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v6[16] = swift_task_alloc();
  v7 = type metadata accessor for CompanionDevice(0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = sub_2648B88D4();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CF8, &qword_2648BA8B8);
  v6[28] = v9;
  v6[29] = *(v9 - 8);
  v6[30] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D00, &qword_2648BA8C0);
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264898B00, 0, 0);
}

uint64_t sub_264898B00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  sub_2648B8D54();
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_264898BD8;
  v2 = *(v0 + 248);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v2, v0 + 72);
}

uint64_t sub_264898BD8()
{

  if (v0)
  {

    v1 = sub_2648996DC;
  }

  else
  {
    v1 = sub_264898CF0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264898CF0()
{
  v2 = v0 + 56;
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v3 <= 1)
  {
    if (!*(v0 + 64))
    {

      v6 = v1;
      v5 = *(v0 + 288);
      v1 = *(v0 + 296);
      v4 = *(v0 + 280);
      v7 = *(v0 + 112);
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
  }

  else if (v3 == 2)
  {
    v5 = *(v0 + 56);
    v1 = *(v0 + 296);
    v4 = *(v0 + 280);
  }

  else
  {
    if (v3 != 3)
    {
      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

      v8 = *(v0 + 8);

      return v8();
    }

    v4 = *(v0 + 56);
    v5 = *(v0 + 288);
    v1 = *(v0 + 296);
  }

  v10 = *(v0 + 272);

  if (!v10)
  {
    v6 = 0;
    goto LABEL_74;
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 112);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    if ((v7 & 4) != 0 && !v4)
    {
      goto LABEL_74;
    }

    v96 = v1;
    v97 = v5;
    v94 = *(v6 + 16);
    v95 = v4;
    v87 = v6;
    if (v94)
    {
      v11 = 0;
      v12 = *(v0 + 144);
      v93 = v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13 = *(v12 + 72);
      v100 = *(*(v0 + 184) + 16);
      v14 = MEMORY[0x277D84F98];
      v92 = v13;
      while (1)
      {
        v19 = *(v0 + 168);
        v20 = v93 + v11 * v13;
        v98 = *(*(v0 + 136) + 20);
        (v100)(*(v0 + 216), v20 + v98, *(v0 + 176));
        sub_26489D20C(v20, v19, type metadata accessor for CompanionDevice);
        if (v1)
        {
          if (*(v1 + 16))
          {
            v21 = sub_26488F280(*(v0 + 216));
            if (v22)
            {
              *(*(v0 + 168) + *(*(v0 + 136) + 60)) = *(*(v1 + 56) + v21);
            }
          }
        }

        if (v5 && *(v5 + 16) && (v23 = sub_26488F280(*(v0 + 216)), (v24 & 1) != 0))
        {
          v25 = *(*(v5 + 56) + v23) ? 2 : 0;
        }

        else
        {
          v25 = 4;
        }

        *(*(v0 + 168) + *(*(v0 + 136) + 56)) = v25;
        if (!v4)
        {
          break;
        }

        CompanionDevice.id.getter();
        v26 = *(v0 + 208);
        if (!*(v4 + 16))
        {
          v35 = *(v0 + 128);
          (*(*(v0 + 184) + 8))(v26, *(v0 + 176));
          goto LABEL_39;
        }

        v27 = sub_26488F280(v26);
        v28 = *(v0 + 208);
        v29 = *(v0 + 176);
        v30 = *(v0 + 128);
        v31 = (*(v0 + 184) + 8);
        if (v32)
        {
          v33 = v27;
          v88 = *(v4 + 56);
          v90 = type metadata accessor for CompanionDevice.SessionInfo(0);
          v34 = *(v90 - 8);
          sub_26489D20C(v88 + *(v34 + 72) * v33, v30, type metadata accessor for CompanionDevice.SessionInfo);
          (*v31)(v28, v29);
          (*(v34 + 56))(v30, 0, 1, v90);
        }

        else
        {
          (*v31)(*(v0 + 208), *(v0 + 176));
          v37 = type metadata accessor for CompanionDevice.SessionInfo(0);
          (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
        }

LABEL_41:
        v38 = *(v0 + 200);
        v40 = *(v0 + 168);
        v39 = *(v0 + 176);
        v41 = *(v0 + 160);
        sub_26489CCBC(*(v0 + 128), v40 + *(*(v0 + 136) + 64));
        (v100)(v38, v20 + v98, v39);
        sub_26489D20C(v40, v41, type metadata accessor for CompanionDevice);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 88) = v14;
        v43 = sub_26488F280(v38);
        v48 = *(v14 + 16);
        v49 = (v44 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return MEMORY[0x2822005A8](v43, v44, v45, v46, v47);
        }

        v52 = v44;
        if (*(v14 + 24) < v51)
        {
          v53 = *(v0 + 200);
          sub_26489CD90(v51, isUniquelyReferenced_nonNull_native);
          v14 = *(v0 + 88);
          v43 = sub_26488F280(v53);
          v5 = v97;
          if ((v52 & 1) != (v54 & 1))
          {

            return sub_2648B9174();
          }

LABEL_46:
          if (v52)
          {
            goto LABEL_20;
          }

          goto LABEL_47;
        }

        v5 = v97;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_46;
        }

        v85 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D08, &qword_2648BA8C8);
        v99 = sub_2648B9014();
        v62 = *(v14 + 16);
        if (v62)
        {
          v43 = v99 + 64;
          v63 = ((1 << *(v99 + 32)) + 63) >> 6;
          if (v99 != v14 || v43 >= v14 + 64 + 8 * v63)
          {
            v43 = memmove(v43, (v14 + 64), 8 * v63);
            v62 = *(v14 + 16);
          }

          v64 = 0;
          *(v99 + 16) = v62;
          v65 = 1 << *(v14 + 32);
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          else
          {
            v66 = -1;
          }

          v67 = v66 & *(v14 + 64);
          v68 = (v65 + 63) >> 6;
          if (v67)
          {
            do
            {
              v69 = __clz(__rbit64(v67));
              v91 = (v67 - 1) & v67;
LABEL_63:
              v72 = v69 | (v64 << 6);
              v73 = *(v0 + 184);
              v89 = *(v0 + 176);
              v74 = *(v0 + 152);
              v86 = *(v0 + 192);
              v75 = *(v73 + 72) * v72;
              v100();
              v76 = v72 * v92;
              sub_26489D20C(*(v14 + 56) + v76, v74, type metadata accessor for CompanionDevice);
              (*(v73 + 32))(*(v99 + 48) + v75, v86, v89);
              v43 = sub_26489CAE4(v74, *(v99 + 56) + v76);
              v5 = v97;
              v67 = v91;
            }

            while (v91);
          }

          v70 = v64;
          while (1)
          {
            v64 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_82;
            }

            if (v64 >= v68)
            {
              break;
            }

            v71 = *(v14 + 64 + 8 * v64);
            ++v70;
            if (v71)
            {
              v69 = __clz(__rbit64(v71));
              v91 = (v71 - 1) & v71;
              goto LABEL_63;
            }
          }
        }

        v14 = v99;
        v43 = v85;
        if (v52)
        {
LABEL_20:
          v13 = v92;
          sub_26489CD2C(*(v0 + 160), *(v14 + 56) + v43 * v92);
          goto LABEL_21;
        }

LABEL_47:
        v55 = *(v0 + 200);
        v56 = *(v0 + 176);
        v57 = *(v0 + 184);
        v58 = *(v0 + 160);
        *(v14 + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v59 = v43;
        (v100)(*(v14 + 48) + *(v57 + 72) * v43, v55, v56);
        v13 = v92;
        v43 = sub_26489CAE4(v58, *(v14 + 56) + v59 * v92);
        v60 = *(v14 + 16);
        v50 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v50)
        {
          goto LABEL_81;
        }

        *(v14 + 16) = v61;
LABEL_21:
        ++v11;
        v15 = *(v0 + 216);
        v16 = *(v0 + 176);
        v17 = *(v0 + 168);
        v18 = *(*(v0 + 184) + 8);
        v18(*(v0 + 200), v16);
        v18(v15, v16);
        sub_26489CB48(v17);
        v4 = v95;
        v1 = v96;
        if (v11 == v94)
        {
          goto LABEL_69;
        }
      }

      v35 = *(v0 + 128);
LABEL_39:
      v36 = type metadata accessor for CompanionDevice.SessionInfo(0);
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      goto LABEL_41;
    }

    v14 = MEMORY[0x277D84F98];
LABEL_69:
    v77 = *(v14 + 16);
    if (v77)
    {
      v2 = v0 + 56;
      v78 = *(v0 + 144);
      v79 = sub_26489D274(*(v14 + 16), 0);
      v80 = sub_26489D370((v0 + 16), v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)), v77, v14);
      sub_264891158(*(v0 + 16));
      if (v80 == v77)
      {
LABEL_73:
        v82 = *(v0 + 232);
        v81 = *(v0 + 240);
        v83 = *(v0 + 224);
        *(v0 + 96) = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
        sub_2648B8DC4();
        (*(v82 + 8))(v81, v83);
        v4 = v95;
        v1 = v96;
        v5 = v97;
        v6 = v87;
        goto LABEL_74;
      }

      __break(1u);
    }

    v79 = MEMORY[0x277D84F90];
    v2 = v0 + 56;
    goto LABEL_73;
  }

LABEL_15:
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_74:
  *(v0 + 288) = v5;
  *(v0 + 296) = v1;
  *(v0 + 272) = v6;
  *(v0 + 280) = v4;
  v84 = swift_task_alloc();
  *(v0 + 304) = v84;
  *v84 = v0;
  v84[1] = sub_264898BD8;
  v46 = *(v0 + 248);
  v47 = v0 + 72;
  v43 = v2;
  v44 = 0;
  v45 = 0;

  return MEMORY[0x2822005A8](v43, v44, v45, v46, v47);
}

uint64_t sub_2648996DC()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v0[10] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  sub_2648B8DD4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_264899824()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26488D93C;

  return sub_26489889C(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t sub_26489997C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26489999C, v1, 0);
}

uint64_t sub_26489999C()
{
  v4 = (*(**(v0[3] + 112) + 96) + **(**(v0[3] + 112) + 96));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_264899ABC;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_264899ABC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264899BB0(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_264899CB8;

  return sub_26489A3B8(v5, a1);
}

uint64_t sub_264899CB8()
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26489A0AC;
  }

  else
  {
    v3 = sub_264899DE0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_264899DE0()
{
  v4 = (*(**(v0[2] + 120) + 136) + **(**(v0[2] + 120) + 136));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_264899F00;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_264899F00()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_26489A110;
  }

  else
  {
    v4 = sub_26489A02C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26489A02C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26489A0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26489A110()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26489A1AC()
{
  v3 = (*(**(*(v0 + 16) + 112) + 112) + **(**(*(v0 + 16) + 112) + 112));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26489A2C4;

  return v3();
}

uint64_t sub_26489A2C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26489A3B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE0, &qword_2648BA8A0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for CompanionDevice(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE8, &unk_2648BA8A8);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CD8, &qword_2648BA7F0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489A590, v2, 0);
}

uint64_t sub_26489A590()
{
  v4 = v0;
  v1 = *(v0 + 40);
  v3 = 0;
  (*(*v1 + 128))(&v3);

  return MEMORY[0x2822009F8](sub_26489A624, 0, 0);
}

uint64_t sub_26489A624()
{
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_26488E39C(&qword_280F78F98, &qword_27FF81CD8, &qword_2648BA7F0, MEMORY[0x277D858E0]);
  sub_2648B8D84();
  v1 = sub_26488E39C(&qword_27FF81CF0, &qword_27FF81CE8, &unk_2648BA8A8, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_26489A768;
  v3 = v0[10];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t sub_26489A768()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_26489AA7C;
  }

  else
  {
    v3 = sub_26489A894;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26489A894()
{
  v1 = v0[2];
  v0[19] = v1;
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[5];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v4 + 8))(v2, v3);
  if (v1)
  {
    v6 = sub_26489AB98;
  }

  else
  {
    v6 = sub_26489A95C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26489A95C()
{
  v1 = *(v0 + 32);
  type metadata accessor for CompanionDeviceManager.CompanionDeviceError(0);
  sub_26489CA3C();
  swift_allocError();
  v3 = v2;
  v4 = sub_2648B88D4();
  (*(*(v4 - 8) + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26489AA7C()
{
  v1 = v0[5];
  (*(v0[14] + 8))(v0[16], v0[13]);

  return MEMORY[0x2822009F8](sub_26489AAF8, v1, 0);
}

uint64_t sub_26489AAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26489AB98()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  *(swift_task_alloc() + 16) = v5;
  sub_26489ADF0(sub_26489CBA4, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_264891214(v0[6], &qword_27FF81CE0, &qword_2648BA8A0);
    v6 = v0[4];
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError(0);
    sub_26489CA3C();
    swift_allocError();
    v8 = v7;
    v9 = sub_2648B88D4();
    (*(*(v9 - 8) + 16))(v8, v6, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = v0[9];
    v12 = v0[7];
    v13 = v0[3];
    sub_26489CAE4(v0[6], v11);
    v14 = *(v12 + 20);
    v15 = sub_2648B88D4();
    (*(*(v15 - 8) + 16))(v13, v11 + v14, v15);
    sub_26489CB48(v11);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_26489ADF0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CompanionDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_26489D20C(v12, v10, type metadata accessor for CompanionDevice);
      v14 = a1(v10);
      if (v3)
      {
        return sub_26489CB48(v10);
      }

      if (v14)
      {
        break;
      }

      sub_26489CB48(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_26489CAE4(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_26489AF80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE0, &qword_2648BA8A0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for CompanionDevice(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE8, &unk_2648BA8A8);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CD8, &qword_2648BA7F0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489B158, v2, 0);
}

uint64_t sub_26489B158()
{
  v4 = v0;
  v1 = *(v0 + 40);
  v3 = 0;
  (*(*v1 + 128))(&v3);

  return MEMORY[0x2822009F8](sub_26489B1EC, 0, 0);
}

uint64_t sub_26489B1EC()
{
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_26488E39C(&qword_280F78F98, &qword_27FF81CD8, &qword_2648BA7F0, MEMORY[0x277D858E0]);
  sub_2648B8D84();
  v1 = sub_26488E39C(&qword_27FF81CF0, &qword_27FF81CE8, &unk_2648BA8A8, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_26489B330;
  v3 = v0[10];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t sub_26489B330()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_26489B644;
  }

  else
  {
    v3 = sub_26489B45C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26489B45C()
{
  v1 = v0[2];
  v0[19] = v1;
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[5];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v4 + 8))(v2, v3);
  if (v1)
  {
    v6 = sub_26489B6C0;
  }

  else
  {
    v6 = sub_26489B524;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26489B524()
{
  v1 = *(v0 + 32);
  type metadata accessor for CompanionDeviceManager.CompanionDeviceError(0);
  sub_26489CA3C();
  swift_allocError();
  v3 = v2;
  v4 = sub_2648B88D4();
  (*(*(v4 - 8) + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26489B644()
{
  v1 = v0[5];
  (*(v0[14] + 8))(v0[16], v0[13]);

  return MEMORY[0x2822009F8](sub_26489DC04, v1, 0);
}

uint64_t sub_26489B6C0()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  *(swift_task_alloc() + 16) = v5;
  sub_26489ADF0(sub_26489CA94, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_264891214(v0[6], &qword_27FF81CE0, &qword_2648BA8A0);
    v6 = v0[4];
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError(0);
    sub_26489CA3C();
    swift_allocError();
    v8 = v7;
    v9 = sub_2648B88D4();
    (*(*(v9 - 8) + 16))(v8, v6, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = v0[9];
    v12 = v0[3];
    sub_26489CAE4(v0[6], v11);
    v13 = sub_2648B88D4();
    (*(*(v13 - 8) + 16))(v12, v11, v13);
    sub_26489CB48(v11);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_26489B914(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_26489BA1C;

  return sub_26489AF80(v5, a1);
}

uint64_t sub_26489BA1C()
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26489DC00;
  }

  else
  {
    v3 = sub_26489BB44;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26489BB44()
{
  v1 = *(v0[2] + 136);
  v0[8] = v1;
  v2 = *v1 + 480;
  v0[9] = *v2;
  v0[10] = v2 & 0xFFFFFFFFFFFFLL | 0x3CAE000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager, &unk_2648BB180);
  v4 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26489BC2C, v4, v3);
}

uint64_t sub_26489BC2C()
{
  v1 = *(v0 + 56);
  (*(v0 + 72))(*(v0 + 40));
  *(v0 + 88) = v1;
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = sub_26489DBFC;
  }

  else
  {
    v3 = sub_26489DBF0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26489BCBC(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_26489BDC4;

  return sub_26489AF80(v5, a1);
}

uint64_t sub_26489BDC4()
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26489DC00;
  }

  else
  {
    v3 = sub_26489BEEC;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26489BEEC()
{
  v1 = *(v0[2] + 136);
  v0[8] = v1;
  v2 = *v1 + 488;
  v0[9] = *v2;
  v0[10] = v2 & 0xFFFFFFFFFFFFLL | 0xDEA8000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager, &unk_2648BB180);
  v4 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26489BFD4, v4, v3);
}

uint64_t sub_26489BFD4()
{
  v1 = *(v0 + 56);
  (*(v0 + 72))(*(v0 + 40));
  *(v0 + 88) = v1;
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = sub_26489C064;
  }

  else
  {
    v3 = sub_26489DBF0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26489C064()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

void *CompanionDeviceManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CompanionDeviceManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26489C180()
{
  result = qword_27FF81CC8;
  if (!qword_27FF81CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81CC8);
  }

  return result;
}

unint64_t sub_26489C1D8()
{
  result = qword_27FF81CD0;
  if (!qword_27FF81CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81CD0);
  }

  return result;
}

unint64_t sub_26489C230()
{
  result = qword_280F78F68;
  if (!qword_280F78F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78F68);
  }

  return result;
}

unint64_t sub_26489C288()
{
  result = qword_280F78F60;
  if (!qword_280F78F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78F60);
  }

  return result;
}

uint64_t dispatch thunk of CompanionDeviceManager.pairDevice(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2648913EC;

  return v6(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.unpairDevice(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2648913EC;

  return v6(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.retryStuckRemoteScreenRelationships()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26488D93C;

  return v4();
}

uint64_t dispatch thunk of CompanionDeviceManager.startSession(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2648913EC;

  return v6(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.endSession(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2648913EC;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for CompanionDeviceManager.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CompanionDeviceManager.Options(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26489C94C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26489C994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for CompanionDeviceManager.CompanionDeviceError(uint64_t a1)
{
  result = qword_27FF83108;
  if (!qword_27FF83108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26489CA3C()
{
  result = qword_27FF83100;
  if (!qword_27FF83100)
  {
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF83100);
  }

  return result;
}

uint64_t sub_26489CAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CB48(uint64_t a1)
{
  v2 = type metadata accessor for CompanionDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26489CBD4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26488EA28;

  return v4();
}

uint64_t sub_26489CCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CD90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CompanionDevice(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2648B88D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D08, &qword_2648BA8C8);
  v43 = v4;
  result = sub_2648B9024();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26489CAE4(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26489D20C(v29 + v28 * v24, v47, type metadata accessor for CompanionDevice);
      }

      sub_26489D9E0(&qword_280F796E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26489CAE4(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26489D20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26489D274(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D10, &unk_2648BA8D0);
  v4 = *(type metadata accessor for CompanionDevice(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26489D370(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CompanionDevice(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_26489D20C(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for CompanionDevice);
      sub_26489CAE4(v11, v14);
      sub_26489CAE4(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26489D5AC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2648913EC;

  return sub_264896ED0(v8, a2, v5, v6, v7);
}

uint64_t sub_26489D65C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489733C(v5, v6, v4, v0 + v3);
}

uint64_t sub_26489D740()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_264898230(v5, v6, v4, v0 + v3);
}

uint64_t objectdestroy_48Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26489D8FC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_264897B10(v5, v6, v4, v0 + v3);
}

uint64_t sub_26489D9E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26489DA28()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2648913EC;

  return sub_26489CBD4(v2);
}

void sub_26489DB24(uint64_t a1)
{
  sub_26489DBA8(319, &qword_27FF81D48);
  if (v1 <= 0x3F)
  {
    sub_26489DBA8(319, &qword_27FF81D50);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26489DBA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2648B88D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26489DC18()
{
  sub_2648B91D4();
  MEMORY[0x2667433E0](0);
  return sub_2648B9214();
}

uint64_t sub_26489DC84(uint64_t a1)
{
  sub_2648B91D4();
  MEMORY[0x2667433E0](0);
  return sub_2648B9214();
}

uint64_t sub_26489DCC4@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D58, &qword_2648BA9E0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v45 - v1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
  v60 = *(v62 - 8);
  v61 = *(v60 + 64);
  v2 = MEMORY[0x28223BE20](v62);
  v58 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v55 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v70 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D68, &qword_2648BA9F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  v13 = *(v12 - 8);
  v47 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  v19 = MEMORY[0x28223BE20](v54);
  v51 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = &v45 - v21;
  sub_2648B8944();
  swift_allocObject();
  v71 = sub_2648B8934();
  v49 = *MEMORY[0x277D85778];
  (*(v9 + 104))(v11);
  v66 = v18;
  sub_2648B8D24();
  (*(v9 + 8))(v11, v8);
  v68 = sub_2648B8D14();
  v22 = *(v68 - 8);
  v67 = *(v22 + 56);
  v64 = v22 + 56;
  v67(v7, 1, 1, v68);
  v46 = *(v13 + 16);
  v46(v16, v18, v12);
  v23 = *(v13 + 80);
  v50 = v13;
  v24 = (v23 + 40) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v71;
  v45 = *(v13 + 32);
  v45(&v25[v24], v16, v12);

  v26 = v70;
  v65 = sub_26488BD30(0, 0, v70, &unk_2648BAA18, v25);
  v67(v26, 1, 1, v68);
  v46(v16, v66, v12);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v71;
  v48 = v12;
  v45(&v27[v24], v16, v12);

  v28 = v70;
  v29 = sub_26488BD30(0, 0, v70, &unk_2648BAA28, v27);
  v47 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v65;
  *(v30 + 24) = v29;

  sub_2648B8D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  v32 = v56;
  v31 = v57;
  v33 = v59;
  (*(v57 + 104))(v56, v49, v59);
  v34 = v55;
  sub_2648B8D24();
  (*(v31 + 8))(v32, v33);
  v67(v28, 1, 1, v68);
  v35 = v51;
  v36 = v52;
  v37 = v54;
  (*(v52 + 16))(v51, v69, v54);
  v38 = v60;
  v39 = v58;
  v40 = v62;
  (*(v60 + 16))(v58, v34, v62);
  v41 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v42 = (v53 + *(v38 + 80) + v41) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  (*(v36 + 32))(v43 + v41, v35, v37);
  (*(v38 + 32))(v43 + v42, v39, v40);
  sub_26488BD30(0, 0, v70, &unk_2648BAA40, v43);
  sub_2648B8D34();

  (*(v38 + 8))(v34, v40);
  (*(v50 + 8))(v66, v48);
  return (*(v36 + 8))(v69, v37);
}

uint64_t sub_26489E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF0, &qword_2648BAC68);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E08, &qword_2648BAC88);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E10, &unk_2648BAC90);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_2648B8B14();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489E764, 0, 0);
}

uint64_t sub_26489E764()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = sub_2648A57B8();
  v0[20] = v4;
  v5 = *(v3 + 16);
  v0[21] = v5;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will wait for enabled state updates", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];

  v15 = *(v11 + 8);
  v0[23] = v15;
  v15(v9, v10);
  sub_2648B88F4();
  sub_2648B8D54();
  (*(v13 + 8))(v12, v14);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_26489E934;
  v17 = v0[12];

  return MEMORY[0x2822003E8](v0 + 25, 0, 0, v17);
}

uint64_t sub_26489E934()
{

  return MEMORY[0x2822009F8](sub_26489EA30, 0, 0);
}

uint64_t sub_26489EA30()
{
  v1 = *(v0 + 25);
  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  v20 = *(v0 + 25);
  v4 = *(v0 + 168);
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  if ((v1 & 1) == 0)
  {
    v7 = (v0 + 136);
    v4(*(v0 + 136), v5, v6);
    v8 = sub_2648B8AF4();
    v9 = sub_2648B8E44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Replicator is disabled";
      goto LABEL_10;
    }

LABEL_11:
    v12 = *v7;
    goto LABEL_12;
  }

  v7 = (v0 + 144);
  v4(*(v0 + 144), v5, v6);
  v8 = sub_2648B8AF4();
  v9 = sub_2648B8E44();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_11;
  }

  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = "Replicator is enabled";
LABEL_10:
  _os_log_impl(&dword_264887000, v8, v9, v11, v10, 2u);
  v12 = *v7;
  MEMORY[0x2667439C0](v10, -1, -1);
LABEL_12:
  v13 = *(v0 + 184);
  v14 = *(v0 + 120);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);

  v13(v12, v14);
  *(v0 + 16) = v20 & 1;
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  sub_2648B8D44();
  (*(v15 + 8))(v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 192) = v18;
  *v18 = v0;
  v18[1] = sub_26489E934;
  v19 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 25, 0, 0, v19);
}

uint64_t sub_26489ED08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489E554(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26489EDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF0, &qword_2648BAC68);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF8, &qword_2648BAC70);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E00, &qword_2648BAC78);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = sub_2648B8B14();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489EFF0, 0, 0);
}

uint64_t sub_26489EFF0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_2648A57B8();
  v0[20] = v4;
  v5 = *(v3 + 16);
  v0[21] = v5;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will wait for device updates", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];

  v15 = *(v11 + 8);
  v0[23] = v15;
  v15(v9, v10);
  sub_2648B88E4();
  sub_2648B8D54();
  (*(v13 + 8))(v12, v14);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_26489F1C0;
  v17 = v0[13];

  return MEMORY[0x2822003E8](v0 + 4, 0, 0, v17);
}

uint64_t sub_26489F1C0()
{

  return MEMORY[0x2822009F8](sub_26489F2BC, 0, 0);
}

uint64_t sub_26489F2BC()
{
  v24 = v0;
  v1 = *(v0 + 32);
  if (v1)
  {
    (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));

    v2 = sub_2648B8AF4();
    v3 = sub_2648B8E44();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 184);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    if (v4)
    {
      v22 = *(v0 + 184);
      v8 = swift_slowAlloc();
      v21 = v6;
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136446210;
      v10 = sub_2648B8A54();
      v11 = MEMORY[0x266742EA0](v1, v10);
      v13 = sub_26488EB20(v11, v12, &v23);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_264887000, v2, v3, "Got devices: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2667439C0](v9, -1, -1);
      MEMORY[0x2667439C0](v8, -1, -1);

      v22(v21, v7);
    }

    else
    {

      v5(v6, v7);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
    sub_2648B8D44();
    (*(v17 + 8))(v16, v18);
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_26489F1C0;
    v20 = *(v0 + 104);

    return MEMORY[0x2822003E8](v0 + 32, 0, 0, v20);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26489F694()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489EDEC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26489F778(uint64_t a1, uint64_t a2)
{
  v2 = sub_2648B8B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2648A57B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264887000, v7, v8, "Change accumulator terminated", v9, 2u);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2648B8D74();
  return sub_2648B8D74();
}

uint64_t sub_26489F920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DD0, &qword_2648BAC38);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_2648B8A54();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for CompanionDevice(0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DD8, &unk_2648BAC40);
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v10 = sub_2648B8B14();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489FBEC, 0, 0);
}

uint64_t sub_26489FBEC(uint64_t a1)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = sub_2648A57B8();
  *(v1 + 304) = v5;
  v6 = *(v4 + 16);
  *(v1 + 312) = v6;
  *(v1 + 320) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264887000, v7, v8, "Will wait for changes", v9, 2u);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  v10 = *(v1 + 296);
  v11 = *(v1 + 216);
  v12 = *(v1 + 224);

  v13 = *(v12 + 8);
  *(v1 + 328) = v13;
  v13(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  sub_2648B8D54();
  *(v1 + 336) = 0;
  *(v1 + 27) = 2;
  v14 = swift_task_alloc();
  *(v1 + 344) = v14;
  *v14 = v1;
  v14[1] = sub_26489FD9C;
  v15 = *(v1 + 192);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v15);
}

uint64_t sub_26489FD9C()
{

  return MEMORY[0x2822009F8](sub_26489FE98, 0, 0);
}

uint64_t sub_26489FE98()
{
  v127 = v0;
  v1 = *(v0 + 16);
  LODWORD(v2) = *(v0 + 24);
  if (v2 != 255)
  {
    (*(v0 + 312))(*(v0 + 288), *(v0 + 304), *(v0 + 216));
    sub_2648A55E4(v1, v2 & 1);
    v3 = sub_2648B8AF4();
    v4 = sub_2648B8E44();
    sub_2648A55F0(v1, v2);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 328);
    v7 = *(v0 + 288);
    v8 = *(v0 + 216);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v119 = v7;
      v10 = swift_slowAlloc();
      v126 = v10;
      *v9 = 136446210;
      *(v0 + 32) = v1;
      *(v0 + 40) = v2 & 1;
      sub_2648A55E4(v1, v2 & 1);
      v11 = sub_2648B8C34();
      v116 = v6;
      v13 = v2;
      v2 = sub_26488EB20(v11, v12, &v126);

      *(v9 + 4) = v2;
      LOBYTE(v2) = v13;
      _os_log_impl(&dword_264887000, v3, v4, "Got change: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2667439C0](v10, -1, -1);
      MEMORY[0x2667439C0](v9, -1, -1);

      v14 = v116(v119, v8);
      if ((v13 & 1) == 0)
      {
LABEL_4:
        v18 = *(v0 + 27);
        v19 = v0 + 16;
        if (v18 != 2 && ((v1 ^ v18) & 1) == 0)
        {
          v20 = (v0 + 280);
          (*(v0 + 312))(*(v0 + 280), *(v0 + 304), *(v0 + 216));
          v21 = sub_2648B8AF4();
          v22 = sub_2648B8E44();
          if (!os_log_type_enabled(v21, v22))
          {

            goto LABEL_55;
          }

          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_264887000, v21, v22, "ignoring no-op enablement change", v23, 2u);
          MEMORY[0x2667439C0](v23, -1, -1);

          v24 = v1;
          v25 = v2;
LABEL_46:
          sub_2648A55F0(v24, v25);
LABEL_55:
          (*(v0 + 328))(*v20, *(v0 + 216));
          goto LABEL_64;
        }

        v55 = *(v0 + 336);
        LOBYTE(v56) = v1 & 1;
        if (!v55)
        {
          (*(v0 + 312))(*(v0 + 256), *(v0 + 304), *(v0 + 216));
          v103 = sub_2648B8AF4();
          v104 = sub_2648B8E44();
          v105 = os_log_type_enabled(v103, v104);
          v106 = *(v0 + 328);
          v107 = *(v0 + 256);
          v108 = *(v0 + 216);
          if (v105)
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&dword_264887000, v103, v104, "Waiting for devices", v109, 2u);
            MEMORY[0x2667439C0](v109, -1, -1);
          }

          v106(v107, v108);
          v55 = 0;
          goto LABEL_63;
        }

        if ((v1 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_52;
      }
    }

    else
    {

      v14 = v6(v7, v8);
      if ((v2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v115 = v2;
    v28 = *(v1 + 16);
    v29 = MEMORY[0x277D84F90];
    v114 = v1;
    if (v28)
    {
      v30 = *(v0 + 128);
      *(v0 + 48) = MEMORY[0x277D84F90];
      sub_2648A5004(0, v28, 0);
      v29 = *(v0 + 48);
      v31 = v1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v117 = *(v30 + 16);
      v120 = *(v30 + 72);
      do
      {
        v123 = v28;
        v32 = *(v0 + 184);
        v34 = *(v0 + 136);
        v33 = *(v0 + 144);
        v36 = *(v0 + 120);
        v35 = *(v0 + 128);
        v117(v33, v31, v36);
        v117(v34, v33, v36);
        sub_2648A0D3C(v34, v32);
        (*(v35 + 8))(v33, v36);
        *(v0 + 48) = v29;
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2648A5004((v37 > 1), v38 + 1, 1);
          v29 = *(v0 + 48);
        }

        v39 = *(v0 + 184);
        v40 = *(v0 + 160);
        *(v29 + 16) = v38 + 1;
        v14 = sub_26489CAE4(v39, v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v38);
        v31 += v120;
        v28 = v123 - 1;
      }

      while (v123 != 1);
    }

    v41 = *(v29 + 16);
    v124 = v29;
    if (v41)
    {
      v42 = v29;
      v43 = 0;
      v44 = MEMORY[0x277D84F90];
      v19 = v0 + 16;
      while (v43 < *(v42 + 16))
      {
        v45 = *(v0 + 176);
        v47 = *(v0 + 152);
        v46 = *(v0 + 160);
        v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v49 = *(v46 + 72);
        sub_2648A4FA0(v42 + v48 + v49 * v43, v45);
        v50 = *(v45 + *(v47 + 48));
        if (v50 == 4 || (*(v19 + 9) = v50, *(v19 + 10) = 3, sub_264893BEC(), (sub_2648B8BE4() & 1) == 0))
        {
          v14 = sub_26489CB48(*(v0 + 176));
        }

        else
        {
          sub_26489CAE4(*(v0 + 176), *(v0 + 168));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 56) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2648A5004(0, *(v44 + 16) + 1, 1);
            v44 = *(v19 + 40);
          }

          v53 = *(v44 + 16);
          v52 = *(v44 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2648A5004((v52 > 1), v53 + 1, 1);
            v44 = *(v0 + 56);
          }

          v54 = *(v0 + 168);
          *(v44 + 16) = v53 + 1;
          v14 = sub_26489CAE4(v54, v44 + v48 + v53 * v49);
          v19 = v0 + 16;
        }

        ++v43;
        v42 = v124;
        if (v41 == v43)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      return MEMORY[0x2822003E8](v14, v15, v16, v17);
    }

    v44 = MEMORY[0x277D84F90];
    v19 = v0 + 16;
LABEL_35:
    if (*(v44 + 16))
    {
      (*(v0 + 312))(*(v0 + 272), *(v0 + 304), *(v0 + 216));

      v69 = sub_2648B8AF4();
      v70 = sub_2648B8E44();
      v71 = v115;
      if (os_log_type_enabled(v69, v70))
      {
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        v73 = *(v44 + 16);

        *(v72 + 4) = v73;

        _os_log_impl(&dword_264887000, v69, v70, "Replicator has %ld migrating devices.", v72, 0xCu);
        MEMORY[0x2667439C0](v72, -1, -1);
      }

      else
      {
      }

      v56 = v114;

      (*(v0 + 328))(*(v0 + 272), *(v0 + 216));
      v74 = *(v0 + 336);
      if (v74)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v56 = v114;
      v71 = v115;
      v74 = *(v0 + 336);
      if (v74)
      {
LABEL_42:

        v75 = sub_2648A4AB4(v124, v74);

        if (v75)
        {
          v76 = *(v0 + 312);
          v77 = *(v0 + 304);
          v20 = (v0 + 264);
          v78 = *(v0 + 264);
          v79 = *(v0 + 216);

          v76(v78, v77, v79);
          v80 = sub_2648B8AF4();
          v81 = sub_2648B8E44();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_264887000, v80, v81, "ignoring no-op devices change", v82, 2u);
            MEMORY[0x2667439C0](v82, -1, -1);
          }

          v24 = v56;
          v25 = v115;
          goto LABEL_46;
        }
      }
    }

    sub_2648A55F0(v56, v71);
    LODWORD(v56) = *(v0 + 27);
    if (v56 == 2)
    {
      (*(v0 + 312))(*(v0 + 248), *(v0 + 304), *(v0 + 216));
      v83 = sub_2648B8AF4();
      v84 = sub_2648B8E44();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 328);
      v87 = *(v0 + 248);
      v88 = *(v0 + 216);
      if (v85)
      {
        LOBYTE(v56) = 2;
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_264887000, v83, v84, "Waiting for enablement", v89, 2u);
        MEMORY[0x2667439C0](v89, -1, -1);

        v86(v87, v88);
      }

      else
      {

        v86(v87, v88);
        LOBYTE(v56) = 2;
      }

      v55 = v124;
      goto LABEL_63;
    }

    v55 = v124;

    if ((v56 & 1) == 0)
    {
LABEL_31:
      v121 = v56;
      v125 = v55;
      v57 = *(v0 + 312);
      v58 = *(v0 + 304);
      v59 = *(v0 + 232);
      v60 = *(v0 + 216);

      v57(v59, v58, v60);
      v61 = sub_2648B8AF4();
      v62 = sub_2648B8E44();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_264887000, v61, v62, "Disabled", v63, 2u);
        MEMORY[0x2667439C0](v63, -1, -1);
      }

      v64 = *(v0 + 328);
      v65 = *(v0 + 232);
      v66 = *(v0 + 216);
      v56 = *(v0 + 104);
      v67 = *(v0 + 112);
      v68 = *(v0 + 96);

      v64(v65, v66);
      *(v0 + 64) = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
      v19 = v0 + 16;
      sub_2648B8D44();
      (*(v56 + 8))(v67, v68);
      LOBYTE(v56) = v121;
      v55 = v125;
      goto LABEL_63;
    }

LABEL_52:
    (*(v0 + 312))(*(v0 + 240), *(v0 + 304), *(v0 + 216));

    v90 = sub_2648B8AF4();
    v91 = sub_2648B8E44();

    v92 = os_log_type_enabled(v90, v91);
    v93 = *(v0 + 328);
    v94 = *(v0 + 240);
    v95 = *(v0 + 216);
    if (v92)
    {
      v96 = *(v0 + 152);
      v118 = *(v0 + 240);
      v97 = swift_slowAlloc();
      v122 = v56;
      v56 = swift_slowAlloc();
      v126 = v56;
      *v97 = 136315138;
      v98 = MEMORY[0x266742EA0](v55, v96);
      v100 = v93;
      v101 = sub_26488EB20(v98, v99, &v126);
      v19 = v0 + 16;

      *(v97 + 4) = v101;
      _os_log_impl(&dword_264887000, v90, v91, "Returning devices: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v102 = v56;
      LOBYTE(v56) = v122;
      MEMORY[0x2667439C0](v102, -1, -1);
      MEMORY[0x2667439C0](v97, -1, -1);

      v100(v118, v95);
    }

    else
    {

      v93(v94, v95);
    }

    v110 = *(v0 + 104);
    v111 = *(v0 + 112);
    v112 = *(v0 + 96);
    *(v0 + 72) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
    sub_2648B8D44();
    (*(v110 + 8))(v111, v112);
LABEL_63:
    *(v0 + 336) = v55;
    *(v0 + 27) = v56;
LABEL_64:
    v113 = swift_task_alloc();
    *(v0 + 344) = v113;
    *v113 = v0;
    v113[1] = sub_26489FD9C;
    v17 = *(v0 + 192);
    v14 = v19;
    v15 = 0;
    v16 = 0;

    return MEMORY[0x2822003E8](v14, v15, v16, v17);
  }

  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2648A0BF8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2648913EC;

  return sub_26489F920(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2648A0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DE0, &qword_2648BAC50);
  MEMORY[0x28223BE20](v5 - 8);
  *&v70 = &v59 - v6;
  v7 = sub_2648B89B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  *&v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v63 = sub_2648B8964();
  v13 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2648B88D4();
  v60 = *(v61 - 8);
  v16 = MEMORY[0x28223BE20](v61);
  v71 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DE8, &unk_2648BAC58);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v74 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  sub_2648B8974();
  if (v27)
  {
    v28 = sub_2648B8AC4();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    sub_2648B8AD4();
  }

  else
  {
    v29 = sub_2648B8AE4();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  }

  sub_2648B8994();
  v30 = v71;
  sub_2648B89D4();
  v31 = sub_2648B89E4();
  v67 = v32;
  v68 = v31;
  sub_264893A10(v26, v74, &qword_27FF81BE0, &unk_2648B9CD0);
  v66 = sub_2648B8984();
  v65 = v33;
  v64 = sub_2648B8A44();
  sub_2648B89A4();
  v62 = sub_2648B8954();
  (*(v13 + 8))(v15, v63);
  sub_2648B89C4();
  v34 = v69;
  (*(v8 + 32))(v69, v12, v7);
  v35 = (*(v8 + 88))(v34, v7);
  if (v35 == *MEMORY[0x277D46768])
  {
    v36 = v26;
    (*(v8 + 96))(v34, v7);
    v37 = 3;
    v8 = v60;
    v7 = v61;
    v38 = v70;
LABEL_6:
    (*(v8 + 8))(v34, v7);
    goto LABEL_14;
  }

  v38 = v70;
  if (v35 == *MEMORY[0x277D46748])
  {
    v36 = v26;
    v37 = 0;
  }

  else if (v35 == *MEMORY[0x277D46758])
  {
    v36 = v26;
    v37 = 1;
  }

  else
  {
    v36 = v26;
    if (v35 == *MEMORY[0x277D46750])
    {
      v37 = 2;
    }

    else
    {
      v37 = 4;
      if (v35 != *MEMORY[0x277D46760])
      {
        goto LABEL_6;
      }
    }
  }

LABEL_14:
  v82[0] = v37;
  sub_2648B8A34();
  v39 = sub_2648B8A24();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v38, 1, v39);
  if (v41 == 1)
  {
    sub_264891214(v38, &qword_27FF81DE0, &qword_2648BAC50);
    v42 = 0;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  else
  {
    sub_2648B8A04();
    v46 = v45;
    v48 = v47;
    sub_2648B8A14();
    v50 = v49;
    v51 = sub_2648B89F4();
    sub_2648917A0(v51, v52 & 1, &v78, v46, v48, v50);
    v69 = v79;
    v70 = v78;
    v42 = v80;
    (*(v40 + 8))(v38, v39);
    v44 = v69;
    v43 = v70;
  }

  v53 = v41 == 1;
  v78 = v43;
  v79 = v44;
  v54 = v62 > 8;
  v80 = v42;
  v81 = v53;
  v77 = 4;
  v76 = 2;
  v55 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v56 = v72;
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  sub_264892378(v75, v30, v68, v67, v74, v66, v65, v64 & 1, v73, 1, v54, v82, &v78, &v77, &v76, v56);
  v57 = sub_2648B8A54();
  (*(*(v57 - 8) + 8))(a1, v57);
  return sub_264891214(v36, &qword_27FF81BE0, &unk_2648B9CD0);
}

uint64_t sub_2648A153C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CompanionDevice(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_2648A4FA0(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_26489CB48(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_26489CAE4(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2648A5004(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2648A5004((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_26489CAE4(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_26489CB48(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_2648A1764(uint64_t a1)
{
  v1 = sub_2648B8B14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648A57B8();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Combined stream terminated", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_2648B8D74();
}

uint64_t sub_2648A18EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2648A190C, v1, 0);
}

uint64_t sub_2648A190C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  sub_2648A5614(&qword_27FF81D80, a2, type metadata accessor for ReplicatorController, &unk_2648BAB38);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_2648A1A40;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2648A1A40()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_2648A1B7C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2648A1B64;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2648A1B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2648A1C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v51 = *(v5 - 8);
  v52 = v5;
  v49 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - v6;
  v7 = sub_2648B88D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = v10;
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = sub_2648B8B14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2648A57B8();
  (*(v14 + 16))(v16, v17, v13);
  v55 = v8;
  v56 = v7;
  v18 = a2;
  v46 = *(v8 + 16);
  v46(v12, a2, v7);
  v19 = sub_2648B8AF4();
  v20 = sub_2648B8E44();
  v21 = os_log_type_enabled(v19, v20);
  v54 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v45 = a1;
    v23 = v22;
    v44 = swift_slowAlloc();
    v57 = v44;
    *v23 = 136315138;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = v13;
    v24 = v56;
    v25 = sub_2648B9114();
    v27 = v26;
    (*(v55 + 8))(v12, v24);
    v28 = sub_26488EB20(v25, v27, &v57);
    v18 = v54;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_264887000, v19, v20, "Will pair device with ID %s", v23, 0xCu);
    v29 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x2667439C0](v29, -1, -1);
    v30 = v23;
    a1 = v45;
    MEMORY[0x2667439C0](v30, -1, -1);

    (*(v14 + 8))(v16, v43);
  }

  else
  {

    (*(v55 + 8))(v12, v56);
    (*(v14 + 8))(v16, v13);
  }

  sub_2648B8944();
  swift_allocObject();
  v45 = sub_2648B8934();
  v31 = v48;
  v32 = v56;
  v46(v48, v18, v56);
  v34 = v50;
  v33 = v51;
  v35 = v52;
  (*(v51 + 16))(v50, a1, v52);
  v36 = v55;
  v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v38 = (v47 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v31, v32);
  (*(v33 + 32))(v40 + v38, v34, v35);
  *(v40 + v39) = v53;

  sub_2648B8914();
}

uint64_t sub_2648A2104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v46 = a3;
  v6 = sub_2648B8B14();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v44 - v10;
  v50 = sub_2648B88D4();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v50);
  v14 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - v18;
  if (a1)
  {
    v45 = v8;
    v20 = a1;
    v21 = sub_2648A57B8();
    (*(v48 + 16))(v47, v21, v49);
    v22 = v50;
    (*(v11 + 16))(v14, a2, v50);
    v23 = a1;
    v24 = sub_2648B8AF4();
    v25 = sub_2648B8E34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v26 = 136315394;
      sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_2648B9114();
      v30 = v22;
      v32 = v31;
      (*(v11 + 8))(v14, v30);
      v33 = sub_26488EB20(v29, v32, &v51);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v35;
      *v27 = v35;
      _os_log_impl(&dword_264887000, v24, v25, "Pairing device %s failed: %@", v26, 0x16u);
      sub_264891214(v27, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2667439C0](v28, -1, -1);
      MEMORY[0x2667439C0](v26, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v22);
    }

    (*(v48 + 8))(v47, v49);
    v51 = a1;
    return sub_2648B8CC4();
  }

  else
  {
    v36 = sub_2648B8D14();
    (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
    (*(v11 + 16))(v16, a2, v50);
    (*(v9 + 16))(v45, v46, v8);
    v38 = sub_2648A5614(&qword_27FF81D80, v37, type metadata accessor for ReplicatorController, &unk_2648BAB38);
    v39 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v40 = (v12 + *(v9 + 80) + v39) & ~*(v9 + 80);
    v41 = swift_allocObject();
    v42 = v44;
    *(v41 + 2) = v44;
    *(v41 + 3) = v38;
    *(v41 + 4) = v42;
    (*(v11 + 32))(&v41[v39], v16, v50);
    (*(v9 + 32))(&v41[v40], v45, v8);
    swift_retain_n();
    sub_26488BD30(0, 0, v19, &unk_2648BAC20, v41);
  }
}

uint64_t sub_2648A26DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D88, &qword_2648BAA58);
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v9 = sub_2648B88D4();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = *(v10 + 64);
  v6[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D90, &qword_2648BAA60);
  v6[14] = v11;
  v6[15] = *(v11 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D98, &unk_2648BAA68);
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A28FC, a4, 0);
}