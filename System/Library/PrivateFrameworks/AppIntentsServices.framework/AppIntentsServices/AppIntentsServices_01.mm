uint64_t sub_22199FBD8()
{
  v0[10] = v0[14];

  swift_getAtKeyPath();

  v0[16] = v0[11];
  v1 = EntityProperty.wrappedValue.getter((v0 + 2));
  v4 = v0[2];
  v5 = v0[3];
  v0[17] = v4;
  v0[18] = v5;
  v6 = v0[4];
  v7 = v0[5];
  v0[19] = v6;
  v0[20] = v7;
  if (v6)
  {
    v0[6] = v4;
    v0[7] = v5;
    v0[8] = v6;
    v0[9] = v7;
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_22199FD94;
    v9 = v0[12];

    return CustomAppEntityRepresentationBase.Deferred.value.getter(v9);
  }

  else
  {
    sub_2219A1218(v1, v2, v3);
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000221BEC460;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_22199FD94()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22199FF1C;
  }

  else
  {
    v2 = sub_22199FEA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22199FEA8()
{

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_22199FF1C()
{

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_22199FF90(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 80);
  (*(v1 + 32))(v32);
  __swift_project_boxed_opaque_existential_0(v32, v33);
  v5 = OUTLINED_FUNCTION_17();
  v7 = v6(v5);
  v9 = v8;
  if (v3())
  {
    strcpy(v27, "(transient) ");
    BYTE5(v27[1]) = 0;
    HIWORD(v27[1]) = -5120;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    v10 = OUTLINED_FUNCTION_15();
    v12 = v11(v10);
    MEMORY[0x223DA31F0](v12);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v32, v33);
    v13 = OUTLINED_FUNCTION_15();
    v14(v13);
  }

  v27[1] = 0xE000000000000000;
  sub_221BCDE68();

  v30 = v7;
  v31 = v9;
  MEMORY[0x223DA31F0](0x6669746E65646928, 0xEC0000003A726569);
  v15 = OUTLINED_FUNCTION_14();
  v17 = sub_2219C0D58(v15, v16, v2);
  v19 = v18;

  MEMORY[0x223DA31F0](v17, v19);

  v20 = MEMORY[0x223DA31F0](0x7265706F7270202CLL, 0xED00003A73656974);
  v21 = v4(v20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7750, &unk_221BD0CC0);
  v29 = sub_2219A19D8();
  v27[0] = v21;
  v22 = __swift_project_boxed_opaque_existential_0(v27, v28);
  v23 = sub_2219B6438(v2, *v22);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x223DA31F0](v23, v25);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return OUTLINED_FUNCTION_0_0();
}

id sub_2219A0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221BCD358();

  v6 = sub_221BCD358();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

uint64_t sub_2219A02E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v4;
}

unint64_t sub_2219A0334()
{
  result = qword_27CFB7688;
  if (!qword_27CFB7688)
  {
    sub_2219A1D20(255, &qword_27CFBB8B0, 0x277D23800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7688);
  }

  return result;
}

void sub_2219A039C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_221B9EA30(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77C0, &qword_221BD0D28);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v6 = *(v14 + 48);
    v7 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    (*(v8 + 8))(v6 + *(v8 + 72) * v3, v7);
    memcpy(a2, (*(v14 + 56) + 168 * v3), 0xA8uLL);
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v9, v10, MEMORY[0x277CC9600]);
    sub_221BCE048();
    *v2 = v14;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_36();

    bzero(v11, v12);
  }
}

void sub_2219A04D4(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v5 = sub_221B9E9B8(a2, a3);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();

    sub_2219A1AB0((*(v8 + 56) + 32 * v7), a1);
    OUTLINED_FUNCTION_12();
    sub_221BCE048();
    *v3 = v8;
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_2219A0610()
{
  OUTLINED_FUNCTION_28();
  v3 = sub_221B9E9B8(v1, v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  v6 = OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8();
  sub_221BCE028();

  v8 = *(*(v12 + 56) + 8 * v5);
  v9 = OUTLINED_FUNCTION_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_27();
  sub_221BCE048();
  *v0 = v12;
  return v8;
}

void sub_2219A06F4()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EA30(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7748, &qword_221BE8C80);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v4 = *(v9 + 48);
    v5 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    (*(v6 + 8))(v4 + *(v6 + 72) * v1, v5);
    type metadata accessor for RemoteAppNotificationSink(0);
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v7, v8, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v9;
  }

  OUTLINED_FUNCTION_36();
}

void sub_2219A07F8()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EAA0(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7728, &qword_221BD0CA0);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7730, &qword_221BD0CA8);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v3;
  }

  OUTLINED_FUNCTION_36();
}

void sub_2219A08AC()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EB98(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7738, &unk_221BD0CB0);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v4 = *(v6 + 48);
    _s17LNConnectionStoreC9AssertionOMa(0);
    OUTLINED_FUNCTION_2_1();
    sub_2219A197C(v4 + *(v5 + 72) * v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7730, &qword_221BD0CA8);
    sub_2219A1350(&qword_27CFB7740, _s17LNConnectionStoreC9AssertionOMa, &unk_221BD8244);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v6;
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_2219A0A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_221B9EA30(a1);
  if (v13)
  {
    v14 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v15 = *(v27 + 48);
    v16 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    (*(v17 + 8))(v15 + *(v17 + 72) * v14, v16);
    v18 = *(v27 + 56);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_2_1();
    sub_2219A182C(v18 + *(v20 + 72) * v14, a6, a4, a5);
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v21, v22, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_12();
    sub_221BCE048();
    *v6 = v27;
    v23 = a6;
    v24 = 0;
    v25 = v19;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v23 = a6;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

uint64_t sub_2219A0B94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B9ECA8(a1);
  if (v5)
  {
    v6 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7718, &qword_221BD0C98);
    sub_221BCE028();
    memcpy(__dst, (*(v10 + 48) + 72 * v6), sizeof(__dst));
    sub_2219A1878(__dst);
    v7 = sub_2219A18CC(*(v10 + 56) + 16 * v6, a2);
    sub_2219A1928(v7, v8, v9);
    OUTLINED_FUNCTION_12();
    result = sub_221BCE048();
    *v2 = v10;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

void sub_2219A0C88(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_221BCE228();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v24 = *i;

    v11 = sub_221B9E9B8(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77B8, &qword_221BD0D18);
      sub_221BCE038();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  sub_221BB580C();
  v15 = sub_221B9E9B8(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEC530);
  sub_221BCE018();
  MEMORY[0x223DA31F0](39, 0xE100000000000000);
  sub_221BCE058();
  __break(1u);
}

void sub_2219A0F70()
{
  OUTLINED_FUNCTION_30();
  if (v0)
  {
    v2 = (v1 + 48);
    while (2)
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *v2;
      v2 += 24;
      v5 = v6;
      switch(v6 >> 5)
      {
        case 1u:
          MEMORY[0x223DA4060](3);

          sub_221BCD448();
          goto LABEL_10;
        case 2u:
          MEMORY[0x223DA4060](4);

          sub_221BCD448();
          MEMORY[0x223DA4060](v5 & 0x1F);
          goto LABEL_10;
        case 3u:
          v8 = 5;
          goto LABEL_8;
        case 4u:
          v8 = 6;
LABEL_8:
          MEMORY[0x223DA4060](v8);

          sub_2219A0F70();
LABEL_10:
          sub_2219A1B7C(v3, v4, v5);
          goto LABEL_16;
        case 5u:
          v7 = v4 | v3 || v5 != 160;
          goto LABEL_15;
        default:
          MEMORY[0x223DA4060](2);
          v7 = v3;
LABEL_15:
          MEMORY[0x223DA4060](v7);
LABEL_16:
          if (!--v0)
          {
            return;
          }

          continue;
      }
    }
  }
}

void sub_2219A1098()
{
  OUTLINED_FUNCTION_30();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_16();
      sub_221BCD448();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_2219A10FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x223DA4060](v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v5 = *v4;
      v6 = *v4;

      sub_221BCD448();
      sub_221BCE328();
      if (v5)
      {
        v7 = v6;
        sub_221BCDC68();
      }

      else
      {
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2219A1200(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2219A1218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8300;
  if (!qword_27CFB8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8300);
  }

  return result;
}

uint64_t sub_2219A126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2219A12B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB76A0;
  if (!qword_27CFB76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB76A0);
  }

  return result;
}

uint64_t sub_2219A1350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CustomAppEntityRepresentationBase(uint64_t a1)
{
  result = qword_27CFB76B8;
  if (!qword_27CFB76B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2219A13E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A140C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB76B0;
  if (!qword_27CFB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB76B0);
  }

  return result;
}

uint64_t sub_2219A14B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2219A14F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219A1598(uint64_t a1)
{
  result = sub_221BCC558();
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

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices21DisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2219A174C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_2219A178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219A182C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v4;
}

unint64_t sub_2219A1928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7720;
  if (!qword_27CFB7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7720);
  }

  return result;
}

uint64_t sub_2219A197C(uint64_t a1)
{
  v2 = _s17LNConnectionStoreC9AssertionOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2219A19D8()
{
  result = qword_27CFB7758;
  if (!qword_27CFB7758)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7750, &unk_221BD0CC0);
    sub_2219A1A5C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7758);
  }

  return result;
}

unint64_t sub_2219A1A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7760;
  if (!qword_27CFB7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7760);
  }

  return result;
}

_OWORD *sub_2219A1AB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2219A1B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2219A1B6C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2219A1B7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if ((v3 - 1) < 2 || v3 == 4 || v3 == 3)
  {
  }

  return result;
}

double sub_2219A1C60(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2219A1CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2219A1D20(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7()
{
  *(v0 - 272) = 0;
  *(v0 - 288) = 0u;
  *(v0 - 304) = 0u;
  return v0 - 304;
}

void *OUTLINED_FUNCTION_19()
{
  v2 = *(v0 - 208);

  return __swift_project_boxed_opaque_existential_0((v0 - 232), v2);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_23()
{

  JUMPOUT(0x223DA4C00);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x223DA4060);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_2219A126C(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_221BCE328();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_221BCE328();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2219A02B8(va);
}

void *static AppEntityTypeDescribing<>.queryAllEntities()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  OUTLINED_FUNCTION_6_0();
  return sub_221A1E758(v6, a3);
}

uint64_t static AppEntityTypeDescribing<>.queryByProperties(propertyQuery:maximumResultCount:sortingOptions:queryTarget:)@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  v12 = a5[2];
  v11 = a5[3];
  v13 = *(a5 + 32);
  v14 = (*(a7 + 8))(a6, a7);
  v16 = v15;
  v19 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery(0, a6, v17, v18);
  sub_221A1E768(v19, v29, v20, v21);
  v29[9] = a2;
  v30 = a3 & 1;
  v31 = a4;
  v32 = v9;
  v33 = v10;
  v34 = v12;
  v35 = v11;
  v36 = v13;
  v37 = 4;
  __src[0] = v14;
  __src[1] = v16;
  v28 = xmmword_221BD0800;
  sub_221A1E758(__src, x8_0);
  sub_2219A2B7C(v9, v10, v12, v11, v13);
}

uint64_t static AppEntityTypeDescribing<>.queryBySearchableItems(items:queryTarget:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 32);
  (*(a4 + 8))(a3, a4);
  OUTLINED_FUNCTION_6_0();
  sub_221A1E758(v6, x8_0);
  sub_2219A2B7C(v8, v9, v10, v11, v12);
}

uint64_t static AppEntityTypeDescribing<>.queryByString(matching:queryTarget:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = *(a3 + 32);
  (*(a5 + 8))(a4, a5);
  OUTLINED_FUNCTION_6_0();
  sub_221A1E758(v7, x8_0);
  sub_2219A2B7C(v9, v10, v11, v12, v13);
}

void *sub_2219A23E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  OUTLINED_FUNCTION_6_0();
  return sub_221A1E758(v6, a3);
}

void *static _IdentifiableAppEntityRepresentation<>.queryByIdentifier(instanceIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(*(a3 + 16) + 8))(a2);
  v10 = v8;
  v11 = v9;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v31 = v9;
    v32 = v8;
    v33 = a4;
    v35 = MEMORY[0x277D84F90];
    sub_2219A3014(0, v12, 0);
    v13 = v35;
    v14 = (a1 + 40);
    do
    {
      v15 = *v14;
      v34[0] = *(v14 - 1);
      v34[1] = v15;
      sub_2219A2744(v34, a2, a3, __src);
      v35 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2219A3014(v16 > 1, v17 + 1, 1);
      }

      v18 = *(&v37 + 1);
      v19 = v38;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(__src, *(&v37 + 1));
      v21 = MEMORY[0x28223BE20](v20);
      v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23, v21);
      sub_2219A4CD8(v17, v23, &v35, v18, v19);
      __swift_destroy_boxed_opaque_existential_0(__src);
      v13 = v35;
      v14 += 2;
      --v12;
    }

    while (v12);
    a4 = v33;
    v10 = v32;
    v11 = v31;
  }

  sub_2219A28C8(v13, __src);
  v25 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v26 = v38;
    __swift_project_boxed_opaque_existential_0(__src, *(&v37 + 1));
    v25 = (*(v26 + 16))(v25, v26);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(__src);
  }

  else
  {
    sub_2219A4DC0(__src);
    v28 = 0xE000000000000000;
  }

  v38 = v13;
  v39 = v25;
  v41 = 0;
  v42 = 0;
  v40 = v28;
  v43 = 0;
  v44 = 1;
  __src[0] = v10;
  __src[1] = v11;
  v37 = xmmword_221BD0800;
  return sub_221A1E758(__src, a4);
}

