uint64_t sub_1AC6FB9F0()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.Iterator.__deallocating_deinit()
{
  SFCustomLanguageModelData.TemplatePhraseCountGenerator.Iterator.deinit();
  v0 = OUTLINED_FUNCTION_19_9();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6FBB44()
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_29_14(v1 + 16, v5);

  sub_1AC5C368C(sub_1AC60DBAC);
  v6 = *(*(v0 + 16) + 16);
  sub_1AC5C3604(v6, sub_1AC60DBAC);
  v7 = *(v0 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = (v7 + 24 * v6);
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  *(v0 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1AC6FBBF8()
{
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_29_14(v1 + 24, v5);

  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 24);
  sub_1AC6E16F8(v2, v4, v3);
  *(v0 + 24) = v7;
  return swift_endAccess();
}

uint64_t sub_1AC6FBC78()
{
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v2 = *(v0 + 24);
  type metadata accessor for SFCustomLanguageModelData.TemplatePhraseCountGenerator.Iterator();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return v3;
}

uint64_t static SFCustomLanguageModelData.TemplatePhraseCountGenerator.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  sub_1AC6309C8();
  v1 = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    sub_1AC628354();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AC6FBDC8()
{
  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  v0 = OUTLINED_FUNCTION_170();
  sub_1AC634294(v0, v1);

  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  OUTLINED_FUNCTION_39();
  sub_1AC637EFC();
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.__allocating_init()()
{
  OUTLINED_FUNCTION_19_9();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  *(v0 + 24) = sub_1AC79FE38();
  return v0;
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  *(v0 + 24) = sub_1AC79FE38();
  return v0;
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_19_9();
  v0 = swift_allocObject();
  SFCustomLanguageModelData.TemplatePhraseCountGenerator.init(from:)();
  return v0;
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.init(from:)()
{
  OUTLINED_FUNCTION_77_4();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  *(v0 + 24) = sub_1AC79FE38();
  __swift_destroy_boxed_opaque_existential_0(v1);
  return v0;
}

uint64_t sub_1AC6FBFD8()
{
}

uint64_t _s6Speech25SFCustomLanguageModelDataC28TemplatePhraseCountGeneratorC8IteratorCfd_0()
{

  return v0;
}

void SFCustomLanguageModelData.CompoundTemplate.insert(generator:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    do
    {
      sub_1AC68A30C(v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v3 = OUTLINED_FUNCTION_42_9();
      v4(v3);
      __swift_destroy_boxed_opaque_existential_0(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t static SFCustomLanguageModelData.TemplateInsertableBuilder.buildOptional(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1AC5C6E6C();
  if (v4)
  {
    return sub_1AC5D9384(&v3, a1);
  }

  a1[3] = &type metadata for SFCustomLanguageModelData.CompoundTemplate;
  a1[4] = &protocol witness table for SFCustomLanguageModelData.CompoundTemplate;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SFCustomLanguageModelData.PhraseCountsFromTemplates.init(classes:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SFCustomLanguageModelData.TemplatePhraseCountGenerator();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  *(v4 + 24) = sub_1AC79FE38();
  v38 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v35 = v9;
  v36 = a1 + 64;
  v37 = v4;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v38 + 56) + 8 * v12);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v4 + 24);
      v17 = v42;
      *(v4 + 24) = 0x8000000000000000;
      v18 = sub_1AC6E0808();
      if (__OFADD__(v17[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D290, &unk_1AC7AFB60);
      if (sub_1AC7A0B18())
      {
        v22 = sub_1AC6E0808();
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v24 = v42;
      if (v21)
      {
        *(v42[7] + 8 * v20) = v16;
      }

      else
      {
        v42[(v20 >> 6) + 8] |= 1 << v20;
        v25 = (v24[6] + 16 * v20);
        *v25 = v14;
        v25[1] = v15;
        *(v24[7] + 8 * v20) = v16;
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v24[2] = v28;
      }

      v8 &= v8 - 1;
      v4 = v37;
      *(v37 + 24) = v24;
      swift_endAccess();

      v9 = v35;
      v5 = v36;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        a2(v39, v29);
        v30 = v40;
        v31 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        (*(v31 + 8))(v4, v30, v31);
        result = __swift_destroy_boxed_opaque_existential_0(v39);
        *a3 = v4;
        return result;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AC7A0DC8();
  __break(1u);
  return result;
}

uint64_t SFCustomLanguageModelData.PhraseCountsFromTemplates.insert(data:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_14(a1 + 32, a2);

  MEMORY[0x1B26E8CF0](v2);
  OUTLINED_FUNCTION_65_5();
  return swift_endAccess();
}

uint64_t sub_1AC6FC4C4()
{
  OUTLINED_FUNCTION_85();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_1AC79FFB8();
  v1[27] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79F7F8();
  v1[30] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6FC5E4()
{
  OUTLINED_FUNCTION_138();
  sub_1AC79F888();
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[25];
  sub_1AC5CF764(0, &qword_1EB56D8C8, 0x1E696AC00);
  (*(v2 + 16))(v1, v4, v3);
  v0[33] = sub_1AC6FD07C(v1);
  v5 = v0[28];
  v6 = v0[26];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v31 = (v5 + 8);
  v32 = *(*(v6 + 16) + 16);
  v7 = 0;

  v8 = (v33 + 48);
  while (v32 != v7)
  {
    if (v7 >= *(v33 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
    }

    v9 = v0[29];
    v10 = v0[27];
    v11 = *(v8 - 1);
    v12 = *(v8 - 2);
    v0[21] = *v8;

    sub_1AC7A0CC8();

    MEMORY[0x1B26E8C40](9, 0xE100000000000000);

    MEMORY[0x1B26E8C40](v12, v11);

    MEMORY[0x1B26E8C40](10, 0xE100000000000000);

    sub_1AC79FFA8();
    v13 = sub_1AC79FF78();
    v15 = v14;

    (*v31)(v9, v10);
    if (v15 >> 60 == 15)
    {
      goto LABEL_20;
    }

    v0[11] = v13;
    v0[12] = v15;
    sub_1AC706C58();
    sub_1AC7A05B8();
    sub_1AC5C28A8(v0[11], v0[12]);
    v8 += 3;
    ++v7;
  }

  v16 = v0[26];

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v0[34] = *(v16 + 32);
  v17 = sub_1AC61C24C();
  v0[35] = v17;
  if (v17)
  {
    v18 = v0[34];

    sub_1AC61C25C();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B26E95B0](0, v0[34]);
    }

    else
    {
    }

    v0[36] = v19;
    v0[37] = 1;
    v27 = (*(*v19 + 80))();
    v0[38] = v27;
    v0[22] = v27;
    v28 = swift_task_alloc();
    v0[39] = v28;
    *v28 = v0;
    OUTLINED_FUNCTION_22_10(v28);
    OUTLINED_FUNCTION_138();

    return v29();
  }

  else
  {
    v21 = v0[33];
    v0[23] = 0;
    v22 = [v21 closeAndReturnError_];
    v23 = v0[23];
    v24 = v0[33];
    if (v22)
    {
      v25 = v23;
    }

    else
    {
      v30 = v23;
      sub_1AC79F748();

      swift_willThrow();
    }

    OUTLINED_FUNCTION_44();

    return v26();
  }
}

uint64_t sub_1AC6FCAA0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v2 + 320) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6FCBD8()
{
  v1 = v0[8];
  v2 = v0[9];
  if (v2)
  {
    v0[24] = v0[10];
    v0[13] = sub_1AC7A0CC8();
    v0[14] = v3;

    MEMORY[0x1B26E8C40](9, 0xE100000000000000);

    v4 = v0[14];
    v0[15] = v0[13];
    v0[16] = v4;

    MEMORY[0x1B26E8C40](v1, v2);

    v5 = v0[16];
    v0[17] = v0[15];
    v0[18] = v5;

    MEMORY[0x1B26E8C40](10, 0xE100000000000000);

    sub_1AC79FFA8();
    v6 = sub_1AC79FF78();
    v8 = v7;

    v9 = OUTLINED_FUNCTION_77();
    result = v10(v9);
    if (v8 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v12 = v0[40];

    v0[19] = v6;
    v0[20] = v8;
    sub_1AC706C58();
    sub_1AC7A05B8();
    if (v12)
    {
      v13 = v0[33];

      sub_1AC5C28A8(v0[19], v0[20]);

      goto LABEL_5;
    }

    sub_1AC5C28A8(v0[19], v0[20]);
  }

  else
  {
    v15 = v0[37];
    v16 = v0[35];

    if (v15 == v16)
    {

      v17 = v0[33];
      v0[23] = 0;
      v18 = [v17 closeAndReturnError_];
      v19 = v0[23];
      v20 = v0[33];
      if (v18)
      {
        v21 = v19;

        OUTLINED_FUNCTION_44();
        goto LABEL_6;
      }

      v25 = v19;
      sub_1AC79F748();

      swift_willThrow();
LABEL_5:

      OUTLINED_FUNCTION_44();
LABEL_6:

      return v14();
    }

    v22 = v0[37];
    v23 = v0[34] & 0xC000000000000001;
    sub_1AC61C25C();
    if (v23)
    {
      v24 = MEMORY[0x1B26E95B0](v22, v0[34]);
    }

    else
    {
    }

    v0[36] = v24;
    v0[37] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    v26 = (*(*v24 + 80))();
    v0[38] = v26;
    v0[22] = v26;
  }

  v27 = swift_task_alloc();
  v0[39] = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_22_10(v27);
  OUTLINED_FUNCTION_138();

  return v28();
}

uint64_t sub_1AC6FCFC4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 264);

  OUTLINED_FUNCTION_44();

  return v2();
}

id sub_1AC6FD07C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AC79F788();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1AC79F7F8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1AC79F748();

    swift_willThrow();
    v9 = sub_1AC79F7F8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_1AC6FD1D4()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = sub_1AC79FFB8();
  OUTLINED_FUNCTION_40();
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v33 = v7 - v6;
  sub_1AC7A09C8();
  v42 = 0;
  v43 = 0xE000000000000000;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000151);
  v38 = sub_1AC79F978();
  v39 = v8;
  v35 = 45;
  v36 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_1AC649BF0();
  OUTLINED_FUNCTION_80_5();
  OUTLINED_FUNCTION_10_17();
  v9 = sub_1AC7A0808();
  v11 = v10;

  MEMORY[0x1B26E8C40](v9, v11);

  MEMORY[0x1B26E8C40](671266, 0xE300000000000000);
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  v12 = *(v0 + 24);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v32 = v3;
    v44 = MEMORY[0x1E69E7CC0];

    sub_1AC6310CC(0, v13, 0);
    v15 = 0;
    v14 = v44;
    v16 = (v12 + 48);
    while (v15 < *(v12 + 16))
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v35 = *(v16 - 2);
      v36 = v17;
      v37 = v18;

      sub_1AC6FD58C(&v35, &v40);
      if (v2)
      {
        goto LABEL_13;
      }

      v2 = 0;

      v19 = v40;
      v20 = v41;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = v14;
      if (v22 >= v21 >> 1)
      {
        v31 = v40;
        sub_1AC6310CC(v21 > 1, v22 + 1, 1);
        v19 = v31;
        v23 = v14;
      }

      ++v15;
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      v16 += 3;
      v14 = v23;
      if (v13 == v15)
      {

        v3 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v35 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC649C74();
    v25 = sub_1AC79FEA8();
    v27 = v26;

    MEMORY[0x1B26E8C40](v25, v27);

    MEMORY[0x1B26E8C40](0x636978656C2F3C0ALL, 0xEB000000003E6E6FLL);
    sub_1AC79FFA8();
    v28 = sub_1AC79FF78();
    v30 = v29;
    (*(v34 + 8))(v33, v3);
    if (v30 >> 60 != 15)
    {

      sub_1AC79F888();
      sub_1AC604184(v28, v30);
      OUTLINED_FUNCTION_38_8();
      return;
    }
  }

  __break(1u);
LABEL_13:

  __break(1u);
}

uint64_t sub_1AC6FD58C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v18 = a1[2];
  sub_1AC7A09C8();

  sub_1AC649BF0();
  sub_1AC7A0808();
  sub_1AC7A0808();

  sub_1AC7A0808();

  sub_1AC7A0808();

  v2 = sub_1AC7A0808();
  v4 = v3;

  MEMORY[0x1B26E8C40](v2, v4);

  MEMORY[0x1B26E8C40](0x6568706172672F3CLL, 0xEC0000000A3E656DLL);
  v5 = *(v18 + 16);
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v5, 0);
    v6 = v18 + 40;
    do
    {
      v19 = v5;

      sub_1AC7A09C8();

      sub_1AC7A0808();
      sub_1AC7A0808();

      sub_1AC7A0808();

      sub_1AC7A0808();

      v7 = sub_1AC7A0808();
      v9 = v8;

      MEMORY[0x1B26E8C40](v7, v9);

      MEMORY[0x1B26E8C40](0x6D656E6F68702F3CLL, 0xEA00000000003E65);

      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AC6310CC(v10 > 1, v11 + 1, 1);
      }

      *(v20 + 16) = v11 + 1;
      v12 = v20 + 16 * v11;
      *(v12 + 32) = 0x656E6F68703C0909;
      *(v12 + 40) = 0xEB000000003E656DLL;
      v6 += 16;
      --v5;
    }

    while (v19 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC649C74();
  v13 = sub_1AC79FEA8();
  v15 = v14;

  MEMORY[0x1B26E8C40](v13, v15);

  result = MEMORY[0x1B26E8C40](0x6578656C2F3C090ALL, 0xEB000000003E656DLL);
  *a2 = 0xD000000000000016;
  a2[1] = 0x80000001AC7B8B30;
  return result;
}

uint64_t SFCustomLanguageModelData.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void *static SFCustomLanguageModelData.supportedPhonemes(locale:)(uint64_t a1)
{
  sub_1AC79F978();
  sub_1AC649BF0();
  OUTLINED_FUNCTION_80_5();
  OUTLINED_FUNCTION_10_17();
  v1 = sub_1AC7A0808();
  v3 = v2;

  objc_allocWithZone(MEMORY[0x1E699BA00]);

  result = sub_1AC703A98(v1, v3, &selRef_initWithLanguage_);
  if (result)
  {
    result = sub_1AC704654(result);
    if (result)
    {
      v5 = result;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SFCustomLanguageModelData.__allocating_init(locale:identifier:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_53_7();
  v5 = swift_allocObject();
  SFCustomLanguageModelData.init(locale:identifier:version:)();
  return v5;
}

void SFCustomLanguageModelData.init(locale:identifier:version:)()
{
  OUTLINED_FUNCTION_104();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v14 - v13;
  v16 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v16;
  v0[4] = v16;
  sub_1AC79F978();
  OUTLINED_FUNCTION_66_7();
  sub_1AC649BF0();
  OUTLINED_FUNCTION_80_5();
  OUTLINED_FUNCTION_10_17();
  sub_1AC7A0808();

  sub_1AC79F968();
  (*(v11 + 8))(v8, v9);
  (*(v11 + 32))(v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v15, v9);
  v17 = (v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
  *v17 = v6;
  v17[1] = v4;
  v18 = (v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
  *v18 = v19;
  v18[1] = v20;
  OUTLINED_FUNCTION_105();
}

void SFCustomLanguageModelData.__allocating_init(locale:identifier:version:builder:)()
{
  OUTLINED_FUNCTION_104();
  v9 = v0;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_171_2();
  v2();
  type metadata accessor for SFCustomLanguageModelData(0);
  v3 = swift_allocObject();
  SFCustomLanguageModelData.init(locale:identifier:version:)();

  v9(v10, v4);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v6 + 8))(v3, v5, v6);

  v7 = OUTLINED_FUNCTION_170();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6FE0D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  OUTLINED_FUNCTION_29_14(v2 + 16, a2);

  sub_1AC5C368C(sub_1AC60F0DC);
  v6 = *(*(v2 + 16) + 16);
  sub_1AC5C3604(v6, sub_1AC60F0DC);
  v7 = *(v2 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = (v7 + 24 * v6);
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v5;
  *(v2 + 16) = v7;
  return swift_endAccess();
}

unint64_t sub_1AC6FE194()
{
  result = qword_1EB56D610;
  if (!qword_1EB56D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D610);
  }

  return result;
}

uint64_t sub_1AC6FE1E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_14(v2 + 32, a2);

  MEMORY[0x1B26E8CF0](v3);
  OUTLINED_FUNCTION_65_5();
  return swift_endAccess();
}

uint64_t sub_1AC6FE240(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  OUTLINED_FUNCTION_29_14(v2 + 24, a2);

  sub_1AC5C368C(sub_1AC60F10C);
  v6 = *(*(v2 + 24) + 16);
  sub_1AC5C3604(v6, sub_1AC60F10C);
  v7 = *(v2 + 24);
  *(v7 + 16) = v6 + 1;
  v8 = (v7 + 24 * v6);
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v5;
  *(v2 + 24) = v7;
  return swift_endAccess();
}

unint64_t sub_1AC6FE304()
{
  result = qword_1EB56D628;
  if (!qword_1EB56D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D628);
  }

  return result;
}

uint64_t sub_1AC6FE358()
{
  OUTLINED_FUNCTION_85();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1AC79F7F8();
  v1[7] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6FE458()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = [objc_opt_self() defaultManager];
  v0[13] = v4;
  v5 = [v4 temporaryDirectory];
  sub_1AC79F7A8();

  OUTLINED_FUNCTION_65();
  sub_1AC79F798();
  v6 = *(v3 + 8);
  v0[14] = v6;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = sub_1AC79F788();
  v0[2] = 0;
  LODWORD(v2) = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v8 = v0[2];
  if (v2)
  {
    v0[16] = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
    sub_1AC79F978();
    OUTLINED_FUNCTION_74_6();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_142();
    MEMORY[0x1B26E8C40](v10);

    sub_1AC79F798();

    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_1AC6FE724;

    return sub_1AC6FC4C4();
  }

  else
  {
    v13 = v8;
    sub_1AC79F748();

    swift_willThrow();
    v14 = OUTLINED_FUNCTION_18_10();
    v15(v14);

    OUTLINED_FUNCTION_44();

    return v16();
  }
}

uint64_t sub_1AC6FE724()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6FE84C(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = sub_1AC79F978();
  MEMORY[0x1B26E8C40](v3);

  sub_1AC79F798();

  sub_1AC6FD1D4();
  if (v2)
  {
    v4 = *(v1 + 112);
    v6 = *(v1 + 72);
    v5 = *(v1 + 80);
    v7 = *(v1 + 56);

    v4(v6, v7);
    v4(v5, v7);
  }

  else
  {
    v49 = *(v1 + 104);
    v48 = objc_opt_self();
    v8 = sub_1AC79FF58();
    v9 = sub_1AC79FF58();
    v10 = sub_1AC79F978();
    v12 = v11;
    v13 = sub_1AC79F7C8();
    v15 = v14;
    v16 = sub_1AC79F7C8();
    v18 = v17;
    v19 = sub_1AC79F7C8();
    sub_1AC7046B8(v8, v9, v10, v12, v13, v15, v16, v18, v19, v20, v48);

    v21 = sub_1AC79F788();
    *(v1 + 24) = 0;
    LODWORD(v18) = [v49 removeItemAtURL:v21 error:v1 + 24];

    v22 = *(v1 + 24);
    if (v18)
    {
      v23 = *(v1 + 104);
      v24 = v22;
      v25 = sub_1AC79F788();
      *(v1 + 32) = 0;
      LODWORD(v23) = [v23 removeItemAtURL:v25 error:v1 + 32];

      v26 = *(v1 + 32);
      v27 = *(v1 + 112);
      v28 = *(v1 + 104);
      if (v23)
      {
        v29 = *(v1 + 96);
        v30 = *(v1 + 80);
        v31 = *(v1 + 56);
        v32 = v26;

        v33 = OUTLINED_FUNCTION_142();
        v27(v33);
        (v27)(v30, v31);
        (v27)(v29, v31);

        OUTLINED_FUNCTION_44();
        goto LABEL_10;
      }

      v41 = *(v1 + 80);
      v42 = *(v1 + 56);
      v43 = v26;
      sub_1AC79F748();

      swift_willThrow();
      v44 = OUTLINED_FUNCTION_77();
      v27(v44);
      (v27)(v41, v42);
    }

    else
    {
      v35 = *(v1 + 112);
      v36 = *(v1 + 104);
      v37 = *(v1 + 80);
      v38 = *(v1 + 56);
      v39 = v22;
      sub_1AC79F748();

      swift_willThrow();
      v40 = OUTLINED_FUNCTION_142();
      v35(v40);
      (v35)(v37, v38);
    }
  }

  v45 = OUTLINED_FUNCTION_18_10();
  v46(v45);

  OUTLINED_FUNCTION_44();
LABEL_10:

  return v34();
}

uint64_t sub_1AC6FEC10()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v1(v2, v3);
  v4 = OUTLINED_FUNCTION_18_10();
  v5(v4);

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t static SFCustomLanguageModelData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  sub_1AC628244();
  if (v2 & 1) != 0 && (OUTLINED_FUNCTION_175(), swift_beginAccess(), OUTLINED_FUNCTION_175(), swift_beginAccess(), sub_1AC628354(), (v3) && ((OUTLINED_FUNCTION_59_6(OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier), v6) ? (v6 = v4 == v5) : (v6 = 0), (v6 || (sub_1AC7A0D38()) && (MEMORY[0x1B26E85C0](v1 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v0 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale) & 1) != 0 && ((OUTLINED_FUNCTION_59_6(OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version), v6) ? (v9 = v7 == v8) : (v9 = 0), v9 || (sub_1AC7A0D38())))
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();

    v10 = sub_1AC6283F4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1AC6FEE3C(uint64_t a1)
{
  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  OUTLINED_FUNCTION_170();
  sub_1AC63350C();

  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  OUTLINED_FUNCTION_170();
  sub_1AC637EFC();

  OUTLINED_FUNCTION_175();
  swift_beginAccess();

  OUTLINED_FUNCTION_170();
  sub_1AC633444();

  sub_1AC7A0048();
  sub_1AC7A0048();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_9_15();
  sub_1AC704B90(v1);
  OUTLINED_FUNCTION_170();
  return sub_1AC79FE58();
}

uint64_t sub_1AC6FEF6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D615361746164 && a2 == 0xEB0000000073656CLL;
  if (v4 || (sub_1AC7A0D38() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72506D6F74737563 && a2 == 0xEB00000000736E6FLL;
    if (v6 || (sub_1AC7A0D38() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001AC7B8700 == a2;
      if (v7 || (sub_1AC7A0D38() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
        if (v8 || (sub_1AC7A0D38() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1AC7A0D38() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1AC7A0D38();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1AC6FF174(char a1)
{
  result = 0x706D615361746164;
  switch(a1)
  {
    case 1:
      result = 0x72506D6F74737563;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AC6FF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6FEF6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6FF264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AC6FF16C();
  *a1 = result;
  return result;
}

uint64_t sub_1AC6FF28C(uint64_t a1)
{
  v2 = sub_1AC704A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6FF2C8(uint64_t a1)
{
  v2 = sub_1AC704A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFCustomLanguageModelData.deinit()
{

  v1 = OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1AC6FF3B0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D688, &qword_1AC7AFB78);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_4(a1, a1[3]);
  sub_1AC704A28();
  sub_1AC7A0F38();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D698, &qword_1AC7AFB80);
  sub_1AC704BF8(&unk_1EB56D6A0);
  OUTLINED_FUNCTION_20_12();
  sub_1AC7A0C88();
  if (!v1)
  {
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    sub_1AC704AD0(&unk_1EB56D6B8);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    sub_1AC704D0C(&unk_1EB56D6D0);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    sub_1AC79FB18();
    OUTLINED_FUNCTION_9_15();
    sub_1AC704B90(v4);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
    OUTLINED_FUNCTION_71_5(4);
    OUTLINED_FUNCTION_71_5(5);
  }

  v5 = OUTLINED_FUNCTION_161();
  return v6(v5);
}

uint64_t sub_1AC6FF6F4()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC6FEE3C(v1);
  return sub_1AC7A0EC8();
}

void SFCustomLanguageModelData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_0();
  v22 = v20;
  v24 = v23;
  v50 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v47 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  v29 = v28 - v27;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6E8, &qword_1AC7AFB98);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v30);
  v31 = MEMORY[0x1E69E7CC0];
  v49 = v22;
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  v32 = (v22 + 16);
  v32[1] = v31;
  v32[2] = v31;
  v51 = v24;
  OUTLINED_FUNCTION_92_4(v24, v24[3]);
  sub_1AC704A28();
  sub_1AC7A0F18();
  if (v21)
  {
    OUTLINED_FUNCTION_82_5();

    if (v29)
    {
      (*(v47 + 8))(v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v50);
    }

    if (v24)
    {
    }

    type metadata accessor for SFCustomLanguageModelData(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D698, &qword_1AC7AFB80);
    v54 = 0;
    sub_1AC704BF8(&unk_1EB56D6F0);
    sub_1AC7A0C48();
    v33 = v53;
    swift_beginAccess();
    *v32 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    LOBYTE(v53) = 1;
    v34 = sub_1AC704AD0(&unk_1EB56D700);
    OUTLINED_FUNCTION_89_5(v34, &v53);
    v35 = v52;
    swift_beginAccess();
    v32[1] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    LOBYTE(v52) = 2;
    v36 = sub_1AC704D0C(&unk_1EB56D710);
    OUTLINED_FUNCTION_89_5(v36, &v52);
    swift_beginAccess();
    v32[2] = a10;

    OUTLINED_FUNCTION_9_15();
    sub_1AC704B90(v37);
    sub_1AC7A0C48();
    (*(v47 + 32))(v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_locale, v29, v50);
    v38 = OUTLINED_FUNCTION_90_6(4);
    v39 = (v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_identifier);
    *v39 = v38;
    v39[1] = v40;
    v41 = OUTLINED_FUNCTION_90_6(5);
    v42 = OUTLINED_FUNCTION_44_5();
    v44 = v43;
    v45(v42, v48);
    v46 = (v49 + OBJC_IVAR____TtC6Speech25SFCustomLanguageModelData_version);
    *v46 = v41;
    v46[1] = v44;
  }

  __swift_destroy_boxed_opaque_existential_0(v51);
  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_1AC6FFD6C(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC6FEE3C(v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6FFDAC@<X0>(uint64_t *a1@<X8>)
{
  result = SFCustomLanguageModelData.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC6FFE20()
{
  v1 = OBJC_IVAR____TtC6Speech34CustomLanguageModelArtifactManager_artifactURL;
  v2 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_80();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC6Speech34CustomLanguageModelArtifactManager_configURL, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

unint64_t sub_1AC6FFEE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3[4] = MEMORY[0x1E69E7CC0];
  v4 = v3 + 4;
  v3[2] = result;
  v3[3] = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (!result)
    {
      return v3;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        if (a2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v4 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AC60ED68(0, *(v9 + 16) + 1, 1, v9);
            v9 = v15;
          }

          v11 = a2;
          do
          {
            *v4 = v9;
            v13 = *(v9 + 16);
            v12 = *(v9 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_1AC60ED68(v12 > 1, v13 + 1, 1, v9);
              v9 = v14;
            }

            *(v9 + 16) = v13 + 1;
            *(v9 + 8 * v13 + 32) = a3;
            *v4 = v9;
            --v11;
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v5);
      swift_endAccess();
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC700020(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v2 + 32);
  if (v5 < *(v6 + 16))
  {
    return *(v6 + 8 * v5 + 32);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1AC7000A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 + 24);
  v8 = a2 * v7;
  if ((a2 * v7) >> 64 != (a2 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v8 + a3;
  if (__OFADD__(v8, a3))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_1AC704640(v5);
  v5 = v10;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v6 < *(v5 + 16))
  {
    *(v5 + 8 * v6 + 32) = v3;
    *(v4 + 32) = v5;
    swift_endAccess();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1AC700178()
{
  sub_1AC700158();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void static WordErrorRateCalculator.splitString(value:locale:)()
{
  OUTLINED_FUNCTION_104();
  v1 = MEMORY[0x1B26E8C70]();
  v2 = sub_1AC79F9F8();
  v3 = sub_1AC79FF58();
  v4 = OUTLINED_FUNCTION_77();
  v15.location = 0;
  v15.length = v1;
  v6 = CFStringTokenizerCreate(v4, v5, v15, 0, v2);

  Token = CFStringTokenizerAdvanceToNextToken(v6);
  v8 = MEMORY[0x1E69E7CC0];
  if (Token)
  {
    do
    {
      CFStringTokenizerGetCurrentTokenRange(v6);
      OUTLINED_FUNCTION_74_6();
      v9 = sub_1AC79FF58();
      v10 = [v9 substringWithRange_];

      sub_1AC79FF68();
      OUTLINED_FUNCTION_74_6();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60DBDC();
        v8 = v13;
      }

      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      v12 = v8 + 16 * v11;
      *(v12 + 32) = v3;
      *(v12 + 40) = v0;
    }

    while (CFStringTokenizerAdvanceToNextToken(v6));
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC700318()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    if (!__OFSUB__(v4, 1))
    {
      return sub_1AC700020(result, v4 - 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC70035C()
{
  result = sub_1AC700318();
  if (__OFSUB__(*(*(v0 + 16) + 16), 1))
  {
    __break(1u);
  }

  return result;
}

void sub_1AC700394()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v4 = *(v1 + 24);
  v5 = v4 - 1;
  if (!__OFSUB__(v4, 1))
  {
    v6 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v39 = v5;
      v7 = v3;
      while (1)
      {
        v40 = v6;
        v8 = v5 - 1;
        v9 = __OFSUB__(v5, 1);
        v10 = v7;
LABEL_9:
        v3 = v10 - 1;
        v11 = __OFSUB__(v10, 1);
        if (!v10)
        {
          break;
        }

        if (v5)
        {
          if (v11)
          {
            __break(1u);
          }

          else if (!v9)
          {
            while (1)
            {
              v12 = OUTLINED_FUNCTION_171();
              v14 = sub_1AC700020(v12, v13);
              v15 = sub_1AC700020(v10 - 1, v5);
              v16 = sub_1AC700020(v10, v5 - 1);
              v17 = v15 >= v14 ? v14 : v15;
              v18 = v16 >= v17 ? v17 : v16;
              v19 = OUTLINED_FUNCTION_171();
              if (sub_1AC700020(v19, v20) == v18)
              {
                break;
              }

              if (sub_1AC700020(v10 - 1, v5) == v18)
              {
                v21 = v6[2];
                if (!swift_isUniquelyReferenced_nonNull_native() || v21 >= v6[3] >> 1)
                {
                  sub_1AC60DBDC();
                  v6 = v22;
                }

                swift_arrayDestroy();
                v23 = v6[2];
                memmove(v6 + 6, v6 + 4, 16 * v23);
                OUTLINED_FUNCTION_62_6(v23 + 1);
                v10 = v3;
                goto LABEL_9;
              }

              if (sub_1AC700020(v10, v5 - 1) == v18)
              {
                v33 = OUTLINED_FUNCTION_91_4();
                if (!v33 || (OUTLINED_FUNCTION_63_5(), v26))
                {
                  OUTLINED_FUNCTION_38_9(v33);
                  v6 = v34;
                }

                v32 = 73;
                v3 = v10;
                goto LABEL_52;
              }
            }

            v29 = sub_1AC700020(v10, v5);
            v30 = OUTLINED_FUNCTION_91_4();
            if (v18 == v29)
            {
              if (!v30 || (OUTLINED_FUNCTION_63_5(), v26))
              {
                OUTLINED_FUNCTION_38_9(v30);
                v6 = v31;
              }

              v32 = 67;
            }

            else
            {
              if (!v30 || (OUTLINED_FUNCTION_63_5(), v26))
              {
                OUTLINED_FUNCTION_38_9(v30);
                v6 = v35;
              }

              v32 = 83;
            }

            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_63;
        }

        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_64;
        }

        v6 = v40;
        v25 = OUTLINED_FUNCTION_91_4();
        if (!v25 || (OUTLINED_FUNCTION_63_5(), v26))
        {
          OUTLINED_FUNCTION_38_9(v25);
          v6 = v27;
        }

        swift_arrayDestroy();
        v28 = v6[2];
        memmove(v6 + 6, v6 + 4, 16 * v28);
        v5 = 0;
        OUTLINED_FUNCTION_62_6(v28 + 1);
      }

      if (!v39)
      {
        return;
      }

      v8 = v39 - 1;
      if (!__OFSUB__(v39, 1))
      {
        v37 = OUTLINED_FUNCTION_91_4();
        if (!v37 || (OUTLINED_FUNCTION_63_5(), v26))
        {
          OUTLINED_FUNCTION_38_9(v37);
          v6 = v38;
        }

        v3 = 0;
        v32 = 73;
LABEL_52:
        swift_arrayDestroy();
        v36 = v6[2];
        memmove(v6 + 6, v6 + 4, 16 * v36);
        v6[2] = v36 + 1;
        v6[4] = v32;
        v6[5] = 0xE100000000000000;
        v5 = v8;
        continue;
      }

      break;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_66:
  __break(1u);
}

void WordErrorRateCalculator.__allocating_init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_12_11();
  swift_allocObject();
  WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_105();
}

void WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static WordErrorRateCalculator.splitString(value:locale:)();
  v11 = v10;

  static WordErrorRateCalculator.splitString(value:locale:)();
  v13 = v12;

  v42 = v11;
  v14 = *(v11 + 16);
  v45 = v13;
  v15 = *(v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D728, &unk_1AC7AFBA0);
  swift_allocObject();
  v16 = sub_1AC6FFEE4(v14 + 1, v15 + 1, 0);
  *(v8 + 16) = v16;
  v17 = *(v16 + 16);
  if (v17 < 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v17 != 1)
  {
    v18 = 1;
    while ((v18 * a8) >> 64 == (v18 * a8) >> 63)
    {
      v19 = v18 + 1;
      sub_1AC7000A0(v18 * a8, v18, 0);
      v18 = v19;
      if (v17 == v19)
      {
        v16 = *(v8 + 16);
        goto LABEL_7;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_7:
  v20 = *(v16 + 24);
  if (v20 < 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v20 != 1)
  {
    v21 = 1;
    while ((v21 * a7) >> 64 == (v21 * a7) >> 63)
    {
      v22 = v21 + 1;
      sub_1AC7000A0(v21 * a7, 0, v21);
      v21 = v22;
      if (v20 == v22)
      {
        v16 = *(v8 + 16);
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_13:
  v23 = *(v16 + 16);
  if (v23 >= 1)
  {
    v41 = a5;
    if (v23 == 1)
    {
LABEL_41:

      sub_1AC79FB18();
      OUTLINED_FUNCTION_22_0();
      (*(v40 + 8))(v41);
      return;
    }

    v24 = 1;
    v43 = *(v16 + 16);
    while (v24 != v23)
    {
      v25 = *(*(v8 + 16) + 24);
      if (v25 < 1)
      {
        goto LABEL_49;
      }

      if (v25 != 1)
      {
        if (v24 > *(v42 + 16))
        {
          goto LABEL_50;
        }

        v26 = (v45 + 40);
        v27 = (v42 + 32 + 16 * (v24 - 1));
        v28 = 1;
        while ((v28 - 1) < *(v45 + 16))
        {
          if (*v27 == *(v26 - 1) && v27[1] == *v26)
          {
            v30 = 0;
          }

          else if (sub_1AC7A0D38())
          {
            v30 = 0;
          }

          else
          {
            v30 = a6;
          }

          v31 = sub_1AC700020(v24 - 1, v28 - 1);
          v32 = __OFADD__(v31, v30);
          v33 = v31 + v30;
          if (v32)
          {
            goto LABEL_43;
          }

          v34 = sub_1AC700020(v24 - 1, v28);
          v35 = v34 + a8;
          if (__OFADD__(v34, a8))
          {
            goto LABEL_44;
          }

          v36 = sub_1AC700020(v24, v28 - 1);
          if (__OFADD__(v36, a7))
          {
            goto LABEL_45;
          }

          v37 = v28 + 1;
          if (v35 >= v33)
          {
            v38 = v33;
          }

          else
          {
            v38 = v35;
          }

          if (v36 + a7 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v36 + a7;
          }

          sub_1AC7000A0(v39, v24, v28);
          v26 += 2;
          ++v28;
          if (v25 == v37)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_40:
      ++v24;
      v23 = v43;
      if (v24 == v43)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_48;
  }

LABEL_53:
  __break(1u);
}

uint64_t WordErrorRateCalculator.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double CustomLanguageModelEvaluator.AudioSampleEvaluationResult.wordErrorRateReduction.getter()
{
  result = 0.0;
  if (*v0 != 0.0)
  {
    return (*v0 - v0[3]) / *v0;
  }

  return result;
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40](0xD000000000000021);
  v3 = OUTLINED_FUNCTION_170();
  MEMORY[0x1B26E8C40](v3);
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  MEMORY[0x1B26E8C40](v1, v2);
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000021);
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_64_6();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  return 0;
}

uint64_t CustomLanguageModelEvaluator.AudioSampleEvaluationResult.json.getter()
{
  v29[55] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC79FFB8();
  v2 = OUTLINED_FUNCTION_167(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v3 = *v0;
  v5 = *(v0 + 8);
  v4 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v28 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A8780;
  v9 = MEMORY[0x1E69E63B0];
  strcpy((inited + 32), "wordErrorRate");
  *(inited + 46) = -4864;
  *(inited + 48) = v3;
  *(inited + 72) = v9;
  *(inited + 80) = 0x697263736E617274;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xEA00000000007470;
  *(inited + 96) = v5;
  *(inited + 104) = v4;

  v11 = sub_1AC79FE38();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AC7A8780;
  strcpy((v12 + 32), "wordErrorRate");
  *(v12 + 46) = -4864;
  *(v12 + 48) = v6;
  *(v12 + 72) = v9;
  *(v12 + 80) = 0x697263736E617274;
  *(v12 + 120) = v10;
  *(v12 + 88) = 0xEA00000000007470;
  *(v12 + 96) = v28;
  *(v12 + 104) = v7;
  v13 = sub_1AC79FE38();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AC7AC780;
  *(v14 + 32) = 0x656E696C65736162;
  *(v14 + 40) = 0xE800000000000000;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D730, &unk_1AC7AFBB0);
  *(v14 + 48) = v11;
  *(v14 + 72) = v15;
  *(v14 + 80) = 0x6D6F74737563;
  *(v14 + 88) = 0xE600000000000000;
  *(v14 + 96) = v13;
  *(v14 + 120) = v15;
  *(v14 + 128) = 0xD000000000000016;
  *(v14 + 136) = 0x80000001AC7B8610;
  if (v3 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = (v3 - v6) / v3;
  }

  v17 = objc_opt_self();
  *(v14 + 168) = v9;
  *(v14 + 144) = v16;

  OUTLINED_FUNCTION_77();
  sub_1AC79FE38();
  v18 = sub_1AC79FE18();

  v29[0] = 0;
  v19 = [v17 dataWithJSONObject:v18 options:0 error:v29];

  v20 = v29[0];
  if (!v19)
  {
    v26 = v20;

    v27 = sub_1AC79F748();

    swift_willThrow();
    return 32123;
  }

  sub_1AC79F868();
  OUTLINED_FUNCTION_74_6();

  sub_1AC79FFA8();
  OUTLINED_FUNCTION_142();
  result = sub_1AC79FF88();
  if (v22)
  {
    v23 = result;
    v24 = OUTLINED_FUNCTION_142();
    sub_1AC5C28A8(v24, v25);

    return v23;
  }

  __break(1u);
  return result;
}

void sub_1AC701050()
{
  OUTLINED_FUNCTION_104();
  v0 = sub_1AC79F778();
  OUTLINED_FUNCTION_40();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v6 = v5 - v4;
  v7 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1AC79F7A8();
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F70], v0);
  sub_1AC649BF0();
  sub_1AC79F7D8();
  v16 = OUTLINED_FUNCTION_161();
  v17(v16);
  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_105();
}

uint64_t CustomLanguageModelEvaluator.__allocating_init(languageModel:clientIdentifier:skipDownload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_53_7();
  v4 = swift_allocObject();
  CustomLanguageModelEvaluator.init(languageModel:clientIdentifier:skipDownload:)();
  return v4;
}

void CustomLanguageModelEvaluator.init(languageModel:clientIdentifier:skipDownload:)()
{
  OUTLINED_FUNCTION_40_0();
  v47 = v2;
  v48 = v1;
  v3 = v0;
  v54 = v4;
  v51 = v5;
  v7 = v6;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v45 = v9;
  v46 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43[1] = v43 - v12;
  v13 = sub_1AC79FF48();
  v14 = OUTLINED_FUNCTION_167(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v15 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v22 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel;
  v23 = *(v17 + 16);
  v50 = v7;
  v23(v3 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel, v7, v15);
  v49 = v3;
  v23(v21, v3 + v22, v15);
  sub_1AC79F7C8();
  v24 = *(v17 + 8);
  v24(v21, v15);
  objc_allocWithZone(MEMORY[0x1E699B9E8]);
  v25 = OUTLINED_FUNCTION_171();
  v28 = sub_1AC703A98(v25, v26, v27);
  if (!v28)
  {

    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v40 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    v41 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(8, v41, v42);
    swift_willThrow();
    v24(v50, v15);
    v24(v49 + v22, v15);
    type metadata accessor for CustomLanguageModelEvaluator(0);
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  v29 = v28;
  v30 = v51;
  v31 = [v28 getLocale];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1AC79FF68();
    v35 = v34;

    v52 = v33;
    v53 = v35;
    OUTLINED_FUNCTION_66_7();
    sub_1AC649BF0();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_10_17();
    sub_1AC7A0808();

    v36 = v44;
    sub_1AC79F968();

    v37 = v49;
    (*(v45 + 32))(v49 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v36, v46);
    v38 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
    v24(v50, v15);
    *(v37 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_queue) = v38;
    v39 = (v37 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier);
    *v39 = v47;
    v39[1] = v30;
    *(v37 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_skipDownload) = v54 & 1;
LABEL_7:
    OUTLINED_FUNCTION_38_8();
    return;
  }

  __break(1u);
}

uint64_t sub_1AC7016C8()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v0;
  v2 = sub_1AC79FB18();
  v1[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC701770()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_skipDownload))
  {

    OUTLINED_FUNCTION_44();

    return v2();
  }

  else
  {
    (*(v0[4] + 16))(v0[5], v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v0[3]);
    v4 = objc_allocWithZone(SFEntitledAssetConfig);
    OUTLINED_FUNCTION_175();
    v9 = sub_1AC751A98(v5, v6, v7, v8);
    v0[6] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AC7AA7F0;
    *(v10 + 32) = v9;
    v11 = *(v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_clientIdentifier + 8);
    v12 = objc_allocWithZone(type metadata accessor for AssetsInstallationRequest());
    v13 = v9;

    v14 = OUTLINED_FUNCTION_170();
    sub_1AC6EF678(v14, v15, v11);
    v0[7] = v16;
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_85_0(v17);

    return AssetsInstallationRequest.downloadAndInstall()();
  }
}

uint64_t sub_1AC701928()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC701A20()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC701A88()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v2();
}

void sub_1AC701AF4()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v41 = v2;
  v42 = v3;
  v40 = v4;
  v39 = v5;
  v6 = sub_1AC79FF48();
  v7 = OUTLINED_FUNCTION_167(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v8);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  sub_1AC5CF764(0, &qword_1EB56D8B0, off_1E797AD68);
  (*(v21 + 16))(v25, v1 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale, v19);
  v26 = sub_1AC701F38(v25);
  if (v26)
  {
    v27 = v26;
    [v26 setQueue_];
    sub_1AC5CF764(0, &qword_1EB56D8B8, off_1E797AD70);
    (*(v14 + 16))(v18, v39, v12);
    v28 = sub_1AC701FD4(v18);
    [v28 setRequiresOnDeviceRecognition_];
    if (v40)
    {
      sub_1AC701030();
      sub_1AC70103C();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
      v29 = objc_allocWithZone(SFSpeechLanguageModelConfiguration);
      v30 = sub_1AC703AFC(v18, v11);
      [v28 setCustomizedLanguageModel_];
    }

    [v28 setShouldReportPartialResults_];

    v31 = swift_allocObject();
    v32 = v42;
    *(v31 + 16) = v41;
    *(v31 + 24) = v32;
    v43[4] = sub_1AC706AB8;
    v43[5] = v31;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 1107296256;
    v43[2] = sub_1AC702128;
    v43[3] = &block_descriptor_138;
    v33 = _Block_copy(v43);

    v34 = [v27 recognitionTaskWithRequest:v28 resultHandler:v33];
    _Block_release(v33);
  }

  else
  {
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v35 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    v36 = sub_1AC79FFC8();
    v34 = related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v36, v37);
    v41(0, 0, v34);
  }

  OUTLINED_FUNCTION_105();
}

id sub_1AC701F38(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F9F8();
  v4 = [v2 initWithLocale_];

  v5 = sub_1AC79FB18();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1AC701FD4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F788();
  v4 = [v2 initWithURL_];

  v5 = sub_1AC79F7F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1AC702070(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = [a1 bestTranscription];
    v6 = [v5 formattedString];

    v7 = sub_1AC79FF68();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  a3(v7, v9, a2);
}

void sub_1AC702128(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

double sub_1AC7021B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60_5();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v4 + OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale);
  type metadata accessor for WordErrorRateCalculator();
  swift_initStackObject();

  WordErrorRateCalculator.init(reference:hypothesis:locale:substitutionCost:insertionCost:deletionCost:)(v6, v5, a3, a4, v12, 1, 1, 1);
  sub_1AC70035C();
  v15 = v14;

  return v15;
}

uint64_t sub_1AC7022D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_138();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC70230C()
{
  OUTLINED_FUNCTION_45();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE38, &unk_1AC7AFBC0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = xmmword_1AC7A6D00;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_80();
  (*(v9 + 16))(v7, v3);
  *v8 = v2;
  v8[1] = v1;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_1AC7024A4;

  return sub_1AC702E4C();
}

uint64_t sub_1AC7024A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC7025AC()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_85();
    v2 = *(v0 + 16);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    v9 = *(v1 + 80);
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v7;
    *(v2 + 40) = v8;
    *(v2 + 48) = v9;
    sub_1AC704DE0(v3, v4, v5, v6, v7, v8, v9);

    OUTLINED_FUNCTION_44();

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC702640()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

void sub_1AC70269C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v18 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (*(v8 + 16))
  {
    v12 = swift_allocObject();
    v17 = v3;
    *(v12 + 16) = v8;

    sub_1AC6F9554();

    sub_1AC79F7F8();
    OUTLINED_FUNCTION_22_0();
    (*(v13 + 8))(v11);
    sub_1AC5C6E6C();
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = v1;
    v16 = v17;
    v15 = v18;
    v14[4] = v12;
    v14[5] = v15;
    v14[6] = v16;
    sub_1AC637E08();

    sub_1AC701AF4();
  }

  else
  {
    v18(v6);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC7028C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  result = swift_allocObject();
  v17 = result;
  *(result + 16) = a4;
  if (a3)
  {

    v18 = a3;
    sub_1AC5C368C(sub_1AC60F304);
    v19 = *(*(v17 + 16) + 16);
    sub_1AC5C3604(v19, sub_1AC60F304);
    v20 = *(v17 + 16);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 56 * v19;
    *(v21 + 32) = a3;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0;
    *(v21 + 80) = 1;
    *(v17 + 16) = v20;
    swift_beginAccess();

    sub_1AC70269C();
  }

  else if (a2)
  {
    v22 = (a9 + *(v13 + 48));
    v24 = *v22;
    v23 = v22[1];

    v25 = sub_1AC7021B4(v24, v23, a1, a2);
    sub_1AC5C6E6C();
    v26 = (v15 + ((*(v14 + 80) + 56) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v27[2] = v17;
    v27[3] = a5;
    v27[4] = a6;
    v27[5] = a7;
    v27[6] = a8;
    sub_1AC637E08();
    *(v27 + v26) = v25;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v28 = a1;
    v28[1] = a2;

    sub_1AC701AF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC702BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3)
  {
    swift_beginAccess();
    v14 = a3;
    sub_1AC5C368C(sub_1AC60F304);
    v15 = *(*(a4 + 16) + 16);
    sub_1AC5C3604(v15, sub_1AC60F304);
    v16 = *(a4 + 16);
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 56 * v15;
    *(v17 + 32) = a3;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = 1;
    *(a4 + 16) = v16;
    swift_endAccess();
LABEL_6:
    swift_beginAccess();

    sub_1AC70269C();

    return;
  }

  if (a2)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
    v22 = sub_1AC7021B4(*(a10 + *(v21 + 48)), *(a10 + *(v21 + 48) + 8), a1, a2);
    if (a12)
    {
      v23 = v22;
      swift_beginAccess();

      sub_1AC5C368C(sub_1AC60F304);
      v24 = *(*(a4 + 16) + 16);
      sub_1AC5C3604(v24, sub_1AC60F304);
      v25 = *(a4 + 16);
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 56 * v24;
      *(v26 + 32) = a5;
      *(v26 + 40) = a11;
      *(v26 + 48) = a12;
      *(v26 + 56) = v23;
      *(v26 + 64) = a1;
      *(v26 + 72) = a2;
      *(v26 + 80) = 0;
      *(a4 + 16) = v25;
      swift_endAccess();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC702E4C()
{
  OUTLINED_FUNCTION_85();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v3);
  v1[21] = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79F7F8();
  v1[22] = v4;
  OUTLINED_FUNCTION_167(v4);
  v1[23] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC702EF8()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4C8, &qword_1AC7AFBE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AC7A6D00;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000001AC7B8660;
  OUTLINED_FUNCTION_40_8(v1);

  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1AC702FEC;

  return sub_1AC7016C8();
}

uint64_t sub_1AC702FEC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC703120()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 16) = xmmword_1AC7A6D00;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x474E49444C495542;
  *(v4 + 40) = 0xEB000000004D4C20;
  OUTLINED_FUNCTION_40_8(v4);

  v6 = objc_opt_self();
  v7 = sub_1AC79F788();
  v0[26] = v7;
  v8 = sub_1AC79FF58();
  v0[27] = v8;
  sub_1AC701030();
  sub_1AC70103C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v9 = objc_allocWithZone(SFSpeechLanguageModelConfiguration);
  v10 = sub_1AC703AFC(v1, v2);
  v0[28] = v10;
  v0[2] = v0;
  v0[3] = sub_1AC703344;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AC6BB2BC;
  v0[13] = &block_descriptor_10;
  v0[14] = v11;
  [v6 prepareCustomLanguageModelForUrl:v7 clientIdentifier:v8 configuration:v10 ignoresCache:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC703344()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC703440()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v8 = *(v0 + 152);

  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_1AC7A6D00;
  *(v3 + 56) = v4;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000001AC7B8680;
  OUTLINED_FUNCTION_40_8(v3);

  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  v5[1] = vextq_s8(v8, v8, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D740, &qword_1AC7AFBF8);
  *v6 = v0;
  v6[1] = sub_1AC7035C8;
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1AC7035C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC7036CC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC703740()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC7037D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1AC70269C();
}

uint64_t sub_1AC703928(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  return sub_1AC7A01D8();
}

uint64_t CustomLanguageModelEvaluator.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_languageModel;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC6Speech28CustomLanguageModelEvaluator_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1AC703A3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

id sub_1AC703A98(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = sub_1AC79FF58();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 *a3];

  return v6;
}

id sub_1AC703AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AC79F788();
  v7 = sub_1AC79F7F8();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v7) != 1)
  {
    v8 = sub_1AC79F788();
    (*(*(v7 - 8) + 8))(a2, v7);
  }

  v9 = [v3 initWithLanguageModel:v6 vocabulary:v8];

  (*(*(v7 - 8) + 8))(a1, v7);
  return v9;
}

uint64_t sub_1AC703E6C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1AC7A0178();
  }

  return result;
}

char *sub_1AC703F10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703F98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703FBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC703FE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC704020(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC704048(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC7040DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_16(a3, result, 56 * a2);
  }

  return result;
}

void sub_1AC70411C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_50_0();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_171(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_80(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_171();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_14_11();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_14_11();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1AC7041FC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_50_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_80(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_14_11();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_14_11();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1AC7042B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  memcpy((*(v7 + 56) + 264 * v6), v8, 0x101uLL);
  OUTLINED_FUNCTION_61_5();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1AC704304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_11_15(v8, v7 + 8 * (v8 >> 6));
  v9 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_167(v9);
  OUTLINED_FUNCTION_28_11();
  *(*(a4 + 56) + 8 * v4) = a3;
  OUTLINED_FUNCTION_61_5();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1AC704380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  sub_1AC5C3968(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_61_5();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1AC7043C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_11_15(a1, a7 + 8 * (a1 >> 6));
  result = OUTLINED_FUNCTION_72_4(v7, v8, v9, v10, v11, v12, v13);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v16;
  }

  return result;
}

uint64_t sub_1AC704404(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_11_15(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1AC704450(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_11_15(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * result) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v15;
  }

  return result;
}

unint64_t sub_1AC7044A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

void sub_1AC7044D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_4_12(a1, a2, a3, a4, a5);
  v10 = *(v9 + 56);
  sub_1AC79FD28();
  OUTLINED_FUNCTION_80();
  (*(v11 + 32))(v10 + *(v11 + 72) * a1, a4);
  OUTLINED_FUNCTION_61_5();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1AC704654(void *a1)
{
  v2 = [a1 supportedXsampaProns];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1AC7A0158();

  return v3;
}

id sub_1AC7046B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = sub_1AC79FF58();

  v13 = sub_1AC79FF58();

  v14 = sub_1AC79FF58();

  v15 = sub_1AC79FF58();

  v16 = [a11 createPhraseCountsArtifact:a1 version:a2 locale:v12 rawPhraseCountsPath:v13 customPronunciationsPath:v14 saveTo:v15];

  return v16;
}

unint64_t sub_1AC7047C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC70484C()
{
  result = qword_1EB56D658;
  if (!qword_1EB56D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D658);
  }

  return result;
}

unint64_t sub_1AC7048A0()
{
  result = qword_1EB56D668;
  if (!qword_1EB56D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D668);
  }

  return result;
}

void sub_1AC7048F4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704554(v3);
    v3 = v8;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 24);
    *a1 = v6;
    *(a1 + 16) = v7;
    *(v3 + 16) = v4 - 1;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1AC70496C()
{
  result = qword_1EB56D678;
  if (!qword_1EB56D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D678);
  }

  return result;
}

unint64_t sub_1AC704A28()
{
  result = qword_1EB56D690;
  if (!qword_1EB56D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D690);
  }

  return result;
}

unint64_t sub_1AC704A7C()
{
  result = qword_1EB56D6A8;
  if (!qword_1EB56D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6A8);
  }

  return result;
}

unint64_t sub_1AC704AD0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D6B0, &qword_1AC7AFB88);
    v4();
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704B3C()
{
  result = qword_1EB56D6C0;
  if (!qword_1EB56D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6C0);
  }

  return result;
}

unint64_t sub_1AC704B90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704BF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D698, &qword_1AC7AFB80);
    v4();
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1AC704C64()
{
  result = qword_1EB56D6F8;
  if (!qword_1EB56D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D6F8);
  }

  return result;
}

unint64_t sub_1AC704CB8()
{
  result = qword_1EB56D708;
  if (!qword_1EB56D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D708);
  }

  return result;
}

unint64_t sub_1AC704D0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D6C8, &qword_1AC7AFB90);
    sub_1AC704B90(v4);
    OUTLINED_FUNCTION_54_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

double sub_1AC704DE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v8 = a1;
  }

  else
  {
  }

  return result;
}

unint64_t sub_1AC704E3C()
{
  result = qword_1EB56D748;
  if (!qword_1EB56D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D748);
  }

  return result;
}

unint64_t sub_1AC704E94()
{
  result = qword_1EB56D750;
  if (!qword_1EB56D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D750);
  }

  return result;
}

unint64_t sub_1AC704F7C()
{
  result = qword_1EB56D768;
  if (!qword_1EB56D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D768);
  }

  return result;
}

uint64_t sub_1AC70504C(uint64_t a1)
{
  result = sub_1AC79FB18();
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

uint64_t dispatch thunk of SFCustomLanguageModelData.export(to:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v6 = (*(v3 + 248) + **(v3 + 248));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_85_0(v4);

  return v6(v2);
}

uint64_t destroy for SFCustomLanguageModelData.CustomPronunciation()
{
}

void *sub_1AC7053B0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for SFCustomLanguageModelData.CustomPronunciation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for SFCustomLanguageModelData.CustomPronunciation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t dispatch thunk of SFCustomLanguageModelData.PhraseCountGenerator.Iterator.next()()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v7 = (*(v3 + 80) + **(v3 + 80));
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1AC5C5380;

  return v7(v2);
}

void *sub_1AC705768(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t sub_1AC7057A0()
{
  OUTLINED_FUNCTION_50_0();
  *v3 = *v2;
  *(v1 + 8) = v2[1];

  *(v1 + 16) = *(v0 + 16);
  return v1;
}

void *sub_1AC7057F4()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2[1];
  *v1 = *v2;
  v1[1] = v3;

  v1[2] = *(v0 + 16);
  return v1;
}

uint64_t sub_1AC705830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1AC705870(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1AC7058FC(_BYTE *result, int a2, int a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC705A88(uint64_t a1)
{
  result = sub_1AC79F7F8();
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

uint64_t sub_1AC705C28(uint64_t a1)
{
  result = sub_1AC79F7F8();
  if (v2 <= 0x3F)
  {
    result = sub_1AC79FB18();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of CustomLanguageModelEvaluator.evaluate(audioSample:referenceTranscription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_9();
  v13 = (*(v9 + 168) + **(v9 + 168));
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v4 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1AC5C4D48;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CustomLanguageModelEvaluator.evaluate(testSet:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_37_9();
  v6 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_85_0(v4);

  return v6(v2);
}

uint64_t sub_1AC705FC8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t destroy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult()
{
}

uint64_t initializeWithCopy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void *assignWithCopy for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CustomLanguageModelEvaluator.AudioSampleEvaluationResult(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SFCustomLanguageModelData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1AC7063D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC7064B0()
{
  result = qword_1EB56D838;
  if (!qword_1EB56D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D838);
  }

  return result;
}

unint64_t sub_1AC706508()
{
  result = qword_1EB56D840;
  if (!qword_1EB56D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D840);
  }

  return result;
}

unint64_t sub_1AC706560()
{
  result = qword_1EB56D848;
  if (!qword_1EB56D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D848);
  }

  return result;
}

unint64_t sub_1AC7065B8()
{
  result = qword_1EB56D850;
  if (!qword_1EB56D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D850);
  }

  return result;
}

unint64_t sub_1AC706610()
{
  result = qword_1EB56D858;
  if (!qword_1EB56D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D858);
  }

  return result;
}

unint64_t sub_1AC706668()
{
  result = qword_1EB56D860;
  if (!qword_1EB56D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D860);
  }

  return result;
}

unint64_t sub_1AC7066C0()
{
  result = qword_1EB56D868;
  if (!qword_1EB56D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D868);
  }

  return result;
}

unint64_t sub_1AC706718()
{
  result = qword_1EB56D870;
  if (!qword_1EB56D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D870);
  }

  return result;
}

unint64_t sub_1AC706770()
{
  result = qword_1EB56D878;
  if (!qword_1EB56D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D878);
  }

  return result;
}

unint64_t sub_1AC7067C8()
{
  result = qword_1EB56D880;
  if (!qword_1EB56D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D880);
  }

  return result;
}

