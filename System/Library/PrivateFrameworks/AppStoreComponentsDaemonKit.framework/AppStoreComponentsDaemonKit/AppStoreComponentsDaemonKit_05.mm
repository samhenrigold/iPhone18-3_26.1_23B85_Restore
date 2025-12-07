uint64_t sub_2226D02B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D037C(uint64_t a1)
{
  v3 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_222737D7C() - 8);
  return sub_2226CDC90(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_2226D0470(uint64_t a1)
{
  v2 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_222737D7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_22273731C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 2, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v11 | 7);
}

uint64_t sub_2226D0688(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_222737D7C() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22266BE24;

  return sub_2226CDFC4(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_2226D07F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4148(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226D08CC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222660228;

  return sub_2226CE9E4(a1, a2, v6);
}

unint64_t sub_2226D097C()
{
  result = qword_27D013E90;
  if (!qword_27D013E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013E90);
  }

  return result;
}

uint64_t sub_2226D09D8(char a1)
{
  v1 = 0;
  v14[0] = 0x800000022274C540;
  v2 = 0x6C616E7265746E69;
  if ((a1 & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0xE800000000000000;
  if ((a1 & 1) == 0)
  {
    v3 = 0;
  }

  v14[1] = v2;
  v14[2] = v3;
  v4 = MEMORY[0x277D84F90];
LABEL_6:
  v5 = &v14[2 * v1];
  while (++v1 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_222694EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_222694EC0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0, MEMORY[0x277D83958]);
  v12 = sub_22273913C();

  MEMORY[0x223DBE5D0](0x6B63617074656A2ELL, 0xE800000000000000);
  return v12;
}

uint64_t sub_2226D0BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226D0CE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2226D0D38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22262CB28(result, a2);
  }

  return result;
}

uint64_t sub_2226D0D84(uint64_t a1)
{
  v1 = sub_22273731C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_2226D0DE0()
{
  result = qword_27D013EE8;
  if (!qword_27D013EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013EE8);
  }

  return result;
}

uint64_t sub_2226D0E48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2226D0E90(uint64_t result, int a2, int a3)
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

uint64_t sub_2226D0EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40) + 48);
  v5 = sub_222737DAC();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_2226D0F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F50, &qword_222743E30);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F58, &qword_222743E38) + 48);
  v14 = *(v4 + 56);
  v15 = sub_2227384DC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, v13, v15);
  sub_22266BCCC(v13 + v14, &v12[*(v4 + 56)]);
  v17 = sub_222737DAC();
  v18 = v24;
  (*(*(v17 - 8) + 16))(v24, a1, v17);
  sub_22266110C(v12, v9, &qword_27D013F50, &qword_222743E30);
  v19 = *(v4 + 56);
  sub_2226D6424(v12, v6);
  v20 = *(v4 + 56);
  v21 = type metadata accessor for JSStackBootstrap.JSPackage(0);
  (*(v16 + 32))(v18 + *(v21 + 20), v9, v15);
  sub_222634290(&v6[v20], v18 + *(v21 + 24));
  (*(v16 + 8))(v6, v15);
  return __swift_destroy_boxed_opaque_existential_1(&v9[v19]);
}

void sub_2226D11B0(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2226D120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  sub_2227381BC();
  v3[33] = swift_task_alloc();
  v4 = sub_2227388EC();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = sub_222738BBC();
  v3[39] = swift_task_alloc();
  v5 = sub_2227386EC();
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  sub_222737F4C();
  v3[43] = swift_task_alloc();
  v6 = sub_22273892C();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226D141C, 0, 0);
}

uint64_t sub_2226D141C()
{
  v1 = v0[31];
  v2 = sub_222737DAC();
  v3 = MEMORY[0x277D21980];
  v0[5] = v2;
  v0[6] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  sub_222737F5C();
  sub_22273891C();
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[40];
  sub_22273858C();
  sub_222738C9C();
  sub_2227386DC();
  v11 = MEMORY[0x277D22178];
  v0[10] = v7;
  v0[11] = v11;
  v12 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v5 + 16))(v12, v6, v7);
  v13 = MEMORY[0x277D21F40];
  v0[15] = v10;
  v0[16] = v13;
  v14 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v9 + 16))(v14, v8, v10);

  sub_2227388CC();
  v0[47] = [objc_opt_self() asc_frameworkBundle];
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_2226D1898;

  return MEMORY[0x28217F628]();
}

uint64_t sub_2226D1898(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = v4[47];
    (*(v4[35] + 8))(v4[36], v4[34]);

    v6 = sub_2226D1D5C;
  }

  else
  {
    v4[50] = a1;
    v6 = sub_2226D19DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2226D19DC()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];
  v4 = sub_2227387EC();
  v5 = MEMORY[0x277D220B0];
  v0[20] = v4;
  v0[21] = v5;
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  sub_2227387DC();
  sub_2227388DC();
  v6 = *(v3 + 8);
  v0[51] = v6;
  v0[52] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v0[53] = sub_22273890C();
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_2226D1B0C;
  v8 = v0[37];

  return MEMORY[0x28217FBF8](v8);
}

uint64_t sub_2226D1B0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_2226D2028;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_2226D1C34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226D1C34()
{
  v1 = v0[56];
  v2 = v0[51];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[30];
  v12 = MEMORY[0x277D22148];
  v11[3] = v0[53];
  v11[4] = v12;
  *v11 = v1;
  v2(v9, v10);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2226D1D5C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  (*(v0[41] + 8))(v0[42], v0[40]);
  (*(v2 + 8))(v1, v3);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[26];
  v6 = v0[27];
  v0[25] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2226D2028()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  (*(v0 + 408))(*(v0 + 296), *(v0 + 272));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  *(v0 + 200) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_22273816C();
  sub_222660468(v0 + 176, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

id sub_2226D230C(uint64_t a1, void *a2)
{
  v20 = ASCSignpostTagUnique();
  [objc_opt_self() jsStackBootstrapDidBeginWithTag_];
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v5 = result;
    sub_2226D5404(result, a1);
    v6 = sub_22262D828();
    v22 = v6;
    v23 = MEMORY[0x277D225C0];
    v21[0] = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = a2;

    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F00, &qword_222743D98);
    v19 = MEMORY[0x277D224B8];
    sub_22262BED4(&qword_281312E60, &qword_27D013F00, &qword_222743D98, MEMORY[0x277D224B8]);
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_222738E7C();
    v10 = MEMORY[0x277D225C0];
    v22 = v6;
    v23 = MEMORY[0x277D225C0];
    v21[0] = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2226D593C;
    *(v12 + 24) = v11;
    v13 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F08, &qword_222743DA0);
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v6;
    v23 = v10;
    v21[0] = v13;
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v13;
    v14[4] = v5;
    v15 = v13;

    v18 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F10, &qword_222743DA8);
    sub_22262BED4(&qword_281312E68, &qword_27D013F10, &qword_222743DA8, v19);
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    *(swift_allocObject() + 16) = v20;
    v16 = sub_22273955C();
    v22 = v6;
    v23 = v10;
    v21[0] = v16;
    sub_222738EBC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_222738E7C();
    v22 = v6;
    v23 = v10;
    v21[0] = v15;
    v17 = sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1(v21);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226D2718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_222737DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F00, &qword_222743D98);

  v13 = sub_222738F2C();
  v14 = sub_22273946C();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_222743DD8;
  v15[5] = v12;
  v15[6] = v13;

  sub_2226D4E54(0, 0, v6, &unk_222743DE8, v15);

  return v13;
}

uint64_t sub_2226D297C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22266BCCC((a1 + 1), (a2 + 1));
  *a2 = v3;
}

uint64_t sub_2226D29C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2227383CC();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2226D2B24;

  return v12(v9);
}

uint64_t sub_2226D2B24()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2226D65BC;
  }

  else
  {
    v2 = sub_2226D65C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D2C38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_2226D2D2C;

  return v9(v6 + 16);
}

uint64_t sub_2226D2D2C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2226D65CC;
  }

  else
  {
    v2 = sub_2226D65C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D2E40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2227373FC();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2226D2FA0;

  return v12(v9);
}

uint64_t sub_2226D2FA0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2226D3144;
  }

  else
  {
    v2 = sub_2226D30B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D30B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_222738EEC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226D3144()
{
  v1 = *(v0 + 56);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D31BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_2226D32B0;

  return v9(v6 + 16);
}

uint64_t sub_2226D32B0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2226D3430;
  }

  else
  {
    v2 = sub_2226D33C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D33C4()
{
  sub_222738EEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D3430()
{
  v1 = *(v0 + 40);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D34A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_2226D3594;

  return v9(v6 + 16);
}

uint64_t sub_2226D3594()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2226D65D0;
  }

  else
  {
    v2 = sub_2226D36A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D36A8()
{
  sub_222738EEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D3714(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_2226D3808;

  return v9(v6 + 16);
}

uint64_t sub_2226D3808()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2226D65CC;
  }

  else
  {
    v2 = sub_2226D391C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D391C()
{
  sub_222738EEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D3988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_2226D3A7C;

  return v9(v6 + 16);
}

uint64_t sub_2226D3A7C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2226D3B90;
  }

  else
  {
    v2 = sub_2226D36A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D3B90()
{
  v1 = *(v0 + 48);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D3C00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_2226D3CF4;

  return v9(v6 + 40);
}

uint64_t sub_2226D3CF4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2226D3E6C;
  }

  else
  {
    v2 = sub_2226D3E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D3E08()
{
  sub_222738EEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D3E6C()
{
  v1 = *(v0 + 32);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D3EDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_2226D3FD0;

  return v9(v6 + 16);
}

uint64_t sub_2226D3FD0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2226D3B90;
  }

  else
  {
    v2 = sub_2226D40E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D40E4()
{
  sub_222738EEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D4148(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_2226D4284;

  return v11(v8);
}

uint64_t sub_2226D4284()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2226D441C;
  }

  else
  {
    v2 = sub_2226D4398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D4398()
{
  v1 = *(v0 + 24);
  sub_222738EEC();
  sub_222660468(v1, &unk_27D013DA0, &qword_222743E40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D441C()
{
  v1 = *(v0 + 40);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D4494(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_2226D4588;

  return v9(v6 + 16);
}

uint64_t sub_2226D4588()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2226D65D4;
  }

  else
  {
    v2 = sub_2226D65C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D469C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_2226D4788;

  return v9();
}

uint64_t sub_2226D4788()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2226D3E6C;
  }

  else
  {
    v2 = sub_2226D489C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D489C(uint64_t a1)
{
  sub_222738EEC();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2226D48FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_2226D49F0;

  return v9(v6 + 16);
}

uint64_t sub_2226D49F0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2226D65CC;
  }

  else
  {
    v2 = sub_2226D4B04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D4B04()
{
  sub_222738EEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D4B70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_2226D4C64;

  return v9(v6 + 16);
}

uint64_t sub_2226D4C64()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2226D4DE4;
  }

  else
  {
    v2 = sub_2226D4D78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226D4D78()
{
  sub_222738EEC();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226D4DE4()
{
  v1 = *(v0 + 72);
  sub_222738ECC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D4E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22266110C(a3, v23 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22273945C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2227393FC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22273921C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_222660468(a3, &unk_27D013050, &qword_222741370);

    return v21;
  }

LABEL_8:
  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_2226D5150(uint64_t a1)
{
  v9 = a1;
  v8 = sub_22273954C();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22273952C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_222737C9C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22262D828();
  sub_222737C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F60, &unk_222743E48);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227412F0;
  sub_22273951C();
  v10 = v6;
  sub_22262D874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70, MEMORY[0x277D83970]);
  sub_2227397BC();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v8);
  sub_22273958C();
}

uint64_t sub_2226D5404(void *a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F28, &qword_222743E08);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  type metadata accessor for JSJetPackFetcher(0);
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384FC();
  v19 = sub_22273872C();
  v22 = v19;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  sub_222737DAC();
  v18[2] = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2226CF5B8(v9);
  v18[1] = sub_2227384FC();
  (*(v7 + 8))(v9, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2226D639C;
  *(v11 + 24) = v10;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F30, &qword_222743E10);
  sub_22262BED4(&qword_281312F68, &unk_27D0138C0, qword_222742B80, MEMORY[0x277D21D90]);
  v13 = sub_22273837C();

  v21[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F38, &qword_222743E18);
  sub_22262BED4(&unk_281312F28, &qword_27D013F38, &qword_222743E18, MEMORY[0x277D21DF8]);
  sub_22273835C();

  v14 = v20;
  sub_2227384FC();
  (*(v3 + 8))(v5, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F40, &qword_222743E20);
  v15 = MEMORY[0x277D224B8];
  sub_22262BED4(&qword_281312E70, &qword_27D013F40, &qword_222743E20, MEMORY[0x277D224B8]);
  sub_222738E7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F48, &qword_222743E28);
  sub_22262BED4(&qword_281312E78, &qword_27D013F48, &qword_222743E28, v15);
  sub_222738E7C();

  v22 = v19;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  type metadata accessor for JSStackBootstrap.JSPackage(0);
  v16 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226D593C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for JSStackBootstrap.JSPackage(0);
  v7 = a1 + *(v6 + 20);
  v8 = a1 + *(v6 + 24);

  return sub_2226D5A5C(a2, v7, v8, v5);
}

uint64_t sub_2226D5998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F18, &unk_222743DB0);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result;
  return result;
}

id sub_2226D5A14()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 jsStackBootstrapDidEndWithTag_];
}

uint64_t sub_2226D5A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222737FBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2227384BC();
  v15 = sub_2226B5E2C(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22266BCCC(a1, v36);

  sub_222737FAC();
  sub_22273855C();
  (*(v11 + 8))(v13, v10);

  v17 = sub_2226B8AD0(v16, v15);
  v33 = sub_2226FB744(a4);
  v18 = type metadata accessor for JSMediaTokensObject(0);
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_cachedServices;
  *&v19[v20] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  sub_22273858C();
  sub_222738C9C();
  (*(v7 + 32))(&v19[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_bag], v9, v6);
  v35.receiver = v19;
  v35.super_class = v18;
  v21 = objc_msgSendSuper2(&v35, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F20, &unk_222743DC0);
  v22 = sub_222738DBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_222743D10;
  v27 = (v26 + v25);
  *v27 = 7041889;
  v27[1] = 0xE300000000000000;
  v27[2] = v17;
  v28 = *(v23 + 104);
  (v28)(v26 + v25, *MEMORY[0x277D22448], v22);
  v29 = (v26 + v25 + v24);
  *v29 = 0xD00000000000001ALL;
  v29[1] = 0x800000022274C5C0;
  v29[2] = v33;
  v28();
  v30 = (v26 + v25 + 2 * v24);
  *v30 = 0x6B6F54616964656DLL;
  v30[1] = 0xEB00000000736E65;
  v30[2] = v21;
  v28();
  v24 *= 3;
  sub_22266BCCC(v34, v26 + v25 + v24);
  (v28)(v26 + v25 + v24, *MEMORY[0x277D22460], v22);

  return v26;
}

uint64_t sub_2226D5E5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_222738E2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  sub_222738E1C();
  sub_222738E0C();
  sub_222738E5C();
  (*(v5 + 16))(v7, v10, v4);

  v11 = a2;

  v12 = sub_222738E4C();
  sub_222738DDC();
  if (os_variant_has_internal_content())
  {
    v13 = [objc_opt_self() daemonDefaults];
    v14 = [v13 enableWebInspector];

    if (v14)
    {
      sub_222738DEC();
      ASCDumpEnvVars("JSStack created");
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F10, &qword_222743DA8);
  v17[0] = v12;
  v15 = sub_222738EAC();
  (*(v5 + 8))(v10, v4);
  return v15;
}

