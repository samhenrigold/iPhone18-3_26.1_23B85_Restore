uint64_t sub_1DA30F798()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA30F7DC(uint64_t a1, uint64_t a2)
{
  sub_1DA34D210();
  sub_1DA34CBE0();
  v4 = sub_1DA34D230();

  return sub_1DA30F854(a1, a2, v4);
}

unint64_t sub_1DA30F854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DA34D160() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1DA30F908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1DA30F7DC(a2, a3);
  OUTLINED_FUNCTION_1_16();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1DA30F7DC(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1DA34D180();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1DA30FD80(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1DA30FA60(uint64_t a1)
{
  result = type metadata accessor for LinkUsedEvent.LinkType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA30FAFC(uint64_t a1)
{
  result = sub_1DA34B8C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_1DA30FB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DA30FBBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DA30FC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1DA30F7DC(a2, a3);
  OUTLINED_FUNCTION_1_16();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E70, &qword_1DA350CB8);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1DA30F7DC(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1DA34D180();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = sub_1DA34C930();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v11;

    return v19(v21, a1, v20);
  }

  else
  {
    sub_1DA30FDC8(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_1DA30FD80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA30FDC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DA34C930();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t static PromptManager.shared.getter()
{
  type metadata accessor for PromptManager();

  return swift_initStaticObject();
}

uint64_t sub_1DA30FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1DA34CA20();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_17();
  result = sub_1DA34CA30();
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D0, &qword_1DA350CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA350CC0;
    *(inited + 32) = 0x70615F7472617473;
    *(inited + 40) = 0xE900000000000070;
    *(inited + 48) = sub_1DA310904(a5);
    *(inited + 56) = v19;
    strcpy((inited + 64), "settings_state");
    *(inited + 79) = -18;
    sub_1DA31066C(a6);
    *(inited + 80) = v20;
    *(inited + 88) = v21;
    *(inited + 96) = 0x6E6F697473657571;
    *(inited + 104) = 0xE800000000000000;
    *(inited + 112) = a1;
    *(inited + 120) = a2;
    *(inited + 128) = 0x726577736E61;
    *(inited + 136) = 0xE600000000000000;
    *(inited + 144) = a3;
    *(inited + 152) = a4;

    v22 = sub_1DA34CAC0();
    sub_1DA31041C(v22);

    sub_1DA310C3C(&qword_1EE109030, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
    sub_1DA34CA90();

    return (*(v15 + 8))(v8, v13);
  }

  return result;
}

uint64_t sub_1DA310150@<X0>(uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_1DA34C440();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1DA34C800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA34CA20();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34C420();
  result = sub_1DA34C430();
  if (!v2)
  {

    sub_1DA34C7F0();
    sub_1DA310C3C(qword_1EE109098, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
    sub_1DA34CA50();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E80, &qword_1DA350D38);
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DA34DC80;
    (*(v9 + 16))(v14 + v13, v11, v8);
    MEMORY[0x1DA74A4D0](v14);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

unint64_t sub_1DA31041C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E78, &qword_1DA350D28);
    v2 = sub_1DA34CFE0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v27 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69C6560];
    *&v26 = v16;
    *(&v26 + 1) = v17;
    sub_1DA2E5B48(&v26, v30);
    sub_1DA2E5B48(v30, v31);
    sub_1DA2E5B48(v31, &v29);

    result = sub_1DA30F7DC(v14, v13);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;

      v21 = (v2[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = sub_1DA2E5B48(&v29, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v14;
      v22[1] = v13;
      result = sub_1DA2E5B48(&v29, v2[7] + 40 * result);
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1DA31066C(uint64_t a1)
{
  v2 = a1 + 64;
  OUTLINED_FUNCTION_0_15();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_7:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v23 = *(*(a1 + 48) + 16 * v12 + 8);
      v24 = *(*(a1 + 48) + 16 * v12);
      v25 = *v13;

      sub_1DA34CEC0();

      MEMORY[0x1DA74A690](v24, v23);
      MEMORY[0x1DA74A690](0x7461747327202C27, 0xED000027203A2765);
      MEMORY[0x1DA74A690](v25, v14);
      MEMORY[0x1DA74A690](32039, 0xE200000000000000);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA2FC190(0, *(v9 + 16) + 1, 1, v9);
        v9 = v18;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DA2FC190(v15 > 1, v16 + 1, 1, v9);
        v9 = v19;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = 0x3A27656D616E277BLL;
      *(v17 + 40) = 0xEA00000000002720;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
      sub_1DA2F982C();
      v20 = sub_1DA34CAF0();
      v22 = v21;

      MEMORY[0x1DA74A690](v20, v22);

      MEMORY[0x1DA74A690](93, 0xE100000000000000);

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DA310904(uint64_t a1)
{
  v25 = sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_17();
  v4 = a1 + 64;
  OUTLINED_FUNCTION_0_15();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v24 = (v10 + 8);
  v26 = a1;

  for (i = 0; v7; result = )
  {
LABEL_6:
    v14 = (i << 10) | (16 * __clz(__rbit64(v7)));
    v15 = (*(v26 + 48) + v14);
    v16 = v15[1];
    v17 = (*(v26 + 56) + v14);
    v18 = v17[1];
    v22 = *v15;
    v23 = *v17;

    sub_1DA34B630();
    sub_1DA2EEFDC();
    sub_1DA34CE40();
    (*v24)(v1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    sub_1DA2F982C();
    sub_1DA34CAF0();

    v19 = sub_1DA34CBB0();
    v21 = v20;

    if (sub_1DA312994(v19, v21) == 35)
    {
    }

    else if (v18)
    {
      MEMORY[0x1DA74A690](v22, v16);

      MEMORY[0x1DA74A690](8250, 0xE200000000000000);
      MEMORY[0x1DA74A690](v23, v18);

      MEMORY[0x1DA74A690](125, 0xE100000000000000);

      return 123;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return 32123;
    }

    v7 = *(v4 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t PromptManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA310C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA310CB8()
{
  type metadata accessor for TokenGeneratorActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EE10E038 = v0;
  return result;
}

uint64_t sub_1DA310CF4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA310DB8()
{
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA310E14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TokenGeneratorActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1DA310E4C()
{
  v32 = sub_1DA34C580();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v30 = sub_1DA34C5C0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v29 = sub_1DA34C5A0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v31 = sub_1DA34C5E0();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  (*(v9 + 104))(v13, *MEMORY[0x1E69A12A0], v30);
  sub_1DA34C590();
  sub_1DA34C5D0();
  (*(v15 + 8))(v19, v29);
  sub_1DA34C5B0();
  v26 = v32;
  (*(v1 + 104))(v5, *MEMORY[0x1E69A11A0], v32);
  LOBYTE(v15) = sub_1DA34C570();
  v27 = *(v1 + 8);
  v27(v5, v26);
  v27(v7, v26);
  (*(v21 + 8))(v25, v31);
  return v15 & 1;
}

uint64_t sub_1DA311144(uint64_t a1)
{
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v1 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v1, qword_1EE109080);
  v2 = sub_1DA34C8C0();
  v3 = sub_1DA34CD90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11_2();
    *v4 = 0;
    _os_log_impl(&dword_1DA2E0000, v2, v3, "Prewarming token generator for contextual awareness.", v4, 2u);
    OUTLINED_FUNCTION_6();
  }

  result = sub_1DA311234();
  if (result)
  {
    sub_1DA34C4D0();
  }

  return result;
}

uint64_t sub_1DA311234()
{
  v0 = sub_1DA34C500();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  v1 = sub_1DA34C560();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E88, &qword_1DA350DF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = sub_1DA34C520();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = qword_1EE10E030;
  if (!qword_1EE10E030)
  {
    if (sub_1DA310E4C())
    {
      sub_1DA34C420();
      sub_1DA34C510();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
      {
        (*(v15 + 32))(v19, v12, v13);
        v32[2] = "GeneratorActor";
        v32[3] = &unk_1DA350D30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E90, &qword_1DA350E00);
        v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v29 = swift_allocObject();
        v32[1] = v29;
        *(v29 + 16) = xmmword_1DA34DC80;
        (*(v15 + 16))(v29 + v28, v19, v13);
        sub_1DA34C4F0();
        v30 = [objc_opt_self() processInfo];
        [v30 processIdentifier];

        sub_1DA34C550();
        (*(v3 + 16))(v7, v9, v1);
        sub_1DA34C4E0();
        swift_allocObject();
        v20 = sub_1DA34C4C0();
        qword_1EE10E030 = v20;

        (*(v3 + 8))(v9, v1);
        (*(v15 + 8))(v19, v13);
        return v20;
      }

      sub_1DA312610(v12);
      if (qword_1EE109078 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_1EE109078);
      }

      v21 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v21, qword_1EE109080);
      v22 = sub_1DA34C8C0();
      v23 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_14;
      }

      v24 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v24);
      v25 = "Failed to load model bundle resource for contextual awareness.";
    }

    else
    {
      if (qword_1EE109078 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_1EE109078);
      }

      v26 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v26, qword_1EE109080);
      v22 = sub_1DA34C8C0();
      v23 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_14;
      }

      v27 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v27);
      v25 = "GMS model for contextual awareness is not available.";
    }

    _os_log_impl(&dword_1DA2E0000, v22, v23, v25, v9, 2u);
    OUTLINED_FUNCTION_6_9();
LABEL_14:

    return 0;
  }

  return v20;
}

uint64_t sub_1DA3116F0()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EE109790 != -1)
  {
    OUTLINED_FUNCTION_5_10(&qword_1EE109790);
  }

  v0 = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA311770, v0, 0);
}

uint64_t sub_1DA311770()
{
  OUTLINED_FUNCTION_59();
  if (qword_1EE10E030)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v1 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v1, qword_1EE109080);
    v2 = sub_1DA34C8C0();
    v3 = sub_1DA34CD90();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v4);
      OUTLINED_FUNCTION_17_4(&dword_1DA2E0000, v5, v6, "De-initializing token generator");
      OUTLINED_FUNCTION_6_9();
    }

    qword_1EE10E030 = 0;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA31185C()
{
  OUTLINED_FUNCTION_16();
  v0[8] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E98, &unk_1DA350E10);
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v3 = sub_1DA34CA70();
  v0[12] = v3;
  v0[13] = *(v3 - 8);
  v0[14] = swift_task_alloc();
  if (qword_1EE109790 != -1)
  {
    OUTLINED_FUNCTION_5_10(&qword_1EE109790);
  }

  v4 = qword_1EE10E038;
  v0[15] = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA3119A8, v4, 0);
}

uint64_t sub_1DA3119A8()
{
  OUTLINED_FUNCTION_59();
  v1 = qword_1EE10E030;
  if (qword_1EE10E030 || (qword_1EE10E030 = sub_1DA311234(), , (v1 = qword_1EE10E030) != 0))
  {
    v0[16] = v1;
    v0[5] = v1;

    v2 = swift_task_alloc();
    v0[17] = v2;
    v3 = sub_1DA34C4E0();
    v0[18] = v3;
    OUTLINED_FUNCTION_4_12();
    v6 = sub_1DA312678(v4, 255, v5, MEMORY[0x1E69DA450]);
    *v2 = v0;
    v2[1] = sub_1DA311B84;
    v7 = v0[14];

    return MEMORY[0x1EEE0A3E0](v7, v0 + 5, v3, v6);
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v8 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v8, qword_1EE109080);
    v9 = sub_1DA34C8C0();
    v10 = sub_1DA34CDA0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v11);
      OUTLINED_FUNCTION_17_4(&dword_1DA2E0000, v12, v13, "Unable to create token generator for contextual awareness.");
      OUTLINED_FUNCTION_6_9();
    }

    v14 = OUTLINED_FUNCTION_2_13();

    return v15(v14);
  }
}

