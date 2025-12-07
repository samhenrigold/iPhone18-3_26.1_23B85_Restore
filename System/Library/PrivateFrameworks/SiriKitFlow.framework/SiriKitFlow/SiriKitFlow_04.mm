uint64_t sub_1DCB5ACB0()
{
  v1 = v0[11];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  v5 = (*(v1 + 32) + **(v1 + 32));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1DCBFCE24;

  return v5(ObjectType, v1);
}

uint64_t static Transformer<>.transformer.getter()
{
  if (qword_1EDE46468 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  __swift_project_value_buffer(v0, qword_1EDE46470);
  OUTLINED_FUNCTION_0_25();
  v1 = OUTLINED_FUNCTION_76_0();

  return v2(v1);
}

{
  if (qword_1EDE46400 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA0, &qword_1DD0E84B0);
  __swift_project_value_buffer(v0, qword_1EDE46408);
  OUTLINED_FUNCTION_0_25();
  v1 = OUTLINED_FUNCTION_76_0();

  return v2(v1);
}

{
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_project_value_buffer(v0, qword_1EDE464B8);
  OUTLINED_FUNCTION_0_25();
  v1 = OUTLINED_FUNCTION_76_0();

  return v2(v1);
}

{
  if (qword_1EDE46488 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  __swift_project_value_buffer(v0, qword_1EDE46490);
  OUTLINED_FUNCTION_0_25();
  v1 = OUTLINED_FUNCTION_76_0();

  return v2(v1);
}

{
  if (qword_1EDE46438 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_project_value_buffer(v0, qword_1EDE46440);
  OUTLINED_FUNCTION_0_25();
  v1 = OUTLINED_FUNCTION_76_0();

  return v2(v1);
}

uint64_t sub_1DCB5B150@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD0DC37C();
  swift_allocObject();
  v2 = sub_1DD0DC36C();
  sub_1DD0DACFC();
  if (v3)
  {
    sub_1DD0DC34C();
  }

  sub_1DD0DACEC();
  if (v4)
  {
    sub_1DD0DC33C();
  }

  sub_1DD0DAD0C();
  if (v5)
  {
    sub_1DD0DC35C();
  }

  sub_1DD0DAD1C();
  if (v6)
  {
    sub_1DD0DC30C();
  }

  sub_1DD0DAD2C();
  if (v7)
  {
    sub_1DD0DC31C();
  }

  result = sub_1DD0DAD6C();
  if (v9)
  {
    sub_1DD0DC32C();
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1DCB5B270@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD0DB0FC();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = *a1;
  if ([*a1 label])
  {
    sub_1DD0DCA6C();
  }

  v7 = [v6 type];
  if (!v7)
  {
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    sub_1DD0DC47C();
    swift_allocObject();
    v8 = sub_1DD0DC46C();
    result = sub_1DCB5DE54(v6);
    if (!v12)
    {
      v11 = MEMORY[0x1E69D21B8];
      goto LABEL_16;
    }

    sub_1DD0DC45C();
    v11 = MEMORY[0x1E69D21B8];
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    sub_1DD0DC3FC();
    swift_allocObject();
    v8 = sub_1DD0DC3EC();
    result = sub_1DCB5DE54(v6);
    if (!v10)
    {
      v11 = MEMORY[0x1E69D2198];
      goto LABEL_16;
    }

    sub_1DD0DC3DC();
    v11 = MEMORY[0x1E69D2198];
  }

  else
  {
LABEL_10:
    sub_1DD0DC4DC();
    swift_allocObject();
    v8 = sub_1DD0DC4CC();
    result = sub_1DCB5DE54(v6);
    if (!v13)
    {
      v11 = MEMORY[0x1E69D2230];
      goto LABEL_16;
    }

    sub_1DD0DC4BC();
    v11 = MEMORY[0x1E69D2230];
  }

LABEL_12:

LABEL_16:
  *a2 = v8;
  a2[1] = v11;
  return result;
}

uint64_t static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v36 - v8;
  v10 = sub_1DD0DB0FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DCB5B86C(a1);
  if (v15)
  {
    v17 = v15;
    v18 = v16;
    v36[2] = a3;
    v37 = v11;
    v36[1] = a2;
    v19 = sub_1DD0DDF8C();
    v20 = [v17 localizeForLanguage_];

    v21 = sub_1DD0DDFBC();
    v23 = v22;

    v24 = sub_1DD0DDFBC();
    v26 = v25;
    if (v24 == sub_1DD0DDFBC() && v26 == v27)
    {
    }

    else
    {
      v29 = sub_1DD0DF0AC();

      if (v29)
      {
      }

      else
      {

        sub_1DD0DB05C();
        v38 = v21;
        v39 = v23;
        v35 = v37;
        (*(v37 + 16))(v9, v14, v10);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
        sub_1DCB1C4D8();
        v21 = sub_1DD0DEA1C();

        sub_1DCB5DDEC(v9);
        (*(v35 + 8))(v14, v10);
      }
    }
  }

  else
  {
    sub_1DD0DDFBC();
    v30 = sub_1DD0DE1AC();

    v31 = sub_1DD0DDFBC();
    v21 = v31;
    if (v30)
    {
      v33 = sub_1DCDADC04(v31, v32);

      return v33;
    }
  }

  return v21;
}

void *sub_1DCB5B86C(void *a1)
{
  if (qword_1EDE492A8 != -1)
  {
    swift_once();
  }

  v2 = off_1EDE492B0;
  if (*(off_1EDE492B0 + 2) && (v3 = sub_1DCB5B97C(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    v6 = v5;
    v7 = a1;
  }

  else
  {
    sub_1DD0DDFBC();
    v8 = sub_1DD0DE1AC();

    if (v8)
    {
      v9 = sub_1DD0DDFBC();
      v11 = sub_1DCDADC94(v9, v10);

      if (v11)
      {
        v5 = sub_1DCC17CF4(v11, v2);
        if (!v5)
        {
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_1DCB5B97C(uint64_t a1)
{
  sub_1DD0DDFBC();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  v2 = sub_1DD0DF20C();

  return sub_1DCB5BA10(a1, v2);
}

unint64_t sub_1DCB5BA10(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1DD0DDFBC();
    v7 = v6;
    if (v5 == sub_1DD0DDFBC() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1DD0DF0AC();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

void sub_1DCB5BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCB5BE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = *(a1 + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5C6C0(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_1DCB5C758(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DCB5C6C0(a1, a2);
  return v4;
}

uint64_t sub_1DCB5C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCB5C86C();
}

uint64_t sub_1DCB5C86C()
{
  OUTLINED_FUNCTION_42();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  OUTLINED_FUNCTION_20_0(v6);
  v1[13] = OUTLINED_FUNCTION_38();
  v7 = type metadata accessor for ParameterClause(0);
  v1[14] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[15] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DD85C();
  v1[16] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[17] = v9;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB5C97C()
{
  v73 = v0;
  if (qword_1EDE4F900 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v5);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v11 = sub_1DD0DD88C();
  __swift_project_value_buffer(v11, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v12 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v13 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v13);
    sub_1DD0DD83C();
    OUTLINED_FUNCTION_121_3();
    _os_signpost_emit_with_name_impl(v14, v15, v16, v17, v18, v19, v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 80);

  v22 = OUTLINED_FUNCTION_120_3();
  v23(v22);
  sub_1DD0DD8CC();
  swift_allocObject();
  *(v0 + 160) = OUTLINED_FUNCTION_13_64();
  v24 = OUTLINED_FUNCTION_124();
  v25(v24);
  v26 = *(v20 + 16);
  sub_1DCB78C0C(v26, v21);
  v28 = v27;
  v71 = v27[2];
  if (v71)
  {
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v32 = v27[4];
    v31 = v27[5];

    sub_1DCB77430(v32, v31, v30);
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) != 1)
    {
      v50 = *(v0 + 120);
      v51 = *(v0 + 104);
      v52 = *(v0 + 64);

      sub_1DCB3998C(v51, v50, type metadata accessor for ParameterClause);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
      *v52 = v26;
      v52[1] = v32;
      v52[2] = v31;
      sub_1DCB3998C(v50, v52 + v53, type metadata accessor for ParameterClause);
      type metadata accessor for ResolveConfirmProcessingResult(0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
      swift_storeEnumTagMultiPayload();
      v54 = v26;
      sub_1DCB3B864();

      OUTLINED_FUNCTION_108_8();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_141();

      __asm { BRAA            X1, X16 }
    }

    v33 = *(v0 + 104);

    sub_1DCB16D50(v33, qword_1ECCAABF0, &qword_1DD0FA700);
  }

  v34 = 0;
  v68 = v0 + 16;
  v69 = v26;
  v35 = v28 + 5;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = v0; ; v0 = i)
  {
    *(v0 + 168) = v1;
    if (v71 == v34)
    {
      break;
    }

    if (v34 >= v28[2])
    {
      __break(1u);
      goto LABEL_33;
    }

    v36 = *(v35 - 1);
    v37 = *v35;
    v72[0] = v36;
    v72[1] = v37;

    if (!sub_1DCB75224(v72))
    {

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCB38954();
    }

    v39 = *(v1 + 16);
    v38 = *(v1 + 24);
    if (v39 >= v38 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v38);
      sub_1DCB38954();
    }

    *(v1 + 16) = v39 + 1;
    v40 = v1 + 16 * v39;
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
    v35 += 2;
    ++v34;
  }

  v41 = *(v0 + 88);
  v42 = v41[2];
  *(v0 + 176) = v42;
  v43 = v41[3];
  *(v0 + 184) = v43;
  v44 = v41[4];
  *(v0 + 192) = v44;
  v45 = v41[5];
  *(v0 + 200) = v45;
  v46 = v41[6];
  *(v0 + 208) = v46;
  v47 = v41[7];
  *(v0 + 216) = v47;
  if (v42)
  {
    *&v48 = v44;
    *(&v48 + 1) = v45;
    *&v49 = v46;
    *(&v49 + 1) = v47;
    *(v0 + 16) = v42;
    *(v0 + 24) = v43;
    *(v0 + 32) = v48;
    *(v0 + 48) = v49;
    sub_1DD0DCF8C();
  }

  v57 = sub_1DD0DD8EC();
  v58 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v59);
    _os_log_impl(&dword_1DCAFC000, v57, v58, "ResolveConfirmHandleService.executeResolveConfirm with processIntentCommand", v46, 2u);
    OUTLINED_FUNCTION_62();
  }

  [v69 setDidAuthenticateAppProtection_];
  OUTLINED_FUNCTION_124();
  sub_1DCB737CC();
  *(v0 + 240) = v60;

  v61 = [v69 typeName];
  sub_1DD0DDFBC();
  v63 = v62;

  *(v0 + 248) = v63;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 256) = v64;
  *v64 = v65;
  v64[1] = sub_1DCB399F4;
  OUTLINED_FUNCTION_141();

  return sub_1DCB8EDFC();
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB4F1DC(v4, v5 - 200, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_2()
{
}

uint64_t OUTLINED_FUNCTION_116_3()
{
}

uint64_t OUTLINED_FUNCTION_116_4(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_116_7()
{

  return sub_1DCAFF9E8((v0 + 760), v0 + 976);
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t a1)
{

  return sub_1DD0DE33C();
}

unint64_t OUTLINED_FUNCTION_115_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DCB10E9C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_115_2()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_115_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_115_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB099BC(v5 + 80, v4 + 760, a3, a4);
}

void sub_1DCB5D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_1DCB5D31C();
  v9 = *(*(v4 + 16) + 16);
  sub_1DCB5D3F4(v9);
  v10 = *(v4 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 32 * v9);
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  *(v4 + 16) = v10;
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCB5D334()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
      v6 = OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_17_31(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB5DF38(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7950, &unk_1DD0F9848);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DCB5D40C()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1DCB38954();
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      MEMORY[0x1E12A6780](v5, v6);
      MEMORY[0x1E12A6780](6176094, 0xE300000000000000);
      MEMORY[0x1E12A6780](v7, v8);
      MEMORY[0x1E12A6780](94, 0xE100000000000000);

      v9 = *(v11 + 16);
      if (v9 >= *(v11 + 24) >> 1)
      {
        sub_1DCB38954();
      }

      ++v3;
      *(v11 + 16) = v9 + 1;
      v10 = v11 + 16 * v9;
      *(v10 + 32) = 94;
      *(v10 + 40) = 0xE100000000000000;
      v4 += 4;
      if (v2 == v3)
      {

        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    sub_1DD0DDF6C();

    OUTLINED_FUNCTION_68();
  }
}

uint64_t MachineUtteranceBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NLContextUpdate.nlInput.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

void *sub_1DCB5D668@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1DD0DBB1C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v43 = &v36 - v9;
  v10 = sub_1DD0DAD7C();
  v45 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  v21 = *a1;
  sub_1DD0DC13C();
  swift_allocObject();
  v22 = sub_1DD0DC12C();
  v23 = [v21 displayName];
  sub_1DD0DDFBC();

  v46 = v22;
  sub_1DD0DC11C();

  v44 = v21;
  v24 = [v21 nameComponents];
  v42 = v6;
  if (v24)
  {
    v25 = v24;
    sub_1DD0DAD5C();

    v37 = *(v45 + 32);
    v37(v20, v17, v10);
    if (qword_1EDE463F0 != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
    __swift_project_value_buffer(v26, qword_1EDE57CD8);
    sub_1DD0DCBBC();
  }

  v27 = v46;
  v28 = v44;
  if ([v44 personHandle])
  {
    if (qword_1EDE463D8 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
    __swift_project_value_buffer(v29, qword_1EDE57CA8);
    sub_1DD0DCBBC();
  }

  if ([v28 relationship])
  {
    if (qword_1EDE463D0 != -1)
    {
      swift_once();
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
    __swift_project_value_buffer(v30, qword_1EDE57C90);
    sub_1DD0DCBBC();
  }

  sub_1DCB5DEB8(v28);
  v31 = v42;
  if (v32 || (sub_1DCD953D0(v28), v33))
  {
    sub_1DD0DBAEC();
    sub_1DD0DBA0C();
    (*(v39 + 8))(v31, v40);
  }

  result = MEMORY[0x1E12A4450](v27);
  if (result)
  {
    sub_1DD0DBD9C();
    result = sub_1DD0DBEBC();
    v35 = v47;
    if (v47)
    {

      *v41 = v35;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB5DDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB5DE54(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCB5DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_1DCB5D23C(a1, a2, a3, a4);
    }
  }

  sub_1DD0DCF8C();
}

char *sub_1DCB5DF38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB5DF98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v4;
}

void *ResponseFactory.init()()
{
  v1 = v0;
  v2 = sub_1DD0DD39C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v1[5] = &type metadata for DialogUsageProvider;
  v1[6] = &protocol witness table for DialogUsageProvider;
  sub_1DD0DD3DC();
  v8 = type metadata accessor for IntentServicesAdapter(0);
  swift_allocObject();
  v9 = sub_1DCB578A0(v7);
  v1[10] = v8;
  v1[11] = &off_1F5862400;
  v1[7] = v9;
  return v1;
}

uint64_t type metadata accessor for IntentServicesAdapter(uint64_t a1)
{
  result = qword_1EDE484A0;
  if (!qword_1EDE484A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExecuteResponse.nextPluginAction.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for ExecuteResponse(v0);
  v2 = OUTLINED_FUNCTION_59_2(*(v1 + 36));
  return sub_1DCB099BC(v2, v3, v4, v5);
}

double ExecuteResponse.unhandledReason.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1DCB5E13C(v2, v3, v4);
}

double sub_1DCB5E13C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1DCD1B9B8(result, a2, a3);
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for FlowUnhandledReason(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t OUTLINED_FUNCTION_129_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1DCB17D04(v2 - 72, v2 - 112);
}

uint64_t OUTLINED_FUNCTION_129_1@<X0>(char a1@<W8>)
{
  *(v1 + 184) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129_3(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DF0AC();
}

uint64_t sub_1DCB5E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v4[13] = swift_task_alloc();
  v5 = sub_1DD0DB04C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB5E3B0, 0, 0);
}

uint64_t sub_1DCB5E314()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);
  OUTLINED_FUNCTION_26_18();

  return sub_1DCB5E21C(v5, v6, v7, v1);
}

uint64_t sub_1DCB5E3B0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE4B4B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE4B4C0;
  *(v0 + 136) = qword_1EDE4B4C0;

  return MEMORY[0x1EEE6DFA0](sub_1DCB5E444, v1, 0);
}

uint64_t sub_1DCB5E444()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB66E20(v0 + 56);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1DCB5E4A8()
{
  if (*(v0 + 80))
  {
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    sub_1DD0DCA6C();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Failed to intialize Suggestions broker");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  __asm { BRAA            X1, X16 }
}

void sub_1DCB5E93C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_48_12();
  if (v8 && (a4(0), OUTLINED_FUNCTION_2(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_11_33();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_11_33();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_1DCB5EA08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCB5F7AC();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GuardFlowResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB5EB0CLL);
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

void sub_1DCB5EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5ED0C()
{
  v1 = v0;
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1[11], v1[12]);
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780](0xD000000000000011);
  sub_1DCB5F168(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F10, &qword_1DD0F40E8);
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1[8], v1[9]);
  OUTLINED_FUNCTION_2_59();
  MEMORY[0x1E12A6780]();
  if (*(v0 + 80))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 80))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v3, v4);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB5EE80()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DCB5EEE0()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[23] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "HandleIntentFlow beginning execution of HandleIntent");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[22];

  OUTLINED_FUNCTION_73_4();
  v8 = *(v7 + 88);
  v0[24] = v8;
  v9 = *(v8 + 8);
  v0[25] = v9;
  v10 = *(v9 + 16);
  v11 = *(v7 + 80);
  v0[26] = v11;
  v16 = (v10 + *v10);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_1DCB5F8F0;
  v14 = v0[19];
  v13 = v0[20];

  return v16(v14, v13, v11, v9);
}

uint64_t sub_1DCB5F0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB5FF14(a1);
}

uint64_t sub_1DCB5F13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5F804, 0, 0);
}