uint64_t type metadata accessor for JSStackBootstrap.JSPackage(uint64_t a1)
{
  result = qword_2813138A8;
  if (!qword_2813138A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226D60FC(uint64_t a1)
{
  v4 = *(sub_222737DAC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226D120C(a1, v1 + v5, v6);
}

uint64_t sub_2226D6208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4494(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226D62E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_22269D720(a1, v4);
}

uint64_t sub_2226D63B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_2226D6424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F50, &qword_222743E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D64BC(uint64_t a1)
{
  result = sub_222737DAC();
  if (v2 <= 0x3F)
  {
    result = sub_2227384DC();
    if (v3 <= 0x3F)
    {
      result = sub_2226D6558();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2226D6558()
{
  result = qword_281312F08;
  if (!qword_281312F08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281312F08);
  }

  return result;
}

void *sub_2226D65D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v42 = a1;
  v46 = *v2;
  v5 = sub_22273842C();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v39 - v8;
  v10 = sub_22273834C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222738BBC();
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a2;
  sub_22273858C();
  v17 = a2;
  v18 = v3;
  v47 = v17;
  v19 = v42;
  v41 = v14;
  sub_222738C9C();
  v20 = sub_22273916C();
  (*(v11 + 104))(v13, *MEMORY[0x277D21C40], v10);
  v39 = v16;
  sub_222738AFC();

  v21 = v19;
  (*(v11 + 8))(v13, v10);
  v22 = v44;
  v23 = v45;
  v49 = v46;
  v24 = v43;
  sub_222738B3C();
  v25 = v24;
  v26 = v48;
  (*(v7 + 8))(v9, v25);
  v27 = *aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F68, &qword_222743F38);
  swift_allocObject();

  sub_2226D9434(sub_2226D93C4, v21, v27);
  v29 = v28;

  v18[3] = v29;
  sub_2226D96D4(&qword_281312F80, MEMORY[0x277D21CE0], &protocol conformance descriptor for MetricsLogger.Configuration);
  sub_222738C8C();
  (*(v22 + 16))(v18 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics, v26, v23);
  v30 = qword_2813140D8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v47;
  [v47 addObserver:v18 selector:sel_didReceiveMemoryWarning_ name:qword_281315B98 object:0];

  if (!os_variant_has_internal_content())
  {
    goto LABEL_7;
  }

  v32 = [objc_opt_self() daemonDefaults];
  v33 = [v32 enableWebInspector];

  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v18[3];
  v35 = *(v34 + 40);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2226D9BF4;
  *(v36 + 24) = v34;
  aBlock[4] = sub_2226D9BF8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226D9008;
  aBlock[3] = &block_descriptor_23;
  v37 = _Block_copy(aBlock);

  dispatch_sync(v35, v37);
  _Block_release(v37);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
LABEL_7:
  }

  (*(v22 + 8))(v48, v23);
  (*(v40 + 8))(v39, v41);
  return v18;
}

uint64_t sub_2226D6C34@<X0>(void *a2@<X8>)
{

  sub_2226D5150(v3);
  v5 = v4;
  v7 = sub_2226D230C(v6, v4);

  *a2 = v7;
  return result;
}

uint64_t sub_2226D6C84()
{
  [*(v0 + 16) removeObserver_];

  sub_2226D9B8C(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics);

  return swift_deallocClassInstance();
}

uint64_t sub_2226D6D44(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v24 = a1;
  v4 = type metadata accessor for JSDiagnostics(0);
  v23 = *(v4 - 8);
  v25 = *(v23 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222738DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
  v22 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
  v19 = *(v8 + 16);
  v19(v11, a2, v7, v10);
  sub_2226D97C4(v2 + v12, v6);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + *(v23 + 80) + v13) & ~*(v23 + 80);
  v15 = swift_allocObject();
  v16 = *(v8 + 32);
  v16(v15 + v13, v11, v7);
  sub_2226D9828(v6, v15 + v14);
  (v19)(v11, v20, v7);
  sub_2226D97C4(v21 + v22, v6);
  v17 = swift_allocObject();
  v16(v17 + v13, v11, v7);
  sub_2226D9828(v6, v17 + v14);
  v26[3] = sub_22273872C();
  v26[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_22273871C();
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_2226D7004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_22273812C();
  if (*(v6 + 16))
  {
    v7 = v6;
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v8 = sub_222738F6C();
    __swift_project_value_buffer(v8, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v9 = sub_222738DAC();
    v13 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
    sub_22273815C();
    sub_222660468(v12, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_2227381AC();
    sub_22273819C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F80, &unk_222743F58);
    v12[0] = v7;

    sub_22273818C();
    sub_222660468(v12, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C7C();

    sub_2226CB4A0(v7);
  }

  else
  {
  }
}

uint64_t sub_2226D7354(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v15 = sub_222738F6C();
  __swift_project_value_buffer(v15, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v7 = sub_222738DAC();
  v18 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v9 = *(*(v7 - 8) + 16);
  v9(boxed_opaque_existential_1, a2, v7);
  sub_22273815C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v18 = v16;
  v10 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v16 - 8) + 16))(v10);
  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = 0x6574756F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = v7;
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v9(v12, a2, v7);
  v13 = sub_222710688(inited);
  swift_setDeallocating();
  sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
  sub_2226CA204(a1, v13);
}

uint64_t sub_2226D772C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F78, &unk_222743F48);
    sub_22273956C();

    if (v3[0])
    {
      v3[3] = sub_22273872C();
      v3[4] = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v3);
      sub_22273871C();
      sub_222738E8C();

      return __swift_destroy_boxed_opaque_existential_1(v3);
    }
  }

  return result;
}

uint64_t sub_2226D7840()
{
  sub_222738DFC();
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C5C();
}