unint64_t sub_2219A2744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(*(a3 + 16) + 16))(a2);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D23800]);

  v11 = sub_2219A0230(v7, v9, v5, v6);
  a4[3] = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  a4[4] = result;
  *a4 = v11;
  return result;
}

uint64_t sub_2219A280C(uint64_t a1)
{
  v2 = sub_2219A4924(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_2219A49C8(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_2219A4CA4(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_2219A4E2C(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_3_2();
  if (v12)
  {
    sub_2219A4E2C(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_2219A4A1C(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_3_2();
    sub_2219A4E2C(v18, v19, v20);
  }

  return v16;
}

double sub_2219A28C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2219A1B08(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2219A28EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v3 = *(a1 + 56);
    *(a2 + 16) = *(a1 + 48);

    v5 = v6;
  }

  else
  {
    v3 = 0;
    result = 0;
    *(a2 + 16) = 0;
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_2219A2954()
{
  v3 = OUTLINED_FUNCTION_7_0();
  v4 = _s15DeviceDiscoveryC14DeviceEndpointVMa(v3);
  v5 = v4;
  if (v2)
  {
    sub_2219A4E38(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v5);
}

uint64_t sub_2219A29EC()
{
  OUTLINED_FUNCTION_7_0();
  v3 = sub_221BCCEE8();
  v4 = v3;
  if (v2)
  {
    (*(*(v3 - 8) + 16))(v0, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v5, 1, v4);
}

void *sub_2219A2A88(uint64_t a1)
{
  result = sub_221BA1250();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_221BA0C50(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_2219A2B14(uint64_t a1)
{
  result = sub_2219A4988(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2219A4C28(result, v3, 0, a1);
  }
}

void sub_2219A2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

char *sub_2219A2BE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C0C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C74(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C94(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2CB8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_2219A2CF8()
{
  OUTLINED_FUNCTION_5_0();
  if (v4 >= v2 && v2 + 8 * v3 > v4)
  {
    if (v1 != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
      OUTLINED_FUNCTION_1_3();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    OUTLINED_FUNCTION_1_3();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_2219A2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_5_0();
  if (v11 < v10 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 <= v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v7 != v6)
  {
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2219A2ECC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

uint64_t sub_2219A2EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_5_0();
  if (v9 < v8 || (result = a4(0), v5 + *(*(result - 8) + 72) * v4 <= v6))
  {
    a4(0);
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v6 != v5)
  {
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2219A2FB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A2FD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A381C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A2FF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A3054(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A3074(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3094(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A30B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A30D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A3EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3134(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A4130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A31AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A4244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A434C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3574(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A4714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A35EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A4814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A381C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78C0, &qword_221BD0DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78C8, &qword_221BD0E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A3A6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7800, &qword_221BD0D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7808, &qword_221BD1840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A3BA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77F8, &qword_221BD0D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB710, &qword_221BD1850);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3CDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E0, &qword_221BD0E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7890, &qword_221BD0DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3EF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78A8, &qword_221BD2440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2219A4008(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

char *sub_2219A4130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7888, &qword_221BD0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A4244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7850, &qword_221BD0DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A434C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7820, &unk_221BD1970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2219A4464(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v10 != v11)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 32);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || &v17[32 * v12] <= v16)
    {
      memmove(v16, v17, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219A455C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2219A2EF4(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2219A4714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7830, &qword_221BD0D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_2219A4814(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D0, &unk_221BD1990);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2219A2CF8();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2219A4924(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_221BCDD58();
  }

  else
  {
    return sub_221BCDD28();
  }
}

uint64_t sub_2219A49C8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_221BCDDF8();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_2219A4A1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DA3B10](a1, a2, v7);
      sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    if (sub_221BCDD88() == *(a4 + 36))
    {
      sub_221BCDD98();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_221BCDC48();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_221BCDC58();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t sub_2219A4C28(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_2219A4CA4(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x223DA3AC0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_2219A4CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22198B358(&v12, v10 + 40 * a1 + 32);
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

uint64_t sub_2219A4DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77E0, &qword_221BD4CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2219A4E2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2219A4E38(uint64_t a1, uint64_t a2)
{
  v4 = _s15DeviceDiscoveryC14DeviceEndpointVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id AppEntitySpecification.lnValue.getter()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = sub_22199B82C(v3, v4);
  if (v2 == 1)
  {
    v6 = v1[6];
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v30[0] = MEMORY[0x277D84F90];
      sub_221BCDF28();
      v9 = (v6 + 48);
      do
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v9 += 5;
        objc_allocWithZone(MEMORY[0x277D238D8]);
        v13 = v12;

        sub_2219A62D8(v10, v11, v12);
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v7;
      }

      while (v7);
      v8 = v30[0];
    }

    v14 = objc_allocWithZone(MEMORY[0x277D237F0]);
    v15 = sub_2219A6190(1, v5, v8, 0, 0);
    v31 = sub_2219A1D20(0, &qword_27CFB77D0, 0x277D237F0);
    v30[0] = v15;
    sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
    v16 = v1[3];
    v17 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v16);
    v18 = *(v17 + 16);
    v19 = v15;
    v20 = v18(v16, v17);
    v22 = sub_2219A51F4(v20, v21);
    v23 = objc_allocWithZone(MEMORY[0x277D23958]);
    v24 = sub_2219A6260(v30, v22);
  }

  else
  {
    v31 = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
    v30[0] = v5;
    v25 = objc_allocWithZone(MEMORY[0x277D23810]);
    v26 = v5;
    v27 = [v25 init];
    v28 = objc_allocWithZone(MEMORY[0x277D23958]);
    v24 = sub_2219A6260(v30, v27);
  }

  return v24;
}

id sub_2219A51F4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_221BCD358();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t AppEntitySpecification.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  *(a2 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a2 + 32) = sub_2219A0334();
  *a2 = v4;
  *(a2 + 40) = [a1 isTransient];
  v5 = [a1 properties];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v6 = sub_221BCD668();

  v7 = sub_2219A616C(v6);
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    *(a2 + 48) = v11;
    return result;
  }

  v8 = v7;
  v27 = MEMORY[0x277D84F90];
  result = sub_2219A2FF4(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v25 = a2;
    v10 = 0;
    v11 = v27;
    v26 = v6 & 0xC000000000000001;
    v12 = v6;
    v13 = v8;
    do
    {
      if (v26)
      {
        v14 = MEMORY[0x223DA3BF0](v10, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      v17 = sub_221BCD388();
      v19 = v18;

      v20 = [v15 value];
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2219A2FF4((v21 > 1), v22 + 1, 1);
      }

      ++v10;
      *(v27 + 16) = v22 + 1;
      v23 = (v27 + 40 * v22);
      v23[4] = v17;
      v23[5] = v19;
      v23[7] = 0;
      v23[8] = 0;
      v23[6] = v20;
      v6 = v12;
    }

    while (v13 != v10);

    a2 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static AppEntitySpecification.identifiableEntity<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 16))(a1, a2);
  v8 = v7;
  v9 = (*(a2 + 24))(a1, a2);
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D23800]);

  v13 = sub_2219A0230(v6, v8, v9, v11);
  *(a3 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a3 + 32) = sub_2219A0334();
  *a3 = v13;

  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x277D84F90];
  return result;
}

unint64_t static AppEntitySpecification.identifiableEntity(typeIdentifier:instanceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = objc_allocWithZone(MEMORY[0x277D23800]);

  v11 = sub_2219A0230(a1, a2, a3, a4);
  *(a5 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  *(a5 + 32) = result;
  *a5 = v11;
  *(a5 + 40) = 0;
  *(a5 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppEntitySpecification.transientEntity<A>(typeIdentifier:properties:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_221BCD618();
  static AppEntitySpecification.transientEntity(typeIdentifier:properties:)(v8, v9, a2, x8_0);
}

uint64_t static AppEntitySpecification.transientEntity(typeIdentifier:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_221BCC558();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_221BCC548();
  v12 = sub_221BCC4E8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = objc_allocWithZone(MEMORY[0x277D23800]);
  v16 = sub_2219A0230(a1, a2, v12, v14);
  *(a4 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a4 + 32) = sub_2219A0334();
  *a4 = v16;
  *(a4 + 40) = 1;
  *(a4 + 48) = a3;
}

unint64_t static AppEntitySpecification.uniqueEntity(typeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277D23800]);

  v7 = sub_2219A0230(a1, a2, 0, 0xE000000000000000);
  *(a3 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  *(a3 + 32) = result;
  *a3 = v7;
  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppEntitySpecification.canConvert(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 valueType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static AppEntitySpecification.canConvertFrom(_:)(v1);
  v4 = v3;

  return v4 & 1;
}

void static AppEntitySpecification.canConvertFrom(_:)(id a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1 = a1;
    v4 = [v3 memberValueTypes];
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v5 = sub_221BCD668();

    v18 = MEMORY[0x277D84F90];
    v6 = sub_2219A616C(v5);
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        sub_2219A616C(v18);

        goto LABEL_19;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DA3BF0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_27CFB7388 != -1)
  {
LABEL_22:
    swift_once();
  }

  v10 = sub_221BCCD88();
  __swift_project_value_buffer(v10, qword_27CFDEDF8);
  v11 = a1;
  v12 = sub_221BCCD68();
  v13 = sub_221BCDA78();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = sub_2219A6360(0xD000000000000016, 0x8000000221BD0E20, &v18);
    _os_log_impl(&dword_221989000, v12, v13, "Cannot convert from %@ to %s", v14, 0x16u);
    sub_2219A6860(v15, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DA4C00](v16, -1, -1);
    MEMORY[0x223DA4C00](v14, -1, -1);
  }

LABEL_19:
  OUTLINED_FUNCTION_1_4();
}

double static AppEntitySpecification.from(_:context:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &qword_27CFB77D0, 0x277D237F0);
  if (swift_dynamicCast())
  {
    AppEntitySpecification.init(_:)(v5, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void AppEntitySpecification.propertyValueWithIdentifier<A>(_:context:)(void *a1, void *a2, void x2_0, uint64_t a3, uint64_t a4)
{
  v10 = *(v5 + 48);
  v11 = (v10 + 48);
  v12 = *(v10 + 16) + 1;
  while (--v12)
  {
    v13 = *v11;
    if (*(v11 - 2) != a1 || *(v11 - 1) != a2)
    {
      v11 += 5;
      if ((sub_221BCE1B8() & 1) == 0)
      {
        continue;
      }
    }

    if (v13)
    {
      v15 = *(a4 + 24);
      v34 = v13;
      v16 = v15(v13, a3, a4);
      if (v16)
      {
        v24 = OUTLINED_FUNCTION_0_4(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34);
        v25(v24);
        OUTLINED_FUNCTION_1_4();

        return;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_1_4();

  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

uint64_t AppEntitySpecification.propertyValueWithIdentifier<A, B>(_:context:)(void x0_0, uint64_t x1_0, uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_221BCD618();
  AppEntitySpecification.propertyValueWithIdentifier<A>(_:context:)(v10, v11, x1_0, a1, a3);
}

void AppEntitySpecification.firstPropertyValue<A>(context:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 48);
  if (*(v6 + 16))
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      v9 = *(a2 + 24);
      v21 = v7;
      v10 = v9(v7, a1, a2);
      if (v10)
      {
        v18 = OUTLINED_FUNCTION_0_4(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        v19(v18);

        return;
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a3, 1, 1, a1);
}

uint64_t static AppEntityConvertible.canConvert(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 valueType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static AppEntitySpecification.canConvertFrom(_:)(v1);
  v4 = v3;

  return v4 & 1;
}

id AppEntityConvertible.lnValue.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4, a1);
  v2 = AppEntitySpecification.lnValue.getter();
  sub_2219A1BD4(v4);
  return v2;
}

uint64_t static AppEntityConvertible.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static AppEntitySpecification.from(_:context:)(a1, &v10);
  if (*(&v11 + 1))
  {
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v12;
    v15 = v13;
    (*(a4 + 32))(v14, a2, a3, a4);
    return sub_2219A1BD4(v14);
  }

  else
  {
    sub_2219A6860(&v10, &qword_27CFB7920, &qword_221BD0E60);
    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }
}

uint64_t sub_2219A616C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_221BCDDA8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_2219A6190(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v9 = sub_221BCD658();

  if (a5)
  {
    v10 = sub_221BCD358();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

id sub_2219A6260(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = [v2 initWithValue:sub_221BCE1A8() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_2219A62D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_221BCD358();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

unint64_t sub_2219A633C(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_2219A6360(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2219A6424(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22199B650(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2219A6424(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2219A6524(a5, a6);
    *a1 = v9;
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
    result = sub_221BCDEE8();
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

uint64_t sub_2219A6524(uint64_t a1, unint64_t a2)
{
  v3 = sub_2219A6570(a1, a2);
  sub_2219A6688(&unk_283511858);
  return v3;
}

uint64_t sub_2219A6570(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_221BCD4C8())
  {
    result = sub_221B95CE4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_221BCDE48();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_221BCDEE8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2219A6688(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2219A676C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2219A676C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7928, &unk_221BE8640);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2219A6860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2219A68DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2219A691C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CustomAppEntityRepresentationBase.Deferred.value.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  *v6 = v2;
  v6[1] = sub_2219A6AF0;

  return v8(a1, v2 + 16);
}

uint64_t sub_2219A6AF0()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2219A6C14, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v5();
  }
}

uint64_t sub_2219A6C40@<X0>(void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_2219A1B08(a3, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
  if (swift_dynamicCast())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(&v25 + 1);
    sub_22199C274(v24);
  }

  else
  {
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    sub_2219A76B4(v24);
    Strong = 0;
    v12 = 0;
  }

  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v14);
  v15 = (*(v13 + 8))(v14, v13);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_0(a3);
  v18 = swift_allocObject();
  swift_weakInit();

  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = v18;
  v19[6] = Strong;
  v19[7] = v12;
  *a7 = v15;
  a7[1] = v17;
  a7[2] = &unk_221BD1018;
  a7[3] = v19;

  __swift_destroy_boxed_opaque_existential_0(a2);
}

uint64_t sub_2219A6DEC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a1;
  v9 = a2[1];
  *(v8 + 128) = *a2;
  *(v8 + 144) = v9;
  return MEMORY[0x2822009F8](sub_2219A6E20, 0, 0);
}

uint64_t sub_2219A6E20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v4 = Strong;
    if (*(v0 + 88))
    {
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v7 = *(v0 + 96);
      ObjectType = swift_getObjectType();
      *(v0 + 16) = v6;
      *(v0 + 24) = v5;
      *(v0 + 32) = *(v0 + 144);
      swift_unknownObjectRetain();
      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_2219A700C;
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 72);

      return AppIntentDispatching.value<A, B>(for:from:)(v13, (v0 + 16), v4, ObjectType, v10, v12, v7, v11);
    }

    sub_2219A1218(Strong, v2, v3);
    v17 = swift_allocError();
    *v18 = 0xD000000000000012;
    v18[1] = 0x8000000221BEC550;
    OUTLINED_FUNCTION_2_3(v17, v18);
  }

  else
  {
    sub_2219A1218(0, v2, v3);
    v15 = swift_allocError();
    *v16 = xmmword_221BD0F00;
    OUTLINED_FUNCTION_2_3(v15, v16);
  }

  OUTLINED_FUNCTION_25();

  return v19();
}

uint64_t sub_2219A700C()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_2219A717C;
  }

  else
  {
    v5 = sub_2219A7114;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2219A7114()
{
  OUTLINED_FUNCTION_1_5();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219A717C()
{
  OUTLINED_FUNCTION_1_5();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_2219A71F4(void *x8_0@<X8>)
{
  v4 = sub_221BCDC98();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = *(v2 + 16);
    EntityProperty.wrappedValue.getter(&v9 - v5);

    sub_2219A87C4(v8, v7, v6, x8_0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2219A72C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = *(*v5 + 80);
  v12 = sub_221BCDC98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-v14 - 8];
  v22[3] = v10;
  v21 = a4;
  v22[4] = swift_getWitnessTable();
  v22[0] = v5;
  sub_2219A1B08(a2, v20);
  v16 = *(a4 + 24);

  v16(a1, v22, v20, a3, v11, a4);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v11);
  v17 = *(*v5 + 104);
  swift_beginAccess();
  (*(v13 + 40))(v5 + v17, v15, v12);
  return swift_endAccess();
}

uint64_t sub_2219A74B8(uint64_t result, unint64_t a2)
{
  if (!*(v2 + 24))
  {
    v4 = result;
    v5 = sub_221BCD528();

    if (v5)
    {
      v6 = sub_2219BBB74(1uLL, v4, a2);
      v4 = MEMORY[0x223DA3160](v6);
      a2 = v7;
    }

    *(v2 + 16) = v4;
    *(v2 + 24) = a2;
  }

  return result;
}

uint64_t sub_2219A75D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219A761C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2219A765C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2219A76B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7660, &unk_221BE7050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2219A771C(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2219A77F8;

  return sub_2219A6DEC(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_2219A77F8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

__n128 DeferredEntityPropertySpecification.init(propertyIdentifier:entityIdentifier:app:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v6 = a4[1].n128_u64[0];
  v7 = a4[1].n128_u64[1];
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_22198B358(a3, a5 + 16);
  result = v9;
  *(a5 + 56) = v9;
  *(a5 + 72) = v6;
  *(a5 + 80) = v7;
  return result;
}

__n128 DeferredEntityPropertySpecification.init(propertyIdentifier:entityType:entityInstance:app:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v18 = *a7;
  v13 = a7[1].n128_u64[0];
  v14 = a7[1].n128_u64[1];
  *a8 = a1;
  *(a8 + 8) = a2;
  v15 = objc_allocWithZone(MEMORY[0x277D23800]);
  v16 = sub_2219A0230(a3, a4, a5, a6);
  *(a8 + 40) = sub_22199BA64();
  *(a8 + 48) = sub_2219A0334();
  *(a8 + 16) = v16;
  result = v18;
  *(a8 + 56) = v18;
  *(a8 + 72) = v13;
  *(a8 + 80) = v14;
  return result;
}

uint64_t sub_2219A7A50(char *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000038, 0x8000000221BEC570);
  MEMORY[0x223DA31F0](*v2, v2[1]);
  MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEC5B0);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x223DA31F0](v6);

  MEMORY[0x223DA31F0](0x736E69202020200ALL, 0xEF203A65636E6174);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = sub_2219C0D58(v9, v10, v3);
  v13 = v12;

  MEMORY[0x223DA31F0](v11, v13);

  MEMORY[0x223DA31F0](0x203A7070612029, 0xE700000000000000);
  MEMORY[0x223DA31F0](v2[7], v2[8]);
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2219A7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A7C34(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A7C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB79B0[0];
  if (!qword_27CFB79B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB79B0);
  }

  return result;
}

uint64_t sub_2219A7C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2219A7CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EntityProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_4();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_2219A7DD0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2219A7E08(uint64_t a1)
{
  v2 = sub_221BCDC98();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return EntityProperty.wrappedValue.setter(v5);
}

uint64_t EntityProperty.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_4();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void (*EntityProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_6();
  v4 = sub_221BCDC98();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  EntityProperty.wrappedValue.getter(v7);
  return sub_2219A8060;
}

void sub_2219A8060(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    EntityProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    EntityProperty.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t EntityProperty.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EntityProperty.init(identifier:)(a1, a2);
  return v4;
}

uint64_t EntityProperty.init(identifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v2 + *(v5 + 104), 1, 1, *(v6 + 80));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t EntityProperty.__allocating_init(identifier:wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  EntityProperty.init(identifier:wrappedValue:)(a1, a2, a3);
  return v6;
}

uint64_t EntityProperty.init(identifier:wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3();
  v8 = *(v7 + 104);
  __swift_storeEnumTagSinglePayload(v3 + v8, 1, 1, *(v9 + 80));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_beginAccess();
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 40))(v3 + v8, a3);
  swift_endAccess();
  return v3;
}

uint64_t EntityProperty.deinit()
{

  OUTLINED_FUNCTION_1_6();
  v2 = *(v1 + 104);
  sub_221BCDC98();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t EntityProperty.__deallocating_deinit()
{
  EntityProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2219A840C(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_1_6();
  v6 = *(v5 + 80);
  v7 = sub_221BCDC98();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = *(v2 + 24);
  if (v10)
  {
    v11 = *(v2 + 16);
    EntityProperty.wrappedValue.getter(&v12 - v8);

    NamedProperty.init<A>(identifier:value:)(v11, v10, v9, v6, a1, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2219A84DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_6();
  v8 = *(v7 + 80);
  v9 = sub_221BCDC98();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = (*(a3 + 24))(a1, v8, a3, v11);
  if (v14)
  {
    sub_221B8BC18(a1, v8, a3, v13);
    v15 = *(*v4 + 104);
    swift_beginAccess();
    (*(v10 + 40))(v4 + v15, v13, v9);
    swift_endAccess();
  }

  return v14 & 1;
}

uint64_t sub_2219A869C(uint64_t a1)
{
  result = sub_221BCDC98();
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

uint64_t sub_2219A87C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a6@<X8>)
{
  sub_221BCDC98();
  OUTLINED_FUNCTION_0_6();
  (*(v10 + 8))(a3);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_getAssociatedConformanceWitness();
  a6[3] = AssociatedTypeWitness;
  a6[4] = result;
  return result;
}

uint64_t NamedProperty.init<A>(identifier:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_221BCDC98();
  OUTLINED_FUNCTION_1_7();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  (*(v14 + 16))(&v23 - v17, a3, v6, v16);
  if (__swift_getEnumTagSinglePayload(v18, 1, a4) == 1)
  {
    v19 = *(v14 + 8);
    v19(a3, v6);
    result = (v19)(v18, v6);
    v21 = 0;
  }

  else
  {
    v21 = (*(a5 + 16))(a4, a5);
    (*(v14 + 8))(a3, v6);
    OUTLINED_FUNCTION_0_6();
    result = (*(v22 + 8))(v18, a4);
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = v21;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t NamedProperty.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void *NamedProperty.value.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 NamedProperty.intentValueType.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t NamedProperty.IntentValueTypeWrapper.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_2219A8B54(uint64_t a1)
{
  v2 = *v1;
  sub_221BCE308();
  MEMORY[0x223DA4060](v2);
  return sub_221BCE358();
}

uint64_t NamedProperty.init<A, B>(identifier:value:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v28 = a5;
  sub_221BCDC98();
  OUTLINED_FUNCTION_1_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  sub_221BCD618();
  v18 = v29;
  v27 = v30;
  (*(v14 + 16))(v17, a2, v7);
  if (__swift_getEnumTagSinglePayload(v17, 1, a3) == 1)
  {
    v19 = *(v14 + 8);
    v19(a2, v7);
    OUTLINED_FUNCTION_0_6();
    (*(v20 + 8))(a1, a4);
    result = (v19)(v17, v7);
    v22 = 0;
  }

  else
  {
    v22 = (*(v28 + 16))(a3);
    (*(v14 + 8))(a2, v7);
    OUTLINED_FUNCTION_0_6();
    (*(v23 + 8))(a1, a4);
    OUTLINED_FUNCTION_0_6();
    result = (*(v24 + 8))(v17, a3);
  }

  v26 = v27;
  v25 = v28;
  *a7 = v18;
  a7[1] = v26;
  a7[2] = v22;
  a7[3] = a3;
  a7[4] = v25;
  return result;
}

BOOL static NamedProperty.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_221BCE1B8(), result = 0, (v5 & 1) != 0))
  {
    result = (v2 | v3) == 0;
    if (v2)
    {
      if (v3)
      {
        sub_2219A8E5C();
        v7 = v3;
        v8 = v2;
        v9 = sub_221BCDC58();

        return v9 & 1;
      }
    }
  }

  return result;
}

unint64_t sub_2219A8E5C()
{
  result = qword_27CFBB680;
  if (!qword_27CFBB680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBB680);
  }

  return result;
}

void NamedProperty.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_221BCD448();
  if (v2)
  {
    sub_221BCE328();
    v3 = v2;
    sub_221BCDC68();
  }

  else
  {
    sub_221BCE328();
  }
}

void sub_2219A8F38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_221BCE328();
    v3 = a2;
    sub_221BCDC68();
  }

  else
  {
    sub_221BCE328();
  }
}

uint64_t NamedProperty.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (v1)
  {
    v2 = v1;
    sub_221BCDC68();
  }

  return sub_221BCE358();
}

uint64_t sub_2219A9048(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_221BCE308();
  sub_221BCD448();
  sub_2219A8F38(v4, v2);
  return sub_221BCE358();
}

unint64_t sub_2219A90AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7A38;
  if (!qword_27CFB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A38);
  }

  return result;
}

unint64_t sub_2219A9104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7A40;
  if (!qword_27CFB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A40);
  }

  return result;
}

uint64_t sub_2219A9158(char *a1)
{
  v2 = 7104878;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[2];
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v12 = [v5 description];
      v2 = sub_221BCD388();
      v11 = v13;

      goto LABEL_7;
    }

LABEL_6:
    v11 = 0xE300000000000000;
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 valueType];
  v7 = [v6 description];

  v8 = sub_221BCD388();
  v10 = v9;

  MEMORY[0x223DA31F0](v8, v10);
  MEMORY[0x223DA31F0](41, 0xE100000000000000);

  v2 = 0x20656D6F7328;
  v11 = 0xE600000000000000;
LABEL_7:

  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  MEMORY[0x223DA31F0](v2, v11);

  return v4;
}

unint64_t sub_2219A92E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2219A9308(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A9308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7A48;
  if (!qword_27CFB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A48);
  }

  return result;
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

uint64_t sub_2219A9370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2219A93B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NamedProperty.IntentValueTypeWrapper(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NamedProperty.IntentValueTypeWrapper(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static AppEnumRepresentation.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v62 = a4;
  v71 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v8 = v7;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v69 = &v57 - v10;
  OUTLINED_FUNCTION_0_7();
  v61 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BCDC98();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  AssociatedConformanceWitness = &v57 - v20;
  v66 = v18;
  v60 = *(swift_getAssociatedConformanceWitness() + 8);
  v73 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v22 = v21;
  OUTLINED_FUNCTION_1_8();
  v24 = MEMORY[0x28223BE20](v23);
  v72 = &v57 - v25;
  v26 = a1;
  v27 = [a1 valueType];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  v58 = v8;
  v59 = v22;
  v67 = a3;
  v68 = v17;
  v30 = (*(a3 + 48))(a2, a3);
  v32 = v31;
  v33 = [v29 enumerationIdentifier];
  v34 = sub_221BCD388();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {
  }

  else
  {
    v38 = sub_221BCE1B8();

    if ((v38 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v39 = [v26 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v53 = v62;
    v54 = 1;
    return __swift_storeEnumTagSinglePayload(v53, v54, 1, a2);
  }

  v63 = v74;
  v65 = v75;
  sub_221BCDE78();
  sub_221BCD598();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = (v61 + 32);
  v40 = (v58 + 8);
  v41 = (v61 + 8);
  while (1)
  {
    v42 = v68;
    sub_221BCDCB8();
    if (__swift_getEnumTagSinglePayload(v42, 1, a2) == 1)
    {
      (*(v59 + 8))(v72, v73);

      goto LABEL_19;
    }

    v43 = v27;
    v44 = *v66;
    (*v66)(v14, v42, a2);
    v45 = v69;
    v46 = v14;
    sub_221BCD618();
    v47 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v48 = sub_221BCE168();
    v50 = v49;
    (*v40)(v45, v47);
    if (v48 == v63 && v50 == v65)
    {
      break;
    }

    v52 = sub_221BCE1B8();

    if (v52)
    {
      goto LABEL_22;
    }

    v14 = v46;
    (*v41)(v46, a2);
    v27 = v43;
  }

LABEL_22:
  (*(v59 + 8))(v72, v73);

  v56 = v62;
  v44(v62, v46, a2);
  v53 = v56;
  v54 = 0;
  return __swift_storeEnumTagSinglePayload(v53, v54, 1, a2);
}

id static AppEnumRepresentation.lnValueType.getter(uint64_t a1, uint64_t a2)
{
  sub_2219A9B0C();
  v4 = (*(a2 + 48))(a1, a2);
  return sub_2219A9B50(v4, v5);
}

unint64_t sub_2219A9B0C()
{
  result = qword_27CFB7A50;
  if (!qword_27CFB7A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7A50);
  }

  return result;
}

id sub_2219A9B50(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_221BCD358();

  v4 = [v2 initWithEnumerationIdentifier_];

  return v4;
}

id AppEnumRepresentation.lnValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  sub_221BCD618();
  swift_getAssociatedConformanceWitness();
  v10 = sub_221BCE168();
  v12 = v11;
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v16[3] = MEMORY[0x277D837D0];
  v16[0] = v10;
  v16[1] = v12;
  v13 = (*(*(a2 + 16) + 16))(a1);
  v14 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v16, v13);
}

double sub_2219A9D68@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_opt_self();

  v6 = sub_221BCD358();
  v7 = [v5 applicationWithBundleIdentifier_];

  LOBYTE(v6) = [v7 isHidden];
  v8 = [v7 isLocked];

  *a2 = v3;
  *(a2 + 8) = v4;
  result = 0.0;
  *(a2 + 16) = xmmword_221BD04D0;
  *(a2 + 32) = v6;
  *(a2 + 33) = v8;
  return result;
}

unint64_t sub_2219A9E84(void *a1)
{
  sub_221BCDE68();

  v2 = sub_2219C0E8C(a1, 0);
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_2219A9F18()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 description];
    v3 = sub_221BCD388();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  v7 = *v0;

  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  MEMORY[0x223DA31F0](v3, v5);

  return v7;
}

uint64_t sub_2219AA034()
{
  if (*(v0 + 32))
  {
    return 0x726F7272652ELL;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_221BCDE68();

  v12 = 0x737365636375732ELL;
  v13 = 0xE900000000000028;
  v7 = sub_2219C1168(v4, 0, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEC6D0);
  if (v2)
  {
    v11 = 0;
    v8 = sub_221AE7580(&v11, v5 & 1, v2, v3);
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_2219AA1C8()
{
  memcpy(__dst, v0, sizeof(__dst));
  v2 = 0;
  return sub_22199FF90(&v2);
}

id sub_2219AA20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    v3 = sub_2219AA2A4(v0);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v6 = *(v0 + 24);
    *(v0 + 24) = v5 & 1;
    sub_2219AC9E0(v3);
    sub_2219AC9EC(v4, v6);
  }

  else
  {
    v3 = *(v0 + 16);
  }

  sub_2219ACA04(v1, v2);
  return v3;
}

id sub_2219AA2A4(void *a1)
{
  sub_2219AA37C(v15);
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v6 = a1 + 4;
  v5 = a1[4];
  v12[0] = v6[1];
  v12[1] = v2;
  v13 = v3;
  v14 = v4;
  v11[3] = type metadata accessor for CachedLinkMetadataProvider();
  v11[4] = &off_28351DA48;
  v11[0] = v5;

  sub_221998178(v3, v4);

  v7 = sub_2219AA454(v12, v11);
  v8 = v13;
  v9 = v14;

  sub_2219982C4(v8, v9);
  sub_2219ACA1C(v15);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_2219AA37C(uint64_t a1@<X8>)
{
  sub_2219AC930(v1, v8);
  switch(v13)
  {
    case 1:
    case 5:
      v6 = *&v8[24];
      v7 = *&v8[8];
      v5 = v8[40];
      goto LABEL_7;
    case 2:
      v6 = *&v8[24];
      v7 = *&v8[8];
      v5 = v8[40];

      goto LABEL_8;
    case 3:
      v6 = *&v8[32];
      v7 = *&v8[16];
      v5 = v9;
LABEL_7:

      goto LABEL_8;
    case 4:

      v6 = v11;
      v7 = v10;
      v5 = v12;
      sub_2219ACB30(v8);
LABEL_8:
      v4 = v6;
      v3 = v7;
      break;
    default:
      v3 = *v8;
      v4 = *&v8[16];
      v5 = v8[32];
      break;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
}

id sub_2219AA454(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 16);
  sub_2219AC4DC(v10, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [objc_opt_self() policyWithEntityQueryMetadata_];

    v10[0] = 0;
    v2 = [v7 connectionWithError_];

    if (v2)
    {
      v8 = v10[0];
    }

    else
    {
      v2 = v10[0];
      sub_221BCC338();

      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_2219AA560(__int128 *a1, const void *a2)
{
  v3 = v2;
  v11 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  type metadata accessor for CachedLinkMetadataProvider();
  swift_allocObject();
  *(v2 + 32) = sub_221BB6B80();
  *(v2 + 40) = v11;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  sub_221BCE458();
  v7 = v15;
  if (v15)
  {
    v8 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    (*(v8 + 24))(&v12, v7, v8);
    v9 = v13;

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_2219ACBE8(v14);
    v9 = 0;
  }

  *(v3 + 72) = v9;
  memcpy((v3 + 80), a2, 0x82uLL);
  return v3;
}

uint64_t sub_2219AA698(uint64_t a1)
{
  *(v2 + 464) = v1;
  v4 = sub_221BCC558();
  *(v2 + 472) = v4;
  *(v2 + 480) = *(v4 - 8);
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 210) = *a1;
  *(v2 + 496) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2219AA76C, 0, 0);
}

uint64_t sub_2219AA76C()
{
  v58 = v0;
  if (*(*(v0 + 464) + 72))
  {
    if (qword_27CFB73B8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_27CFB73B8);
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEE70);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 464);
      v6 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v6 = 136315651;
      v7 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v7, v8, v57);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2085;
      sub_2219AC930(v5 + 80, v0 + 80);
      LOBYTE(v50) = 0;
      v9 = sub_221A22514(&v50);
      v11 = v10;
      sub_2219AC98C(v0 + 80);
      v12 = sub_2219A6360(v9, v11, v57);

      OUTLINED_FUNCTION_2_5();
      if (v13)
      {
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        v22 = OUTLINED_FUNCTION_3_4();
        sub_221998178(v22, v23);
        v24 = OUTLINED_FUNCTION_3_4();
        v26 = sub_2219988C4(v24, v25);
        MEMORY[0x223DA31F0](v26);

        MEMORY[0x223DA31F0](v50, v51);

        v11 = v54;
        v12 = v55;
      }

      sub_2219A6360(v11, v12, v57);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 24) = v11;
      v27 = "%sPerforming query: %{sensitive}s in %s";
LABEL_16:
      _os_log_impl(&dword_221989000, v3, v4, v27, v6, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  else
  {
    if (qword_27CFB73B8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_27CFB73B8);
    }

    v14 = sub_221BCCD88();
    __swift_project_value_buffer(v14, qword_27CFDEE70);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v15 = *(v0 + 464);
      v6 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v6 = 136315651;
      v16 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v16, v17, v57);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2081;
      sub_2219AC930(v15 + 80, v0 + 216);
      LOBYTE(v50) = 0;
      v18 = sub_221A22514(&v50);
      v20 = v19;
      sub_2219AC98C(v0 + 216);
      v21 = sub_2219A6360(v18, v20, v57);

      OUTLINED_FUNCTION_2_5();
      if (v13)
      {
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        v28 = OUTLINED_FUNCTION_3_4();
        sub_221998178(v28, v29);
        v30 = OUTLINED_FUNCTION_3_4();
        v32 = sub_2219988C4(v30, v31);
        MEMORY[0x223DA31F0](v32);

        MEMORY[0x223DA31F0](v50, v51);

        v20 = v54;
        v21 = v55;
      }

      sub_2219A6360(v20, v21, v57);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 24) = v20;
      v27 = "%sPerforming query: %{private}s in %s";
      goto LABEL_16;
    }
  }

  v34 = *(v0 + 496);
  v33 = *(v0 + 504);
  v35 = *(v0 + 210);
  v36 = *(v0 + 464);
  v38 = v36[6];
  v37 = v36[7];
  v39 = v36[8];
  v40 = v36[4];
  v50 = v36[5];
  v51 = v38;
  v52 = v37;
  v53 = v39;
  *(v0 + 440) = type metadata accessor for CachedLinkMetadataProvider();
  *(v0 + 448) = &off_28351DA48;
  *(v0 + 416) = v40;
  LOBYTE(v54) = v35;
  v55 = v34;
  v56 = v33;

  sub_221998178(v37, v39);

  v41 = sub_2219AB110(&v50, (v0 + 416), &v54);
  *(v0 + 512) = v41;
  v42 = v41;
  v43 = v52;
  v44 = v53;

  sub_2219982C4(v43, v44);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  v45 = sub_2219AA20C();
  *(v0 + 520) = v45;
  if (v46)
  {
    swift_willThrow();

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 456;
    *(v0 + 24) = sub_2219AAD20;
    v49 = swift_continuation_init();
    *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7A58, qword_221BD13F0);
    *(v0 + 352) = MEMORY[0x277D85DD0];
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_2219ABFE8;
    *(v0 + 376) = &block_descriptor_0;
    *(v0 + 384) = v49;
    [v45 performConfigurableQuery:v42 completionHandler:v0 + 352];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2219AAD20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_2219AB084;
  }

  else
  {
    v2 = sub_2219AAE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2219AAE30()
{
  v24 = v0;
  v1 = v0[57];
  if (qword_27CFB73B8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27CFB73B8);
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEE70);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[60];
    v6 = v0[61];
    v8 = v0[59];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = static Instrumentation.currentActivityId.getter();
    v12 = sub_2219A6360(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = [v3 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v14 = sub_221BCE168();
    v16 = v15;
    (*(v7 + 8))(v6, v8);
    v17 = sub_2219A6360(v14, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_221989000, v4, v5, "%sQuery completed with output identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v18 = v0[65];
  v19 = v0[64];
  v20 = [v3 value];

  sub_2219AC8CC(v18);

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_2219AB084()
{
  v1 = v0[65];
  v2 = v0[64];
  swift_willThrow();
  sub_2219AC8CC(v1);

  v3 = v0[1];

  return v3();
}

_OWORD *sub_2219AB110(uint64_t *a1, void *a2, unsigned __int8 *a3)
{
  v141 = a2;
  v6 = sub_221BCDC18();
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v123 - v9;
  MEMORY[0x28223BE20](v10);
  v132 = &v123 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v123 - v13;
  MEMORY[0x28223BE20](v14);
  v130 = &v123 - v15;
  MEMORY[0x28223BE20](v16);
  v129 = &v123 - v17;
  MEMORY[0x28223BE20](v18);
  v135 = &v123 - v19;
  MEMORY[0x28223BE20](v20);
  v128 = &v123 - v21;
  v22 = sub_221BCDC28();
  v23 = *(v22 - 8);
  v138 = v22;
  v139 = v23;
  MEMORY[0x28223BE20](v22);
  v127 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v123 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = (&v123 - v29);
  MEMORY[0x28223BE20](v31);
  v126 = (&v123 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = (&v123 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = (&v123 - v37);
  MEMORY[0x28223BE20](v39);
  v131 = (&v123 - v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v123 - v42;
  v44 = a1[1];
  v142 = *a1;
  v143 = v44;
  v45 = a1[2];
  v46 = a1[3];
  v174 = v45;
  v136 = *a3;
  v47 = *(a3 + 1);
  v48 = *(a3 + 2);
  v137 = v47;
  sub_2219AC930(v3, v150);
  switch(v157)
  {
    case 1:
      v78 = *v150;
      v160[0] = *&v150[8];
      v160[1] = *&v150[24];
      v161 = v150[40];
      v79 = *(*v150 + 16);
      v124 = v48;
      if (v79)
      {
        v144 = MEMORY[0x277D84F90];
        sub_221BCDF28();
        v80 = v78 + 32;
        do
        {
          sub_2219A1B08(v80, v149);
          v81 = v149[3];
          v82 = v149[4];
          __swift_project_boxed_opaque_existential_0(v149, v149[3]);
          sub_22199B82C(v81, v82);
          __swift_destroy_boxed_opaque_existential_0(v149);
          sub_221BCDEF8();
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v80 += 40;
          --v79;
        }

        while (v79);

        v83 = v144;
      }

      else
      {

        v83 = MEMORY[0x277D84F90];
      }

      v74 = v131;
      *v131 = v83;
      v73 = v138;
      v72 = v139;
      (*(v139 + 104))(v74, *MEMORY[0x277D23A18], v138);
      v144 = v142;
      v145 = v143;
      v97 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v97, v46);
      v76 = v160;
      v77 = v135;
      goto LABEL_25;
    case 2:
      v124 = v48;
      v53 = *v150;
      v162[0] = *&v150[8];
      v162[1] = *&v150[24];
      v163 = v150[40];
      *v38 = *v150;
      v62 = v138;
      v61 = v139;
      (*(v139 + 104))(v38, *MEMORY[0x277D23A20], v138);
      v144 = v142;
      v145 = v143;
      v63 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v63, v46);
      v64 = v53;
      v65 = v140;
      sub_2219AC12C(v162, &v144, v149, v129);
      if (v65)
      {
        (*(v61 + 8))(v38, v62);
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v149[0]) = v136;
        v149[1] = v137;
        v149[2] = v124;
        sub_221A213EC();
        v53 = sub_221BCDC38();
      }

      return v53;
    case 3:
      v66 = *&v150[8];
      v164[0] = *&v150[16];
      v164[1] = *&v150[32];
      v165 = v150[48];
      *v35 = *v150;
      v35[1] = v66;
      v68 = v138;
      v67 = v139;
      (*(v139 + 104))(v35, *MEMORY[0x277D23A50], v138);
      v144 = v142;
      v145 = v143;
      v69 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v69, v46);
      v70 = v140;
      sub_2219AC12C(v164, &v144, v149, v130);
      if (!v70)
      {
        goto LABEL_22;
      }

      v71 = *(v67 + 8);
      v53 = (v67 + 8);
      v71(v35, v68);
      return v53;
    case 4:
      v135 = v151;
      v55 = v152;
      v56 = v153;
      v166[0] = v154;
      v166[1] = v155;
      v167 = v156;
      memcpy(v149, v150, 0x41uLL);
      v144 = v142;
      v145 = v143;
      v146 = v174;
      v147 = v46;
      v57 = v46;
      v53 = v166;
      v58 = v140;
      v59 = v141;
      sub_2219AC4DC(&v144, v141);
      if (v58)
      {
        sub_2219ACB30(v149);

        sub_2219ACA1C(v166);
        return v53;
      }

      v140 = v56;
      LODWORD(v133) = v55;
      v94 = v60;
      v95 = sub_221A1F924(v60);
      v96 = 0;
      v101 = v95;
      v132 = v94;
      v102 = v140;
      if (!v140)
      {
        v111 = 0;
        v113 = v138;
        v112 = v139;
        goto LABEL_43;
      }

      v103 = *(v140 + 16);
      if (!v103)
      {

        v111 = MEMORY[0x277D84F90];
        v112 = v139;
LABEL_42:
        v113 = v138;
LABEL_43:
        v114 = v174;
        v115 = v143;
        v116 = v126;
        v117 = v133;
        v118 = v135;
        *v126 = v101;
        v116[1] = v118;
        *(v116 + 16) = v117;
        v116[3] = v111;
        (*(v112 + 104))(v116, *MEMORY[0x277D23A08], v113);
        v148[0] = v142;
        v148[1] = v115;
        v148[2] = v114;
        v148[3] = v57;
        sub_2219A1B08(v59, &v144);

        sub_221998178(v114, v57);
        sub_2219AC12C(v166, v148, &v144, v125);
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v144) = v136;
        v145 = v137;
        v146 = v48;
        sub_221A213EC();
        v53 = sub_221BCDC38();

        sub_2219ACB30(v149);
        return v53;
      }

      v131 = v95;
      v124 = v48;
      v144 = MEMORY[0x277D84F90];
      v134 = v103;
      result = sub_221BCDF28();
      v104 = 0;
      v105 = (v102 + 56);
      while (v104 < *(v102 + 16))
      {
        v53 = *(v105 - 2);
        v106 = *(v105 - 1);
        if (*v105 == 1)
        {
          sub_2219980F0(*(v105 - 2), *(v105 - 1), 1);

          sub_2219ACA1C(v166);

          sub_2219ACB94(v119, v120, v121);
          swift_allocError();
          *v122 = 0xD000000000000010;
          *(v122 + 8) = 0x8000000221BEC690;
          *(v122 + 16) = 5;
          swift_willThrow();

          sub_2219ACB30(v149);
          sub_2219ACB84(v53, v106, 1);

          return v53;
        }

        v107 = v96;
        v108 = *(v105 - 24);
        v109 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        sub_2219980F0(v53, v106, 0);
        result = [v109 initWithInteger_];
        if (!result)
        {
          goto LABEL_46;
        }

        v110 = result;
        ++v104;
        [objc_allocWithZone(MEMORY[0x277D23C58]) initWithOrder:v108 sortParameterIndex:result];

        sub_2219ACB84(v53, v106, 0);
        sub_221BCDEF8();
        sub_221BCDF38();
        sub_221BCDF48();
        result = sub_221BCDF08();
        v105 += 32;
        v96 = v107;
        v102 = v140;
        if (v134 == v104)
        {
          v57 = v46;

          v111 = v144;
          v112 = v139;
          v48 = v124;
          v59 = v141;
          v101 = v131;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    case 5:
      v168[0] = *&v150[8];
      v168[1] = *&v150[24];
      v169 = v150[40];
      *v30 = *v150;
      v85 = v138;
      v84 = v139;
      (*(v139 + 104))(v30, *MEMORY[0x277D23A28], v138);
      v144 = v142;
      v145 = v143;
      v86 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v86, v46);
      v87 = v140;
      sub_2219AC12C(v168, &v144, v149, v132);
      if (!v87)
      {
        goto LABEL_22;
      }

      v88 = *(v84 + 8);
      v53 = (v84 + 8);
      v88(v30, v85);
      return v53;
    case 6:
      v170[0] = *v150;
      v170[1] = *&v150[16];
      v171 = v150[32];
      v90 = v138;
      v89 = v139;
      (*(v139 + 104))(v27, *MEMORY[0x277D23A30], v138);
      v144 = v142;
      v145 = v143;
      v91 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v91, v46);
      v92 = v140;
      sub_2219AC12C(v170, &v144, v149, v133);
      if (v92)
      {
        v93 = *(v89 + 8);
        v53 = (v89 + 8);
        v93(v27, v90);
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v149[0]) = v136;
        v149[1] = v137;
        v149[2] = v48;
        sub_221A213EC();
        return sub_221BCDC38();
      }

      return v53;
    case 7:
      v124 = v48;
      v172[0] = *v150;
      v172[1] = *&v150[16];
      v173 = v150[32];
      v73 = v138;
      v72 = v139;
      v74 = v127;
      (*(v139 + 104))(v127, *MEMORY[0x277D23A30], v138);
      v144 = v142;
      v145 = v143;
      v75 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v75, v46);
      v76 = v172;
      v77 = v134;
LABEL_25:
      v98 = v140;
      sub_2219AC12C(v76, &v144, v149, v77);
      if (v98)
      {
        v99 = *(v72 + 8);
        v53 = (v72 + 8);
        v99(v74, v73);
        return v53;
      }

      sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
      LOBYTE(v149[0]) = v136;
      v149[1] = v137;
      v149[2] = v124;
      sub_221A213EC();
      return sub_221BCDC38();
    default:
      v158[0] = *v150;
      v158[1] = *&v150[16];
      v159 = v150[32];
      v50 = v138;
      v49 = v139;
      (*(v139 + 104))(v43, *MEMORY[0x277D23A10], v138);
      v144 = v142;
      v145 = v143;
      v51 = v174;
      v146 = v174;
      v147 = v46;
      sub_2219A1B08(v141, v149);

      sub_221998178(v51, v46);
      v52 = v140;
      sub_2219AC12C(v158, &v144, v149, v128);
      if (v52)
      {
        v54 = *(v49 + 8);
        v53 = (v49 + 8);
        v54(v43, v50);
      }

      else
      {
LABEL_22:
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v149[0]) = v136;
        v149[1] = v137;
        v149[2] = v48;
        sub_221A213EC();
        return sub_221BCDC38();
      }

      return v53;
  }
}

void *sub_2219ABFE8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_2219B1AB0();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_2219B1AB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2219AC078()
{
  sub_2219AC9EC(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  sub_2219982C4(v1, v2);
  sub_2219AC98C(v0 + 80);
  return v0;
}

uint64_t sub_2219AC0D4()
{
  sub_2219AC078();

  return MEMORY[0x2821FE8D8](v0, 210, 7);
}

uint64_t sub_2219AC12C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_221BCDC18();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v31 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v31 - v14);
  v16 = a2[3];
  v37 = a2[2];
  v40 = v16;
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      v17 = a1[3];
      v32 = a1[2];
      sub_2219A1B08(a3, v38);
      __swift_project_boxed_opaque_existential_0(v38, v39);

      v18 = v36;
      v19 = sub_221BB73F4();
      if (v18)
      {

        sub_2219ACA1C(a1);

        sub_2219982C4(v37, v40);
        v20 = a3;
LABEL_9:
        __swift_destroy_boxed_opaque_existential_0(v20);
        return __swift_destroy_boxed_opaque_existential_0(v38);
      }

      v28 = v19;

      sub_2219982C4(v37, v40);
      __swift_destroy_boxed_opaque_existential_0(a3);
      sub_2219ACA1C(a1);
      v29 = v32;
      v24 = v33;
      *v12 = v28;
      v12[1] = v29;
      v12[2] = v17;
      v23 = v34;
      (*(v24 + 104))(v12, *MEMORY[0x277D23A48], v34);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v15 = v12;
    }

    else
    {
      sub_2219A1B08(a3, v38);
      __swift_project_boxed_opaque_existential_0(v38, v39);
      v25 = v36;
      v26 = sub_221BB7BC0();
      if (v25)
      {
        sub_2219ACA1C(a1);

        sub_2219982C4(v37, v40);
        v20 = a3;
        goto LABEL_9;
      }

      v30 = v26;
      sub_2219ACA1C(a1);

      sub_2219982C4(v37, v40);
      __swift_destroy_boxed_opaque_existential_0(a3);
      *v9 = v30;
      v24 = v33;
      v23 = v34;
      (*(v33 + 104))(v9, *MEMORY[0x277D23A38], v34);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v15 = v9;
    }
  }

  else
  {
    sub_2219A1B08(a3, v38);
    __swift_project_boxed_opaque_existential_0(v38, v39);
    v21 = v36;
    v22 = sub_221BB7510();
    sub_2219ACA1C(a1);

    sub_2219982C4(v37, v40);
    __swift_destroy_boxed_opaque_existential_0(a3);
    if (v21)
    {
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

    *v15 = v22;
    v24 = v33;
    v23 = v34;
    (*(v33 + 104))(v15, *MEMORY[0x277D23A40], v34);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return (*(v24 + 32))(v35, v15, v23);
}

void sub_2219AC4DC(uint64_t *a1, void *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *v2;
  v7 = *(v2 + 8);
  v38 = *(v2 + 16);
  v40 = *(v2 + 24);
  v9 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if (!v9)
  {
    sub_221BB762C(v6, v5, v8, v7);
    return;
  }

  if (v9 != 1)
  {
    sub_221BB7BC0();
    return;
  }

  v10 = sub_221BB73F4();
  if (v3)
  {

    return;
  }

  v35 = v8;
  v36 = v5;
  v37 = v10;
  v11 = [v10 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v12 = sub_221BCD668();

  v13 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      sub_2219ACADC(v21, v22, v23);
      swift_allocError();
      *v24 = v38;
      *(v24 + 8) = v40;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 3;
      swift_willThrow();

      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223DA3BF0](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v17 = sub_2219ACA7C(v15, &selRef_name);
    if (!v18)
    {
      goto LABEL_20;
    }

    if (v17 == v38 && v18 == v40)
    {
      break;
    }

    v20 = sub_221BCE1B8();

    if (v20)
    {
      goto LABEL_24;
    }

LABEL_20:
  }

LABEL_24:

  v25 = sub_2219ACA7C(v16, &selRef_queryIdentifier);
  if (v26)
  {
    v27 = v25;
    v28 = v26;

    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    sub_221BB7948(v6, v36, v27, v28);
  }

  else
  {

    sub_221BCDE68();

    strcpy(v39, "forParameter:");
    HIWORD(v39[1]) = -4864;
    MEMORY[0x223DA31F0](v35, v7);
    MEMORY[0x223DA31F0](46, 0xE100000000000000);
    MEMORY[0x223DA31F0](v38, v40);

    v30 = v39[0];
    v31 = v39[1];
    sub_2219ACADC(v29, v32, v33);
    swift_allocError();
    *v34 = v6;
    *(v34 + 8) = v36;
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;
    *(v34 + 32) = 5;
    swift_willThrow();
  }
}

unint64_t sub_2219AC8D8()
{
  result = qword_27CFB7A60;
  if (!qword_27CFB7A60)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A60);
  }

  return result;
}

void sub_2219AC9EC(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2219AC8CC(a1);
  }
}

id sub_2219ACA04(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2219AC9E0(a1);
  }

  return a1;
}

uint64_t sub_2219ACA7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_221BCD388();

  return v4;
}

unint64_t sub_2219ACADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8310;
  if (!qword_27CFB8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8310);
  }

  return result;
}