id sub_1DCB5F168(id result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (result)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_149(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_204()
{
}

uint64_t sub_1DCB5F220()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB5F2B0(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCB5F364(a1);
}

uint64_t SharingPolicyCheckFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB5F364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return SharingPolicyCheckFlow.execute()(a1);
}

void sub_1DCB5F404()
{
  v13 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_151();
    v5 = OUTLINED_FUNCTION_83();
    v12 = v5;
    *v4 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103(&qword_1EDE4CC60);
    }

    *(v4 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v12);
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v6, v7, "%s: Starting flow execution");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = OUTLINED_FUNCTION_83();
    v12 = v11;
    *v10 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103(&qword_1EDE4CC60);
    }

    *(v10 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v12);
    _os_log_impl(&dword_1DCAFC000, v8, v9, "%s: Sharing policy is not applicable in the current context - flow will exit with PASS exit value", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  *(*(v0 + 24) + 16) = 1;
  sub_1DCB5F618();
}

void sub_1DCB5F618()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB5F804()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v1[1] = *(v0 + 40);
  v1[2] = v2;
  v1[3] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 80) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB61FD4;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCB5F8F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void static SiriKitIntentExecutionBehavior.standard()()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v0 = swift_allocObject();
  *(v0 + 88) = 0x647261646E617473;
  *(v0 + 96) = 0xE800000000000000;
  OUTLINED_FUNCTION_0_62(v0);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
}

void sub_1DCB5FA24()
{
  v31 = v0;
  v1 = v0[10] + *(*v0[10] + 144);
  v2 = *v1;
  v0[12] = *v1;
  v3 = *(v1 + 8);
  v0[13] = v3;
  v4 = *(v1 + 16);
  v0[14] = v4;
  switch(*(v1 + 24))
  {
    case 0:
      v0[6] = v2;
      v0[7] = v3;
      v0[8] = v4;
      sub_1DD0DCF8C();
    case 2:
      OUTLINED_FUNCTION_26_18();
      sub_1DCB61AE4(v17, v18, v19, 2);
      sub_1DD0DCF8C();
    case 3:
      sub_1DCB79C24(v2, v3, v4 & 1);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v5 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
      v6 = sub_1DD0DD8EC();
      v7 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v7))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_14_3();
      }

      OUTLINED_FUNCTION_26_18();
      v16 = 3;
      break;
    case 4:
      v20 = v2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      v6 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v22))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_14_3();
      }

      OUTLINED_FUNCTION_26_18();
      v16 = 4;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  sub_1DCB799DC(v13, v14, v15, v16);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCB5FF14(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB5FF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5EEE0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_127_0()
{
}

uint64_t getEnumTagSinglePayload for SiriKitIntentHandler(uint64_t *a1, int a2)
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

uint64_t sub_1DCB60054()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_37_34();
  OUTLINED_FUNCTION_152();

  return sub_1DCB61028();
}

uint64_t sub_1DCB600E8()
{
  OUTLINED_FUNCTION_42();
  v0[6] = v1;
  v0[7] = v2;
  OUTLINED_FUNCTION_0_30();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[8] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_26(v3);

  return v6(v5);
}

uint64_t sub_1DCB6019C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCB600E8();
}

uint64_t sub_1DCB6022C()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v5);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  *(v0 + 200) = __swift_project_value_buffer(*(v0 + 136), qword_1EDE57DD0);
  sub_1DD0DD84C();
  v11 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v12 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v12);
    sub_1DD0DD83C();
    OUTLINED_FUNCTION_121_3();
    _os_signpost_emit_with_name_impl(v13, v14, v15, v16, v17, v18, v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v19 = *(v0 + 168);
  v20 = *(v0 + 112);

  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  sub_1DD0DD8CC();
  swift_allocObject();
  *(v0 + 208) = OUTLINED_FUNCTION_13_64();
  *(v0 + 216) = *(v19 + 8);
  *(v0 + 224) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = OUTLINED_FUNCTION_124();
  v24(v23);
  v25 = v20[2];
  *(v0 + 232) = v25;
  v26 = v20[3];
  *(v0 + 240) = v26;
  v27 = v20[4];
  *(v0 + 248) = v27;
  v28 = v20[5];
  *(v0 + 256) = v28;
  v29 = v20[6];
  *(v0 + 264) = v29;
  v30 = v20[7];
  *(v0 + 272) = v30;
  if (v25)
  {
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *&v32 = v29;
    *(&v32 + 1) = v30;
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    *(v0 + 32) = v31;
    *(v0 + 48) = v32;
    sub_1DD0DCF8C();
  }

  v33 = sub_1DD0DD8EC();
  v34 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v35);
    _os_log_impl(&dword_1DCAFC000, v33, v34, "ResolveConfirmHandleService.executeHandle with processIntentCommand", v29, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB60DAC();
  *(v0 + 296) = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 304) = v37;
  *v37 = v38;
  v37[1] = sub_1DCB74B6C;

  return sub_1DCB60D00();
}

uint64_t sub_1DCB60748(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 104) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB60764(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB65490;

  return sub_1DCB60748(a1, a2, a3);
}

uint64_t sub_1DCB60814()
{
  OUTLINED_FUNCTION_41();
  if (*(v0[14] + 80) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v1 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_62();
    }

    v10 = v0[15];

    __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    v11 = swift_task_alloc();
    v0[16] = v11;
    sub_1DCB10E5C(0, &qword_1EDE460D8, 0x1E69C7850);
    OUTLINED_FUNCTION_45_22();
    *v11 = v12;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submitToCompanion<A>(_:)();
  }

  else
  {
    if (sub_1DCB610F0())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_29(v0[15]);
    v16 = swift_task_alloc();
    v0[21] = v16;
    sub_1DCB10E5C(0, &qword_1EDE460D8, 0x1E69C7850);
    OUTLINED_FUNCTION_45_22();
    *v16 = v17;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submit<A>(_:)();
  }
}

uint64_t sub_1DCB60B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB60B84()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[14] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v10 = sub_1DD0DD88C();
  v0[15] = __swift_project_value_buffer(v10, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_103_8();
  sub_1DCB70034(v11, v12, v13, v14);
  v0[16] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[17] = v16;
  *v16 = v17;
  v16[1] = sub_1DCB73E3C;
  v18 = v0[9];
  v19 = v0[7];

  return sub_1DCB60B6C((v0 + 2), v19, v18);
}

uint64_t sub_1DCB60D00()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v6 = sub_1DD0DD85C();
  v1[11] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCB60DAC()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_70();
  v1 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  [v0 setDidAuthenticateAppProtection_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7848]) init];
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v3 + 8))(v8, v1);
  v10 = OUTLINED_FUNCTION_124();
  sub_1DCB4D8E8(v10, v11, v9);

  if ([v0 _type] == 2)
  {
    v12 = INIntent.jsonRepresentation()();
    sub_1DCB2C534(v12._countAndFlagsBits, v12._object, v9, &selRef_setJsonEncodedIntent_);
  }

  else
  {
    v13 = sub_1DCB61EDC(v0);
    [v9 setIntent_];
  }

  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1DCB60F10()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = sub_1DD0DD88C();
  v1[17] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DD85C();
  v1[20] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[21] = v9;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB61028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB60F10();
}

BOOL sub_1DCB610F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

void *OUTLINED_FUNCTION_45_2()
{

  return memcpy((v0 + 256), (v1 - 160), 0x48uLL);
}

double OUTLINED_FUNCTION_45_4()
{

  return sub_1DCB90D40();
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1)
{

  return sub_1DD0DEC3C();
}

void OUTLINED_FUNCTION_45_8()
{
}

uint64_t OUTLINED_FUNCTION_45_11()
{

  return sub_1DD0DF0AC();
}

double OUTLINED_FUNCTION_45_13()
{
  *v0 = v2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  v3 = (v0 + *(v1 + 40));
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

void *OUTLINED_FUNCTION_45_19@<X0>(uint64_t a1@<X8>)
{
  v1[1] = 0;
  v1[2] = 0;
  *v1 = a1;
  return v1;
}

void OUTLINED_FUNCTION_45_24()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t sub_1DCB613B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 48);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1Tm_0(a3);
  return v6(a1, a2);
}

uint64_t sub_1DCB61440(uint64_t a1, void (*a2)(char *), char *a3, uint64_t a4)
{
  v50 = a3;
  v51 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v49 - v12;
  v14 = sub_1DD0DE97C();
  v49 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v49 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB099BC(a1, v53, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!swift_dynamicCast())
  {
    v50 = v13;
    v51 = v10;
    v25 = v23;
    v26 = a4;
    __swift_storeEnumTagSinglePayload(v18, 1, 1, a4);
    (*(v49 + 8))(v18, v14);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52 = v26;
      v53[0] = v32;
      *v31 = 136315394;
      swift_getMetatypeMetadata();
      v33 = sub_1DD0DE02C();
      v35 = sub_1DCB10E9C(v33, v34, v53);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v52 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v36 = sub_1DD0DE02C();
      v38 = sub_1DCB10E9C(v36, v37, v53);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "Expected exitValue of type %s but instead got value of type %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v32, -1, -1);
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    v39 = *(v27 - 8);
    v40 = v50;
    (*(v39 + 16))(v50, v28, v27);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v27);
    v41 = v51;
    sub_1DCB099BC(v40, v51, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v41, 1, v27) == 1)
    {
      sub_1DCB0E9D8(v51, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v53[0] = v45;
        *v44 = 136315650;
        v46 = sub_1DD0DEC3C();
        v48 = sub_1DCB10E9C(v46, v47, v53);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2048;
        *(v44 + 14) = 446;
        *(v44 + 22) = 2080;
        *(v44 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v53);
        _os_log_impl(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v45, -1, -1);
        MEMORY[0x1E12A8390](v44, -1, -1);
      }

      (*(v39 + 8))(v51, v27);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  __swift_storeEnumTagSinglePayload(v18, 0, 1, a4);
  (*(v19 + 32))(v22, v18, a4);
  v51(v22);
  return (*(v19 + 8))(v22, a4);
}

id sub_1DCB61AE4(id result, void *a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:
      sub_1DD0DCF8C();
    case 1:
    case 2:
      sub_1DD0DCF8C();
    case 3:
      v4 = a3 & 1;

      result = sub_1DCB79C24(result, a2, v4);
      break;
    case 4:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB61BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_20_10();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v32);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_136();
  v37 = swift_allocObject();
  v37[2] = v23;
  v37[3] = v21;
  v37[4] = v31;
  v37[5] = v29;
  v38 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v38);
  OUTLINED_FUNCTION_41_4();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v27;
  v39[5] = v25;
  v39[6] = &unk_1DD103658;
  v39[7] = v37;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB61CF8()
{

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB61D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F0, &qword_1DD0F2090);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(a7 + 72))(a3, a4, sub_1DCB74DDC, v17, v19, v20, a7);
}

id sub_1DCB61EDC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  v3 = [a1 typeName];
  v4 = sub_1DD0DDFBC();
  v6 = v5;

  sub_1DCB61FC8(v4, v6, v2);
  sub_1DCB3BE6C([a1 backingStore]);
  OUTLINED_FUNCTION_16_10();
  if (!v10 & v9)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = sub_1DD0DAEFC();
    sub_1DCB2C520(v11, v12);
  }

  [v2 setData_];

  return v2;
}

uint64_t sub_1DCB61FD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCB620F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCB621E8()
{
  v3 = v0;
  v1 = v0[20];
  v2 = v0[3];
  v0[32] = v0[2];
  v0[33] = v2;
  v0[34] = v0[4];
  sub_1DCB62570(v1);
}

void sub_1DCB62570(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1DD0DE48C();
  v6 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = a1;
  sub_1DCBC61E8();
}

uint64_t sub_1DCB6265C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB6269C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v4;
  *(v3 + 200) = *v4;
  v6 = sub_1DD0DD85C();
  *(v3 + 208) = v6;
  *(v3 + 216) = *(v6 - 8);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = *a2;
  *(v3 + 248) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB62798, 0, 0);
}

uint64_t sub_1DCB62798()
{
  v36 = v0;
  if ([*(v0 + 248) _requiresAuthentication])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v1 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      *v4 = 0;
      OUTLINED_FUNCTION_43_16();
      _os_log_impl(v5, v6, v7, v8, v4, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v9 = *(v0 + 192);

    v10 = (v9 + *(*v9 + 128));
    v11 = v10[3];
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if ((*(v12 + 8))(v11, v12) & 1) != 0 || (v13 = v10[3], v14 = v10[4], __swift_project_boxed_opaque_existential_1(v10, v13), ((*(v14 + 16))(v13, v14)))
    {
      v15 = sub_1DD0DD8EC();
      v16 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v16))
      {
        v17 = OUTLINED_FUNCTION_50_0();
        *v17 = 0;
        _os_log_impl(&dword_1DCAFC000, v15, v16, "HandleIntentFlow cannot request device unlock. Initiating Handoff", v17, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v18 = *(v0 + 192);
      v19 = *(v0 + 200);

      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      v21 = type metadata accessor for SiriKitHandleIntentFlow.StrategyToHandoffSessionToCompanionStrategyAdapter(0, *(v19 + 80), *(v19 + 88), v20);
      *(v0 + 176) = sub_1DCC88710();
      sub_1DCB17D04(v10, v0 + 96);
      OUTLINED_FUNCTION_73_4();
      sub_1DCB17D04(v18 + *(v22 + 136), v0 + 136);
      HandoffSessionToCompanionFlowAsync.__allocating_init<A>(strategy:deviceState:outputPublisher:)(v0 + 176, v0 + 96, v0 + 136, v21, &off_1F585F560);
      v33 = 0;
      v34 = 0uLL;
      v35 = 5;
      sub_1DCB79974(&v33);
    }

    v30 = *(v0 + 232);
    OUTLINED_FUNCTION_73_4();
    v33 = v30;
    v34 = *(v0 + 240);
    sub_1DCD7844C(&v33, *(v31 + 80), *(v31 + 88));
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v23 = *(v0 + 248);
  v24 = *(v0 + 192);
  v25 = sub_1DD0DD88C();
  v32 = *(v0 + 232);
  OUTLINED_FUNCTION_92(v25, qword_1EDE57DD0);
  v26 = swift_task_alloc();
  *(v0 + 256) = v26;
  *(v26 + 16) = v24;
  *(v26 + 24) = v32;
  *(v26 + 40) = v23;
  sub_1DD0DD84C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 264) = v27;
  *v27 = v28;
  v27[1] = sub_1DCB7A1A0;
  OUTLINED_FUNCTION_68_10();

  return sub_1DCB62EFC();
}

uint64_t sub_1DCB62D4C()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1)
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_84_2()
{
  *v1 = v0;
  *(v1 + 8) = 257;
  return v1;
}

void OUTLINED_FUNCTION_84_3()
{
}

uint64_t OUTLINED_FUNCTION_84_8()
{

  return sub_1DCE40E60(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_84_9@<X0>(char a1@<W8>)
{
  *(v1 + 184) = a1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_84_11(uint64_t a1)
{

  sub_1DCD1AC74();
}

void OUTLINED_FUNCTION_84_13()
{

  sub_1DCFE38DC(v0, v1);
}

uint64_t sub_1DCB62EFC()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_5_90(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v0[12] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCB62F98()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v2 & 1) == 0)
    {
      if (v0)
      {
LABEL_8:
        v5 = OUTLINED_FUNCTION_17_39();
        v6 = OUTLINED_FUNCTION_25_26(v5);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v7, v8, v6, v9, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v0))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v3)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v3 & v4))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v10 = OUTLINED_FUNCTION_1_109();
  v11(v10);
  v12 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v12);
  v13 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_12_58(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_102(v15);
  OUTLINED_FUNCTION_152();

  v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1DCB630E0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCB63170(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCB63170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1DCB79F5C;

  return sub_1DCB63224(a1, (v5 + 2));
}

uint64_t sub_1DCB63224(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v4;
  *(v3 + 160) = *v4;
  v6 = sub_1DD0DD85C();
  *(v3 + 168) = v6;
  *(v3 + 176) = *(v6 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB6332C, 0, 0);
}

uint64_t sub_1DCB6332C()
{
  v77 = v0;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v1 = sub_1DD0DD88C();
  __swift_project_value_buffer(v1, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v2 = sub_1DD0DD87C();
  v3 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    v5 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v2, v3, v5, "ResponseRendering", "", v4, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);

  (*(v10 + 16))(v7, v8, v9);
  sub_1DD0DD8CC();
  swift_allocObject();
  *(v0 + 224) = sub_1DD0DD8BC();
  (*(v10 + 8))(v8, v9);
  v11 = [v6 _intentResponseCode];
  switch(v11)
  {
    case 0uLL:
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v12 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v12, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2uLL:
    case 6uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v22))
      {
        v23 = OUTLINED_FUNCTION_151();
        v24 = swift_slowAlloc();
        *&v74 = v24;
        *v23 = 136315138;
        if (v11 == 2)
        {
          v25 = 0x65756E69746E6F63;
        }

        else
        {
          v25 = 0xD000000000000019;
        }

        if (v11 == 2)
        {
          v26 = 0xED00007070416E49;
        }

        else
        {
          v26 = 0x80000001DD11BCF0;
        }

        v27 = sub_1DCB10E9C(v25, v26, &v74);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "HandleIntentFlow Handle IntentResponse with type: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_62();
      }

      v74 = *(v0 + 208);
      v75 = 0;
      v76 = 3;
      v28 = v74;
      sub_1DCB79974(&v74);
    case 3uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v29 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
      sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v30))
      {
        v31 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v31);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v32, v33, "HandleIntentFlow Handle IntentResponse with type: inProgress");
        OUTLINED_FUNCTION_62();
      }

      OUTLINED_FUNCTION_78_9();
      v34 = OUTLINED_FUNCTION_51_12(&v6[*(*v6 + 136)]);
      *(v0 + 280) = v34;
      OUTLINED_FUNCTION_42_17(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 288) = v44;
      *v44 = v45;
      v44[1] = sub_1DCD78BD4;
      break;
    case 4uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v46 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v47))
      {
        v48 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v48);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v49, v50, "HandleIntentFlow Handle IntentResponse with type: success");
        OUTLINED_FUNCTION_62();
      }

      OUTLINED_FUNCTION_78_9();
      v51 = OUTLINED_FUNCTION_51_12(&v6[*(*v6 + 136)]);
      *(v0 + 232) = v51;
      OUTLINED_FUNCTION_42_17(v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 240) = v61;
      *v61 = v62;
      v61[1] = sub_1DCB645E0;
      break;
    default:

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v63 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v63, qword_1EDE57E00);
      v64 = sub_1DD0DD8EC();
      v65 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v65))
      {
        OUTLINED_FUNCTION_151();
        v66 = OUTLINED_FUNCTION_52_0();
        *&v74 = v66;
        *v8 = 136315138;
        *(v0 + 136) = v11;
        type metadata accessor for INIntentResponseCode(0);
        v67 = sub_1DD0DE02C();
        v69 = sub_1DCB10E9C(v67, v68, &v74);

        *(v8 + 4) = v69;
        OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v64, v65, "HandleIntentFlow Handle IntentResponse received an unsupported response type: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_92_0();
      }

      type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError(0, *(*(v0 + 160) + 80), *(*(v0 + 160) + 88), v70);
      OUTLINED_FUNCTION_4_59();
      WitnessTable = swift_getWitnessTable();
      v72 = OUTLINED_FUNCTION_79_0(WitnessTable);
      *(v73 + 8) = 0;
      *(v73 + 16) = 0;
      *v73 = v11;
      *(v73 + 24) = 0x80;
      v75 = 0;
      v74 = v72;
      v76 = 4;
      sub_1DCB79974(&v74);
  }

  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_77_5();

  return sub_1DCB63BBC(v13, v14, v15, v16, v17);
}