unint64_t sub_1AC706820()
{
  result = qword_1EB56D888;
  if (!qword_1EB56D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D888);
  }

  return result;
}

unint64_t sub_1AC706878()
{
  result = qword_1EB56D890;
  if (!qword_1EB56D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D890);
  }

  return result;
}

unint64_t sub_1AC7068D0()
{
  result = qword_1EB56D898;
  if (!qword_1EB56D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D898);
  }

  return result;
}

unint64_t sub_1AC706928()
{
  result = qword_1EB56D8A0;
  if (!qword_1EB56D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D8A0);
  }

  return result;
}

uint64_t sub_1AC70697C()
{
  OUTLINED_FUNCTION_60_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_167(v0);
  OUTLINED_FUNCTION_84_2();
  v1 = OUTLINED_FUNCTION_79_5();
  return sub_1AC7028C4(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

void sub_1AC7069FC()
{
  OUTLINED_FUNCTION_60_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_84_2();
  v13 = *(v0 + v2);
  v14 = *(v0 + v2 + 8);
  v3 = OUTLINED_FUNCTION_79_5();
  sub_1AC702BF0(v3, v4, v5, v6, v11, v7, v8, v9, v10, v12, v13, v14);
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AC706AD8(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704568();
    v3 = v7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for TranscriptionSegment(0);
    sub_1AC706CAC();
    *(v3 + 16) = v5;
    *v1 = v3;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC706BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  OUTLINED_FUNCTION_167(v2);

  return sub_1AC703928(a1);
}

unint64_t sub_1AC706C58()
{
  result = qword_1EB56D8D0;
  if (!qword_1EB56D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D8D0);
  }

  return result;
}

uint64_t sub_1AC706CAC()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

unint64_t OUTLINED_FUNCTION_4_12(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

double OUTLINED_FUNCTION_32_11@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = v2;
  a2[4] = v3;
  *a2 = a1;

  return result;
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1)
{

  return MEMORY[0x1EEE6B610](a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

void OUTLINED_FUNCTION_62_6(uint64_t a1@<X8>)
{
  v1[2] = a1;
  v1[4] = 68;
  v1[5] = 0xE100000000000000;
}

void OUTLINED_FUNCTION_66_7()
{
  *(v0 - 112) = 45;
  *(v0 - 104) = 0xE100000000000000;
  *(v0 - 128) = 95;
  *(v0 - 120) = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_89_5(uint64_t a1, uint64_t a2)
{

  return sub_1AC7A0C48();
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1AC706F04()
{
  sub_1AC79FD28();
  result = sub_1AC79FE38();
  off_1EB56B100 = result;
  return result;
}

_DWORD *sub_1AC706F48()
{
  _s6Speech5_LockCMa_0();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_1EB56B0E8 = v0;
  return result;
}

uint64_t sub_1AC706F98()
{
  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  v8 = sub_1AC79FD58();
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v15 = __swift_project_value_buffer(v1, qword_1ED9386C8);
  (*(v3 + 16))(v7, v15, v1);
  sub_1AC79FD38();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC6Speech14SignpostHelper_signposter, v14, v8);
  return v0;
}

uint64_t sub_1AC707118(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v54 = a4;
  v57 = a5;
  v6 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_1AC79FD28();
  OUTLINED_FUNCTION_40();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v55 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v20 = sub_1AC79FDE8();
  __swift_project_value_buffer(v20, qword_1ED9386C8);
  v21 = sub_1AC79FDC8();
  v22 = sub_1AC7A05E8();
  v23 = os_log_type_enabled(v21, v22);
  v58 = a1;
  v56 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v52 = v19;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_48();
    v59[0] = v26;
    *v25 = 136315138;
    v27 = sub_1AC7A09E8();
    v29 = sub_1AC5CFE74(v27, v28, v59);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v21, v22, "Logging signpost begin event: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_70();
    v19 = v52;
    OUTLINED_FUNCTION_70();
  }

  v30 = sub_1AC7A09E8();
  v32 = v31;
  sub_1AC79FD48();
  v33 = sub_1AC79FD08();
  if (qword_1EB56B0E0 != -1)
  {
    v33 = OUTLINED_FUNCTION_4_13(&qword_1EB56B0E0);
  }

  MEMORY[0x1EEE9AC00](v33);
  *(&v52 - 4) = v19;
  *(&v52 - 3) = v30;
  *(&v52 - 2) = v32;
  sub_1AC6ED760(sub_1AC70875C);
  sub_1AC708684(v10);
  sub_1AC7085C0();
  sub_1AC707784();
  sub_1AC5C3958(v34, v35);
  v36 = v57;

  v37 = sub_1AC79FD48();
  v38 = sub_1AC7A0648();
  if ((sub_1AC7A0788() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v56)
  {
    v40 = v58;
    v41 = HIDWORD(v58);
    if (HIDWORD(v58))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8_11();
      if (v42)
      {
        __break(1u);
        goto LABEL_25;
      }

      v41 = v40 >> 16;
      if (v40 >> 16 <= 0x10)
      {
        if (v40 <= 0x7F)
        {
          v43 = v40 + 1;
LABEL_17:
          OUTLINED_FUNCTION_2_19(v43);

          v39 = v59;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    if (v40 < 0x800)
    {
      v43 = (v40 >> 6) + ((v40 & 0x3F) << 8) + 33217;
      goto LABEL_17;
    }

LABEL_25:
    if (v41)
    {
      OUTLINED_FUNCTION_5_14();
      v43 = v50 + v51;
    }

    else
    {
      OUTLINED_FUNCTION_11_16();
    }

    v36 = v57;
    goto LABEL_17;
  }

  v39 = v58;
  if (v58)
  {
LABEL_18:
    v44 = swift_slowAlloc();
    v45 = OUTLINED_FUNCTION_48();
    v59[0] = v45;
    *v44 = 134349314;
    OUTLINED_FUNCTION_10_18(v53);
    *(v44 + 14) = sub_1AC5CFE74(v46, v36, v47);
    v48 = sub_1AC79FD18();
    _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v37, v38, v48, v39, "%{signpost.description:begin_time,public}llu %s", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    goto LABEL_19;
  }

  __break(1u);
LABEL_11:

LABEL_19:
  (*(v13 + 16))(v55, v19, v11);
  sub_1AC79FDA8();
  swift_allocObject();
  sub_1AC79FD98();

  return (*(v13 + 8))(v19, v11);
}

uint64_t sub_1AC707630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AC79FD28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB56B0F8 != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(v11, a1, v8);
  swift_beginAccess();
  sub_1AC70877C(v11, a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC7077F4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a4;
  v7 = a3;
  sub_1AC79FD68();
  OUTLINED_FUNCTION_40();
  v71 = v10;
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v70 = v12 - v11;
  v13 = sub_1AC79FD28();
  OUTLINED_FUNCTION_40();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v78 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_5();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v81 = &v69 - v29;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v30 = sub_1AC79FDE8();
  __swift_project_value_buffer(v30, qword_1ED9386C8);
  v31 = sub_1AC79FDC8();
  v32 = sub_1AC7A05E8();
  v33 = os_log_type_enabled(v31, v32);
  v77 = a5;
  v79 = a1;
  v80 = v7;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_48();
    v75 = v23;
    v36 = v13;
    v37 = v35;
    v82[0] = v35;
    *v34 = 136315138;
    v38 = sub_1AC7A09E8();
    v40 = sub_1AC5CFE74(v38, v39, v82);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_1AC5BC000, v31, v32, "Logging signpost end event: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v13 = v36;
    v23 = v75;
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  sub_1AC7A09E8();
  v41 = v81;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v13);
  if (qword_1EB56B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_13(&qword_1EB56B0E0);
  }

  v42 = *(off_1EB56B0E8 + 2);

  os_unfair_lock_lock(v42);
  sub_1AC707EE4(v41);
  os_unfair_lock_unlock(v42);

  sub_1AC708614(v41, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v13) != 1)
  {
    (*(v15 + 32))(v23, v27, v13);
    (*(v15 + 16))(v76, v23, v13);
    sub_1AC79FDA8();
    swift_allocObject();
    sub_1AC79FD98();
    sub_1AC7085C0();
    sub_1AC707784();
    sub_1AC5C3958(v43, v44);

    v45 = v23;
    v46 = sub_1AC79FD48();
    sub_1AC79FD88();
    v47 = sub_1AC7A0638();
    if ((sub_1AC7A0788() & 1) == 0)
    {
LABEL_13:

      v48 = *(v15 + 8);
      v48(v78, v13);
      v48(v45, v13);
LABEL_24:
      v41 = v81;
      return sub_1AC708684(v41);
    }

    v75 = v45;
    if ((v80 & 1) == 0)
    {

      if (!v79)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_20:
      v53 = v15;

      v54 = v70;
      sub_1AC79FDB8();

      v56 = v71;
      v55 = v72;
      if ((*(v71 + 88))(v54, v72) == *MEMORY[0x1E69E93E8])
      {
        v57 = 0;
        v58 = "[Error] Interval already ended";
      }

      else
      {
        (*(v56 + 8))(v54, v55);
        v58 = "%{signpost.description:end_time,public}llu %s";
        v57 = 2;
      }

      v59 = swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_48();
      v82[0] = v60;
      *v59 = v57;
      *(v59 + 1) = v57;
      *(v59 + 2) = 2050;
      OUTLINED_FUNCTION_10_18(v73);
      *(v59 + 14) = sub_1AC5CFE74(v61, v77, v62);
      v63 = v78;
      v64 = sub_1AC79FD18();
      _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v46, v47, v64, v79, v58, v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();

      v65 = *(v53 + 8);
      v65(v63, v13);
      v65(v75, v13);
      goto LABEL_24;
    }

    v49 = v79;
    v50 = HIDWORD(v79);
    if (HIDWORD(v79))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8_11();
      if (v51)
      {
        __break(1u);
        goto LABEL_32;
      }

      v50 = v49 >> 16;
      if (v49 >> 16 <= 0x10)
      {
        if (v49 <= 0x7F)
        {
          v52 = v49 + 1;
LABEL_19:
          OUTLINED_FUNCTION_2_19(v52);

          v79 = v82;
          goto LABEL_20;
        }

LABEL_28:
        if (v49 < 0x800)
        {
          v67 = (v49 >> 6) + ((v49 & 0x3F) << 8);
          v68 = 33217;
LABEL_30:
          v52 = v67 + v68;
          goto LABEL_19;
        }

LABEL_32:
        if (!v50)
        {
          OUTLINED_FUNCTION_11_16();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_5_14();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1AC708684(v27);
  return sub_1AC708684(v41);
}

uint64_t sub_1AC707EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  if (qword_1EB56B0F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1EB56B100;
  if (*(off_1EB56B100 + 2) && (v6 = sub_1AC6E0808(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = v5[7];
    v10 = sub_1AC79FD28();
    (*(*(v10 - 8) + 16))(v4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = v4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1AC79FD28();
    v11 = v4;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  swift_endAccess();
  return sub_1AC7086EC(v4, a1);
}

void sub_1AC708070(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = sub_1AC79FD28();
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v15 = sub_1AC79FDE8();
  __swift_project_value_buffer(v15, qword_1ED9386C8);
  v16 = sub_1AC79FDC8();
  v17 = sub_1AC7A05E8();
  v39 = v7;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_48();
    v41 = v19;
    *v18 = 136315138;
    v20 = sub_1AC7A09E8();
    v22 = v14;
    v23 = v10;
    v24 = a5;
    v25 = v8;
    v26 = sub_1AC5CFE74(v20, v21, &v41);

    *(v18 + 4) = v26;
    v8 = v25;
    a5 = v24;
    v10 = v23;
    v14 = v22;
    _os_log_impl(&dword_1AC5BC000, v16, v17, "Logging signpost event: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  sub_1AC79FD48();
  sub_1AC79FD08();
  sub_1AC7085C0();
  sub_1AC707784();
  sub_1AC5C3958(v27, v28);

  v29 = sub_1AC79FD48();
  v30 = sub_1AC7A0658();
  if ((sub_1AC7A0788() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v39 & 1) == 0)
  {

    v31 = a1;
    if (!a1)
    {
      __break(1u);
LABEL_9:

LABEL_15:
      (*(v10 + 8))(v14, v8);
      return;
    }

LABEL_14:
    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_48();
    v41 = v35;
    *v34 = 134349314;
    *(v34 + 4) = a6;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1AC5CFE74(a4, a5, &v41);
    v36 = sub_1AC79FD18();
    _os_signpost_emit_with_name_impl(&dword_1AC5BC000, v29, v30, v36, v31, "%{signpost.description:event_time,public}llu %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_11();
  if (!v33)
  {
    if (v32 >> 16 <= 0x10)
    {

      v31 = &v41;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t SignpostHelper.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SignpostHelper_signposter;
  sub_1AC79FD58();
  OUTLINED_FUNCTION_22_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SignpostHelper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SignpostHelper_signposter;
  sub_1AC79FD58();
  OUTLINED_FUNCTION_22_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for SignpostHelper(uint64_t a1)
{
  result = qword_1EB56B0C8;
  if (!qword_1EB56B0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC7084F4(uint64_t a1)
{
  result = sub_1AC79FD58();
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

unint64_t sub_1AC7085C0()
{
  result = qword_1EB56AA60;
  if (!qword_1EB56AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AA60);
  }

  return result;
}

uint64_t sub_1AC708614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC708684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC7086EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8D8, &qword_1AC7B09B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AC70877C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *v4;
  v9 = sub_1AC6E0808();
  if (__OFADD__(*(v22 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8E0, &qword_1AC7B09B8);
  if (sub_1AC7A0B18())
  {
    v14 = sub_1AC6E0808();
    if ((v12 & 1) == (v15 & 1))
    {
      v11 = v14;
      goto LABEL_5;
    }

LABEL_10:
    sub_1AC7A0DC8();
    __break(1u);
    return;
  }

LABEL_5:
  if (v12)
  {
    v16 = *(v22 + 56);
    v17 = sub_1AC79FD28();
    v18 = *(v17 - 8);
    v19 = *(v18 + 32);
    v20 = *(v18 + 72) * v11;
    v19(a4, v16 + v20, v17);
    v19(*(v22 + 56) + v20, a1, v17);
    __swift_storeEnumTagSinglePayload(a4, 0, 1, v17);
  }

  else
  {
    sub_1AC7044D4(v11, a2, a3, a1, v22, v13);
    v21 = sub_1AC79FD28();
    __swift_storeEnumTagSinglePayload(a4, 1, 1, v21);
  }

  *v4 = v22;
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1)
{

  return swift_once();
}

void Locale.languageRegionLocale.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v358 = v23;
  v24 = sub_1AC79FAA8();
  v25 = OUTLINED_FUNCTION_167(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v352[1] = v27 - v26;
  v346 = sub_1AC79FA48();
  OUTLINED_FUNCTION_40();
  v327 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v325 = v31 - v30;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8E8, &qword_1AC7B09C0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_91();
  v328 = v34;
  v360 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_40();
  v349 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6();
  v342 = v38 - v37;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F0, &qword_1AC7B09C8);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_26_0();
  v344 = v43;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_91();
  v339 = v46;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F8, &unk_1AC7B09D0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v47);
  v361 = &v321 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v50 = OUTLINED_FUNCTION_167(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_4();
  v352[0] = v51;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_26_0();
  v345 = v54;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_91();
  v348 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C068, &unk_1AC7B09E0);
  v60 = OUTLINED_FUNCTION_167(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_4();
  v351 = v61;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_91();
  v354 = v63;
  v359 = sub_1AC79FA78();
  OUTLINED_FUNCTION_40();
  v353 = v64;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_4();
  v355 = v66;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_91();
  v356 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v70 = OUTLINED_FUNCTION_167(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_26_0();
  v350 = v79;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_26_0();
  v343 = v82;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_26_0();
  v347 = v86;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v321 - v88;
  v90 = sub_1AC79FAF8();
  OUTLINED_FUNCTION_40();
  v92 = v91;
  v94 = MEMORY[0x1EEE9AC00](v93);
  v96 = &v321 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v321 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = &v321 - v101;
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v321 - v103;
  v105 = v20;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v106 = *(v92 + 8);
  v106(v104, v90);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v360);
  sub_1AC5C720C(v89, &qword_1EB56C070, &qword_1AC7A8770);
  if (EnumTagSinglePayload == 1)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v108 = sub_1AC79FDE8();
    __swift_project_value_buffer(v108, qword_1ED9386C8);
    v109 = sub_1AC79FDC8();
    v110 = sub_1AC7A05F8();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_1AC5BC000, v109, v110, "Locales must specify a language in order to be used by the Speech framework", v111, 2u);
      MEMORY[0x1B26EAB10](v111, -1, -1);
    }

    v112 = sub_1AC79FB18();
    v113 = v358;
    v114 = 1;
    goto LABEL_12;
  }

  v115 = v105;
  sub_1AC79FB08();
  v116 = v354;
  sub_1AC79FAE8();
  v106(v102, v90);
  v117 = v359;
  OUTLINED_FUNCTION_96(v116, 1, v359);
  if (v151)
  {
    sub_1AC5C720C(v116, &qword_1EB56C068, &unk_1AC7B09E0);
  }

  else
  {
    v322 = v115;
    v119 = v353;
    v120 = v356;
    (*(v353 + 32))(v356, v116, v117);
    v121 = v355;
    OUTLINED_FUNCTION_34_9();
    v122 = MEMORY[0x1B26E8620](v120, v121);
    v125 = *(v119 + 8);
    v124 = v119 + 8;
    v123 = v125;
    v125(v121, v117);
    if (v122 & 1) != 0 || (OUTLINED_FUNCTION_25_12(), v126 = MEMORY[0x1B26E8620](v356, v121), v123(v121, v117), (v126))
    {
      v354 = v124;
      v323 = v123;
      sub_1AC79FB08();
      v127 = v347;
      sub_1AC79FAC8();
      v106(v99, v90);
      sub_1AC79FB08();
      v128 = v348;
      sub_1AC79FAD8();
      v106(v99, v90);
      OUTLINED_FUNCTION_28_12();
      v130 = *(v129 + 48);
      v131 = *(v129 + 64);
      v132 = v361;
      OUTLINED_FUNCTION_26_12(v127, v361);
      v133 = *(v353 + 16);
      v353 = v130;
      v133(v132 + v130, v356, v117);
      v338 = v131;
      sub_1AC5D1E4C(v128, v132 + v131, &qword_1EB56C060, &unk_1AC7A8760);
      v134 = v337;
      OUTLINED_FUNCTION_24_14();
      sub_1AC79F9B8();
      OUTLINED_FUNCTION_150_1();
      v135 = v360;
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v360);
      v139 = *(v357 + 48);
      v140 = v339;
      OUTLINED_FUNCTION_26_12(v134, v339);
      OUTLINED_FUNCTION_26_12(v132, v139 + v140);
      OUTLINED_FUNCTION_65_4(v140);
      if (v151)
      {
        sub_1AC5C720C(v134, &qword_1EB56C070, &qword_1AC7A8770);
        OUTLINED_FUNCTION_65_4(v139 + v140);
        v141 = v355;
        v142 = v345;
        v143 = v341;
        v144 = v343;
        v145 = v340;
        if (v151)
        {
          sub_1AC5C720C(v140, &qword_1EB56C070, &qword_1AC7A8770);
          v146 = v344;
LABEL_28:
          OUTLINED_FUNCTION_25_12();
          OUTLINED_FUNCTION_0_15();
          sub_1AC70A81C(v160, v161, MEMORY[0x1E69696B0]);
          OUTLINED_FUNCTION_6_11();
          v165 = OUTLINED_FUNCTION_33_9(v141, v162, v163, v164);
          OUTLINED_FUNCTION_5_15();
          v166();
          if ((v165 & 1) == 0)
          {
            goto LABEL_39;
          }

          sub_1AC79FA38();
          OUTLINED_FUNCTION_150_1();
          v167 = v346;
          __swift_storeEnumTagSinglePayload(v168, v169, v170, v346);
          v139 = *(v332 + 48);
          OUTLINED_FUNCTION_38_10();
          sub_1AC5D1E4C(v171, v172, &qword_1EB56C060, &unk_1AC7A8760);
          OUTLINED_FUNCTION_28_12();
          sub_1AC5D1E4C(v361 + v173, v139 + v165, &qword_1EB56C060, &unk_1AC7A8760);
          OUTLINED_FUNCTION_96(v165, 1, v167);
          if (v151)
          {
            sub_1AC5C720C(v145, &qword_1EB56C060, &unk_1AC7A8760);
            OUTLINED_FUNCTION_96(v139 + v165, 1, v346);
            if (v151)
            {
LABEL_55:
              sub_1AC5C720C(v165, &qword_1EB56C060, &unk_1AC7A8760);
LABEL_56:
              OUTLINED_FUNCTION_28_12();
              v209 = v361;
              sub_1AC5C720C(v361 + v210, v211, &unk_1AC7A8760);
              v212 = v359;
              v213 = v323;
              v323(v209 + v353, v359);
              sub_1AC5C720C(v209, &qword_1EB56C070, &qword_1AC7A8770);
              OUTLINED_FUNCTION_24_14();
              sub_1AC79F9B8();
              OUTLINED_FUNCTION_150_1();
              __swift_storeEnumTagSinglePayload(v214, v215, v216, v135);
              __swift_storeEnumTagSinglePayload(v351, 1, 1, v212);
              sub_1AC79FA38();
              OUTLINED_FUNCTION_150_1();
              __swift_storeEnumTagSinglePayload(v217, v218, v219, v346);
              sub_1AC79FA98();
              v220 = v358;
              sub_1AC79F9E8();
              sub_1AC5C720C(v348, &qword_1EB56C060, &unk_1AC7A8760);
              OUTLINED_FUNCTION_32_12();
              v213(v356, v212);
              v112 = sub_1AC79FB18();
              v113 = v220;
              goto LABEL_11;
            }
          }

          else
          {
            v174 = v326;
            sub_1AC5D1E4C(v165, v326, &qword_1EB56C060, &unk_1AC7A8760);
            OUTLINED_FUNCTION_96(v139 + v165, 1, v346);
            if (!v175)
            {
              v176 = v327;
              v177 = v139 + v165;
              v178 = v325;
              v179 = v346;
              (*(v327 + 32))(v325, v177, v346);
              OUTLINED_FUNCTION_18_11();
              sub_1AC70A81C(v180, v181, MEMORY[0x1E6969698]);
              LODWORD(v340) = sub_1AC79FED8();
              v182 = *(v176 + 8);
              v182(v178, v179);
              v139 = &unk_1AC7A8760;
              OUTLINED_FUNCTION_29_15(v145);
              v182(v174, v179);
              v143 = v341;
              v142 = v345;
              OUTLINED_FUNCTION_29_15(v165);
              v144 = v343;
              v146 = v344;
              if (v340)
              {
                goto LABEL_56;
              }

LABEL_39:
              OUTLINED_FUNCTION_24_14();
              sub_1AC79F9B8();
              OUTLINED_FUNCTION_9_16(v144);
              OUTLINED_FUNCTION_26_12(v144, v143);
              OUTLINED_FUNCTION_26_12(v361, v139 + v143);
              OUTLINED_FUNCTION_65_4(v143);
              if (v151)
              {
                sub_1AC5C720C(v144, &qword_1EB56C070, &qword_1AC7A8770);
                OUTLINED_FUNCTION_65_4(v139 + v143);
                if (v151)
                {
                  sub_1AC5C720C(v143, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_49:
                  OUTLINED_FUNCTION_25_12();
                  OUTLINED_FUNCTION_0_15();
                  sub_1AC70A81C(v198, v199, MEMORY[0x1E69696B0]);
                  OUTLINED_FUNCTION_6_11();
                  v203 = OUTLINED_FUNCTION_33_9(v141, v200, v201, v202);
                  OUTLINED_FUNCTION_5_15();
                  v204();
                  if ((v203 & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  v144 = v146;
                  sub_1AC79FA38();
                  OUTLINED_FUNCTION_150_1();
                  v143 = v346;
                  __swift_storeEnumTagSinglePayload(v205, v206, v207, v346);
                  v139 = *(v332 + 48);
                  OUTLINED_FUNCTION_19_10(v142, v352);
                  OUTLINED_FUNCTION_28_12();
                  OUTLINED_FUNCTION_26_12(v361 + v208, v139 + v142);
                  OUTLINED_FUNCTION_96(v142, 1, v143);
                  if (!v151)
                  {
                    v221 = v324;
                    sub_1AC5D1E4C(v142, v324, &qword_1EB56C060, &unk_1AC7A8760);
                    OUTLINED_FUNCTION_96(v139 + v142, 1, v346);
                    if (!v222)
                    {
                      v314 = v327;
                      v315 = v139 + v142;
                      v316 = v325;
                      v317 = v346;
                      (*(v327 + 32))(v325, v315, v346);
                      OUTLINED_FUNCTION_18_11();
                      sub_1AC70A81C(v318, v319, MEMORY[0x1E6969698]);
                      v320 = v142;
                      v143 = sub_1AC79FED8();
                      v142 = *(v314 + 8);
                      v142(v316, v317);
                      v139 = &unk_1AC7A8760;
                      OUTLINED_FUNCTION_29_15(v345);
                      v142(v221, v317);
                      v141 = v355;
                      OUTLINED_FUNCTION_29_15(v320);
                      v146 = v144;
                      if ((v143 & 1) == 0)
                      {
                        goto LABEL_61;
                      }

                      goto LABEL_56;
                    }

                    sub_1AC5C720C(v345, &qword_1EB56C060, &unk_1AC7A8760);
                    (*(v327 + 8))(v221, v346);
LABEL_60:
                    sub_1AC5C720C(v142, &qword_1EB56D8E8, &qword_1AC7B09C0);
                    goto LABEL_61;
                  }

                  sub_1AC5C720C(v142, &qword_1EB56C060, &unk_1AC7A8760);
                  OUTLINED_FUNCTION_96(v139 + v142, 1, v346);
                  if (!v151)
                  {
                    goto LABEL_60;
                  }

                  v165 = v142;
                  goto LABEL_55;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38_10();
                sub_1AC5D1E4C(v183, v184, v185, v186);
                OUTLINED_FUNCTION_65_4(v139 + v143);
                if (!v187)
                {
                  OUTLINED_FUNCTION_15_10();
                  v190 = OUTLINED_FUNCTION_12_12();
                  v191(v190);
                  OUTLINED_FUNCTION_1_18();
                  v194 = sub_1AC70A81C(v192, v193, MEMORY[0x1E6969628]);
                  v195 = OUTLINED_FUNCTION_20_13(v194);
                  v196 = OUTLINED_FUNCTION_14_12();
                  (v143)(v196);
                  v139 = &qword_1AC7A8770;
                  OUTLINED_FUNCTION_29_15(v144);
                  v197 = OUTLINED_FUNCTION_77();
                  (v143)(v197);
                  v142 = v345;
                  v141 = v355;
                  OUTLINED_FUNCTION_29_15(v143);
                  if ((v195 & 1) == 0)
                  {
LABEL_61:
                    v223 = v335;
                    OUTLINED_FUNCTION_24_14();
                    sub_1AC79F9B8();
                    OUTLINED_FUNCTION_9_16(v223);
                    OUTLINED_FUNCTION_26_12(v223, v146);
                    OUTLINED_FUNCTION_26_12(v361, v139 + v146);
                    OUTLINED_FUNCTION_65_4(v146);
                    if (v151)
                    {
                      sub_1AC5C720C(v223, &qword_1EB56C070, &qword_1AC7A8770);
                      OUTLINED_FUNCTION_65_4(v139 + v146);
                      if (v151)
                      {
                        sub_1AC5C720C(v146, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_71:
                        OUTLINED_FUNCTION_34_9();
                        OUTLINED_FUNCTION_0_15();
                        sub_1AC70A81C(v239, v240, MEMORY[0x1E69696B0]);
                        OUTLINED_FUNCTION_6_11();
                        v244 = OUTLINED_FUNCTION_33_9(v141, v241, v242, v243);
                        OUTLINED_FUNCTION_5_15();
                        v245();
                        if (v244)
                        {
                          OUTLINED_FUNCTION_23_13();
LABEL_96:
                          sub_1AC79F9B8();
                          OUTLINED_FUNCTION_8_12();
LABEL_109:
                          sub_1AC79FA38();
                          OUTLINED_FUNCTION_150_1();
                          __swift_storeEnumTagSinglePayload(v298, v299, v300, v346);
                          sub_1AC79FA98();
                          sub_1AC79F9E8();
                          OUTLINED_FUNCTION_44_6(v348);
                          OUTLINED_FUNCTION_32_12();
                          v301 = v323;
                          v323(v356, v144);
                          sub_1AC79FB18();
                          OUTLINED_FUNCTION_150_1();
                          __swift_storeEnumTagSinglePayload(v302, v303, v304, v305);
                          OUTLINED_FUNCTION_28_12();
                          v306 = v361;
                          OUTLINED_FUNCTION_44_6(v361 + v307);
                          v301(v306 + v353, v144);
                          v308 = v306;
LABEL_111:
                          sub_1AC5C720C(v308, &qword_1EB56C070, &qword_1AC7A8770);
                          goto LABEL_13;
                        }

LABEL_73:
                        v246 = v141;
                        v247 = v333;
                        OUTLINED_FUNCTION_24_14();
                        sub_1AC79F9B8();
                        OUTLINED_FUNCTION_9_16(v247);
                        OUTLINED_FUNCTION_19_10(v247, &a10);
                        OUTLINED_FUNCTION_35_10();
                        OUTLINED_FUNCTION_65_4(v142);
                        if (v151)
                        {
                          sub_1AC5C720C(v247, &qword_1EB56C070, &qword_1AC7A8770);
                          OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v139);
                          if (v151)
                          {
                            sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_83:
                            OUTLINED_FUNCTION_25_12();
                            OUTLINED_FUNCTION_0_15();
                            sub_1AC70A81C(v256, v257, MEMORY[0x1E69696B0]);
                            OUTLINED_FUNCTION_6_11();
                            v261 = OUTLINED_FUNCTION_33_9(v246, v258, v259, v260);
                            OUTLINED_FUNCTION_5_15();
                            v262();
                            if (v261)
                            {
LABEL_108:
                              OUTLINED_FUNCTION_23_13();
                              sub_1AC79F9B8();
                              OUTLINED_FUNCTION_8_12();
                              goto LABEL_109;
                            }

LABEL_84:
                            v263 = v334;
                            OUTLINED_FUNCTION_30_9();
                            sub_1AC79F9B8();
                            OUTLINED_FUNCTION_9_16(v263);
                            OUTLINED_FUNCTION_19_10(v263, &v362);
                            OUTLINED_FUNCTION_35_10();
                            OUTLINED_FUNCTION_65_4(v142);
                            if (v151)
                            {
                              sub_1AC5C720C(v263, &qword_1EB56C070, &qword_1AC7A8770);
                              OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v139);
                              if (v151)
                              {
                                sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_94:
                                OUTLINED_FUNCTION_34_9();
                                OUTLINED_FUNCTION_0_15();
                                sub_1AC70A81C(v274, v275, MEMORY[0x1E69696B0]);
                                OUTLINED_FUNCTION_6_11();
                                v279 = OUTLINED_FUNCTION_33_9(v246, v276, v277, v278);
                                OUTLINED_FUNCTION_5_15();
                                v280();
                                if (v279)
                                {
                                  OUTLINED_FUNCTION_30_9();
                                  goto LABEL_96;
                                }

LABEL_97:
                                v281 = v336;
                                OUTLINED_FUNCTION_30_9();
                                sub_1AC79F9B8();
                                OUTLINED_FUNCTION_9_16(v281);
                                OUTLINED_FUNCTION_19_10(v281, &v359);
                                OUTLINED_FUNCTION_26_12(v361, v139 + v281);
                                OUTLINED_FUNCTION_65_4(v281);
                                if (v151)
                                {
                                  sub_1AC5C720C(v336, &qword_1EB56C070, &qword_1AC7A8770);
                                  OUTLINED_FUNCTION_65_4(v139 + v281);
                                  if (v151)
                                  {
                                    sub_1AC5C720C(v281, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_107:
                                    OUTLINED_FUNCTION_25_12();
                                    OUTLINED_FUNCTION_0_15();
                                    sub_1AC70A81C(v291, v292, MEMORY[0x1E69696B0]);
                                    OUTLINED_FUNCTION_6_11();
                                    v296 = OUTLINED_FUNCTION_33_9(v246, v293, v294, v295);
                                    OUTLINED_FUNCTION_5_15();
                                    v297();
                                    if (v296)
                                    {
                                      goto LABEL_108;
                                    }

LABEL_110:
                                    OUTLINED_FUNCTION_44_6(v348);
                                    OUTLINED_FUNCTION_32_12();
                                    v309 = v359;
                                    v310 = v323;
                                    v323(v356, v359);
                                    v311 = sub_1AC79FB18();
                                    __swift_storeEnumTagSinglePayload(v358, 1, 1, v311);
                                    OUTLINED_FUNCTION_28_12();
                                    v312 = v361;
                                    OUTLINED_FUNCTION_44_6(v361 + v313);
                                    v310(v312 + v353, v309);
                                    v308 = v312;
                                    goto LABEL_111;
                                  }
                                }

                                else
                                {
                                  v282 = v329;
                                  sub_1AC5D1E4C(v281, v329, &qword_1EB56C070, &qword_1AC7A8770);
                                  OUTLINED_FUNCTION_65_4(v139 + v281);
                                  if (!v283)
                                  {
                                    v284 = v349;
                                    v285 = OUTLINED_FUNCTION_12_12();
                                    v286(v285);
                                    OUTLINED_FUNCTION_1_18();
                                    sub_1AC70A81C(v287, v288, MEMORY[0x1E6969628]);
                                    v289 = sub_1AC79FED8();
                                    v290 = *(v284 + 8);
                                    v144 = v284 + 8;
                                    v290(v139, v135);
                                    OUTLINED_FUNCTION_29_15(v336);
                                    v290(v282, v135);
                                    v246 = v355;
                                    OUTLINED_FUNCTION_29_15(v281);
                                    if ((v289 & 1) == 0)
                                    {
                                      goto LABEL_110;
                                    }

                                    goto LABEL_107;
                                  }

                                  sub_1AC5C720C(v336, &qword_1EB56C070, &qword_1AC7A8770);
                                  (*(v349 + 8))(v282, v135);
                                }

                                sub_1AC5C720C(v281, &qword_1EB56D8F0, &qword_1AC7B09C8);
                                goto LABEL_110;
                              }
                            }

                            else
                            {
                              sub_1AC5D1E4C(&qword_1EB56C070, v330, &qword_1EB56C070, &qword_1AC7A8770);
                              OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v139);
                              if (!v264)
                              {
                                OUTLINED_FUNCTION_15_10();
                                v267 = OUTLINED_FUNCTION_12_12();
                                v268(v267);
                                OUTLINED_FUNCTION_1_18();
                                sub_1AC70A81C(v269, v270, MEMORY[0x1E6969628]);
                                v271 = sub_1AC79FED8();
                                v272 = OUTLINED_FUNCTION_14_12();
                                (v143)(v272);
                                v139 = &qword_1AC7A8770;
                                sub_1AC5C720C(v334, &qword_1EB56C070, &qword_1AC7A8770);
                                v273 = OUTLINED_FUNCTION_77();
                                (v143)(v273);
                                OUTLINED_FUNCTION_42_10();
                                if ((v271 & 1) == 0)
                                {
                                  goto LABEL_97;
                                }

                                goto LABEL_94;
                              }

                              sub_1AC5C720C(v334, &qword_1EB56C070, &qword_1AC7A8770);
                              v265 = OUTLINED_FUNCTION_77();
                              v266(v265);
                            }

                            sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56D8F0, &qword_1AC7B09C8);
                            goto LABEL_97;
                          }
                        }

                        else
                        {
                          v248 = v331;
                          sub_1AC5D1E4C(&qword_1EB56C070, v331, &qword_1EB56C070, &qword_1AC7A8770);
                          OUTLINED_FUNCTION_65_4(&qword_1EB56C070 + v139);
                          if (!v249)
                          {
                            OUTLINED_FUNCTION_15_10();
                            v250 = OUTLINED_FUNCTION_12_12();
                            v251(v250);
                            OUTLINED_FUNCTION_1_18();
                            sub_1AC70A81C(v252, v253, MEMORY[0x1E6969628]);
                            v246 = v248;
                            v254 = sub_1AC79FED8();
                            v255 = OUTLINED_FUNCTION_14_12();
                            (v143)(v255);
                            v139 = &qword_1AC7A8770;
                            sub_1AC5C720C(v247, &qword_1EB56C070, &qword_1AC7A8770);
                            (v143)(v246, v135);
                            OUTLINED_FUNCTION_42_10();
                            if ((v254 & 1) == 0)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_83;
                          }

                          sub_1AC5C720C(v247, &qword_1EB56C070, &qword_1AC7A8770);
                          (*(v349 + 8))(v248, v135);
                        }

                        sub_1AC5C720C(&qword_1EB56C070, &qword_1EB56D8F0, &qword_1AC7B09C8);
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38_10();
                      sub_1AC5D1E4C(v224, v225, v226, v227);
                      OUTLINED_FUNCTION_65_4(v139 + v146);
                      if (!v228)
                      {
                        OUTLINED_FUNCTION_15_10();
                        v231 = OUTLINED_FUNCTION_12_12();
                        v232(v231);
                        OUTLINED_FUNCTION_1_18();
                        v235 = sub_1AC70A81C(v233, v234, MEMORY[0x1E6969628]);
                        v236 = OUTLINED_FUNCTION_20_13(v235);
                        v237 = OUTLINED_FUNCTION_14_12();
                        (v143)(v237);
                        v139 = &qword_1AC7A8770;
                        OUTLINED_FUNCTION_29_15(v223);
                        v238 = OUTLINED_FUNCTION_77();
                        (v143)(v238);
                        v141 = v355;
                        OUTLINED_FUNCTION_29_15(v146);
                        if ((v236 & 1) == 0)
                        {
                          goto LABEL_73;
                        }

                        goto LABEL_71;
                      }

                      sub_1AC5C720C(v223, &qword_1EB56C070, &qword_1AC7A8770);
                      v229 = OUTLINED_FUNCTION_22_11();
                      v230(v229);
                    }

                    sub_1AC5C720C(v146, &qword_1EB56D8F0, &qword_1AC7B09C8);
                    goto LABEL_73;
                  }

                  goto LABEL_49;
                }

                sub_1AC5C720C(v144, &qword_1EB56C070, &qword_1AC7A8770);
                v188 = OUTLINED_FUNCTION_22_11();
                v189(v188);
              }

              sub_1AC5C720C(v143, &qword_1EB56D8F0, &qword_1AC7B09C8);
              goto LABEL_61;
            }

            sub_1AC5C720C(v145, &qword_1EB56C060, &unk_1AC7A8760);
            (*(v327 + 8))(v174, v346);
          }

          sub_1AC5C720C(v165, &qword_1EB56D8E8, &qword_1AC7B09C0);
          v144 = v343;
LABEL_25:
          v146 = v344;
          goto LABEL_39;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_10();
        sub_1AC5D1E4C(v147, v148, v149, v150);
        OUTLINED_FUNCTION_65_4(v139 + v140);
        v141 = v355;
        v144 = v343;
        v145 = v340;
        if (!v151)
        {
          OUTLINED_FUNCTION_15_10();
          v154 = OUTLINED_FUNCTION_12_12();
          v155(v154);
          OUTLINED_FUNCTION_1_18();
          v158 = sub_1AC70A81C(v156, v157, MEMORY[0x1E6969628]);
          LODWORD(v322) = OUTLINED_FUNCTION_20_13(v158);
          v159 = OUTLINED_FUNCTION_14_12();
          v134(v159);
          v139 = &qword_1AC7A8770;
          sub_1AC5C720C(v134, &qword_1EB56C070, &qword_1AC7A8770);
          (v134)(&qword_1EB56C070, v135);
          OUTLINED_FUNCTION_29_15(v140);
          v146 = v344;
          v142 = v345;
          v143 = v341;
          if ((v322 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        sub_1AC5C720C(v134, &qword_1EB56C070, &qword_1AC7A8770);
        v152 = OUTLINED_FUNCTION_22_11();
        v153(v152);
        v142 = v345;
        v143 = v341;
      }

      sub_1AC5C720C(v140, &qword_1EB56D8F0, &qword_1AC7B09C8);
      goto LABEL_25;
    }

    v123(v356, v117);
  }

  sub_1AC79FB08();
  sub_1AC79FAC8();
  v106(v99, v90);
  __swift_storeEnumTagSinglePayload(v351, 1, 1, v117);
  sub_1AC79FB08();
  sub_1AC79FAD8();
  v106(v96, v90);
  sub_1AC79FA98();
  v118 = v358;
  sub_1AC79F9E8();
  v112 = sub_1AC79FB18();
  v113 = v118;
LABEL_11:
  v114 = 0;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v113, v114, 1, v112);
LABEL_13:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC70A81C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t Locale.languageRegionIdentifierWithReplacement.getter(uint64_t a1)
{
  Locale.languageRegionIdentifier.getter();
  v1 = sub_1AC79FF58();
  v2 = SFReplacementLocaleCodeForLocaleIdentifier(v1);

  if (!v2)
  {
    return OUTLINED_FUNCTION_89();
  }

  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC70A8E0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() systemClientId];
  v5 = sub_1AC79FF68();
  v7 = v6;

  if (v5 == a1 && v7 == a2)
  {

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  OUTLINED_FUNCTION_89();
  v9 = sub_1AC7A0D38();

  if (v9)
  {
    goto LABEL_17;
  }

  if (a1 == 0xD000000000000015 && 0x80000001AC7B8C10 == a2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_89();
  if (sub_1AC7A0D38())
  {
    goto LABEL_17;
  }

  if (a1 == 0xD000000000000013 && 0x80000001AC7B8C30 == a2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_89();
  v12 = sub_1AC7A0D38() ^ 1;
  return v12 & 1;
}

uint64_t sub_1AC70A9F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AC7A6D00;
  v3 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;

  return sub_1AC79FF98();
}

void sub_1AC70AA78(double a1)
{
  v1 = sub_1AC70B4A0() * a1;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1AC70AB64()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v27 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_21:
    OUTLINED_FUNCTION_105();
    return;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1AC6313FC(0, v8, 0);
  v10 = 0;
  v11 = v29;
  v25 = v8;
  v26 = v1 + 32;
  v24 = v3;
  v23 = v7;
  while (1)
  {
    v12 = *(v26 + 8 * v10);
    v13 = v12 >> 62 ? sub_1AC7A08E8() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v11;
    if (v13)
    {
      break;
    }

    v15 = v9;
LABEL_16:
    MEMORY[0x1B26E8770](v15);

    v11 = v28;
    v22 = *(v28 + 16);
    v21 = *(v28 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1AC6313FC(v21 > 1, v22 + 1, 1);
      v11 = v28;
    }

    ++v10;
    *(v11 + 16) = v22 + 1;
    (*(v3 + 32))(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v7, v27);
    v9 = MEMORY[0x1E69E7CC0];
    if (v10 == v25)
    {
      goto LABEL_21;
    }
  }

  sub_1AC631164(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v9;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B26E95B0](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 integerValue];

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1AC631164(v19 > 1, v20 + 1, 1);
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      *(v15 + 8 * v20 + 32) = v18;
    }

    while (v13 != v14);
    v7 = v23;
    v3 = v24;
    goto LABEL_16;
  }

  __break(1u);
}

void Locale.languageRegionIdentifier.getter()
{
  OUTLINED_FUNCTION_104();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v0);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v27 - v2;
  v4 = sub_1AC79FAF8();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v13);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v17 = *(v6 + 8);
  v17(v12, v4);
  v18 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_96(v16, 1, v18);
  if (v23)
  {
    sub_1AC5C720C(v16, &qword_1EB56C070, &qword_1AC7A8770);
  }

  else
  {
    v19 = sub_1AC79F988();
    v21 = v20;
    (*(*(v18 - 8) + 8))(v16, v18);
    sub_1AC79FB08();
    sub_1AC79FAD8();
    v17(v10, v4);
    v22 = sub_1AC79FA48();
    OUTLINED_FUNCTION_96(v3, 1, v22);
    if (v23)
    {
      sub_1AC5C720C(v3, &qword_1EB56C060, &unk_1AC7A8760);
    }

    else
    {
      v24 = sub_1AC79F988();
      v26 = v25;
      (*(*(v22 - 8) + 8))(v3, v22);
      v27[0] = v19;
      v27[1] = v21;
      MEMORY[0x1B26E8C40](45, 0xE100000000000000);
      MEMORY[0x1B26E8C40](v24, v26);
    }
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC70B140()
{
  sub_1AC70B0D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC70B1C8(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC70B1C0(v5, a1, a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70B23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AC7A0E78();
  sub_1AC70B1C0(v6, a2, v4);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70B29C(uint64_t a1)
{
  sub_1AC70B2F4(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

char *sub_1AC70B2F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v15[1] = *(v3 + 80);
  swift_getFunctionTypeMetadata();
  v4 = sub_1AC7A02C8();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = *(v3 + 104);
  (*(v6 + 16))(v15 - v8, &v2[v10], v4);
  sub_1AC7A02B8();
  v11 = *(v6 + 8);
  v11(v9, v4);
  v12 = *(*v2 + 96);
  sub_1AC7A02F8();
  OUTLINED_FUNCTION_80();
  (*(v13 + 8))(&v2[v12]);
  v11(&v2[v10], v4);
  return v2;
}

double sub_1AC70B4A0()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  mach_timebase_info(v2);
  if (v2[0].numer)
  {
    return OUTLINED_FUNCTION_37_10(v2[0].numer, v0, v2[0].numer, v2[0].denom) * 1000000000.0;
  }

  else
  {
    return 0.0;
  }
}

Swift::Double __swiftcall hostTimeToSeconds(hostTime:)(Swift::UInt64 hostTime)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  mach_timebase_info(v5);
  if (v5[0].numer)
  {
    v3 = OUTLINED_FUNCTION_37_10(v5[0].numer, v2, v5[0].numer, v5[0].denom) * 1000000000.0;
  }

  else
  {
    v3 = 0.0;
  }

  return hostTime / v3;
}

void sub_1AC70B59C()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v2 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      v6 = sub_1AC79FF58();

      v7 = [v3 localeIdentifiersForGeneralASRLanguageCode_];

      v8 = sub_1AC7A0158();
      v9 = *(v8 + 16);
      v10 = *(v5 + 16);
      if (__OFADD__(v10, v9))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v5 + 24) >> 1)
      {
        sub_1AC60DBDC();
        v5 = v11;
      }

      if (*(v8 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v9);
          v14 = v12 + v9;
          if (v13)
          {
            goto LABEL_18;
          }

          *(v5 + 16) = v14;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_16;
        }
      }

      v4 += 16;
      if (!--v1)
      {
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
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC70B720(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC70B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getFunctionTypeMetadata();
  result = sub_1AC7A02F8();
  if (v5 <= 0x3F)
  {
    result = sub_1AC7A02C8();
    if (v6 <= 0x3F)
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

uint64_t sub_1AC70B96C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AC70B9FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t sub_1AC70BC20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1AC70BD5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1)
{

  return sub_1AC79FED8();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return MEMORY[0x1EEDC51B0](1953390920, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1, uint64_t a2)
{

  return sub_1AC5D1E4C(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  v4 = *(v2 - 216);

  return sub_1AC5C720C(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return MEMORY[0x1EEDC51B0](1936613704, 0xE400000000000000);
}

void sub_1AC70C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v3 = sub_1AC79FDE8();
  __swift_project_value_buffer(v3, qword_1ED9386C8);
  if ((sub_1AC7A0708() & 1) == 0)
  {
    v4 = sub_1AC79FDC8();
    v5 = sub_1AC7A05F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1AC5CFE74(0x2064696C61766E49, 0xEE00656D69544D43, &v10);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v8, v9, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

void sub_1AC70C19C(int a1)
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  if (a1 <= 0)
  {
    v3 = sub_1AC79FDC8();
    v4 = sub_1AC7A05F8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1AC5CFE74(0xD000000000000013, 0x80000001AC7B8C50, &v9);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v7, v8, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

uint64_t sub_1AC70C2B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  v53 = sub_1AC79FB18();
  v6 = *(v53 - 8);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v49 = &v43 - v9;
    v43 = v1;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1AC63110C(0, v10, 0);
    v58 = v59;
    result = sub_1AC6C2CA0();
    v14 = result;
    v15 = 0;
    v16 = a1 + 56;
    v50 = v6;
    v51 = (v6 + 8);
    v44 = a1 + 64;
    v45 = v10;
    v54 = v5;
    v47 = a1 + 56;
    v48 = (v6 + 32);
    v46 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(a1 + 32))
      {
        v17 = v14 >> 6;
        if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_28;
        }

        v57 = v13;
        v55 = v15;
        v56 = v12;
        swift_bridgeObjectRetain_n();
        v18 = v52;
        v19 = sub_1AC79F968();
        Locale.languageRegionLocale.getter(v19, v20, v21, v22, v23, v24, v25, v26, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        v27 = v53;
        (*v51)(v18, v53);
        result = __swift_getEnumTagSinglePayload(v5, 1, v27);
        if (result == 1)
        {
          goto LABEL_33;
        }

        v28 = v49;
        v29 = *v48;
        (*v48)(v49, v5, v27);

        v30 = v58;
        v59 = v58;
        v32 = *(v58 + 16);
        v31 = *(v58 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1AC63110C(v31 > 1, v32 + 1, 1);
          v27 = v53;
          v30 = v59;
        }

        *(v30 + 16) = v32 + 1;
        v33 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v58 = v30;
        result = (v29)(v30 + v33 + *(v50 + 72) * v32, v28, v27);
        if (v57)
        {
          goto LABEL_32;
        }

        a1 = v46;
        v16 = v47;
        v34 = 1 << *(v46 + 32);
        v5 = v54;
        if (v14 >= v34)
        {
          goto LABEL_29;
        }

        v35 = *(v47 + 8 * v17);
        if ((v35 & (1 << v14)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v46 + 36) != v56)
        {
          goto LABEL_31;
        }

        v36 = v35 & (-2 << (v14 & 0x3F));
        if (v36)
        {
          v34 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v37 = v45;
        }

        else
        {
          v38 = v17 << 6;
          v39 = v17 + 1;
          v37 = v45;
          v40 = (v44 + 8 * v17);
          while (v39 < (v34 + 63) >> 6)
          {
            v42 = *v40++;
            v41 = v42;
            v38 += 64;
            ++v39;
            if (v42)
            {
              result = sub_1AC637E98(v14, v56, 0);
              v34 = __clz(__rbit64(v41)) + v38;
              goto LABEL_20;
            }
          }

          result = sub_1AC637E98(v14, v56, 0);
LABEL_20:
          v5 = v54;
        }

        v15 = v55 + 1;
        if (v55 + 1 == v37)
        {
          return v58;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v14 = v34;
        if (v34 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC70C6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_1AC70C6FC(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_1AC7A0158();
  return sub_1AC70C6BC(v2, v3);
}

uint64_t static AssetsInventory.shared.getter(uint64_t a1)
{
  type metadata accessor for AssetsInventory();

  return swift_initStaticObject();
}

uint64_t sub_1AC70C79C()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  *(v0 + 288) = OUTLINED_FUNCTION_126();
  v3 = sub_1AC79FB18();
  *(v0 + 296) = v3;
  OUTLINED_FUNCTION_22(v3);
  *(v0 + 304) = v4;
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = *v2;
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC70C88C()
{
  if (*(v1 + 328))
  {
    if (*(v1 + 328) == 1)
    {
      v2 = v1 + 80;
      objc_opt_self();
      OUTLINED_FUNCTION_41_9();
      *(v1 + 80) = v3;
      *(v1 + 120) = v1 + 280;
      *(v1 + 88) = sub_1AC70CC98;
      v4 = swift_continuation_init();
      *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
      *(v1 + 208) = MEMORY[0x1E69E9820];
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_1AC70C6FC;
      *(v1 + 232) = &block_descriptor_3;
      *(v1 + 240) = v4;
      [v0 supportedLanguagesForTaskHint:0 completion:v1 + 208];
    }

    else
    {
      v2 = v1 + 16;
      objc_opt_self();
      OUTLINED_FUNCTION_41_9();
      *(v1 + 16) = v33;
      *(v1 + 56) = v1 + 272;
      *(v1 + 24) = sub_1AC70CF1C;
      v34 = swift_continuation_init();
      *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D180, &qword_1AC7ADD88);
      *(v1 + 144) = MEMORY[0x1E69E9820];
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_1AC70C6FC;
      *(v1 + 168) = &block_descriptor_11;
      *(v1 + 176) = v34;
      [v0 supportedLanguagesForTaskHint:1009 completion:v1 + 144];
    }

    EnumTagSinglePayload = v2;

    return MEMORY[0x1EEE6DEC8](EnumTagSinglePayload);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v6)
  {
    v42 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    v7 = *(v1 + 304);
    sub_1AC63110C(0, v6, 0);
    v9 = 0;
    v10 = v43;
    v39 = v6;
    v40 = v7 + 8;
    v11 = v5 + 40;
    v38 = v7;
    v41 = (v7 + 32);
    while (v9 < *(v5 + 16))
    {
      v12 = v42;
      v14 = *(v42 + 288);
      v13 = *(v42 + 296);
      swift_bridgeObjectRetain_n();
      v15 = sub_1AC79F968();
      Locale.languageRegionLocale.getter(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      v23 = OUTLINED_FUNCTION_26_13();
      v24(v23, v13);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v13);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_21;
      }

      v25 = v12[40];
      v27 = v12[36];
      v26 = v12[37];

      v28 = *v41;
      (*v41)(v25, v27, v26);
      v43 = v10;
      v30 = *(v10 + 16);
      v29 = *(v10 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1AC63110C(v29 > 1, v30 + 1, 1);
      }

      ++v9;
      *(v10 + 16) = v30 + 1;
      OUTLINED_FUNCTION_89_0();
      EnumTagSinglePayload = v28(v10 + v31 + *(v32 + 72) * v30);
      v11 += 16;
      if (v39 == v9)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](EnumTagSinglePayload);
  }

  v10 = MEMORY[0x1E69E7CC0];

LABEL_17:

  OUTLINED_FUNCTION_82();

  return v35(v10);
}

uint64_t sub_1AC70CC98()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70CD68, 0, 0);
}

uint64_t sub_1AC70CF1C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70CFEC, 0, 0);
}

uint64_t sub_1AC70D1D0()
{
  OUTLINED_FUNCTION_45();
  if (!*(v1 + 216))
  {
    sub_1AC70C2B4(MEMORY[0x1E69E7CD0]);
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X2, X16 }
  }

  v2 = v1 + 208;
  if (*(v1 + 216) == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_41_9();
    *(v1 + 80) = v3;
    *(v1 + 120) = v2;
    *(v1 + 88) = sub_1AC70D3C4;
    swift_continuation_init();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D918, &unk_1AC7B0BA0);
    OUTLINED_FUNCTION_12_13(v4);
    *(v1 + 152) = 1107296256;
    OUTLINED_FUNCTION_13_9();
    [v0 installedLanguagesForTaskHint:0 completion:v1 + 144];
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_41_9();
    *(v1 + 16) = v7;
    *(v1 + 56) = v2;
    *(v1 + 24) = sub_1AC70D504;
    swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D918, &unk_1AC7B0BA0);
    OUTLINED_FUNCTION_12_13(v8);
    *(v1 + 152) = 1107296256;
    OUTLINED_FUNCTION_13_9();
    [v0 installedLanguagesForTaskHint:1009 completion:v1 + 144];
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1AC70D3C4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70D494, 0, 0);
}

uint64_t sub_1AC70D494()
{
  OUTLINED_FUNCTION_72();
  sub_1AC70C2B4(*(v1 + 208));
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_82();

  return v2(v0);
}

uint64_t sub_1AC70D504()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70D5D4, 0, 0);
}

uint64_t sub_1AC70D5D4()
{
  OUTLINED_FUNCTION_72();
  sub_1AC6054C8(*(v1 + 208));
  sub_1AC70B59C();
  OUTLINED_FUNCTION_47_7();
  v2 = sub_1AC608FF4(v0);
  sub_1AC70C2B4(v2);
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_82();

  return v3(v0);
}

uint64_t sub_1AC70D65C(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_1AC7A0448();
  return sub_1AC70C6BC(v2, v3);
}

uint64_t sub_1AC70D6B0()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 1432) = v0;
  v4 = sub_1AC79FB18();
  *(v1 + 1480) = v4;
  OUTLINED_FUNCTION_22(v4);
  *(v1 + 1488) = v5;
  *(v1 + 1496) = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200);
  *(v1 + 1504) = v6;
  OUTLINED_FUNCTION_22(v6);
  *(v1 + 1512) = v7;
  *(v1 + 1520) = OUTLINED_FUNCTION_126();
  *(v1 + 1560) = *v3;
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC70D7B8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1432);
  v3 = swift_task_alloc();
  *(v0 + 1528) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D920, &qword_1AC7B0BC0);
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  *(v0 + 1536) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1336, sub_1AC70D8C4, v0 + 1296);
}

uint64_t sub_1AC70D8C4()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 1544) = *(v0 + 1336);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1AC70D930, v0 + 1344);
}

uint64_t sub_1AC70D944()
{
  v1 = v0[193];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[173];
    v26 = v0[188];
    v4 = v0[186];
    v28 = MEMORY[0x1E69E7CC0];

    sub_1AC6317A0(0, v2, 0);
    v5 = 0;
    v6 = v28;
    v4 += 16;
    OUTLINED_FUNCTION_89_0();
    v24 = v1 + v7;
    v25 = v8;
    v9 = *(v4 + 56);
    v27 = v3;
    v23 = v3 + v7;
    v22 = (v4 + 16);
    do
    {
      v25(v0[187], v24 + v5 * v9, v0[185]);
      v10 = *(v27 + 16) + 1;
      v11 = v23;
      do
      {
        if (!--v10)
        {
          break;
        }

        OUTLINED_FUNCTION_17_10();
        sub_1AC70FE1C(&qword_1EB56B460, v12);
        v11 += v9;
      }

      while ((sub_1AC79FED8() & 1) == 0);
      v13 = v0[190];
      v14 = *(v26 + 48);
      (*v22)(v13, v0[187], v0[185]);
      *(v13 + v14) = v10 != 0;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        v20 = OUTLINED_FUNCTION_9(v15);
        sub_1AC6317A0(v20, v16 + 1, 1);
      }

      ++v5;
      *(v28 + 16) = v16 + 1;
      OUTLINED_FUNCTION_89_0();
      sub_1AC70FD64(v19, v28 + v17 + *(v18 + 72) * v16);
    }

    while (v5 != v2);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v0[194] = v6;

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 173, sub_1AC70DB8C, v0 + 174);
}

uint64_t sub_1AC70DBA0()
{
  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1AC70DC08, v0 + 1440);
}

uint64_t sub_1AC70DC1C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 1552);

  return v1(v2);
}

uint64_t sub_1AC70DC90(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 40) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC70DD2C;

  return sub_1AC70C79C();
}

uint64_t sub_1AC70DD2C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC70DE18(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 40) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC70DEB4;

  return sub_1AC70D1B4((v3 + 40));
}

uint64_t sub_1AC70DEB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC70DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v19 = 0;
  OUTLINED_FUNCTION_38_11();
LABEL_2:
  v48 = v22;
  *(v16 + 21) = v22;
  v23 = (v21 + 16 * v19);
  while (v18 != v19)
  {
    if (v19 >= v18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v20);
    }

    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v23 += 2;
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v25, ObjectType, &protocol descriptor for InternalSpeechModule);
    v28 = v27;
    swift_getObjectType();
    OUTLINED_FUNCTION_44_7();
    v29 = v16(v17, v28);
    v20 = swift_unknownObjectRelease();
    ++v19;
    if (v29)
    {
      MEMORY[0x1B26E8CF0](v20);
      OUTLINED_FUNCTION_483();
      if (v31)
      {
        OUTLINED_FUNCTION_9(v30);
        sub_1AC7A0178();
      }

      v20 = sub_1AC7A0198();
      v16 = a12;
      v22 = a13;
      v19 = v24;
      v21 = a10;
      goto LABEL_2;
    }
  }

  v32 = sub_1AC61C24C();
  *(a12 + 22) = v32;
  if (v32)
  {
    v20 = objc_opt_self();
    *(a12 + 23) = v20;
    v33 = *(a12 + 21);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1B26E95B0](0);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v34 = *(v33 + 32);
    }

    *(a12 + 24) = v34;
    *(a12 + 25) = 1;
    *(a12 + 26) = sub_1AC79FF58();
    *(a12 + 2) = a12;
    *(a12 + 7) = a12 + 144;
    *(a12 + 3) = sub_1AC70E278;
    v44 = swift_continuation_init();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D928, &qword_1AC7B0BE0);
    v46 = OUTLINED_FUNCTION_14_13(v45);
    *(a12 + 11) = 1107296256;
    *(a12 + 12) = sub_1AC70E53C;
    *(a12 + 13) = &block_descriptor_18;
    *(a12 + 14) = v44;
    OUTLINED_FUNCTION_46_9(v46, sel_pathToAssetWithConfig_clientIdentifier_completion_);
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DEC8](v20);
  }

  OUTLINED_FUNCTION_54();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v48, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC70E278()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_31_10();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AC70E348, 0, 0);
}