uint64_t sub_2219ACB84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2219ACB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB7A78;
  if (!qword_27CFB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A78);
  }

  return result;
}

uint64_t sub_2219ACBE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t OUTLINED_FUNCTION_5_1()
{
}

uint64_t *sub_2219ACD30()
{
  v1 = v0;
  sub_221BCC558();
  sub_2219ACE08();
  sub_221BCD2D8();
  v2 = sub_221BCC898();
  sub_221BB7E98(v2);
  sub_22198B60C(v1[4], v1[5]);
  sub_22198B60C(v1[6], v1[7]);
  return v0;
}

uint64_t sub_2219ACDBC()
{
  sub_2219ACD30();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_2219ACE08()
{
  result = qword_27CFB9420;
  if (!qword_27CFB9420)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9420);
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

uint64_t sub_2219ACE74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219ACEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2219ACF48()
{
  v1 = [v0 style];
  if (v1 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10002u >> (8 * v1);
  }
}

void sub_2219ACF88(void *a1)
{
  v2 = [v1 parameters];
  sub_2219AD138();
  v3 = sub_221BCD668();

  v4 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_19;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DA3BF0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_2219ACA70(v6);
    v10 = v9;
    v11 = [a1 parameterName];
    v12 = sub_221BCD388();
    v14 = v13;

    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {

LABEL_19:

        return;
      }

      v16 = sub_221BCE1B8();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2219AD138()
{
  result = qword_27CFB7A68;
  if (!qword_27CFB7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7A68);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2219AD194(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219AD1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2219AD24C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

    return v5 ^ v8 ^ 1u;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
  {
    return v5 ^ v8 ^ 1u;
  }

  return result;
}

id sub_2219AD2F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B08, &qword_221BD15A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B10, &unk_221BD15B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v10);
  sub_2219AD7E8();
  if (swift_dynamicCast())
  {
    return v30[1];
  }

  v14 = OUTLINED_FUNCTION_0_9();
  v16 = v15(v14);
  v13 = sub_221AE94E8(v16, v17);
  v18 = OUTLINED_FUNCTION_0_9();
  v19(v18);
  v20 = sub_221BCC5B8();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) != 1)
  {
    v21 = sub_221BCC5A8();
    (*(*(v20 - 8) + 8))(v8, v20);
  }

  [v13 setCalendar_];

  v22 = OUTLINED_FUNCTION_0_9();
  v24 = v23(v22);
  [v13 setCurrentLocation_];

  v25 = OUTLINED_FUNCTION_0_9();
  v26(v25);
  v27 = sub_221BCC5D8();
  v28 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) != 1)
  {
    v28 = sub_221BCC5C8();
    (*(*(v27 - 8) + 8))(v5, v27);
  }

  [v13 setTimeZone_];

  return v13;
}