uint64_t sub_1DA311B84()
{
  OUTLINED_FUNCTION_16();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 152) = v0;

  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1DA312190;
  }

  else
  {
    v5 = sub_1DA311C90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DA311C90()
{
  v21 = v0;
  v2 = sub_1DA34CA60();
  v4 = v3;
  v0[20] = v2;
  v0[21] = v3;
  if (static DeviceExpertPreferences.shouldLogContextualPrompt.getter())
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v5 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v5, qword_1EE109080);

    v6 = sub_1DA34C8C0();
    v7 = sub_1DA34CD90();

    if (os_log_type_enabled(v6, v7))
    {
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_25();
      v20 = v8;
      *v1 = 136642819;
      *(v1 + 4) = sub_1DA300D78(v2, v4, &v20);
      _os_log_impl(&dword_1DA2E0000, v6, v7, "Prompt text: %{sensitive}s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v9 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v9, qword_1EE109080);
  v10 = sub_1DA34C8C0();
  v11 = sub_1DA34CD90();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_3(v12);
    _os_log_impl(&dword_1DA2E0000, v10, v11, "Generating answer with contextual awareness...", v2, 2u);
    OUTLINED_FUNCTION_6_9();
  }

  v13 = v0[16];

  v0[7] = v13;
  sub_1DA34CA20();
  sub_1DA312678(&qword_1EE109030, 255, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  sub_1DA34CA80();
  v14 = swift_task_alloc();
  v0[22] = v14;
  OUTLINED_FUNCTION_4_12();
  v17 = sub_1DA312678(v15, 255, v16, MEMORY[0x1E69DA438]);
  *v14 = v0;
  v14[1] = sub_1DA311F60;
  v18 = v0[9];

  return MEMORY[0x1EEE0A390](v18, v17);
}

uint64_t sub_1DA311F60()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v6[23] = v0;

  if (v0)
  {
    v8 = v6[15];
    (*(v6[10] + 8))(v6[11], v6[9]);

    v9 = sub_1DA31231C;
    v10 = v8;
  }

  else
  {
    v11 = v6[15];
    v13 = v6[10];
    v12 = v6[11];
    v14 = v6[9];
    v6[24] = v3;
    v6[25] = v5;
    (*(v13 + 8))(v12, v14);
    v9 = sub_1DA3120C8;
    v10 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1DA3120C8()
{
  v1 = v0[24];
  v2 = v0[21];
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_1DA3124C0();

  v3 = v0[25];
  v4 = v0[20];

  v5 = v0[1];

  return v5(v3, v1, v4, v2);
}

uint64_t sub_1DA312190()
{
  v17 = v0;
  v2 = *(v0 + 152);
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v3 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_25();
    v16 = v7;
    OUTLINED_FUNCTION_16_2(4.8149e-34);
    v8 = sub_1DA34D1C0();
    v10 = sub_1DA300D78(v8, v9, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_15_5(&dword_1DA2E0000, v11, v12, "Failed to generate answer with contextual awareness: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  sub_1DA3124C0();

  v13 = OUTLINED_FUNCTION_2_13();

  return v14(v13);
}

uint64_t sub_1DA31231C()
{
  v17 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = v0[23];
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v3 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_25();
    v16 = v7;
    OUTLINED_FUNCTION_16_2(4.8149e-34);
    v8 = sub_1DA34D1C0();
    v10 = sub_1DA300D78(v8, v9, &v16);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_15_5(&dword_1DA2E0000, v11, v12, "Failed to generate answer with contextual awareness: %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  sub_1DA3124C0();

  v13 = OUTLINED_FUNCTION_2_13();

  return v14(v13);
}

uint64_t sub_1DA3124C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE10E038;
  v6 = sub_1DA312678(&qword_1EE109788, v4, type metadata accessor for TokenGeneratorActor, &unk_1DA350DC4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1DA302998(0, 0, v2, &unk_1DA350E20, v7);
}

uint64_t sub_1DA312610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5E88, &qword_1DA350DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA312678(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DA3126C0()
{
  OUTLINED_FUNCTION_59();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA312768;

  return sub_1DA3116F0();
}

uint64_t sub_1DA312768()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_9()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_2(float a1)
{
  *v3 = a1;

  return MEMORY[0x1EEE6BEC0](v1, v2 + 48, v2 + 16);
}

void OUTLINED_FUNCTION_17_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t sub_1DA312994(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA34D170();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

uint64_t static ContextType.from(rawValue:)@<X0>(char *a3@<X8>)
{

  v4 = sub_1DA34CFF0();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

DeviceExpertIntents::ContextType_optional __swiftcall ContextType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DA312B4C(uint64_t *a1@<X8>)
{
  ContextType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static SettingContextType.from(stringValue:)@<X0>(unsigned __int8 *a3@<X8>)
{
  v3 = 0;
  while (1)
  {
    v4 = byte_1F55DF588[v3++ + 32];
    v5 = sub_1DA34CBB0();
    v7 = v6;

    if (v5 == sub_1DA34CBB0() && v7 == v8)
    {
      break;
    }

    v10 = sub_1DA34D160();

    if (v10)
    {
      goto LABEL_10;
    }

    if (v3 == 22)
    {
      v4 = 22;
      goto LABEL_10;
    }
  }

LABEL_10:
  *a3 = v4;
  return result;
}

void SettingContextType.rawValue.getter()
{
  switch(*v0)
  {
    case 4:
    case 6:
    case 9:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
      OUTLINED_FUNCTION_4_13();
      break;
    case 5:
    case 0xA:
      OUTLINED_FUNCTION_2_14();
      break;
    default:
      return;
  }
}

DeviceExpertIntents::SettingContextType_optional __swiftcall SettingContextType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA34D170();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

void sub_1DA313520(uint64_t *a1@<X8>)
{
  SettingContextType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t BluetoothState.stringValue.getter()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

uint64_t WiFiState.stringValue.getter()
{
  if (*v0)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x657463656E6E6F63;
  }
}

uint64_t sub_1DA313640@<X0>(uint64_t *a1@<X8>)
{
  result = WiFiState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LowPowerModeState.stringValue.getter()
{
  if (*v0)
  {
    return 0x6576697463616E69;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1DA3136E0@<X0>(uint64_t *a1@<X8>)
{
  result = LowPowerModeState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppleAccountSignedInState.stringValue.getter()
{
  if (*v0)
  {
    return 0x6F2064656E676973;
  }

  else
  {
    return 0x692064656E676973;
  }
}

uint64_t sub_1DA3137E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleAccountSignedInState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FamilySharingMemberState.stringValue.getter()
{
  if (*v0)
  {
    return 0x656D206120746F6ELL;
  }

  else
  {
    return 0x7265626D656DLL;
  }
}

uint64_t sub_1DA313888@<X0>(uint64_t *a1@<X8>)
{
  result = FamilySharingMemberState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FamilyOrganizerState.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x657A696E6167726FLL;
  }
}

uint64_t sub_1DA313934@<X0>(uint64_t *a1@<X8>)
{
  result = FamilyOrganizerState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FindMyState.stringValue.getter()
{
  if (*v0)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t ActionButtonState.stringValue.getter()
{
  if (*v0)
  {
    return 0x7A696D6F74737563;
  }

  else
  {
    return 0x746E656C6973;
  }
}

uint64_t sub_1DA313A44@<X0>(uint64_t *a1@<X8>)
{
  result = ActionButtonState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CameraControlState.stringValue.getter()
{
  if (*v0)
  {
    return 0x7A696D6F74737563;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1DA313AEC@<X0>(uint64_t *a1@<X8>)
{
  result = CameraControlState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SetupState.stringValue.getter()
{
  if (*v0)
  {
    return 0x7574657320746F6ELL;
  }

  else
  {
    return 0x7075746573;
  }
}

uint64_t sub_1DA313B90@<X0>(uint64_t *a1@<X8>)
{
  result = SetupState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SilentModeState.stringValue.getter()
{
  if (*v0)
  {
    return 0x656C697320746F6ELL;
  }

  else
  {
    return 0x746E656C6973;
  }
}

uint64_t sub_1DA313C1C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result = OUTLINED_FUNCTION_5_11();
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

  *v2 = v5;
  return result;
}

uint64_t sub_1DA313C9C@<X0>(uint64_t *a1@<X8>)
{
  result = SilentModeState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ControlCenterModuleState.stringValue.getter()
{
  v1 = 0x6564646120746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

DeviceExpertIntents::ControlCenterModuleState_optional __swiftcall ControlCenterModuleState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DA313D9C@<X0>(uint64_t *a1@<X8>)
{
  result = ControlCenterModuleState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppState.stringValue.getter()
{
  v1 = 0x656572635366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x676E697373696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65657263536E6FLL;
  }
}

DeviceExpertIntents::AppState_optional __swiftcall AppState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_18();
  sub_1DA34CFF0();
  result.value = OUTLINED_FUNCTION_5_11();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1DA313E78()
{
  result = qword_1ECBA5EA0;
  if (!qword_1ECBA5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EA0);
  }

  return result;
}

unint64_t sub_1DA313F00()
{
  result = qword_1ECBA5EB8;
  if (!qword_1ECBA5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EB8);
  }

  return result;
}

uint64_t sub_1DA313F84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DA313FDC()
{
  result = qword_1ECBA5ED0;
  if (!qword_1ECBA5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5ED0);
  }

  return result;
}

unint64_t sub_1DA314034()
{
  result = qword_1ECBA5ED8;
  if (!qword_1ECBA5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5ED8);
  }

  return result;
}

unint64_t sub_1DA31408C()
{
  result = qword_1ECBA5EE0;
  if (!qword_1ECBA5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EE0);
  }

  return result;
}

unint64_t sub_1DA3140E4()
{
  result = qword_1ECBA5EE8;
  if (!qword_1ECBA5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EE8);
  }

  return result;
}

unint64_t sub_1DA31413C()
{
  result = qword_1ECBA5EF0;
  if (!qword_1ECBA5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EF0);
  }

  return result;
}

unint64_t sub_1DA314194()
{
  result = qword_1ECBA5EF8;
  if (!qword_1ECBA5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5EF8);
  }

  return result;
}

unint64_t sub_1DA3141EC()
{
  result = qword_1ECBA5F00;
  if (!qword_1ECBA5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F00);
  }

  return result;
}

unint64_t sub_1DA314244()
{
  result = qword_1ECBA5F08;
  if (!qword_1ECBA5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F08);
  }

  return result;
}

unint64_t sub_1DA31429C()
{
  result = qword_1ECBA5F10;
  if (!qword_1ECBA5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F10);
  }

  return result;
}

unint64_t sub_1DA3142F4()
{
  result = qword_1ECBA5F18;
  if (!qword_1ECBA5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F18);
  }

  return result;
}

unint64_t sub_1DA31434C()
{
  result = qword_1ECBA5F20;
  if (!qword_1ECBA5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F20);
  }

  return result;
}

unint64_t sub_1DA3143A4()
{
  result = qword_1ECBA5F28;
  if (!qword_1ECBA5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F28);
  }

  return result;
}

unint64_t sub_1DA3143FC()
{
  result = qword_1ECBA5F30;
  if (!qword_1ECBA5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F30);
  }

  return result;
}

unint64_t sub_1DA314454()
{
  result = qword_1ECBA5F38;
  if (!qword_1ECBA5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F38);
  }

  return result;
}

unint64_t sub_1DA3144AC()
{
  result = qword_1ECBA5F40;
  if (!qword_1ECBA5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F40);
  }

  return result;
}

unint64_t sub_1DA314504()
{
  result = qword_1ECBA5F48;
  if (!qword_1ECBA5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F48);
  }

  return result;
}

unint64_t sub_1DA314568()
{
  result = qword_1ECBA5F50;
  if (!qword_1ECBA5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F50);
  }

  return result;
}

uint64_t sub_1DA3145E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SettingContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingContextType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA314900(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_12(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3149E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_12(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_1DA314AB4(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      return;
    default:
      OUTLINED_FUNCTION_2_14();
      break;
  }
}

uint64_t OUTLINED_FUNCTION_5_11()
{
}

uint64_t sub_1DA314E40()
{
  if (qword_1EE109938 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE109940;
  type metadata accessor for PromptManager();
  inited = swift_initStaticObject();
  type metadata accessor for AnswerGeneration();
  OUTLINED_FUNCTION_3_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = inited;
  qword_1EE109A30 = v2;
}

uint64_t static AnswerGeneration.shared.getter()
{
  if (qword_1EE109A28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA314F34()
{
  OUTLINED_FUNCTION_16();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_1DA34BFB0();
  v1[9] = v4;
  OUTLINED_FUNCTION_0_12(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = sub_1DA34CA20();
  v1[13] = v6;
  OUTLINED_FUNCTION_0_12(v6);
  v1[14] = v7;
  v1[15] = swift_task_alloc();
  v8 = sub_1DA34BED0();
  v1[16] = v8;
  OUTLINED_FUNCTION_0_12(v8);
  v1[17] = v9;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3150A4()
{
  v1 = sub_1DA34BA80();
  v0[20] = sub_1DA3161CC(v1);

  v0[21] = sub_1DA34BA80();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1DA315174;

  return sub_1DA316524();
}

uint64_t sub_1DA315174()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  *(v6 + 184) = v5;

  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA31527C()
{
  v43 = v0;
  v1 = v0[20];
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_18_3();
  while (v5)
  {
LABEL_6:
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_13_4();
    if (v7)
    {
      v8 = v0[23];
LABEL_14:
      v15 = v0[19];
      v16 = v0[17];
      v41 = v0[16];
      type metadata accessor for AnswerFormatter();
      inited = swift_initStackObject();
      v0[24] = inited;
      v18 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = sub_1DA34CAC0();
      *(inited + 24) = v18;
      sub_1DA34BEE0();
      sub_1DA3170E0(v15, 1);
      v20 = v19;
      v22 = v21;
      v0[25] = v19;
      v0[26] = v21;
      v23 = *(v16 + 8);
      v0[27] = v23;
      v0[28] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23(v15, v41);
      v24 = sub_1DA34BF40();
      sub_1DA30FEEC(v24, v25, v20, v22, v1, v8);

      v40 = swift_task_alloc();
      v0[29] = v40;
      *v40 = v0;
      v40[1] = sub_1DA315724;

      return sub_1DA31185C();
    }
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v6 >= v4)
    {
      break;
    }

    ++v3;
    if (*(v2 + 8 * v6))
    {
      goto LABEL_6;
    }
  }

  v8 = v0[23];
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_18_3();
  while (v12)
  {
LABEL_13:
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_13_4();
    if (v14)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      if (qword_1EE109078 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    ++v10;
    if (*(v9 + 8 * v13))
    {
      goto LABEL_13;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0_16(&qword_1EE109078);
LABEL_16:
  v26 = sub_1DA34C8E0();
  __swift_project_value_buffer(v26, qword_1EE109080);
  v27 = sub_1DA34C8C0();
  v28 = sub_1DA34CD90();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DA300D78(0xD000000000000014, 0x80000001DA356180, &v42);
    _os_log_impl(&dword_1DA2E0000, v27, v28, "%s: No matching app or settings context found; returning original result.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v31 = OUTLINED_FUNCTION_7_6();
  v32(v31);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EE109430);
  }

  v33 = v0[6];
  v34 = v33 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
  v35 = byte_1EE109468;
  v37 = xmmword_1EE109448;
  v36 = xmmword_1EE109458;
  *v34 = xmmword_1EE109438;
  *(v34 + 16) = v37;
  *(v34 + 32) = v36;
  *(v34 + 48) = v35;
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();

  return v38();
}

uint64_t sub_1DA315724()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  *v4 = *v1;
  v3[30] = v5;
  v3[31] = v6;
  v3[32] = v7;
  v3[33] = v8;
  v3[34] = v0;

  if (v0)
  {

    v9 = sub_1DA315EC0;
  }

  else
  {
    v9 = sub_1DA315848;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DA315848()
{
  v75 = v2;
  v4 = v2[31];
  if (!v4)
  {

    v18 = OUTLINED_FUNCTION_7_6();
    v19(v18);
    if (qword_1EE109430 != -1)
    {
      OUTLINED_FUNCTION_0_18(&qword_1EE109430);
    }

    OUTLINED_FUNCTION_15_6();
    v65 = xmmword_1EE109438;
    v66 = xmmword_1EE109448;
    v67 = xmmword_1EE109458;
    v68 = byte_1EE109468;
    swift_setDeallocating();
    sub_1DA319EBC();
    OUTLINED_FUNCTION_3_8();
    swift_deallocClassInstance();
    MEMORY[8](v0, v1);
    v20 = v3 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
    v21 = v66;
    *v20 = v65;
    *(v20 + 16) = v21;
    *(v20 + 32) = v67;
    *(v20 + 48) = v68;
    goto LABEL_22;
  }

  v5 = v2[33];
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v6 = sub_1DA34C8E0();
  __swift_project_value_buffer(v6, qword_1EE109080);

  v7 = sub_1DA34C8C0();
  v8 = sub_1DA34CD90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[30];
    v10 = swift_slowAlloc();
    *&v65 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1DA300D78(0xD000000000000014, 0x80000001DA356180, &v65);
    *(v10 + 12) = 2080;

    v11 = sub_1DA300D78(v9, v4, &v65);

    *(v10 + 14) = v11;
    _os_log_impl(&dword_1DA2E0000, v7, v8, "%s Rewritten Answer: %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v12 = v2[34];
  v13 = v2[18];
  v14 = sub_1DA3169D8(v2[30], v4);
  v16 = v15;

  sub_1DA31795C(v14, v16, v13);
  if (v12)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);

    OUTLINED_FUNCTION_15();
    goto LABEL_23;
  }

  v62 = v2[31];
  v64 = v5;
  v22 = v2[19];
  v23 = v2[17];
  v51 = v2[16];
  v54 = v2[18];
  v24 = v2[12];
  v57 = v2[11];
  v60 = v2[30];
  v25 = v2[9];
  v26 = *(v2[10] + 16);
  v26(v24, v2[7], v25);
  (*(v23 + 16))(v22, v54, v51);
  sub_1DA34BEF0();
  v26(v57, v24, v25);
  if (v14 == v60 && v62 == v16)
  {
  }

  else
  {
    v28 = sub_1DA34D160();

    if ((v28 & 1) == 0)
    {

      if (qword_1EE109430 != -1)
      {
        OUTLINED_FUNCTION_0_18(&qword_1EE109430);
      }

      v49 = v2[16];
      v52 = v2[18];
      v58 = v2[27];
      v61 = v2[15];
      v29 = v2[14];
      v55 = v2[13];
      v30 = v2[10];
      v47 = v2[9];
      v48 = v2[12];
      v31 = xmmword_1EE109438;
      v32 = BYTE1(xmmword_1EE109438);
      v69 = *(&xmmword_1EE109438 + 2);
      v70 = WORD3(xmmword_1EE109438);
      v33 = *(&xmmword_1EE109438 + 1);
      v34 = xmmword_1EE109448;
      *(v71 + 3) = DWORD1(xmmword_1EE109448);
      v71[0] = *(&xmmword_1EE109448 + 1);
      v63 = *(&xmmword_1EE109448 + 1);
      v35 = xmmword_1EE109458;
      *(v72 + 3) = DWORD1(xmmword_1EE109458);
      v72[0] = *(&xmmword_1EE109458 + 1);
      v36 = *(&xmmword_1EE109458 + 1);
      v37 = byte_1EE109468;

      (*(v30 + 8))(v48, v47);
      v58(v52, v49);
      (*(v29 + 8))(v61, v55);
      goto LABEL_21;
    }
  }

  v38 = v2[30];
  v50 = v2[18];
  v39 = v2[16];
  v59 = v2[15];
  v40 = v2[14];
  v53 = v2[13];
  v56 = v2[27];
  v41 = v2[12];
  v42 = v2[9];
  v43 = v2[10];
  v63 = sub_1DA315FF4(v2[32], v64);
  v36 = sub_1DA315FF4(v38, v4);

  (*(v43 + 8))(v41, v42);
  v56(v50, v39);
  (*(v40 + 8))(v59, v53);
  v33 = 0;
  v35 = 0;
  v37 = 0;
  v31 = 1;
  v73 = 1;
  v74 = 0;
  LOBYTE(v65) = 0;
  v32 = 1;
  v34 = 1;
LABEL_21:
  v44 = v2[6];
  (*(v2[10] + 32))(v44, v2[11], v2[9]);
  v45 = v44 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
  *v45 = v31;
  *(v45 + 1) = v32;
  *(v45 + 2) = v69;
  *(v45 + 6) = v70;
  *(v45 + 8) = v33;
  *(v45 + 16) = v34;
  *(v45 + 17) = v71[0];
  *(v45 + 20) = *(v71 + 3);
  *(v45 + 24) = v63;
  *(v45 + 32) = v35;
  *(v45 + 36) = *(v72 + 3);
  *(v45 + 33) = v72[0];
  *(v45 + 40) = v36;
  *(v45 + 48) = v37;
LABEL_22:
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();
LABEL_23:

  return v17();
}

uint64_t sub_1DA315EC0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_6();
  v6(v5);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EE109430);
  }

  OUTLINED_FUNCTION_15_6();
  v10 = xmmword_1EE109438;
  v11 = xmmword_1EE109448;
  v12 = xmmword_1EE109458;
  v13 = byte_1EE109468;
  swift_setDeallocating();
  sub_1DA319EBC();
  OUTLINED_FUNCTION_3_8();
  swift_deallocClassInstance();
  (*(v3 + 8))(v1, v2);
  v7 = v4 + *(type metadata accessor for ContextualRewriteResult(0) + 20);
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v7 + 48) = v13;
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_15();

  return v8();
}

uint64_t sub_1DA315FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a1;
  v23[1] = a2;
  sub_1DA34B630();
  sub_1DA2EEFDC();
  v10 = sub_1DA34CE40();
  result = (*(v6 + 8))(v9, v4);
  v12 = 0;
  v13 = *(v10 + 16);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = (v10 + 40 + 16 * v12);
  while (1)
  {
    if (v13 == v12)
    {

      v22 = *(v14 + 16);

      return v22;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    ++v12;
    v17 = *(v15 - 1);
    v16 = *v15;
    v15 += 2;
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v14;
      if ((result & 1) == 0)
      {
        result = sub_1DA348A4C(0, *(v14 + 16) + 1, 1);
        v14 = v23[0];
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1DA348A4C((v19 > 1), v20 + 1, 1);
        v14 = v23[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3161CC(uint64_t a1)
{
  v2 = sub_1DA34BA70();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = 0;
  v13 = *(a1 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_10;
    }

    (*(v4 + 16))(v8, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v2);
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v14 = sub_1DA34CFF0();

    if (v14 <= 3 && (sub_1DA32FA24(v14, 2) & 1) != 0)
    {
      break;
    }

    (*(v4 + 8))(v8, v2);
    ++v12;
  }

  v15 = *(v4 + 32);
  v16 = v29;
  v15(v29, v8, v2);
  v15(v30, v16, v2);
  v17 = sub_1DA34BA50();
  if (!v17[2])
  {
    v22 = OUTLINED_FUNCTION_12_5();
    v23(v22);

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
    return sub_1DA34CAC0();
  }

  v18 = v17[4];
  v19 = v17[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F58, &qword_1DA351F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  *(inited + 32) = v18;
  *(inited + 40) = v19;

  sub_1DA321128(v18, v19, &v31);

  v21 = xmmword_1DA351EC0;
  switch(v31)
  {
    case 1:
      v21 = xmmword_1DA351EE0;
      goto LABEL_12;
    case 2:
      v21 = xmmword_1DA351ED0;
      goto LABEL_12;
    case 3:
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      goto LABEL_14;
    default:
LABEL_12:
      *(inited + 48) = v21;
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
      v24 = sub_1DA34CAC0();
      v25 = OUTLINED_FUNCTION_12_5();
      v26(v25);
      break;
  }

  return v24;
}

uint64_t sub_1DA316524()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DA34BA70();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_12(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3165E8()
{
  v1 = 0;
  v2 = v0[5];
  v3 = *(v0[2] + 16);
  while (v3 != v1)
  {
    (*(v2 + 16))(v0[6], v0[2] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, v0[4]);
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v4 = sub_1DA34CFF0();

    if (v4 <= 3 && (sub_1DA32FA24(v4, 3) & 1) != 0)
    {
      v8 = v0[7];
      v9 = v0[8];
      v10 = v0[4];
      v11 = *(v0[5] + 32);
      v11(v8, v0[6], v10);
      v11(v9, v8, v10);
      v12 = sub_1DA34BA50();
      v0[9] = v12;
      v13 = swift_task_alloc();
      v0[10] = v13;
      *v13 = v0;
      v13[1] = sub_1DA316834;

      return sub_1DA31E0E4(v12);
    }

    (*(v2 + 8))(v0[6], v0[4]);
    ++v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v5 = sub_1DA34CAC0();

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1DA316834()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA31693C()
{
  (*(v0[5] + 8))(v0[8], v0[4]);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1DA3169D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || sub_1DA34CBF0() <= 9)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v5 = sub_1DA34C8E0();
    __swift_project_value_buffer(v5, qword_1EE109080);

    v6 = sub_1DA34C8C0();
    v7 = sub_1DA34CD90();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_1DA300D78(0xD000000000000029, 0x80000001DA3561F0, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1DA300D78(a1, a2, &v13);
      *(v8 + 22) = 2080;
      v9 = OUTLINED_FUNCTION_12_5();
      *(v8 + 24) = sub_1DA300D78(v9, v10, v11);
      _os_log_impl(&dword_1DA2E0000, v6, v7, "%s: Validation failed for rewritten answer: %s, returning original answer: %s", v8, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  return OUTLINED_FUNCTION_12_5();
}

uint64_t AnswerGeneration.deinit()
{

  return v0;
}

uint64_t AnswerGeneration.__deallocating_deinit()
{
  AnswerGeneration.deinit();
  OUTLINED_FUNCTION_3_8();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AnswerGeneration.generateAnswer(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DA316D78;

  return v8(a1, a2);
}

uint64_t sub_1DA316D78()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_7()
{
}

uint64_t AnswerFormatterError.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

unint64_t sub_1DA316FD0()
{
  result = qword_1ECBA5F60;
  if (!qword_1ECBA5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerFormatterError(_BYTE *result, int a2, int a3)
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

void sub_1DA3170E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1();
  v3 = v2;
  LODWORD(v5) = v4;
  v7 = v6;
  v190 = sub_1DA34B9B0();
  OUTLINED_FUNCTION_0();
  v183 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v191 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F98, &qword_1DA3520B8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v177 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FA0, &qword_1DA3520C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_6_10();
  v189 = v16;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v177 - v18;
  i = sub_1DA34BF90();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_10();
  v187 = v23;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v24);
  v186 = &v177 - v25;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_1DA34CAC0();
  swift_beginAccess();
  *(v2 + 16) = v27;

  *(v2 + 24) = v26;

  v28 = *(sub_1DA34B980() + 16);

  if (v28)
  {
    v193 = 8227;
    v194 = 0xE200000000000000;
    v29 = sub_1DA34B980();
    sub_1DA31821C(v29, v30, v31, v32, v33, v34, v35, v36, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, i);
    v38 = v37;
    v40 = v39;

    MEMORY[0x1DA74A690](v38, v40);

    v41 = v193;
    v42 = v194;
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    v46 = v43;
    v47 = (v45 + 1);
    if (v45 >= v44 >> 1)
    {
LABEL_50:
      v146 = OUTLINED_FUNCTION_9_4(v44);
      sub_1DA2FC190(v146, v47, 1, v147);
      v46 = v148;
    }

    *(v46 + 16) = v47;
    v48 = v46 + 16 * v45;
    v26 = v46;
    *(v48 + 32) = v41;
    *(v48 + 40) = v42;
  }

  v49 = *(sub_1DA34BE10() + 16);

  if (v49)
  {
    v50 = sub_1DA34BE10();
    sub_1DA31821C(v50, v51, v52, v53, v54, v55, v56, v57, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, i);
    OUTLINED_FUNCTION_12_6();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v149, v150, v151, v152);
      v26 = v153;
    }

    OUTLINED_FUNCTION_30_3();
    if (v63)
    {
      v154 = OUTLINED_FUNCTION_9_4(v62);
      sub_1DA2FC190(v154, v26, 1, v155);
      v61 = v58;
    }

    OUTLINED_FUNCTION_29_3(v58, v59, v60, v61);
  }

  v64 = *(sub_1DA34BE80() + 16);

  if (v64)
  {
    v65 = sub_1DA34BE80();
    sub_1DA31821C(v65, v66, v67, v68, v69, v70, v71, v72, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, i);
    OUTLINED_FUNCTION_12_6();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v156 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v156, v157, v158, v159);
      v26 = v160;
    }

    OUTLINED_FUNCTION_30_3();
    if (v63)
    {
      v161 = OUTLINED_FUNCTION_9_4(v77);
      sub_1DA2FC190(v161, v26, 1, v162);
      v76 = v73;
    }

    OUTLINED_FUNCTION_29_3(v73, v74, v75, v76);
  }

  v78 = *(sub_1DA34BA50() + 16);

  if (v78)
  {
    v180 = v26;
    HIDWORD(v179) = v5;
    v79 = v186;
    sub_1DA34BEA0();
    v81 = v187;
    v80 = i;
    (*(v21 + 104))(v187, *MEMORY[0x1E69BCDB8], i);
    OUTLINED_FUNCTION_10_8();
    sub_1DA31A19C(v82, v83, MEMORY[0x1E69BCDD8]);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v84 = *(v21 + 8);
    v21 += 8;
    v84(v81, v80);
    v84(v79, v80);
    v186 = v192;
    v187 = v193;
    v178 = v7;
    v41 = v7;
    v85 = sub_1DA34BA50();
    v42 = 0;
    v86 = *(v85 + 16);
    v44 = v183;
    v181 = v183 + 16;
    v47 = (v183 + 32);
    v7 = (v183 + 8);
    v45 = MEMORY[0x1E69E7CC0];
    v184 = v86;
    v185 = v12;
    for (i = v85; ; v85 = i)
    {
      v5 = v189;
      if (v42 == v86)
      {
        v87 = 1;
        v42 = v86;
      }

      else
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v44 = *(v85 + 16);
        if (v42 >= v44)
        {
          goto LABEL_48;
        }

        v21 = v182;
        OUTLINED_FUNCTION_25_1();
        v91 = v88 + v89 + *(v90 + 72) * v42;
        v92 = *(v12 + 48);
        *v21 = v42;
        (*(v90 + 16))(v21 + v92, v91, v190);
        sub_1DA31A250(v21, v5, &qword_1ECBA5F98, &qword_1DA3520B8);
        v87 = 0;
        ++v42;
      }

      __swift_storeEnumTagSinglePayload(v5, v87, 1, v12);
      sub_1DA31A250(v5, v19, &qword_1ECBA5FA0, &qword_1DA3520C0);
      if (__swift_getEnumTagSinglePayload(v19, 1, v12) == 1)
      {
        break;
      }

      v41 = *v19;
      (*v47)(v191, &v19[*(v12 + 48)], v190);
      if (v187 == v186)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_49;
        }

        v192 = v41 + 1;
        v193 = sub_1DA34D140();
        v194 = v93;
        MEMORY[0x1DA74A690](8238, 0xE200000000000000);
        v95 = v193;
        v94 = v194;
      }

      else
      {
        v94 = 0xE200000000000000;
        v95 = 8237;
      }

      v193 = v95;
      v194 = v94;
      v96 = sub_1DA34B980();
      v97 = v3;
      sub_1DA31821C(v96, v98, v99, v100, v101, v102, v103, v104, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, i);
      v106 = v105;
      v108 = v107;

      MEMORY[0x1DA74A690](v106, v108);

      v21 = v193;
      v109 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = OUTLINED_FUNCTION_1_19();
        sub_1DA2FC190(v112, v113, v114, v115);
        v45 = v116;
      }

      v111 = *(v45 + 16);
      v110 = *(v45 + 24);
      v41 = (v111 + 1);
      if (v111 >= v110 >> 1)
      {
        v117 = OUTLINED_FUNCTION_7_7(v110);
        sub_1DA2FC190(v117, v118, v119, v45);
        v45 = v120;
      }

      (*v7)(v191, v190);
      *(v45 + 16) = v41;
      v44 = v45 + 16 * v111;
      *(v44 + 32) = v21;
      *(v44 + 40) = v109;
      v3 = v97;
      v86 = v184;
      v12 = v185;
    }

    v193 = v45;
    v121 = OUTLINED_FUNCTION_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
    v123 = OUTLINED_FUNCTION_11_3(&qword_1EE109F60);
    OUTLINED_FUNCTION_23_4(v123);
    OUTLINED_FUNCTION_12_6();

    v26 = v180;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v163 = OUTLINED_FUNCTION_1_19();
      sub_1DA2FC190(v163, v164, v165, v166);
      v26 = v167;
    }

    LOBYTE(v5) = BYTE4(v179);
    v125 = *(v26 + 16);
    v124 = *(v26 + 24);
    if (v125 >= v124 >> 1)
    {
      v168 = OUTLINED_FUNCTION_9_4(v124);
      sub_1DA2FC190(v168, v125 + 1, 1, v26);
      v26 = v169;
    }

    *(v26 + 16) = v125 + 1;
    v126 = v26 + 16 * v125;
    *(v126 + 32) = &qword_1ECBA5A78;
    *(v126 + 40) = qword_1DA34EA00;
  }

  v127 = *(_s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0() + 16);

  if (v127)
  {
    v128 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0();
    if (v5)
    {
      *(v3 + 24) = v128;
    }

    else
    {
      sub_1DA31821C(v128, v129, v130, v131, v132, v133, v134, v135, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, i);
      v137 = v136;
      v139 = v138;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = OUTLINED_FUNCTION_1_19();
        sub_1DA2FC190(v170, v171, v172, v173);
        v26 = v174;
      }

      v141 = *(v26 + 16);
      v140 = *(v26 + 24);
      if (v141 >= v140 >> 1)
      {
        v175 = OUTLINED_FUNCTION_9_4(v140);
        sub_1DA2FC190(v175, v141 + 1, 1, v26);
        v26 = v176;
      }

      *(v26 + 16) = v141 + 1;
      v142 = v26 + 16 * v141;
      *(v142 + 32) = v137;
      *(v142 + 40) = v139;
    }
  }

  v193 = v26;
  v143 = OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(v143, v144);
  v145 = OUTLINED_FUNCTION_11_3(&qword_1EE109F60);
  OUTLINED_FUNCTION_23_4(v145);
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_32_1();
}

uint64_t sub_1DA31795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = sub_1DA34B9B0();
  OUTLINED_FUNCTION_0();
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_10();
  v104 = v8;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v9);
  v100 = v96 - v10;
  v97 = sub_1DA34BF90();
  OUTLINED_FUNCTION_0();
  v102 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_10();
  v99 = v13;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v96 - v15;
  v17 = sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  v106 = a3;
  sub_1DA34BEC0();
  v107 = a1;
  v108 = a2;
  v113 = 2570;
  v114 = 0xE200000000000000;
  v111 = 10;
  v112 = 0xE100000000000000;
  sub_1DA2EEFDC();
  v107 = sub_1DA34CE70();
  v108 = v24;
  sub_1DA34B630();
  v25 = sub_1DA34CE60();
  v27 = v26;
  v28 = v23;
  v29 = v102;
  (*(v19 + 8))(v28, v17);

  v30 = sub_1DA31975C(v25, v27);
  v31 = (v29 + 104);
  v32 = MEMORY[0x1E69BCDC0];
  v98 = (v29 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  if (v30)
  {
    v33 = *v31;
    v34 = v97;
    (*v31)(v16, *MEMORY[0x1E69BCDB8], v97);
  }

  else
  {
    v34 = v97;
    v35 = sub_1DA319778(v25, v27);
    v33 = *v31;
    if (v35)
    {
      v36 = *MEMORY[0x1E69BCDC8];
    }

    else
    {
      v36 = *v32;
    }

    v33(v16, v36, v34);
  }

  sub_1DA34BEB0();
  sub_1DA34BEA0();
  v37 = *v32;
  v38 = v99;
  v97 = v33;
  v33(v99, v37, v34);
  OUTLINED_FUNCTION_10_8();
  v41 = sub_1DA31A19C(v39, v40, MEMORY[0x1E69BCDD8]);
  sub_1DA34CC40();
  v96[1] = v41;
  sub_1DA34CC40();
  v44 = *(v29 + 8);
  v43 = v29 + 8;
  v42 = v44;
  v45 = v38;
  v46 = v16;
  v44(v45, v34);
  v47 = v16;
  v48 = v34;
  v44(v47, v34);
  if (v107 == v113)
  {
    v49 = v103;
    v50 = v115;
    sub_1DA318990(v25, v27);
    if (v50)
    {
      sub_1DA34BED0();
      OUTLINED_FUNCTION_12();
      (*(v51 + 8))(v106);
    }

    sub_1DA34BE90();
    goto LABEL_36;
  }

  v102 = v43;
  v107 = v25;
  v108 = v27;
  v113 = 10;
  v114 = 0xE100000000000000;
  v52 = sub_1DA34CE50();

  v53 = v52[2];
  v49 = v103;
  if (!v53)
  {
    goto LABEL_18;
  }

  v54 = v52[4];
  v55 = v52[5];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v115;
  if (v56)
  {

    sub_1DA318990(v54, v55);
    if (v57)
    {
      sub_1DA34BED0();
      OUTLINED_FUNCTION_12();
      (*(v58 + 8))(v106);
    }

    sub_1DA34BE20();
    v60 = v52[2];
  }

  else
  {
    v60 = v52[2];
  }

  if (v60 < 2)
  {
LABEL_18:

LABEL_36:
    result = *(v49 + 24);
    if (*(result + 16))
    {

      return sub_1DA34BE40();
    }

    return result;
  }

  v115 = v57;
  v61 = sub_1DA31A1E4(1uLL, v53, v52);
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v107 = v61;
  v108 = v63;
  v109 = v65;
  v110 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F90, &qword_1DA3520B0);
  sub_1DA2FFBE8(&qword_1EE108FE0, &qword_1ECBA5F90, &qword_1DA3520B0, MEMORY[0x1E69E6958]);
  v68 = sub_1DA34CAF0();
  v70 = v69;
  swift_unknownObjectRelease();
  sub_1DA34BEA0();
  v71 = v99;
  v97(v99, *MEMORY[0x1E69BCDB8], v48);
  sub_1DA34CC40();
  sub_1DA34CC40();
  v42(v71, v48);
  v42(v46, v48);
  if (v107 == v113)
  {
    sub_1DA3198E4(v68, v70);
  }

  else
  {
    sub_1DA319BD0(v68, v70);
  }

  v73 = v72;
  v74 = v100;

  v75 = 0;
  v76 = (v101 + 16);
  v102 = *(v73 + 16);
  v98 = v101 + 32;
  v99 = (v101 + 8);
  for (i = (v73 + 40); ; i += 2)
  {
    if (v102 == v75)
    {

      v49 = v103;
      goto LABEL_36;
    }

    if (v75 >= *(v73 + 16))
    {
      break;
    }

    v78 = *(i - 1);
    v79 = *i;

    sub_1DA34B9A0();
    v80 = v115;
    sub_1DA318990(v78, v79);
    v115 = v80;
    if (v80)
    {

      (*v99)(v74, v105);
      sub_1DA34BED0();
      OUTLINED_FUNCTION_12();
      return (*(v95 + 8))(v106);
    }

    sub_1DA34B990();
    (*v76)(v104, v74, v105);
    v81 = sub_1DA34BE50();
    v83 = v82;
    v84 = *v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v83 = v84;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1DA2FC354();
      v84 = v93;
      *v83 = v93;
    }

    v87 = *(v84 + 16);
    v86 = *(v84 + 24);
    if (v87 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_9_4(v86);
      sub_1DA2FC354();
      v84 = v94;
      *v83 = v94;
    }

    *(v84 + 16) = v87 + 1;
    v88 = v101;
    OUTLINED_FUNCTION_25_1();
    v90 = v84 + v89 + *(v88 + 72) * v87;
    v91 = v105;
    (*(v88 + 32))(v90, v104, v105);
    v81(&v107, 0);
    v92 = *(v88 + 8);
    v74 = v100;
    result = v92(v100, v91);
    ++v75;
  }

  __break(1u);
  return result;
}

void sub_1DA31821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33_1();
  v109 = v20;
  v22 = v21;
  v23 = sub_1DA34BCC0();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_4(v28 - v27);
  v102 = sub_1DA34BBF0();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_4();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  OUTLINED_FUNCTION_6_10();
  v113 = v36;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v101 - v38;
  v40 = sub_1DA34BA10();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1_4();
  v46 = v45 - v44;
  v122 = 0;
  v123 = 0xE000000000000000;
  v47 = *(v22 + 16);
  if (!v47)
  {
LABEL_23:
    OUTLINED_FUNCTION_32_1();
    return;
  }

  v105 = v23;
  v49 = *(v42 + 16);
  v48 = v42 + 16;
  v117 = v49;
  OUTLINED_FUNCTION_25_1();
  v51 = v22 + v50;
  v115 = (v48 - 8);
  v101[2] = v25 + 32;
  v101[1] = v25 + 8;
  v116 = *(v48 + 56);
  v112 = *MEMORY[0x1E69BCC98];
  v108 = v30 + 32;
  v107 = v30 + 8;
  v106 = *MEMORY[0x1E69BCCA0];
  v52 = v102;
  v104 = v48;
  v114 = v40;
  while (1)
  {
    v53 = v34;
    v117(v46, v51, v40);
    sub_1DA34BA00();
    v54 = v40;
    v55 = sub_1DA34B9D0();
    if (__swift_getEnumTagSinglePayload(v39, 1, v55) == 1)
    {
      (*v115)(v46, v54);
      v40 = v54;
      goto LABEL_22;
    }

    v56 = v113;
    sub_1DA31A11C(v39, v113);
    v57 = OUTLINED_FUNCTION_28_2();
    v59 = v58(v57);
    if (v59 == v112)
    {
      v60 = OUTLINED_FUNCTION_28_2();
      v61(v60);
      OUTLINED_FUNCTION_16_4();
      v62(v53, v56, v52);
      if (_s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0())
      {
        *&v120 = 10794;
        *(&v120 + 1) = 0xE200000000000000;
        v63 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        v34 = v53;
        MEMORY[0x1DA74A690](v63);

        MEMORY[0x1DA74A690](10794, 0xE200000000000000);
        v40 = *(&v120 + 1);
        v65 = *(&v120 + 1);
        v64 = v120;
      }

      else
      {
        v64 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        v34 = v53;
        v40 = v65;
      }

      MEMORY[0x1DA74A690](v64, v65);

      OUTLINED_FUNCTION_16_4();
      v84(v34, v52);
      v85 = OUTLINED_FUNCTION_31_1();
      v86(v85);
      goto LABEL_22;
    }

    if (v59 != v106)
    {
      v87 = v114;
      (*v115)(v46, v114);
      v88 = OUTLINED_FUNCTION_28_2();
      v40 = v87;
      v89(v88);
      v34 = v53;
      goto LABEL_22;
    }

    v66 = OUTLINED_FUNCTION_28_2();
    v67(v66);
    OUTLINED_FUNCTION_16_4();
    v68(v110, v56, v105);
    v69 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
    v71 = v70;
    v72 = v114;
    v121 = v114;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v120);
    v117(boxed_opaque_existential_0, v46, v72);
    v74 = v109;
    swift_beginAccess();
    sub_1DA31A18C(&v120, v119);
    swift_isUniquelyReferenced_nonNull_native();
    v118 = *(v74 + 16);
    v75 = v118;
    *(v74 + 16) = 0x8000000000000000;
    v103 = v69;
    v111 = v71;
    v76 = sub_1DA30F7DC(v69, v71);
    if (__OFADD__(v75[2], (v77 & 1) == 0))
    {
      break;
    }

    v78 = v76;
    v79 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F88, &qword_1DA3520A8);
    if (sub_1DA34CFA0())
    {
      v80 = sub_1DA30F7DC(v103, v111);
      v82 = v105;
      v83 = v110;
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_26;
      }

      v78 = v80;
    }

    else
    {
      v82 = v105;
      v83 = v110;
    }

    v90 = v118;
    if (v79)
    {
      v91 = (v118[7] + 32 * v78);
      __swift_destroy_boxed_opaque_existential_1(v91);
      sub_1DA31A18C(v119, v91);
    }

    else
    {
      v118[(v78 >> 6) + 8] |= 1 << v78;
      v92 = (v90[6] + 16 * v78);
      v93 = v111;
      *v92 = v103;
      v92[1] = v93;
      sub_1DA31A18C(v119, (v90[7] + 32 * v78));
      v94 = v90[2];
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_25;
      }

      v90[2] = v96;
    }

    *(v109 + 16) = v90;

    swift_endAccess();
    *&v120 = 91;
    *(&v120 + 1) = 0xE100000000000000;
    v97 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
    MEMORY[0x1DA74A690](v97);

    MEMORY[0x1DA74A690](93, 0xE100000000000000);
    v40 = *(&v120 + 1);
    MEMORY[0x1DA74A690](v120, *(&v120 + 1));

    OUTLINED_FUNCTION_16_4();
    v98(v83, v82);
    v99 = OUTLINED_FUNCTION_31_1();
    v100(v99);
    v52 = v102;
    v34 = v53;