uint64_t sub_1AC70E348()
{
  v1 = *(v0 + 208);
  if (!*(v0 + 152))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  if (v2 != v3)
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 168);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](*(v0 + 200));
    }

    else
    {
      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 192) = v4;
    *(v0 + 200) = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      *(v0 + 208) = sub_1AC79FF58();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1AC70E278;
      v9 = swift_continuation_init();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D928, &qword_1AC7B0BE0);
      v11 = OUTLINED_FUNCTION_80_0(v10);
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1AC70E53C;
      *(v0 + 104) = &block_descriptor_18;
      *(v0 + 112) = v9;
      OUTLINED_FUNCTION_24_15(v11, sel_pathToAssetWithConfig_clientIdentifier_completion_);
      v4 = (v0 + 16);

      return MEMORY[0x1EEE6DEC8](v4);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v4);
  }

LABEL_5:
  OUTLINED_FUNCTION_82();

  return v5();
}

uint64_t sub_1AC70E53C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1AC79FF68();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1AC70C6DC(v3, v4, v6);
}

uint64_t sub_1AC70E5A4()
{
  OUTLINED_FUNCTION_85();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v0[7] = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FAF8();
  v0[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[9] = v5;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v0[12] = OUTLINED_FUNCTION_126();
  v6 = sub_1AC79FB18();
  v0[13] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_126();
  v0[16] = type metadata accessor for SpeechTranscriber(0);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1AC70E754;

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC70E754()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC70E840()
{
  v79 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[9];
    v77 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v2, 0);
    v73 = *(v4 + 16);
    v75 = v77;
    OUTLINED_FUNCTION_89_0();
    v7 = v1 + v6;
    v8 = (v5 + 8);
    v70 = *(v4 + 72);
    v72 = (v4 + 8);
    do
    {
      v9 = v0[11];
      v10 = v0[8];
      v73(v0[15], v7, v0[13]);
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v11 = *v8;
      (*v8)(v9, v10);
      v12 = sub_1AC79F9C8();
      if (OUTLINED_FUNCTION_45_9(v12) == 1)
      {
        sub_1AC5C7264(v0[12], &qword_1EB56C070, &qword_1AC7A8770);
        v13 = 0;
        v14 = 0xE000000000000000;
        v15 = v75;
      }

      else
      {
        v16 = v0[12];
        v17 = v0[10];
        v65 = v0[8];
        v67 = sub_1AC79F988();
        v68 = v18;
        (*(*(v10 - 8) + 8))(v16, v10);
        sub_1AC79FB08();
        sub_1AC79FAD8();
        v11(v17, v65);
        v19 = sub_1AC79FA48();
        v20 = OUTLINED_FUNCTION_45_9(v19);
        v21 = v0[7];
        if (v20 == 1)
        {
          sub_1AC5C7264(v0[7], &qword_1EB56C060, &unk_1AC7A8760);
          v15 = v75;
          v13 = v67;
          v14 = v68;
        }

        else
        {
          v22 = sub_1AC79F988();
          v23 = v8;
          v25 = v24;
          (*(*(v10 - 8) + 8))(v21, v10);
          v78[0] = v67;
          v78[1] = v68;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v22, v25);
          v8 = v23;

          v13 = v67;
          v14 = v68;
          v15 = v75;
        }
      }

      (*v72)(v0[15], v0[13]);
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_9(v26);
        sub_1AC6310CC(v29, v27 + 1, 1);
      }

      *(v15 + 16) = v27 + 1;
      v75 = v15;
      v28 = v15 + 16 * v27;
      *(v28 + 32) = v13;
      *(v28 + 40) = v14;
      v7 += v70;
      --v2;
    }

    while (v2);

    v3 = MEMORY[0x1E69E7CC0];
    v31 = v75;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = 0;
  v33 = v0[4];
  v34 = *(v33 + 16);
  v35 = v33 + 32;
  v76 = v31;
  v71 = v34;
  v66 = v33 + 32;