id sub_2219AD690()
{
  v1 = [v0 currentLocation];

  return v1;
}

uint64_t sub_2219AD6EC()
{
  v1 = [v0 localeIdentifier];
  v2 = sub_221BCD388();

  return v2;
}

unint64_t sub_2219AD7E8()
{
  result = qword_27CFB7B18;
  if (!qword_27CFB7B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7B18);
  }

  return result;
}

uint64_t sub_2219AD82C@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

uint64_t sub_2219AD8D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_15_0();
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v17 = a1;
  if (a1)
  {
    a1 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v19 = &protocol witness table for LNImage;
  }

  else
  {
    v19 = 0;
  }

  *a9 = v17;
  a9[1] = 0;
  a9[2] = 0;
  a9[3] = a1;
  a9[4] = v19;
  a9[5] = a2;
  a9[6] = a3;
  a9[7] = a4;
  a9[8] = a5;
  a9[9] = a6;
  Options = type metadata accessor for AppIntentFetchOptionsResult.Item(0, a8, a10, a4);
  v21 = *(*(a8 - 8) + 32);
  v22 = a9 + *(Options + 48);

  return v21(v22, a7, a8);
}

uint64_t static AppIntentFetchOptionsResult.Item.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[9];
  v9 = a1[8] == a2[8] && a1[9] == v8;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  type metadata accessor for AppIntentFetchOptionsResult.Item(0, a3, a4, v8);
  v10 = *(a4 + 16);
  v11 = v10(a3, a4);
  v12 = v10(a3, a4);
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {

      goto LABEL_22;
    }

    sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v14 = sub_221BCDC58();

    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v12)
  {
    goto LABEL_11;
  }

  if (a1[5] != a2[5])
  {
    goto LABEL_22;
  }

  v15 = a1[7];
  v16 = a2[7];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    v17 = a1[6] == a2[6] && v15 == v16;
    if (!v17 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v16)
  {
    goto LABEL_22;
  }

  sub_2219B0DF4(a1, v24, &qword_27CFB7B20, &qword_221BD15C0);
  v20 = v25;
  if (v25)
  {
    v21 = v26;
    __swift_project_boxed_opaque_existential_0(v24, v25);
    v20 = (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    sub_2219B1538(v24, &qword_27CFB7B20, &qword_221BD15C0);
  }

  sub_2219B0DF4(a2, v24, &qword_27CFB7B20, &qword_221BD15C0);
  v22 = v25;
  if (!v25)
  {
    sub_2219B1538(v24, &qword_27CFB7B20, &qword_221BD15C0);
    if (v20)
    {
LABEL_33:

      goto LABEL_22;
    }

LABEL_35:
    v18 = 1;
    return v18 & 1;
  }

  v23 = v26;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v13 = (*(v23 + 8))(v22, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (v20)
  {
    if (v13)
    {
      sub_2219A1D20(0, qword_27CFB7B28, 0x277CD3D10);
      v18 = sub_221BCDC58();

      return v18 & 1;
    }

    goto LABEL_33;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

LABEL_11:

LABEL_22:
  v18 = 0;
  return v18 & 1;
}

uint64_t AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = result;
  if (result)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v14 = &protocol witness table for LNImage;
  }

  else
  {
    v14 = 0;
  }

  *a7 = v12;
  a7[1] = 0;
  a7[2] = 0;
  a7[3] = result;
  a7[4] = v14;
  a7[5] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t AppIntentFetchOptionsResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  Options = type metadata accessor for AppIntentFetchOptionsResult.Item(0, v6, v7, a2);
  v9 = *(Options - 8);
  MEMORY[0x28223BE20](Options);
  v11 = &v20 - v10;
  v12 = *(v3 + 8);
  v14 = type metadata accessor for AppIntentFetchOptionsResult.Section(0, v6, v7, v13);
  if (v12 >= sub_221BCD708())
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    v21 = v9;
    sub_221BCD768();
    v15 = *(v3 + 16);
    if (v15 >= sub_221BCD708())
    {
      *(v3 + 8) = v12 + 1;
      *(v3 + 16) = 0;
      AppIntentFetchOptionsResult.Iterator.next()(a1, v16, a3);
      OUTLINED_FUNCTION_0_6();
      return (*(v19 + 8))(v22, v14);
    }

    else
    {
      sub_221BCD768();
      *(v3 + 16) = v15 + 1;
      OUTLINED_FUNCTION_0_6();
      (*(v17 + 8))(v22, v14);
      (*(*(v6 - 8) + 16))(a3, &v11[*(Options + 48)], v6);
      (*(v21 + 8))(v11, Options);
      return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }
  }
}