uint64_t sub_1DCB63BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCB63BDC);
}

uint64_t sub_1DCB63BDC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[31] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "SKFlow is deferring to output generating function");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[26];

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_1DCB64070;

  return v10(v0 + 2);
}

uint64_t sub_1DCB63D48()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCB63DD8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCB63DD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v12 = (*(v8 + 56) + **(v8 + 56));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DCB63F5C;

  return v12(a1, v5 + 2, v9, v8);
}

uint64_t sub_1DCB63F5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCB64070()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    v7 = sub_1DCE209DC;
  }

  else
  {
    v7 = sub_1DCB64170;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB64170()
{
  v17 = v0;
  v1 = *(v0 + 200);
  sub_1DCAFF9E8((v0 + 16), v1);
  sub_1DCB17CA0(v1, v0 + 56);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_83();
    v16 = v5;
    *v4 = 136642819;
    sub_1DCB17CA0(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    v6 = sub_1DD0DE02C();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v9 = sub_1DCB10E9C(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "SKFlow is publishing output %{sensitive}s)", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  v15 = (*(*(v0 + 232) + 8) + **(*(v0 + 232) + 8));
  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_1DCB64D7C;
  v11 = *(v0 + 232);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);

  return v15(v13, v12, v11);
}

void *sub_1DCB643AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DCB21038(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1DCB643F4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DD0DDFBC();

  return v4;
}

uint64_t sub_1DCB64484(uint64_t a1)
{
  sub_1DCB17CA0(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  type metadata accessor for FlowOutput();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1;
}

uint64_t sub_1DCB64514()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "Output is empty. Nothing to do.");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCB645E0()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCB64718()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    LODWORD(v16) = *(v0 + 97);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v15 = *(v0 + 64);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = (*(v0 + 56) + *(**(v0 + 56) + 120));
    v17 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    type metadata accessor for SiriKitEvent(0);
    *v4 = v3;
    v9 = [v6 typeName];
    v10 = sub_1DD0DDFBC();
    v12 = v11;

    *(v4 + 8) = v10;
    *(v4 + 16) = v12;
    *(v4 + 24) = v7;
    bzero((v4 + 32), 0x88uLL);
    *(v0 + 16) = v5;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCB649AC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB649C0(uint64_t *a1)
{
  v1 = *a1;
  if (a1[3])
  {
    type metadata accessor for CommandFailure();
    sub_1DCC7AE30();
    swift_allocError();
    *v2 = v1;
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB64A8C()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 48))(v0 + 16);
  sub_1DCB64AFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB64AFC(void *a1, void *a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t objectdestroy_156Tm()
{
  OUTLINED_FUNCTION_18_43();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_96_4()
{

  return sub_1DCB41F98(v0);
}

void OUTLINED_FUNCTION_89_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_96_6(uint64_t a1)
{
  *(v1 + 32) = a1;

  sub_1DD0DCC3C();
}

void OUTLINED_FUNCTION_96_9()
{
  v4 = *(v3 - 144);
  *v0 = *(v3 - 136);
  *(v0 + 8) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_96_10(uint64_t a1)
{
}

void OUTLINED_FUNCTION_96_11()
{

  sub_1DD0DCB0C();
}

uint64_t sub_1DCB64CF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB64CDC();
}

uint64_t sub_1DCB64D7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 280) = v0;

  if (v0)
  {
    v7 = sub_1DCE20B20;
  }

  else
  {
    v7 = sub_1DCB64E7C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB64E7C()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v3, v4, "SKFlow output publication complete");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCB64F14()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 348) = 7;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 349) = 47;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 256) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 96, (v0 + 348), v7, v8, v4, (v0 + 349));
}

uint64_t sub_1DCB64FD8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 24) = a1;
  *(v7 + 64) = type metadata accessor for SiriKitEventPayload(0);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 96) = *a2;
  *(v7 + 97) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1DCB64718, 0, 0);
}

__n128 OUTLINED_FUNCTION_77_4()
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  *(v0 + 64) = *(v1 + 64);
  return result;
}

double OUTLINED_FUNCTION_77_9()
{

  return sub_1DCB90D40();
}

double OUTLINED_FUNCTION_77_10()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_15(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1DCB651D0(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_16();
  (*(v5 + 16))(v4 - v3);
  type metadata accessor for RCHAdaptedEmptyOutput();
  v6 = swift_dynamicCast();
  if (v6)
  {
  }

  return v6 ^ 1u;
}

uint64_t sub_1DCB652A0()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCB22EC8;

  return sub_1DCB649AC(v2);
}

uint64_t sub_1DCB65494()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_69();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

void *OUTLINED_FUNCTION_73_5(void *a1)
{

  return memcpy(a1, v1, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_73_9()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_73_12(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 + a2;
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = 0;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_73_13()
{
  v2 = *(v0 + 104);

  return sub_1DCB17CA0(v2, v0 + 16);
}

void OUTLINED_FUNCTION_73_14()
{
  sub_1DCFE38DC(v0, v2);
  v3 = *(v1 + 16);
}

uint64_t *OUTLINED_FUNCTION_73_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 48) = a3;
  *(v4 - 40) = a4;

  return __swift_allocate_boxed_opaque_existential_1Tm((v4 - 72));
}

uint64_t OUTLINED_FUNCTION_73_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_73_19()
{

  return sub_1DD0DED9C();
}

uint64_t sub_1DCB656F0(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1DCB17CA0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  a2(0);
  v3 = swift_dynamicCast();
  if (v3)
  {
  }

  return v3;
}

uint64_t RefreshableDeviceState.isPad.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isXRDevice.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isCarDNDMode.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isSidekick.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isAuthenticated(for:)(uint64_t a1)
{
  sub_1DCB4E718(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 248))(a1, v2, v3);
  return OUTLINED_FUNCTION_11_28(v5);
}

void sub_1DCB65AE4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v11 - v10);
  if ((*(v1 + 104))(v3, v1))
  {
    v12 = *v5;
    if ((*v5 & 4) == 0 || (v13 = OUTLINED_FUNCTION_51_30(), v14(v13), v15 = v28, v16 = v29, __swift_project_boxed_opaque_existential_1(v27, v28), v17 = (*(v16 + 16))(v15, v16), __swift_destroy_boxed_opaque_existential_1Tm(v27), (v17 & 1) == 0))
    {
      if ((v12 & 2) != 0)
      {
        v18 = OUTLINED_FUNCTION_51_30();
        v19(v18);
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v20 = OUTLINED_FUNCTION_62_16();
        v22 = v21(v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        if (v22)
        {
          __swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
          v23 = OUTLINED_FUNCTION_62_16();
          v24(v23);
        }
      }
    }
  }

  v25 = OUTLINED_FUNCTION_86();
  v26(v25);
  OUTLINED_FUNCTION_49();
}

uint64_t RefreshableDeviceState.isEyesFree.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isVoiceTriggerEnabled.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.interactionType.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DCB66024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1DCB4D8F4(a4, a5);
  sub_1DD0DE26C();
  sub_1DD0DE26C();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_33(v13, v7, v11);
  }

  return v9 & 1;
}

uint64_t RefreshableDeviceState.inputOrigin.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t DeviceState.userAssignedDeviceName.getter()
{
  if (qword_1EDE49020 != -1)
  {
    OUTLINED_FUNCTION_10_25();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

void *sub_1DCB6622C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDE48290)
  {
    v2 = qword_1EDE48288;
    v3 = qword_1EDE48290;
LABEL_9:
    *a1 = v2;
    a1[1] = v3;
  }

  result = MGGetStringAnswer();
  if (result)
  {
    v5 = result;
    v2 = sub_1DD0DDFBC();
    v3 = v6;

    if (!qword_1EDE489E0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42A0, &qword_1DD0EB720);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DD0E07C0;
      *(v7 + 32) = @"UserAssignedDeviceName";
      v8 = @"UserAssignedDeviceName";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42A8, &qword_1DD0EB728);
      v9 = sub_1DD0DE2DC();

      if (qword_1EDE49020 != -1)
      {
        OUTLINED_FUNCTION_10_25();
        swift_once();
      }

      v12[4] = sub_1DCCDF704;
      v12[5] = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1DCCDF718;
      v12[3] = &block_descriptor_4;
      v10 = _Block_copy(v12);
      v11 = MGRegisterForUpdates();
      _Block_release(v10);

      qword_1EDE489E0 = v11;
    }

    qword_1EDE48288 = v2;
    qword_1EDE48290 = v3;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t RefreshableDeviceState.isHeadGestureRecognitionAvailable.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t sub_1DCB6656C()
{
  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void sub_1DCB665D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v18 - v14;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_1DCB17D04(a1, v19);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a6;
  v17[5] = a4;
  v17[6] = a5;
  sub_1DCAFF9E8(v19, (v17 + 7));
  v17[12] = a2;
  v17[13] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB66710()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 56));

  return swift_deallocObject();
}

uint64_t AceServiceInvokerAsync.submit<A>(_:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_31_0(v5);
  v7 = OUTLINED_FUNCTION_96_5();

  return v8(v7);
}

void OUTLINED_FUNCTION_110_2(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 48);
}

void OUTLINED_FUNCTION_110_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a4;
  v5[52] = a5;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;

  sub_1DD0DCC3C();
}

id OUTLINED_FUNCTION_110_6()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_110_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1DCB66938()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_107_0();

  return sub_1DCB66A78(v6, v7, v8, v9, v10, v11, v1, v2);
}

void OUTLINED_FUNCTION_121_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1DCBC546C(va, v5, v4, v2, v3);
}

void OUTLINED_FUNCTION_121_4()
{

  sub_1DD0221C4(v0);
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return sub_1DD0768E0(v0, v2 + v1);
}

uint64_t sub_1DCB66A78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[5] = a7;
  sub_1DCB66C54();
  v11 = sub_1DD0DF22C();
  v8[8] = v11;
  v8[9] = *(v11 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = *(v17 - 8);
  v12 = swift_task_alloc();
  v8[12] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[13] = v13;
  *v13 = v8;
  v13[1] = sub_1DCB6DA78;

  return v15(v12, a6);
}

unint64_t sub_1DCB66C54()
{
  result = qword_1EDE48E40[0];
  if (!qword_1EDE48E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE48E40);
  }

  return result;
}

uint64_t sub_1DCB66CA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_11(v1);

  return sub_1DCB66D38(v3, v4, v5, v6);
}

uint64_t sub_1DCB66D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB66D5C, 0, 0);
}

uint64_t sub_1DCB66D5C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_70_1(*(v0 + 24));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_140(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43_4(v2);

  return AceServiceInvokerAsync.submit<A>(_:)();
}

double sub_1DCB66E20@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v1 + 112, &v10, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v11)
  {
    sub_1DCB18FF0(&v10, a1);
  }

  else
  {
    sub_1DCB16D50(&v10, &qword_1ECCA54E8, &unk_1DD0F2080);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    v7 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_5_109();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Siri suggestions (async) has not been initialized in time. Ensure that setInstance (async) has been called by the runtime prior to getting any client instance", v9, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DCB66F7C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  return sub_1DCB67054(v2, v0 + v6, v3, v4);
}

uint64_t sub_1DCB67054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 40) + **(a4 + 40));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DCB4AE1C;

  return v10(a1, a3, a4);
}

void SiriCorrectionsClientProvider.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_105(a1, a2, a3, a4, a5, a6, a7, a8, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SiriEnvironment.correctionsClientProvider.setter()
{
  type metadata accessor for SiriCorrectionsClientProvider();
  OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);
  OUTLINED_FUNCTION_20();

  sub_1DD0DCA8C();
}

uint64_t sub_1DCB672F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriCorrectionsClientProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SiriEnvironment.correctionsClientProvider.getter()
{
  type metadata accessor for SiriCorrectionsClientProvider();
  OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCB673A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SiriCorrectionsClientProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_2(v1);
  OUTLINED_FUNCTION_150();

  return v6(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCB67618@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;
}

void OutputGenerationManifest.init(dialogPhase:_:)(uint64_t *a1@<X0>, void *a3@<X8>)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_13_49();
  v23 = a1[1];
  v24 = *a1;
  v7 = type metadata accessor for OutputGenerationManifest(0);
  *(a3 + v7[6]) = 0;
  *(a3 + v7[7]) = 0;
  *(a3 + v7[9]) = 256;
  *(a3 + v7[11]) = 0;
  v8 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = (a3 + v7[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a3 + v7[15]);
  *v13 = 0;
  v13[1] = 0;
  *(a3 + v7[16]) = 0;
  *(a3 + v7[18]) = 0;
  v14 = a3 + v7[19];
  *v14 = 0;
  *(v14 + 4) = 512;
  *(a3 + v7[20]) = 0;
  *(a3 + v7[21]) = 0;
  *(a3 + v7[22]) = 0;
  *(a3 + v7[23]) = 0;
  *(a3 + v7[24]) = 0;
  *(a3 + v7[25]) = 0;
  v15 = (a3 + v7[26]);
  *v15 = 0;
  v15[1] = 0;
  *(a3 + v7[27]) = 0;
  *(a3 + v7[28]) = MEMORY[0x1E69E7CC0];
  v16 = v7[29];
  v17 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v18 + 104))(a3 + v16, v17);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *(a3 + v7[31]) = 2;
  *a3 = v24;
  a3[1] = v23;
  sub_1DCB67914();
}

void sub_1DCB67914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1DD0DCA6C();
}

uint64_t OutputGenerationManifest.canUseServerTTS.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t OutputGenerationManifest.listenAfterSpeaking.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t RefreshableDeviceState.isDirectAction.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t sub_1DCB67B88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB67C88()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v0[12] = v1;
  v0[13] = v2;
  v0[4] = v1;
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1DCB6BE28;

  return sub_1DCB67D30();
}