LABEL_14:
  v36 = (v35 + 16 * v32);
  for (i = v32; v34 != i; ++i)
  {
    if (i >= v34)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v32 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    v74 = v36;
    v38 = *v36;
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      Locale.languageRegionIdentifier.getter();
      v0[2] = v39;
      v0[3] = v40;
      v41 = swift_task_alloc();
      *(v41 + 16) = v0 + 2;
      v42 = sub_1AC6F488C(sub_1AC637CD4, v41, v31);

      if (!v42)
      {
        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v50 = sub_1AC79FDE8();
        __swift_project_value_buffer(v50, qword_1ED9386C8);
        swift_unknownObjectRetain();
        v51 = sub_1AC79FDC8();
        v52 = sub_1AC7A05F8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v78[0] = v69;
          *v53 = 136315138;
          sub_1AC70FE1C(&qword_1EB56B458, MEMORY[0x1E6969798]);
          v54 = sub_1AC7A0CC8();
          v56 = sub_1AC5CFE74(v54, v55, v78);

          *(v53 + 4) = v56;
          _os_log_impl(&dword_1AC5BC000, v51, v52, "SpeechTranscriber cannot be initialized with an unsupported locale: %s. Please consult SpeechTranscriber.supportedLocales.", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        result = swift_unknownObjectRelease();
        v31 = v76;
        v34 = v71;
        goto LABEL_29;
      }

      v43 = sub_1AC7440D4();
    }

    else
    {
      ObjectType = swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v38, ObjectType, &protocol descriptor for InternalSpeechModule);
      v46 = v45;
      v47 = swift_getObjectType();
      v48 = *(v46 + 32);
      swift_unknownObjectRetain();
      v43 = v48(v47, v46);
    }

    v49 = v43;
    result = swift_unknownObjectRelease();
    v34 = v71;
    if (v49)
    {
      MEMORY[0x1B26E8CF0](result);
      v31 = v76;
      OUTLINED_FUNCTION_483();
      if (v58)
      {
        OUTLINED_FUNCTION_9(v57);
        sub_1AC7A0178();
      }

      result = sub_1AC7A0198();
      v64 = v3;
      v35 = v66;
      goto LABEL_14;
    }

    v31 = v76;