LABEL_22:
    sub_1DA2EF188(v39, &qword_1ECBA5F80, &qword_1DA3520A0);
    v51 += v116;
    if (!--v47)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1DA34D180();
  __break(1u);
}

uint64_t sub_1DA318990(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F70, &qword_1DA352098);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_18_4(&v122 - v5);
  v134 = sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  v146 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_4(v9 - v8);
  v10 = sub_1DA34BA10();
  OUTLINED_FUNCTION_0();
  v142 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v122 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v122 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v122 - v25;
  v145 = a1;
  v149 = a2;
  v27 = sub_1DA34CB30();
  v28 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v29 = v147;
  v30 = sub_1DA319F3C(0xD000000000000044, 0x80000001DA3562C0, 0);
  if (v29)
  {

    return v10;
  }

  v32 = v30;
  v130 = v26;
  v136 = v24;
  v137 = v21;
  v140 = v18;
  v129 = v10;
  v124 = v15;
  v144 = 0;
  v131 = v27;
  v33 = [v27 length];
  v34 = v149;
  v35 = sub_1DA319560(v145, v149, 0, v33);
  v36 = sub_1DA323DCC();
  v37 = v142;
  v139 = v36;
  if (v36)
  {
    v123 = v32;
    v141 = v35 & 0xC000000000000001;
    swift_beginAccess();
    v38 = 0;
    v39 = 0;
    v125 = v35 & 0xFFFFFFFFFFFFFF8;
    v143 = (v37 + 32);
    v128 = v146 + 8;
    v127 = v37 + 16;
    v126 = v37 + 8;
    v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_27_3();
    v138 = v35;
    while (1)
    {
      if (v141)
      {
        v40 = MEMORY[0x1DA74A960](v38, v35);
      }

      else
      {
        if (v38 >= *(v125 + 16))
        {
          goto LABEL_62;
        }

        v40 = *(v35 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v43 = [v40 range];
      v146 = v43;
      v147 = v44;
      if (v39 < v43)
      {
        if (__OFSUB__(v43, v39))
        {
          goto LABEL_61;
        }

        v45 = [v131 substringWithRange_];
        v46 = sub_1DA34CB40();
        v48 = v47;

        v50 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v50 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v50)
        {
          MEMORY[0x1EEE9AC00](v49);
          *(&v122 - 4) = v46;
          *(&v122 - 3) = v48;
          *(&v122 - 16) = 0;
          OUTLINED_FUNCTION_4_15();
          v52 = sub_1DA31A19C(&qword_1EE10ACC8, v51, MEMORY[0x1E69BCCA8]);
          OUTLINED_FUNCTION_21_2(sub_1DA31A2AC, (&v122 - 6), v53, v52);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144 = 0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_2_15();
            sub_1DA2FC27C();
            v10 = v102;
          }

          v55 = *(v10 + 24);
          v56 = v130;
          if (*(v10 + 16) >= v55 >> 1)
          {
            OUTLINED_FUNCTION_7_7(v55);
            sub_1DA2FC27C();
            v10 = v103;
          }

          v57 = OUTLINED_FUNCTION_13_5();
          v58(v57, v56, v37);
        }

        else
        {
        }
      }

      v59 = sub_1DA34CB30();
      [v41 rangeWithName_];

      sub_1DA34CD70();
      if ((v60 & 1) == 0)
      {
        v61 = sub_1DA34CC20();
        v62 = MEMORY[0x1DA74A660](v61);
        v64 = v63;

        v148[0] = v62;
        v148[1] = v64;
        v37 = v133;
        sub_1DA34B620();
        sub_1DA2EEFDC();
        v65 = sub_1DA34CE60();
        v67 = v66;
        OUTLINED_FUNCTION_16_4();
        v68(v37, v134);

        v69 = *(v135 + 16);
        if (!*(v69 + 16))
        {

          OUTLINED_FUNCTION_27_3();
LABEL_55:

          v73 = v132;
          __swift_storeEnumTagSinglePayload(v132, 1, 1, v37);
LABEL_57:
          v119 = v123;

          sub_1DA2EF188(v73, &qword_1ECBA5F70, &qword_1DA352098);
          sub_1DA31A0A8();
          swift_allocError();
          swift_willThrow();

          return v10;
        }

        v70 = sub_1DA30F7DC(v65, v67);
        v72 = v71;

        OUTLINED_FUNCTION_27_3();
        if ((v72 & 1) == 0)
        {

          goto LABEL_55;
        }

        sub_1DA3013A4(*(v69 + 56) + 32 * v70, v148);

        v73 = v132;
        v74 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v73, v74 ^ 1u, 1, v37);
        if (__swift_getEnumTagSinglePayload(v73, 1, v37) == 1)
        {

          v10 = v138;
          goto LABEL_57;
        }

        v75 = *v143;
        v76 = v136;
        (*v143)(v136, v73, v37);
        OUTLINED_FUNCTION_16_4();
        v77(v137, v76, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_15();
          sub_1DA2FC27C();
          v10 = v100;
        }

        v79 = *(v10 + 16);
        v78 = *(v10 + 24);
        if (v79 >= v78 >> 1)
        {
          OUTLINED_FUNCTION_7_7(v78);
          sub_1DA2FC27C();
          v10 = v101;
        }

        v80 = v142;
        (*(v142 + 8))(v136, v37);
        *(v10 + 16) = v79 + 1;
        OUTLINED_FUNCTION_25_1();
        v75((v10 + v81 + *(v80 + 72) * v79), v137, v37);
      }

      v82 = sub_1DA34CB30();
      [v41 rangeWithName_];

      v34 = v149;
      sub_1DA34CD70();
      if (v83)
      {

        v84 = v146;
      }

      else
      {
        v85 = sub_1DA34CC20();
        v86 = MEMORY[0x1DA74A660](v85);
        v88 = v87;

        MEMORY[0x1EEE9AC00](v89);
        *(&v122 - 4) = v86;
        *(&v122 - 3) = v88;
        *(&v122 - 16) = 1;
        OUTLINED_FUNCTION_4_15();
        v91 = sub_1DA31A19C(&qword_1EE10ACC8, v90, MEMORY[0x1E69BCCA8]);
        OUTLINED_FUNCTION_21_2(sub_1DA31A2AC, (&v122 - 6), v92, v91);

        v93 = swift_isUniquelyReferenced_nonNull_native();
        v144 = 0;
        if ((v93 & 1) == 0)
        {
          OUTLINED_FUNCTION_2_15();
          sub_1DA2FC27C();
          v10 = v98;
        }

        v94 = *(v10 + 24);
        v34 = v149;
        v84 = v146;
        if (*(v10 + 16) >= v94 >> 1)
        {
          OUTLINED_FUNCTION_7_7(v94);
          sub_1DA2FC27C();
          v10 = v99;
        }

        v95 = OUTLINED_FUNCTION_13_5();
        v96(v95, v140, v37);
      }

      v39 = &v84[v147];
      if (__OFADD__(v84, v147))
      {
        goto LABEL_60;
      }

      ++v38;
      v97 = v42 == v139;
      v35 = v138;
      if (v97)
      {

        v32 = v123;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

    v39 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_27_3();
LABEL_43:
    v104 = v131;
    if (v39 >= [v131 length])
    {

      return v10;
    }

    v34 = v32;
    v105 = [v104 length];
    if (!__OFSUB__(v105, v39))
    {
      v106 = [v104 substringWithRange_];
      v107 = sub_1DA34CB40();
      v109 = v108;

      v111 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v111 = v107 & 0xFFFFFFFFFFFFLL;
      }

      if (!v111)
      {

        return v10;
      }

      MEMORY[0x1EEE9AC00](v110);
      *(&v122 - 4) = v107;
      *(&v122 - 3) = v109;
      *(&v122 - 16) = 0;
      OUTLINED_FUNCTION_4_15();
      v114 = sub_1DA31A19C(v112, v113, MEMORY[0x1E69BCCA8]);
      OUTLINED_FUNCTION_21_2(sub_1DA31A088, (&v122 - 6), v115, v114);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_64:
  OUTLINED_FUNCTION_2_15();
  sub_1DA2FC27C();
  v10 = v120;
LABEL_49:
  v117 = *(v10 + 16);
  v116 = *(v10 + 24);
  v118 = v124;
  if (v117 >= v116 >> 1)
  {
    OUTLINED_FUNCTION_7_7(v116);
    sub_1DA2FC27C();
    v10 = v121;
  }

  *(v10 + 16) = v117 + 1;
  (*(v142 + 32))(v10 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v117, v118, v37);
  return v10;
}

uint64_t sub_1DA319560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DA34CB30();
  v8 = [v4 matchesInString:v7 options:0 range:{a3, a4}];

  sub_1DA31A044();
  v9 = sub_1DA34CC70();

  return v9;
}