uint64_t sub_1DCB67D30()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  v5 = type metadata accessor for OutputGenerationManifest(0);
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_20_0(v5);
  *(v0 + 40) = OUTLINED_FUNCTION_38();
  *(v0 + 48) = *v2;
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCB67DB8()
{
  v59 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DCB68600(v2, v1);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  v57 = v0;
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_151();
    v58[0] = OUTLINED_FUNCTION_83();
    *v8 = 136315138;
    OutputGenerationManifest.description.getter();
  }

  sub_1DCB6970C(v7);
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[7];
  v55 = *(v9 + v10[8]);
  v56 = *(v9 + v10[10]);
  v12 = v9[1];
  v58[0] = *v9;
  v58[1] = v12;
  v13 = (v9 + v10[14]);
  v53 = v13[1];
  v54 = *v13;
  v14 = *(v9 + v10[20]);
  v15 = *(v9 + v10[22]);
  if (v11)
  {
    v16 = v0[6];
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  v18 = (v9 + v10[17]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v9 + v10[26]);
  v22 = *v21;
  v23 = v21[1];

  v24 = OutputGenerationManifest.getRequestEndBehavior()();
  v25 = sub_1DCB6981C(v56, v55, v58, v54, v53, v14, v15, v16, v19, v20, v22, v23, v24);

  v26 = sub_1DCB6BDAC(v25);
  if (!v26)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v27 = sub_1DCB08B14(v26);

  v28 = v57;
  if (!v27)
  {
    v29 = v57[2];
    v30 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v57[2];
      v33 = OUTLINED_FUNCTION_151();
      v34 = OUTLINED_FUNCTION_83();
      v58[0] = v34;
      *v33 = 136315138;
      v35 = [v32 patternId];
      v36 = sub_1DD0DDFBC();
      v38 = v37;

      v39 = sub_1DCB10E9C(v36, v38, v58);
      v28 = v57;

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1DCAFC000, v30, v31, "ResponseFactory: Pattern '%s' generated an AddViews with no views. If this is not expected check CAT execution to ensure it was successful. Sending downstream anyway for logging, testing, etc.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  v25 = v25;
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  if (!OUTLINED_FUNCTION_75(v41))
  {

    goto LABEL_20;
  }

  v42 = swift_slowAlloc();
  v58[0] = swift_slowAlloc();
  *v42 = 136315906;
  v43 = sub_1DCB6BE1C(v25);
  if (!v44)
  {
    goto LABEL_24;
  }

  sub_1DCB10E9C(v43, v44, v58);
  OUTLINED_FUNCTION_74_19();
  *(v42 + 4) = v28;
  *(v42 + 12) = 2048;
  v45 = sub_1DCB6BDAC(v25);
  if (!v45)
  {
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  sub_1DCB08B14(v45);
  OUTLINED_FUNCTION_74_19();

  *(v42 + 14) = v28;
  *(v42 + 22) = 2080;
  v46 = sub_1DCB35468(v25, &selRef_patternId);
  v48 = v47;

  if (!v48)
  {
LABEL_26:

    __break(1u);
    goto LABEL_27;
  }

  sub_1DCB10E9C(v46, v48, v58);
  OUTLINED_FUNCTION_74_19();
  *(v42 + 24) = v28;
  *(v42 + 32) = 2080;
  v49 = sub_1DCB35468(v25, &selRef_patternType);
  v51 = v50;

  if (!v51)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_1DCB10E9C(v49, v51, v58);
  OUTLINED_FUNCTION_74_19();
  *(v42 + 34) = v28;
  _os_log_impl(&dword_1DCAFC000, v40, v41, "ResponseFactory: Built SAUIAddViews aceId=%s views.count=%ld patternId=%s patternType=%s", v42, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();

  v28 = v57;
LABEL_20:

  v52 = v28[1];

  v52(v25);
}

uint64_t OUTLINED_FUNCTION_146()
{

  return sub_1DD0DD8FC();
}

void OUTLINED_FUNCTION_146_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB68330()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v0[8] = v3;
  v0[9] = v1;
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1DCB6C344;

  return sub_1DCB683D8(v4, v2);
}

uint64_t sub_1DCB683D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[8] = a2;
  v3[9] = v4;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t storeEnumTagSinglePayload for DialogPhase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCB6845C()
{
  OUTLINED_FUNCTION_42();
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1DCFF2790;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v2 = sub_1DCB68584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCB68584()
{
  OUTLINED_FUNCTION_42();
  (*(v0[18] + 8))(v0[19], v0[17]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB68600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputGenerationManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void initializeWithCopy for OutputGenerationManifest(char *a1, char *a2, int *a3)
{
  v3 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v3;
  sub_1DD0DCC3C();
}

void OutputGenerationManifest.description.getter()
{
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  v7[2] = v7 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7[6] = 0;
  v7[7] = 0xE000000000000000;
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_15_48();
  MEMORY[0x1E12A6780](0x676F6C616964203ALL, 0xEE003D6573616850);
  v6 = v0[1];
  v7[4] = *v0;
  v7[5] = v6;
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x736E6F7073657220, 0xEE003D65646F4D65);
  type metadata accessor for OutputGenerationManifest(0);
  sub_1DD0DCC1C();
}

void *sub_1DCB69698(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

unint64_t sub_1DCB696C8()
{
  result = qword_1EDE460A0;
  if (!qword_1EDE460A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460A0);
  }

  return result;
}

uint64_t sub_1DCB6970C(uint64_t a1)
{
  v2 = type metadata accessor for OutputGenerationManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OutputGenerationManifest.getRequestEndBehavior()()
{
  v1 = 0;
  v2 = *(v0 + *(type metadata accessor for OutputGenerationManifest(0) + 76) + 8);
  if ((v2 & 0xFF00) != 0x200)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69C7B98]) init];
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_1DD0DE5BC();
    }

    [v1 setMinimumAutoDismissalTimeInMs_];

    [v1 setPremptivelyResumeMedia_];
  }

  return v1;
}

id sub_1DCB6981C(int a1, int a2, uint64_t a3, uint64_t a4, uint8_t *a5, int a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v194 = a8;
  LODWORD(v14) = a7;
  LODWORD(v15) = a6;
  v202 = a5;
  v191 = a4;
  v192 = a2;
  v205 = a1;
  v17 = sub_1DD0DB04C();
  v200 = *(v17 - 8);
  v201 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v199 = v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = *(a3 + 8);
  if (qword_1EDE4F900 != -1)
  {
LABEL_83:
    swift_once();
  }

  v197 = v20;
  v187[1] = a11;
  v190 = a10;
  v189 = a9;
  v22 = sub_1DD0DD8FC();
  v23 = __swift_project_value_buffer(v22, qword_1EDE57E00);
  v24 = v13;
  v203 = v23;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  v27 = os_log_type_enabled(v25, v26);
  v20 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v206 = v24;
  v198 = v15;
  v196 = v21;
  v193 = v14;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    v29 = sub_1DCB6A848(v24);
    if (v30 >> 60 == 15)
    {
      v31 = 0;
    }

    else
    {
      v32 = v29;
      v33 = v30;
      v31 = MEMORY[0x1E12A3590]();
      sub_1DCB2C520(v32, v33);
    }

    *(v28 + 4) = v31;
    v24 = v206;

    *(v28 + 12) = 2048;
    v34 = [v24 dialog];
    sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
    v35 = sub_1DD0DE2EC();

    v36 = sub_1DCB08B14(v35);

    *(v28 + 14) = v36;

    _os_log_impl(&dword_1DCAFC000, v25, v26, "ResponseFactory: Building AddViews with %ld visual bytes and %ld dialogs", v28, 0x16u);
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v25 = v24;
  }

  v195 = a13;
  v188 = a12;

  v37 = MEMORY[0x1E69E7CC0];
  v208 = MEMORY[0x1E69E7CC0];
  v38 = [v24 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
  v39 = sub_1DD0DE2EC();

  v204 = v37;
  v207[0] = v37;
  v21 = sub_1DCB08B14(v39);
  v14 = 0;
  v40 = v39 & 0xC000000000000001;
  while (v21 != v14)
  {
    sub_1DCB35460(v14, v40 == 0, v39);
    if (v40)
    {
      v41 = MEMORY[0x1E12A72C0](v14, v39);
    }

    else
    {
      v41 = *(v39 + 8 * v14 + 32);
    }

    v13 = v41;
    v42 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    v43 = [v206 meta];
    v20 = sub_1DD0DDE6C();

    v44 = sub_1DCB6B180(0x79726F6765746163, 0xE800000000000000, v20);
    v15 = v45;

    v46 = sub_1DCB6B1C8(v205 & 1, 0, v44, v15);

    ++v14;
    if (v46)
    {
      MEMORY[0x1E12A6920](v47);
      if (*((v207[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v207[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v204 = v207[0];
      v14 = v42;
    }
  }

  v48 = v206;
  v49 = sub_1DCB6A848(v206);
  if (v50 >> 60 != 15)
  {
    if (!sub_1DCB6A8AC(v49, v50))
    {
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v64))
      {
        v65 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v65);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_62();
      }

      v71 = [v48 visualInfo];
      v72 = [v71 visualLocation];

      v73 = sub_1DCB6A910(v72);
      v75 = v74;

      v76 = sub_1DD0DD8EC();
      v77 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v207[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_1DCB10E9C(v73, v75, v207);
        _os_log_impl(&dword_1DCAFC000, v76, v77, "ResponseFactory: VisualLocation is set to %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_62();
      }

      v80 = v190;
      v81 = [objc_allocWithZone(MEMORY[0x1E69C7BF0]) init];
      v82 = v199;
      sub_1DD0DB03C();
      v83 = sub_1DD0DAFFC();
      v85 = v84;
      (*(v200 + 8))(v82, v201);
      sub_1DCB4D8E8(v83, v85, v81);
      v61 = v81;
      sub_1DCB6B9B8(v189, v80, v61);
      sub_1DCB2C534(v73, v75, v61, &selRef_setItemType_);
      v86 = OUTLINED_FUNCTION_68_1();
      sub_1DCB6BA10(v86, v87, v61);
      if (v188)
      {
        v88 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
        v89 = sub_1DD0DDF8C();
        [v88 setApplicationBundleIdentifier_];

        v90 = v88;
        [v61 setSash_];
        v91 = OUTLINED_FUNCTION_68_1();
        sub_1DCB2C520(v91, v92);
      }

      else
      {

        v93 = OUTLINED_FUNCTION_68_1();
        sub_1DCB2C520(v93, v94);
      }

      v48 = v206;
      v62 = v198;
      if ((v192 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v51 = OUTLINED_FUNCTION_68_1();
    sub_1DCB2C520(v51, v52);
  }

  v53 = sub_1DD0DD8EC();
  v54 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v54))
  {
    v55 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v55);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_62();
  }

  v61 = 0;
  v62 = v198;
  if ((v192 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  v95 = sub_1DD0DD8EC();
  v96 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v96))
  {
    v97 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v97);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v98, v99, v100, v101, v102, 2u);
    OUTLINED_FUNCTION_62();
  }

  v103 = v204;
  if (sub_1DCB08B14(v204))
  {
    v104 = sub_1DCB6BA68(v103);
    if (!v104)
    {
      goto LABEL_45;
    }

    v105 = v104;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v106 = sub_1DD0DE8CC();
    [v105 setListenAfterSpeaking_];
  }

  else
  {
    v107 = sub_1DD0DD8EC();
    v108 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v108))
    {
      v109 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v109);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v110, v111, v112, v113, v114, 2u);
      OUTLINED_FUNCTION_62();
    }

    if (v61)
    {
      sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
      v115 = v61;
      v106 = sub_1DD0DE8CC();
      [v115 setListenAfterSpeaking_];
    }

    else
    {
      v106 = sub_1DD0DD8EC();
      v116 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v116))
      {
        v117 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v117);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v118, v119, v120, v121, v122, 2u);
        OUTLINED_FUNCTION_62();
      }
    }
  }

LABEL_45:
  v123 = v204;

  v124 = sub_1DD0DD8EC();
  v125 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 134217984;
    *(v126 + 4) = sub_1DCB08B14(v123);

    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
    OUTLINED_FUNCTION_62();
  }

  else
  {
  }

  v132 = v202;
  if (v123 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v133 = sub_1DD0DEE0C();
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
    v133 = v123;
  }

  sub_1DCB673E0(v133);
  if (v61)
  {
    v134 = v61;
    MEMORY[0x1E12A6920]();
    if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  if (!v132)
  {
    v144 = sub_1DD0DD8EC();
    v145 = sub_1DD0DE6DC();
    v146 = OUTLINED_FUNCTION_22(v145);
    v147 = v197;
    if (v146)
    {
      v148 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v148);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v149, v150, v151, v152, v153, 2u);
      OUTLINED_FUNCTION_62();
    }

    goto LABEL_69;
  }

  v135 = sub_1DD0DD8EC();
  v136 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v207[0] = swift_slowAlloc();
    *v137 = 136315394;
    *(v137 + 4) = sub_1DCB10E9C(v191, v132, v207);
    *(v137 + 12) = 2080;
    swift_beginAccess();
    v138 = v208;
    if (sub_1DCB08B14(v208))
    {
      sub_1DCB35460(0, (v138 & 0xC000000000000001) == 0, v138);
      if ((v138 & 0xC000000000000001) != 0)
      {

        v139 = MEMORY[0x1E12A72C0](0, v138);
      }

      else
      {
        v139 = *(v138 + 32);
      }

      v140 = [v139 description];

      v141 = sub_1DD0DDFBC();
      v143 = v142;
    }

    else
    {
      v143 = 0xE500000000000000;
      v141 = 0x3E6C696E3CLL;
    }

    v154 = sub_1DCB10E9C(v141, v143, v207);

    *(v137 + 14) = v154;
    _os_log_impl(&dword_1DCAFC000, v135, v136, "ResponseFactory: Setting correspondingSessionID to %s on view %s", v137, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    v48 = v206;
    v132 = v202;
  }

  else
  {
  }

  swift_beginAccess();
  v155 = v208;
  v156 = sub_1DCB08B14(v208);
  v147 = v197;
  if (v156)
  {
    sub_1DCB35460(0, (v155 & 0xC000000000000001) == 0, v155);
    if ((v155 & 0xC000000000000001) != 0)
    {

      v144 = MEMORY[0x1E12A72C0](0, v155);
    }

    else
    {
      v144 = *(v155 + 32);
    }

    sub_1DCF7766C(v191, v132, v144);
LABEL_69:
  }

  swift_beginAccess();
  v157 = v208;
  if (sub_1DCB08B14(v208))
  {
    sub_1DCB35460(0, (v157 & 0xC000000000000001) == 0, v157);
    if ((v157 & 0xC000000000000001) != 0)
    {

      v158 = MEMORY[0x1E12A72C0](0, v157);
    }

    else
    {
      v158 = *(v157 + 32);
    }
  }

  else
  {
    v158 = 0;
  }

  [v158 setPreserveResultSpaceIfPossible_];

  if (v194)
  {
    v159 = v194;
    v160 = sub_1DD0DD8EC();
    v161 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v162);
      _os_log_impl(&dword_1DCAFC000, v160, v161, "ResponseFactory v1.0: Adding a suggestion Space Snippet to Response.", v132, 2u);
      OUTLINED_FUNCTION_62();
    }

    v163 = swift_beginAccess();
    MEMORY[0x1E12A6920](v163);
    sub_1DCBBF95C();
    sub_1DD0DE3AC();
    swift_endAccess();
  }

  v164 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v165 = v199;
  sub_1DD0DB03C();
  v166 = sub_1DD0DAFFC();
  v168 = v167;
  (*(v200 + 8))(v165, v201);
  sub_1DCB4D8E8(v166, v168, v164);

  sub_1DCB6BB04(v147, v196, v164);
  v169 = [v48 patternId];
  sub_1DD0DDFBC();

  v170 = OUTLINED_FUNCTION_5_76();
  sub_1DCB2C534(v170, v171, v172, v173);
  v174 = [objc_opt_self() patternNameFromType_];
  sub_1DD0DDFBC();

  v175 = OUTLINED_FUNCTION_5_76();
  sub_1DCB2C534(v175, v176, v177, v178);
  v179 = [v48 responseMode];
  sub_1DD0DDFBC();

  v180 = OUTLINED_FUNCTION_5_76();
  sub_1DCB6BB5C(v180, v181, v182);

  sub_1DCB6BBC0(v183, v164);
  [v164 setImmersiveExperience_];
  v184 = sub_1DCB6BC44(MEMORY[0x1E69E7CC0]);
  sub_1DCB6BD3C(v184, v164);
  if (v195)
  {
    v185 = v195;
    [v164 setRequestEndBehavior_];
  }

  else
  {
  }

  return v164;
}

uint64_t sub_1DCB6A848(void *a1)
{
  v1 = [a1 visual];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

BOOL sub_1DCB6A8AC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1DCB6A940()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[7];
  v0[6] = MEMORY[0x1E69E7CC0];
  v2 = [v1 patternId];
  sub_1DD0DDFBC();
  v4 = v3;

  v0[10] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v5;
  *v5 = v6;
  v5[1] = sub_1DCB67B88;
  OUTLINED_FUNCTION_60_17();

  return sub_1DCB6AA14();
}

uint64_t sub_1DCB6AA14()
{
  OUTLINED_FUNCTION_42();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v0[16] = swift_task_alloc();
  v5 = sub_1DD0DB04C();
  v0[17] = v5;
  v0[18] = *(v5 - 8);
  v0[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB6AB0C, 0, 0);
}

void sub_1DCB6AB0C()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for OutputGenerationManifest(0);
  *(v0 + 160) = v2;
  v3 = *(v1 + *(v2 + 52));
  if (v3)
  {
    v4 = sub_1DCB08B14(v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 232) = v4;
  if (*(v0 + 120))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
  }

  else
  {
    v5 = *(v0 + 104);
    v8 = (v5 + *(v2 + 60));
    v6 = *v8;
    v7 = v8[1];
  }

  *(v0 + 168) = v6;
  *(v0 + 176) = v7;
  *(v0 + 184) = *v5;
  *(v0 + 192) = v5[1];
  sub_1DD0DCA6C();
}

uint64_t sub_1DCB6AE64()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB66E20(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCB6AECC, 0, 0);
}

uint64_t sub_1DCB6AECC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v11 = *(v0 + 176);
    v5 = *(v0 + 232);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    *(v0 + 56) = v3;
    *(v0 + 64) = v2;
    *(v0 + 72) = v5;
    *(v0 + 80) = v4;
    *(v0 + 88) = v11;
    v12 = *(v6 + 40) + **(v6 + 40);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_1DCB6845C;

    __asm { BRAA            X8, X16 }
  }

  v8 = *(v0 + 96);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  swift_bridgeObjectRelease_n();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA54E8, &unk_1DD0F2080);
  *v8 = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t SuggestionContextData.patternId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SuggestionContextData.dialogPhase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DCB6B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DCB21038(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_11(v4);
  return v3;
}