uint64_t sub_2226D798C(uint64_t a1)
{
  v1 = sub_2227381BC();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v6, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226D7BBC(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_222738DAC();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22273903C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  sub_222738FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
  v11 = *(v5 + 16);
  v18 = v4;
  v11(v7, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  v14 = sub_22273872C();
  v22 = v14;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F70, &qword_222743F40);
  sub_22262BED4(&unk_281312E80, &qword_27D013F70, &qword_222743F40, MEMORY[0x277D224B8]);
  v15 = sub_222738EDC();

  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_22273901C();
  sub_2226D6D44(v15, v3);
  (*(v19 + 8))(v3, v20);
  v22 = v14;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  swift_allocObject();
  swift_weakInit();
  sub_222738EBC();

  (*(v5 + 8))(v10, v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v15;
}

void *sub_2226D7F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F78, &unk_222743F48);
  result = sub_22273956C();
  if (v3[0])
  {
    v1 = sub_22262D828();
    v2 = sub_22273955C();
    v3[3] = v1;
    v3[4] = MEMORY[0x277D225C0];
    v3[0] = v2;
    sub_222738E8C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t sub_2226D8048()
{
  sub_222738E3C();

  sub_222738DFC();
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();
}

uint64_t sub_2226D81C0(uint64_t a1)
{
  v1 = sub_2227381BC();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v6, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226D84DC()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2226D93B0;
  *(v3 + 24) = v1;
  v6[4] = sub_2226D9BF8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2226D9008;
  v6[3] = &block_descriptor_15;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226D8618()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2226D9378;
  *(v3 + 24) = v1;
  v6[4] = sub_2226D9380;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2226D9008;
  v6[3] = &block_descriptor_11;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2226D8754()
{
  v1 = v0;
  v2 = sub_222737C4C();
  MEMORY[0x28223BE20](v2);
  v3 = sub_222737CDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  if (*(v0 + 64))
  {

    sub_222737CFC();
  }

  if (!*(v0 + 48))
  {
    sub_222737CCC();
    sub_222737D3C();
    v12 = *(v4 + 8);
    v10 = v4 + 8;
    v11 = v12;
    v12(v6, v3);
    sub_222737CAC();
    v13 = sub_222737CBC();
    v12(v6, v3);
    if (v13)
    {
      v14 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_2226D93A8;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22269F82C;
      aBlock[3] = &block_descriptor_8_0;
      v16[1] = _Block_copy(aBlock);
      v18 = MEMORY[0x277D84F90];
      sub_2226D96D4(&qword_281312FF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v17 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
      v16[0] = v10;
      sub_22262BED4(&qword_281312DE0, &qword_27D013A10, &qword_222742900, MEMORY[0x277D83970]);
      sub_2227397BC();
      sub_222737D0C();
      swift_allocObject();
      v15 = sub_222737CEC();

      sub_22273953C();
      v17(v9, v3);
      *(v1 + 64) = v15;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2226D8AC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2226D8B18();
  }

  return result;
}

uint64_t sub_2226D8B18()
{
  v1 = sub_2227381BC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_222737D1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[5];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_222737D4C();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  v0[7] = 0;

  v0[8] = 0;

  v0[9] = 0;
  swift_unknownObjectRelease();
  if (qword_281312E28 != -1)
  {
LABEL_5:
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_2226D8DE8(uint64_t a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(a1 + 48);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  *(a1 + 48) = v5;
  if (*(a1 + 64))
  {

    sub_222737CFC();
  }

  if (qword_281312E28 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

void sub_2226D9030(uint64_t a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(a1 + 48);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = qword_281312E28;
  v5 = v3 - 1;
  *(a1 + 48) = v5;
  if (v5)
  {
    if (v4 == -1)
    {
LABEL_4:
      v6 = sub_222738F6C();
      __swift_project_value_buffer(v6, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C5C();

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (v4 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  swift_beginAccess();
  if (*(a1 + 56))
  {
    sub_2226D8754();
  }
}

void sub_2226D93CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  if (v4)
  {
  }

  sub_2226D8754();
  *a2 = v4;
}

void sub_2226D9434(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_22273952C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_222737C9C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22273954C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  if (a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = a3;
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    v13[0] = sub_22262D828();
    (*(v10 + 104))(v12, *MEMORY[0x277D85268], v9);

    sub_222737C7C();
    v13[1] = MEMORY[0x277D84F90];
    sub_2226D96D4(&qword_281312CD0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
    sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70, MEMORY[0x277D83970]);
    sub_2227397BC();
    *(v3 + 40) = sub_22273958C();
    *(v3 + 48) = 0;
  }
}

uint64_t sub_2226D96D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226D97C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D9828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D988C(uint64_t a1)
{
  v3 = *(sub_222738DAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for JSDiagnostics(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2226D7004(a1, v1 + v4, v7);
}

uint64_t objectdestroy_31Tm()
{
  v1 = sub_222738DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for JSDiagnostics(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_22273842C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2226D9AB8(void *a1)
{
  v3 = *(sub_222738DAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for JSDiagnostics(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2226D7354(a1, v1 + v4, v7);
}

uint64_t sub_2226D9B8C(uint64_t a1)
{
  v2 = type metadata accessor for JSDiagnostics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226D9C20(uint64_t a1)
{
  v1 = sub_222738BBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  sub_2226B92B8();
  sub_222738C9C();
  v8 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
  sub_222738C9C();
  v9 = *(v2 + 16);
  v9(v4, v7, v1);
  sub_22266BCCC(v30, v25);
  v10 = [objc_opt_self() mainBundle];
  sub_2227389EC();
  v26 = &type metadata for AppStateMetricsFieldsProvider;
  v27 = sub_2226DA178();
  v11 = swift_allocObject();
  v25[0] = v11;
  sub_22266BCCC(v29, v11 + 16);
  sub_22266BCCC(v28, v11 + 56);
  if (qword_281312EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_222738ABC();
  __swift_project_value_buffer(v12, qword_281315B08);
  sub_2227389CC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v13 = type metadata accessor for UniversalMetricsFieldsProvider(0);
  v26 = v13;
  v27 = sub_2226DA220(&qword_2813131B8, type metadata accessor for UniversalMetricsFieldsProvider, "Yí_");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22266BCCC(v30, boxed_opaque_existential_1);
  v9(boxed_opaque_existential_1 + *(v13 + 24), v7, v1);
  boxed_opaque_existential_1[5] = v8;
  v15 = qword_281312EB0;
  v16 = v8;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_222738A8C();
  __swift_project_value_buffer(v17, qword_281315B20);
  sub_2227389DC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v26 = &type metadata for ActivityMetricsFieldsProvider;
  v27 = sub_2226DA1CC();
  if (qword_281312EC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_281315B50);
  sub_2227389DC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_22273850C();
  v18 = type metadata accessor for MetricsIdMetricsFieldsProvider(0);
  v26 = v18;
  v27 = sub_2226DA220(&qword_281314318, type metadata accessor for MetricsIdMetricsFieldsProvider, &unk_2227440F8);
  v24[0] = v24[1];
  v19 = __swift_allocate_boxed_opaque_existential_1(v25);
  v20 = *(v18 + 20);
  v21 = *MEMORY[0x277D22348];
  v22 = sub_222738ACC();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v24[0];
  if (qword_281312EC0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_281315B38);
  sub_2227389DC();

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  (*(v2 + 8))(v7, v1);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_2226DA178()
{
  result = qword_2813140F8;
  if (!qword_2813140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140F8);
  }

  return result;
}

unint64_t sub_2226DA1CC()
{
  result = qword_2813131C8;
  if (!qword_2813131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131C8);
  }

  return result;
}

uint64_t sub_2226DA220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetricsLogger.Configuration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v20 = sub_22273834C();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = sub_222738BBC();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273858C();
  v18[1] = a1;
  v19 = v10;
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_222738C9C();
  v13 = sub_22273916C();
  sub_222738B5C();

  sub_222738B3C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = sub_22273916C();
  v16 = v20;
  (*(v3 + 104))(v5, *MEMORY[0x277D21C38], v20);
  sub_222738AFC();

  (*(v3 + 8))(v5, v16);
  sub_222738B3C();
  v14(v9, v6);
  sub_22266BCCC(v24, v23);
  sub_22273841C();

  __swift_destroy_boxed_opaque_existential_1(v24);
  return (*(v21 + 8))(v12, v19);
}

uint64_t sub_2226DA62C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
  __swift_allocate_value_buffer(v0, qword_27D019C98);
  __swift_project_value_buffer(v0, qword_27D019C98);
  sub_2226DA6AC();
  return sub_22273884C();
}

unint64_t sub_2226DA6AC()
{
  result = qword_27D013080;
  if (!qword_27D013080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D013080);
  }

  return result;
}

uint64_t sub_2226DA6F8()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B50);
  __swift_project_value_buffer(v0, qword_281315B50);
  return sub_222738A6C();
}

uint64_t sub_2226DA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222660228;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_2226DA84C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22348];
  v3 = sub_222738ACC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2226DA8D8(uint64_t a1)
{
  v2 = v1;
  if (qword_27D0129D0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v3, qword_27D019C98);
    sub_2226DA6AC();
    sub_22273888C();
    if (!v22[0])
    {
      if (qword_27D0129B0 != -1)
      {
        swift_once();
      }

      v18 = sub_222738F6C();
      __swift_project_value_buffer(v18, qword_27D019C80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227413C0;
      sub_22273813C();
      sub_22273813C();
      sub_222738C6C();

      return;
    }

    v19 = v22[0];
    v4 = [v22[0] fields];
    v5 = sub_22273910C();

    v6 = 0;
    v8 = v5 + 64;
    v7 = *(v5 + 64);
    v21 = v5;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v7;
    v12 = (v9 + 63) >> 6;
    if ((v10 & v7) != 0)
    {
      break;
    }

LABEL_7:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v13);
      ++v6;
      if (v11)
      {
        v23 = v2;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  while (1)
  {
    v23 = v2;
    v13 = v6;
LABEL_11:
    v14 = *(v21 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v11))));
    v15 = *v14;
    v16 = *(v14 + 8);
    v22[3] = MEMORY[0x277D837D0];
    v22[0] = v15;
    v22[1] = v16;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

    v17 = v23;
    sub_22273881C();
    v2 = v17;
    if (v17)
    {
      break;
    }

    v11 &= v11 - 1;

    __swift_destroy_boxed_opaque_existential_1(v22);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2226DAC64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
  __swift_allocate_value_buffer(v0, qword_27D019CB0);
  __swift_project_value_buffer(v0, qword_27D019CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  return sub_22273884C();
}

uint64_t sub_2226DACF0()
{
  v0 = sub_222738ABC();
  __swift_allocate_value_buffer(v0, qword_281315B08);
  __swift_project_value_buffer(v0, qword_281315B08);
  return sub_222738A9C();
}

uint64_t sub_2226DAD64(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v49 = sub_2227378CC();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227377AC();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222737C2C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2227377BC();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22273793C();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = v45 - v14;
  if (qword_27D0129E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
  __swift_project_value_buffer(v15, qword_27D019CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  sub_22273888C();
  v16 = v55[0];
  if (v55[0])
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      sub_2226DB84C(v18, v54);
      return swift_unknownObjectRelease_n();
    }

    sub_22266BCCC(v2, v55);
    v45[2] = v57;
    v45[1] = __swift_project_boxed_opaque_existential_1(v55, v56);
    v21 = [v16 id];
    [v21 int64value];
    v22 = v58;
    sub_222737C1C();
    v58 = v22;
    if (v22)
    {
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v47 + 104))(v7, *MEMORY[0x277CEBFE8], v5);
    sub_22273778C();

    sub_222694714();
    v23 = v53;
    sub_2227379EC();
    (*(v48 + 8))(v4, v49);
    (*(v46 + 8))(v11, v9);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v24 = v51;
    v25 = v50;
    v26 = v52;
    (*(v51 + 16))(v50, v23, v52);
    v27 = (*(v24 + 88))(v25, v26);
    v28 = MEMORY[0x277D837D0];
    if (v27 == *MEMORY[0x277CEC0D8])
    {
      (*(v24 + 96))(v25, v26);
      v29 = *v25;
      v30 = *(v25 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6D61726150797562;
      v32 = inited + 32;
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 72) = v28;
      *(inited + 40) = 0xE900000000000073;
      *(inited + 48) = v29;
      *(inited + 56) = v30;
      v33 = sub_222710688(inited);
      swift_setDeallocating();
      sub_2226AFC24(v32);
      v34 = 0xE600000000000000;
      v35 = 0x657461647075;
    }

    else
    {
      if (v27 != *MEMORY[0x277CEC098])
      {
        v40 = v54;
        if (v27 == *MEMORY[0x277CEC090])
        {
          (*(v24 + 96))(v25, v26);
          v42 = sub_22273782C();
          (*(*(v42 - 8) + 8))(v25, v42);
          v33 = 0;
          v34 = 0xE600000000000000;
          v35 = 0x6C65636E6163;
        }

        else if (v27 == *MEMORY[0x277CEC0C0])
        {
          (*(v24 + 96))(v25, v26);
          v43 = sub_22273786C();
          (*(*(v43 - 8) + 8))(v25, v43);
          v33 = 0;
          v34 = 0xE400000000000000;
          v35 = 1852141679;
        }

        else
        {
          v33 = 0;
          v34 = 0xE300000000000000;
          v35 = 7959906;
          if (v27 != *MEMORY[0x277CEC0A8] && v27 != *MEMORY[0x277CEC0B0])
          {
            v44 = *(v24 + 8);
            v44(v53, v26);
            swift_unknownObjectRelease();
            return (v44)(v25, v26);
          }
        }

        goto LABEL_16;
      }

      (*(v24 + 96))(v25, v26);
      v36 = *v25;
      v37 = *(v25 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      v38 = swift_initStackObject();
      *(v38 + 32) = 0x6D61726150797562;
      v39 = v38 + 32;
      *(v38 + 16) = xmmword_2227412F0;
      *(v38 + 72) = v28;
      *(v38 + 40) = 0xE900000000000073;
      *(v38 + 48) = v36;
      *(v38 + 56) = v37;
      v33 = sub_222710688(v38);
      swift_setDeallocating();
      sub_2226AFC24(v39);
      v34 = 0xE800000000000000;
      v35 = 0x64616F6C6E776F64;
    }

    v40 = v54;
LABEL_16:
    v56 = v28;
    v55[0] = v35;
    v55[1] = v34;
    __swift_mutable_project_boxed_opaque_existential_1(v40, *(v40 + 24));
    v41 = v58;
    sub_22273881C();
    if (v41)
    {
      (*(v24 + 8))(v53, v26);
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
      if (v33)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
        v55[0] = v33;
        __swift_mutable_project_boxed_opaque_existential_1(v40, *(v40 + 24));
        sub_22273881C();
        (*(v24 + 8))(v53, v26);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v55);
      }

      else
      {
        (*(v24 + 8))(v53, v26);
        return swift_unknownObjectRelease();
      }
    }
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v20 = sub_222738F6C();
  __swift_project_value_buffer(v20, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_22273813C();
  sub_22273813C();
  sub_222738C6C();
}

uint64_t sub_2226DB84C(void *a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_2227378CC();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2227377AC();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  MEMORY[0x28223BE20](v9 - 8);
  v58 = sub_2227377BC();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22273793C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v50 - v17;
  v64 = v3;
  sub_22266BCCC(v3, v66);
  v55 = v68;
  v54 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v18 = a1;
  v19 = [a1 id];
  [v19 int64value];
  v20 = v69;
  sub_222737C1C();
  v69 = v20;
  if (v20)
  {

    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v51 = v15;
  v52 = v13;
  v53 = v12;
  (*(v57 + 104))(v8, *MEMORY[0x277CEBFE8], v59);
  sub_22273778C();

  v22 = v60;
  v23 = v18;
  sub_2227113BC();
  v24 = v61;
  sub_2227379EC();
  (*(v62 + 8))(v22, v63);
  (*(v56 + 8))(v11, v58);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v25 = *(*__swift_project_boxed_opaque_existential_1((v64 + 40), *(v64 + 64)) + 16);

  os_unfair_lock_lock((v25 + 32));
  v26 = *(v25 + 16);

  sub_2226F7D38(v27, v26);
  v29 = v28;
  os_unfair_lock_unlock((v25 + 32));

  v30 = [v23 iapItemID];
  v31 = sub_2226DC824(v30, v29);

  v32 = v24;
  if (![v23 streamlinedOffer])
  {
    v39 = 1;
    v41 = v52;
    v40 = v53;
    v35 = v51;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v34 = swift_conformsToProtocol2();
  v35 = v51;
  if (!v34)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v36 = *(v34 + 8);
  v37 = v34;
  swift_unknownObjectRetain();
  v38 = v36(ObjectType, v37);
  swift_unknownObjectRelease_n();
  if (!v38)
  {
LABEL_9:
    v39 = 1;
    goto LABEL_10;
  }

  v39 = 0;
LABEL_10:
  v41 = v52;
  v40 = v53;
LABEL_11:
  (*(v41 + 16))(v35, v32, v40);
  v42 = (*(v41 + 88))(v35, v40);
  if (v42 == *MEMORY[0x277CEC0D8])
  {
    (*(v41 + 8))(v35, v40);
    v43 = 0xE600000000000000;
    v44 = 0x657461647075;
    goto LABEL_27;
  }

  if (v42 == *MEMORY[0x277CEC098])
  {
    (*(v41 + 8))(v35, v40);
    if ((v39 | v31))
    {
      v44 = 0x64616F6C6E776F64;
    }

    else
    {
      v44 = 7959906;
    }

    if ((v39 | v31))
    {
      v43 = 0xE800000000000000;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    goto LABEL_27;
  }

  if (v42 == *MEMORY[0x277CEC090])
  {
    (*(v41 + 96))(v35, v40);
    v45 = sub_22273782C();
    (*(*(v45 - 8) + 8))(v35, v45);
    v43 = 0xE600000000000000;
    v44 = 0x6C65636E6163;
    goto LABEL_27;
  }

  v44 = 7959906;
  if (v42 == *MEMORY[0x277CEC0C0])
  {
    (*(v41 + 96))(v35, v40);
    if ((v39 | v31))
    {
      v44 = 1852141679;
      v43 = 0xE400000000000000;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v46 = sub_22273786C();
    (*(*(v46 - 8) + 8))(v35, v46);
    goto LABEL_27;
  }

  v43 = 0xE300000000000000;
  if (v42 == *MEMORY[0x277CEC0A8])
  {
LABEL_27:
    v47 = v65;
LABEL_28:
    v67 = MEMORY[0x277D837D0];
    v66[0] = v44;
    v66[1] = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v47, *(v47 + 24));
    sub_22273881C();
    (*(v41 + 8))(v32, v40);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v48 = v42 == *MEMORY[0x277CEC0B0];
  v47 = v65;
  if (v48)
  {
    goto LABEL_28;
  }

  v49 = *(v41 + 8);
  v49(v32, v40);
  return (v49)(v35, v40);
}

uint64_t sub_2226DC020@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_222738ACC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2226DC0AC()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B38);
  __swift_project_value_buffer(v0, qword_281315B38);
  return sub_222738A6C();
}

uint64_t type metadata accessor for MetricsIdMetricsFieldsProvider(uint64_t a1)
{
  result = qword_281314308;
  if (!qword_281314308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226DC190(uint64_t a1)
{
  result = sub_222738ACC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226DC20C(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return MEMORY[0x2822009F8](sub_2226DC22C, 0, 0);
}

uint64_t sub_2226DC22C()
{
  v1 = v0[32];
  v3 = *v1;
  v2 = *(v1 + 8);
  v0[29] = *v1;
  v0[30] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  inited = swift_initStackObject();
  v0[33] = inited;
  *(inited + 16) = xmmword_2227440C0;
  v5 = qword_281314320;
  v6 = v3;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_281314328;
  *(inited + 32) = qword_281314328;
  v8 = v7;
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_2226DC380;

  return sub_2226E2934(inited, 0, 0xD000000000000013, 0x800000022274CA70);
}

uint64_t sub_2226DC380(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  swift_unknownObjectRelease();
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v1)
  {
    v4 = sub_2226DC6EC;
  }

  else
  {
    v4 = sub_2226DC4D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2226DC4D4()
{
  v1 = 0;
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v20 = *(v0 + 280);
  v7 = -1;
  v8 = -1 << *(v20 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v18 = v5;
  v19 = *(v0 + 248);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_8:
      v12 = *(v0 + 248);
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v20 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_22262BF70(*(v20 + 56) + 32 * v13, v0 + 32);
      *(v0 + 64) = v15;
      *(v0 + 72) = v16;
      sub_22269457C((v0 + 32), (v0 + 80));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014680, &unk_222744148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
      swift_dynamicCast();
      sub_22269457C((v0 + 128), (v0 + 200));
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v19 + 24));
      sub_22273881C();
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      __swift_destroy_boxed_opaque_existential_1((v0 + 200));

      v1 = v11;
      v5 = v18;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 200));

    v17 = *(v0 + 8);
LABEL_12:

    v17();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        v17 = *(v0 + 8);
        goto LABEL_12;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2226DC704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222660228;

  return sub_2226DC20C(a1);
}

uint64_t sub_2226DC798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_222738ACC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2226DC824(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22273988C();
  }

  else if (*(a2 + 16) && (sub_22262E364(0, &qword_281312B80, 0x277CCABB0), v5 = sub_2227396BC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_2227396CC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2226DC93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_222739C5C();
  sub_22273924C();
  v6 = sub_222739C8C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_222739B4C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MetricsTopicProvider.init(bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

unint64_t MetricsTopicProvider.currentMetricsTopic.getter()
{
  v0 = 0xD000000000000012;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F90, &qword_222744158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = sub_22273916C();
  sub_222738B6C();

  sub_222738B2C();
  (*(v6 + 8))(v8, v5);
  if (v12[1])
  {
    return v12[0];
  }

  v10 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v2 + 8))(v4, v1);
  if (LOBYTE(v12[0]) != 1)
  {
    return 0x615F706D615F7078;
  }

  return v0;
}

uint64_t MetricsTopicProvider.anonymousMetricsTopics.getter()
{
  v0 = sub_2226DD5A8(&unk_2835C7240);
  sub_22269E384(&unk_2835C7260);
  return v0;
}

uint64_t MetricsTopicProvider.shouldHaveAnonymousEvents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-v2];
  v4 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v1 + 8))(v3, v0);
  return v6[15];
}

Swift::String __swiftcall MetricsTopicProvider.replacementTopic(for:)(Swift::String a1)
{
  object = a1._object;
  if (qword_27D0129E8 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v2 = a1._countAndFlagsBits;
  if (sub_2226DC93C(a1._countAndFlagsBits, object, qword_27D013F88))
  {
    v3 = MetricsTopicProvider.currentMetricsTopic.getter();
    object = v4;
  }

  else
  {

    v3 = v2;
  }

  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2226DCEF8()
{
  v0 = sub_2226DD5A8(&unk_2835C7270);
  result = swift_arrayDestroy();
  qword_27D013F88 = v0;
  return result;
}

uint64_t sub_2226DCF44(uint64_t a1)
{
  v2 = sub_2227377BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013578, &qword_2227425D0);
    v9 = sub_22273990C();
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
      sub_2226DDF44(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
      v16 = sub_22273911C();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2226DDF44(&qword_27D013570, MEMORY[0x277CEC000], MEMORY[0x277CEC010]);
          v23 = sub_22273915C();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_2226DD264(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013518, &qword_222742588);
    v9 = sub_22273990C();
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
      sub_2226DDF44(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v16 = sub_22273911C();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2226DDF44(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
          v23 = sub_22273915C();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_2226DD5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
    v3 = sub_22273990C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_222739C5C();

      sub_22273924C();
      result = sub_222739C8C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_222739B4C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t type metadata accessor for MetricsTopicProvider(uint64_t a1)
{
  result = qword_281313430;
  if (!qword_281313430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226DD784(uint64_t a1)
{
  result = sub_222738BBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226DD7F0(uint64_t a1)
{
  v2 = sub_22273746C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F98, &unk_222744190);
    v9 = sub_22273990C();
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
      sub_2226DDF44(&qword_27D013FA0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22273911C();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2226DDF44(&qword_27D013FA8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22273915C();
          v24 = *v15;
          (*v15)(v5, v2);
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

void sub_2226DDB34(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_22273984C();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_22273990C();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22273984C();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x223DBEC70](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_2227396BC();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_22262E364(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_2227396CC();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_2227396BC();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_22262E364(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_2227396CC();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2226DDE20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013608, &qword_222742600);
    v3 = sub_22273990C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_222739C4C();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2226DDF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226DDF8C()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B20);
  __swift_project_value_buffer(v0, qword_281315B20);
  return sub_222738A6C();
}

uint64_t type metadata accessor for UniversalMetricsFieldsProvider(uint64_t a1)
{
  result = qword_2813131A8;
  if (!qword_2813131A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2226DE058(uint64_t a1)
{
  result = sub_2226A9A8C();
  if (v2 <= 0x3F)
  {
    result = sub_22262E364(319, &qword_281312D68, 0x277CB8F48);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MetricsTopicProvider(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2226DE104(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_22273731C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = v1;
    v17 = v1[5];
    v18 = sub_2227372BC();
    v19 = [v17 ams:v18 cookiesForURL:?];

    sub_22262E364(0, &qword_27D013FB0, 0x277CCAA30);
    v20 = sub_22273937C();

    v51 = v20;
    v52 = sub_2226DE800;
    v53 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013FB8, &qword_222744210);
    sub_2226DE8E0();
    v21 = sub_22273913C();
    v23 = v22;

    v54 = MEMORY[0x277D837D0];
    v51 = v21;
    v52 = v23;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v24 = v55;
    sub_22273881C();
    if (v24)
    {
      (*(v12 + 8))(v14, v11);
      return __swift_destroy_boxed_opaque_existential_1(&v51);
    }

    v55 = 0;
    v46 = v11;
    v47 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v25 = v16[3];
    v45 = v16;
    __swift_project_boxed_opaque_existential_1(v16, v25);
    sub_2227384EC();
    v26 = sub_222738CFC();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_2226DE9C8(v7);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CBC();

      v28 = v51;
      (*(v27 + 8))(v7, v26);
      if (v28)
      {
        type metadata accessor for UniversalMetricsFieldsProvider(0);
        v29 = sub_22273916C();
        v30 = v48;
        sub_222738B0C();

        v31 = v50;
        sub_222738B3C();
        (*(v49 + 8))(v30, v31);
        if (v51)
        {
        }

        else
        {
          v32 = [v28 stringValue];
          v33 = sub_22273919C();
          v35 = v34;

          v54 = MEMORY[0x277D837D0];
          v51 = v33;
          v52 = v35;
          __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
          v36 = v55;
          sub_22273881C();
          if (v36)
          {
            (*(v12 + 8))(v47, v46);

            return __swift_destroy_boxed_opaque_existential_1(&v51);
          }

          v55 = 0;

          __swift_destroy_boxed_opaque_existential_1(&v51);
        }
      }
    }

    v37 = objc_opt_self();
    [v37 mainScreenSize];
    v39 = v38;
    v41 = v40;
    [v37 mainScreenScale];
    v42 = MEMORY[0x277D85048];
    v54 = MEMORY[0x277D85048];
    v51 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v44 = v55;
    sub_22273881C();
    if (!v44)
    {
      __swift_destroy_boxed_opaque_existential_1(&v51);
      v54 = v42;
      v51 = v41;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_22273881C();
      __swift_destroy_boxed_opaque_existential_1(&v51);
      v54 = v42;
      v51 = v39;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_22273881C();
    }

    (*(v12 + 8))(v47, v46);
    return __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  __break(1u);
  return result;
}

uint64_t sub_2226DE800@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 name];
  v5 = sub_22273919C();
  v7 = v6;

  v13 = v5;
  MEMORY[0x223DBE5D0](61, 0xE100000000000000);
  v8 = [v3 value];
  v9 = sub_22273919C();
  v11 = v10;

  MEMORY[0x223DBE5D0](v9, v11);

  *a2 = v13;
  a2[1] = v7;
  return result;
}

unint64_t sub_2226DE8E0()
{
  result = qword_27D013FC0;
  if (!qword_27D013FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013FB8, &qword_222744210);
    sub_2226DE964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FC0);
  }

  return result;
}

unint64_t sub_2226DE964()
{
  result = qword_27D013FC8;
  if (!qword_27D013FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013FD0, qword_222744218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FC8);
  }

  return result;
}

uint64_t sub_2226DE9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2226DEA30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedLongLongValue];
  *a2 = result;
  return result;
}

void sub_2226DEA64(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(uint64_t *, uint64_t), uint64_t a9)
{
  v138 = a8;
  v139 = a7;
  v140 = a6;
  v136 = a3;
  v135 = type metadata accessor for ASCSignpostGroupValue(0);
  MEMORY[0x28223BE20](v135);
  v137 = (&v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2227373BC();
  v134 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v133 - v17;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v133 - v21;
  v23 = [a2 signpostId];
  if (*(a4 + 16))
  {
    v24 = v23;
    v25 = sub_222739C4C();
    v26 = -1 << *(a4 + 32);
    v27 = v25 & ~v26;
    if ((*(a4 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v28 = ~v26;
      while (*(*(a4 + 48) + 8 * v27) != v24)
      {
        v27 = (v27 + 1) & v28;
        if (((*(a4 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          return;
        }
      }

      v133 = a9;
      if (sub_22273962C() == a1)
      {
        v29 = [a2 name];
        v30 = sub_22273919C();
        v32 = v31;

        LOBYTE(v29) = sub_22268DC00(&v141, v30, v32);

        if (v29)
        {
          v33 = v140;
LABEL_17:
          v56 = [a2 beginDate];
          if (v56)
          {
            v57 = v56;
            sub_22273739C();

            v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
            v59 = [a2 name];
            v60 = sub_22273919C();
            v62 = v61;

            v63 = v137;
            *v137 = v60;
            *(v63 + 8) = v62;
            v64 = v134;
            (*(v134 + 16))(v63 + v58, v22, v13);
            swift_storeEnumTagMultiPayload();
            v138(v63, v136);
            sub_2226E01A0(v63);
            (*(v64 + 8))(v22, v13);
            return;
          }

          v81 = [a2 name];
          v82 = sub_22273919C();
          v84 = v83;

          sub_2226E014C();
          v53 = swift_allocError();
          *v85 = v82;
          *(v85 + 8) = v84;
          *(v85 + 16) = 0;
          *(v85 + 24) = 0;
          *(v85 + 32) = 1;
LABEL_45:
          v124 = v142;
          v33();
          if (v124)
          {
            goto LABEL_46;
          }

LABEL_55:
          v125 = v53;
          goto LABEL_47;
        }

        v49 = [a2 name];
        v50 = sub_22273919C();
        v52 = v51;

        sub_2226E014C();
        v53 = swift_allocError();
        *v54 = v50;
        *(v54 + 8) = v52;
        *(v54 + 16) = 0;
        *(v54 + 24) = 0;
        *(v54 + 32) = 0;
        v33 = v140;
        v55 = v142;
        v140();
        if (!v55)
        {
          v142 = 0;

          goto LABEL_17;
        }

LABEL_46:
        v125 = v53;
LABEL_47:

        return;
      }

      if (sub_22273961C() == a1)
      {
        v34 = [a2 name];
        v35 = sub_22273919C();
        v37 = v36;

        sub_2226E01FC(v35, v37);
        v39 = v38;

        if (v39)
        {

          v33 = v140;
        }

        else
        {
          v86 = [a2 name];
          v87 = sub_22273919C();
          v89 = v88;

          sub_2226E014C();
          v53 = swift_allocError();
          *v90 = v87;
          *(v90 + 8) = v89;
          *(v90 + 16) = 0;
          *(v90 + 24) = 0;
          *(v90 + 32) = 3;
          v33 = v140;
          v91 = v142;
          v140();
          if (v91)
          {
            goto LABEL_46;
          }

          v142 = 0;
        }

        v40 = [a2 endDate];
        if (v40)
        {
          v41 = v40;
          sub_22273739C();

          v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
          v43 = [a2 name];
          v44 = sub_22273919C();
          v46 = v45;

          v47 = v137;
          *v137 = v44;
          *(v47 + 8) = v46;
          v48 = v134;
          (*(v134 + 16))(v47 + v42, v18, v13);
          swift_storeEnumTagMultiPayload();
          v138(v47, v136);
          sub_2226E01A0(v47);
          (*(v48 + 8))(v18, v13);
          return;
        }

        v92 = [a2 name];
        v93 = sub_22273919C();
        v95 = v94;

        sub_2226E014C();
        v53 = swift_allocError();
        *v96 = v93;
        *(v96 + 8) = v95;
        *(v96 + 16) = 0;
        *(v96 + 24) = 0;
        *(v96 + 32) = 2;
        goto LABEL_45;
      }

      if (sub_22273963C() != a1)
      {
        return;
      }

      v65 = [a2 attributes];
      if (v65)
      {
        v66 = v65;
        v67 = sub_22273910C();

        if (*(v67 + 16))
        {
          v68 = sub_222688818(1734437958, 0xE400000000000000);
          if (v69)
          {
            v70 = (*(v67 + 56) + 16 * v68);
            v72 = *v70;
            v71 = v70[1];

            v73 = v72 == 1702195828 && v71 == 0xE400000000000000;
            if (v73 || (sub_222739B4C() & 1) != 0)
            {

              v74 = 1;
            }

            else
            {
              v126 = v72 == 0x65736C6166 && v71 == 0xE500000000000000;
              if (!v126 && (sub_222739B4C() & 1) == 0)
              {
                v127 = [a2 name];
                v128 = sub_22273919C();
                v130 = v129;

                sub_2226E014C();
                v53 = swift_allocError();
                *v131 = v128;
                *(v131 + 8) = v130;
                *(v131 + 16) = v72;
                *(v131 + 24) = v71;
                *(v131 + 32) = 4;
                v132 = v142;
                v140();
                if (v132)
                {
                  goto LABEL_46;
                }

                goto LABEL_55;
              }

              v74 = 0;
            }

            v75 = [a2 name];
            v76 = sub_22273919C();
            v78 = v77;

            v79 = v137;
            *v137 = v76;
            v79[1] = v78;
            *(v79 + 16) = v74;
            swift_storeEnumTagMultiPayload();
            v138(v79, v136);
            v80 = v79;
LABEL_40:
            sub_2226E01A0(v80);
            return;
          }
        }
      }

      v97 = [a2 attributes];
      v33 = v140;
      if (v97)
      {
        v98 = v97;
        v99 = sub_22273910C();

        if (*(v99 + 16))
        {
          v100 = sub_222688818(0x676E69727453, 0xE600000000000000);
          if (v101)
          {
            v102 = (*(v99 + 56) + 16 * v100);
            v104 = *v102;
            v103 = v102[1];

            v105 = [a2 name];
            v106 = sub_22273919C();
            v108 = v107;

            v109 = v137;
            *v137 = v106;
            v109[1] = v108;
            v109[2] = v104;
            v109[3] = v103;
            swift_storeEnumTagMultiPayload();
            v138(v109, v136);
            v80 = v109;
            goto LABEL_40;
          }
        }
      }

      v110 = [a2 beginDate];
      if (v110)
      {
        v111 = v110;
        sub_22273739C();

        v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
        v113 = [a2 name];
        v114 = sub_22273919C();
        v116 = v115;

        v117 = v137;
        *v137 = v114;
        *(v117 + 8) = v116;
        v118 = v134;
        (*(v134 + 16))(v117 + v112, v15, v13);
        swift_storeEnumTagMultiPayload();
        v138(v117, v136);
        sub_2226E01A0(v117);
        (*(v118 + 8))(v15, v13);
        return;
      }

      v119 = [a2 name];
      v120 = sub_22273919C();
      v122 = v121;

      sub_2226E014C();
      v53 = swift_allocError();
      *v123 = v120;
      *(v123 + 8) = v122;
      *(v123 + 16) = 0;
      *(v123 + 24) = 0;
      *(v123 + 32) = 5;
      goto LABEL_45;
    }
  }
}

void sub_2226DF4DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v130 = a3;
  v4 = sub_22273701C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227373BC();
  v9 = *(v8 - 8);
  v128 = v8;
  v129 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v127 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v127 - v16;
  v18 = type metadata accessor for ASCSignpostGroupValue(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2226E04FC(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v20;
  v22 = v20[1];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v25 = v20[2];
        v24 = v20[3];
        *&v131 = *v20;
        *(&v131 + 1) = v22;
        sub_22273700C();
        sub_2226B1104();
        v26 = MEMORY[0x277D837D0];
        sub_22273976C();
        v28 = v27;
        (*(v5 + 8))(v7, v4);
        if (v28)
        {
          v23 = sub_2227391FC();
          v30 = v29;
        }

        else
        {
          v64 = sub_22273926C();
          if (v65)
          {
LABEL_37:
            *(&v132 + 1) = v26;
            *&v131 = v25;
            *(&v131 + 1) = v24;
            goto LABEL_38;
          }

          v66 = v64;
          v67 = v26;
          if (v64 >= 0x4000)
          {
            sub_22273932C();
            v100 = sub_22273972C();
            v102 = v101;

            sub_222725110(0xFuLL, v66, v100, v102, v23, v22);
          }

          else
          {
            sub_22273925C();
            sub_22273932C();
            v68 = sub_22273972C();
            v70 = v69;

            sub_222725424(0xFuLL, v66, v68, v70, v23, v22);
          }

          v23 = v71;
          v30 = v72;

          v26 = v67;
        }

        v22 = v30;
        goto LABEL_37;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
      v45 = v128;
      (*(v129 + 32))(v11, v20 + *(v44 + 48), v128);
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      v133 = v23;
      v134 = v22;
      sub_22273700C();
      sub_2226B1104();
      sub_22273976C();
      v47 = v46;
      (*(v5 + 8))(v7, v4);
      if (v47)
      {
        v23 = sub_2227391FC();
        v49 = v48;
      }

      else
      {
        v73 = sub_22273926C();
        if (v74)
        {
LABEL_42:
          MEMORY[0x223DBE5D0](v23, v22);

          MEMORY[0x223DBE5D0](1701669204, 0xE400000000000000);
          v106 = v131;
          v107 = objc_opt_self();
          v108 = sub_22273734C();
          v109 = [v107 serverTimeFromDate_];

          *(&v132 + 1) = sub_2226CB914();
          *&v131 = v109;
          sub_222730CC4(&v131, v106, *(&v106 + 1));
          (*(v129 + 8))(v11, v45);
          return;
        }

        v75 = v73;
        if (v73 >= 0x4000)
        {
          sub_22273932C();
          v103 = sub_22273972C();
          v105 = v104;

          sub_222725110(0xFuLL, v75, v103, v105, v23, v22);
        }

        else
        {
          sub_22273925C();
          sub_22273932C();
          v76 = sub_22273972C();
          v78 = v77;

          sub_222725424(0xFuLL, v75, v76, v78, v23, v22);
        }

        v23 = v79;
        v49 = v80;
      }

      v22 = v49;
      goto LABEL_42;
    }

    v39 = *(v20 + 16);
    *&v131 = *v20;
    *(&v131 + 1) = v22;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v41 = v40;
    (*(v5 + 8))(v7, v4);
    if (v41)
    {
      v23 = sub_2227391FC();
      v43 = v42;
    }

    else
    {
      v56 = sub_22273926C();
      if (v57)
      {
LABEL_33:
        *(&v132 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v131) = v39;
LABEL_38:
        sub_222730CC4(&v131, v23, v22);
        return;
      }

      v58 = v56;
      if (v56 >= 0x4000)
      {
        sub_22273932C();
        v97 = sub_22273972C();
        v99 = v98;

        sub_222725110(0xFuLL, v58, v97, v99, v23, v22);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v59 = sub_22273972C();
        v61 = v60;

        sub_222725424(0xFuLL, v58, v59, v61, v23, v22);
      }

      v23 = v62;
      v43 = v63;
    }

    v22 = v43;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
    v51 = v129;
    (*(v129 + 32))(v14, v20 + *(v50 + 48), v128);
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    v133 = v23;
    v134 = v22;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v53 = v52;
    (*(v5 + 8))(v7, v4);
    if (v53)
    {
      v23 = sub_2227391FC();
      v55 = v54;
    }

    else
    {
      v89 = sub_22273926C();
      if (v90)
      {
LABEL_53:
        MEMORY[0x223DBE5D0](v23, v22);

        MEMORY[0x223DBE5D0](0x656D6954646E45, 0xE700000000000000);
        v123 = v131;
        v124 = objc_opt_self();
        v125 = sub_22273734C();
        v126 = [v124 serverTimeFromDate_];

        *(&v132 + 1) = sub_2226CB914();
        *&v131 = v126;
        sub_222730CC4(&v131, v123, *(&v123 + 1));
        (*(v51 + 8))(v14, v128);
        return;
      }

      v91 = v89;
      if (v89 >= 0x4000)
      {
        sub_22273932C();
        v120 = sub_22273972C();
        v122 = v121;

        sub_222725110(0xFuLL, v91, v120, v122, v23, v22);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v92 = sub_22273972C();
        v94 = v93;

        sub_222725424(0xFuLL, v91, v92, v94, v23, v22);
      }

      v23 = v95;
      v55 = v96;
    }

    v22 = v55;
    goto LABEL_53;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
  v33 = v128;
  v32 = v129;
  (*(v129 + 32))(v17, v20 + *(v31 + 48), v128);
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  v133 = v23;
  v134 = v22;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v35 = v34;
  (*(v5 + 8))(v7, v4);
  if (v35)
  {
    v23 = sub_2227391FC();
    v37 = v36;
    v38 = v130;
LABEL_45:

    v22 = v37;
    goto LABEL_46;
  }

  v81 = sub_22273926C();
  v38 = v130;
  if ((v82 & 1) == 0)
  {
    v83 = v81;
    if (v81 >= 0x4000)
    {
      sub_22273932C();
      v110 = sub_22273972C();
      v112 = v111;

      sub_222725110(0xFuLL, v83, v110, v112, v23, v22);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v84 = sub_22273972C();
      v86 = v85;

      sub_222725424(0xFuLL, v83, v84, v86, v23, v22);
    }

    v23 = v87;
    v37 = v88;

    v32 = v129;
    goto LABEL_45;
  }

LABEL_46:
  MEMORY[0x223DBE5D0](v23, v22);

  MEMORY[0x223DBE5D0](0x6D69547472617453, 0xE900000000000065);
  v113 = v131;
  v114 = *v38;
  if (*(*v38 + 16) && (v115 = sub_222688818(v131, *(&v131 + 1)), (v116 & 1) != 0))
  {
    sub_22262BF70(*(v114 + 56) + 32 * v115, &v131);
    (*(v32 + 8))(v17, v33);

    sub_222672BA0(&v131);
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
    sub_222672BA0(&v131);
    v117 = objc_opt_self();
    v118 = sub_22273734C();
    v119 = [v117 serverTimeFromDate_];

    *(&v132 + 1) = sub_2226CB914();
    *&v131 = v119;
    sub_222730CC4(&v131, v113, *(&v113 + 1));
    (*(v32 + 8))(v17, v33);
  }
}

unint64_t sub_2226E014C()
{
  result = qword_27D013FD8;
  if (!qword_27D013FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FD8);
  }

  return result;
}

uint64_t sub_2226E01A0(uint64_t a1)
{
  v2 = type metadata accessor for ASCSignpostGroupValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226E01FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_222739C5C();
  sub_22273924C();
  v6 = sub_222739C8C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_222739B4C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2226916B4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2226E0338(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_2226E0338(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2227397DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_222739C5C();

        sub_22273924C();
        v10 = sub_222739C8C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2226E04FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCSignpostGroupValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_27AppStoreComponentsDaemonKit21ASCSignpostGroupErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
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

uint64_t sub_2226E0590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2226E05D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2226E0620(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t type metadata accessor for ASCSignpostGroupValue(uint64_t a1)
{
  result = qword_27D014050;
  if (!qword_27D014050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2226E06E8(uint64_t a1)
{
  sub_2226E0794(319);
  if (v1 <= 0x3F)
  {
    sub_2226E07FC(319, &qword_27D014068, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_2226E07FC(319, &qword_27D014070, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2226E0794(uint64_t a1)
{
  if (!qword_27D014060)
  {
    sub_2227373BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D014060);
    }
  }
}

void sub_2226E07FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2226E0858(uint64_t a1, char *a2)
{
  v103 = a2;
  v3 = sub_2227373BC();
  v4 = *(v3 - 8);
  v101 = v3;
  v102 = v4;
  MEMORY[0x28223BE20](v3);
  v97 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v96 - v7;
  MEMORY[0x28223BE20](v8);
  v100 = &v96 - v9;
  MEMORY[0x28223BE20](v10);
  v98 = &v96 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v96 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = type metadata accessor for ASCSignpostGroupValue(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v96 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v96 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v96 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014078, &unk_222744410);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v96 + *(v35 + 56) - v34;
  v37 = a1;
  v38 = &v96 - v34;
  sub_2226E04FC(v37, &v96 - v34);
  sub_2226E04FC(v103, v36);
  v103 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v48 = v100;
    if (EnumCaseMultiPayload)
    {
      sub_2226E04FC(v103, v29);
      v67 = *v29;
      v68 = *(v29 + 8);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v69 = *v36;
        v70 = *(v36 + 1);
        v71 = *(v102 + 32);
        v72 = v29 + v32;
        v73 = v101;
        v71(v98, v72, v101);
        v74 = &v36[v32];
        v75 = v48;
        v71(v48, v74, v73);
        if (v67 == v69 && v68 == v70)
        {
        }

        else
        {
          v77 = sub_222739B4C();

          if ((v77 & 1) == 0)
          {
            v78 = *(v102 + 8);
            v78(v75, v73);
            v78(v98, v73);
            goto LABEL_58;
          }
        }

        v92 = v98;
        v86 = sub_22273738C();
        v89 = *(v102 + 8);
        v89(v75, v73);
        v90 = v92;
        v91 = v73;
        goto LABEL_56;
      }
    }

    else
    {
      v49 = v14;
      sub_2226E04FC(v103, v32);
      v51 = *v32;
      v50 = *(v32 + 8);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v79 = *(v36 + 1);
        v100 = *v36;
        v80 = *(v102 + 32);
        v81 = v32 + v29;
        v82 = v101;
        v80(v17, v81, v101);
        v80(v49, &v36[v29], v82);
        if (v51 == v100 && v50 == v79)
        {
        }

        else
        {
          v84 = sub_222739B4C();

          if ((v84 & 1) == 0)
          {
            v85 = *(v102 + 8);
            v85(v49, v82);
            v85(v17, v82);
            goto LABEL_58;
          }
        }

        v86 = sub_22273738C();
        v89 = *(v102 + 8);
        v89(v49, v82);
        v90 = v17;
        v91 = v82;
        goto LABEL_56;
      }
    }

    (*(v102 + 8))(v29 + v32, v101);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2226E04FC(v103, v26);
    v52 = *v26;
    v53 = *(v26 + 1);
    v54 = v26[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v55 = v36[16];
      if (v52 == *v36 && v53 == *(v36 + 1))
      {
      }

      else
      {
        v57 = sub_222739B4C();

        if ((v57 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      sub_2226E01A0(v103);
      v86 = v54 ^ v55 ^ 1;
      return v86 & 1;
    }

LABEL_35:

    sub_2226E10E4(v103);
LABEL_59:
    v86 = 0;
    return v86 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_2226E04FC(v103, v20);
    v59 = *v20;
    v58 = *(v20 + 1);
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v102 + 8))(&v20[v60], v101);
      goto LABEL_35;
    }

    v62 = *v36;
    v61 = *(v36 + 1);
    v63 = v101;
    v64 = *(v102 + 32);
    v64(v99, &v20[v60], v101);
    v65 = &v36[v60];
    v66 = v97;
    v64(v97, v65, v63);
    if (v59 == v62 && v58 == v61)
    {
    }

    else
    {
      v87 = sub_222739B4C();

      if ((v87 & 1) == 0)
      {
        v94 = *(v102 + 8);
        v94(v66, v63);
        v94(v99, v63);
        goto LABEL_58;
      }
    }

    v88 = v99;
    v86 = sub_22273738C();
    v89 = *(v102 + 8);
    v89(v66, v63);
    v90 = v88;
    v91 = v63;
LABEL_56:
    v89(v90, v91);
    sub_2226E01A0(v103);
    return v86 & 1;
  }

  sub_2226E04FC(v103, v23);
  v41 = *v23;
  v40 = v23[1];
  v42 = v23[2];
  v43 = v23[3];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_35;
  }

  v45 = *(v36 + 2);
  v44 = *(v36 + 3);
  if (v41 == *v36 && v40 == *(v36 + 1))
  {
  }

  else
  {
    v47 = sub_222739B4C();

    if ((v47 & 1) == 0)
    {

LABEL_58:
      sub_2226E01A0(v103);
      goto LABEL_59;
    }
  }

  if (v42 == v45 && v43 == v44)
  {
  }

  else
  {
    v93 = sub_222739B4C();

    if ((v93 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  sub_2226E01A0(v103);
  v86 = 1;
  return v86 & 1;
}

uint64_t sub_2226E10E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014078, &unk_222744410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2226E114C(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_22273705C();
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = sub_2227373BC();
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - v16;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v75 = &v62 - v19;
  v20 = v2;
  v21 = [v2 dateRanges];
  v74 = v3;
  v22 = sub_22273937C();

  v23 = *(v22 + 16);

  if (v23 == 1)
  {
    v28 = [v20 &selRef_initWithDouble_ + 7];
    v29 = v74;
    v30 = sub_22273937C();

    if (*(v30 + 16))
    {
      v31 = v66;
      (*(v67 + 16))(v66, v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v29);

      v25 = *(v67 + 56);
      v24 = v31;
      v26 = 0;
      v27 = v29;
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v23)
  {
    v69 = v20;
    v32 = [v20 &selRef_initWithDouble_ + 7];
    v33 = v74;
    v34 = sub_22273937C();

    if (*(v34 + 16))
    {
      v64 = v11;
      v35 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v36 = v67 + 16;
      v72 = *(v67 + 16);
      v72(v8, v34 + v35, v33);

      sub_22273704C();
      v37 = (v67 + 8);
      v71 = *(v67 + 8);
      v71(v8, v33);
      v38 = [v69 dateRanges];
      v39 = sub_22273937C();

      if (*(v39 + 16))
      {
        v63 = v35;
        v70 = v36;
        v72(v8, v39 + v35, v33);

        v40 = v73;
        sub_22273702C();
        v71(v8, v33);
        v41 = [v69 dateRanges];
        v42 = sub_22273937C();

        v43 = *(v42 + 16);
        v44 = v43 - 1;
        if (v43 == 1)
        {

          v57 = v65;
          v56 = v66;
          v58 = v64;
LABEL_22:
          v59 = *(v57 + 16);
          v60 = v75;
          v59(v14, v75, v9);
          v59(v58, v40, v9);
          sub_22273703C();
          v61 = *(v57 + 8);
          v61(v40, v9);
          v61(v60, v9);
          (*(v67 + 56))(v56, 0, 1, v74);
          return;
        }

        if (v43)
        {
          v69 = v37;
          v45 = *(v67 + 72);
          v46 = v42;
          v47 = (v65 + 8);
          v48 = (v65 + 32);
          v62 = v46;
          v68 = v45;
          v49 = v46 + v45 + v63;
          v51 = v73;
          v50 = v74;
          do
          {
            v72(v5, v49, v50);
            sub_22273704C();
            v52 = sub_22273736C();
            v53 = *v47;
            (*v47)(v14, v9);
            if (v52)
            {
              sub_22273704C();
              v54 = v75;
              v53(v75, v9);
              (*v48)(v54, v14, v9);
            }

            sub_22273702C();
            v55 = sub_22273735C();
            v53(v14, v9);
            if (v55)
            {
              sub_22273702C();
              v50 = v74;
              v71(v5, v74);
              v53(v51, v9);
              (*v48)(v51, v14, v9);
            }

            else
            {
              v50 = v74;
              v71(v5, v74);
            }

            v49 += v68;
            --v44;
          }

          while (v44);

          v57 = v65;
          v56 = v66;
          v58 = v64;
          v40 = v73;
          goto LABEL_22;
        }

LABEL_26:
        __break(1u);
        return;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v66;
  v25 = *(v67 + 56);
  v26 = 1;
  v27 = v74;
LABEL_6:

  v25(v24, v26, 1, v27);
}

id sub_2226E1810(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = sub_222738DAC();
  MEMORY[0x28223BE20](v3 - 8);
  v18 = sub_22273903C();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = sub_2227381BC();
  MEMORY[0x28223BE20](v10 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v11 = sub_222738F6C();
  v17[0] = __swift_project_value_buffer(v11, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v20 = v12;
  v19[0] = a1;

  sub_22273818C();
  sub_222672BA0(v19);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  sub_222738D9C();
  sub_22273900C();
  v20 = v12;
  v19[0] = a1;

  sub_222738FEC();
  v13 = *(v4 + 8);
  v14 = v18;
  v13(v6, v18);
  sub_222672BA0(v19);
  v15 = sub_222711EF0(v9);
  v20 = sub_22273872C();
  v21 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_22273871C();
  sub_222738E8C();
  v13(v9, v14);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_2226E1C28()
{
  v0 = sub_2227381BC();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v2 = sub_22273874C();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v4[0] = v2;
  sub_22273818C();
  sub_222672BA0(v4);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_2226E1E30(uint64_t a1)
{
  v1 = sub_2227381BC();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v6);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226E2068(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;
  *(v3 + 312) = *v2;
  return MEMORY[0x2822009F8](sub_2226E2094, 0, 0);
}

uint64_t sub_2226E2094()
{
  v1 = *(v0 + 304);
  v2 = sub_222710688(MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = *(v0 + 304);
  }

  else
  {
    v3 = [*(v0 + 312) ams_activeiTunesAccount];
  }

  *(v0 + 328) = v3;
  v4 = *(v0 + 296);
  v5 = v4[2];
  *(v0 + 336) = v5;
  if (v5)
  {
    v6 = *(v0 + 304);
    *(v0 + 344) = 0;
    *(v0 + 352) = v2;
    v7 = v4[4];
    *(v0 + 360) = v7;
    v8 = v4[5];
    v9 = v4[6];
    *(v0 + 368) = v9;
    v10 = v7;

    v11 = v6;
    v12 = v3;
    if (!v3)
    {
      v12 = [*(v0 + 312) ams_activeiTunesAccount];
      v3 = *(v0 + 328);
    }

    *(v0 + 376) = v12;
    v13 = v3;
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_2226E22B0;
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);

    return sub_2226E3314(v16, v15, v12, v10, v8, v9);
  }

  else
  {
    v18 = *(v0 + 304);
    *(v0 + 216) = MEMORY[0x277D837D0];
    *(v0 + 192) = 0xD000000000000019;
    *(v0 + 200) = 0x800000022274CB50;
    sub_22269457C((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94((v0 + 224), 0x734E72657375, 0xE600000000000000, isUniquelyReferenced_nonNull_native);

    v20 = *(v0 + 8);

    return v20(v2);
  }
}

uint64_t sub_2226E22B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_2226E28AC;
  }

  else
  {
    v4 = sub_2226E23C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_2226E23C4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 288) = v2;
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v9 = *(v0 + 352);
  v56 = v1;

  v11 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v11;
LABEL_15:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v56 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_22262BF70(*(v56 + 56) + 32 * v18, v0 + 160);
    *(v0 + 64) = v21;
    *(v0 + 72) = v20;
    sub_22269457C((v0 + 160), (v0 + 80));

LABEL_16:
    v22 = *(v0 + 80);
    *(v0 + 112) = *(v0 + 64);
    *(v0 + 128) = v22;
    *(v0 + 144) = *(v0 + 96);
    v23 = *(v0 + 120);
    if (!v23)
    {
      break;
    }

    v24 = *(v0 + 112);
    sub_22262BF70(v0 + 128, v0 + 32);
    *(v0 + 16) = v24;
    *(v0 + 24) = v23;

    sub_222660468(v0 + 112, &unk_27D014680, &unk_222744148);
    v25 = *(v0 + 24);
    if (!v25)
    {
      goto LABEL_31;
    }

    v26 = *(v0 + 16);
    sub_22269457C((v0 + 32), (v0 + 256));
    result = sub_222688818(v26, v25);
    v28 = v9[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_44;
    }

    v32 = v27;
    if (v9[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v37 = result;
      sub_22268C710();
      result = v37;
      v9 = *(v0 + 288);
      if ((v32 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_5:
      v12 = result;

      v13 = (v9[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      result = sub_22269457C((v0 + 256), v13);
      isUniquelyReferenced_nonNull_native = 1;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2226895E4(v31, isUniquelyReferenced_nonNull_native & 1);
      result = sub_222688818(v26, v25);
      if ((v32 & 1) != (v33 & 1))
      {

        return sub_222739B8C();
      }

LABEL_23:
      v9 = *(v0 + 288);
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_24:
      v9[(result >> 6) + 8] |= 1 << result;
      v34 = (v9[6] + 16 * result);
      *v34 = v26;
      v34[1] = v25;
      result = sub_22269457C((v0 + 256), (v9[7] + 32 * result));
      v35 = v9[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_45;
      }

      v9[2] = v36;
      isUniquelyReferenced_nonNull_native = 1;
      if (!v7)
      {
LABEL_7:
        if (v8 <= v11 + 1)
        {
          v15 = v11 + 1;
        }

        else
        {
          v15 = v8;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v8)
          {
            v7 = 0;
            *(v0 + 80) = 0u;
            *(v0 + 96) = 0u;
            v11 = v16;
            *(v0 + 64) = 0u;
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            v11 = v14;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }
    }
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_31:
  v38 = *(v0 + 360);
  v40 = *(v0 + 336);
  v39 = *(v0 + 344);

  if (v39 + 1 == v40)
  {
    v41 = *(v0 + 328);
    *(v0 + 216) = MEMORY[0x277D837D0];
    *(v0 + 192) = 0xD000000000000019;
    *(v0 + 200) = 0x800000022274CB50;
    sub_22269457C((v0 + 192), (v0 + 224));
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94((v0 + 224), 0x734E72657375, 0xE600000000000000, v42);

    v43 = *(v0 + 8);

    return v43(v9);
  }

  else
  {
    v44 = *(v0 + 344);
    *(v0 + 344) = v44 + 1;
    *(v0 + 352) = v9;
    v45 = *(v0 + 328);
    v46 = (*(v0 + 296) + 24 * v44);
    v47 = v46[7];
    *(v0 + 360) = v47;
    v49 = v46[8];
    v48 = v46[9];
    *(v0 + 368) = v48;
    v50 = v47;

    v51 = v45;
    if (!v45)
    {
      v51 = [*(v0 + 312) ams_activeiTunesAccount];
      v45 = *(v0 + 328);
    }

    *(v0 + 376) = v51;
    v52 = v45;
    v53 = swift_task_alloc();
    *(v0 + 384) = v53;
    *v53 = v0;
    v53[1] = sub_2226E22B0;
    v55 = *(v0 + 312);
    v54 = *(v0 + 320);

    return sub_2226E3314(v55, v54, v51, v50, v49, v48);
  }
}

uint64_t sub_2226E28AC()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[41];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226E2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = *v4;
  return MEMORY[0x2822009F8](sub_2226E2960, 0, 0);
}

char *sub_2226E2960()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v1 = [*(v0 + 64) ams_activeiTunesAccount];
  }

  *(v0 + 80) = v1;
  v2 = *(v0 + 32);
  if (v2 >> 62)
  {
    v3 = sub_22273984C();
    v4 = *(v0 + 40);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_18:
    v25 = v4;
    v7 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = *(v0 + 40);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_5:
  v30 = MEMORY[0x277D84F90];
  v5 = v4;
  result = sub_2226AE86C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = v1;
  v7 = v30;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x223DBEC70](v8, *(v0 + 32));
      v10 = *(v30 + 16);
      v11 = *(v30 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_2226AE86C((v11 > 1), v10 + 1, 1);
      }

      v13 = *(v0 + 48);
      v12 = *(v0 + 56);
      ++v8;
      *(v30 + 16) = v10 + 1;
      v14 = (v30 + 24 * v10);
      v14[4] = v9;
      v14[5] = v13;
      v14[6] = v12;
    }

    while (v3 != v8);
  }

  else
  {
    v15 = 0;
    v28 = *(v30 + 16);
    v29 = *(v0 + 32) + 32;
    v16 = 24 * v28;
    do
    {
      v17 = *(v0 + 56);
      v18 = *(v29 + 8 * v15);
      v19 = *(v30 + 24);
      v20 = v28 + v15 + 1;

      v21 = v18;
      if (v28 + v15 >= v19 >> 1)
      {
        v24 = v21;
        sub_2226AE86C((v19 > 1), v20, 1);
        v21 = v24;
        v17 = *(v0 + 56);
      }

      v22 = *(v0 + 48);
      ++v15;
      *(v30 + 16) = v20;
      v23 = (v30 + v16);
      v23[4] = v21;
      v23[5] = v22;
      v23[6] = v17;
      v16 += 24;
    }

    while (v3 != v15);
  }

  v1 = v27;
LABEL_19:
  *(v0 + 88) = v7;
  *(v0 + 16) = *(v0 + 64);
  v26 = swift_task_alloc();
  *(v0 + 96) = v26;
  *v26 = v0;
  v26[1] = sub_2226E2BF8;

  return sub_2226E2068(v7, v1);
}

uint64_t sub_2226E2BF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2226E2DAC;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2226E2D44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226E2D44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2226E2DAC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226E2E10()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_27D014080);
  __swift_project_value_buffer(v4, qword_27D014080);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

void sub_2226E2F6C()
{
  v0 = sub_22273916C();
  v1 = [objc_opt_self() keyWithName:v0 crossDeviceSync:1];

  qword_281314328 = v1;
}

uint64_t sub_2226E2FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x2822009F8](sub_2226E3000, 0, 0);
}

uint64_t sub_2226E3000()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 32) ams_activeiTunesAccount];
    v1 = *(v0 + 48);
  }

  *(v0 + 80) = v2;
  v3 = v1;
  *(v0 + 16) = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_2226E30D4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  return sub_2226E3C80(v2, v5, v6);
}

uint64_t sub_2226E30D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_2226E32B0;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_2226E31FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226E31FC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  v3 = [v1 identifierForKey_];
  v4 = sub_22273919C();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_2226E32B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226E3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  return MEMORY[0x2822009F8](sub_2226E333C, 0, 0);
}

uint64_t sub_2226E333C()
{
  v1 = *(v0 + 272);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 256) ams_activeiTunesAccount];
    v1 = *(v0 + 272);
  }

  *(v0 + 304) = v2;
  v3 = v1;
  *(v0 + 240) = *(v0 + 256);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_2226E3410;
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);

  return sub_2226E3C80(v2, v5, v6);
}

uint64_t sub_2226E3410(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_2226E3524;
  }

  else
  {
    v4 = sub_2226E3588;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2226E3524()
{
  v1 = *(v0 + 8);

  return v1();
}

_OWORD *sub_2226E3588()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227440C0;
  *(v3 + 32) = v2;
  sub_22262E364(0, &qword_27D0140B8, 0x277CEE5B0);
  v4 = v2;
  v5 = sub_22273936C();

  v6 = [v1 generateEventFieldsForKeys_];

  v7 = sub_22273910C();
  v8 = sub_222710688(MEMORY[0x277D84F90]);
  v9 = 0;
  v10 = -1;
  v11 = -1 << *(v7 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v7 + 64);
  v13 = (63 - v11) >> 6;
  while (1)
  {
    v14 = v9;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v9 << 6);
    sub_22269458C(*(v7 + 48) + 40 * v16, v0 + 16);
    sub_22262BF70(*(v7 + 56) + 32 * v16, v0 + 56);
    v17 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 104) = v17;
    *(v0 + 120) = *(v0 + 48);
    sub_22269457C((v0 + 56), (v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140C0, &unk_2227437C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 160);
      v19 = *(v0 + 168);
      sub_22269457C((v0 + 176), (v0 + 208));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v19;
      v34 = v18;
      v21 = sub_222688818(v18, v19);
      v22 = v8[2];
      v23 = (v20 & 1) == 0;
      result = (v22 + v23);
      if (__OFADD__(v22, v23))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      if (v8[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v36 = v20;
          sub_22268C710();
          if ((v36 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_17:

        v28 = (v8[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_1(v28);
        sub_22269457C((v0 + 208), v28);
      }

      else
      {
        v25 = v20;
        sub_2226895E4(result, isUniquelyReferenced_nonNull_native);
        v26 = sub_222688818(v34, v37);
        if ((v25 & 1) != (v27 & 1))
        {
LABEL_25:

          return sub_222739B8C();
        }

        v21 = v26;
        if (v25)
        {
          goto LABEL_17;
        }

LABEL_19:
        v8[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v8[6] + 16 * v21);
        *v29 = v34;
        v29[1] = v37;
        result = sub_22269457C((v0 + 208), (v8[7] + 32 * v21));
        v30 = v8[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_29;
        }

        v8[2] = v32;
      }
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
      sub_222660468(v0 + 160, &qword_27D0140D0, &qword_222744508);
    }
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v13)
    {
      break;
    }

    v12 = *(v7 + 64 + 8 * v9);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v33 = *(v0 + 8);

  return v33(v8);
}

uint64_t sub_2226E39B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_2226E39D4, 0, 0);
}

uint64_t sub_2226E39D4()
{
  if (qword_281314320 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 40) ams_activeiTunesAccount];
  *(v0 + 56) = v1;
  *(v0 + 16) = v4;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2226E3AE8;

  return sub_2226E3C80(v1, 0xD000000000000013, 0x800000022274CA70);
}

uint64_t sub_2226E3AE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2226BE2B4;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_2226E3C10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226E3C10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2226E3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a2;
  v4[29] = a3;
  v4[27] = a1;
  v5 = sub_222738F6C();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *(v3 + 8);
  v4[32] = v6;
  v4[33] = v7;

  return MEMORY[0x2822009F8](sub_2226E3D48, 0, 0);
}

uint64_t sub_2226E3D48()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = objc_opt_self();
  v4 = sub_22273916C();
  v5 = [v3 identifierStoreWithAccount:v2 bagNamespace:v4 bag:v1];
  v0[34] = v5;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_2226E3ECC;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140A0, &unk_2227444E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226E4EF4;
  v0[13] = &block_descriptor_12;
  v0[14] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226E3ECC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_2226E407C;
  }

  else
  {
    v2 = sub_2226E3FDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226E3FDC()
{
  v1 = *(v0 + 208);

  [v1 setIncludeAccountMatchStatus_];
  [v1 setIsActiveITunesAccountRequired_];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2226E407C(uint64_t a1)
{
  v2 = v1[34];
  swift_willThrow();

  if (qword_27D0129F8 != -1)
  {
    swift_once();
  }

  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[30];
  v6 = v1[27];
  v7 = __swift_project_value_buffer(v5, qword_27D014080);
  (*(v4 + 16))(v3, v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_222743D10;
  sub_22273813C();
  if (v6)
  {
    v8 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
    v9 = v1[27];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v1[19] = 0;
    v1[20] = 0;
    v9 = v1[27];
  }

  v11 = v1[32];
  v12 = v1[33];
  v13 = v1[30];
  v14 = v1[31];
  v1[18] = v10;
  v1[21] = v8;
  v15 = v9;
  sub_22273814C();
  sub_222660468((v1 + 18), &qword_27D0130C0, &unk_2227413B0);
  sub_22273813C();
  v1[25] = swift_getObjectType();
  v1[22] = v12;
  swift_unknownObjectRetain();
  sub_22273814C();
  sub_222660468((v1 + 22), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  (*(v14 + 8))(v11, v13);
  swift_willThrow();

  v16 = v1[1];

  return v16();
}

char *sub_2226E4344(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222738F6C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v48 - v8;
  v9 = *(v3 + 8);
  v10 = objc_opt_self();
  v11 = sub_22273916C();
  v51 = a1;
  v52 = v9;
  v12 = [v10 identifierStoreWithAccount:a1 bagNamespace:v11 bag:v9];

  v13 = [v12 promiseWithTimeout_];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v49 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v66 = sub_2226E5000;
  v67 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_222730B48;
  ObjectType = &block_descriptor_16_0;
  v18 = _Block_copy(&aBlock);
  v54 = v15;

  v19 = v16;

  [v13 addErrorBlock_];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v19;
  v66 = sub_2226E5020;
  v67 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_2226E4E8C;
  ObjectType = &block_descriptor_22;
  v21 = _Block_copy(&aBlock);
  v22 = v19;
  v55 = v14;

  v56 = v13;
  [v13 addSuccessBlock_];
  _Block_release(v21);
  v53 = v22;
  sub_22273965C();
  swift_beginAccess();
  v23 = *(v15 + 16);
  if (v23)
  {
    v24 = v23;
    if (qword_27D0129F8 != -1)
    {
      swift_once();
    }

    v25 = v59;
    v26 = __swift_project_value_buffer(v59, qword_27D014080);
    (*(v58 + 16))(v57, v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_222742E90;
    sub_22273813C();
    v27 = v51;
    if (v51)
    {
      v28 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
      v29 = v27;
    }

    else
    {
      v29 = 0;
      v28 = 0;
      v63 = 0;
      v64 = 0;
    }

    aBlock = v29;
    ObjectType = v28;
    v33 = v27;
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    v34 = v52;
    ObjectType = swift_getObjectType();
    aBlock = v34;
    swift_unknownObjectRetain();
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    swift_getErrorValue();
    v35 = v60;
    v36 = v61;
    ObjectType = v61;
    v37 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v36 - 1) + 16))(v37, v35, v36);
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    v38 = v59;
    v32 = v57;
    sub_222738C6C();

    (*(v58 + 8))(v32, v38);
LABEL_10:
    swift_willThrow();

    return v32;
  }

  v30 = v50;
  v31 = v49;
  swift_beginAccess();
  if (!*v31)
  {
    if (qword_27D0129F8 != -1)
    {
      swift_once();
    }

    v40 = v59;
    v41 = __swift_project_value_buffer(v59, qword_27D014080);
    (*(v58 + 16))(v30, v41, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_222743D10;
    sub_22273813C();
    v42 = v51;
    if (v51)
    {
      v43 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
      v44 = v42;
    }

    else
    {
      v44 = 0;
      v43 = 0;
      v63 = 0;
      v64 = 0;
    }

    aBlock = v44;
    ObjectType = v43;
    v45 = v42;
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    v46 = v52;
    ObjectType = swift_getObjectType();
    aBlock = v46;
    swift_unknownObjectRetain();
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    v47 = v59;
    v32 = v30;
    sub_222738C6C();

    (*(v58 + 8))(v30, v47);
    sub_2226E5028();
    swift_allocError();
    goto LABEL_10;
  }

  v32 = *v31;
  [v32 setIncludeAccountMatchStatus_];
  [v32 setIsActiveITunesAccountRequired_];

  return v32;
}

uint64_t sub_2226E4C8C()
{
  sub_222739C5C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226E4D00()
{
  sub_222739C5C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226E4D54@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_222739A8C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2226E4DC8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_22273966C();
}

uint64_t sub_2226E4E2C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_22273966C();
}

void sub_2226E4E8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2226E4EF4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

id sub_2226E4FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2226E507C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2226E5028()
{
  result = qword_27D0140D8;
  if (!qword_27D0140D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0140D8);
  }

  return result;
}

id sub_2226E507C(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_2227380FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v32 = a1;
  sub_22273810C();
  v13 = sub_2227380EC();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v12, v3);
  if (!v15)
  {
    v25 = v16;
    v18 = 0xE400000000000000;
    v17 = 1701667182;
    v23 = v32;
    goto LABEL_7;
  }

  v30[0] = v13;
  v30[2] = v15;
  v17 = 0x6E795373736F7263;
  v18 = 0xEF65636976654463;
  sub_22273810C();
  v19 = sub_22273808C();
  v16(v9, v3);
  if (v19 == 2 || (v17 = 0x73656D614E676162, v18 = 0xEC00000065636170, sub_22273810C(), sub_2227380EC(), v21 = v20, v16(v6, v3), !v21))
  {
    v25 = v16;
    v23 = v32;

LABEL_7:
    v26 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v27 = v17;
    v27[1] = v18;
    v27[2] = &type metadata for MetricsIdentifierKeyContext;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    v28 = sub_22273823C();
    (*(*(v28 - 8) + 8))(v31, v28);
    v25(v23, v3);
    return v23;
  }

  v22 = sub_22273916C();

  v23 = [objc_opt_self() keyWithName:v22 crossDeviceSync:v19 & 1];

  v24 = sub_22273823C();
  (*(*(v24 - 8) + 8))(v31, v24);
  v16(v32, v3);
  return v23;
}

uint64_t sub_2226E5440(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2226E5488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2226E54DC()
{
  result = qword_27D0140E8;
  if (!qword_27D0140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0140E8);
  }

  return result;
}

uint64_t sub_2226E5538()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_222739AFC();
  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v1 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v1);

  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v2 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v2);

  return v4;
}

unint64_t sub_2226E5648()
{
  v0 = sub_222738C1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013730, &qword_2227426C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227446A0;
  *(inited + 32) = 29551;
  *(inited + 40) = 0xE200000000000000;
  sub_222738C0C();
  v5 = sub_222738BCC();
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v3, v0);
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  strcpy((inited + 64), "hardwareFamily");
  *(inited + 79) = -18;
  sub_222738C0C();
  v9 = sub_222738BDC();
  v11 = v10;
  v8(v3, v0);
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  strcpy((inited + 96), "hardwareModel");
  *(inited + 110) = -4864;
  sub_222738C0C();
  v12 = sub_222738BFC();
  v14 = v13;
  v8(v3, v0);
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  strcpy((inited + 128), "osBuildNumber");
  *(inited + 142) = -4864;
  sub_222738C0C();
  v15 = sub_222738BEC();
  v17 = v16;
  v8(v3, v0);
  *(inited + 144) = v15;
  *(inited + 152) = v17;
  *(inited + 160) = 0x6F6973726556736FLL;
  *(inited + 168) = 0xE90000000000006ELL;
  *(inited + 176) = sub_2226E5538();
  *(inited + 184) = v18;
  v19 = sub_222732D1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141C0, &unk_2227426D0);
  swift_arrayDestroy();
  return v19;
}

void sub_2226E58C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22262BF70(a1, v5);

  sub_222730CC4(v5, a2, a3);
}

uint64_t sub_2226E5928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2226E597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))();
  v7 = sub_22273823C();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_2227380FC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

uint64_t sub_2226E5A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_2226E597C(a1, a2, *(a3 + 16), *(a3 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2226E5A74@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2226E5C14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2226E5AA4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - v3;
  sub_22273821C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
  sub_22273824C();
  (*(v2 + 8))(v4, v1);
  sub_2226848A4(v8, v6);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
    sub_2227389AC();
    sub_222684914(v8);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_222684914(v8);
    return sub_222684914(v6);
  }
}

uint64_t sub_2226E5C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738FAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2227380FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2227380CC();
  result = 0;
  if ((v12 & 1) == 0)
  {
    v41 = v5;
    v42 = a2;
    sub_22273810C();
    v39 = sub_2227380EC();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v40 = v15;
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014100, &qword_2227447F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227447E0;
      *(inited + 32) = 0x70756B636F4C6461;
      *(inited + 40) = 0xEF65727574616546;
      *(inited + 48) = sub_22262E364(0, &qword_281312CB8, off_2784B0658);
      *(inited + 56) = &off_2835CA7C0;
      *(inited + 64) = 0xD000000000000014;
      *(inited + 72) = 0x800000022274CBD0;
      *(inited + 80) = sub_22262E364(0, &qword_281312BB0, off_2784B06B0);
      *(inited + 88) = &off_2835CA870;
      *(inited + 96) = 0xD000000000000015;
      *(inited + 104) = 0x800000022274CBF0;
      *(inited + 112) = sub_22262E364(0, &qword_281312BD8, off_2784B0688);
      *(inited + 120) = &off_2835CA820;
      strcpy((inited + 128), "genreFeature");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      *(inited + 144) = sub_22262E364(0, &qword_281312C40, off_2784B0698);
      *(inited + 152) = &off_2835CA840;
      *(inited + 160) = 0xD000000000000016;
      *(inited + 168) = 0x800000022274CC10;
      *(inited + 176) = sub_22262E364(0, &qword_281312BA8, off_2784B06B8);
      *(inited + 184) = &off_2835CA880;
      *(inited + 192) = 0xD000000000000013;
      *(inited + 200) = 0x800000022274CC30;
      *(inited + 208) = sub_22262E364(0, &qword_281312BF0, off_2784B06C8);
      *(inited + 216) = &off_2835CA8A0;
      *(inited + 224) = 0xD000000000000010;
      *(inited + 232) = 0x800000022274CC50;
      *(inited + 240) = sub_22262E364(0, &unk_281312BF8, off_2784B06C0);
      *(inited + 248) = &off_2835CA890;
      strcpy((inited + 256), "mediaFeature");
      *(inited + 269) = 0;
      *(inited + 270) = -5120;
      *(inited + 272) = sub_22262E364(0, &unk_281312C30, off_2784B06A0);
      *(inited + 280) = &off_2835CA850;
      *(inited + 288) = 0xD000000000000016;
      *(inited + 296) = 0x800000022274CC70;
      *(inited + 304) = sub_22262E364(0, &unk_281312BB8, off_2784B06A8);
      *(inited + 312) = &off_2835CA860;
      *(inited + 320) = 0x4449656C646E7562;
      *(inited + 328) = 0xEF65727574616546;
      *(inited + 336) = sub_22262E364(0, &unk_281312C20, off_2784B0670);
      *(inited + 344) = &off_2835CA7F0;
      *(inited + 352) = 0xD000000000000019;
      *(inited + 360) = 0x800000022274CC90;
      *(inited + 368) = sub_22262E364(0, &unk_281312B98, off_2784B0690);
      *(inited + 376) = &off_2835CA830;
      *(inited + 384) = 0xD000000000000014;
      *(inited + 392) = 0x800000022274CCB0;
      *(inited + 400) = sub_22262E364(0, &unk_281312BE0, off_2784B0680);
      *(inited + 408) = &off_2835CA810;
      *(inited + 416) = 0xD000000000000010;
      *(inited + 424) = 0x800000022274CCD0;
      *(inited + 432) = sub_22262E364(0, &unk_281312C08, off_2784B0678);
      *(inited + 440) = &off_2835CA800;
      v17 = sub_2227334D8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014110, &unk_222744800);
      swift_arrayDestroy();
      v18 = sub_22262E364(0, &unk_281312BC8, off_2784B0660);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v17;
      sub_22268C178(v18, &off_2835CA7D0, 0xD000000000000016, 0x800000022274CCF0, isUniquelyReferenced_nonNull_native);
      v20 = v43;
      v21 = sub_22262E364(0, &qword_281312B90, off_2784B0668);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v20;
      sub_22268C178(v21, &off_2835CA7E0, 0xD00000000000001DLL, 0x800000022274CD10, v22);
      v23 = v43;
      v25 = v39;
      v24 = v40;
      if (*(v43 + 16))
      {
        v26 = sub_222688818(v39, v40);
        if (v27)
        {
          v28 = v26;

          v37 = (*(*(*(v23 + 56) + 16 * v28 + 8) + 8))(a1, v42);

          return v37;
        }
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      *v7 = v25;
      v7[1] = v24;
      v7[2] = v29;
      v30 = v41;
      (*(v41 + 104))(v7, *MEMORY[0x277D22520], v4);
      sub_22268497C();
      v31 = swift_allocError();
      (*(v30 + 16))(v32, v7, v4);
      sub_2226E5AA4(v31);
      (*(v30 + 8))(v7, v4);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      *v7 = 0x646E696B24;
      v7[1] = 0xE500000000000000;
      v7[2] = v33;
      v34 = v41;
      (*(v41 + 104))(v7, *MEMORY[0x277D22530], v4);
      sub_22268497C();
      v35 = swift_allocError();
      (*(v34 + 16))(v36, v7, v4);
      sub_2226E5AA4(v35);
      (*(v34 + 8))(v7, v4);
    }

    return 0;
  }

  return result;
}

char *sub_2226E6410(uint64_t a1)
{
  v2 = 0x726F746964457369;
  v3 = sub_2227380FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = 0xEF6563696F684373;
  v36 = a1;
  sub_22273810C();
  v35 = sub_22273808C();
  LODWORD(a1) = v35;
  v16 = *(v4 + 8);
  v16(v14, v3);
  if (a1 == 2 || (v2 = 0x676E69746172, v15 = 0xE600000000000000, sub_22273810C(), v17 = sub_2227380AC(), v16(v11, v3), (v17 & 0x100000000) != 0) || (v2 = 0x6F43676E69746172, v15 = 0xEB00000000746E75, sub_22273810C(), sub_2227380EC(), v19 = v18, v16(v8, v3), !v19))
  {
    v26 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v28 = v27;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v28 = v2;
    v28[1] = v15;
    v28[2] = MetatypeMetadata;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
  }

  else
  {
    v20 = v17;
    v21 = v34;
    sub_22273810C();
    sub_2227380EC();
    v23 = v22;
    v16(v21, v3);
    v24 = sub_22273916C();

    if (v23)
    {
      v25 = sub_22273916C();
    }

    else
    {
      v25 = 0;
    }

    v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    LODWORD(v32) = v20;
    v8 = [v31 initWithEditorsChoice:v35 & 1 productRating:v24 productRatingBadge:v25 productDescription:v32];
  }

  return v8;
}

id sub_2226E67BC()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  v6(v3, v0);
  if (!v5)
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_22273916C();

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_22273916C();

LABEL_6:
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDistributorBundleId:v9 appVersionId:v10];

  return v11;
}

id sub_2226E69B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v43 - v10;
  v12 = sub_2227380FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  sub_22273810C();
  v43[1] = sub_2227380EC();
  v47 = v21;
  v22 = *(v13 + 8);
  v22(v20, v12);
  v50 = a1;
  sub_22273810C();
  sub_22273809C();
  v22(v20, v12);
  v51 = v11;
  sub_22266110C(v11, v8, &qword_27D0141A0, &unk_2227448B0);
  v23 = sub_222738F9C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    sub_222660468(v8, &qword_27D0141A0, &unk_2227448B0);
    v44 = 0;
  }

  else
  {
    v25 = v53;
    v44 = sub_222738F8C();
    v53 = v25;
    (*(v24 + 8))(v8, v23);
  }

  sub_22273810C();
  v43[0] = sub_2227380EC();
  v27 = v26;
  v22(v20, v12);
  sub_22273810C();
  v46 = sub_22273806C();
  v45 = v28;
  v22(v17, v12);
  sub_22273810C();
  v29 = v52;
  sub_22273801C();
  v22(v20, v12);
  v30 = v49;
  sub_22266110C(v29, v49, &qword_27D014128, &qword_2227448A8);
  v31 = sub_2227384AC();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_222660468(v30, &qword_27D014128, &qword_2227448A8);
    v33 = 0;
  }

  else
  {
    v33 = sub_22273849C();
    (*(v32 + 8))(v30, v31);
  }

  v34 = v48;
  sub_22273810C();
  v35 = sub_22273808C();
  v22(v34, v12);
  if (v47)
  {
    v36 = sub_22273916C();
  }

  else
  {
    v36 = 0;
  }

  if (v44)
  {
    v37 = sub_22273936C();

    if (v27)
    {
      goto LABEL_12;
    }

LABEL_15:
    v38 = 0;
    if (v33)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v37 = 0;
  if (!v27)
  {
    goto LABEL_15;
  }

LABEL_12:
  v38 = sub_22273916C();

  if (v33)
  {
LABEL_13:
    v39 = sub_2227390FC();

    goto LABEL_17;
  }

LABEL_16:
  v39 = 0;
LABEL_17:
  if (v45)
  {
    v40 = 0;
  }

  else
  {
    v40 = v46;
  }

  v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeveloperId:v36 webDistributionDomains:v37 supportUrl:v38 ageRatingValue:v40 contentRatingsBySystem:v39 isDistributor:v35 & 1];

  sub_222660468(v52, &qword_27D014128, &qword_2227448A8);
  sub_222660468(v51, &qword_27D0141A0, &unk_2227448B0);
  return v41;
}

uint64_t sub_2226E7074@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2227380EC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_2226E70C8()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_22273916C();

    v10 = [v8 initWithBundleID_];
  }

  else
  {
    v10 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v11 = 0x4449656C646E7562;
    v11[1] = 0xE800000000000000;
    v11[2] = v1;
    (*(*(v10 - 1) + 104))(v11, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  return v10;
}

id sub_2226E72B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273823C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227380FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  (*(v5 + 16))(v7, a2, v4);
  sub_22266F98C();
  v12 = sub_2226ED04C(v11, v7);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
    v14 = *(v9 + 8);
    v13 = (v9 + 8);
    v14(v11, v8);
  }

  else
  {
    v15 = v12;
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAppOffer_];
  }

  return v13;
}

id sub_2226E7504()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    v6 = sub_22273916C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeveloperName_];

  return v7;
}

id sub_2226E7670()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  type metadata accessor for HeadingKind(0);
  sub_2226E77F4();
  sub_22273802C();
  (*(v1 + 8))(v3, v0);
  v4 = v9;
  v5 = [objc_allocWithZone(ASCLockupDisplayContext) initWithHeadingKind_];

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDisplayContext_];
  return v6;
}

unint64_t sub_2226E77F4()
{
  result = qword_27D012BC8;
  if (!qword_27D012BC8)
  {
    type metadata accessor for HeadingKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012BC8);
  }

  return result;
}

id sub_2226E784C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  v6(v3, v0);
  if (!v5)
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_22273916C();

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_22273916C();

LABEL_6:
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPrivacyPolicyUrl:v9 eula:v10];

  return v11;
}

void *sub_2226E7A30(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v2 = 0x6D614E65726E6567;
  v47 = sub_22273823C();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v42 - v5;
  v6 = sub_222738F9C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v42 - v9;
  v10 = sub_2227380FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  sub_22273810C();
  v45 = sub_2227380EC();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v19, v10);
  if (!v21)
  {
    v26 = 0xE900000000000065;
    goto LABEL_7;
  }

  v50 = v21;
  v2 = 0x444965726E6567;
  sub_22273810C();
  v23 = sub_2227380EC();
  v25 = v24;
  v22(v16, v10);
  if (!v25)
  {

    v26 = 0xE700000000000000;
    goto LABEL_7;
  }

  v42[1] = v23;
  v42[2] = v25;
  v2 = 0x65726E6567627573;
  v26 = 0xE900000000000073;
  sub_22273810C();
  v27 = v51;
  sub_22273809C();
  v22(v13, v10);
  v29 = v52;
  v28 = v53;
  if ((*(v52 + 48))(v27, 1, v53) == 1)
  {

    sub_2226E8068(v27);
LABEL_7:
    v30 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v31 = v2;
    v31[1] = v26;
    v31[2] = v54;
    (*(*(v30 - 1) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    return v30;
  }

  v33 = v49;
  (*(v29 + 32))(v49, v27, v28);
  (*(v29 + 16))(v43, v33, v28);
  (*(v44 + 16))(v46, v48, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014130, &unk_2227449F0);
  sub_2226E80D0();
  v34 = sub_2227393EC();
  v35 = *(v34 + 16);
  if (v35)
  {
    v55 = MEMORY[0x277D84F90];
    sub_22273997C();
    v36 = 32;
    do
    {
      v37 = *(v34 + v36);
      sub_22273995C();
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      v36 += 8;
      --v35;
    }

    while (v35);
  }

  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v39 = sub_22273916C();

  v40 = sub_22273916C();

  sub_2226E8134();
  v41 = sub_22273936C();

  v30 = [v38 initWithGenreName:v39 genreID:v40 subgenres:v41];

  (*(v29 + 8))(v33, v28);
  return v30;
}

uint64_t sub_2226E8068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226E80D0()
{
  result = qword_27D014138;
  if (!qword_27D014138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014130, &unk_2227449F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014138);
  }

  return result;
}

unint64_t sub_2226E8134()
{
  result = qword_27D014140;
  if (!qword_27D014140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D014140);
  }

  return result;
}