uint64_t sub_2219AE1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  a2[1] = 0;
  a2[2] = 0;

  *a2 = v3;
  return result;
}

uint64_t AppIntentFetchOptionsResult.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 32);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  v10 = v5;

  return sub_2219AE1E4(&v7, a1);
}

uint64_t AppIntentFetchOptionsResult.init(dependentParameterIdentifiers:promptLabel:sections:usesIndexedCollation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2219AE2C8@<X0>(void *a1@<X8>)
{
  AppIntentFetchOptionsResult.makeIterator()(a1);
}

uint64_t sub_2219AE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2219AE3A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2219AE3E0(uint64_t result, int a2, int a3)
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

void sub_2219AE444(uint64_t a1)
{
  sub_2219AE8F0(319);
  if (v1 <= 0x3F)
  {
    sub_2219AE954();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2219AE4F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 80) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = (((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((v16 + v7 + 16) & ~v7, v6, v4);
      }

      v17 = *(v16 + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2219AE68C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 80) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v21 = ((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v21 + v10 + 16) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v21 = a2 & 0x7FFFFFFF;
            v21[1] = 0;
          }

          else
          {
            v21[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2219AE8F0(uint64_t a1)
{
  if (!qword_27CFB7C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7C38, qword_221BD1740);
    v1 = sub_221BCDC98();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFB7C30);
    }
  }
}

void sub_2219AE954()
{
  if (!qword_27CFB7C40[0])
  {
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, qword_27CFB7C40);
    }
  }
}

uint64_t sub_2219AE9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219AE9E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_2219AEA28(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_2219AEA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219AEAB8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2219AEAF8(uint64_t result, int a2, int a3)
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

void sub_2219AEB50(void *a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v101 = x8_0;
  v105 = sub_2219B1A48(a1);
  v107 = a1;
  v8 = [a1 promptLabel];
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      v10 = sub_221BCD358();
    }

    else
    {
      v10 = 0;
    }

    v11 = OUTLINED_FUNCTION_25_0();
    v13 = [v11 v12];

    v100 = sub_221BCD388();
    v104 = v14;
  }

  else
  {
    v100 = 0;
    v104 = 0;
  }

  v15 = [v107 sections];
  v16 = sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v17 = OUTLINED_FUNCTION_19_0(v16);

  v18 = sub_2219A69A0();
  if (v18)
  {
    v19 = v18;
    v126 = MEMORY[0x277D84F90];
    v20 = OUTLINED_FUNCTION_14_0();
    sub_2219A3054(v20, v21, v22);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v108 = v17;
      v109 = v17 & 0xC000000000000001;
      v24 = v126;
      v97 = v17 + 32;
      v99 = v17 & 0xFFFFFFFFFFFFFF8;
      v117 = a3;
      v103 = v19;
      while (!__OFADD__(v23, 1))
      {
        v110 = v23 + 1;
        v111 = v24;
        if (v109)
        {
          v25 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v27)
          {
            goto LABEL_60;
          }

          v25 = *(v97 + 8 * v26);
        }

        v28 = v25;
        v112 = [v25 image];
        v29 = [v28 options];
        v30 = sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v31 = OUTLINED_FUNCTION_19_0(v30);

        if (v31 >> 62)
        {
          v32 = sub_221BCDDA8();
          if (v32)
          {
LABEL_17:
            v125 = MEMORY[0x277D84F90];
            v33 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v33, v34, v35);
            if (v32 < 0)
            {
              goto LABEL_59;
            }

            v106 = v28;
            v36 = 0;
            v37 = v125;
            v116 = v31 & 0xC000000000000001;
            v113 = v31 & 0xFFFFFFFFFFFFFF8;
            v115 = v31;
            while (!__OFADD__(v36, 1))
            {
              v124 = v37;
              if (v116)
              {
                v38 = MEMORY[0x223DA3BF0](v36, v31);
              }

              else
              {
                if (v36 >= *(v113 + 16))
                {
                  goto LABEL_57;
                }

                v38 = *(v31 + 8 * v36 + 32);
              }

              v39 = v38;
              v40 = [v38 value];
              if (!v40)
              {

                sub_2219A1218(v85, v86, v87);
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v88, 10);
                swift_willThrow();

                return;
              }

              v41 = v40;
              v42 = swift_allocObject();
              *(v42 + 16) = a4;
              *(v42 + 24) = a5;

              sub_221BB8ED4(v41, sub_2219B1AA0, v42);
              v122 = v43;

              v44 = [v39 image];
              v45 = [v39 indentationLevel];
              v46 = [v39 subtitle];
              v123 = v36 + 1;
              if (v46)
              {
                v47 = v46;
                if (a3)
                {
                  v48 = sub_221BCD358();
                }

                else
                {
                  v48 = 0;
                }

                v49 = [v47 localizedStringForLocaleIdentifier_];

                v50 = sub_221BCD388();
                v119 = v51;
                v120 = v50;
              }

              else
              {
                v119 = 0;
                v120 = 0;
              }

              v52 = [v39 title];
              v121 = v45;
              if (a3)
              {
                a3 = sub_221BCD358();
              }

              v53 = v32;
              v54 = [v52 localizedStringForLocaleIdentifier_];

              v55 = sub_221BCD388();
              v57 = v56;

              v58 = v44;
              if (v44)
              {
                v59 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v60 = &protocol witness table for LNImage;
              }

              else
              {
                v59 = 0;
                v60 = 0;
              }

              v37 = v124;
              v62 = v124[2];
              v61 = v124[3];
              if (v62 >= v61 >> 1)
              {
                v64 = OUTLINED_FUNCTION_24_0(v61);
                sub_2219A3074(v64, v62 + 1, 1);
                v58 = v124;
                v37 = v124;
              }

              v37[2] = v62 + 1;
              v63 = &v37[11 * v62];
              v63[4] = v58;
              v63[5] = 0;
              v63[6] = 0;
              v63[7] = v59;
              v63[8] = v60;
              v63[9] = v121;
              v63[10] = v120;
              v63[11] = v119;
              v63[12] = v55;
              v63[13] = v57;
              v63[14] = v122;
              ++v36;
              v32 = v53;
              a3 = v117;
              v31 = v115;
              if (v123 == v53)
              {

                v28 = v106;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            break;
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_17;
          }
        }

LABEL_42:
        v65 = [v28 subtitle];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 localizedKey];

          sub_221BCD388();
        }

        v68 = [v28 title];
        if (v68)
        {
          v69 = v68;
          v70 = [v68 localizedKey];

          sub_221BCD388();
        }

        if (v112)
        {
          v71 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
        }

        else
        {
          v71 = 0;
        }

        v72 = v111;
        v74 = *(v111 + 16);
        v73 = *(v111 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_2219A3054((v73 > 1), v74 + 1, 1);
          v72 = v111;
        }

        *(v72 + 16) = v74 + 1;
        OUTLINED_FUNCTION_17_0();
        v75[6] = 0;
        v75[7] = v71;
        OUTLINED_FUNCTION_23_0(v75);
        v23 = OUTLINED_FUNCTION_22_0(v76, v77, v78, v79, v80, v81, v82, v83, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        a3 = v117;
        if (v84)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    [v107 usesIndexedCollation];

    OUTLINED_FUNCTION_13(v89, v90, v91, v92, v93, v94, v95, v96, v97, v99, v100, v101, v102, v103, v104, v105);
  }
}