uint64_t sub_1DA3195E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1DA34BBF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DA31A19C(&qword_1EE109F18, MEMORY[0x1E69BCD28], MEMORY[0x1E69BCD20]);
  sub_1DA34C7B0();
  return sub_1DA34B9F0();
}

uint64_t sub_1DA319700(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  result = sub_1DA34BBC0();
  if (a4)
  {
    return sub_1DA34BBA0();
  }

  return result;
}

uint64_t sub_1DA319790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DA319F3C(a3, a4, 16);
  if (result)
  {
    v10 = result;
    v11 = sub_1DA34CB30();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X", v13);
    sub_1DA2EEFDC();
    v14 = sub_1DA34CE00();
    v16 = [v10 firstMatchInString:v11 options:0 range:{v14, v15, a1, a2, 15}];

    if (v16)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1DA3198E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1();
  v5 = v4;
  v7 = v6;
  sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1DA319F3C(0xD000000000000023, 0x80000001DA356290, 24);
  if (v9)
  {
    v42 = v7;
    v43 = v5;
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X", v13);
    v14 = sub_1DA2EEFDC();
    v18 = OUTLINED_FUNCTION_22_3(v14, v15, v16, MEMORY[0x1E69E6158], v17, v14);
    v11 = OUTLINED_FUNCTION_20_4(v18, v19);
  }

  else
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1DA323DCC();
  v41 = v10;
  if (!v20)
  {
LABEL_20:

    OUTLINED_FUNCTION_32_1();
    return;
  }

  v21 = v20;
  if (v20 >= 1)
  {
    OUTLINED_FUNCTION_26_2();
    v22 = MEMORY[0x1E69E7CC0];
    v23 = 0x1E85C0000uLL;
    v24 = &selRef_rangeAtIndex_;
    do
    {
      if (v2)
      {
        v25 = MEMORY[0x1DA74A960](v3, v11);
      }

      else
      {
        v25 = *(v11 + 8 * v3 + 32);
      }

      v26 = v25;
      if ([v25 *(v23 + 4088)] < 3 || (objc_msgSend(v26, *v24, 2), OUTLINED_FUNCTION_25_3(), sub_1DA34CD70(), (v27 & 1) != 0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_25_3();
        v28 = sub_1DA34CC20();
        v29 = MEMORY[0x1DA74A660](v28);
        v31 = v30;

        v42 = v29;
        v43 = v31;
        sub_1DA34B630();
        sub_1DA2EEFDC();
        v24 = &v42;
        sub_1DA34CE60();
        v32 = OUTLINED_FUNCTION_17_5();
        v33(v32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = OUTLINED_FUNCTION_2_15();
          sub_1DA2FC190(v35, v36, v37, v22);
          v22 = v38;
        }

        v23 = *(v22 + 16);
        v34 = *(v22 + 24);
        if (v23 >= v34 >> 1)
        {
          v39 = OUTLINED_FUNCTION_9_4(v34);
          sub_1DA2FC190(v39, v23 + 1, 1, v22);
          v22 = v40;
        }

        OUTLINED_FUNCTION_14_5();
      }

      ++v3;
    }

    while (v21 != v3);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1DA319BD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1();
  v5 = v4;
  v7 = v6;
  sub_1DA34B640();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1DA319F3C(0xD00000000000001CLL, 0x80000001DA356270, 24);
  if (v9)
  {
    v42 = v7;
    v43 = v5;
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F68, ">X");
    OUTLINED_FUNCTION_3_13();
    sub_1DA2FFBE8(v12, &qword_1ECBA5F68, ">X", v13);
    v14 = sub_1DA2EEFDC();
    v18 = OUTLINED_FUNCTION_22_3(v14, v15, v16, MEMORY[0x1E69E6158], v17, v14);
    v11 = OUTLINED_FUNCTION_20_4(v18, v19);
  }

  else
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1DA323DCC();
  v41 = v10;
  if (!v20)
  {
LABEL_20:

    OUTLINED_FUNCTION_32_1();
    return;
  }

  v21 = v20;
  if (v20 >= 1)
  {
    OUTLINED_FUNCTION_26_2();
    v22 = MEMORY[0x1E69E7CC0];
    v23 = 0x1E85C0000uLL;
    v24 = &selRef_rangeAtIndex_;
    do
    {
      if (v2)
      {
        v25 = MEMORY[0x1DA74A960](v3, v11);
      }

      else
      {
        v25 = *(v11 + 8 * v3 + 32);
      }

      v26 = v25;
      if ([v25 *(v23 + 4088)] < 2 || (objc_msgSend(v26, *v24, 1), OUTLINED_FUNCTION_25_3(), sub_1DA34CD70(), (v27 & 1) != 0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_25_3();
        v28 = sub_1DA34CC20();
        v29 = MEMORY[0x1DA74A660](v28);
        v31 = v30;

        v42 = v29;
        v43 = v31;
        sub_1DA34B630();
        sub_1DA2EEFDC();
        v24 = &v42;
        sub_1DA34CE60();
        v32 = OUTLINED_FUNCTION_17_5();
        v33(v32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = OUTLINED_FUNCTION_2_15();
          sub_1DA2FC190(v35, v36, v37, v22);
          v22 = v38;
        }

        v23 = *(v22 + 16);
        v34 = *(v22 + 24);
        if (v23 >= v34 >> 1)
        {
          v39 = OUTLINED_FUNCTION_9_4(v34);
          sub_1DA2FC190(v39, v23 + 1, 1, v22);
          v22 = v40;
        }

        OUTLINED_FUNCTION_14_5();
      }

      ++v3;
    }

    while (v21 != v3);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1DA319EBC()
{

  return v0;
}

uint64_t sub_1DA319EE4()
{
  sub_1DA319EBC();

  return swift_deallocClassInstance();
}

id sub_1DA319F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA34CB30();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_1DA31A018(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_1DA31A044()
{
  result = qword_1EE108FF0;
  if (!qword_1EE108FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FF0);
  }

  return result;
}

unint64_t sub_1DA31A0A8()
{
  result = qword_1ECBA5F78;
  if (!qword_1ECBA5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5F78);
  }

  return result;
}

uint64_t sub_1DA31A11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1DA31A18C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DA31A19C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA31A1E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DA31A250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_40();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_3(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6310];

  return sub_1DA2FFBE8(a1, v1, v2, v4);
}

void OUTLINED_FUNCTION_14_5()
{
  *(v4 + 16) = v2;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2)
{

  return sub_1DA319560(v2, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DA34C7B0();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DA34CE00();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1)
{

  return sub_1DA34CAF0();
}

void OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v7;
  v8 = a4 + 16 * v6;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
}

double sub_1DA31A55C@<D0>(void *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (*(a4 + 16) && (v6 = sub_1DA30F7DC(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(a4 + 56) + 32 * v6;

    sub_1DA3013A4(v8, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1DA31A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1DA30F7DC(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DA31A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA30F7DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1DA31A664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B640();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  sub_1DA34B630();
  sub_1DA2EEFDC();
  v8 = sub_1DA34CE40();
  (*(v5 + 8))(v7, v4);
  v11[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  sub_1DA34CAF0();

  v9 = sub_1DA34CBB0();

  return v9;
}

uint64_t sub_1DA31A7C4()
{
  type metadata accessor for ContextRetriever();
  OUTLINED_FUNCTION_61_0();
  v0 = swift_allocObject();
  sub_1DA34C9E0();
  swift_allocObject();
  result = sub_1DA34C9D0();
  *(v0 + 16) = result;
  qword_1EE109940 = v0;
  return result;
}

uint64_t static ContextRetriever.shared.getter()
{
  if (qword_1EE109938 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA31A8EC@<X0>(uint64_t (*a1)(void)@<X0>, BOOL *a2@<X8>)
{
  sub_1DA34C730();
  sub_1DA34C720();
  LOBYTE(a1) = a1();

  *a2 = (a1 & 1) == 0;
  return result;
}

uint64_t sub_1DA31A960()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  v5 = [objc_opt_self() defaultContainer];
  OUTLINED_FUNCTION_56_0(v5);
  v0[2] = v6;
  v0[7] = v4;
  v7 = OUTLINED_FUNCTION_68_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FA8, &unk_1DA3520E8);
  OUTLINED_FUNCTION_11_4(v8);
  v0[11] = 1107296256;
  v0[12] = sub_1DA323DDC;
  v0[13] = &block_descriptor;
  v0[14] = v7;
  [v2 accountStatusWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31AA64()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31AB60()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 144);

  if (v1 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1 == 1)
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_26_3(v2);

  return v3();
}

uint64_t sub_1DA31ABD0()
{
  OUTLINED_FUNCTION_2_6();
  v2 = *(v0 + 160);
  swift_willThrow();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v3 = *(v0 + 168);
  v4 = sub_1DA34C8E0();
  __swift_project_value_buffer(v4, qword_1EE109080);
  v5 = OUTLINED_FUNCTION_51_0();
  v6 = sub_1DA34C8C0();
  v7 = sub_1DA34CDA0();

  v8 = OUTLINED_FUNCTION_73();
  v9 = *(v0 + 168);
  if (v8)
  {
    OUTLINED_FUNCTION_37();
    v10 = OUTLINED_FUNCTION_67_0();
    *v1 = 138412290;
    v11 = v9;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v13, v7, "Error retrieving Apple Account Sign In status: %@");
    sub_1DA2E7E4C(v10, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v14();
}

uint64_t sub_1DA31AD54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DA31ADF4()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_56_0([objc_allocWithZone(MEMORY[0x1E699C070]) init]);
  v0[2] = v5;
  v0[7] = v4;
  OUTLINED_FUNCTION_68_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB0, &unk_1DA352100);
  OUTLINED_FUNCTION_11_4(v6);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_35_0();
  [v2 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31AEE0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31AFDC()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = sub_1DA34CDD0();

  OUTLINED_FUNCTION_26_3(v3 & 1);

  return v4();
}

uint64_t sub_1DA31B050(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v2 = v1[21];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = OUTLINED_FUNCTION_51_0();
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[20];
  v8 = v1[21];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_72();
    v19[0] = OUTLINED_FUNCTION_66_0();
    *v10 = 136315394;
    v11 = sub_1DA300D78(0xD00000000000001DLL, 0x80000001DA356360, v19);
    OUTLINED_FUNCTION_57_0(v11);
    v1[10] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    v13 = sub_1DA34CBA0();
    v15 = sub_1DA300D78(v13, v14, v19);

    *(v10 + 14) = v15;
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v16, v6, "%s unable to request family circle with error: %s");
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v17();
}

uint64_t *sub_1DA31B214(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1DA31AD54(v6, a3);
  }

  if (a2)
  {
    return sub_1DA31ADC0(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA31B294()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_56_0([objc_allocWithZone(MEMORY[0x1E699C070]) init]);
  v0[2] = v5;
  v0[7] = v4;
  OUTLINED_FUNCTION_68_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB0, &unk_1DA352100);
  OUTLINED_FUNCTION_11_4(v6);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_35_0();
  [v2 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DA31B380()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31B47C()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = sub_1DA34CDC0();

  OUTLINED_FUNCTION_26_3((v3 & 1) == 0);

  return v4();
}

uint64_t sub_1DA31B4F4(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v2 = v1[21];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = OUTLINED_FUNCTION_51_0();
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[20];
  v8 = v1[21];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_72();
    v19[0] = OUTLINED_FUNCTION_66_0();
    *v10 = 136315394;
    v11 = sub_1DA300D78(0xD000000000000019, 0x80000001DA356380, v19);
    OUTLINED_FUNCTION_57_0(v11);
    v1[10] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    v13 = sub_1DA34CBA0();
    v15 = sub_1DA300D78(v13, v14, v19);

    *(v10 + 14) = v15;
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v16, v6, "%s unable to request family circle with error: %s");
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6_9();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v17();
}

uint64_t sub_1DA31B6B8()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31B750()
{
  OUTLINED_FUNCTION_59();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v1 = OUTLINED_FUNCTION_14_6(v0);
  v2 = OUTLINED_FUNCTION_62_0(v1);
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = OUTLINED_FUNCTION_6_11(v2, *MEMORY[0x1E69DA390]);
  v4(v3);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_5(v6);

  return sub_1DA320D04(v8);
}

uint64_t sub_1DA31B820()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  OUTLINED_FUNCTION_74(v5);

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31B918()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(v0 + 64))(v2, *(v0 + 96), v4);
  v6 = sub_1DA34C920();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  LOBYTE(v4) = sub_1DA31A5C0(v6, v8, v1);

  v9 = (v4 & 1) == 0;
  if (v4 == 2)
  {
    v9 = 2;
  }

  *v5 = v9;

  OUTLINED_FUNCTION_15();

  return v10();
}

uint64_t sub_1DA31BA10()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31BAA8()
{
  OUTLINED_FUNCTION_59();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v1 = OUTLINED_FUNCTION_14_6(v0);
  v2 = OUTLINED_FUNCTION_62_0(v1);
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = OUTLINED_FUNCTION_6_11(v2, *MEMORY[0x1E69DA380]);
  v4(v3);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_5(v6);

  return sub_1DA320D04(v8);
}

uint64_t sub_1DA31BB78()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  OUTLINED_FUNCTION_74(v5);

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA31BC70()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31BD08()
{
  OUTLINED_FUNCTION_59();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v1 = OUTLINED_FUNCTION_14_6(v0);
  v2 = OUTLINED_FUNCTION_62_0(v1);
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = OUTLINED_FUNCTION_6_11(v2, *MEMORY[0x1E69DA370]);
  v4(v3);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_5(v6);

  return sub_1DA320D04(v8);
}

uint64_t sub_1DA31BDD8()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31BE70()
{
  OUTLINED_FUNCTION_59();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v1 = OUTLINED_FUNCTION_14_6(v0);
  v2 = OUTLINED_FUNCTION_62_0(v1);
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = OUTLINED_FUNCTION_6_11(v2, *MEMORY[0x1E69DA388]);
  v4(v3);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_5(v6);

  return sub_1DA320D04(v8);
}

uint64_t sub_1DA31BF40()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_75(v1);
  OUTLINED_FUNCTION_20_5(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31BFD8()
{
  OUTLINED_FUNCTION_59();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AD8, &qword_1DA34EF00);
  v1 = OUTLINED_FUNCTION_14_6(v0);
  v2 = OUTLINED_FUNCTION_62_0(v1);
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = OUTLINED_FUNCTION_6_11(v2, *MEMORY[0x1E69DA378]);
  v4(v3);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_5(v6);

  return sub_1DA320D04(v8);
}

uint64_t sub_1DA31C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31C0CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = qword_1F55DFE90;
  v4 = objc_allocWithZone(MEMORY[0x1E6997238]);

  v5 = sub_1DA322054(3, v2, v1, 0xD000000000000017, 0x80000001DA356580, v3);
  v0[22] = v5;
  v6 = [objc_opt_self() sharedInstance];
  v0[23] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA31C28C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6000, &qword_1DA352328);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA323DDC;
  v0[13] = &block_descriptor_85;
  v0[14] = v7;
  [v6 requestIconElementState:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA31C28C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31C388()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 144);

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109080);
  v3 = sub_1DA34C8C0();
  v4 = sub_1DA34CD90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_37();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1DA2E0000, v3, v4, "Result: %lu", v5, 0xCu);
    OUTLINED_FUNCTION_6_9();
  }

  OUTLINED_FUNCTION_26_3(v1 != 1);

  return v6();
}