id sub_2226E8180(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v3 = sub_22273823C();
  v13[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227380FC();
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014148, &qword_222744A28);
  sub_22273810C();
  v8 = *(v4 + 16);
  v8(v6, a2, v3);
  sub_2226849D4(&qword_27D014150, &qword_27D014148, &qword_222744A28);
  sub_22273870C();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014158, &unk_222744A30);
  sub_22273810C();
  v8(v6, a2, v13[0]);
  sub_2226849D4(&qword_27D014160, &qword_27D014158, &unk_222744A30);
  sub_22273870C();
  v10 = v14;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithScreenshots:v9 trailers:v14];

  return v11;
}

id sub_2226E8400()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_22273810C();
  sub_2227380EC();
  v11 = v10;
  v9(v3, v0);
  if (!v8)
  {
    v12 = 0;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_22273916C();

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_22273916C();

LABEL_6:
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMetadata:v12 description:v13];

  return v14;
}

id sub_2226E8610()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    v6 = sub_22273916C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProductVariantID_];

  return v7;
}

void *sub_2226E877C()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_22273916C();

    v10 = [v8 initWithContentProviderTeamID_];
  }

  else
  {
    v10 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v11 = 0xD000000000000015;
    v11[1] = 0x800000022274CDD0;
    v11[2] = v1;
    (*(*(v10 - 1) + 104))(v11, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  return v10;
}

void *sub_2226E8974()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_22273916C();

    v10 = [v8 initWithShortName_];
  }

  else
  {
    v10 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v11 = 0x6D614E74726F6873;
    v11[1] = 0xE900000000000065;
    v11[2] = v1;
    (*(*(v10 - 1) + 104))(v11, *MEMORY[0x277D22530], v10);
    swift_willThrow();
  }

  return v10;
}