id sub_1DCB6B1C8(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v62[1] = a3;
  v66 = a2;
  v67 = a1;
  v7 = sub_1DD0DB04C();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v11 = [v4 fullSpeak];
  sub_1DD0DDFBC();

  v12 = [v4 supportingSpeak];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_2_76();
  v14 = v13;

  if (v14)
  {
    v15 = sub_1DD0DDF8C();
  }

  else
  {
    v15 = 0;
  }

  [v10 setSpeakableText_];

  v16 = [v5 fullPrint];
  sub_1DD0DDFBC();

  v17 = [v5 supportingPrint];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_2_76();
  v19 = v18;

  if (v19)
  {
    v20 = sub_1DD0DDF8C();
  }

  else
  {
    v20 = 0;
  }

  [v10 setText_];

  sub_1DCB696C8();
  v21 = [v5 printOnly];
  v22 = sub_1DD0DE8CC();
  v23 = sub_1DD0DE8EC();

  if (v23)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v24 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v24, qword_1EDE57E00);
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v25, v26))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v27, v28, "ResponseFactory: The printOnly flag is set to 1. Removing speakable text.");
      OUTLINED_FUNCTION_80();
    }

    [v10 setSpeakableText_];
  }

  v29 = [v5 spokenOnly];
  v30 = sub_1DD0DE8CC();
  v31 = sub_1DD0DE8EC();

  if (v31)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v35, v36, "ResponseFactory: The spokenOnly flag is set to 1. Removing printed text.");
      OUTLINED_FUNCTION_80();
    }

    [v10 setText_];
  }

  if (sub_1DCB6B8AC())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v37 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v37, qword_1EDE57E00);
    v38 = v5;
    v39 = sub_1DD0DD8EC();
    v40 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      v68 = v62[0];
      *v41 = 136315138;
      v42 = [v38 dialogId];
      v43 = sub_1DD0DDFBC();
      v44 = v5;
      v45 = v10;
      v46 = a4;
      v48 = v47;

      v49 = sub_1DCB10E9C(v43, v48, &v68);
      a4 = v46;
      v10 = v45;
      v5 = v44;

      *(v41 + 4) = v49;
      _os_log_impl(&dword_1DCAFC000, v39, v40, "ResponseFactory: .text and .speakableText are empty for dialog '%s'. Sending downstream anyway for logging, testing, etc.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62[0]);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  v50 = v10;
  v51 = v63;
  sub_1DD0DB03C();
  v52 = sub_1DD0DAFFC();
  v54 = v53;
  (*(v64 + 8))(v51, v65);
  sub_1DCB4D8E8(v52, v54, v50);

  v55 = sub_1DD0DE8CC();
  [v50 setListenAfterSpeaking_];

  v56 = [v5 dialogId];
  v57 = sub_1DD0DDFBC();
  v59 = v58;

  sub_1DCB6B954(v57, v59, v50);
  [v50 setCanUseServerTTS_];

  if (a4)
  {
    v60 = sub_1DD0DDF8C();
  }

  else
  {
    v60 = 0;
  }

  [v50 setDialogCategory_];

  return v50;
}

uint64_t sub_1DCB6B83C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a3;
  if (!v6)
  {
    return 0;
  }

LABEL_7:

  return v4;
}

BOOL sub_1DCB6B8AC()
{
  v1 = sub_1DCB35468(v0, &selRef_text);
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = sub_1DCB35468(v0, &selRef_speakableText);
  if (!v8)
  {
    return 1;
  }

  v9 = v7;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

void sub_1DCB6B954(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogIdentifier_];
}

void sub_1DCB6B9B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setViewId_];
}

void sub_1DCB6BA10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setModelData_];
}

id sub_1DCB6BA68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_1DCB08B14(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1DCB35460(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x1E12A72C0](v4, a1);
  }

  result = sub_1DD0DEB3C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1DCB6BB04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogPhase_];
}

void sub_1DCB6BB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setResponseMode_];
}

void sub_1DCB6BBC0(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  v3 = sub_1DD0DE2DC();

  [a2 setViews_];
}

uint64_t sub_1DCB6BC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_21();
    sub_1DCE06B08();
    v2 = v8;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v8 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1DCE06B08();
        v2 = v8;
      }

      *(v2 + 16) = v5 + 1;
      sub_1DCB20B30(&v7, (v2 + 32 * v5 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DCB6BD3C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setCoordinationOptions_];
}

uint64_t sub_1DCB6BDAC(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCB6BE28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  *(v2 + 120) = v1;
  *(v2 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DCF5D7FC;
  }

  else
  {
    v3 = sub_1DCB6BF34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCB6BF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_25();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  v23 = *(v20 + 120);
  if (v23)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v24 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v24, qword_1EDE57E00);
    v25 = v23;
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_151();
      v29 = OUTLINED_FUNCTION_83();
      a10 = v29;
      *v28 = 136315138;
      v30 = sub_1DCB6BE1C(v25);
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v30 = 0x3E6C696E3CLL;
        v32 = 0xE500000000000000;
      }

      v33 = sub_1DCB10E9C(v30, v32, &a10);

      *(v28 + 4) = v33;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v34, v35, "ResponseFactory: Adding response command aceId: %s to response Output");
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    MEMORY[0x1E12A6920]();
    if (*((*(v20 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  v36 = *(v20 + 64);
  if (*(v36 + *(type metadata accessor for OutputGenerationManifest(0) + 52)))
  {

    sub_1DCBB920C(v37);
  }

  v38 = *(v20 + 104);
  if (v38)
  {
    if (sub_1DCB08B14(*(v20 + 104)))
    {
      v39 = qword_1EDE4F900;

      if (v39 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v40 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v40, qword_1EDE57E00);

      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v42))
      {
        v43 = OUTLINED_FUNCTION_151();
        *v43 = 134217984;
        *(v43 + 4) = sub_1DCB08B14(v38);

        OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v44, v45, "Adding additional %ld hint commands");
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      sub_1DCBB920C(v38);
    }

    sub_1DCBBF7D0(*(v20 + 96), *(v20 + 104));
  }

  OUTLINED_FUNCTION_96_0();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_239()
{

  JUMPOUT(0x1E12A66E0);
}

uint64_t OUTLINED_FUNCTION_90_1()
{
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_90_4(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

unint64_t OUTLINED_FUNCTION_90_5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1DCB10E9C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_90_6(uint64_t result)
{
  v2 = *(v1 - 128);
  *(result + 16) = *(v1 - 120);
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = result;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = a4;
  return result;
}

void OUTLINED_FUNCTION_90_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_90_12()
{
  *(v1 + 16) = v0;

  return v0;
}

uint64_t sub_1DCB6C344()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 88) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1DCB6C478, 0, 0);
  }
}

uint64_t sub_1DCB6C478()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(type metadata accessor for OutputGenerationManifest(0) + 48);
  v6 = type metadata accessor for AceOutput(0);
  v4[3] = v6;
  v4[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v4);
  sub_1DCB09910(v2 + v5, boxed_opaque_existential_1Tm + v6[7], &unk_1ECCA3270, &qword_1DD0E0F70);
  *&v8 = OUTLINED_FUNCTION_22_37();
  *(v0 + 16) = v8;
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v6[8];
  v14 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v15 + 104))(boxed_opaque_existential_1Tm + v13, v14);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  v16 = v3;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v6[10]) = 0;
  *boxed_opaque_existential_1Tm = v1;
  boxed_opaque_existential_1Tm[1] = v16;
  *(boxed_opaque_existential_1Tm + 80) = 1;
  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t sub_1DCB6C5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActiveCallCheckFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DCB6C90C()
{
  result = qword_1EDE46368;
  if (!qword_1EDE46368)
  {
    sub_1DD0DCC3C();
  }

  return result;
}

uint64_t dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginInputTime<A>(rcId:hypothesisId:_:)()
{
  OUTLINED_FUNCTION_17_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_22(v1);

  return v4(v3);
}

void SiriEnvironment.sessionConfigurationProvider.getter()
{
  type metadata accessor for SessionConfigurationProvider();
  OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);

  sub_1DD0DCA7C();
}

void sub_1DCB6CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_80_10();
  sub_1DCB099BC(v8, v7, &qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v9, v10, v11, &protocol conformance descriptor for UserIdentityProvider);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB6CC60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for UserIdentityProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void sub_1DCB6CD14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEF0, &unk_1DD10D528);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v2, v3, v4, &protocol conformance descriptor for UserIdentityProvider);
  sub_1DD0DCF8C();
}

void SiriEnvironment.nlRoutingDecision.getter()
{
  type metadata accessor for NLRoutingDecisionProvider();
  OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);

  sub_1DD0DCA7C();
}

void SiriEnvironment.flowRedirectContextProvider.setter(uint64_t a1)
{
  type metadata accessor for FlowRedirectContextProvider();
  OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);

  sub_1DD0DCA8C();
}

void FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  OUTLINED_FUNCTION_18_3();
  swift_allocObject();
  FlowTaskProvider.init(id:isClientInitiated:creationTime:)(a1, a2, v5, a4);
}

void sub_1DCB6CF38(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void *sub_1DCB6D03C(void *a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v43 = a3;
  v44 = a6;
  v45 = a5;
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = sub_1DD0DB04C();
  v41 = *(v12 - 8);
  v42 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4208, &qword_1DD0EB1E0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v41 - v22;
  v24 = sub_1DD0DB3BC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_allocWithZone(MEMORY[0x1E69CE980]) init];
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  if (a2 != 2 && v46 && v45 != 2)
  {
    v32 = a2 & 1;
    v33 = v45;
    [v29 setIsExistingFlowSelected_];
    [v30 setIsInterpretableAsUniversalCommand_];
    sub_1DCB6D474(v43, v46, v30);
    sub_1DCB099BC(v44, v23, &qword_1ECCA4208, &qword_1DD0EB1E0);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      v34 = &qword_1ECCA4208;
      v35 = &qword_1DD0EB1E0;
      v36 = v23;
    }

    else
    {
      (*(v25 + 32))(v28, v23, v24);
      sub_1DD0DB7CC();
      v37 = v42;
      if (__swift_getEnumTagSinglePayload(v11, 1, v42) != 1)
      {
        v38 = v41;
        (*(v41 + 32))(v19, v11, v37);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v38 + 16))(v16, v19, v37);
        v39 = sub_1DCB0DEDC(v16);
        [v30 setParseHypothesisId_];

        (*(v38 + 8))(v19, v37);
        (*(v25 + 8))(v28, v24);
        goto LABEL_14;
      }

      (*(v25 + 8))(v28, v24);
      v34 = &qword_1ECCA2618;
      v35 = &unk_1DD0E5C50;
      v36 = v11;
    }

    sub_1DCB0E9D8(v36, v34, v35);
    [v30 setParseHypothesisId_];
LABEL_14:
    [a1 setDecisionEngineResponseReported_];

    v40 = a1;
    return a1;
  }

  return 0;
}

void sub_1DCB6D474(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setFlowHandlerId_];
}

uint64_t dispatch thunk of ConversationSELFHelper.withExecutionCommitTime<A>(rcId:hypothesisId:_:)()
{
  OUTLINED_FUNCTION_17_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_22(v1);

  return v4(v3);
}

void *sub_1DCB6D608(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void sub_1DCB6D640(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  sub_1DCB0D344();
  if (v11 && (v12 = v11, v31 = sub_1DCB6D03C(v11, a5, a1, a2, a4, a3), v12, v31))
  {
    (*(v5 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57DA0);
    v32 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v14, v15, v16, v17, v18, v19, v20, v21, v29, v32))
    {
      v22 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v22);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v23, v24, "[ConversationSELFHelper] decisionEngineReported failed to be emitted", v25, v26, v27, v28, v30, v31);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

uint64_t sub_1DCB6D758()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_41_12(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 584) = __swift_project_value_buffer(a9, a2);

  return sub_1DD0DD8EC();
}

uint64_t OUTLINED_FUNCTION_100_7(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + *(v13 + 124)) = 2;
  *v12 = a11;
  v12[1] = v11;
}

unint64_t OUTLINED_FUNCTION_100_10(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2 | 0xEE00293A5F3A0000;

  return sub_1DCB10E9C(a1, v4, (v2 - 96));
}