void sub_2219AF2D0(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v109 = x8_0;
  v113 = sub_2219B1A48(a1);
  v115 = a1;
  v9 = [a1 promptLabel];
  if (v9)
  {
    v10 = v9;
    if (a3)
    {
      v11 = sub_221BCD358();
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_25_0();
    v14 = [v12 v13];

    v108 = sub_221BCD388();
    v112 = v15;
  }

  else
  {
    v108 = 0;
    v112 = 0;
  }

  v16 = [v115 sections];
  v17 = sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v18 = OUTLINED_FUNCTION_19_0(v17);

  v19 = sub_2219A69A0();
  if (v19)
  {
    v20 = v19;
    v138 = MEMORY[0x277D84F90];
    v21 = OUTLINED_FUNCTION_14_0();
    sub_2219A3054(v21, v22, v23);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v116 = v18;
      v117 = v18 & 0xC000000000000001;
      v25 = v138;
      v105 = v18 + 32;
      v107 = v18 & 0xFFFFFFFFFFFFFF8;
      v126 = a3;
      v111 = v20;
      while (!__OFADD__(v24, 1))
      {
        v118 = v24 + 1;
        v119 = v25;
        if (v117)
        {
          v26 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v28)
          {
            goto LABEL_64;
          }

          v26 = *(v105 + 8 * v27);
        }

        v29 = v26;
        v120 = [v26 image];
        v30 = [v29 options];
        v31 = sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v32 = OUTLINED_FUNCTION_19_0(v31);

        if (v32 >> 62)
        {
          v33 = sub_221BCDDA8();
          if (v33)
          {
LABEL_17:
            v136 = MEMORY[0x277D84F90];
            v34 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v34, v35, v36);
            if (v33 < 0)
            {
              goto LABEL_63;
            }

            v114 = v29;
            v37 = 0;
            v38 = v136;
            v125 = v32 & 0xC000000000000001;
            v121 = v32 & 0xFFFFFFFFFFFFFF8;
            v123 = v33;
            v124 = v32;
            while (!__OFADD__(v37, 1))
            {
              if (v125)
              {
                v39 = v38;
                v40 = MEMORY[0x223DA3BF0](v37, v32);
              }

              else
              {
                if (v37 >= *(v121 + 16))
                {
                  goto LABEL_61;
                }

                v39 = v38;
                v40 = *(v32 + 8 * v37 + 32);
              }

              v41 = v40;
              v42 = [v40 value];
              sub_221A07948(v139);
              v141 = v140;
              if (!v42)
              {

                sub_2219A1218(v93, v94, v95);
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v96, 10);
                swift_willThrow();

                return;
              }

              v130 = v139[1];
              v132 = v139[0];
              v43 = swift_allocObject();
              *(v43 + 16) = v132;
              *(v43 + 32) = v130;
              *(v43 + 48) = v141;
              *(v43 + 49) = *v142;
              *(v43 + 52) = *&v142[3];
              *(v43 + 56) = a5;
              *(v43 + 64) = a6;

              v44 = OUTLINED_FUNCTION_25_0();
              sub_221BB8ED4(v44, v45, v46);
              v133 = v47;

              v48 = [v41 image];
              v131 = [v41 indentationLevel];
              v49 = [v41 subtitle];
              v134 = v37 + 1;
              if (v49)
              {
                v50 = v49;
                if (a3)
                {
                  v51 = sub_221BCD358();
                }

                else
                {
                  v51 = 0;
                }

                v52 = [v50 localizedStringForLocaleIdentifier_];

                v53 = sub_221BCD388();
                v128 = v54;
                v129 = v53;
              }

              else
              {
                v128 = 0;
                v129 = 0;
              }

              v55 = [v41 title];
              if (a3)
              {
                v56 = sub_221BCD358();
              }

              else
              {
                v56 = 0;
              }

              v57 = [v55 localizedStringForLocaleIdentifier_];

              v58 = sub_221BCD388();
              v60 = v59;

              if (v48)
              {
                v61 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v62 = &protocol witness table for LNImage;
              }

              else
              {
                v61 = 0;
                v62 = 0;
              }

              v38 = v39;
              v137 = v39;
              v63 = *(v39 + 16);
              v64 = *(v38 + 24);
              if (v63 >= v64 >> 1)
              {
                sub_2219A3074((v64 > 1), v63 + 1, 1);
                v38 = v137;
              }

              *(v38 + 16) = v63 + 1;
              v65 = (v38 + 88 * v63);
              v65[4] = v48;
              v65[5] = 0;
              v65[6] = 0;
              v65[7] = v61;
              v65[8] = v62;
              v65[9] = v131;
              v65[10] = v129;
              v65[11] = v128;
              v65[12] = v58;
              v65[13] = v60;
              v65[14] = v133;
              ++v37;
              v32 = v124;
              a3 = v126;
              if (v134 == v123)
              {
                v135 = v38;

                v29 = v114;
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
            break;
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_17;
          }
        }

        v135 = MEMORY[0x277D84F90];
LABEL_43:
        v66 = v29;
        v67 = [v29 subtitle];
        v68 = v67;
        if (v67)
        {
          v69 = [v67 localizedKey];

          v68 = sub_221BCD388();
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = [v29 title];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 localizedKey];

          v75 = sub_221BCD388();
          v77 = v76;
        }

        else
        {
          v75 = 0;
          v77 = 0;
        }

        if (v120)
        {
          v78 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
          v79 = &protocol witness table for LNImage;
        }

        else
        {
          v79 = 0;
          v78 = 0;
        }

        v80 = v119;
        v82 = *(v119 + 16);
        v81 = *(v119 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_2219A3054((v81 > 1), v82 + 1, 1);
          v80 = v119;
        }

        *(v80 + 16) = v82 + 1;
        OUTLINED_FUNCTION_17_0();
        v83[6] = 0;
        v83[7] = v78;
        v83[8] = v79;
        v83[9] = v135;
        v83[10] = v68;
        v83[11] = v71;
        v83[12] = v75;
        v83[13] = v77;
        v24 = OUTLINED_FUNCTION_22_0(v84, v85, v86, v87, v88, v89, v90, v91, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
        a3 = v126;
        if (v92)
        {

          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_59:
    [v115 usesIndexedCollation];

    OUTLINED_FUNCTION_13(v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, v113);
  }
}

void sub_2219AFAA8(void *a1@<X0>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v83 = sub_2219B1A48(a1);
  v84 = a1;
  v7 = [a1 promptLabel];
  if (v7)
  {
    v8 = v7;
    if (a3)
    {
      v9 = sub_221BCD358();
    }

    else
    {
      v9 = 0;
    }

    v10 = OUTLINED_FUNCTION_25_0();
    v12 = [v10 v11];

    v80 = sub_221BCD388();
    v82 = v13;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v14 = [v84 sections];
  v15 = sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v16 = OUTLINED_FUNCTION_19_0(v15);

  if (sub_2219A69A0())
  {
    v103 = MEMORY[0x277D84F90];
    v17 = OUTLINED_FUNCTION_14_0();
    v86 = v18;
    sub_2219A3054(v17, v19, v20);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v85 = v16 & 0xC000000000000001;
      v22 = v103;
      v78 = v16 + 32;
      v79 = v16 & 0xFFFFFFFFFFFFFF8;
      v96 = a3;
      while (!__OFADD__(v21, 1))
      {
        v87 = v21 + 1;
        v88 = v22;
        if (v85)
        {
          v23 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v25)
          {
            goto LABEL_60;
          }

          v23 = *(v78 + 8 * v24);
        }

        v26 = v23;
        v89 = [v23 image];
        v90 = v26;
        v27 = [v26 options];
        v28 = sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v29 = OUTLINED_FUNCTION_19_0(v28);

        if (v29 >> 62)
        {
          v30 = sub_221BCDDA8();
          if (v30)
          {
LABEL_17:
            v102 = MEMORY[0x277D84F90];
            v31 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v31, v32, v33);
            if (v30 < 0)
            {
              goto LABEL_59;
            }

            v34 = 0;
            v35 = v102;
            v95 = v29 & 0xC000000000000001;
            v91 = v29 & 0xFFFFFFFFFFFFFF8;
            v92 = v30;
            v93 = v29;
            while (!__OFADD__(v34, 1))
            {
              v101 = v35;
              if (v95)
              {
                v36 = MEMORY[0x223DA3BF0](v34, v29);
              }

              else
              {
                if (v34 >= *(v91 + 16))
                {
                  goto LABEL_57;
                }

                v36 = *(v29 + 8 * v34 + 32);
              }

              v37 = v36;
              v38 = [v36 value];
              v39 = a4();

              if (!v39)
              {

                sub_2219A1218(v72, v73, v74);
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v75, 10);
                swift_willThrow();

                return;
              }

              v40 = [v37 image];
              v41 = [v37 indentationLevel];
              v42 = [v37 subtitle];
              v99 = v41;
              if (v42)
              {
                v43 = v42;
                if (a3)
                {
                  v44 = sub_221BCD358();
                }

                else
                {
                  v44 = 0;
                }

                v45 = [v43 localizedStringForLocaleIdentifier_];

                v46 = sub_221BCD388();
                v97 = v47;
                v98 = v46;
              }

              else
              {
                v97 = 0;
                v98 = 0;
              }

              v48 = [v37 title];
              v100 = v34 + 1;
              if (a3)
              {
                v49 = sub_221BCD358();
              }

              else
              {
                v49 = 0;
              }

              v50 = [v48 localizedStringForLocaleIdentifier_];

              v51 = sub_221BCD388();
              v53 = v52;

              v54 = v40;
              if (v40)
              {
                v55 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v56 = &protocol witness table for LNImage;
              }

              else
              {
                v55 = 0;
                v56 = 0;
              }

              v35 = v101;
              v58 = v101[2];
              v57 = v101[3];
              if (v58 >= v57 >> 1)
              {
                v60 = OUTLINED_FUNCTION_24_0(v57);
                sub_2219A3074(v60, v58 + 1, 1);
                v54 = v101;
                v35 = v101;
              }

              v35[2] = v58 + 1;
              v59 = &v35[11 * v58];
              v59[4] = v54;
              v59[5] = 0;
              v59[6] = 0;
              v59[7] = v55;
              v59[8] = v56;
              v59[9] = v99;
              v59[10] = v98;
              a3 = v96;
              v59[11] = v97;
              v59[12] = v51;
              v59[13] = v53;
              v59[14] = v39;
              ++v34;
              v29 = v93;
              if (v100 == v92)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            break;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_17;
          }
        }

LABEL_42:

        v61 = [v90 subtitle];
        v62 = v61;
        if (v61)
        {
          v63 = [v61 localizedKey];

          sub_221BCD388();
        }

        v64 = [v90 title];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 localizedKey];

          sub_221BCD388();
        }

        if (v89)
        {
          v67 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
        }

        else
        {
          v67 = 0;
        }

        v68 = v88;
        v70 = *(v88 + 16);
        v69 = *(v88 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_2219A3054((v69 > 1), v70 + 1, 1);
          v68 = v88;
        }

        *(v68 + 16) = v70 + 1;
        OUTLINED_FUNCTION_17_0();
        v71[6] = 0;
        v71[7] = v67;
        OUTLINED_FUNCTION_23_0(v71);
        v21 = v87;
        a3 = v96;
        if (v87 == v86)
        {
          v77 = v22;

          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
LABEL_55:
    v76 = [v84 usesIndexedCollation];
    *a5 = v83;
    *(a5 + 8) = v80;
    *(a5 + 16) = v82;
    *(a5 + 24) = v77;
    *(a5 + 32) = v76;
  }
}

uint64_t sub_2219B01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 208) = a4;
  *(v6 + 216) = a5;
  *(v6 + 192) = a2;
  *(v6 + 200) = a3;
  *(v6 + 184) = a1;
  *(v6 + 224) = *v5;
  v7 = *(v5 + 24);
  *(v6 + 240) = *(v5 + 16);
  *(v6 + 248) = v7;
  *(v6 + 296) = *(v5 + 32);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219B0218()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 248);
  *(v0 + 256) = type metadata accessor for AppIntentFetchOptionsResult.Section(0, *(v0 + 208), *(v0 + 216), v2);
  result = sub_221BCD258();
  *(v0 + 176) = result;
  v4 = *(v1 + 16);
  *(v0 + 264) = v4;
  *(v0 + 272) = 0;
  if (v4)
  {
    v5 = *(v0 + 248);
    if (*(v5 + 16))
    {
      sub_2219B0DF4(v5 + 32, v0 + 16, &qword_27CFB7808, &qword_221BD1840);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 280) = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_2_6(v6);

      return sub_2219B05B0();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(v0 + 296);
    v9 = *(v0 + 240);
    v10 = *(v0 + 184);
    *v10 = *(v0 + 224);
    *(v10 + 16) = v9;
    *(v10 + 24) = result;
    OUTLINED_FUNCTION_18(v8);

    return v11();
  }

  return result;
}