id sub_2226E8B6C()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  v6 = sub_22273808C();
  (*(v3 + 8))(v5, v2);
  if (v6 != 2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequiresSSOEntitlement_];
  }

  v7 = sub_222738FAC();
  sub_22268497C();
  swift_allocError();
  *v8 = 0xD000000000000016;
  v8[1] = 0x800000022274CDF0;
  v8[2] = v1;
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D22530], v7);
  return swift_willThrow();
}

uint64_t sub_2226E8D3C()
{
  v1 = [v0 topic];
  if (v1)
  {
    v2 = v1;
    sub_22273919C();
  }

  [v0 shouldFlush];
  v3 = [v0 fields];
  sub_22273910C();

  v4 = [v0 includingFields];
  v5 = sub_2227394CC();

  sub_2226ADE58(v5, sub_2226E92DC, 0);
  v6 = [v0 includingFields];
  v7 = sub_2227394CC();

  sub_2226AE0E4(v7, sub_2226E932C, 0);

  return sub_22273829C();
}

_BYTE *sub_2226E8EF0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_22273823C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2227380FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2227382CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9, v28, v6, v12);
  (*(v3 + 16))(v5, v29, v2);
  v15 = v30;
  sub_22273826C();
  if (!v15)
  {
    v28 = v11;
    v29 = v10;
    v30 = 0;
    sub_2227382AC();
    v17 = v16;
    v27 = sub_22273825C();
    sub_2227382BC();
    v18 = sub_22273828C();
    sub_2226AE370(v18, sub_2226E926C, 0);
    v19 = sub_22273827C();
    sub_2226AE388(v19, sub_2226E9298, 0);
    if (v17)
    {
      v20 = sub_22273916C();
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = sub_2227390FC();

    v23 = sub_2227394BC();

    v24 = sub_2227394BC();

    v9 = [v21 initWithTopic:v20 shouldFlush:v27 & 1 fields:v22 includingFields:v23 excludingFields:v24];

    (*(v28 + 8))(v14, v29);
  }

  return v9;
}