uint64_t sub_1DA31C498(uint64_t a1)
{
  v3 = v1[23];
  swift_willThrow();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v4 = v1[24];
  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109080);
  v6 = OUTLINED_FUNCTION_51_0();
  v7 = sub_1DA34C8C0();
  v8 = sub_1DA34CD90();

  v9 = OUTLINED_FUNCTION_73();
  v10 = v1[24];
  v11 = v1[22];
  if (v9)
  {
    OUTLINED_FUNCTION_37();
    v12 = OUTLINED_FUNCTION_67_0();
    *v2 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v15, v8, "Error: %@");
    sub_1DA2E7E4C(v12, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_7();

  return v16();
}

uint64_t sub_1DA31C608(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1DA31AD54(*v5, a3);
  }

  else
  {
    return sub_1DA31ADC0(*v5, a2);
  }
}

uint64_t sub_1DA31C668()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD00000000000002FLL, v4);
}

uint64_t sub_1DA31C700()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000036, v4);
}

uint64_t sub_1DA31C798()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000030, v4);
}

uint64_t sub_1DA31C830()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD000000000000034, v4);
}

uint64_t sub_1DA31C8C8()
{
  OUTLINED_FUNCTION_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_6(v1);

  return sub_1DA31C0B4(v3, 0xD00000000000002ELL, v4);
}

uint64_t sub_1DA31C960(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 149) = *a2;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31C97C()
{
  OUTLINED_FUNCTION_16();
  v47 = v0;
  switch(*(v0 + 149))
  {
    case 1:
      sub_1DA31A88C(&v45);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for WiFiState;
      v8 = &protocol witness table for WiFiState;
      goto LABEL_23;
    case 2:
      sub_1DA31A8A4(&v44);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for LowPowerModeState;
      v8 = &protocol witness table for LowPowerModeState;
      goto LABEL_23;
    case 3:
      sub_1DA31A8BC(&v43);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for AirPlaneModeState;
      v8 = &protocol witness table for AirPlaneModeState;
      goto LABEL_23;
    case 4:
      sub_1DA31A8D4(&v42);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
        goto LABEL_3;
      }

      v7 = &type metadata for LocationServicesState;
      v8 = &protocol witness table for LocationServicesState;
      goto LABEL_23;
    case 5:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 32) = v16;
      *v16 = v17;
      v16[1] = sub_1DA31CFFC;

      return sub_1DA31A94C(v0 + 148);
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 40) = v18;
      *v18 = v19;
      v18[1] = sub_1DA31D124;

      return sub_1DA31ADE0(v0 + 147);
    case 7:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 48) = v11;
      *v11 = v12;
      v11[1] = sub_1DA31D24C;

      return sub_1DA31B280(v0 + 146);
    case 8:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 56) = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_37_0(v28);

      return sub_1DA31B6B8();
    case 9:
    case 0xA:
    case 0xD:
    case 0x10:
      v1 = *(v0 + 16);
      goto LABEL_3;
    case 0xB:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 64) = v9;
      *v9 = v10;
      OUTLINED_FUNCTION_37_0(v9);

      return sub_1DA31BA10();
    case 0xC:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 72) = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_37_0(v26);

      return sub_1DA31BC70();
    case 0xE:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 80) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_37_0(v14);

      return sub_1DA31BDD8();
    case 0xF:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 88) = v2;
      *v2 = v3;
      OUTLINED_FUNCTION_37_0(v2);

      return sub_1DA31BF40();
    case 0x11:
      v20 = "retrieveFamilyOrganizer()";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 96) = v21;
      *v21 = v22;
      OUTLINED_FUNCTION_41_0(v21);
      v23 = v0 + 140;
      v25 = v24 | 1;
      goto LABEL_47;
    case 0x12:
      v20 = "kit.controlcenter.screencapture";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 104) = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_41_0(v36);
      v23 = v0 + 139;
      v25 = v38 + 8;
      goto LABEL_47;
    case 0x13:
      v20 = "enter.backgroundsounds";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 112) = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_41_0(v39);
      v23 = v0 + 138;
      v25 = v41 + 2;
      goto LABEL_47;
    case 0x14:
      v20 = "enter.livelisten";
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 120) = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_41_0(v30);
      v23 = v0 + 137;
      v25 = v32 + 6;