uint64_t sub_1DCB6D900()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_53_0();

    return v8();
  }

  else
  {
    *(v4 + 56) = v0;
    v10 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DCB6DA20(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCB6DECC(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB6DA78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t SubmitCommandError.description.getter()
{
  v1 = *v0;
  result = 0x707365526C696E2ELL;
  switch(*(v0 + 8))
  {
    case 1:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v10 = v5 | 1;
      v6 = [v1 description];
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_133();
      v10 = v7;
      v6 = [v1 description];
LABEL_5:
      v8 = v6;
      sub_1DD0DDFBC();

      v9 = OUTLINED_FUNCTION_131();
      MEMORY[0x1E12A6780](v9);
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v10 = v3;
      swift_getErrorValue();
      v4 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v4);
LABEL_6:

      return v10;
  }
}

uint64_t sub_1DCB6DCF4()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 112);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 40);
  if (v3)
  {

    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *v5 = v7;
    *(v5 + 8) = v8;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    sub_1DCB6DECC(v7, v8);
    v6(v5);
    sub_1DCB6DE90(v7, v8);
    v9 = OUTLINED_FUNCTION_20();
    v10(v9);
  }

  else
  {

    *v5 = v4;
    *(v5 + 8) = 0;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    v11 = v4;
    v6(v5);

    v12 = OUTLINED_FUNCTION_20();
    v13(v12);
  }

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1DCB6DE90(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_1DCB6DEB4(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

id sub_1DCB6DECC(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SubmitCommandError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCB6DF34(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DCB6DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AceOutput(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB6DFD4()
{
  v19 = v0;
  v1 = v0[202];
  memcpy(v0 + 152, (v1 + 8), 0x49uLL);
  memcpy(__dst, (v1 + 8), 0x49uLL);
  sub_1DCB41F3C((v0 + 152), (v0 + 162));
  v2 = sub_1DCB6F140();
  memcpy(v0 + 142, __dst, 0x49uLL);
  sub_1DCB431E0((v0 + 142));
  if (v2)
  {
    if ([objc_allocWithZone(MEMORY[0x1E69CF4B0]) init])
    {
      if ([objc_allocWithZone(MEMORY[0x1E69CF4B8]) init])
      {
        v3 = v0[210];
        v4 = v0[206];
        v5 = v0[205];
        v6 = v0[203];
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v7 = v5;
        v8 = *(v4 + 16);
        v8(v3, v6, v7);
        sub_1DCB0DEDC(v3);
        OUTLINED_FUNCTION_23_13();
        if (!v9)
        {
          OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
        }

        v10 = v0[209];
        v11 = v0[205];
        v12 = v0[203];
        v13 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v13, qword_1EDE57DA0);
        v8(v10, v12, v11);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_23_13();
      if (!v9)
      {
        OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
      }

      v15 = OUTLINED_FUNCTION_43_13();
      __swift_project_value_buffer(v15, qword_1EDE57DA0);
      OUTLINED_FUNCTION_48_1();
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_13();
    if (!v9)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v14 = OUTLINED_FUNCTION_43_13();
    __swift_project_value_buffer(v14, qword_1EDE57DA0);
    OUTLINED_FUNCTION_48_1();
    sub_1DD0DCF8C();
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1DCB6F068()
{
  OUTLINED_FUNCTION_42();
  v1[204] = v0;
  v1[203] = v2;
  v1[202] = v3;
  v4 = sub_1DD0DB04C();
  v1[205] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[206] = v5;
  v1[207] = swift_task_alloc();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v1[210] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

BOOL sub_1DCB6F140()
{
  v1 = *v0;
  v2 = 0;
  switch(*(v0 + 72))
  {
    case 1:
      v4 = [*v0 dialog];
      sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
      v5 = sub_1DD0DE2EC();

      v6 = sub_1DCB08B14(v5);

      v3 = v6 == 0;
      return !v3;
    case 2:
      v8 = sub_1DCB08B14(*v0);
      v9 = 0;
      break;
    case 3:
      return v2;
    default:
      v3 = *(*(v0 + 16) + 16) == 0;
      return !v3;
  }

  do
  {
    v2 = v8 != v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E12A72C0](v9, v1);
    }

    else
    {
      if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v1 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      JUMPOUT(0x1DCB6F30CLL);
    }

    v12 = [v10 dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    v13 = sub_1DD0DE2EC();

    v14 = v13 >> 62 ? sub_1DD0DEB3C() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    ++v9;
  }

  while (!v14);
  return v2;
}

void *sub_1DCB6F31C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v1)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57DA0);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v19, v20, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v2 = 0;
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v0 dialogId];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_16_18();
  sub_1DCB6F6EC(v4, v5, v2);
  [v2 setIsApprovedForGrading_];
  if (OUTLINED_FUNCTION_44_10())
  {
    v6 = [v0 fullSpeak];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_19_1();

    OUTLINED_FUNCTION_4_39();
    if (v7 || (v8 = [v0 fullPrint], sub_1DD0DDFBC(), OUTLINED_FUNCTION_19_1(), , OUTLINED_FUNCTION_4_39(), v9))
    {
      v10 = [v0 printOnly];
      v11 = [v10 BOOLValue];

      if ((v11 & 1) == 0)
      {
        v12 = [v0 redactedFullSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v13 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v13, v14);
        OUTLINED_FUNCTION_18_18();

        if (v11)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v15 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v12 = 0;
        }

        OUTLINED_FUNCTION_46_10(v15, sel_setSpokenDialog_);
      }

      v21 = [v0 spokenOnly];
      v22 = [v21 BOOLValue];

      if ((v22 & 1) == 0)
      {
        v23 = [v0 redactedFullPrint];
LABEL_17:
        v24 = v23;
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_18_18();

        v25 = OUTLINED_FUNCTION_131();
        v17 = sub_1DCB6F750(v25, v26);
        v28 = v27;

        if (v28)
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v17 = 0;
        }

        OUTLINED_FUNCTION_25(v29, sel_setDisplayedDialog_);
LABEL_21:
      }
    }

    else
    {
      v31 = [v0 printOnly];
      v32 = [v31 BOOLValue];

      if ((v32 & 1) == 0)
      {
        v33 = [v0 redactedSupportingSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v34 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v34, v35);
        OUTLINED_FUNCTION_18_18();

        if (v32)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v36 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v33 = 0;
        }

        OUTLINED_FUNCTION_46_10(v36, sel_setSpokenDialog_);
      }

      v37 = [v0 spokenOnly];
      v38 = [v37 BOOLValue];

      if ((v38 & 1) == 0)
      {
        v23 = [v0 redactedSupportingPrint];
        goto LABEL_17;
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_177()
{
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t a1)
{

  return sub_1DD0DE97C();
}

void sub_1DCB6F6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogId_];
}

uint64_t sub_1DCB6F750(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void sub_1DCB6F7A4(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA42C8, 0x1E69CF4C0);
  v3 = sub_1DD0DE2DC();

  [a2 setDialogLines_];
}

uint64_t sub_1DCB6F828()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  *(v1 + 224) = v0;

  v2 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1DCB6F918(uint64_t a1)
{
  v2 = v1[28];
  if (v2)
  {
    v15 = v1[25];
    v16 = v1[26];
    v4 = v1[19];
    v3 = v1[20];
    v5 = v1[17];
    v6 = v1[18];
    v8 = v1[13];
    v7 = v1[14];
    sub_1DD0DE48C();
    v9 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    sub_1DCB6FF74(v3, v4);
    v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v8;
    v12[5] = v2;
    sub_1DCB6DF70(v4, v12 + v10);
    v13 = (v12 + v11);
    *v13 = v15;
    v13[1] = v16;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57DA0);
  OUTLINED_FUNCTION_48_1();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB6FC74()
{
  v1 = type metadata accessor for AceOutput(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  sub_1DCB42C24(*(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80));
  if (*(v0 + v2 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 88));
  }

  v4 = v3 + v1[7];
  v5 = type metadata accessor for NLContextUpdate(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {

    if (*(v4 + 256))
    {
    }

    v6 = *(v5 + 128);
    v7 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_112();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = v1[8];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_112();
  (*(v10 + 8))(v3 + v9);
  v11 = v1[9];
  v12 = sub_1DD0DD10C();
  if (!__swift_getEnumTagSinglePayload(v3 + v11, 1, v12))
  {
    OUTLINED_FUNCTION_112();
    (*(v13 + 8))(v3 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB6FF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AceOutput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB6FFD8(uint64_t a1)
{
  v2 = type metadata accessor for AceOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB70034(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1DD0DD87C();
  v16 = sub_1DD0DE7FC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      OUTLINED_FUNCTION_5_109();
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1DD0DD83C();
      _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v15, v16, v19, a1, "enableTelemetry=YES", v18, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
LABEL_10:

      (*(v9 + 16))(v14, a4, v7);
      sub_1DD0DD8CC();
      swift_allocObject();
      sub_1DD0DD8BC();
      return;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_76();
  if (!v17)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t AceServiceContextProvider.__allocating_init(storage:)(uint64_t a1)
{

  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

void SessionConfigurationProvider.init(sessionConfiguration:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_5_102(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB70320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB70390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB703F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v6 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB70320(a1, v5);
  OUTLINED_FUNCTION_1_121(qword_1EDE46EA8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70528(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionConfigurationProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB70568@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_5_70(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB706C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCB70738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v6 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB706C8(a1, v5);
  OUTLINED_FUNCTION_1_83(&qword_1EDE47C08);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB708D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRoutingDecisionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB70910@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NLRoutingDecisionProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void FlowRedirectContextProvider.init(flowRedirectContext:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void sub_1DCB709FC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_53(&qword_1EDE4AE58);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70ABC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowRedirectContextProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void IdentifiedUser.description.getter()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v3 = 0x65736C6166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A760);
  v6 = type metadata accessor for IdentifiedUser(0);
  OUTLINED_FUNCTION_34_43(v6[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  v7 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v7);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD12A780);
  OUTLINED_FUNCTION_34_43(v6[10]);
  v8 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v8);

  MEMORY[0x1E12A6780](0x726570202020200ALL, 0xEF3D6449616E6F73);
  OUTLINED_FUNCTION_34_43(v6[12]);
  v9 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v9);

  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD12A7A0);
  v10 = OUTLINED_FUNCTION_25_40(v6[13]);
  v11 = 0xE500000000000000;
  if (v12)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v10, v13);

  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD12A7C0);
  sub_1DD0DD17C();
  sub_1DCB4A3FC(&qword_1EDE46338, 255, MEMORY[0x1E69D06F8], MEMORY[0x1E69D0710]);
  v14 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v14);

  MEMORY[0x1E12A6780](0xD00000000000001FLL, 0x80000001DD12A7E0);
  v15 = OUTLINED_FUNCTION_25_40(v6[15]);
  if (v12)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v15, v16);

  MEMORY[0x1E12A6780](0xD000000000000023, 0x80000001DD12A800);
  v17 = OUTLINED_FUNCTION_25_40(v6[16]);
  if (v12)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v17, v18);

  MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD12A830);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A850);
  v19 = *(v0 + v6[9]);
  if (v19 && ([v19 isDeviceOwner] & 1) != 0)
  {
    v11 = 0xE400000000000000;
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  MEMORY[0x1E12A6780](v20, v11);

  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD12A870);
  if (v19 && (v21 = [v19 isMediaFallbackUser], v19, (v21 & 1) != 0))
  {
    v22 = 0xE400000000000000;
    v3 = 1702195828;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v3, v22);

  MEMORY[0x1E12A6780](0xD000000000000022, 0x80000001DD12A890);
  v23 = (v2 + v6[6]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 7104878;
  }

  MEMORY[0x1E12A6780](v24, v25);

  MEMORY[0x1E12A6780](0x636F6C202020200ALL, 0xEC0000003D656C61);
  sub_1DCB099BC(v2 + v6[5], v1, &qword_1ECCA5FE8, &unk_1DD0F4BB0);
  v26 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v26);

  MEMORY[0x1E12A6780](23818, 0xE200000000000000);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB70FA4()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_41_12(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v0[12] = swift_task_alloc();
  v10 = sub_1DD0DB04C();
  v0[13] = v10;
  OUTLINED_FUNCTION_99(v10);
  v0[14] = v11;
  v0[15] = *(v12 + 64);
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCB710A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  sub_1DCB70034(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  *(v2 + 72) = v4;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB47C10;
  v6 = *(v2 + 16);

  return v8(v6);
}

uint64_t sub_1DCB711B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB710A8, 0, 0);
}

uint64_t sub_1DCB711E4()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_52_10(v6);

  return sub_1DCB712A4(v8, v9, v1, v2, v4, v3);
}

uint64_t sub_1DCB712A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1DCB4765C;

  return v10(a1);
}

void SiriEnvironment.sessionConfigurationProvider.setter(uint64_t a1)
{
  type metadata accessor for SessionConfigurationProvider();
  OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);

  sub_1DD0DCA8C();
}

void SessionConfigurationProvider.sessionConfiguration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_121(qword_1EDE46EA8);
  sub_1DD0DCEDC();
}

void SiriEnvironment.nlRoutingDecision.setter(uint64_t a1)
{
  type metadata accessor for NLRoutingDecisionProvider();
  OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);

  sub_1DD0DCA8C();
}

void sub_1DCB71558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_83(&qword_1EDE47C08);
  sub_1DD0DCEDC();
}

void SiriEnvironment.flowRedirectContextProvider.getter()
{
  type metadata accessor for FlowRedirectContextProvider();
  OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);

  sub_1DD0DCA7C();
}

void FlowRedirectContextProvider.flowRedirectContext.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_53(&qword_1EDE4AE58);
  sub_1DD0DCEDC();
}

void FlowTaskProvider.init(id:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  *(v4 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v9);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB719B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowTaskProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB719F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FlowTaskProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void sub_1DCB71A54(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E0, &qword_1DD105D00);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void sub_1DCB71B4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v6 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E8, &qword_1DD105D08);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB54EBC(a1, v5);
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void SiriEnvironment.flowTask.setter(uint64_t a1)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCB71E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  OUTLINED_FUNCTION_12_65();
}

uint64_t dispatch thunk of AnyFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v6 = (*(v0 + 192) + **(v0 + 192));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_6(v2);

  return v6(v4);
}

uint64_t sub_1DCB71FBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB71FD0()
{
  OUTLINED_FUNCTION_42();
  v6 = (*(*(v0 + 24) + 64) + **(*(v0 + 24) + 64));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_76_6(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_75_4(v2);

  return v6(v4);
}

uint64_t sub_1DCB720B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  *v8 = v9;
  v8[1] = sub_1DCB47430;

  return sub_1DCB72188(v2, v0 + v6, v3, v4);
}

uint64_t sub_1DCB72188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DCB47430;

  return v10(a1, a3, a4);
}

uint64_t Flow.onAsync(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB722F8()
{
  OUTLINED_FUNCTION_33();
  sub_1DCB72440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DD0DD88C();
  v8 = *(v0 + 48);
  __swift_project_value_buffer(v2, qword_1EDE57DD0);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  sub_1DD0DD84C();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_51_8(v4);

  return sub_1DCB711B4(v5, "execution_commit_time", 21, 2, v6, &unk_1DD0EB078, v3);
}

uint64_t sub_1DCB72454()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_52_10(v1);

  return sub_1DCB724F0(v3, v4);
}

uint64_t sub_1DCB724F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AD3C;

  return v6(a1);
}

uint64_t ContactsManager.init(aceService:)(__int128 *a1)
{
  v3 = type metadata accessor for AceServiceInvokerAsyncAdapter();
  v4 = swift_allocObject();
  sub_1DCB18FF0(a1, v4 + 16);
  type metadata accessor for ContactsManagerAsync();
  v5 = swift_allocObject();
  v5[5] = v3;
  v5[6] = &off_1F5852030;
  v5[2] = v4;
  *(v1 + 16) = v5;
  return v1;
}

void sub_1DCB726CC()
{
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
  }

  sub_1DCB4BA5C();
}

id sub_1DCB7277C(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_66();
  v9 = (*(v8 + 96))(__dst, a3, a4);
  v10 = sub_1DD0DDFBC();
  v12 = sub_1DCB72BF8(v9, a2, v10, v11, MEMORY[0x1E69E7CC0]);

  return v12;
}

uint64_t sub_1DCB72840(uint64_t *a1, int a2, int a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v49 = sub_1DD0DB04C();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v11 = *(v10 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = *a1;
    v45 = a1[1];
    v46 = v13;
    v14 = a1[7];
    v39 = a1[6];
    v40 = v14;
    v15 = a1[4];
    v44 = a1[3];
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    v16 = 0;
    v43 = (v6 + 8);
    v17 = *(v10 + 16);
    v47 = v11;
    v48 = v17;
    v41 = v15;
    v18 = (v15 + 40);
    v19 = (v10 + 40);
    v42 = *(v4 + 16);
    while (v48 != v16)
    {
      if (v16 >= *(v10 + 16))
      {
        goto LABEL_21;
      }

      v20 = v10;
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = objc_allocWithZone(MEMORY[0x1E69C7B08]);

      v24 = [v23 init];
      sub_1DD0DB03C();
      v25 = sub_1DD0DAFFC();
      v27 = v26;
      (*v43)(v9, v49);
      sub_1DCB4D8E8(v25, v27, v24);
      sub_1DCB72D28(v46, v45, v24);
      sub_1DCB72D80(v21, v22, v24);
      v28 = v24;
      [v28 setCanUseServerTTS_];
      if (*(v44 + 16) && (sub_1DCB21038(0x79726F6765746163, 0xE800000000000000), (v29 & 1) != 0))
      {

        v30 = sub_1DD0DDF8C();
      }

      else
      {
        v30 = 0;
      }

      v10 = v20;
      [v28 setDialogCategory_];

      if (v42 && v16 < *(v41 + 16))
      {
        v31 = *(v18 - 1);
        v32 = *v18;

        sub_1DCB2C534(v31, v32, v28, &selRef_setSpeakableText_);
      }

      if ((v50 & 1) != 0 && v16 == *(v20 + 16) - 1 && (sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98), v33 = sub_1DD0DE8CC(), [v28 setListenAfterSpeaking_], v33, v34 = v40, v40 >= 3))
      {
        v35 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
        v36 = v34;
        v37 = v35;
        sub_1DD0BEDA0(v39, v36, v35);
        [v28 setListenAfterSpeakingBehavior_];
      }

      else
      {
      }

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
      ++v16;
      v18 += 2;
      v19 += 2;
      if (v47 == v16)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

id sub_1DCB72BF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v12 = sub_1DD0DEE0C();

    a1 = v12;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  sub_1DCB673E0(v9);

  sub_1DCB673E0(v10);
  sub_1DCB6BBC0(a1, v8);
  sub_1DCB6BB04(a3, a4, v8);
  return v8;
}

void sub_1DCB72D28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogIdentifier_];
}

void sub_1DCB72D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setText_];
}

unint64_t *sub_1DCB72DE0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_1DCB72E48(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return a1;
}

unint64_t sub_1DCB72E2C(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t sub_1DCB72E48(unint64_t result, void *a2, void *a3)
{
  if (result >> 62 == 1)
  {
    v4 = (result & 0x3FFFFFFFFFFFFFFFLL);

    return v4;
  }

  else if (!(result >> 62))
  {
    sub_1DD0DCF8C();
  }

  return result;
}

double TemplatingResult.init(templateIdentifier:speak:print:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v9 = v8;
  v14 = OUTLINED_FUNCTION_22_15(v10, v11, v12, v13);

  v15 = sub_1DCB73048(v6, v5, v14, a4, v4);

  *v9 = v6;
  *(v9 + 8) = v5;
  v16 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = v15;
  *(v9 + 24) = v16;
  *(v9 + 32) = v4;
  *(v9 + 40) = a4;
  result = 0.0;
  *(v9 + 48) = xmmword_1DD0E1E40;
  *(v9 + 64) = v14;
  return result;
}

uint64_t sub_1DCB72FB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_1DD0DE38C();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1DCB73048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DCB7321C();
    v11 = 0;
    v6 = v17;
    do
    {
      v15 = v11;
      sub_1DCB7323C(&v15, a5, a4, a3, a1, a2, __src);
      v17 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_1DCB7321C();
        v6 = v17;
      }

      ++v11;
      *(v6 + 16) = v12 + 1;
      memcpy((v6 + 224 * v12 + 32), __src, 0xD9uLL);
    }

    while (v5 != v11);
  }

  return v6;
}

void sub_1DCB7315C()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E18, &unk_1DD0E5280);
      v7 = OUTLINED_FUNCTION_14_15(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_6_12(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F414(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DCB7323C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *result;
  v11 = a3 + 16 * *result;
  if (*result < *(a2 + 16))
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= *(a3 + 16))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v15 = a2 + 16 * v10;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    if (!v14)
    {
      v19 = 0;
      v12 = *(v15 + 40);
      v13 = *(v15 + 32);
      v16 = 0;
      goto LABEL_16;
    }

    if (v13 != v16 || v12 != v17)
    {
      result = sub_1DD0DF0AC();
      if ((result & 1) == 0)
      {

        v19 = v17;
        goto LABEL_16;
      }
    }
  }

  if (v10 >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = 0;
  v19 = 0;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
LABEL_16:

  if (v10 >= *(a4 + 16))
  {
    goto LABEL_21;
  }

  v20 = a4 + 16 * v10;
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
  }

  else
  {
LABEL_21:

    MEMORY[0x1E12A6780](35, 0xE100000000000000);
    v24 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v24);

    v22 = a5;
    result = a6;
  }

  if (v10 >= *(a3 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  v25 = *(v11 + 40);
  v26 = *(v11 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  *a7 = v22;
  *(a7 + 8) = result;
  *(a7 + 16) = v13;
  *(a7 + 24) = v12;
  *(a7 + 32) = v16;
  *(a7 + 40) = v19;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = v26 == 0;
  *(a7 + 88) = v13;
  *(a7 + 96) = v12;
  *(a7 + 104) = v16;
  *(a7 + 112) = v19;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  *(a7 + 152) = 0u;
  *(a7 + 168) = 0u;
  *(a7 + 184) = 0u;
  *(a7 + 200) = 0u;
  *(a7 + 216) = 0;
}

void *initializeWithCopy for TemplatingResult(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];

  if (v7 >= 3)
  {
    a1[6] = a2[6];
    a1[7] = v7;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  a1[8] = a2[8];

  return a1;
}

BOOL sub_1DCB73584(uint64_t (*a1)(void))
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v6 = type metadata accessor for USOParse(0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  sub_1DCB29E58(v1, v2);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v15 = type metadata accessor for Parse;
    v16 = v2;
LABEL_7:
    sub_1DCB283D8(v16, v15);
    return 0;
  }

  sub_1DCC6D300(v2, v11);
  if ((Parse.interpretableAsUniversalAction.getter() & 1) == 0)
  {
    v15 = type metadata accessor for USOParse;
    v16 = v11;
    goto LABEL_7;
  }

  sub_1DD0DB46C();
  v12 = a1();

  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v11, v13);
  return (v12 & 1) != 0;
}

uint64_t sub_1DCB73700()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t SharingPolicyCheckFlow.__allocating_init()()
{
  type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  inited = swift_initStaticObject();
  OUTLINED_FUNCTION_12_63();
  v1 = swift_allocObject();

  return sub_1DCB7F560(inited, v1);
}