uint64_t sub_2219B0338()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 288) = v0;

  sub_2219B1538(v3 + 16, &qword_27CFB7808, &qword_221BD1840);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219B045C()
{
  OUTLINED_FUNCTION_8_0();
  sub_221BCD748();
  result = sub_221BCD718();
  v2 = *(v0 + 264);
  v3 = *(v0 + 272) + 1;
  *(v0 + 272) = v3;
  if (v3 == v2)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 240);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    *v6 = *(v0 + 224);
    *(v6 + 16) = v5;
    *(v6 + 24) = v7;
    OUTLINED_FUNCTION_18(v4);

    return v11();
  }

  else
  {
    v8 = *(v0 + 248);
    if (v3 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2219B0DF4(v8 + 80 * v3 + 32, v0 + 16, &qword_27CFB7808, &qword_221BD1840);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 280) = v9;
      *v9 = v10;
      OUTLINED_FUNCTION_2_6(v9);

      return sub_2219B05B0();
    }
  }

  return result;
}

uint64_t sub_2219B05B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v1[26] = type metadata accessor for AppIntentFetchOptionsResult.Item(0, v4, v2, v4);
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219B064C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1[25];
  result = sub_221BCD258();
  v1[18] = result;
  v4 = *(v2 + 40);
  v1[28] = v4;
  v5 = *(v4 + 16);
  v1[29] = v5;
  v1[30] = 0;
  if (v5)
  {
    if (*(v4 + 16))
    {
      sub_2219B0DF4(v4 + 32, (v1 + 2), &unk_27CFBB710, &qword_221BD1850);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      v1[31] = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_3_5(v6);

      return sub_2219B0E54();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  sub_2219B0DF4(v1[25], (v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
  if (v1[16])
  {
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    if (swift_dynamicCast())
    {
      v1[33] = v1[19];
      v8 = swift_task_alloc();
      v1[34] = v8;
      *v8 = v1;
      OUTLINED_FUNCTION_5_2(v8);

      return sub_2219B1594();
    }
  }

  else
  {
    sub_2219B1538((v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
  }

  OUTLINED_FUNCTION_1_10();
  AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(0, v9, v10, v0, v11, (v1 + 18), v12);

  OUTLINED_FUNCTION_4_3();

  return v13();
}

uint64_t sub_2219B0850()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 256) = v0;

  sub_2219B1538(v3 + 16, &unk_27CFBB710, &qword_221BD1850);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219B0974()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1[27];
  sub_221BCD748();
  result = sub_221BCD718();
  v4 = v1[29];
  v5 = v1[30] + 1;
  v1[30] = v5;
  if (v5 == v4)
  {
    sub_2219B0DF4(v1[25], (v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
    if (v1[16])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
      sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
      if (swift_dynamicCast())
      {
        v1[33] = v1[19];
        v6 = swift_task_alloc();
        v1[34] = v6;
        *v6 = v1;
        OUTLINED_FUNCTION_5_2(v6);

        return sub_2219B1594();
      }
    }

    else
    {
      sub_2219B1538((v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
    }

    OUTLINED_FUNCTION_1_10();
    AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(0, v10, v11, v2, v12, v0, v13);

    OUTLINED_FUNCTION_4_3();

    return v14();
  }

  else
  {
    v7 = v1[28];
    if (v5 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2219B0DF4(v7 + 88 * v5 + 32, (v1 + 2), &unk_27CFBB710, &qword_221BD1850);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      v1[31] = v8;
      *v8 = v9;
      OUTLINED_FUNCTION_3_5(v8);

      return sub_2219B0E54();
    }
  }

  return result;
}

uint64_t sub_2219B0B90()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (v0)
  {
    v9 = *(v5 + 264);
  }

  else
  {

    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219B0CB8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_10();
  AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(v2, v3, v4, v0, v5, v1, v6);

  OUTLINED_FUNCTION_4_3();

  return v7();
}

uint64_t sub_2219B0D3C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219B0D98()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219B0DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_6();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_2219B0E54()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v2;
  v1[8] = v6;
  v7 = sub_221BCDC98();
  v1[13] = v7;
  v1[14] = *(v7 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2219B0F78()
{
  v1 = v0[15];
  v2 = v0[10];
  (*(v0[11] + 32))(*(v0[12] + 80), v0[9], v2);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2219A1218(v3, v4, v5);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_0_10(v6, 10);
    swift_willThrow();

    OUTLINED_FUNCTION_25();
    goto LABEL_10;
  }

  v7 = v0[12];
  (*(v0[16] + 32))(v0[18], v0[15], v0[10]);
  sub_2219B0DF4(v7, (v0 + 2), &qword_27CFB7B20, &qword_221BD15C0);
  if (!v0[5])
  {
    sub_2219B1538((v0 + 2), &qword_27CFB7B20, &qword_221BD15C0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
  sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[8];
    v27 = v14[5];
    v26 = v14[6];
    v18 = v14[7];
    v19 = v14[8];
    v20 = v14[9];
    v21 = OUTLINED_FUNCTION_0_0();
    v22(v21);
    AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)(0, v27, v26, v18, v19, v20, v11, v16, v17, v15);
    v23 = *(v13 + 8);

    v23(v12, v16);

    OUTLINED_FUNCTION_4_3();
LABEL_10:
    OUTLINED_FUNCTION_28_0();

    __asm { BRAA            X1, X16 }
  }

  v0[19] = v0[7];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_2219B124C;
  OUTLINED_FUNCTION_28_0();

  return sub_2219B1594();
}

uint64_t sub_2219B124C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 168) = v1;

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2219B1384()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v16 = v0[22];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v14 = v4[8];
  v15 = v0[11];
  v10 = v4[9];
  (*(v3 + 16))(v2, v1, v5);
  AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)(v16, v7, v8, v9, v14, v10, v2, v5, v6, v15);
  v11 = *(v3 + 8);

  v11(v1, v5);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2219B14A4()
{
  OUTLINED_FUNCTION_8_0();
  (*(v0[16] + 8))(v0[18], v0[10]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219B1538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2219B15A8()
{
  v1 = [*(v0 + 152) inImage];
  *(v0 + 160) = v1;
  if ([v1 _requiresRetrieval])
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2219B1748;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D48, &qword_221BD1868);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2219B19B8;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v2;
    [v1 _retrieveImageDataWithReply_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v3 = *(v0 + 152);

    v4 = *(v0 + 152);
    OUTLINED_FUNCTION_25();
    v8 = v5;
    v6 = v3;

    return v8(v4);
  }
}

uint64_t sub_2219B1748()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219B1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = v3[20];
  if (v4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D23860]) initWithINImage_];

    v7 = v3[1];

    return v7(v6);
  }

  else
  {
    sub_2219A1218(a1, a2, a3);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_0_10(v9, 7);
    swift_willThrow();

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_2219B1950()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219B19B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2219AD8D4(v5, a3);
  }

  v7 = a2;
  return sub_2219AD940(v5, a2);
}

uint64_t sub_2219B1A48(void *a1)
{
  v1 = [a1 dependentParameterIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD668();

  return v3;
}

void OUTLINED_FUNCTION_0_10(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
}

void OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a12 = a16;
  *(a12 + 8) = a11;
  *(a12 + 16) = a15;
  *(a12 + 24) = v17;
  *(a12 + 32) = v16;
}

void OUTLINED_FUNCTION_17_0()
{
  v3 = v0 + 80 * v2;
  *(v3 + 32) = v1;
  *(v3 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_18@<X0>(char a1@<W8>)
{
  *(v2 + 32) = a1;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return sub_221BCD668();
}

void OUTLINED_FUNCTION_23_0(void *a1@<X8>)
{
  v7 = *(v6 - 104);
  a1[8] = v5;
  a1[9] = v7;
  a1[10] = v1;
  a1[11] = v2;
  a1[12] = v3;
  a1[13] = v4;
}

BOOL OUTLINED_FUNCTION_24_0@<W0>(unint64_t a1@<X8>)
{
  result = a1 > 1;
  *(v2 - 104) = v1;
  return result;
}

Swift::Bool __swiftcall AppIntentPerformOptions.donateToTranscript(defaultValue:)(Swift::Bool defaultValue)
{
  v2 = *(v1 + 32);
  if (v2 == 2)
  {
    LOBYTE(v2) = defaultValue;
  }

  return v2 & 1;
}

uint64_t AppIntentPerformOptions.exportedContentTypeIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AppIntentPerformOptions.preferredBundleIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, char a26, const void *a27)
{
  OUTLINED_FUNCTION_4_4();
  v63 = v27;
  v62 = v28;
  v30 = v29;
  v61 = v31;
  v33 = v32;
  v60 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v59 = a24;
  v58 = a23;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v57 - v45;
  memcpy(v66, a27, sizeof(v66));
  v65 = v33 & 1;
  sub_2219B1FB0(v30, v46);
  v47 = sub_221BCCC98();
  v48 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v48, v49, v47) == 1)
  {
    sub_2219B2020(v30);
    sub_2219B2020(v46);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v50 = sub_221BCCC88();
    v51 = v52;
    sub_2219B2020(v30);
    OUTLINED_FUNCTION_0_6();
    (*(v53 + 8))(v46, v47);
  }

  memcpy(&v64[6], v66, 0x64uLL);
  v54 = v65;
  *v42 = v40 & 1;
  *(v42 + 1) = v36 & 1;
  *(v42 + 8) = v60;
  *(v42 + 16) = v54;
  *(v42 + 24) = v38;
  *(v42 + 32) = v61;
  *(v42 + 40) = v50;
  *(v42 + 48) = v51;
  v55 = v63;
  *(v42 + 56) = v62;
  *(v42 + 64) = v55;
  v56 = v59;
  *(v42 + 72) = v58;
  *(v42 + 80) = v56;
  *(v42 + 88) = a25 & 1;
  *(v42 + 89) = a26 & 1;
  memcpy((v42 + 90), v64, 0x6AuLL);
  OUTLINED_FUNCTION_5_3();
}