LABEL_29:
    v36 = v74 + 2;
  }

  if (sub_1AC61C24C())
  {
    v59 = v0[5];
    v60 = v0[6];
    objc_allocWithZone(type metadata accessor for AssetsInstallationRequest());

    sub_1AC6EF678(v64, v59, v60);
    v62 = v61;
  }

  else
  {

    v62 = 0;
  }

  OUTLINED_FUNCTION_82();

  return v63(v62);
}

uint64_t sub_1AC70EF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70EF40);
}

uint64_t sub_1AC70EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v19 = 0;
  OUTLINED_FUNCTION_38_11();
LABEL_2:
  v49 = v22;
  *(v16 + 21) = v22;
  v23 = (v21 + 16 * v19);
  while (v18 != v19)
  {
    if (v19 >= v18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v20);
    }

    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v23 += 2;
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v25, ObjectType, &protocol descriptor for InternalSpeechModule);
    v28 = v27;
    swift_getObjectType();
    OUTLINED_FUNCTION_44_7();
    v29 = v16(v17, v28);
    v20 = swift_unknownObjectRelease();
    ++v19;
    if (v29)
    {
      MEMORY[0x1B26E8CF0](v20);
      OUTLINED_FUNCTION_483();
      if (v31)
      {
        OUTLINED_FUNCTION_9(v30);
        sub_1AC7A0178();
      }

      v20 = sub_1AC7A0198();
      v16 = a12;
      v22 = a13;
      v19 = v24;
      v21 = a10;
      goto LABEL_2;
    }
  }

  v32 = sub_1AC61C24C();
  *(a12 + 22) = v32;
  if (v32)
  {
    v33 = v32;
    v20 = objc_opt_self();
    *(a12 + 23) = v20;
    if (v33 < 1)
    {
      goto LABEL_23;
    }

    *(a12 + 24) = 0;
    v34 = *(a12 + 21);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1B26E95B0](0);
    }

    else
    {
      v35 = *(v34 + 32);
    }

    *(a12 + 25) = v35;
    *(a12 + 26) = sub_1AC79FF58();
    *(a12 + 2) = a12;
    *(a12 + 3) = sub_1AC70F1D0;
    v45 = swift_continuation_init();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    v47 = OUTLINED_FUNCTION_14_13(v46);
    *(a12 + 11) = 1107296256;
    *(a12 + 12) = sub_1AC6BB2BC;
    *(a12 + 13) = &block_descriptor_22_0;
    *(a12 + 14) = v45;
    OUTLINED_FUNCTION_46_9(v47, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DEC8](v20);
  }

  OUTLINED_FUNCTION_54();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, v49, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC70F1D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 216) = v4;
  if (v4)
  {
    v5 = sub_1AC70F430;
  }

  else
  {
    v5 = sub_1AC70F2D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AC70F2D4()
{
  v2 = *(v1 + 208);

  v3 = OUTLINED_FUNCTION_42_11();
  if (v4)
  {

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    *(v1 + 192) = v3;
    v7 = *(v1 + 168);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      v8 = *(v7 + 8 * v3 + 32);
    }

    v9 = OUTLINED_FUNCTION_23_14(v8);
    OUTLINED_FUNCTION_43_5(v9);
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_1AC70F1D0;
    swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    OUTLINED_FUNCTION_80_0(v10);
    *(v1 + 88) = 1107296256;
    OUTLINED_FUNCTION_11_17(&block_descriptor_22_0);
    OUTLINED_FUNCTION_24_15(v11, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

    return MEMORY[0x1EEE6DEC8](v0);
  }
}

uint64_t sub_1AC70F430(uint64_t a1)
{
  v31 = v1;
  v2 = v1[26];
  swift_willThrow();

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v3 = v1[27];
  v4 = v1[25];
  v5 = sub_1AC79FDE8();
  __swift_project_value_buffer(v5, qword_1ED9386C8);

  v6 = v4;
  v7 = v3;
  v8 = sub_1AC79FDC8();
  v9 = sub_1AC7A05F8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[27];
  v12 = v1[25];
  if (v10)
  {
    v14 = v1[19];
    v13 = v1[20];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_1AC5CFE74(v14, v13, &v30);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    *(v15 + 22) = 2112;
    v18 = v12;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    v16[1] = v20;
    _os_log_impl(&dword_1AC5BC000, v8, v9, "Unable to unsubscribe %s from %@: %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C630, &qword_1AC7A7E40);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  v21 = OUTLINED_FUNCTION_42_11();
  if (v22)
  {

    v23 = v1[1];

    return v23();
  }

  else
  {
    v1[24] = v21;
    v25 = v1[21];
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      v26 = *(v25 + 8 * v21 + 32);
    }

    v27 = OUTLINED_FUNCTION_23_14(v26);
    OUTLINED_FUNCTION_43_5(v27);
    v1[2] = v1;
    v1[3] = sub_1AC70F1D0;
    swift_continuation_init();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
    OUTLINED_FUNCTION_80_0(v28);
    v1[11] = 1107296256;
    OUTLINED_FUNCTION_11_17(&block_descriptor_22_0);
    OUTLINED_FUNCTION_24_15(v29, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

    return MEMORY[0x1EEE6DEC8](v11);
  }
}

uint64_t AssetsInventory.AssetTask.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t AssetsInventory.AssetStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC70F894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70F8AC);
}

uint64_t sub_1AC70F8AC()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC6089EC(v0[2]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC67FA38;

  return sub_1AC70DFC4(v1);
}

uint64_t sub_1AC70F948(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_16(sub_1AC70F960);
}

uint64_t sub_1AC70F960()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC6089EC(v0[2]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC710AE8;

  return sub_1AC70DFC4(v1);
}

uint64_t sub_1AC70F9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_16(sub_1AC70FA18);
}