uint64_t sub_2226E926C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222738AAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2226E9298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222738A7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2226E92DC(uint64_t *a1)
{

  return sub_222738A9C();
}

uint64_t sub_2226E932C(uint64_t *a1)
{

  return sub_222738A6C();
}

_OWORD *sub_2226E937C@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222743D10;
  *(inited + 32) = 0x6C46646C756F6873;
  *(inited + 40) = 0xEB00000000687375;
  v3 = [v1 shouldFlush];
  v4 = MEMORY[0x277D839B0];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x73646C656966;
  *(inited + 88) = 0xE600000000000000;
  v5 = [v1 fields];
  v6 = sub_22273910C();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6E6964756C636E69;
  *(inited + 136) = 0xEF73646C65694667;
  v8 = [v1 includingFields];
  v9 = sub_2227394CC();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_2226959D0(*(v9 + 16), 0);
    v12 = sub_2226E96F0(&v29, v11 + 4, v10, v9);
    sub_2226342B0(v29);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(inited + 144) = v11;
  *(inited + 168) = v13;
  *(inited + 176) = 0x6E6964756C637865;
  *(inited + 184) = 0xEF73646C65694667;
  v14 = [v1 excludingFields];
  v15 = MEMORY[0x277D837D0];
  v16 = sub_2227394CC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_2226959D0(*(v16 + 16), 0);
    v19 = sub_2226E96F0(&v29, v18 + 4, v17, v16);
    sub_2226342B0(v29);
    if (v19 == v17)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_9:
  *(inited + 216) = v13;
  *(inited + 192) = v18;
  v20 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  result = [v1 topic];
  if (result)
  {
    v22 = result;
    v23 = sub_22273919C();
    v25 = v24;

    v30 = v15;
    *&v29 = v23;
    *(&v29 + 1) = v25;
    sub_22269457C(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_22268BC94(v28, 0x6369706F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  a1[3] = v7;
  *a1 = v20;
  return result;
}

void *sub_2226E96F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2226E9848(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v53 - v4;
  v60 = sub_2227384AC();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22273823C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_222738F9C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v64 = &v53 - v23;
  v61 = a1;
  sub_22273810C();
  sub_22273809C();
  v24 = v19;
  v25 = *(v12 + 8);
  v56 = v11;
  v25(v17, v11);
  if ((*(v24 + 48))(v10, 1, v18) == 1)
  {
    sub_222660468(v10, &qword_27D0141A0, &unk_2227448B0);
    v26 = sub_222738FAC();
    sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v28 = v27;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v28, "instructions");
    *(v28 + 13) = 0;
    *(v28 + 14) = -5120;
    *(v28 + 16) = MetatypeMetadata;
    (*(*(v26 - 1) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
  }

  else
  {
    v30 = v64;
    (*(v24 + 32))(v64, v10, v18);
    (*(v24 + 16))(v21, v30, v18);
    (*(v57 + 16))(v55, v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014168, &qword_222744BA0);
    v31 = v24;
    sub_2226EA75C();
    v32 = sub_2227393EC();
    sub_22273810C();
    v33 = v63;
    sub_22273801C();
    v25(v14, v56);
    v34 = v62;
    v35 = v33;
    v36 = v60;
    v37 = v18;
    if ((*(v62 + 48))(v35, 1, v60) == 1)
    {

      sub_222660468(v63, &qword_27D014128, &qword_2227448A8);
      v26 = sub_222738FAC();
      sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v39 = v38;
      v40 = swift_getMetatypeMetadata();
      *v39 = 0x6C65694665676170;
      v39[1] = 0xEA00000000007364;
      v39[2] = v40;
      (*(*(v26 - 1) + 104))(v39, *MEMORY[0x277D22530], v26);
      swift_willThrow();
      (*(v31 + 8))(v64, v37);
    }

    else
    {
      v61 = v24;
      v41 = v54;
      (*(v34 + 32))(v54, v63, v36);
      if (sub_22273849C())
      {
        v42 = *(v32 + 16);
        if (v42)
        {
          v63 = v18;
          v65 = MEMORY[0x277D84F90];
          sub_22273997C();
          v43 = 32;
          do
          {
            v44 = *(v32 + v43);
            sub_22273995C();
            sub_22273998C();
            sub_22273999C();
            sub_22273996C();
            v43 += 8;
            --v42;
          }

          while (v42);

          v34 = v62;
          v37 = v63;
          v41 = v54;
        }

        else
        {
        }

        v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_22262E364(0, &qword_27D014178, off_2784B0748);
        v50 = sub_22273936C();

        v51 = sub_2227390FC();

        v26 = [v49 initWithInstructions:v50 pageFields:v51];

        (*(v34 + 8))(v41, v36);
        (*(v61 + 8))(v64, v37);
      }

      else
      {

        v26 = sub_222738FAC();
        sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        v46 = v45;
        v47 = swift_getMetatypeMetadata();
        v48 = MEMORY[0x277D84F90];
        *v46 = 0x6C65694665676170;
        v46[1] = 0xEA00000000007364;
        v46[2] = v47;
        v46[3] = v48;
        (*(*(v26 - 1) + 104))(v46, *MEMORY[0x277D22540], v26);
        swift_willThrow();
        (*(v34 + 8))(v41, v36);
        (*(v61 + 8))(v64, v37);
      }
    }
  }

  return v26;
}

char *sub_2226EA1D4(uint64_t a1, char *a2)
{
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  v5 = sub_222738F9C();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227380FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  sub_22273810C();
  v15 = v34;
  v16 = sub_2226E8EF0(v14, v33);
  if (v15)
  {
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v30[1] = 0;
    v33 = v7;
    v34 = v16;
    v17 = *(v9 + 8);
    v17(v14, v8);
    sub_22273810C();
    sub_22273809C();
    v17(v11, v8);
    v19 = v31;
    v18 = v32;
    if ((*(v31 + 48))(v4, 1, v32) == 1)
    {
      sub_222660468(v4, &qword_27D0141A0, &unk_2227448B0);
      v11 = sub_222738FAC();
      sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v21 = v20;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *v21 = 0xD000000000000010;
      v21[1] = 0x800000022274CE10;
      v21[2] = MetatypeMetadata;
      (*(*(v11 - 1) + 104))(v21, *MEMORY[0x277D22530], v11);
      swift_willThrow();
    }

    else
    {
      v23 = v33;
      (*(v19 + 32))(v33, v4, v18);
      type metadata accessor for ASCMetricsInvocationPoint(0);
      v24 = sub_222738F8C();
      sub_2226AF6D8(v24);

      v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_2226EA714(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint, &unk_222740940);
      v26 = sub_2227394BC();

      v27 = v25;
      v28 = v34;
      v11 = [v27 initWithData:v34 invocationPoints:v26];

      (*(v19 + 8))(v23, v18);
    }
  }

  return v11;
}

uint64_t sub_2226EA678()
{
  type metadata accessor for ASCMetricsInvocationPoint(0);
  sub_2226EA714(&qword_27D012BB8, type metadata accessor for ASCMetricsInvocationPoint, &unk_222740904);
  return sub_22273805C();
}

uint64_t sub_2226EA714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2226EA75C()
{
  result = qword_27D014170;
  if (!qword_27D014170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014168, &qword_222744BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014170);
  }

  return result;
}

uint64_t sub_2226EA7C0(uint64_t a1)
{
  if ([v1 alertButtonOffer])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
    type metadata accessor for ObjectGraph(0);
    sub_222738C9C();
    sub_2226839AC(&v23);
    if (v24)
    {
      sub_222634290(&v23, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
      inited = swift_allocObject();
      *(inited + 16) = xmmword_2227413C0;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v3 = sub_2227390BC();
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 80) = 0;
      *(inited + 32) = v3;
      *(inited + 40) = v4;
      v5 = [v1 alertButtonTitle];
      if (v5)
      {
        v6 = v5;
        v7 = sub_22273919C();
        v9 = v8;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v7 = sub_2227390BC();
        v9 = v21;
      }

      sub_22266BCCC(&v25, inited + 104);
      *(inited + 88) = v7;
      *(inited + 96) = v9;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_222660468(&v23, &unk_27D013240, &unk_222741770);
      type metadata accessor for ASCAppOfferActionError(0);
      *&v23 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v15;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_22273991C();
      swift_getObjectType();
      v16 = sub_222739D2C();
      v18 = v17;

      v25 = v16;
      v26 = v18;
      MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
      v19 = v25;
      v20 = v26;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_2226EB9D4(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
      sub_22273725C();
      swift_willThrow();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
    v10 = [v1 alertButtonTitle];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22273919C();
      v14 = v13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
      inited = swift_allocObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 80) = 0;
      *(inited + 32) = v12;
      *(inited + 40) = v14;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return inited;
}

void *sub_2226EABAC(void *a1, uint64_t a2)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v3 - 8);
  v115 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = &v103 - v6;
  v121 = sub_22273823C();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v108 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v103 - v9;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v110 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = &v103 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v103 - v17;
  MEMORY[0x28223BE20](v18);
  v116 = &v103 - v19;
  MEMORY[0x28223BE20](v20);
  v113 = &v103 - v21;
  MEMORY[0x28223BE20](v22);
  v112 = &v103 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v103 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  v33 = a1;
  sub_22273810C();
  v111 = sub_2227380EC();
  v35 = v34;
  v38 = *(v12 + 8);
  v37 = v12 + 8;
  v36 = v38;
  v38(v32, v11);
  v123 = v35;
  if (!v35)
  {
    v49 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v51 = v50;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v51 = 0x7469547472656C61;
    v51[1] = 0xEA0000000000656CLL;
    v51[2] = MetatypeMetadata;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22530], v49);
LABEL_7:
    swift_willThrow();
    return v33;
  }

  v125 = v36;
  sub_22273810C();
  v39 = sub_2227380EC();
  v41 = v40;
  v118 = v37;
  v125(v29, v11);
  if (!v41)
  {

    v53 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v55 = v54;
    v56 = swift_getMetatypeMetadata();
    strcpy(v55, "alertMessage");
    *(v55 + 13) = 0;
    *(v55 + 14) = -5120;
    *(v55 + 16) = v56;
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D22530], v53);
    goto LABEL_7;
  }

  v105 = v39;
  v106 = v41;
  v117 = v11;
  v42 = v33;
  sub_22273810C();
  v43 = v119;
  v44 = v119[2];
  v45 = v121;
  v44(v10, v122, v121);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v46 = v120;
  v47 = sub_2226F3C10(v26);
  v120 = v46;
  if (v46)
  {

    v48 = v43[1];
    v33 = v43 + 1;
    v48(v10, v45);
    v125(v26, v117);
    return v33;
  }

  v103 = v44;
  v104 = v47;
  (v43[1])(v10, v45);
  v57 = v117;
  v58 = v125;
  v125(v26, v117);
  v59 = v112;
  v119 = v42;
  sub_22273810C();
  v60 = v114;
  sub_22273801C();
  v58(v59, v57);
  v61 = sub_2227384AC();
  v62 = *(v61 - 8);
  v33 = (v62 + 48);
  v112 = *(v62 + 48);
  if ((v112)(v60, 1, v61) == 1)
  {
    sub_222660468(v60, &qword_27D014128, &qword_2227448A8);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v63 = sub_22273849C();
    (*(v62 + 8))(v60, v61);
    if (v63)
    {
      v114 = v63;
      goto LABEL_13;
    }
  }

  v114 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_13:
  v64 = v113;
  sub_22273810C();
  v65 = v115;
  sub_22273801C();
  v125(v64, v117);
  if ((v112)(v65, 1, v61) == 1)
  {
    sub_222660468(v65, &qword_27D014128, &qword_2227448A8);
    v66 = v116;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v67 = sub_22273849C();
    (*(v62 + 8))(v65, v61);
    v66 = v116;
    if (v67)
    {
      goto LABEL_17;
    }
  }

  sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_17:
  sub_22273810C();
  v68 = sub_22273806C();
  if (v69)
  {

    v70 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v72 = v71;
    type metadata accessor for ASCOfferFlags(0);
    v73 = MEMORY[0x277D84F90];
    *v72 = 0x65756C6156776172;
    v72[1] = 0xE800000000000000;
    v72[2] = v74;
    v72[3] = v73;
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D22540], v70);
    swift_willThrow();

    v125(v66, v117);
  }

  else
  {
    v116 = v68;
    v75 = v117;
    v76 = v125;
    v125(v66, v117);
    v77 = v107;
    sub_22273810C();
    v115 = sub_2227380DC();
    v76(v77, v75);
    v78 = v109;
    sub_22273810C();
    v103(v108, v122, v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v79 = sub_2227393DC();
    v80 = *(v79 + 16);
    if (v80)
    {
      v126 = MEMORY[0x277D84F90];
      sub_22273997C();
      v81 = 32;
      do
      {
        v82 = *(v79 + v81);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v81 += 8;
        --v80;
      }

      while (v80);
    }

    sub_22273810C();
    v83 = sub_222683D28(v78, v122);
    v84 = v117;
    v85 = v125;
    v125(v78, v117);
    v86 = v110;
    sub_22273810C();
    v122 = sub_2227380EC();
    v88 = v87;
    v85(v86, v84);
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v89 = sub_2227390FC();

    v90 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v125 = sub_22273936C();

    v91 = sub_22273916C();

    v92 = sub_22273916C();

    if (v88)
    {
      v93 = sub_22273916C();
    }

    else
    {
      v93 = 0;
    }

    v124 = v93;
    v94 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v101 = v83;
    v102 = v93;
    v100 = v91;
    v95 = v104;
    v96 = v115;
    v97 = v91;
    v98 = v125;
    v33 = [v94 initWithID:v104 titles:v89 subtitles:v90 flags:v116 ageRating:v115 metrics:v125 alertTitle:v100 alertMessage:v92 alertButtonOffer:v101 alertButtonTitle:v102];

    swift_unknownObjectRelease();
  }

  return v33;
}