LABEL_47:
      v35 = v20 | 0x8000000000000000;
      goto LABEL_48;
    case 0x15:
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 128) = v33;
      *v33 = v34;
      v33[1] = sub_1DA31DDCC;
      v23 = v0 + 136;
      v35 = 0x80000001DA356490;
      v25 = 0xD00000000000002ELL;
LABEL_48:

      result = sub_1DA31C0B4(v23, v25, v35);
      break;
    default:
      sub_1DA31A874(&v46);
      OUTLINED_FUNCTION_65_0();
      if (v6)
      {
LABEL_3:
        *(v1 + 32) = 0;
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }

      else
      {
        v7 = &type metadata for BluetoothState;
        v8 = &protocol witness table for BluetoothState;
LABEL_23:
        *(v1 + 24) = v7;
        *(v1 + 32) = v8;
        *v1 = v5 & 1;
      }

      OUTLINED_FUNCTION_15();

      result = v13();
      break;
  }

  return result;
}

uint64_t sub_1DA31CFFC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D0E0()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for AppleAccountSignedInState;
    *(v2 + 32) = &protocol witness table for AppleAccountSignedInState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D124()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D208()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FamilySharingMemberState;
    *(v2 + 32) = &protocol witness table for FamilySharingMemberState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D24C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D330()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FamilyOrganizerState;
    *(v2 + 32) = &protocol witness table for FamilyOrganizerState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D374()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D458()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for FindMyState;
    *(v2 + 32) = &protocol witness table for FindMyState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D49C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D580()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for SetupState;
    *(v2 + 32) = &protocol witness table for SetupState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D5C4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D6A8()
{
  v1 = *(v0 + 143);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for CloudServiceState;
    *(v2 + 32) = &protocol witness table for CloudServiceState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D6EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D7D0()
{
  v1 = *(v0 + 142);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for SetupState;
    *(v2 + 32) = &protocol witness table for SetupState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D814()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31D8F8()
{
  v1 = *(v0 + 141);
  v2 = *(v0 + 16);
  if (v1 == 2)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for CloudServiceState;
    *(v2 + 32) = &protocol witness table for CloudServiceState;
    *v2 = v1 & 1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31D93C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31DA20()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DA60()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31DB44()
{
  v1 = *(v0 + 139);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DB84()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31DC68()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DCA8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31DD8C()
{
  v1 = *(v0 + 137);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DDCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31DEB0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  if (v1 == 3)
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = &type metadata for ControlCenterModuleState;
    *(v2 + 32) = &protocol witness table for ControlCenterModuleState;
    *v2 = v1;
  }

  return OUTLINED_FUNCTION_0_19();
}

uint64_t sub_1DA31DEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31DF08()
{
  OUTLINED_FUNCTION_59();
  v8 = v0;
  static SettingContextType.from(stringValue:)(&v7);
  if (v7 == 22)
  {
    v1 = *(v0 + 16);
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    OUTLINED_FUNCTION_15();

    return v2();
  }

  else
  {
    *(v0 + 56) = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 48) = v4;
    *v4 = v5;
    v4[1] = sub_1DA31E004;
    v6 = *(v0 + 16);

    return sub_1DA31C960(v6, (v0 + 56));
  }
}

uint64_t sub_1DA31E004()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA31E0E4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA31E0F8()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_61_0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v36 = v2;
  v37 = v0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v38 = v0 + 2;
  v0[6] = v2;
  *(v2 + 16) = v3;
  v4 = v2 + 16;
  v41 = *(v1 + 16);
  if (v41)
  {
    OUTLINED_FUNCTION_64_0();
    v40 = v5;
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_64_0();
    v39 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = (v40 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      v42 = v6 + 1;

      v10 = 0;
      while (1)
      {
        v11 = byte_1F55DF588[v10++ + 32];
        switch(v11)
        {
          case 2:
            OUTLINED_FUNCTION_79();
            break;
          case 3:
            OUTLINED_FUNCTION_78();
            break;
          case 4:
          case 6:
          case 9:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
            OUTLINED_FUNCTION_29_4();
            break;
          case 5:
          case 10:
            OUTLINED_FUNCTION_89();
            break;
          case 7:
            OUTLINED_FUNCTION_81();
            break;
          case 11:
            OUTLINED_FUNCTION_80();
            break;
          case 12:
          case 15:
            OUTLINED_FUNCTION_38_0();
            break;
          case 13:
            OUTLINED_FUNCTION_88();
            break;
          case 14:
            OUTLINED_FUNCTION_82();
            break;
          case 16:
            OUTLINED_FUNCTION_83();
            break;
          default:
            break;
        }

        v12 = sub_1DA34CBB0();
        v14 = v13;

        if (v12 == sub_1DA34CBB0() && v14 == v15)
        {
          break;
        }

        v17 = sub_1DA34D160();

        if (v17)
        {
          goto LABEL_25;
        }

        if (v10 == 22)
        {

          goto LABEL_30;
        }
      }

LABEL_25:
      if (v11 > 0xF || ((1 << v11) & 0xD900) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = OUTLINED_FUNCTION_13_6();
          sub_1DA2FC190(v25, v26, v27, v28);
          v39 = v29;
        }

        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DA2FC190(v22 > 1, v23 + 1, 1, v39);
          v39 = v30;
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v9;
        *(v24 + 40) = v8;
        *v38 = v39;
      }

      else
      {
        sub_1DA2FBE0C();
        v19 = *(*v4 + 16);
        sub_1DA2FBEB0(v19);
        v20 = *v4;
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v9;
        *(v21 + 40) = v8;
      }

LABEL_30:
      v6 = v42;
    }

    while (v42 != v41);
  }

  v31 = v37[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v37[3] = sub_1DA34CAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  v32 = swift_task_alloc();
  v37[7] = v32;
  v32[2] = v36;
  v32[3] = v31;
  v32[4] = v38;
  v32[5] = v37 + 3;
  v33 = swift_task_alloc();
  v37[8] = v33;
  *v33 = v37;
  v33[1] = sub_1DA31E668;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DA31E668()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31E768()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_60_0();

  return v2(v1);
}

uint64_t sub_1DA31E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[58] = a5;
  v6[59] = a6;
  v6[56] = a3;
  v6[57] = a4;
  v6[55] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FE8, &unk_1DA3522C8);
  v6[60] = v7;
  v6[61] = *(v7 - 8);
  v6[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA31E8F4, 0, 0);
}

uint64_t sub_1DA31E8F4()
{
  v1 = v0[56];
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[65];
    v3 = v0[56];
    v4 = v0[57];
    sub_1DA34CD30();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v4;
    v9[5] = v3;

    sub_1DA31F5B8(v2, &unk_1DA3522E0, v9);
    sub_1DA2E7E4C(v2, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  v10 = v0[58];
  v11 = *v10;
  v12 = *(*v10 + 16);
  if (v12)
  {
    v38 = v0 + 32;
    v39 = *v0[55];
    v13 = sub_1DA34CD30();

    v14 = (v11 + 40);
    v15 = &qword_1ECBA5B98;
    do
    {
      v40 = v14;
      v41 = v12;
      v17 = v0[63];
      v16 = v0[64];
      v18 = v0[57];
      v19 = v0;
      v20 = v15;
      v22 = *(v14 - 1);
      v21 = *v14;
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v18;
      v26[5] = v22;
      v26[6] = v21;
      v15 = v20;
      v0 = v19;
      sub_1DA3094C0(v16, v17, v15, &qword_1DA34F440);
      LODWORD(v17) = __swift_getEnumTagSinglePayload(v17, 1, v13);

      v27 = v19[63];
      if (v17 == 1)
      {
        sub_1DA2E7E4C(v19[63], v15, &qword_1DA34F440);
      }

      else
      {
        sub_1DA34CD20();
        (*(*(v13 - 8) + 8))(v27, v13);
      }

      if (v26[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_1DA34CCF0();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = &unk_1DA3522F8;
      *(v31 + 24) = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
      v32 = (v30 | v28);
      if (v30 | v28)
      {
        v32 = v38;
        *v38 = 0;
        v38[1] = 0;
        v19[34] = v28;
        v19[35] = v30;
      }

      v33 = v19[64];
      v19[47] = 1;
      v19[48] = v32;
      v19[49] = v39;
      swift_task_create();
      OUTLINED_FUNCTION_51_0();

      sub_1DA2E7E4C(v33, v15, &qword_1DA34F440);
      v14 = v40 + 2;
      v12 = v41 - 1;
    }

    while (v41 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  sub_1DA34CD00();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[66] = v34;
  *v34 = v35;
  v36 = OUTLINED_FUNCTION_27_4(v34);

  return MEMORY[0x1EEE6D8A8](v36);
}

uint64_t sub_1DA31ECD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31EDB4()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v3 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v3;
  v4 = 0x80000001DA356530 == v1 && v2 == 0xD00000000000001BLL;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {
    sub_1DA3094C0(v0 + 64, v0 + 208, &qword_1ECBA5FC0, &qword_1DA3521A0);

    v5 = *(v0 + 240);
    *(v0 + 320) = *(v0 + 224);
    *(v0 + 336) = v5;
    if (*(v0 + 344))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FF0, &qword_1DA352310);
      if (swift_dynamicCast())
      {
        v6 = 0;
        v63 = *(v0 + 424) + 64;
        v64 = *(v0 + 424);
        OUTLINED_FUNCTION_53_0();
        v11 = v10 & v9;
        v13 = (63 - v12) >> 6;
        v62 = v13;
        if ((v10 & v9) != 0)
        {
          goto LABEL_14;
        }

        do
        {
LABEL_10:
          v14 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v14 >= v13)
          {

            goto LABEL_47;
          }

          v11 = *(v8 + 8 * v14);
          ++v6;
        }

        while (!v11);
        v6 = v14;
LABEL_14:
        while (1)
        {
          v15 = *(v0 + 472);
          v16 = (v6 << 10) | (16 * __clz(__rbit64(v11)));
          v17 = (*(v64 + 48) + v16);
          v19 = *v17;
          v18 = v17[1];
          v20 = (*(v64 + 56) + v16);
          v65 = *v20;
          v66 = v20[1];

          swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 432) = *v15;
          *v15 = 0x8000000000000000;
          sub_1DA30F7DC(v19, v18);
          OUTLINED_FUNCTION_55_0();
          if (__OFADD__(v22, v23))
          {
            break;
          }

          v24 = v7;
          v25 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
          if (sub_1DA34CFA0())
          {
            v26 = sub_1DA30F7DC(v19, v18);
            if ((v25 & 1) != (v27 & 1))
            {
              goto LABEL_37;
            }

            v24 = v26;
          }

          if (v25)
          {

            v28 = *(v0 + 432);
            v29 = (*(v28 + 56) + 16 * v24);
            *v29 = v65;
            v29[1] = v66;
          }

          else
          {
            v28 = *(v0 + 432);
            OUTLINED_FUNCTION_85(v28 + 8 * (v24 >> 6));
            v31 = (v30 + 16 * v24);
            *v31 = v19;
            v31[1] = v18;
            v32 = (*(v28 + 56) + 16 * v24);
            *v32 = v65;
            v32[1] = v66;
            OUTLINED_FUNCTION_46_0();
            if (v34)
            {
              goto LABEL_52;
            }

            *(v28 + 16) = v33;
          }

          v11 &= v11 - 1;
          **(v0 + 472) = v28;

          v13 = v62;
          v8 = v63;
          if (!v11)
          {
            goto LABEL_10;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_47:
      sub_1DA2E7E4C(v0 + 64, &qword_1ECBA5FC0, &qword_1DA3521A0);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 528) = v59;
      *v59 = v60;
      OUTLINED_FUNCTION_27_4(v59);
      OUTLINED_FUNCTION_90();

      return MEMORY[0x1EEE6D8A8](v7);
    }

    v37 = v0 + 320;
LABEL_46:
    sub_1DA2E7E4C(v37, &qword_1ECBA5908, &qword_1DA34F200);
    goto LABEL_47;
  }

  sub_1DA3094C0(v0 + 64, v0 + 112, &qword_1ECBA5FC0, &qword_1DA3521A0);
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  sub_1DA3094C0(v0 + 64, v0 + 160, &qword_1ECBA5FC0, &qword_1DA3521A0);

  v40 = *(v0 + 192);
  *(v0 + 288) = *(v0 + 176);
  *(v0 + 304) = v40;
  if (*(v0 + 312))
  {
    if (swift_dynamicCast())
    {
      v41 = *(v0 + 400);
      v42 = *(v0 + 408);
      goto LABEL_34;
    }
  }

  else
  {
    sub_1DA2E7E4C(v0 + 288, &qword_1ECBA5908, &qword_1DA34F200);
  }

  v41 = 0;
  v42 = 0;
LABEL_34:
  v43 = *(v0 + 472);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 416) = *v43;
  *v43 = 0x8000000000000000;
  sub_1DA30F7DC(v39, v38);
  OUTLINED_FUNCTION_55_0();
  if (__OFADD__(v45, v46))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v47 = v7;
  v48 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
  if ((sub_1DA34CFA0() & 1) == 0)
  {
    goto LABEL_41;
  }

  v49 = sub_1DA30F7DC(v39, v38);
  if ((v48 & 1) == (v50 & 1))
  {
    v47 = v49;
LABEL_41:
    if (v48)
    {

      v53 = *(v0 + 416);
      v54 = (*(v53 + 56) + 16 * v47);
      *v54 = v41;
      v54[1] = v42;
    }

    else
    {
      v53 = *(v0 + 416);
      OUTLINED_FUNCTION_85(v53 + 8 * (v47 >> 6));
      v56 = (v55 + 16 * v47);
      *v56 = v39;
      v56[1] = v38;
      v57 = (*(v53 + 56) + 16 * v47);
      *v57 = v41;
      v57[1] = v42;
      OUTLINED_FUNCTION_46_0();
      if (v34)
      {
LABEL_54:
        __break(1u);
        return MEMORY[0x1EEE6D8A8](v7);
      }

      *(v53 + 16) = v58;
    }

    **(v0 + 472) = v53;

    v37 = v0 + 128;
    goto LABEL_46;
  }

LABEL_37:
  OUTLINED_FUNCTION_90();

  return sub_1DA34D180();
}

uint64_t sub_1DA31F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA31F374, 0, 0);
}

uint64_t sub_1DA31F374()
{
  OUTLINED_FUNCTION_59();
  v1 = v0[7];
  swift_beginAccess();
  v0[8] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DA31F438;

  return sub_1DA31FAB8();
}

uint64_t sub_1DA31F438()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v7[10] = v5;
  v7[11] = v6;
  v7[12] = v8;

  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA31F53C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  *v3 = v0[10];
  v3[1] = v1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FF0, &qword_1DA352310);
  v3[2] = v2;
  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_1DA31F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1DA3094C0(a1, v19 - v9, &qword_1ECBA5B98, &qword_1DA34F440);
  v11 = sub_1DA34CD30();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DA2E7E4C(v10, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_1DA34CCF0();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC0, &qword_1DA3521A0);
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_1DA31F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a1;
  v9 = swift_task_alloc();
  v6[15] = v9;
  *v9 = v6;
  v9[1] = sub_1DA31F878;

  return sub_1DA31DEF0((v6 + 2), a5, a6);
}