uint64_t sub_1AC70FA18()
{
  OUTLINED_FUNCTION_85();
  v0[6] = sub_1AC6089EC(v0[2]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AC70FAB8;

  return sub_1AC70E5A4();
}

uint64_t sub_1AC70FAB8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();

  return v5(v2);
}

uint64_t sub_1AC70FBD4()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_16(v1);

  return sub_1AC70DC90(v3, v4, v5);
}

uint64_t sub_1AC70FC6C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_16(v1);

  return sub_1AC70DE18(v3, v4, v5);
}

uint64_t sub_1AC70FD04()
{
  OUTLINED_FUNCTION_40_9();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_17_10();
  sub_1AC70FE1C(v0, v1);
  return sub_1AC79FED8() & 1;
}

uint64_t sub_1AC70FD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC70FDD4()
{
  OUTLINED_FUNCTION_40_9();
  sub_1AC710A7C();
  return sub_1AC7A0758() & 1;
}

uint64_t sub_1AC70FE1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AC79FB18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC70FE64()
{
  result = qword_1EB56D930;
  if (!qword_1EB56D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D938, &qword_1AC7B0C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D930);
  }

  return result;
}

unint64_t sub_1AC70FECC()
{
  result = qword_1EB56D940;
  if (!qword_1EB56D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D940);
  }

  return result;
}