void sub_1DCB737CC()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  [v3 setDidAuthenticateAppProtection_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69C7868]) init];
  if ([v3 _type] == 2)
  {
    v7 = INIntent.jsonRepresentation()();
    sub_1DCB2C534(v7._countAndFlagsBits, v7._object, v6, &selRef_setJsonEncodedIntent_);
  }

  else
  {
    v8 = sub_1DCB61EDC(v3);
    [v6 setIntent_];
  }

  v9 = v6;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  v10 = OUTLINED_FUNCTION_19();
  v11(v10);
  OUTLINED_FUNCTION_99_8();
  sub_1DCB4D8E8(v12, v13, v14);

  sub_1DCB73950(v1, v9);
  [v9 setShouldRunHandleIntent_];
  OUTLINED_FUNCTION_15_5();
}

void sub_1DCB73950(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();
  [a2 setIntentSlotKeyPaths_];
}

uint64_t sub_1DCB739B0()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_97_1(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

unint64_t OUTLINED_FUNCTION_200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_97_3()
{
}

uint64_t OUTLINED_FUNCTION_97_4()
{
}

uint64_t OUTLINED_FUNCTION_97_7()
{
}

uint64_t OUTLINED_FUNCTION_97_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 3, v2);
}

uint64_t OUTLINED_FUNCTION_97_11(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t sub_1DCB73BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_129_2();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB73CC0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = OUTLINED_FUNCTION_124_2();
  sub_1DCB51C9C(v4);
  *v2 = v1;
  *(v2 + 8) = 0;
  *(*(v0 + 96) + 9) = 0;
  OUTLINED_FUNCTION_29();

  return v5();
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x1E12A6780);
}

void *OUTLINED_FUNCTION_123_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char __src)
{

  return memcpy(&a9, &__src, 0xB0uLL);
}

void OUTLINED_FUNCTION_119()
{

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000048, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_119_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return sub_1DCEFF0BC(v0);
}

uint64_t OUTLINED_FUNCTION_119_3()
{
}

uint64_t sub_1DCB73E3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB73F20()
{
  OUTLINED_FUNCTION_33();
  sub_1DCB74408(*(v0 + 120), "SubmitHandleIntent", 18, 2, *(v0 + 128));

  v1 = OUTLINED_FUNCTION_15_9();
  v2(v1);
  v3 = *(v0 + 16);
  *(v0 + 144) = v3;
  v4 = *(v0 + 24);
  *(v0 + 26) = v4;
  v5 = *(v0 + 25);
  *(v0 + 27) = v5;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v8);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_62();
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v14;
  *v14 = v15;
  v14[1] = sub_1DCB74A1C;
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);

  return sub_1DCB74070(v18, v16, v0 + 32, v17);
}

uint64_t sub_1DCB74070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = *a3;
  *(v5 + 42) = *(a3 + 8);
  *(v5 + 43) = *(a3 + 9);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB740A0()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_70();
  v2 = sub_1DD0DE01C();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = [v0 intentResponse];
  if (!v10)
  {
    sub_1DCB35468(v0, &selRef_jsonEncodedIntentResponse);
    if (v17)
    {
      sub_1DD0DE00C();
      sub_1DD0DDFCC();
      OUTLINED_FUNCTION_102_6();

      (*(v4 + 8))(v9, v2);
      if (v1 >> 60 != 15)
      {

        v29 = OUTLINED_FUNCTION_126_1();
        MEMORY[0x1E12A6780](v29, 0xE800000000000000);
        goto LABEL_17;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v18 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v20))
      {
LABEL_15:

LABEL_19:
        OUTLINED_FUNCTION_15_5();
        return;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      v19 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v22))
      {
        goto LABEL_15;
      }
    }

    v23 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v23);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_62();
    goto LABEL_15;
  }

  v11 = v10;
  sub_1DCB35468(v10, &selRef_typeName);
  v13 = v12;
  sub_1DCB3B800(v11);
  OUTLINED_FUNCTION_16_10();
  if (!(!v15 & v14))
  {
    OUTLINED_FUNCTION_102_6();

    if (!v13)
    {
      v16 = 0;
LABEL_18:
      OUTLINED_FUNCTION_20();
      v30 = sub_1DD0DAEFC();
      INIntentResponseCreate();

      v31 = OUTLINED_FUNCTION_20();
      sub_1DCB21A14(v31, v32);
      goto LABEL_19;
    }

LABEL_17:
    v16 = sub_1DD0DDF8C();

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return sub_1DD0DE3AC();
}

unint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

double OUTLINED_FUNCTION_98_2()
{
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_98_5()
{
}

uint64_t sub_1DCB74410()
{
  v53 = v0;
  if (*(v0 + 43))
  {
    v2 = *(v0 + 42);
    v3 = *(v0 + 80);
    if (v2 == 1)
    {
      sub_1DCB6DECC(*(v0 + 80), 1u);
      v7 = [v3 errorCode];
      v10 = 0;
    }

    else if (*(v0 + 42))
    {
      sub_1DCB6DECC(*(v0 + 80), v2);
      v10 = 0;
      v7 = -1;
    }

    else
    {
      sub_1DCB390C4(*(v0 + 80), 0, 1);
      v4 = OUTLINED_FUNCTION_124_2();
      sub_1DCB6DECC(v4, v5);
      v6 = sub_1DD0DADFC();
      v7 = [v6 code];

      v8 = OUTLINED_FUNCTION_124_2();
      sub_1DCB6DECC(v8, v9);
      v10 = *(v0 + 80);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v21 = *(v0 + 80);
    v22 = *(v0 + 42);
    v23 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
    sub_1DCB6DECC(v21, v22);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6EC();
    sub_1DCB390D0(v21, v22, 1);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 42);
    v28 = *(v0 + 80);
    if (v26)
    {
      v49 = v10;
      v29 = v7;
      v30 = OUTLINED_FUNCTION_151();
      v31 = OUTLINED_FUNCTION_83();
      v52 = v31;
      *v30 = 136315138;
      v50 = v28;
      LOBYTE(v51) = v27;
      sub_1DCB6DECC(v28, v27);
      v32 = SubmitCommandError.description.getter();
      v34 = v33;
      sub_1DCB6DE90(v28, v27);
      sub_1DCB10E9C(v32, v34, &v52);
      OUTLINED_FUNCTION_33_4();

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "Received an error for handleIntentCommandResponse: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_80();
      v7 = v29;
      v10 = v49;
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB390D0(v28, v27, 1);
    v35 = *(v0 + 42);
    v36 = *(v0 + 80);
    v37 = *(v0 + 48);
    OUTLINED_FUNCTION_106_6();
    sub_1DCF47DA4(v38, v39, v40, v41);
    OUTLINED_FUNCTION_4_14();
    sub_1DD0DEC1C();
    *(v0 + 16) = v50;
    *(v0 + 24) = v51;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000002FLL);
    *(v0 + 32) = v36;
    *(v0 + 40) = v35;
    *(v0 + 41) = 1;
    v42 = OUTLINED_FUNCTION_124();
    __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    sub_1DD0DEDBC();

    v45 = *(v0 + 16);
    v44 = *(v0 + 24);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v46 = CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(v7, v45, v44, 0, 0, v10);
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *v37 = v46;
    *(v37 + 24) = 1;
  }

  else
  {
    v11 = qword_1EDE4F900;
    v12 = *(v0 + 80);
    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v16);
      _os_log_impl(&dword_1DCAFC000, v14, v15, "HandleIntentCompleted received", v1, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    v20 = *(v0 + 42);

    sub_1DCB74820(v18, v19);
    sub_1DCB390D0(v17, v20, 0);
  }

  OUTLINED_FUNCTION_29();

  return v47();
}

void *sub_1DCB74820@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [a1 typeName];
  sub_1DD0DDFBC();

  sub_1DCB740A0();
  v5 = v4;

  if (v5)
  {
    v6 = qword_1EDE4F900;
    v7 = v5;
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0(v11);
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_37();
    }

    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;

    return a1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v20))
    {
      v21 = OUTLINED_FUNCTION_50_0();
      *v21 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v22, v23, v24, v25, v21, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v26 = OUTLINED_FUNCTION_93_8();
    result = CommandFailure.init(errorCode:reason:)(v26, 0xD00000000000002ALL, v27);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = result;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1DCB74A1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB74B00()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB390D0(*(v0 + 144), *(v0 + 26), *(v0 + 27));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB74B6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB74C50()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_103_8();
  sub_1DCB3B864();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB74CF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB74DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F0, &qword_1DD0F2090);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  sub_1DCB649C0(v1);
}

unint64_t sub_1DCB74E48()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 24))
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6F5479646165722ELL;
      break;
    case 3:
      result = 0x74656C706D6F632ELL;
      break;
    case 4:
      result = 0x726F7272652ELL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB74F28(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1DCB74F74()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[32];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCB7500C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB75118(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = sub_1DCB21038(a1, a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for ParameterClause(0);
    sub_1DCC8BC94(v13 + *(*(v14 - 8) + 72) * v12, v8);
    v15 = 1;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  }

  else
  {
    type metadata accessor for ParameterClause(0);
    v16 = OUTLINED_FUNCTION_2_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v15 = 0;
  }

  sub_1DCB75264(v8);
  return v15;
}

uint64_t sub_1DCB75264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB752CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCB753CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for PromptForValueFlowAsync.State(0, *(v3 + 80), v5, v6);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DCB77170();
  return (*(v8 + 8))(a1, v7);
}