uint64_t sub_1DA31F878()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA31F95C()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[14];
  v2 = v0[12];
  *v2 = v0[13];
  v2[1] = v1;
  sub_1DA3094C0((v0 + 2), (v0 + 7), &qword_1ECBA5FF8, &qword_1DA352318);
  v3 = v0[10];
  if (v3)
  {
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v5 = *(v4 + 8);

    v6 = v5(v3, v4);
    v8 = v7;
    sub_1DA2E7E4C((v0 + 2), &qword_1ECBA5FF8, &qword_1DA352318);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v9 = MEMORY[0x1E69E6158];
  }

  else
  {
    v10 = v0[12];

    sub_1DA2E7E4C((v0 + 2), &qword_1ECBA5FF8, &qword_1DA352318);
    sub_1DA2E7E4C((v0 + 7), &qword_1ECBA5FF8, &qword_1DA352318);
    v6 = 0;
    v8 = 0;
    v9 = 0;
    *(v10 + 32) = 0;
  }

  v11 = v0[12];
  v11[2] = v6;
  v11[3] = v8;
  v11[5] = v9;
  OUTLINED_FUNCTION_15();

  return v12();
}

uint64_t sub_1DA31FAB8()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC8, &qword_1DA3522A0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = sub_1DA34C930();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA31FC04()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v96 = sub_1DA34CAC0();
  v3 = *(v1 + 16);
  LODWORD(v81) = *MEMORY[0x1E69DA380];
  v4 = *MEMORY[0x1E69DA380];
  HIDWORD(v81) = *MEMORY[0x1E69DA390];
  *(v0 + 160) = *MEMORY[0x1E69DA390];
  *(v0 + 164) = v4;
  LODWORD(v80) = *MEMORY[0x1E69DA388];
  v5 = *MEMORY[0x1E69DA388];
  HIDWORD(v80) = *MEMORY[0x1E69DA370];
  *(v0 + 168) = *MEMORY[0x1E69DA370];
  *(v0 + 172) = v5;
  HIDWORD(v79) = *MEMORY[0x1E69DA378];
  *(v0 + 176) = *MEMORY[0x1E69DA378];
  v95 = v3;
  if (v3)
  {
    v6 = 0;
    v94 = *(v0 + 16) + 32;
    v90 = 0x80000001DA354880;
    v91 = 0x80000001DA3548B0;
    OUTLINED_FUNCTION_64_0();
    v88 = v7;
    v89 = v8;
    OUTLINED_FUNCTION_54_0();
    v86 = v9;
    v87 = v10;
    v84 = 0x80000001DA354740;
    v85 = 0x80000001DA354770;
    OUTLINED_FUNCTION_64_0();
    v82 = v11;
    v83 = v12;
    v92 = v13 + 32;
    v93 = v13;
    v97 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = (v94 + 16 * v6);
      v16 = *v14;
      v15 = v14[1];
      ++v6;

      v17 = 0;
      while (1)
      {
        v18 = byte_1F55DF588[v17 + 32];
        v17 = (v17 + 1);
        switch(v18)
        {
          case 2:
            OUTLINED_FUNCTION_79();
            break;
          case 3:
            OUTLINED_FUNCTION_78();
            break;
          case 4:
          case 6:
          case 9:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
            OUTLINED_FUNCTION_29_4();
            break;
          case 5:
          case 10:
            OUTLINED_FUNCTION_89();
            break;
          case 7:
            OUTLINED_FUNCTION_81();
            break;
          case 11:
            OUTLINED_FUNCTION_80();
            break;
          case 12:
          case 15:
            OUTLINED_FUNCTION_38_0();
            break;
          case 13:
            OUTLINED_FUNCTION_88();
            break;
          case 14:
            OUTLINED_FUNCTION_82();
            break;
          case 16:
            OUTLINED_FUNCTION_83();
            break;
          default:
            break;
        }

        v19 = sub_1DA34CBB0();
        v21 = v20;

        if (v19 == sub_1DA34CBB0() && v21 == v22)
        {
          break;
        }

        v24 = sub_1DA34D160();

        if (v24)
        {
          goto LABEL_25;
        }

        if (v17 == 22)
        {
LABEL_23:

          goto LABEL_52;
        }
      }

LABEL_25:
      switch(v18)
      {
        case 8:
          OUTLINED_FUNCTION_32_2();
          v17();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_6();
            sub_1DA2FC42C();
          }

          OUTLINED_FUNCTION_31_2();
          if (v32)
          {
            OUTLINED_FUNCTION_77();
            v27 = v25;
          }

          v33 = *(v0 + 112);
          v34 = OUTLINED_FUNCTION_4_16(v25, *(v0 + 120), v26, v27, v28, v29, v30, v31, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
          v35(v34);
          v36 = v33;
          v37 = HIDWORD(v81);
          break;
        case 11:
          OUTLINED_FUNCTION_32_2();
          v17();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_6();
            sub_1DA2FC42C();
          }

          OUTLINED_FUNCTION_31_2();
          if (v32)
          {
            OUTLINED_FUNCTION_77();
            v49 = v47;
          }

          v33 = *(v0 + 112);
          v54 = OUTLINED_FUNCTION_4_16(v47, *(v0 + 104), v48, v49, v50, v51, v52, v53, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
          v55(v54);
          v36 = v33;
          v37 = v81;
          break;
        case 12:
          OUTLINED_FUNCTION_32_2();
          v17();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_6();
            sub_1DA2FC42C();
          }

          OUTLINED_FUNCTION_31_2();
          if (v32)
          {
            OUTLINED_FUNCTION_77();
            v40 = v38;
          }

          v33 = *(v0 + 112);
          v45 = OUTLINED_FUNCTION_4_16(v38, *(v0 + 96), v39, v40, v41, v42, v43, v44, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
          v46(v45);
          v36 = v33;
          v37 = HIDWORD(v80);
          break;
        case 14:
          OUTLINED_FUNCTION_32_2();
          v17();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_6();
            sub_1DA2FC42C();
          }

          OUTLINED_FUNCTION_31_2();
          if (v32)
          {
            OUTLINED_FUNCTION_77();
            v58 = v56;
          }

          v33 = *(v0 + 112);
          v63 = OUTLINED_FUNCTION_4_16(v56, *(v0 + 88), v57, v58, v59, v60, v61, v62, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
          v64(v63);
          v36 = v33;
          v37 = v80;
          break;
        case 15:
          OUTLINED_FUNCTION_32_2();
          v17();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_6();
            sub_1DA2FC42C();
          }

          OUTLINED_FUNCTION_31_2();
          if (v32)
          {
            OUTLINED_FUNCTION_77();
            v67 = v65;
          }

          v33 = *(v0 + 112);
          v72 = OUTLINED_FUNCTION_4_16(v65, *(v0 + 80), v66, v67, v68, v69, v70, v71, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
          v73(v72);
          v36 = v33;
          v37 = HIDWORD(v79);
          break;
        default:
          goto LABEL_23;
      }

      (v17)(v36, v37, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DA30FC18(v33, v16, v15, isUniquelyReferenced_nonNull_native);

LABEL_52:
      ;
    }

    while (v6 != v95);
  }

  else
  {
    v97 = v2;
  }

  *(v0 + 128) = v97;
  *(v0 + 136) = v96;
  v75 = swift_task_alloc();
  *(v0 + 144) = v75;
  *v75 = v0;
  v75[1] = sub_1DA320390;
  v76 = OUTLINED_FUNCTION_40_0();

  return sub_1DA320D04(v76);
}

uint64_t sub_1DA320390()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA320478()
{
  v89 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);
  v83 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  sub_1DA34CAC0();
  v4 = v2 + 64;
  OUTLINED_FUNCTION_53_0();
  v7 = v6 & v5;
  v80 = v9;
  v81 = (63 - v8) >> 6;
  v87 = (v3 + 16);
  v88 = (v3 + 8);
  v84 = v3;
  v85 = v2;
  v79 = (v3 + 88);
  v10 = (v3 + 32);

  v11 = 0;
  v82 = v2 + 64;
  v86 = v10;
  if (!v7)
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
        v90 = 0;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_58_0();

    return sub_1DA34D180();
  }

  while (1)
  {
    v12 = v11;
LABEL_7:
    v13 = *(v0 + 112);
    v14 = *(v0 + 48);
    v1 = *(v0 + 32);
    v90 = (v7 - 1) & v7;
    v15 = __clz(__rbit64(v7)) | (v12 << 6);
    v16 = (*(v85 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    (*(v84 + 16))(v13, *(v85 + 56) + *(v84 + 72) * v15, v14);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
    v20 = *(v19 + 48);
    *v1 = v17;
    *(v83 + 8) = v18;
    v10 = v86;
    (*(v84 + 32))(v1 + v20, v13, v14);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v19);

    v4 = v82;
LABEL_8:
    v21 = *(v0 + 40);
    sub_1DA323A6C(*(v0 + 32), v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD0, &qword_1DA3522A8);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {

      OUTLINED_FUNCTION_58_0();

      __asm { BRAA            X4, X16 }
    }

    v23 = *(v0 + 72);
    (*v10)(v23, *(v0 + 40) + *(v22 + 48), *(v0 + 48));
    v24 = v23;
    v25 = sub_1DA34C920();
    if (*(v89 + 16))
    {
      break;
    }

LABEL_13:
    OUTLINED_FUNCTION_49_0();
LABEL_14:

    (*v88)(v24, v1);
LABEL_15:
    v7 = v90;
    if (!v90)
    {
      goto LABEL_3;
    }
  }

  v24 = sub_1DA30F7DC(v25, v26);
  v1 = v27;

  if ((v1 & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = *(v0 + 160);
  v33 = *(v0 + 64);
  v1 = *(v0 + 48);
  v24 = *(*(v89 + 56) + v24);
  (*v87)(v33, *(v0 + 72), v1);
  v34 = (*v79)(v33, v1);
  if (v34 == v32)
  {
    if (v24)
    {
      v35 = 0x64656C62616E65;
    }

    else
    {
      v35 = 0x64656C6261736964;
    }

    v36 = 0xE800000000000000;
    if (v24)
    {
      v36 = 0xE700000000000000;
    }

    v78 = v36;
    v24 = v80;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_55_0();
    v1 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return MEMORY[0x1EEE6B1D8](v37);
    }

    LODWORD(v80) = v38;
    v77 = v35;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4(v41))
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      v10 = v86;
      if (!v42)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v10 = v86;
    }

    OUTLINED_FUNCTION_49_0();
    if ((v46 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v51 = OUTLINED_FUNCTION_9_5(v50);
      v52(v51);
      OUTLINED_FUNCTION_46_0();
      if (v43)
      {
        goto LABEL_88;
      }

LABEL_75:
      v80 = v24;
      *(v24 + 16) = v53;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_63_0();
    v49 = v77;
    v48 = v78;
    goto LABEL_73;
  }

  if (v34 == *(v0 + 164))
  {
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5();
    v10 = v86;
    if (v43)
    {
      goto LABEL_87;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4(v44))
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v42)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v55 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v57 = OUTLINED_FUNCTION_9_5(v56);
      v58(v57);
      OUTLINED_FUNCTION_46_0();
      if (v43)
      {
        goto LABEL_90;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v10 = v86;
  if (v34 == *(v0 + 168))
  {
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5();
    if (v43)
    {
      goto LABEL_89;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4(v45))
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v42)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v60 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v62 = OUTLINED_FUNCTION_9_5(v61);
      v63(v62);
      OUTLINED_FUNCTION_46_0();
      if (v43)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v34 == *(v0 + 172))
  {
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5();
    if (v43)
    {
      goto LABEL_91;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4(v54))
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v42)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v64 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v66 = OUTLINED_FUNCTION_9_5(v65);
      v67(v66);
      OUTLINED_FUNCTION_46_0();
      if (v43)
      {
        goto LABEL_94;
      }

      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v34 == *(v0 + 176))
  {
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_16_5();
    if (v43)
    {
      goto LABEL_93;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FD8, &qword_1DA3522B0);
    if (OUTLINED_FUNCTION_30_4(v59))
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_5();
      if (!v42)
      {
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_49_0();
    if ((v68 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_14();
      v70 = OUTLINED_FUNCTION_9_5(v69);
      v71(v70);
      OUTLINED_FUNCTION_46_0();
      if (v43)
      {
        goto LABEL_95;
      }

      goto LABEL_75;
    }

LABEL_72:

    OUTLINED_FUNCTION_63_0();
    v48 = v77;
    v49 = v78;
LABEL_73:
    *v47 = v49;
    v47[1] = v48;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6B1D8](v37);
}

uint64_t sub_1DA320D04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA320D18()
{
  OUTLINED_FUNCTION_59();
  if (*(v0[2] + 16))
  {
    v1 = objc_allocWithZone(sub_1DA34C950());

    v0[4] = sub_1DA34C940();
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1DA320E3C;
    v3 = OUTLINED_FUNCTION_40_0();

    return MEMORY[0x1EEE49AF8](v3);
  }

  else
  {
    sub_1DA34CAC0();
    OUTLINED_FUNCTION_60_0();

    return v4();
  }
}

uint64_t sub_1DA320E3C()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA320F50()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_60_0();

  return v1();
}

uint64_t sub_1DA320FAC()
{
  OUTLINED_FUNCTION_2_6();

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v2 = *(v0 + 48);
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109080);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
    OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_67_0();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_71(&dword_1DA2E0000, v11, v6, "Error retrieving device capabilities: %@");
    sub_1DA2E7E4C(v8, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_6();
  }

  sub_1DA34CAC0();
  OUTLINED_FUNCTION_60_0();

  return v12(v5);
}