unint64_t sub_1AC70FF24()
{
  result = qword_1EB56D948;
  if (!qword_1EB56D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D948);
  }

  return result;
}

uint64_t dispatch thunk of AssetsInventory.supportedLocales(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_14(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetsInventory.installedLocales(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_14(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetsInventory.supportedLocalesStatus(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_14(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetsInventory.hasAssets(for:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_14(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_14(v1);

  return v4(v3);
}

void dispatch thunk of AssetsInventory.assetsInstallationRequest(supporting:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_20(v1);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_20(v1);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

void dispatch thunk of AssetsInventory.releaseAssets(supporting:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_20(v1);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

void dispatch thunk of AssetsInventory.hasAssets(for:clientIdentifier:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_5_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_20(v1);
  OUTLINED_FUNCTION_155();

  __asm { BRAA            X3, X16 }
}

_BYTE *storeEnumTagSinglePayload for AssetsInventory.AssetTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetsInventory.AssetStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC710A7C()
{
  result = qword_1EB56AB10;
  if (!qword_1EB56AB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56AB10);
  }

  return result;
}

void OUTLINED_FUNCTION_34_10()
{

  sub_1AC63110C(0, v0, 0);
}

id OUTLINED_FUNCTION_46_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_47_7()
{
}

uint64_t sub_1AC710B9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDCC(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARTranscriptionEvaluator();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC710C24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AC79F958();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 == 0xD000000000000028 && 0x80000001AC7B8D00 == a2;
  if (v16 || (sub_1AC7A0D38() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD000000000000071;
  v18 = a1 == 0xD000000000000071 && 0x80000001AC7B8D30 == a2;
  if (v18 || (v19 = sub_1AC7A0D38(), result = 0, (v19 & 1) != 0))
  {
    v20 = *(a4 + 16);
    if (v20)
    {
      result = sub_1AC5D2398(a4 + 32, &v45);
      if (!v46)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v21 = OUTLINED_FUNCTION_5_17();
      sub_1AC5C3968(v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA88, &unk_1AC7A7B40);
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D968, &unk_1AC7B1088);
      v23 = sub_1AC7A0148();

      if (v20 != 1)
      {
        v40 = v23;
        result = sub_1AC5D2398(a4 + 64, &v45);
        if (!v46)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v24 = OUTLINED_FUNCTION_5_17();
        sub_1AC5C3968(v24, v25);
        swift_dynamicCast();
        v26 = sub_1AC79FF58();

        if (v20 >= 3)
        {
          v39 = a6;
          result = sub_1AC5D2398(a4 + 96, &v45);
          if (!v46)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v27 = OUTLINED_FUNCTION_5_17();
          sub_1AC5C3968(v27, v28);
          swift_dynamicCast();
          v29 = sub_1AC79FF58();

          if (v20 != 3)
          {
            result = sub_1AC5D2398(a4 + 128, &v45);
            if (!v46)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v30 = OUTLINED_FUNCTION_5_17();
            sub_1AC5C3968(v30, v31);
            swift_dynamicCast();
            v32 = sub_1AC79F918();
            result = (*(v13 + 8))(v15, v12);
            if (v20 >= 5)
            {
              sub_1AC5D2398(a4 + 160, aBlock);
              if (v42)
              {
                OUTLINED_FUNCTION_5_17();
                result = swift_dynamicCast();
                if (result)
                {
                  v33 = sub_1AC79FF58();

                  goto LABEL_28;
                }
              }

              else
              {
                result = sub_1AC641B24(aBlock);
              }

              v33 = 0;
LABEL_28:
              if (a5)
              {
                v34 = swift_allocObject();
                v35 = v39;
                *(v34 + 16) = a5;
                *(v34 + 24) = v35;
                v43 = sub_1AC5D2608;
                v44 = v34;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1AC5D25B4;
                v42 = &block_descriptor_12;
                v36 = _Block_copy(aBlock);

                v37 = a3;
                v38 = v40;
                [v37 evaluateMessagesContext:v40 recognizedText:v26 correctedText:v29 asrID:v32 speechProfilePath:v33 reply:v36];
                _Block_release(v36);

                return 1;
              }

LABEL_39:
              __break(1u);
              return result;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1AC7110B0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC711158()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = v0[3];
  if (is_remote)
  {
    v3 = sub_1AC5C6544();
    v0[7] = v3;
    v0[2] = v3;
    nullsub_1();
    sub_1AC79FC88();
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1AC7112F8;
    v5 = v0[6];
    v6 = v0[3];

    return sub_1AC5E3918(v6, v5, (v0 + 2));
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC6B7174, v2, 0);
  }
}

uint64_t sub_1AC7112F8()
{
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC711424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC7114B8;

  return sub_1AC7110B0();
}

uint64_t sub_1AC7114B8()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC7115A0()
{
  OUTLINED_FUNCTION_85();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[11] = v7;
  v1[12] = v8;
  v1[10] = v9;
  v10 = sub_1AC79FC78();
  v1[19] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B928, &qword_1AC7A72B8);
  v1[22] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_126();
  v14 = sub_1AC79F958();
  v1[25] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[26] = v15;
  v1[27] = OUTLINED_FUNCTION_126();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA78, &qword_1AC7A7B30);
  v1[28] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[29] = v17;
  v1[30] = OUTLINED_FUNCTION_126();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[31] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[32] = v19;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA90, &unk_1AC7B0E30);
  v1[35] = v20;
  OUTLINED_FUNCTION_22(v20);
  v1[36] = v21;
  v1[37] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1AC711818()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[37];
    v2 = v0[10];
    v3 = sub_1AC5C6544();
    v0[9] = v2;
    v0[8] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA88, &unk_1AC7A7B40);
    sub_1AC79FC98();
    sub_1AC5DEC18(v1);
    v8 = v0[12];
    v0[2] = v0[11];
    v0[3] = v8;

    sub_1AC79FC98();
    v9 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v9);
    v10 = v0[14];
    v0[4] = v0[13];
    v0[5] = v10;

    sub_1AC79FC98();
    v11 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v11);
    (*(v0[26] + 16))(v0[27], v0[15], v0[25]);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DECB0();
    v12 = v0[17];
    v0[6] = v0[16];
    v0[7] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
    sub_1AC79FC98();
    v13 = OUTLINED_FUNCTION_200();
    sub_1AC5DE084(v13);
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    v14 = swift_task_alloc();
    v0[38] = v14;
    *v14 = v0;
    v14[1] = sub_1AC711D70;
    OUTLINED_FUNCTION_115();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC711D70(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v7 = v6;
  *(v4 + 312) = v1;

  if (!v1)
  {
    *(v4 + 320) = a1 & 1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC711EA0()
{
  OUTLINED_FUNCTION_4_15();
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  v7 = *(v2 + 184);
  v8 = *(v2 + 192);
  v9 = *(v2 + 176);
  (*(*(v2 + 160) + 8))();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v3, v5);
  v10 = *(v0 + 8);
  v10(v14, v4);
  v10(v15, v4);
  (*(v1 + 8))();

  v11 = *(v2 + 8);
  v12 = *(v2 + 320);

  return v11(v12);
}

uint64_t sub_1AC712038()
{
  OUTLINED_FUNCTION_4_15();
  v4 = v2[30];
  v3 = v2[31];
  v6 = v2[28];
  v5 = v2[29];
  v7 = v2[23];
  v8 = v2[24];
  v9 = v2[22];
  (*(v2[20] + 8))(v2[21], v2[19]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v0 + 8);
  v10(v13, v3);
  v10(v14, v3);
  (*(v1 + 8))();
  OUTLINED_FUNCTION_13_10(v2[37]);

  v11 = v2[1];

  return v11(0);
}

uint64_t sub_1AC71218C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v10 = a2[4];
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1AC71274C;

  return sub_1AC7115A0();
}

uint64_t sub_1AC71274C()
{
  v33 = *(*v0 + 136);
  OUTLINED_FUNCTION_108();
  v32 = *(v1 + 128);
  OUTLINED_FUNCTION_108();
  v28 = *(v2 + 120);
  OUTLINED_FUNCTION_108();
  v31 = *(v3 + 112);
  OUTLINED_FUNCTION_108();
  v30 = *(v4 + 104);
  OUTLINED_FUNCTION_108();
  v26 = *(v5 + 96);
  OUTLINED_FUNCTION_108();
  v29 = *(v6 + 88);
  OUTLINED_FUNCTION_108();
  v27 = *(v7 + 80);
  OUTLINED_FUNCTION_108();
  v9 = *(v8 + 72);
  v25 = *(v10 + 64);
  OUTLINED_FUNCTION_108();
  v24 = *(v11 + 56);
  OUTLINED_FUNCTION_108();
  v13 = *(v12 + 48);
  v15 = v14[5];
  v16 = v14[4];
  v17 = v14[3];
  v18 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v19 = v18;
  *v21 = v20;

  (*(v16 + 8))(v15, v17);
  (*(v24 + 8))(v25, v13);
  (*(v27 + 8))(v29, v9);
  (*(v30 + 8))(v31, v26);
  (*(v32 + 8))(v33, v28);

  v22 = *(v18 + 8);

  return v22();
}

uint64_t sub_1AC712B48()
{
  sub_1AC7A0E78();
  type metadata accessor for EARTranscriptionEvaluator();
  OUTLINED_FUNCTION_1_19();
  sub_1AC71305C(v0, v1, v2, &unk_1AC7B0FCC);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC712BC4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARTranscriptionEvaluator();
    OUTLINED_FUNCTION_1_19();
    sub_1AC71305C(v1, v2, v3, &unk_1AC7B101C);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC712C88(uint64_t a1)
{
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v1, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
  return sub_1AC79FC28();
}

uint64_t sub_1AC712D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC712D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARTranscriptionEvaluator();
  v6 = sub_1AC71305C(&qword_1EB56BA70, v5, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC712DE0(uint64_t a1)
{
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v1, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC712E74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC71305C(&qword_1EB56BA70, v4, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC713034()
{
  result = xpcInterface_EARTranscriptionEvaluator();
  qword_1EB56E888 = result;
  return result;
}

uint64_t sub_1AC71305C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t FullPayloadCorrector.init(locale:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_1AC79FB18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v45 - v19;
  Locale.languageRegionLocale.getter(v18, v21, v22, v23, v24, v25, v26, v27, v45, v46, a1, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v34 = v47;
    v35 = v17;
    sub_1AC713540(v9);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v36 = sub_1AC79FDE8();
      __swift_project_value_buffer(v36, qword_1ED9386C8);
      (*(v11 + 16))(v35, v34, v10);
      v37 = sub_1AC79FDC8();
      v38 = sub_1AC7A05F8();
      if (os_log_type_enabled(v37, v38))
      {
        v34 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v34 = 136315138;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50[0] = v39;
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD000000000000052, 0x80000001AC7B8DE0);
        sub_1AC7145DC();
        v40 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v40);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v41 = v48;
        v42 = v49;
        v43 = *(v11 + 8);
        v11 += 8;
        v43(v35, v10);
        v10 = sub_1AC5CFE74(v41, v42, v50);

        *(v34 + 4) = v10;
        _os_log_impl(&dword_1AC5BC000, v37, v38, "Failed precondition: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1B26EAB10](v39, -1, -1);
        MEMORY[0x1B26EAB10](v34, -1, -1);
      }

      else
      {

        v44 = *(v11 + 8);
        v11 += 8;
        v44(v35, v10);
      }

      __break(1u);
LABEL_8:
      swift_once();
    }
  }

  v28 = *(v11 + 32);
  v28(v20, v9, v10);
  (*(v11 + 16))(v14, v20, v10);
  type metadata accessor for FullPayloadCorrectorActor(0);
  swift_allocObject();

  v29 = v14;
  v30 = v46;
  v31 = sub_1AC71386C(v29, v46, a3);
  (*(v11 + 8))(v47, v10);
  *(v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_fullPayloadCorrectorActor) = v31;
  v28((v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_locale), v20, v10);
  v32 = (v4 + OBJC_IVAR____TtC6Speech20FullPayloadCorrector_clientID);
  *v32 = v30;
  v32[1] = a3;
  return v4;
}