unint64_t sub_2226EB970()
{
  result = qword_281313F78;
  if (!qword_281313F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014180, &unk_222744C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313F78);
  }

  return result;
}

uint64_t sub_2226EB9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_2226EBA1C(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = v87 - v6;
  v106 = sub_22273823C();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v93 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v87 - v9;
  v11 = sub_2227380FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v92 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = v87 - v15;
  MEMORY[0x28223BE20](v16);
  v100 = v87 - v17;
  MEMORY[0x28223BE20](v18);
  v97 = v87 - v19;
  MEMORY[0x28223BE20](v20);
  v96 = v87 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v87 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v87 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v87 - v29;
  v31 = a1;
  sub_22273810C();
  v94 = sub_2227380EC();
  v33 = v32;
  v36 = *(v12 + 8);
  v34 = v12 + 8;
  v35 = v36;
  v36(v30, v11);
  if (!v33)
  {
    v10 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v45 = v44;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v45 = 0x6973726556707061;
    v47 = 0xEC00000064496E6FLL;
LABEL_7:
    v45[1] = v47;
    v45[2] = MetatypeMetadata;
    (*(*(v10 - 1) + 104))(v45, *MEMORY[0x277D22530], v10);
    swift_willThrow();
    return v10;
  }

  v103 = v33;
  sub_22273810C();
  v89 = sub_2227380EC();
  v38 = v37;
  v101 = v34;
  v102 = v11;
  v35(v27, v11);
  if (!v38)
  {

    v10 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v45 = v48;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v45 = 0x7562697274736964;
    v47 = 0xED00006449726F74;
    goto LABEL_7;
  }

  v95 = v35;
  v90 = v38;
  sub_22273810C();
  v39 = v104;
  v40 = *(v104 + 16);
  v41 = v106;
  v40(v10, v107, v106);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v42 = v105;
  v43 = sub_2226F3C10(v24);
  if (v42)
  {

    (*(v39 + 8))(v10, v41);
    v95(v24, v102);
    return v10;
  }

  v87[0] = v40;
  v88 = v43;
  v87[1] = 0;
  (*(v39 + 8))(v10, v41);
  v50 = v102;
  v51 = v95;
  v95(v24, v102);
  v52 = v96;
  v105 = v31;
  sub_22273810C();
  v53 = v98;
  sub_22273801C();
  v51(v52, v50);
  v54 = sub_2227384AC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v53, 1, v54) == 1)
  {
    sub_2226EC694(v53);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v57 = sub_22273849C();
    (*(v55 + 8))(v53, v54);
    if (v57)
    {
      v104 = v57;
      goto LABEL_14;
    }
  }

  v104 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  v58 = v97;
  sub_22273810C();
  v59 = v99;
  sub_22273801C();
  v95(v58, v50);
  if (v56(v59, 1, v54) == 1)
  {
    sub_2226EC694(v59);
    v60 = v107;
    v61 = v100;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v62 = sub_22273849C();
    v63 = v59;
    v64 = v62;
    (*(v55 + 8))(v63, v54);
    v60 = v107;
    v61 = v100;
    if (v64)
    {
      goto LABEL_18;
    }
  }

  sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_18:
  sub_22273810C();
  v65 = sub_22273806C();
  if (v66)
  {

    v10 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v68 = v67;
    type metadata accessor for ASCOfferFlags(0);
    v69 = MEMORY[0x277D84F90];
    *v68 = 0x65756C6156776172;
    v68[1] = 0xE800000000000000;
    v68[2] = v70;
    v68[3] = v69;
    (*(*(v10 - 1) + 104))(v68, *MEMORY[0x277D22540], v10);
    swift_willThrow();

    v95(v61, v102);
  }

  else
  {
    v107 = v65;
    v71 = v61;
    v72 = v102;
    v73 = v95;
    v95(v71, v102);
    v74 = v91;
    sub_22273810C();
    v75 = sub_2227380DC();
    v73(v74, v72);
    sub_22273810C();
    (v87[0])(v93, v60, v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v76 = sub_2227393DC();
    v77 = *(v76 + 16);
    if (v77)
    {
      v108 = MEMORY[0x277D84F90];
      sub_22273997C();
      v78 = 32;
      do
      {
        v79 = *(v76 + v78);
        sub_22273995C();
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v78 += 8;
        --v77;
      }

      while (v77);
    }

    v80 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant, &unk_222740DC0);
    v81 = sub_2227390FC();

    v82 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v83 = sub_22273936C();

    v84 = sub_22273916C();

    v85 = sub_22273916C();

    v86 = v88;
    v10 = [v80 initWithID:v88 titles:v81 subtitles:v82 flags:v107 ageRating:v75 metrics:v83 appVersionId:v84 distributorId:v85];
  }

  return v10;
}