void sub_1DA321128(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v56 = a3;
  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EE109078);
  }

  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109080);

  v6 = sub_1DA34C8C0();
  v7 = sub_1DA34CD90();

  v8 = &loc_1DA34D000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = OUTLINED_FUNCTION_72();
    v58 = OUTLINED_FUNCTION_66_0();
    *v9 = 136315394;
    v10 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v55, v56, v57);
    v11 = OUTLINED_FUNCTION_57_0(v10);
    *(v9 + 14) = OUTLINED_FUNCTION_52_0(v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_70(&dword_1DA2E0000, v17, v7, "%s Retrieving app state for app %s");
    v8 = &loc_1DA34D000;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_9();
  }

  v18 = sub_1DA31A664(a1, a2);
  v20 = sub_1DA312994(v18, v19);
  if (v20 == 35)
  {

    v21 = sub_1DA34C8C0();
    v22 = sub_1DA34CDA0();

    if (OUTLINED_FUNCTION_73())
    {
      v23 = OUTLINED_FUNCTION_72();
      v58 = OUTLINED_FUNCTION_66_0();
      *v23 = v8[402];
      v24 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v55, v56, v57);
      *(v23 + 4) = v24;
      *(v23 + 12) = 2080;
      *(v23 + 14) = OUTLINED_FUNCTION_52_0(v24, v25, v26, v27, v28, v29);
      v30 = "%s Failed to convert appName %s to AppBundleID";
LABEL_12:
      _os_log_impl(&dword_1DA2E0000, v21, v22, v30, v23, 0x16u);
      OUTLINED_FUNCTION_69_0();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_6();
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  sub_1DA314AB4(v20);
  if (!v32)
  {

    v21 = sub_1DA34C8C0();
    v22 = sub_1DA34CDA0();

    if (OUTLINED_FUNCTION_73())
    {
      v23 = OUTLINED_FUNCTION_72();
      v58 = OUTLINED_FUNCTION_66_0();
      *v23 = v8[402];
      v35 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v55, v56, v57);
      *(v23 + 4) = v35;
      *(v23 + 12) = 2080;
      *(v23 + 14) = OUTLINED_FUNCTION_52_0(v35, v36, v37, v38, v39, v40);
      v30 = "%s Failed to retrieve bundleID for app %s";
      goto LABEL_12;
    }

LABEL_13:

    LOBYTE(v41) = 3;
    goto LABEL_24;
  }

  v33 = v31;
  v34 = v32;
  sub_1DA3225B8();

  v42 = sub_1DA3217F0(v33, v34);
  if (v42)
  {
    v41 = 0;
  }

  else
  {
    v41 = 3;
  }

  v43 = sub_1DA34C8C0();
  v44 = sub_1DA34CD90();

  if (OUTLINED_FUNCTION_73())
  {
    v45 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v45 = 136315906;
    v46 = OUTLINED_FUNCTION_34_1("l-center.OrientationLockModule", v55, v56, v57);
    *(v45 + 4) = v46;
    *(v45 + 12) = 2080;
    *(v45 + 14) = OUTLINED_FUNCTION_52_0(v46, v47, v48, v49, v50, v51);
    *(v45 + 22) = 2080;
    v52 = sub_1DA300D78(v33, v34, &v58);

    *(v45 + 24) = v52;
    *(v45 + 32) = 2080;
    v53 = 0xE800000000000000;
    v54 = 0x6E65657263536E6FLL;
    switch(v41)
    {
      case 1:
      case 3:
        v54 = 0x656572635366666FLL;
        v53 = 0xE90000000000006ELL;
        break;
      case 2:
        v53 = 0xE700000000000000;
        v54 = 0x676E697373696DLL;
        break;
      default:
        break;
    }

    sub_1DA300D78(v54, v53, &v58);
    OUTLINED_FUNCTION_40_0();

    *(v45 + 34) = a2;
    _os_log_impl(&dword_1DA2E0000, v43, v44, "%s Returning app state for app %s (%s): %s", v45, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

LABEL_24:
  *v56 = v41;
}

id sub_1DA321708(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DA34CB30();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1DA3217F0(char **a1, uint64_t a2)
{
  v6 = sub_1DA321BC0(3);
  v7 = sub_1DA322474(v6);
  if (!v7)
  {
LABEL_41:

    goto LABEL_42;
  }

  v8 = v7;
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_56:
    v9 = MEMORY[0x1DA74A960](0, v6);
LABEL_5:
    v2 = v9;
    v10 = sub_1DA322620(v9);
    if (!v11)
    {
      goto LABEL_11;
    }

    v3 = 0x6C7070612E6D6F63;
    if (v10 == 0x6C7070612E6D6F63 && v11 == 0xEE00697269732E65)
    {
    }

    else
    {
      v13 = sub_1DA34D160();

      if ((v13 & 1) == 0)
      {
LABEL_11:

        if ([v2 starting])
        {
          v14 = sub_1DA322620(v2);
          if (v15)
          {
            if (v14 == a1 && v15 == a2)
            {

              v17 = 1;
            }

            else
            {
              v17 = sub_1DA34D160();
            }

            return v17 & 1;
          }
        }

LABEL_42:
        v17 = 0;
        return v17 & 1;
      }
    }

    if (qword_1EE109078 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v6 + 32);
    goto LABEL_5;
  }

  __break(1u);
LABEL_58:
  OUTLINED_FUNCTION_0_16(&qword_1EE109078);
LABEL_21:
  v18 = sub_1DA34C8E0();
  __swift_project_value_buffer(v18, qword_1EE109080);
  v19 = sub_1DA34C8C0();
  v20 = sub_1DA34CD90();
  v36 = a2;
  v35 = a1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_72();
    a2 = OUTLINED_FUNCTION_66_0();
    v37 = a2;
    *v21 = 136315394;
    v22 = sub_1DA300D78(0xD000000000000013, 0x80000001DA3564E0, &v37);
    OUTLINED_FUNCTION_86(v22);
    *(v21 + 14) = sub_1DA300D78(v3, 0xEE00697269732E65, v23);
    _os_log_impl(&dword_1DA2E0000, v19, v20, "%s Skipping over %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_6();
  }

  v24 = 0;
  a1 = &selRef_rangeAtIndex_;
  while (1)
  {
    if (v8 == v24)
    {

      goto LABEL_41;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1DA74A960](v24, v6);
    }

    else
    {
      if (v24 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v25 = *(v6 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (![v25 starting])
    {
      goto LABEL_37;
    }

    v27 = sub_1DA322620(v26);
    if (!v28)
    {
      goto LABEL_44;
    }

    if (v27 != v3 || v28 != 0xEE00697269732E65)
    {
      break;
    }

LABEL_39:
    ++v24;
  }

  a2 = sub_1DA34D160();

  if (a2)
  {
LABEL_37:

    goto LABEL_39;
  }

LABEL_44:

  v31 = v26;
  v32 = sub_1DA322684(v31);
  if (!v33)
  {

    goto LABEL_42;
  }

  if (v32 == v35 && v33 == v36)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1DA34D160();
  }

  return v17 & 1;
}

uint64_t sub_1DA321BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FE0, &unk_1DA3522B8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &aBlock - v6;
  OUTLINED_FUNCTION_61_0();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v10 = [v9 InFocus];
  swift_unknownObjectRelease();
  v11 = sub_1DA34B900();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1DA3220FC(v7, v5, a1, 0, 1);
  v20 = [v10 publisherWithOptions_];

  v32 = nullsub_1;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1DA321EA4;
  v31 = &block_descriptor_57;
  v21 = _Block_copy(&aBlock);
  v32 = sub_1DA323AF4;
  v33 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1DA321FA8;
  v31 = &block_descriptor_60;
  v22 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_87();
  v25 = [v23 v24];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  v26 = *(v8 + 16);

  return v26;
}

void sub_1DA321EA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1DA321F0C(void *a1, uint64_t a2)
{
  if ([a1 eventBody])
  {
    v3 = swift_beginAccess();
    MEMORY[0x1DA74A6E0](v3);
    sub_1DA2FBF10(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DA34CCB0();
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1DA321FA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t ContextRetriever.__deallocating_deinit()
{

  OUTLINED_FUNCTION_61_0();

  return swift_deallocClassInstance();
}

id sub_1DA322054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DA34CB30();

  v10 = sub_1DA34CB30();

  v11 = [v6 initWithIntent:a1 moduleIdentifier:v9 containerBundleIdentifier:v10 moduleSize:a6];

  return v11;
}

id sub_1DA3220FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DA34B900();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DA34B8F0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DA34B8F0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_1DA322238(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DA322298(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA322390;

  return v6(a1);
}

uint64_t sub_1DA322390()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA322474(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

void sub_1DA322498(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1DA32250C()
{
  OUTLINED_FUNCTION_2_6();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_84(v4);
  OUTLINED_FUNCTION_87();

  return sub_1DA31E7D0(v6, v7, v8, v9, v2, v1);
}

unint64_t sub_1DA3225B8()
{
  result = qword_1EE108FF8;
  if (!qword_1EE108FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FF8);
  }

  return result;
}

unint64_t sub_1DA3225FC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA322620(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA322684(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t dispatch thunk of ContextRetriever.retrieveAppleAccountSignedIn()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFamilySharingMember()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFamilyOrganizer()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFindMy()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveApplePaySetup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveICloudBackup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFaceIDSetup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveICloudPhotos()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedScreenRecordToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedBackgroundSoundsToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedHearingLiveListenToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedScreenMirroringToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedPortraitOrientationToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContextRetriever.retrieve(settingContextType:)()
{
  OUTLINED_FUNCTION_2_6();
  v6 = (*(*v0 + 280) + **(*v0 + 280));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_9(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_84(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ContextRetriever.retrieve(settingContextString:)()
{
  OUTLINED_FUNCTION_2_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 288) + **(*v0 + 288));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_9(v7);
  *v8 = v9;
  v8[1] = sub_1DA323DD0;

  return v11(v6, v4, v2);
}

uint64_t dispatch thunk of ContextRetriever.retrieveMultiple(contextStrings:)()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v5 = (*(v1 + 296) + **(v1 + 296));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DA32392C;
  v3 = OUTLINED_FUNCTION_40_0();

  return v5(v3);
}

uint64_t sub_1DA32392C()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  OUTLINED_FUNCTION_22();
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_60_0();

  return v5(v2);
}

uint64_t sub_1DA323A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC8, &qword_1DA3522A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DA323AFC()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v3[1] = sub_1DA323DD0;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_87();

  return sub_1DA31F350(v5, v6, v7, v8, v1);
}

uint64_t sub_1DA323BA8()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA323DD0;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_87();

  return sub_1DA31F7BC(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1DA323C5C()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA323DD0;
  v6 = OUTLINED_FUNCTION_28_3();

  return v7(v6, v2, v1);
}

uint64_t sub_1DA323D04()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;
  v6 = OUTLINED_FUNCTION_28_3();

  return v7(v6, v2, v1);
}

void OUTLINED_FUNCTION_3_14()
{
  v4 = *(v3 - 80);
  *(v4 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v5 = (*(v4 + 48) + 16 * v2);
  *v5 = v0;
  v5[1] = v1;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(a4 + 16) = v24;
  v27 = (*(a24 + 80) + 32) & ~*(a24 + 80);
  *(v26 - 88) = a4;
  return a4 + v27 + *(a24 + 72) * v25;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, int a2)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = *(v2 + 104);
  *(v3 + 72) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return a1 + v4;
}

uint64_t OUTLINED_FUNCTION_9_5@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1)
{

  return sub_1DA34CFA0();
}

unint64_t OUTLINED_FUNCTION_33_2()
{
  *(v3 - 80) = v0;

  return sub_1DA30F7DC(v1, v2);
}

unint64_t OUTLINED_FUNCTION_34_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA300D78(0xD00000000000001ALL, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_35_0()
{
  v1[12] = sub_1DA31B214;
  v1[13] = v0;
  v1[14] = v2;
}

unint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_1DA30F7DC(v0, v1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_52_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DA300D78(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_71(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_73()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_1DA34C930();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_77()
{

  sub_1DA2FC42C();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1DA32446C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  v3[5] = swift_task_alloc();
  v4 = sub_1DA34C600();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA324568, 0, 0);
}

uint64_t sub_1DA324568()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  sub_1DA34C5F0();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1DA324668;

  return sub_1DA308958();
}

uint64_t sub_1DA324668(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[5];
  if (v1)
  {
    sub_1DA324D04(v5);
    v6 = sub_1DA324848;
  }

  else
  {
    v4[11] = a1;
    sub_1DA324D04(v5);
    v6 = sub_1DA3247B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DA3247B0()
{
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1DA324848()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA3248D0(uint64_t a1, unint64_t a2, void *a3)
{

  if (sub_1DA308D10() == 11)
  {
    if (qword_1EE109058 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109060);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDA0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1DA300D78(a1, a2, &v14);
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Unrecognized body label dialogId for issueType %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1DA74B3A0](v10, -1, -1);
      MEMORY[0x1DA74B3A0](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6008, &qword_1DA352340);
    swift_allocObject();
    v12 = a3;
    sub_1DA34C650();
    v11 = sub_1DA34C660();
  }

  return v11;
}

uint64_t sub_1DA324AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA324B34;

  return sub_1DA308FB0();
}

uint64_t sub_1DA324B34(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DA324C80, 0, 0);
  }
}

uint64_t sub_1DA324C80(uint64_t a1)
{
  v2 = sub_1DA34C660();
  v4 = v3;

  v5 = *(v1 + 8);

  return v5(v2, v4);
}

uint64_t sub_1DA324D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA324D6C()
{
  v0 = sub_1DA34C8E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA34C860();
  __swift_allocate_value_buffer(v4, qword_1EE10E040);
  __swift_project_value_buffer(v4, qword_1EE10E040);
  if (qword_1EE109078 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE109080);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1DA34C840();
}

uint64_t sub_1DA324EA8()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1DA34C830();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for ContextualRewriteResult(0);
  v1[11] = swift_task_alloc();
  v5 = sub_1DA34C910();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA324FFC()
{
  if (sub_1DA325C98())
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_1EE109078);
    }

    v2 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v2, qword_1EE109080);
    v3 = sub_1DA34C8C0();
    v4 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v4))
    {
      v5 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v5 = 136315138;
      *(v5 + 4) = OUTLINED_FUNCTION_21_3("invokeContextualRewrite(resolvedResult:)", v40, v42);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6();
    }

    v11 = v0[4];
    v12 = v0[5];
    sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16();
    (*(v13 + 16))(v11, v12);
    if (qword_1EE109470 != -1)
    {
      OUTLINED_FUNCTION_12_7(&qword_1EE109470);
    }

    v14 = v0[4] + *(v0[10] + 20);
    v15 = xmmword_1EE109478;
    v16 = xmmword_1EE109488;
    v17 = xmmword_1EE109498;
    *(v14 + 48) = byte_1EE1094A8;
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    OUTLINED_FUNCTION_26_4();

    OUTLINED_FUNCTION_15();

    return v18();
  }

  else
  {
    v20 = static DeviceExpertPreferences.contextualTimeoutOverride.getter();
    if (v21)
    {
      v22 = 0;
      v23 = 6000000000000000000;
    }

    else
    {
      v24 = v20;
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_1EE109058);
      }

      v25 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v25, qword_1EE109060);
      v26 = sub_1DA34C8C0();
      v27 = sub_1DA34CD90();
      if (OUTLINED_FUNCTION_23_5(v27))
      {
        OUTLINED_FUNCTION_72();
        v44 = OUTLINED_FUNCTION_22_4();
        *v1 = 136315394;
        *(v1 + 4) = OUTLINED_FUNCTION_21_3("invokeContextualRewrite(resolvedResult:)", v40, v42);
        *(v1 + 12) = 2048;
        *(v1 + 14) = v24;
        OUTLINED_FUNCTION_19_6();
        _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_15_8();
      }

      v23 = sub_1DA325D68(v24);
      v22 = v33;
    }

    v0[16] = v23;
    v0[17] = v22;
    sub_1DA34C900();
    if (qword_1EE109CF0 != -1)
    {
      swift_once();
    }

    v34 = sub_1DA34C860();
    v41 = *(v0 + 5);
    __swift_project_value_buffer(v34, qword_1EE10E040);
    v35 = swift_task_alloc();
    v0[18] = v35;
    v35[1] = vextq_s8(v41, v41, 8uLL);
    v35[2].i64[0] = v23;
    v35[2].i64[1] = v22;
    sub_1DA34C820();
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_47();
    v0[19] = v36;
    *v36 = v37;
    v36[1] = sub_1DA3253D8;
    v38 = v0[11];
    v39 = v0[9];

    return (v41.i64[0])(v38, "contextualRewrite", 17, 2, v39, &unk_1DA352370, v35);
  }
}

uint64_t sub_1DA3253D8()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  *(v3 + 160) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA325540(uint64_t a1)
{
  v33 = v1;
  sub_1DA34C900();
  v4 = sub_1DA34C8F0();
  v5 = sub_1DA34C8F0();
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    v2 = (v4 - v5);
    v3 = 1000000000.0;
    if (qword_1EE109058 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_1_0(&qword_1EE109058);
LABEL_3:
  v6 = v2 / v3;
  v7 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v7, qword_1EE109060);
  v8 = sub_1DA34C8C0();
  v9 = sub_1DA34CD90();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v1[14];
  v11 = v1[15];
  v13 = v1[12];
  v14 = v1[13];
  if (v10)
  {
    v15 = OUTLINED_FUNCTION_72();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DA300D78(0xD000000000000028, 0x80000001DA3565E0, &v32);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v6;
    _os_log_impl(&dword_1DA2E0000, v8, v9, "%s - contextual rewrite took %f seconds", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v17 = *(v14 + 8);
  v17(v12, v13);
  v17(v11, v13);
  v19 = v1[10];
  v18 = v1[11];
  v20 = v1[4];
  sub_1DA34BFB0();
  OUTLINED_FUNCTION_2_16();
  (*(v21 + 16))(v20, v18);
  v22 = v18 + *(v19 + 20);
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 24);
  v26 = *(v22 + 32);
  v27 = *(v22 + 40);
  v28 = *(v22 + 48);
  result = sub_1DA327BB8(v18);
  if (v6 == INFINITY)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v30 = v1[4] + *(v19 + 20);
  *v30 = v23;
  *(v30 + 1) = v24;
  *(v30 + 8) = v6;
  *(v30 + 16) = 0;
  *(v30 + 24) = v25;
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  *(v30 + 48) = v28;
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_15();

  return v31();
}

uint64_t sub_1DA32580C()
{
  v2 = *(v0 + 160);
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));

  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
  if (swift_dynamicCast())
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v4 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v4, qword_1EE109060);
    v5 = sub_1DA34C8C0();
    v6 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_23_5(v6))
    {
      OUTLINED_FUNCTION_72();
      v7 = OUTLINED_FUNCTION_22_4();
      *v1 = 136315394;
      *(v1 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v7);
      *(v1 + 12) = 2050;
      *(v1 + 14) = sub_1DA34D260();
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_15_8();
    }

    v13 = *(v0 + 16);
LABEL_13:

    goto LABEL_19;
  }

  v14 = *(v0 + 160);

  *(v0 + 24) = v14;
  v15 = v14;
  if (swift_dynamicCast())
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v16 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v16, qword_1EE109060);
    v17 = sub_1DA34C8C0();
    v18 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_23_5(v18))
    {
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_22_4();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v19);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_15_8();
    }

    v13 = *(v0 + 24);
    goto LABEL_13;
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v25 = *(v0 + 160);
  v26 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v26, qword_1EE109060);
  v27 = v25;
  v28 = sub_1DA34C8C0();
  v29 = sub_1DA34CDA0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 160);
    v31 = OUTLINED_FUNCTION_72();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v33);
    *(v31 + 12) = 2112;
    v34 = v30;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *v32 = v35;
    _os_log_impl(&dword_1DA2E0000, v28, v29, "%s - unexpected error %@", v31, 0x16u);
    sub_1DA2E7E4C(v32, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_6();
  }

LABEL_19:
  v36 = *(v0 + 32);
  v37 = *(v0 + 40);
  sub_1DA34BFB0();
  OUTLINED_FUNCTION_2_16();
  (*(v38 + 16))(v36, v37);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EE109430);
  }

  v39 = *(v0 + 80);
  v40 = *(v0 + 32);
  v44 = xmmword_1EE109438;
  v45 = xmmword_1EE109448;
  v46 = xmmword_1EE109458;
  v47 = byte_1EE109468;

  v41 = v40 + *(v39 + 20);
  *v41 = v44;
  *(v41 + 16) = v45;
  *(v41 + 32) = v46;
  *(v41 + 48) = v47;
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_15();

  return v42();
}