unsigned __int8 *sub_1DCB754BC(id *a1, id *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v227 = *(v4 - 8);
  v228 = v4;
  v238 = *(v227 + 64);
  v242 = v3;
  v224 = sub_1DD0DC76C();
  v235 = *(v224 - 8);
  v5 = *(v235 + 80);
  v221 = sub_1DD0DB1EC();
  v236 = *(v221 - 8);
  v220 = v236;
  v229 = *(v236 + 80) | v5;
  v225 = sub_1DD0DB4BC();
  v233 = *(v225 - 8);
  v243 = v233;
  v6 = *(v233 + 80) & 0xF8;
  v226 = sub_1DD0DB3EC();
  v7 = *(v226 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v219 = sub_1DD0DD12C();
  v231 = *(v219 - 8);
  v218 = v231;
  v10 = *(v231 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v217 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v216 = v15;
  v16 = (v229 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v17 = v238 + v16;
  v18 = *(v235 + 64);
  v215 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v236 + 64))
  {
    v18 = *(v236 + 64);
  }

  v239 = *(v233 + 64) + v8;
  v210 = v7;
  v19 = *(v7 + 84);
  v209 = *(v7 + 64);
  if (v19)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = v20 + 7;
  v222 = v239 & ~v8;
  v22 = (v20 + 7 + v222) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v18 <= v23)
  {
    v18 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v22 + 31;
  if (v18 <= (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v212 = *(v231 + 64);
  v213 = v9 + 16;
  v25 = *(v233 + 84);
  v223 = *(v7 + 84);
  v26 = v19 != 0;
  v27 = v19 - 1;
  if (!v26)
  {
    v27 = 0;
  }

  v208 = v27;
  if (v27 <= v25)
  {
    v27 = *(v233 + 84);
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v214 = v27;
  v28 = ((v24 + ((v9 + 16 + ((v212 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 <= v28)
  {
    v18 = v28;
  }

  v29 = *(v15 + 64);
  if (v18 > v29)
  {
    v29 = v18;
  }

  if (v29 <= 0x18)
  {
    v30 = 24;
  }

  else
  {
    v30 = v29;
  }

  v234 = *(a3 + 16);
  v232 = *(v234 - 8);
  if (*(v232 + 64) <= 9uLL)
  {
    v31 = 9;
  }

  else
  {
    v31 = *(*(v234 - 8) + 64);
  }

  if (v31 + 1 > ((((v30 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = ((((v30 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = v3[v33];
  v35 = v34 - 4;
  if (v34 >= 4)
  {
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    switch(v36)
    {
      case 1:
        v37 = *v3;
        goto LABEL_44;
      case 2:
        v37 = *v3;
        goto LABEL_44;
      case 3:
        v37 = *v3 | (v3[2] << 16);
        goto LABEL_44;
      case 4:
        v37 = *v3;
LABEL_44:
        if (v33 < 4)
        {
          v37 |= v35 << (8 * v33);
        }

        v34 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v241 = v30 + 1;
  v38 = ~v16;
  v237 = ~v14;
  v211 = ~v12;
  v230 = 8 * v31;
  switch(v34)
  {
    case 0u:
      v203 = v20;
      (*(v227 + 8))(v3, v228);
      v39 = (&v3[v17] & v38);
      v40 = v39[v30];
      v41 = v40 - 10;
      if (v40 >= 0xA)
      {
        if (v30 <= 3)
        {
          v42 = v30;
        }

        else
        {
          v42 = 4;
        }

        switch(v42)
        {
          case 1:
            v43 = *v39;
            goto LABEL_81;
          case 2:
            v43 = *v39;
            goto LABEL_81;
          case 3:
            v43 = *v39 | (*((&v3[v17] & v38) + 2) << 16);
            goto LABEL_81;
          case 4:
            v43 = *v39;
LABEL_81:
            if (v30 < 4)
            {
              v40 = (v43 | (v41 << (8 * v30))) + 10;
            }

            else
            {
              v40 = v43 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v40)
      {
        case 0u:
          goto LABEL_90;
        case 1u:
          goto LABEL_99;
        case 2u:
          goto LABEL_94;
        case 3u:
          goto LABEL_95;
        case 4u:
          goto LABEL_91;
        case 5u:
          goto LABEL_100;
        case 6u:
          goto LABEL_101;
        case 7u:
          goto LABEL_96;
        case 8u:
          goto LABEL_104;
        case 9u:
          goto LABEL_92;
        default:
          goto LABEL_120;
      }

      goto LABEL_120;
    case 1u:
      v203 = v20;
      (*(v227 + 8))(v3, v228);
      v39 = (&v3[v17] & v38);
      v48 = v39[v30];
      v49 = v48 - 10;
      if (v48 >= 0xA)
      {
        if (v30 <= 3)
        {
          v50 = v30;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *v39;
            goto LABEL_86;
          case 2:
            v51 = *v39;
            goto LABEL_86;
          case 3:
            v51 = *v39 | (*((&v3[v17] & v38) + 2) << 16);
            goto LABEL_86;
          case 4:
            v51 = *v39;
LABEL_86:
            if (v30 < 4)
            {
              v48 = (v51 | (v49 << (8 * v30))) + 10;
            }

            else
            {
              v48 = v51 + 10;
            }

            break;
          default:
            goto LABEL_89;
        }
      }

      break;
    case 2u:
      v44 = v3[v31];
      v45 = v44 - 2;
      if (v44 >= 2)
      {
        if (v31 <= 3)
        {
          v46 = v31;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v3;
            goto LABEL_73;
          case 2:
            v47 = *v3;
            goto LABEL_73;
          case 3:
            v47 = *v3 | (v3[2] << 16);
            goto LABEL_73;
          case 4:
            v47 = *v3;
LABEL_73:
            if (v31 < 4)
            {
              v44 = (v47 | (v45 << v230)) + 2;
            }

            else
            {
              v44 = v47 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v44 == 1)
      {
        goto LABEL_79;
      }

      if (!v44)
      {
        (*(v232 + 8))(v3, v234);
      }

      goto LABEL_122;
    case 3u:
LABEL_79:

      goto LABEL_122;
    default:
      goto LABEL_122;
  }

LABEL_89:
  switch(v48)
  {
    case 0u:
LABEL_90:
      v53 = v235;
      v52 = v224;
      goto LABEL_93;
    case 1u:
LABEL_99:
      (*(v235 + 8))(v39, v224);

      goto LABEL_120;
    case 2u:
LABEL_94:

      goto LABEL_103;
    case 3u:
LABEL_95:
      swift_unknownObjectRelease();
      goto LABEL_120;
    case 4u:
LABEL_91:
      v53 = v220;
      v52 = v221;
      goto LABEL_93;
    case 5u:
LABEL_100:
      v54 = *v39;
      goto LABEL_119;
    case 6u:
LABEL_101:
      (*(v243 + 8))(v39, v225);
      if (!__swift_getEnumTagSinglePayload(&v39[v239] & v237, 1, v226))
      {
        (*(v210 + 8))(&v39[v239] & v237, v226);
      }

LABEL_103:

      goto LABEL_120;
    case 7u:
LABEL_96:
      (*(v243 + 8))(v39, v225);
      if (!__swift_getEnumTagSinglePayload(&v39[v239] & v237, 1, v226))
      {
        (*(v210 + 8))(&v39[v239] & v237, v226);
      }

      goto LABEL_120;
    case 8u:
LABEL_104:
      v202 = v21;
      (*(v218 + 8))(v39, v219);
      v55 = &v39[v212 + 7] & 0xFFFFFFFFFFFFFFF8;

      v56 = (v213 + v55) & v211;
      if (v25 == v214)
      {
        v57 = (v213 + v55) & v211;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, v25, v225);
        v56 = v57;
        v21 = v202;
        if (EnumTagSinglePayload)
        {
          goto LABEL_118;
        }

        v201 = (v239 + v56) & v237;
        goto LABEL_115;
      }

      v59 = (v239 + v56) & v237;
      v21 = v202;
      if (v208 == v214)
      {
        v201 = (v239 + v56) & v237;
        if (v223 >= 2)
        {
          v199 = v56;
          v60 = __swift_getEnumTagSinglePayload(v59, v223, v226);
          v56 = v199;
          if (v60 >= 2)
          {
            goto LABEL_118;
          }
        }

        goto LABEL_115;
      }

      v61 = *(((v202 + v59) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v61 >= 0xFFFFFFFF)
      {
        LODWORD(v61) = -1;
      }

      if ((v61 + 1) < 2)
      {
        v201 = (v239 + v56) & v237;
LABEL_115:
        v200 = v56;
        (*(v243 + 8))(v56, v225);
        if (!__swift_getEnumTagSinglePayload(v201, 1, v226))
        {
          (*(v210 + 8))(v201, v226);
        }

        v56 = v200;
      }

LABEL_118:
      v54 = *((v23 + v56 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_119:

LABEL_120:
      v62 = &v39[v241 + 7];
      v63 = v21;
      v64 = (v62 & 0xFFFFFFFFFFFFFFF8) + 15;

      v65 = (v64 & 0xFFFFFFFFFFFFFFF8);
      v21 = v63;
      v20 = v203;
      if (v65[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
      }

LABEL_122:
      v66 = a2;
      v67 = *(a2 + v33);
      v68 = v67 - 4;
      if (v67 >= 4)
      {
        if (v33 <= 3)
        {
          v69 = v33;
        }

        else
        {
          v69 = 4;
        }

        v66 = a2;
        switch(v69)
        {
          case 1:
            v70 = *a2;
            goto LABEL_131;
          case 2:
            v70 = *a2;
            goto LABEL_131;
          case 3:
            v70 = *a2 | (*(a2 + 2) << 16);
            v66 = a2;
            goto LABEL_131;
          case 4:
            v70 = *a2;
LABEL_131:
            if (v33 < 4)
            {
              v67 = (v70 | (v68 << (8 * v33))) + 4;
            }

            else
            {
              v67 = v70 + 4;
            }

            break;
          default:
            goto LABEL_134;
        }
      }

      break;
    case 9u:
LABEL_92:
      v53 = v216;
      v52 = v217;
LABEL_93:
      (*(v53 + 8))(v39, v52);
      goto LABEL_120;
    default:
      goto LABEL_120;
  }

LABEL_134:
  switch(v67)
  {
    case 0u:
      v71 = v66;
      (*(v227 + 16))(v3);
      v72 = ((v71 + v17) & v38);
      v73 = v72[v30];
      v74 = v73 - 10;
      if (v73 < 0xA)
      {
        v76 = (&v3[v17] & v38);
      }

      else
      {
        if (v30 <= 3)
        {
          v75 = v30;
        }

        else
        {
          v75 = 4;
        }

        v76 = (&v3[v17] & v38);
        switch(v75)
        {
          case 1:
            v77 = *v72;
            goto LABEL_176;
          case 2:
            v77 = *v72;
            goto LABEL_176;
          case 3:
            v77 = *v72 | (v72[2] << 16);
            goto LABEL_176;
          case 4:
            v77 = *v72;
LABEL_176:
            if (v30 < 4)
            {
              v73 = (v77 | (v74 << (8 * v30))) + 10;
            }

            else
            {
              v73 = v77 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v73)
      {
        case 0u:
          (*(v235 + 16))(v76, v72, v224);
          *(v76 + v30) = 0;
          goto LABEL_251;
        case 1u:
          (*(v235 + 16))(v76, v72, v224);
          *((v76 + v215) & 0xFFFFFFFFFFFFFFF8) = *(&v72[v215] & 0xFFFFFFFFFFFFFFF8);
          *(v76 + v30) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v76 = *v72;
          v76[1] = *(v72 + 1);
          v76[2] = *(v72 + 2);
          *(v76 + v30) = 2;

          goto LABEL_231;
        case 3u:
          *v76 = *v72;
          *(v76 + v30) = 3;
          swift_unknownObjectRetain();
          goto LABEL_251;
        case 4u:
          (*(v220 + 16))(v76, v72, v221);
          v97 = 4;
          goto LABEL_190;
        case 5u:
          v103 = *v72;
          *v76 = *v72;
          *(v76 + v30) = 5;
          v104 = v103;
          goto LABEL_251;
        case 6u:
          v107 = v20;
          (*(v243 + 16))(v76, v72, v225);
          v108 = ((v76 + v239) & v237);
          v109 = (&v72[v239] & v237);
          if (__swift_getEnumTagSinglePayload(v109, 1, v226))
          {
            memcpy(v108, v109, v107);
          }

          else
          {
            (*(v210 + 16))(v108, v109, v226);
            __swift_storeEnumTagSinglePayload(v108, 0, 1, v226);
          }

          v151 = ((v108 + v21) & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v109 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v151 = *v152;
          v151[1] = v152[1];
          v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = *v154;
          *(v153 + 4) = *(v154 + 4);
          *v153 = v155;
          *(v76 + v30) = 6;
          goto LABEL_231;
        case 7u:
          v204 = v20;
          (*(v243 + 16))(v76, v72, v225);
          v99 = ((v76 + v239) & v237);
          v100 = (&v72[v239] & v237);
          if (__swift_getEnumTagSinglePayload(v100, 1, v226))
          {
            memcpy(v99, v100, v204);
          }

          else
          {
            (*(v210 + 16))(v99, v100, v226);
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v226);
          }

          v129 = ((v99 + v21) & 0xFFFFFFFFFFFFFFF8);
          v130 = ((v100 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v129 = *v130;
          v129[1] = v130[1];
          v131 = (v129 + 19) & 0xFFFFFFFFFFFFFFF8;
          v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
          v133 = *v132;
          *(v131 + 4) = *(v132 + 4);
          *v131 = v133;
          v134 = ((v76 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
          v135 = (&v72[v23 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v134[1] = v135[1];
          v136 = ((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
          v137 = ((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v136[1] = v137[1];
          v138 = ((v136 + 23) & 0xFFFFFFFFFFFFFFF8);
          v139 = ((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          v138[1] = v139[1];
          *(v76 + v30) = 7;

LABEL_231:

          goto LABEL_251;
        case 8u:
          v206 = v20;
          (*(v218 + 16))(v76, v72, v219);
          v113 = ((v76 + v212 + 7) & 0xFFFFFFFFFFFFFFF8);
          v114 = (&v72[v212 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v113 = *v114;
          v113[1] = v114[1];
          v115 = ((v113 + v213) & v211);
          v116 = ((v114 + v213) & v211);

          if (v25 != v214)
          {
            v118 = v239;
            v120 = ((v116 + v239) & v237);
            if (v208 == v214)
            {
              if (v223 >= 2 && __swift_getEnumTagSinglePayload((v116 + v239) & v237, v223, v226) >= 2)
              {
                goto LABEL_220;
              }
            }

            else
            {
              v161 = *(((v120 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v161 >= 0xFFFFFFFF)
              {
                LODWORD(v161) = -1;
              }

              if ((v161 + 1) >= 2)
              {
                goto LABEL_220;
              }
            }

            v119 = v237;
            goto LABEL_239;
          }

          v117 = __swift_getEnumTagSinglePayload(v116, v25, v225);
          v118 = v239;
          if (v117)
          {
LABEL_220:
            memcpy(v115, v116, v23);
LABEL_249:
            v165 = v206;
            goto LABEL_250;
          }

          v119 = v237;
          v120 = ((v116 + v239) & v237);
LABEL_239:
          (*(v243 + 16))(v115, v116, v225);
          v162 = ((v115 + v118) & v119);
          if (__swift_getEnumTagSinglePayload(v120, 1, v226))
          {
            memcpy(v162, v120, v206);
          }

          else
          {
            (*(v210 + 16))(v162, v120, v226);
            __swift_storeEnumTagSinglePayload(v162, 0, 1, v226);
          }

          v165 = v209;
          v166 = ((v162 + v21) & 0xFFFFFFFFFFFFFFF8);
          v167 = ((v120 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v166 = *v167;
          v166[1] = v167[1];
          v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
          v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
          v170 = *v169;
          *(v168 + 4) = *(v169 + 4);
          *v168 = v170;

          if (!v223)
          {
            goto LABEL_249;
          }

LABEL_250:
          v171 = (((v222 + v165 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v172 = ((v115 + v171 + 7) & 0xFFFFFFFFFFFFFFF8);
          v173 = *((v116 + v171 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v172 = v173;
          *(v76 + v30) = 8;
          v174 = v173;
          v3 = v242;
LABEL_251:
          v175 = (&v72[v241 + 7] & 0xFFFFFFFFFFFFFFF8);
          v176 = ((v76 + v241 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v176 = *v175;
          v177 = (v176 + 15) & 0xFFFFFFFFFFFFFFF8;
          v178 = (v175 + 15) & 0xFFFFFFFFFFFFFFF8;
          v179 = *(v178 + 24);

          if (v179 < 0xFFFFFFFF)
          {
            v180 = *v178;
            v181 = *(v178 + 16);
            *(v177 + 32) = *(v178 + 32);
            *v177 = v180;
            *(v177 + 16) = v181;
          }

          else
          {
            *(v177 + 24) = v179;
            *(v177 + 32) = *(v178 + 32);
            (**(v179 - 8))(v177, v178, v179);
          }

          *(v177 + 40) = *(v178 + 40);
          v3[v33] = 0;
          return v3;
        case 9u:
          (*(v216 + 16))(v76, v72, v217);
          v97 = 9;
LABEL_190:
          *(v76 + v30) = v97;
          goto LABEL_251;
        default:
          memcpy(v76, v72, v241);
          goto LABEL_251;
      }

    case 1u:
      v86 = v66;
      (*(v227 + 16))(v3);
      v87 = ((v86 + v17) & v38);
      v88 = v87[v30];
      v89 = v88 - 10;
      if (v88 < 0xA)
      {
        v91 = (&v3[v17] & v38);
      }

      else
      {
        if (v30 <= 3)
        {
          v90 = v30;
        }

        else
        {
          v90 = 4;
        }

        v91 = (&v3[v17] & v38);
        switch(v90)
        {
          case 1:
            v92 = *v87;
            goto LABEL_182;
          case 2:
            v92 = *v87;
            goto LABEL_182;
          case 3:
            v92 = *v87 | (v87[2] << 16);
            goto LABEL_182;
          case 4:
            v92 = *v87;
LABEL_182:
            if (v30 < 4)
            {
              v88 = (v92 | (v89 << (8 * v30))) + 10;
            }

            else
            {
              v88 = v92 + 10;
            }

            break;
          default:
            goto LABEL_185;
        }
      }

      break;
    case 2u:
      v78 = *(v66 + v31);
      v79 = v78 - 2;
      if (v78 >= 2)
      {
        if (v31 <= 3)
        {
          v80 = v31;
        }

        else
        {
          v80 = 4;
        }

        v66 = a2;
        switch(v80)
        {
          case 1:
            v81 = *a2;
            goto LABEL_164;
          case 2:
            v81 = *a2;
            goto LABEL_164;
          case 3:
            v81 = *a2 | (*(a2 + 2) << 16);
            v66 = a2;
            goto LABEL_164;
          case 4:
            v81 = *a2;
LABEL_164:
            if (v31 < 4)
            {
              v78 = (v81 | (v79 << v230)) + 2;
            }

            else
            {
              v78 = v81 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v78 == 1)
      {
        v94 = *v66;
        v95 = v66;
        v96 = *v66;
        *v3 = v94;
        v3[8] = *(v95 + 8);
        v3[v31] = 1;
      }

      else if (v78)
      {
        memcpy(v3, v66, v31 + 1);
      }

      else
      {
        (*(v232 + 16))(v3, v66, v234);
        v3[v31] = 0;
      }

      v85 = 2;
      goto LABEL_263;
    case 3u:
      v82 = *v66;
      v83 = v66;
      v84 = *v66;
      *v3 = v82;
      v3[8] = *(v83 + 8);
      v85 = 3;
      goto LABEL_263;
    default:

      return memcpy(v3, v66, v33 + 1);
  }

LABEL_185:
  switch(v88)
  {
    case 0u:
      (*(v235 + 16))(v91, v87, v224);
      *(v91 + v30) = 0;
      goto LABEL_259;
    case 1u:
      (*(v235 + 16))(v91, v87, v224);
      *((v91 + v215) & 0xFFFFFFFFFFFFFFF8) = *(&v87[v215] & 0xFFFFFFFFFFFFFFF8);
      *(v91 + v30) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v91 = *v87;
      v91[1] = *(v87 + 1);
      v91[2] = *(v87 + 2);
      *(v91 + v30) = 2;

      goto LABEL_234;
    case 3u:
      *v91 = *v87;
      *(v91 + v30) = 3;
      swift_unknownObjectRetain();
      goto LABEL_259;
    case 4u:
      (*(v220 + 16))(v91, v87, v221);
      v98 = 4;
      goto LABEL_192;
    case 5u:
      v105 = *v87;
      *v91 = *v87;
      *(v91 + v30) = 5;
      v106 = v105;
      goto LABEL_259;
    case 6u:
      v110 = v20;
      (*(v243 + 16))(v91, v87, v225);
      v111 = ((v91 + v239) & v237);
      v112 = (&v87[v239] & v237);
      if (__swift_getEnumTagSinglePayload(v112, 1, v226))
      {
        memcpy(v111, v112, v110);
      }

      else
      {
        (*(v210 + 16))(v111, v112, v226);
        __swift_storeEnumTagSinglePayload(v111, 0, 1, v226);
      }

      v156 = ((v111 + v21) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v112 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v156[1] = v157[1];
      v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      *(v158 + 4) = *(v159 + 4);
      *v158 = v160;
      *(v91 + v30) = 6;
      goto LABEL_234;
    case 7u:
      v205 = v20;
      (*(v243 + 16))(v91, v87, v225);
      v101 = ((v91 + v239) & v237);
      v102 = (&v87[v239] & v237);
      if (__swift_getEnumTagSinglePayload(v102, 1, v226))
      {
        memcpy(v101, v102, v205);
      }

      else
      {
        (*(v210 + 16))(v101, v102, v226);
        __swift_storeEnumTagSinglePayload(v101, 0, 1, v226);
      }

      v140 = ((v101 + v21) & 0xFFFFFFFFFFFFFFF8);
      v141 = ((v102 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v140 = *v141;
      v140[1] = v141[1];
      v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
      v144 = *v143;
      *(v142 + 4) = *(v143 + 4);
      *v142 = v144;
      v145 = ((v91 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
      v146 = (&v87[v23 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v145 = *v146;
      v145[1] = v146[1];
      v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
      v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v147 = *v148;
      v147[1] = v148[1];
      v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
      v150 = ((v148 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v149 = *v150;
      v149[1] = v150[1];
      *(v91 + v30) = 7;

LABEL_234:

      goto LABEL_259;
    case 8u:
      v207 = v20;
      (*(v218 + 16))(v91, v87, v219);
      v121 = ((v91 + v212 + 7) & 0xFFFFFFFFFFFFFFF8);
      v122 = (&v87[v212 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + v213) & v211);
      v124 = ((v122 + v213) & v211);

      if (v25 == v214)
      {
        v125 = __swift_getEnumTagSinglePayload(v124, v25, v225);
        v126 = v239;
        if (!v125)
        {
          v127 = v237;
          v128 = ((v124 + v239) & v237);
          goto LABEL_245;
        }

LABEL_224:
        memcpy(v123, v124, v23);
        goto LABEL_257;
      }

      v126 = v239;
      v128 = ((v124 + v239) & v237);
      if (v208 == v214)
      {
        if (v223 >= 2 && __swift_getEnumTagSinglePayload((v124 + v239) & v237, v223, v226) >= 2)
        {
          goto LABEL_224;
        }
      }

      else
      {
        v163 = *(((v128 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v163 >= 0xFFFFFFFF)
        {
          LODWORD(v163) = -1;
        }

        if ((v163 + 1) >= 2)
        {
          goto LABEL_224;
        }
      }

      v127 = v237;
LABEL_245:
      (*(v243 + 16))(v123, v124, v225);
      v164 = ((v123 + v126) & v127);
      if (__swift_getEnumTagSinglePayload(v128, 1, v226))
      {
        memcpy(v164, v128, v207);
      }

      else
      {
        (*(v210 + 16))(v164, v128, v226);
        __swift_storeEnumTagSinglePayload(v164, 0, 1, v226);
      }

      v182 = v209;
      v183 = ((v164 + v21) & 0xFFFFFFFFFFFFFFF8);
      v184 = ((v128 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v183 = *v184;
      v183[1] = v184[1];
      v185 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
      v186 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
      v187 = *v186;
      *(v185 + 4) = *(v186 + 4);
      *v185 = v187;

      if (v223)
      {
LABEL_258:
        v188 = (((v222 + v182 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v189 = ((v123 + v188 + 7) & 0xFFFFFFFFFFFFFFF8);
        v190 = *((v124 + v188 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v189 = v190;
        *(v91 + v30) = 8;
        v191 = v190;
        v3 = v242;
LABEL_259:
        v192 = (&v87[v241 + 7] & 0xFFFFFFFFFFFFFFF8);
        v193 = ((v91 + v241 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v193 = *v192;
        v194 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
        v195 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
        v196 = *(v195 + 24);

        if (v196 < 0xFFFFFFFF)
        {
          v197 = *v195;
          v198 = *(v195 + 16);
          *(v194 + 32) = *(v195 + 32);
          *v194 = v197;
          *(v194 + 16) = v198;
        }

        else
        {
          *(v194 + 24) = v196;
          *(v194 + 32) = *(v195 + 32);
          (**(v196 - 8))(v194, v195, v196);
        }

        *(v194 + 40) = *(v195 + 40);
        v85 = 1;
LABEL_263:
        v3[v33] = v85;
        return v3;
      }

LABEL_257:
      v182 = v207;
      goto LABEL_258;
    case 9u:
      (*(v216 + 16))(v91, v87, v217);
      v98 = 9;
LABEL_192:
      *(v91 + v30) = v98;
      goto LABEL_259;
    default:
      memcpy(v91, v87, v241);
      goto LABEL_259;
  }
}