uint64_t sub_1E1079CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1079D60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E10ADBBC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v9 = (v7 + *(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E0FE5FDC;

  return sub_1E1076AC0(a1, v10, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E1079EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E0FE6540;

  return sub_1E1074990(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E1079FD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E107A024(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E10ADCFC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

BOOL sub_1E107A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1E10AE5DC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1E107A1D4(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E107A230()
{
  result = qword_1ECE89458;
  if (!qword_1ECE89458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89460, &qword_1E10B9540);
    sub_1E107A364(&qword_1ECE89468, type metadata accessor for PartialEventResource, &unk_1E10B69A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89458);
  }

  return result;
}

_BYTE *sub_1E107A2E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1E107A364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_12ShazamEvents26PartialEventNetworkHandlerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
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

uint64_t sub_1E107A3DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E107A424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1E107A46C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1E107A498(char a1)
{
  swift_defaultActor_initialize();
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v4 = v3;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (a1 != 2)
  {
    [v3 setUsesClassicLoadingMode_];
LABEL_5:
    v7 = [objc_opt_self() sessionWithConfiguration_];
    v10 = &type metadata for DefaultNetworkSession;
    v11 = &off_1F5BF3208;

    *&v9 = v7;
    goto LABEL_6;
  }

  v5 = type metadata accessor for AMSNetworkSession();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E698CBA8]) initWithConfiguration_];
  v10 = v5;
  v11 = &off_1F5BF3168;

  *&v9 = v6;
LABEL_6:
  sub_1E100C5C4(&v9, v1 + 112);
  return v1;
}

uint64_t sub_1E107A5C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E107A5E4, v1, 0);
}

uint64_t sub_1E107A5E4()
{
  v1 = v0[3];
  v2 = sub_1E10AE2DC();
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  if (v2)
  {
    (*(v4 + 32))(v3, v4);
    sub_1E10AE26C();
    sub_1E107AA1C();
    swift_allocError();
    sub_1E10ADFBC();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v9 = (*(v4 + 24) + **(v4 + 24));
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_1E107A7B4;
    v8 = v0[2];

    return v9(v8, v3, v4);
  }
}

uint64_t sub_1E107A7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = v3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v5[3];

    return MEMORY[0x1EEE6DFA0](sub_1E107A900, v9, 0);
  }
}

uint64_t sub_1E107A900()
{
  v1 = v0[8];
  sub_1E10AE2EC();
  if (v1)
  {
    v2 = v0[7];
    sub_1E0FFDAC0(v0[5], v0[6]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[1];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];

    return v5(v8, v6, v7);
  }
}

uint64_t sub_1E107A9C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1E107AA1C()
{
  result = qword_1ECE8AFF0;
  if (!qword_1ECE8AFF0)
  {
    sub_1E10AE26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFF0);
  }

  return result;
}

uint64_t type metadata accessor for AccessTokenResource(uint64_t a1)
{
  result = qword_1EE17F520;
  if (!qword_1EE17F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E107AAE8(uint64_t a1)
{
  result = sub_1E10ADCBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E107AB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E107AC04(uint64_t a1)
{
  v2 = sub_1E107B428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107AC40(uint64_t a1)
{
  v2 = sub_1E107B428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E107AC7C()
{
  if (*v0)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x654B737365636361;
  }
}

uint64_t sub_1E107ACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B737365636361 && a2 == 0xE900000000000079;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00656D69546E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E107ADB4(uint64_t a1)
{
  v2 = sub_1E107B47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107ADF0(uint64_t a1)
{
  v2 = sub_1E107B47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E107AE2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFF8, &qword_1E10B96E8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v28 = v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B000, &qword_1E10B96F0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v22 - v10;
  v12 = type metadata accessor for AccessTokenResource(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107B428();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22[1] = v12;
  v23 = a1;
  v18 = v26;
  v17 = v27;
  sub_1E107B47C();
  sub_1E10AE76C();
  v30 = 0;
  *v16 = sub_1E10AE7BC();
  v16[1] = v19;
  v29 = 1;
  sub_1E10AE7DC();
  v20 = v25;
  sub_1E10ADC5C();
  (*(v20 + 8))(v28, v17);
  (*(v18 + 8))(v11, v7);
  sub_1E0FF3CC8(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1E0FFDB78(v16);
}

uint64_t sub_1E107B1B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B008, &qword_1E10B96F8);
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B010, &qword_1E10B9700);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107B428();
  sub_1E10AEA5C();
  sub_1E107B47C();
  sub_1E10AE82C();
  v18 = 0;
  v13 = v15;
  sub_1E10AE86C();
  if (!v13)
  {
    type metadata accessor for AccessTokenResource(0);
    sub_1E10ADC6C();
    v17 = 1;
    sub_1E10AE88C();
  }

  (*(v16 + 8))(v6, v2);
  return (*(v8 + 8))(v12, v7);
}

unint64_t sub_1E107B428()
{
  result = qword_1EE17F568[0];
  if (!qword_1EE17F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F568);
  }

  return result;
}

unint64_t sub_1E107B47C()
{
  result = qword_1EE17F550;
  if (!qword_1EE17F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F550);
  }

  return result;
}

unint64_t sub_1E107B4F4()
{
  result = qword_1ECE8B018;
  if (!qword_1ECE8B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B018);
  }

  return result;
}

unint64_t sub_1E107B54C()
{
  result = qword_1ECE8B020;
  if (!qword_1ECE8B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B020);
  }

  return result;
}

unint64_t sub_1E107B5A4()
{
  result = qword_1EE17F540;
  if (!qword_1EE17F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F540);
  }

  return result;
}

unint64_t sub_1E107B5FC()
{
  result = qword_1EE17F548;
  if (!qword_1EE17F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F548);
  }

  return result;
}

unint64_t sub_1E107B654()
{
  result = qword_1EE17F558;
  if (!qword_1EE17F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F558);
  }

  return result;
}

unint64_t sub_1E107B6AC()
{
  result = qword_1EE17F560;
  if (!qword_1EE17F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F560);
  }

  return result;
}

uint64_t sub_1E107B700@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2B0, &qword_1E10B6B60) + 44);
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;
    v8 = *(v5 + 5);
    if (v8)
    {
      v12 = *(v5 + 88);
      v9 = *(v5 + 4);

      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v10;
    *(a1 + 48) = v9;
    *(a1 + 56) = v8;
  }

  else
  {
    result = sub_1E10AE6FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E107B814(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B048, &unk_1E10B9A30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107C0C8();
  sub_1E10AEA5C();
  v18 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v18 = v3[1];
    LOBYTE(v16[0]) = 1;
    sub_1E10AE8AC();
    v11 = v3[3];
    v12 = v3[5];
    v24 = v3[4];
    v25 = v12;
    v13 = v3[3];
    v23[0] = v3[2];
    v23[1] = v13;
    v14 = v3[5];
    v20 = v24;
    v21 = v14;
    v26 = *(v3 + 12);
    v22 = *(v3 + 12);
    v18 = v23[0];
    v19 = v11;
    v27 = 2;
    sub_1E1028CE0(v23, v16);
    sub_1E1028D50();
    sub_1E10AE85C();
    v16[2] = v20;
    v16[3] = v21;
    v17 = v22;
    v16[1] = v19;
    v16[0] = v18;
    sub_1E1028DA4(v16);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E107BAA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E107BC90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E107BAC8(uint64_t a1)
{
  v2 = sub_1E107C0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107BB04(uint64_t a1)
{
  v2 = sub_1E107C0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E107BB40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E107BDA8(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1E107BBB8(uint64_t a1)
{
  *(a1 + 8) = sub_1E107BBE8();
  result = sub_1E107BC3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E107BBE8()
{
  result = qword_1ECE8B028;
  if (!qword_1ECE8B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B028);
  }

  return result;
}

unint64_t sub_1E107BC3C()
{
  result = qword_1ECE8B030;
  if (!qword_1ECE8B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B030);
  }

  return result;
}

uint64_t sub_1E107BC90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E107BDA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B038, &qword_1E10B9A28);
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107C0C8();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v24 = a2;
  LOBYTE(v25) = 0;
  sub_1E0FF4EE4();
  v11 = v51;
  sub_1E10AE7FC();
  v13 = v32;
  *(&v23 + 1) = v13 >> 64;
  v12 = v13;
  LOBYTE(v25) = 1;
  sub_1E10AE7FC();
  v22 = v32;
  *&v23 = v12;
  v14 = *(&v32 + 1);
  v40 = 2;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v10 + 8))(v9, v11);
  v48 = v43;
  v49 = v44;
  v50 = v45;
  v46 = v41;
  v47 = v42;
  v15 = v23;
  v25 = v23;
  v16 = v22;
  *&v26 = v22;
  *(&v26 + 1) = v14;
  v31 = v45;
  v29 = v43;
  v30 = v44;
  v27 = v41;
  v28 = v42;
  sub_1E107C11C(&v25, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v15;
  v33 = v16;
  v34 = v14;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v35 = v46;
  v36 = v47;
  result = sub_1E107C154(&v32);
  v18 = v30;
  v19 = v24;
  *(v24 + 64) = v29;
  *(v19 + 80) = v18;
  *(v19 + 96) = v31;
  v20 = v26;
  *v19 = v25;
  *(v19 + 16) = v20;
  v21 = v28;
  *(v19 + 32) = v27;
  *(v19 + 48) = v21;
  return result;
}

unint64_t sub_1E107C0C8()
{
  result = qword_1ECE8B040;
  if (!qword_1ECE8B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B040);
  }

  return result;
}

unint64_t sub_1E107C198()
{
  result = qword_1ECE8B050;
  if (!qword_1ECE8B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B050);
  }

  return result;
}

unint64_t sub_1E107C1F0()
{
  result = qword_1ECE8B058;
  if (!qword_1ECE8B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B058);
  }

  return result;
}

unint64_t sub_1E107C248()
{
  result = qword_1ECE8B060;
  if (!qword_1ECE8B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B060);
  }

  return result;
}

uint64_t Dance.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Dance.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Dance.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for Dance(uint64_t a1)
{
  result = qword_1EE17ECD0;
  if (!qword_1EE17ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Dance.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Dance(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Dance.tickets.getter()
{
  type metadata accessor for Dance(0);
}

uint64_t sub_1E107C540(uint64_t a1)
{
  v2 = sub_1E107E438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107C57C(uint64_t a1)
{
  v2 = sub_1E107E438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Dance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B068, &qword_1E10B9B70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107E438();
  sub_1E10AEA5C();
  v11 = *(v3 + 8);
  *&v40 = *v3;
  *(&v40 + 1) = v11;
  LOBYTE(v30) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v12 = *(v3 + 24);
    *&v40 = *(v3 + 16);
    *(&v40 + 1) = v12;
    v41 = *(v3 + 32);
    LOBYTE(v30) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B078, &qword_1E10B9B78);
    sub_1E107E48C(&qword_1ECE8B080, &protocol conformance descriptor for EventCategory<A>);
    sub_1E10AE8AC();
    LOBYTE(v40) = 2;
    sub_1E10AE86C();
    v13 = type metadata accessor for Dance(0);
    v50[0] = 3;
    type metadata accessor for Time(0);
    sub_1E107E7FC(&qword_1ECE88CB0, type metadata accessor for Time, &protocol conformance descriptor for Time);
    sub_1E10AE8AC();
    v14 = (v3 + *(v13 + 32));
    v15 = v14[7];
    v16 = v14[5];
    v46 = v14[6];
    v47 = v15;
    v17 = v14[7];
    v18 = v14[9];
    v48 = v14[8];
    v49 = v18;
    v19 = v14[3];
    v20 = v14[1];
    v42 = v14[2];
    v43 = v19;
    v21 = v14[3];
    v22 = v14[5];
    v44 = v14[4];
    v45 = v22;
    v23 = v14[1];
    v40 = *v14;
    v41 = v23;
    v36 = v46;
    v37 = v17;
    v24 = v14[9];
    v38 = v48;
    v39 = v24;
    v32 = v42;
    v33 = v21;
    v34 = v44;
    v35 = v16;
    v30 = v40;
    v31 = v20;
    v29 = 4;
    sub_1E0FE6720(&v40, v28);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v28[6] = v36;
    v28[7] = v37;
    v28[8] = v38;
    v28[9] = v39;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_1E0FEDAB8(v28);
    LOBYTE(v27) = 5;
    type metadata accessor for EventAttribution(0);
    sub_1E107E7FC(&qword_1ECE88CB8, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
    sub_1E10AE85C();
    LOBYTE(v27) = 6;
    type metadata accessor for TicketAttribution(0);
    sub_1E107E7FC(&qword_1ECE88CE8, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
    sub_1E10AE85C();
    v27 = *(v3 + *(v13 + 44));
    v26[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E107E4DC(&qword_1ECE88CF8, &qword_1ECE88D00, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6300]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Dance.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for TicketAttribution(0);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v31 = &v30 - v9;
  v10 = type metadata accessor for EventAttribution(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30 - v18;
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v20 = type metadata accessor for Dance(0);
  sub_1E10ADACC();
  sub_1E107E7FC(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E107E7FC(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  v21 = (v1 + v20[8]);
  v22 = v21[7];
  v40 = v21[6];
  v41 = v22;
  v23 = v21[9];
  v42 = v21[8];
  v43 = v23;
  v24 = v21[3];
  v36 = v21[2];
  v37 = v24;
  v25 = v21[5];
  v38 = v21[4];
  v39 = v25;
  v26 = v21[1];
  v34 = *v21;
  v35 = v26;
  Venue.hash(into:)(a1);
  sub_1E0FEDC50(v1 + v20[9], v19, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v19, v15, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E10ADBBC();
    sub_1E107E7FC(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    sub_1E107E5E0(v15, type metadata accessor for EventAttribution);
  }

  v27 = v31;
  sub_1E0FEDC50(v2 + v20[10], v31, &qword_1ECE88C80, &qword_1E10AF9D0);
  if ((*(v32 + 48))(v27, 1, v33) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v28 = v30;
    sub_1E0FEDD58(v27, v30, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E10ADBBC();
    sub_1E107E7FC(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    sub_1E107E5E0(v28, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v20[11]));
}

uint64_t Dance.hashValue.getter()
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Dance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v48 = v45 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v45 - v8;
  v10 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B088, &qword_1E10B9B80);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v45 - v17;
  v19 = type metadata accessor for Dance(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E107E438();
  v51 = v18;
  v25 = v52;
  sub_1E10AEA3C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v45[1] = v10;
  v46 = v14;
  v26 = v49;
  v52 = v19;
  LOBYTE(v54) = 0;
  sub_1E0FEDD04();
  v27 = v50;
  sub_1E10AE7FC();
  v28 = *(&v56 + 1);
  v29 = v23;
  *v23 = v56;
  v23[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B078, &qword_1E10B9B78);
  LOBYTE(v54) = 1;
  sub_1E107E48C(&qword_1ECE8B090, &protocol conformance descriptor for EventCategory<A>);
  sub_1E10AE7FC();
  v30 = v26;
  v31 = *(&v56 + 1);
  *(v29 + 16) = v56;
  *(v29 + 24) = v31;
  *(v29 + 32) = v57;
  LOBYTE(v56) = 2;
  *(v29 + 48) = sub_1E10AE7BC();
  *(v29 + 56) = v32;
  LOBYTE(v56) = 3;
  sub_1E107E7FC(&qword_1EE17EE88, type metadata accessor for Time, &protocol conformance descriptor for Time);
  v33 = v46;
  sub_1E10AE7FC();
  v34 = v52;
  sub_1E0FEDD58(v33, v29 + v52[7], type metadata accessor for Time);
  v55 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v46) = 1;
  v35 = (v29 + v34[8]);
  v36 = v63;
  v37 = v64;
  v35[6] = v62;
  v35[7] = v36;
  v38 = v65;
  v35[8] = v37;
  v35[9] = v38;
  v39 = v59;
  v35[2] = v58;
  v35[3] = v39;
  v40 = v61;
  v35[4] = v60;
  v35[5] = v40;
  v41 = v57;
  *v35 = v56;
  v35[1] = v41;
  type metadata accessor for EventAttribution(0);
  LOBYTE(v54) = 5;
  sub_1E107E7FC(&qword_1ECE88D30, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v9, v29 + v34[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution(0);
  LOBYTE(v54) = 6;
  sub_1E107E7FC(&qword_1ECE88D50, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
  v42 = v48;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v42, v29 + v34[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v53 = 7;
  sub_1E107E4DC(&qword_1ECE88D58, &qword_1ECE88D60, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6330]);
  v43 = v51;
  sub_1E10AE7FC();
  (*(v30 + 8))(v43, v27);
  *(v29 + v34[11]) = v54;
  sub_1E107E578(v29, v47, type metadata accessor for Dance);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_1E107E5E0(v29, type metadata accessor for Dance);
}

uint64_t sub_1E107D998()
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E107D9DC(uint64_t a1)
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents5DanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution(0);
  v85 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = (&v79 - v10);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v79 - v13;
  v15 = type metadata accessor for EventAttribution(0);
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v79 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v79 - v27;
  if (*a1 != *a2 && (sub_1E10AE8FC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  v79 = v4;
  v80 = v14;
  v81 = type metadata accessor for Dance(0);
  v29 = v81[7];
  v30 = a1 + v29;
  v31 = a2 + v29;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v32 = type metadata accessor for Time(0);
  if ((MEMORY[0x1E12ED5E0](&v30[*(v32 + 20)], &v31[*(v32 + 20)]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = v81;
  v34 = (a1 + v81[8]);
  v35 = v34[5];
  v36 = v34[7];
  v113 = v34[6];
  v114 = v36;
  v37 = v34[9];
  v38 = v34[7];
  v115 = v34[8];
  v116 = v37;
  v39 = v34[3];
  v40 = v34[1];
  v109 = v34[2];
  v110 = v39;
  v41 = v34[5];
  v42 = v34[3];
  v111 = v34[4];
  v112 = v41;
  v43 = v34[1];
  v108[0] = *v34;
  v108[1] = v43;
  v102 = v111;
  v103 = v35;
  v100 = v109;
  v101 = v42;
  v44 = v34[9];
  v106 = v115;
  v107 = v44;
  v104 = v113;
  v105 = v38;
  v98 = v108[0];
  v99 = v40;
  v45 = (a2 + v81[8]);
  v46 = v45[7];
  v47 = v45[5];
  v122 = v45[6];
  v123 = v46;
  v48 = v45[7];
  v49 = v45[9];
  v124 = v45[8];
  v125 = v49;
  v50 = v45[3];
  v51 = v45[1];
  v118 = v45[2];
  v119 = v50;
  v52 = v45[3];
  v53 = v45[5];
  v120 = v45[4];
  v121 = v53;
  v54 = v45[1];
  v117[0] = *v45;
  v117[1] = v54;
  v94 = v122;
  v95 = v48;
  v55 = v45[9];
  v96 = v124;
  v97 = v55;
  v90 = v118;
  v91 = v52;
  v92 = v120;
  v93 = v47;
  v88 = v117[0];
  v89 = v51;
  sub_1E0FE6720(v108, v87);
  sub_1E0FE6720(v117, v87);
  v56 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v98, &v88);
  v126[6] = v94;
  v126[7] = v95;
  v126[8] = v96;
  v126[9] = v97;
  v126[2] = v90;
  v126[3] = v91;
  v126[4] = v92;
  v126[5] = v93;
  v126[0] = v88;
  v126[1] = v89;
  sub_1E0FEDAB8(v126);
  v127[6] = v104;
  v127[7] = v105;
  v127[8] = v106;
  v127[9] = v107;
  v127[2] = v100;
  v127[3] = v101;
  v127[4] = v102;
  v127[5] = v103;
  v127[0] = v98;
  v127[1] = v99;
  sub_1E0FEDAB8(v127);
  if (!v56)
  {
    goto LABEL_31;
  }

  v57 = v33[9];
  v58 = *(v24 + 48);
  sub_1E0FEDC50(a1 + v57, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
  v59 = a2 + v57;
  v60 = v58;
  sub_1E0FEDC50(v59, &v28[v58], &qword_1ECE88C70, &qword_1E10AF9C8);
  v61 = *(v86 + 48);
  if (v61(v28, 1, v15) != 1)
  {
    sub_1E0FEDC50(v28, v23, &qword_1ECE88C70, &qword_1E10AF9C8);
    v86 = v60;
    v64 = v61(&v28[v60], 1, v15);
    v63 = v80;
    if (v64 != 1)
    {
      sub_1E0FEDD58(&v28[v86], v19, type metadata accessor for EventAttribution);
      if (*v23 == *v19 && v23[1] == v19[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v68 = sub_1E10ADB8C();
        sub_1E107E5E0(v19, type metadata accessor for EventAttribution);
        sub_1E107E5E0(v23, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v28, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v68 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      sub_1E107E5E0(v19, type metadata accessor for EventAttribution);
      sub_1E107E5E0(v23, type metadata accessor for EventAttribution);
      v65 = &qword_1ECE88C70;
      v66 = &qword_1E10AF9C8;
LABEL_18:
      v67 = v28;
LABEL_30:
      sub_1E0FF0440(v67, v65, v66);
      goto LABEL_31;
    }

    sub_1E107E5E0(v23, type metadata accessor for EventAttribution);
LABEL_17:
    v65 = &qword_1ECE88F50;
    v66 = &qword_1E10B0610;
    goto LABEL_18;
  }

  v62 = v61(&v28[v60], 1, v15);
  v63 = v80;
  if (v62 != 1)
  {
    goto LABEL_17;
  }

  sub_1E0FF0440(v28, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_23:
  v69 = v81[10];
  v70 = *(v84 + 48);
  sub_1E0FEDC50(a1 + v69, v63, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v69, v63 + v70, &qword_1ECE88C80, &qword_1E10AF9D0);
  v71 = *(v85 + 48);
  v72 = v79;
  if (v71(v63, 1, v79) == 1)
  {
    if (v71(v63 + v70, 1, v72) == 1)
    {
      sub_1E0FF0440(v63, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_37:
      v74 = sub_1E0FFE0A4(*(a1 + v81[11]), *(a2 + v81[11]));
      return v74 & 1;
    }

    goto LABEL_28;
  }

  v73 = v83;
  sub_1E0FEDC50(v63, v83, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v71(v63 + v70, 1, v72) == 1)
  {
    sub_1E107E5E0(v73, type metadata accessor for TicketAttribution);
LABEL_28:
    v65 = &qword_1ECE88F40;
    v66 = &qword_1E10B0600;
LABEL_29:
    v67 = v63;
    goto LABEL_30;
  }

  v76 = v63 + v70;
  v77 = v82;
  sub_1E0FEDD58(v76, v82, type metadata accessor for TicketAttribution);
  if ((*v73 != *v77 || v73[1] != v77[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E107E5E0(v77, type metadata accessor for TicketAttribution);
    sub_1E107E5E0(v73, type metadata accessor for TicketAttribution);
    v65 = &qword_1ECE88C80;
    v66 = &qword_1E10AF9D0;
    goto LABEL_29;
  }

  v78 = sub_1E10ADB8C();
  sub_1E107E5E0(v77, type metadata accessor for TicketAttribution);
  sub_1E107E5E0(v73, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v63, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78)
  {
    goto LABEL_37;
  }

LABEL_31:
  v74 = 0;
  return v74 & 1;
}

unint64_t sub_1E107E438()
{
  result = qword_1ECE8B070;
  if (!qword_1ECE8B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B070);
  }

  return result;
}

uint64_t sub_1E107E48C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B078, &qword_1E10B9B78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E107E4DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E107E7FC(a2, type metadata accessor for Ticket, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E107E578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E107E5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E107E640(uint64_t a1)
{
  result = sub_1E107E7FC(&qword_1EE17ECE0, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E107E6E0(void *a1)
{
  a1[1] = sub_1E107E7FC(&qword_1EE17ECF8, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  a1[2] = sub_1E107E7FC(&qword_1EE17ED10, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  a1[3] = sub_1E107E7FC(&qword_1EE17ED08, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  result = sub_1E107E7FC(&qword_1EE17ECF0, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  a1[4] = result;
  return result;
}

uint64_t sub_1E107E7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E107E86C(uint64_t a1)
{
  sub_1E107E9E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Time(319);
    if (v2 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E107E9E8(uint64_t a1)
{
  if (!qword_1ECE8B098)
  {
    v2 = type metadata accessor for Dance(255);
    v3 = sub_1E107E7FC(&qword_1EE17ECE8, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
    v5 = type metadata accessor for EventCategory(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECE8B098);
    }
  }
}

unint64_t sub_1E107EA90()
{
  result = qword_1ECE8B0A0;
  if (!qword_1ECE8B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0A0);
  }

  return result;
}

unint64_t sub_1E107EAE8()
{
  result = qword_1ECE8B0A8;
  if (!qword_1ECE8B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0A8);
  }

  return result;
}

unint64_t sub_1E107EB40()
{
  result = qword_1ECE8B0B0;
  if (!qword_1ECE8B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0B0);
  }

  return result;
}

uint64_t PartialEvent.id.getter()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

uint64_t PartialEvent.localizedEventTypeName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PartialEvent.category.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PartialEvent.name.getter()
{
  v0 = sub_1E10806D0();

  return v0;
}

uint64_t PartialEvent.venue.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a2[6] = v25;
  a2[7] = v6;
  v17 = v3[9];
  a2[8] = v8;
  a2[9] = v17;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v5;
  *a2 = v16;
  a2[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t static PartialEvent.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v9 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if ((static EventCategory.== infix<A, B>(_:_:)(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v10 = a2[9];
  if ((a1[8] != a2[8] || a1[9] != v10) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for PartialEvent(0, a3, a4, v10);
  v12 = v11[12];
  v13 = a1 + v12;
  v14 = a2 + v12;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for Time(0);
  if ((MEMORY[0x1E12ED5E0](&v13[*(v15 + 20)], &v14[*(v15 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v16 = (a1 + v11[13]);
  v17 = v16[5];
  v18 = v16[7];
  v74 = v16[6];
  v75 = v18;
  v19 = v16[9];
  v20 = v16[7];
  v76 = v16[8];
  v77 = v19;
  v21 = v16[3];
  v22 = v16[1];
  v70 = v16[2];
  v71 = v21;
  v23 = v16[5];
  v24 = v16[3];
  v72 = v16[4];
  v73 = v23;
  v25 = v16[1];
  v69[0] = *v16;
  v69[1] = v25;
  v63 = v72;
  v64 = v17;
  v26 = v16[9];
  v67 = v76;
  v68 = v26;
  v65 = v74;
  v66 = v20;
  v61 = v70;
  v62 = v24;
  v59 = v69[0];
  v60 = v22;
  v27 = (a2 + v11[13]);
  v28 = v27[7];
  v29 = v27[5];
  v83 = v27[6];
  v84 = v28;
  v30 = v27[7];
  v31 = v27[9];
  v85 = v27[8];
  v86 = v31;
  v32 = v27[3];
  v33 = v27[1];
  v79 = v27[2];
  v80 = v32;
  v34 = v27[3];
  v35 = v27[5];
  v81 = v27[4];
  v82 = v35;
  v36 = v27[1];
  v78[0] = *v27;
  v78[1] = v36;
  v55 = v83;
  v56 = v30;
  v37 = v27[9];
  v57 = v85;
  v58 = v37;
  v51 = v79;
  v52 = v34;
  v53 = v81;
  v54 = v29;
  v49 = v78[0];
  v50 = v33;
  sub_1E0FE6720(v69, v48);
  sub_1E0FE6720(v78, v48);
  v38 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v59, &v49);
  v87[6] = v55;
  v87[7] = v56;
  v87[8] = v57;
  v87[9] = v58;
  v87[2] = v51;
  v87[3] = v52;
  v87[4] = v53;
  v87[5] = v54;
  v87[0] = v49;
  v87[1] = v50;
  sub_1E0FEDAB8(v87);
  v88[6] = v65;
  v88[7] = v66;
  v88[8] = v67;
  v88[9] = v68;
  v88[2] = v61;
  v88[3] = v62;
  v88[4] = v63;
  v88[5] = v64;
  v88[0] = v59;
  v88[1] = v60;
  sub_1E0FEDAB8(v88);
  if (!v38 || *(a1 + v11[14]) != *(a2 + v11[14]))
  {
    return 0;
  }

  v40 = v11[15];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = sub_1E0FFE58C(v41, v42);

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v44 = v11[16];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45)
  {
    if (v46)
    {

      v47 = sub_1E0FFEBF0(v45, v46);

      if (v47)
      {
        return 1;
      }
    }
  }

  else if (!v46)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E107F028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E10C0BF0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E10C00F0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x747241636973756DLL && a2 == 0xEC00000073747369 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10C0C10 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1E107F300(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x79726F6765746163;
    if (a1 != 2)
    {
      v6 = 1701667182;
    }

    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 0x747241636973756DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701669236;
    if (a1 != 4)
    {
      v3 = 0x65756E6576;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E107F428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E107F028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E107F458@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E1080B50();
  *a2 = result;
  return result;
}

uint64_t sub_1E107F484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E107F4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PartialEvent.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v40 = a2;
  v41 = v5;
  v42 = v6;
  type metadata accessor for PartialEvent.CodingKeys(255, v6, v5, a4);
  swift_getWitnessTable();
  v7 = sub_1E10AE8BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  v14 = v43;
  sub_1E10AEA5C();
  v15 = *(v14 + 8);
  *&v67 = *v14;
  *(&v67 + 1) = v15;
  LOBYTE(v57) = 0;
  sub_1E0FED9C8();
  v16 = v78;
  sub_1E10AE8AC();
  if (!v16)
  {
    v18 = v41;
    v17 = v42;
    LOBYTE(v67) = 1;
    sub_1E10AE86C();
    v78 = 0;
    v21 = *(v14 + 40);
    *&v67 = *(v14 + 32);
    *(&v67 + 1) = v21;
    v68 = *(v14 + 48);
    LOBYTE(v57) = 2;
    type metadata accessor for EventCategory(0, v17, v18, v19);
    swift_getWitnessTable();
    v22 = v78;
    sub_1E10AE8AC();
    v23 = v8;
    if (!v22)
    {
      LOBYTE(v67) = 3;
      sub_1E10AE86C();
      v78 = 0;
      v24 = v40;
      v77[0] = 4;
      type metadata accessor for Time(0);
      sub_1E1080780(&qword_1ECE88CB0, type metadata accessor for Time, &protocol conformance descriptor for Time);
      v25 = v78;
      sub_1E10AE8AC();
      v78 = v25;
      if (v25)
      {
        return (*(v23 + 8))(v12, v13);
      }

      v26 = (v14 + v24[13]);
      v27 = v26[7];
      v28 = v26[5];
      v73 = v26[6];
      v74 = v27;
      v29 = v26[7];
      v30 = v26[9];
      v75 = v26[8];
      v76 = v30;
      v31 = v26[3];
      v32 = v26[1];
      v69 = v26[2];
      v70 = v31;
      v33 = v26[3];
      v34 = v26[5];
      v71 = v26[4];
      v72 = v34;
      v35 = v26[1];
      v67 = *v26;
      v68 = v35;
      v63 = v73;
      v64 = v29;
      v36 = v26[9];
      v65 = v75;
      v66 = v36;
      v59 = v69;
      v60 = v33;
      v61 = v71;
      v62 = v28;
      v57 = v67;
      v58 = v32;
      v56 = 5;
      sub_1E0FE6720(&v67, &v46);
      sub_1E0FEDA64();
      v37 = v78;
      sub_1E10AE8AC();
      v78 = v37;
      if (v37)
      {
        v52 = v63;
        v53 = v64;
        v54 = v65;
        v55 = v66;
        v48 = v59;
        v49 = v60;
        v50 = v61;
        v51 = v62;
        v46 = v57;
        v47 = v58;
        sub_1E0FEDAB8(&v46);
        return (*(v23 + 8))(v12, v13);
      }

      v52 = v63;
      v53 = v64;
      v54 = v65;
      v55 = v66;
      v48 = v59;
      v49 = v60;
      v50 = v61;
      v51 = v62;
      v46 = v57;
      v47 = v58;
      sub_1E0FEDAB8(&v46);
      LOBYTE(v45) = 6;
      v38 = v78;
      sub_1E10AE87C();
      v78 = v38;
      if (v38)
      {
        return (*(v23 + 8))(v12, v13);
      }

      v45 = *(v14 + v24[15]);
      v44 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
      sub_1E108082C(&qword_1ECE8B0C0, sub_1E1005408, MEMORY[0x1E69E6300]);
      v39 = v78;
      sub_1E10AE85C();
      v78 = v39;
      if (v39)
      {
        return (*(v23 + 8))(v12, v13);
      }

      v45 = *(v14 + v24[16]);
      v44 = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
      sub_1E1080708(&qword_1ECE8B0D0, sub_1E0FEEB48, MEMORY[0x1E69E6300]);
      v22 = v78;
      sub_1E10AE85C();
    }

    v78 = v22;
    return (*(v23 + 8))(v12, v13);
  }

  v78 = v16;
  return (*(v8 + 8))(v12, v13);
}

uint64_t PartialEvent.hash(into:)(uint64_t a1, int *a2)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  EventCategory.hash(into:)(a1, *(v2 + 32), *(v2 + 40));
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADACC();
  sub_1E1080780(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E1080780(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  Venue.hash(into:)(a1);
  sub_1E10AE9EC();
  v5 = *(v2 + a2[15]);
  sub_1E10AE9EC();
  if (v5)
  {
    sub_1E0FEBE48(a1, v5);
  }

  v6 = *(v2 + a2[16]);
  if (!v6)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();

  return sub_1E0FEC244(a1, v6);
}

uint64_t PartialEvent.hashValue.getter(int *a1)
{
  sub_1E10AE9CC();
  PartialEvent.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t PartialEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v52 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialEvent.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v55 = sub_1E10AE81C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  v54 = a3;
  v16 = type metadata accessor for PartialEvent(0, a2, a3, v15);
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  v21 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v70;
  sub_1E10AEA3C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v23 = a2;
    v24 = v54;
    v25 = v53;
    v26 = v20;
    v70 = v16;
    LOBYTE(v58) = 0;
    sub_1E0FEDD04();
    v27 = v55;
    sub_1E10AE7FC();
    v28 = *(&v60 + 1);
    *v26 = v60;
    *(v26 + 1) = v28;
    LOBYTE(v60) = 1;
    v29 = v25;
    *(v26 + 2) = sub_1E10AE7BC();
    *(v26 + 3) = v30;
    type metadata accessor for EventCategory(0, v23, v24, v31);
    v54 = v14;
    LOBYTE(v58) = 2;
    swift_getWitnessTable();
    sub_1E10AE7FC();
    v32 = *(&v60 + 1);
    *(v26 + 4) = v60;
    *(v26 + 5) = v32;
    *(v26 + 3) = v61;
    LOBYTE(v60) = 3;
    v33 = sub_1E10AE7BC();
    v48 = 0;
    *(v26 + 8) = v33;
    *(v26 + 9) = v34;
    LOBYTE(v60) = 4;
    sub_1E1080780(&qword_1EE17EE88, type metadata accessor for Time, &protocol conformance descriptor for Time);
    v35 = v51;
    sub_1E10AE7FC();
    v36 = v70;
    sub_1E10807C8(v35, &v26[v70[12]]);
    v59 = 5;
    sub_1E0FEDDC0();
    sub_1E10AE7FC();
    v37 = &v26[v36[13]];
    v38 = v67;
    v39 = v68;
    *(v37 + 6) = v66;
    *(v37 + 7) = v38;
    v40 = v69;
    *(v37 + 8) = v39;
    *(v37 + 9) = v40;
    v41 = v63;
    *(v37 + 2) = v62;
    *(v37 + 3) = v41;
    v42 = v65;
    *(v37 + 4) = v64;
    *(v37 + 5) = v42;
    v43 = v61;
    *v37 = v60;
    *(v37 + 1) = v43;
    LOBYTE(v58) = 6;
    v26[v36[14]] = sub_1E10AE7CC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
    v57 = 7;
    sub_1E108082C(&qword_1EE17E450, sub_1E10053B4, MEMORY[0x1E69E6330]);
    sub_1E10AE7AC();
    *&v26[v70[15]] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
    v57 = 8;
    sub_1E1080708(&qword_1EE17E440, sub_1E0FEEAF4, MEMORY[0x1E69E6330]);
    sub_1E10AE7AC();
    v44 = v70;
    v45 = v70[16];
    (*(v29 + 8))(v54, v27);
    *&v26[v45] = v58;
    v46 = v49;
    (*(v49 + 16))(v50, v26, v44);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return (*(v46 + 8))(v26, v44);
  }
}

uint64_t sub_1E1080524()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

uint64_t sub_1E1080560()
{
  v0 = sub_1E10806D0();

  return v0;
}

uint64_t sub_1E10805A8(uint64_t a1, int *a2)
{
  sub_1E10AE9CC();
  PartialEvent.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t PartialEvent<>.participants.getter()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70) + 60));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60) + 64));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1E1080708(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1080780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E10807C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Time(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E108082C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E10808AC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

void sub_1E1080968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventCategory(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for Time(319);
    if (v5 <= 0x3F)
    {
      sub_1E1080AA8(319, &qword_1EE17E448, &qword_1ECE8B0B8, &qword_1E10B9E08);
      if (v6 <= 0x3F)
      {
        sub_1E1080AA8(319, &qword_1EE17E438, &qword_1ECE8B0C8, &qword_1E10B9E10);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1080AA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E10AE4EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents24CompetitorInfoAttributesV5ScoreVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E1080B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1E1080BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1E1080C68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B100, &qword_1E10BA180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081818();
  sub_1E10AEA5C();
  v13[0] = *v3;
  v15 = 0;
  sub_1E108193C();
  sub_1E10AE85C();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v13[0] = *(v3 + 16);
    v13[1] = v11;
    v14 = *(v3 + 48);
    v15 = 1;
    sub_1E0FEE620();
    sub_1E10AE85C();
    LOBYTE(v13[0]) = 2;
    sub_1E10AE84C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E1080E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C616E6966 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1080EB0(uint64_t a1)
{
  v2 = sub_1E1081B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1080EEC(uint64_t a1)
{
  v2 = sub_1E1081B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1080F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B128, &qword_1E10BA318);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081B64();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1E10AE78C();
  v13 = v12;
  (*(v6 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1E10810A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B138, &qword_1E10BA320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081B64();
  sub_1E10AEA5C();
  sub_1E10AE83C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1E10811E0()
{
  v1 = 0x4365727574786966;
  if (*v0 != 1)
  {
    v1 = 0x656D6F487369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_1E108123C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1081418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E1081264(uint64_t a1)
{
  v2 = sub_1E1081818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10812A0(uint64_t a1)
{
  v2 = sub_1E1081818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E10812DC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E108152C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1E1081340(uint64_t a1)
{
  *(a1 + 8) = sub_1E1081370();
  result = sub_1E10813C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1081370()
{
  result = qword_1ECE8B0D8;
  if (!qword_1ECE8B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0D8);
  }

  return result;
}

unint64_t sub_1E10813C4()
{
  result = qword_1ECE8B0E0;
  if (!qword_1ECE8B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0E0);
  }

  return result;
}

uint64_t sub_1E1081418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4365727574786966 && a2 == 0xEC000000726F6C6FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F487369 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E108152C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0E8, &qword_1E10BA178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081818();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_1E108186C();
  sub_1E10AE7AC();
  v27 = a2;
  v12 = v31;
  v11 = v32;
  LOBYTE(v28) = 1;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v23 = v32;
  v24 = v31;
  v22 = v33;
  v25 = v34;
  v26 = v35;
  v39 = 2;
  v13 = sub_1E10AE79C();
  (*(v6 + 8))(v10, v5);
  *&v28 = v12;
  *(&v28 + 1) = v11;
  v15 = v23;
  v14 = v24;
  *&v29 = v24;
  *(&v29 + 1) = v23;
  v16 = v22;
  v17 = v26;
  *v30 = v22;
  *&v30[8] = v25;
  *&v30[16] = v26;
  v30[24] = v13;
  sub_1E10818D4(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31 = v12;
  v32 = v11;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v25;
  v37 = v17;
  v38 = v13;
  result = sub_1E108190C(&v31);
  v19 = v29;
  v20 = v27;
  *v27 = v28;
  v20[1] = v19;
  v20[2] = *v30;
  *(v20 + 41) = *&v30[9];
  return result;
}

unint64_t sub_1E1081818()
{
  result = qword_1ECE8B0F0;
  if (!qword_1ECE8B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0F0);
  }

  return result;
}

unint64_t sub_1E108186C()
{
  result = qword_1ECE8B0F8;
  if (!qword_1ECE8B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0F8);
  }

  return result;
}

uint64_t sub_1E10818C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1E108193C()
{
  result = qword_1ECE8B108;
  if (!qword_1ECE8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B108);
  }

  return result;
}

uint64_t sub_1E10819A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1E10819FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1E1081A60()
{
  result = qword_1ECE8B110;
  if (!qword_1ECE8B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B110);
  }

  return result;
}

unint64_t sub_1E1081AB8()
{
  result = qword_1ECE8B118;
  if (!qword_1ECE8B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B118);
  }

  return result;
}

unint64_t sub_1E1081B10()
{
  result = qword_1ECE8B120;
  if (!qword_1ECE8B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B120);
  }

  return result;
}

unint64_t sub_1E1081B64()
{
  result = qword_1ECE8B130;
  if (!qword_1ECE8B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B130);
  }

  return result;
}

unint64_t sub_1E1081BCC()
{
  result = qword_1ECE8B140;
  if (!qword_1ECE8B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B140);
  }

  return result;
}

unint64_t sub_1E1081C24()
{
  result = qword_1ECE8B148;
  if (!qword_1ECE8B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B148);
  }

  return result;
}

unint64_t sub_1E1081C7C()
{
  result = qword_1ECE8B150;
  if (!qword_1ECE8B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B150);
  }

  return result;
}

uint64_t sub_1E1081CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E1081D18(uint64_t result, int a2, int a3)
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

uint64_t sub_1E1081D8C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B188, &unk_1E10BA680);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v60 - v11;
  if (sub_1E1082544())
  {
    v13 = sub_1E10ADBBC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }

  else
  {
    v60 = v8;
    v61 = v7;
    v64 = v1;
    v65 = v12;
    v62 = v6;
    v63 = a1;
    v16 = v1[1];
    v17 = v1[4];
    v18 = *v1;
    v73 = v17;
    v20 = v17 + 64;
    v19 = *(v17 + 64);
    v66 = v17;
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    sub_1E0FEDC50(&v73, &v71, &qword_1ECE8B180, &qword_1E10BA678);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_13:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = (v26 << 10) | (16 * v27);
        v29 = (*(v66 + 48) + v28);
        v30 = *v29;
        v31 = v29[1];
        v32 = (*(v66 + 56) + v28);
        v34 = *v32;
        v33 = v32[1];
        v71 = v18;
        v72 = v16;
        v69 = 123;
        v70 = 0xE100000000000000;

        MEMORY[0x1E12ED840](v30, v31);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v67 = v34;
        v68 = v33;
        sub_1E106931C();
        v18 = sub_1E10AE50C();
        v36 = v35;

        v16 = v36;
        if (!v23)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_13;
      }
    }

    v37 = v66;

    v38 = v65;
    sub_1E10ADBAC();

    v39 = v64[3];
    if (v39)
    {
      v40 = v64[2];
      v41 = 1 << *(v37 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v37 + 64);
      sub_1E0FEDC50(&v73, &v71, &qword_1ECE8B180, &qword_1E10BA678);
      v44 = (v41 + 63) >> 6;

      for (i = 0; v43; v39 = v56)
      {
        v46 = i;
LABEL_24:
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = (v46 << 10) | (16 * v47);
        v49 = (*(v66 + 48) + v48);
        v50 = *v49;
        v51 = v49[1];
        v52 = (*(v66 + 56) + v48);
        v54 = *v52;
        v53 = v52[1];
        v71 = v40;
        v72 = v39;
        v69 = 123;
        v70 = 0xE100000000000000;

        MEMORY[0x1E12ED840](v50, v51);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v67 = v54;
        v68 = v53;
        sub_1E106931C();
        v40 = sub_1E10AE50C();
        v56 = v55;
      }

      while (1)
      {
        v46 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_33;
        }

        if (v46 >= v44)
        {

          v57 = v62;
          v38 = v65;
          sub_1E10ADB9C();
          v59 = v60;
          v58 = v61;
          (*(v60 + 56))(v57, 0, 1, v61);

          if ((*(v59 + 48))(v57, 1, v58) == 1)
          {
            goto LABEL_29;
          }

          sub_1E1069370(v57, v63);
          return sub_1E0FF0440(v38, &qword_1ECE88C78, &qword_1E10B5E50);
        }

        v43 = *(v20 + 8 * v46);
        ++i;
        if (v43)
        {
          i = v46;
          goto LABEL_24;
        }
      }
    }

    v59 = v60;
    v58 = v61;
    v57 = v62;
    (*(v60 + 56))(v62, 1, 1, v61);
LABEL_29:
    sub_1E0FEDC50(v38, v63, &qword_1ECE88C78, &qword_1E10B5E50);
    if ((*(v59 + 48))(v57, 1, v58) != 1)
    {
      sub_1E0FF0440(v57, &qword_1ECE8B188, &unk_1E10BA680);
    }

    return sub_1E0FF0440(v38, &qword_1ECE88C78, &qword_1E10B5E50);
  }
}

uint64_t sub_1E1082390()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10823DC(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

unint64_t sub_1E1082428()
{
  result = qword_1ECE8B158;
  if (!qword_1ECE8B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B158);
  }

  return result;
}

unint64_t sub_1E108248C()
{
  result = qword_1ECE8B160;
  if (!qword_1ECE8B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B160);
  }

  return result;
}

unint64_t sub_1E10824F0()
{
  result = qword_1ECE8B168;
  if (!qword_1ECE8B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B168);
  }

  return result;
}

uint64_t sub_1E1082544()
{
  v2 = *v0;
  v1 = v0[1];
  v53 = v0[4];
  v3 = v53 + 64;
  v50 = v53;
  v4 = 1 << *(v53 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v53 + 64);
  sub_1E0FEDC50(&v53, &v51, &qword_1ECE8B180, &qword_1E10BA678);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v48 = v2;
  v10 = v2;
  v46 = v1;
  if (v6)
  {
    while (1)
    {
      v11 = v9;
LABEL_9:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (*(v50 + 48) + ((v11 << 10) | (16 * v12)));
      v15 = *v13;
      v14 = v13[1];
      v51 = v10;
      v52 = v1;

      MEMORY[0x1E12ED840](v15, v14);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      sub_1E106931C();
      v10 = sub_1E10AE50C();
      v17 = v16;

      v1 = v17;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  v18 = v50;

  v51 = v10;
  v52 = v1;
  sub_1E106931C();
  v19 = sub_1E10AE51C();

  if (v19)
  {
    v20 = 1 << *(v50 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v50 + 64);
    sub_1E0FEDC50(&v53, &v51, &qword_1ECE8B180, &qword_1E10BA678);
    v23 = (v20 + 63) >> 6;
    v24 = v46;

    for (i = 0; v22; result = )
    {
      v26 = i;
LABEL_20:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (*(v50 + 48) + ((v26 << 10) | (16 * v27)));
      v29 = *v28;
      v30 = v28[1];
      v51 = v48;
      v52 = v24;

      MEMORY[0x1E12ED840](v29, v30);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      v48 = sub_1E10AE50C();
      v24 = v31;
    }

    while (1)
    {
      v26 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v18 = v50;

        v51 = v48;
        v52 = v24;
        v32 = sub_1E10AE51C();

        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }

        v33 = 1;
        return v33 & 1;
      }

      v22 = *(v3 + 8 * v26);
      ++i;
      if (v22)
      {
        i = v26;
        goto LABEL_20;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

LABEL_24:
  v34 = *(v47 + 24);
  if (v34)
  {
    v49 = *(v47 + 16);
    v35 = 1 << *(v18 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v18 + 64);
    sub_1E0FEDC50(&v53, &v51, &qword_1ECE8B180, &qword_1E10BA678);

    for (j = 0; v37; result = )
    {
      v39 = v34;
      v40 = j;
LABEL_33:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = (*(v50 + 48) + ((v40 << 10) | (16 * v41)));
      v44 = *v42;
      v43 = v42[1];
      v51 = v49;
      v52 = v39;

      MEMORY[0x1E12ED840](v44, v43);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      v49 = sub_1E10AE50C();
      v34 = v45;
    }

    while (1)
    {
      v40 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_42;
      }

      if (v40 >= ((v35 + 63) >> 6))
      {

        v51 = v49;
        v52 = v34;
        if (sub_1E10AE51C())
        {
          v51 = v49;
          v52 = v34;
          v33 = sub_1E10AE51C();

          return v33 & 1;
        }

        break;
      }

      v37 = *(v3 + 8 * v40);
      ++j;
      if (v37)
      {
        v39 = v34;
        j = v40;
        goto LABEL_33;
      }
    }
  }

  v33 = 0;
  return v33 & 1;
}

unint64_t sub_1E1082B74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1E1017200(MEMORY[0x1E69E7CC0]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = result;
  return result;
}

unint64_t sub_1E1082BBC()
{
  result = qword_1ECE8B170;
  if (!qword_1ECE8B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B170);
  }

  return result;
}

unint64_t sub_1E1082C14()
{
  result = qword_1ECE8B178;
  if (!qword_1ECE8B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B178);
  }

  return result;
}

uint64_t sub_1E1082CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = sub_1E10AE57C();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v18 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = sub_1E108D19C(v8, v9, *(a1 + 36), 0, a1);
    v14 = v13;
    v15 = sub_1E10ADCFC();
    (*(*(v15 - 8) + 32))(a2, v8, v15);
    v16 = (a2 + *(v4 + 48));
    *v16 = v12;
    v16[1] = v14;
    return (*(v18 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1E1082E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  v15 = sub_1E10AE57C();
  if (v15 == 1 << *(a1 + 32))
  {
    v16 = *(v21 + 56);

    return v16(a6, 1, 1, v10);
  }

  else
  {
    v18 = *(v10 + 48);
    *a6 = sub_1E108D0C4(&v14[v18], v15, *(a1 + 36), 0, a1, a4, a5);
    a6[1] = v19;
    sub_1E0FEDEF4(&v14[v18], a6 + *(v10 + 48), a4, a5);
    return (*(v21 + 56))(a6, 0, 1, v10);
  }
}

uint64_t (*ShazamEventsService.serviceDelegate.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate;
  a1[2] = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return sub_1E1083150;
}

uint64_t ShazamEventsService.event(identifier:requestTypes:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  sub_1E0FE5278(&unk_1E10BA6A8, v10);
}

uint64_t sub_1E108326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1083294, 0, 0);
}

uint64_t sub_1E1083294()
{
  v1 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v2 = swift_allocObject();
  v0[14] = v2;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v2[19] = sub_1E107A498(2);
  v2[14] = v1;
  v2[17] = &type metadata for EventsRemoteConfiguration;
  v2[18] = &off_1F5BF1318;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E108339C;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  return sub_1E101B6FC(v6, v4, v5);
}

uint64_t sub_1E108339C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1E1083588;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = sub_1E10834CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E10834CC()
{
  super_class = v0[8].super_class;
  receiver = v0[6].receiver;
  v3 = type metadata accessor for EventXPCValueContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value];
  *v5 = super_class;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v0[3].receiver = v4;
  v0[3].super_class = v3;
  v6 = objc_msgSendSuper2(v0 + 3, sel_init);
  receiver();

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_1E1083588()
{
  receiver = v0[8].receiver;
  v2 = v0[6].receiver;

  v0[4].receiver = receiver;
  v3 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v0[1].receiver;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    super_class = v0[1].super_class;
  }

  else
  {
    super_class = 0;
  }

  v7 = type metadata accessor for EventXPCValueContainer();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value];
  *v9 = v5;
  *(v9 + 1) = super_class;
  v9[16] = 1;
  v0[2].receiver = v8;
  v0[2].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 2, sel_init);
  v2();

  v11 = v0->super_class;

  return v11();
}

uint64_t sub_1E10836B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E0FE6540;

  return sub_1E108326C(v2, v3, v4, v5, v6);
}

uint64_t sub_1E10838EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[114] = a6;
  v6[113] = a5;
  v6[112] = a4;
  v6[111] = a3;
  v6[110] = a2;
  v6[109] = a1;
  sub_1E10ADE9C();
  v6[115] = swift_task_alloc();
  v7 = sub_1E10ADEBC();
  v6[116] = v7;
  v6[117] = *(v7 - 8);
  v6[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v8 = sub_1E10ADC1C();
  v6[121] = v8;
  v6[122] = *(v8 - 8);
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v9 = sub_1E10ADCBC();
  v6[127] = v9;
  v6[128] = *(v9 - 8);
  v6[129] = swift_task_alloc();
  v10 = sub_1E10ADBBC();
  v6[130] = v10;
  v6[131] = *(v10 - 8);
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B210, &unk_1E10BA778);
  v6[135] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[136] = v11;
  v6[137] = *(v11 - 8);
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788);
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1083CA0, 0, 0);
}

uint64_t sub_1E1083CA0()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[112];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[146] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1083DEC, v7, 0);
}

uint64_t sub_1E1083DEC()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  sub_1E1082CB8(v0[111], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[135];
    v5 = &unk_1ECE8B210;
    v6 = &unk_1E10BA778;
    goto LABEL_3;
  }

  v10 = v0[139];
  v11 = v0[138];
  v12 = v0[136];
  sub_1E0FEDEF4(v0[135], v10, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FEDC50(v10, v11, &qword_1ECE89878, &unk_1E10B6A20);
  v13 = sub_1E10A215C(*(v11 + *(v12 + 48)), *(v11 + *(v12 + 48) + 8));
  v14 = sub_1E10ADCFC();
  v0[147] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v0[148] = v16;
  v0[149] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v14);
  if (v13)
  {
    if (v13 != 1)
    {
      if (v13 != 8)
      {
        v7 = v0[145];
        v8 = v0[144];
        v17 = v0[139];

        sub_1E0FF0440(v17, &qword_1ECE89878, &unk_1E10B6A20);
        goto LABEL_4;
      }

      v4 = v0[139];
      v5 = &qword_1ECE89878;
      v6 = &unk_1E10B6A20;
LABEL_3:
      sub_1E0FF0440(v4, v5, v6);
      v7 = v0[145];
      v8 = v0[144];

LABEL_4:
      sub_1E0FF0440(v8, &unk_1ECE8B220, &qword_1E10BA788);
      sub_1E0FF0440(v7, &unk_1ECE8B220, &qword_1E10BA788);
      v0[173] = MEMORY[0x1E69E7CC0];
      v9 = sub_1E10855D4;
      goto LABEL_5;
    }

    v9 = sub_1E10841FC;
  }

  else
  {
    v9 = sub_1E1084020;
  }

LABEL_5:

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E1084020()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1168) + 112), *(*(v0 + 1168) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1200) = v2;
  *v2 = v0;
  v2[1] = sub_1E10840C4;

  return sub_1E1061774(v1);
}

uint64_t sub_1E10840C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[151] = a1;
  v4[152] = a2;
  v4[153] = v2;

  if (v2)
  {
    v4[175] = v2;
    v5 = v4[146];
    v6 = sub_1E10859F8;
  }

  else
  {
    v6 = sub_1E10843D8;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E10841FC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1168) + 112), *(*(v0 + 1168) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1232) = v2;
  *v2 = v0;
  v2[1] = sub_1E10842A0;

  return sub_1E1061AF8(v1);
}

uint64_t sub_1E10842A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[155] = a1;
  v4[156] = a2;
  v4[157] = v2;

  if (v2)
  {
    v4[189] = v2;
    v5 = v4[146];
    v6 = sub_1E10867D4;
  }

  else
  {
    v6 = sub_1E1085AC4;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E10843D8()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[110];
  v6 = v0[109];
  v0[158] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = 0x6469747369747261;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[159] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v39 = v8;
    v11 = v0[128];
    v37 = v0[129];
    v38 = v0[127];
    v12 = v0[126];
    v13 = v0[125];
    v14 = v0[124];
    v15 = v0[123];
    v16 = v0[122];
    v17 = v0[121];
    v18 = (*(v11 + 32))();
    MEMORY[0x1E12ED140](v18);
    sub_1E10ADBFC();
    v19 = *(v16 + 8);
    v19(v15, v17);
    sub_1E10ADC0C();
    v19(v14, v17);
    sub_1E10ADBEC();
    v19(v13, v17);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v19(v12, v17);
    (*(v11 + 8))(v37, v38);
    v8 = v39;
    v9 = v0[104];
    v10 = v0[105];
  }

  v0[161] = v10;
  v0[160] = v9;
  v20 = v0[142];
  v21 = v0[127];
  sub_1E0FEDC50(v0[144], v20, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v20, 1, v21) == 1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = v0[129];
    v25 = v0[128];
    v40 = v0[127];
    v26 = v0[126];
    v27 = v0[125];
    v28 = v0[124];
    v29 = v0[123];
    v30 = v0[122];
    v31 = v0[121];
    v32 = (*(v25 + 32))(v24, v0[142]);
    MEMORY[0x1E12ED140](v32);
    sub_1E10ADBFC();
    v33 = *(v30 + 8);
    v33(v29, v31);
    sub_1E10ADC0C();
    v33(v28, v31);
    sub_1E10ADBEC();
    v33(v27, v31);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v33(v26, v31);
    (*(v25 + 8))(v24, v40);
    v22 = v0[102];
    v23 = v0[103];
  }

  v0[163] = v23;
  v0[162] = v22;
  v34 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[164] = v34;
  v0[10] = v0;
  v0[15] = v0 + 100;
  v0[11] = sub_1E10848D0;
  v35 = swift_continuation_init();
  v0[77] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[74] = v35;
  v0[70] = MEMORY[0x1E69E9820];
  v0[71] = 1107296256;
  v0[72] = sub_1E105FFCC;
  v0[73] = &block_descriptor_92;
  [v34 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E10848D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E10849B0, 0, 0);
}

uint64_t sub_1E10849B0()
{
  v20 = v0;
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  v4 = v0[161];
  v5 = v0[160];
  v17 = v0[159];
  v18 = v0[153];
  v6 = sub_1E10AE07C();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E10BA690;
  *(v9 + 32) = 0x6F726665726F7473;
  *(v9 + 40) = 0xEA0000000000746ELL;
  *(v9 + 48) = v6;
  *(v9 + 56) = v8;
  *(v9 + 64) = 0x657461646D6F7266;
  *(v9 + 72) = 0xE800000000000000;
  *(v9 + 80) = v5;
  *(v9 + 88) = v4;
  *(v9 + 96) = 0x657461646F74;
  *(v9 + 104) = 0xE600000000000000;
  *(v9 + 112) = v3;
  *(v9 + 120) = v2;
  *(v9 + 128) = 0x74696D696CLL;
  *(v9 + 136) = 0xE500000000000000;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0xE000000000000000;
  *(v9 + 160) = 0x74657366666FLL;
  *(v9 + 168) = 0xE600000000000000;
  *(v9 + 176) = 0;
  *(v9 + 184) = 0xE000000000000000;
  v10 = sub_1E1017200(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v17;
  sub_1E108D4E0(v10, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v19);

  if (v18)
  {
  }

  else
  {
    v0[108] = v19;
    v13 = sub_1E1062A58();
    if (v14)
    {
      sub_1E1074334(v13, v14, 1735287148, 0xE400000000000000);
    }

    v15 = *__swift_project_boxed_opaque_existential_1((v0[146] + 112), *(v0[146] + 136));
    v16 = swift_task_alloc();
    v0[165] = v16;
    *v16 = v0;
    v16[1] = sub_1E1084C48;

    return sub_1E1060034(v15);
  }
}

uint64_t sub_1E1084C48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[166] = a1;
  v4[167] = a2;
  v4[168] = v2;

  if (v2)
  {

    v5 = sub_1E1084FC0;
  }

  else
  {
    v5 = sub_1E1084D6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1084D6C()
{
  v1 = v0[108];
  if (v0[151])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[152] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[152];

    v3 = v0[151];
  }

  v5 = v0[167];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[120];
  v0[83] = v0[166];
  v0[84] = v5;
  v0[85] = v3;
  v0[86] = v4;
  v0[87] = v1;
  sub_1E1081D8C(v8);

  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = v0[118];
    v10 = v0[117];
    v11 = v0[116];
    sub_1E0FF0440(v0[120], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1E10ADB6C();
    v12 = sub_1E10ADEAC();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v0[175] = v12;
    v13 = v0[146];
    v14 = sub_1E10859F8;
  }

  else
  {
    v15 = v0[146];
    v16 = v0[133];
    v17 = v0[131];
    v18 = v0[130];
    v19 = v0[120];
    v20 = *(v17 + 32);
    v0[169] = v20;
    v0[170] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v19, v18);

    v14 = sub_1E1085030;
    v13 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E1084FC0()
{

  v0[175] = v0[168];
  v1 = v0[146];

  return MEMORY[0x1EEE6DFA0](sub_1E10859F8, v1, 0);
}

uint64_t sub_1E1085030()
{
  (*(v0 + 1352))(*(v0 + 1072), *(v0 + 1064), *(v0 + 1040));
  v1 = swift_task_alloc();
  *(v0 + 1368) = v1;
  *v1 = v0;
  v1[1] = sub_1E10850E4;
  v2 = *(v0 + 1072);

  return sub_1E101C960(v0 + 256, v2);
}

uint64_t sub_1E10850E4()
{
  v2 = *v1;
  *(*v1 + 1376) = v0;

  v3 = *(v2 + 1168);
  if (v0)
  {
    v4 = sub_1E10854DC;
  }

  else
  {
    v4 = sub_1E1085210;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E1085210()
{
  v31 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 336);
  *(v0 + 208) = *(v0 + 320);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 352);
  v3 = *(v0 + 272);
  *(v0 + 144) = *(v0 + 256);
  *(v0 + 160) = v3;
  v4 = *(v0 + 304);
  *(v0 + 176) = *(v0 + 288);
  *(v0 + 192) = v4;
  sub_1E1035A94(v29);
  if (v1)
  {
    v5 = *(v0 + 1160);
    v6 = *(v0 + 1152);
    v7 = *(v0 + 1112);
    v8 = *(v0 + 1072);
    v9 = *(v0 + 1048);
    v10 = *(v0 + 1040);
    sub_1E0FF0440(v0 + 144, &qword_1ECE89880, &qword_1E10B39F8);

    (*(v9 + 8))(v8, v10);
    sub_1E0FF0440(v7, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v6, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v5, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1392) = v1;
    v11 = sub_1E10857B8;
  }

  else
  {
    v12 = *(v0 + 1184);
    v13 = *(v0 + 1176);
    v28 = *(v0 + 1160);
    v27 = *(v0 + 1152);
    v14 = *(v0 + 1112);
    v15 = *(v0 + 1104);
    v16 = *(v0 + 1048);
    v25 = *(v0 + 1040);
    v26 = *(v0 + 1072);
    sub_1E0FF0440(v0 + 144, &qword_1ECE89880, &qword_1E10B39F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B290, &qword_1E10BA7C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E10B2E70;
    sub_1E0FEDC50(v14, v15, &qword_1ECE89878, &unk_1E10B6A20);

    v18 = sub_1E10ADCDC();
    v20 = v19;
    v12(v15, v13);
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = v29[5];
    *(v17 + 112) = v29[4];
    *(v17 + 128) = v21;
    *(v17 + 144) = v29[6];
    *(v17 + 160) = v30;
    v22 = v29[1];
    *(v17 + 48) = v29[0];
    *(v17 + 64) = v22;
    v23 = v29[3];
    *(v17 + 80) = v29[2];
    *(v17 + 96) = v23;

    (*(v16 + 8))(v26, v25);
    sub_1E0FF0440(v14, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v27, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v28, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1384) = v17;
    v11 = sub_1E10855D4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E10854DC()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[139];
  v4 = v0[134];
  v5 = v0[131];
  v6 = v0[130];

  (*(v5 + 8))(v4, v6);
  sub_1E0FF0440(v3, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[172];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E10855D4()
{
  super_class = v0[86].super_class;
  v2 = v0[56].super_class;
  v3 = type metadata accessor for ParticipantScheduleXPCValueContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12ShazamEvents36ParticipantScheduleXPCValueContainer_value];
  *v5 = super_class;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v0[44].receiver = v4;
  v0[44].super_class = v3;
  v6 = objc_msgSendSuper2(v0 + 44, sel_init);
  v2();

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_1E10857B8()
{
  receiver = v0[87].receiver;
  super_class = v0[56].super_class;
  v0[53].receiver = receiver;
  v3 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v0[45].receiver;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[45].super_class;
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for ParticipantScheduleXPCValueContainer();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12ShazamEvents36ParticipantScheduleXPCValueContainer_value];
  *v9 = v5;
  *(v9 + 1) = v6;
  v9[16] = 1;
  v0[46].receiver = v8;
  v0[46].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 46, sel_init);
  super_class();

  v11 = v0->super_class;

  return v11();
}

uint64_t sub_1E10859F8()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[139];

  sub_1E0FF0440(v3, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[175];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E1085AC4()
{
  v1 = v0[145];
  v2 = v0[141];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[110];
  v6 = v0[109];
  v0[176] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  strcpy((inited + 32), "competitorid");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[177] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v39 = v8;
    v11 = v0[128];
    v37 = v0[129];
    v38 = v0[127];
    v12 = v0[126];
    v13 = v0[125];
    v14 = v0[124];
    v15 = v0[123];
    v16 = v0[122];
    v17 = v0[121];
    v18 = (*(v11 + 32))();
    MEMORY[0x1E12ED140](v18);
    sub_1E10ADBFC();
    v19 = *(v16 + 8);
    v19(v15, v17);
    sub_1E10ADC0C();
    v19(v14, v17);
    sub_1E10ADBEC();
    v19(v13, v17);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v19(v12, v17);
    (*(v11 + 8))(v37, v38);
    v8 = v39;
    v9 = v0[98];
    v10 = v0[99];
  }

  v0[179] = v10;
  v0[178] = v9;
  v20 = v0[140];
  v21 = v0[127];
  sub_1E0FEDC50(v0[144], v20, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v20, 1, v21) == 1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = v0[129];
    v25 = v0[128];
    v40 = v0[127];
    v26 = v0[126];
    v27 = v0[125];
    v28 = v0[124];
    v29 = v0[123];
    v30 = v0[122];
    v31 = v0[121];
    v32 = (*(v25 + 32))(v24, v0[140]);
    MEMORY[0x1E12ED140](v32);
    sub_1E10ADBFC();
    v33 = *(v30 + 8);
    v33(v29, v31);
    sub_1E10ADC0C();
    v33(v28, v31);
    sub_1E10ADBEC();
    v33(v27, v31);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v33(v26, v31);
    (*(v25 + 8))(v24, v40);
    v22 = v0[96];
    v23 = v0[97];
  }

  v0[181] = v23;
  v0[180] = v22;
  v34 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[182] = v34;
  v0[2] = v0;
  v0[7] = v0 + 94;
  v0[3] = sub_1E1085FC0;
  v35 = swift_continuation_init();
  v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[54] = MEMORY[0x1E69E9820];
  v0[55] = 1107296256;
  v0[56] = sub_1E105FFCC;
  v0[57] = &block_descriptor_86;
  v0[58] = v35;
  [v34 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1085FC0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E10860A0, 0, 0);
}

uint64_t sub_1E10860A0()
{
  v20 = v0;
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[178];
  v17 = v0[177];
  v18 = v0[157];
  v6 = sub_1E10AE07C();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E10BA690;
  *(v9 + 32) = 0x6F726665726F7473;
  *(v9 + 40) = 0xEA0000000000746ELL;
  *(v9 + 48) = v6;
  *(v9 + 56) = v8;
  *(v9 + 64) = 0x657461646D6F7266;
  *(v9 + 72) = 0xE800000000000000;
  *(v9 + 80) = v5;
  *(v9 + 88) = v4;
  *(v9 + 96) = 0x657461646F74;
  *(v9 + 104) = 0xE600000000000000;
  *(v9 + 112) = v3;
  *(v9 + 120) = v2;
  *(v9 + 128) = 0x74696D696CLL;
  *(v9 + 136) = 0xE500000000000000;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0xE000000000000000;
  *(v9 + 160) = 0x74657366666FLL;
  *(v9 + 168) = 0xE600000000000000;
  *(v9 + 176) = 0;
  *(v9 + 184) = 0xE000000000000000;
  v10 = sub_1E1017200(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v17;
  sub_1E108D4E0(v10, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v19);

  if (v18)
  {
  }

  else
  {
    v0[107] = v19;
    v13 = sub_1E1062A58();
    if (v14)
    {
      sub_1E1074334(v13, v14, 1735287148, 0xE400000000000000);
    }

    v15 = *__swift_project_boxed_opaque_existential_1((v0[146] + 112), *(v0[146] + 136));
    v16 = swift_task_alloc();
    v0[183] = v16;
    *v16 = v0;
    v16[1] = sub_1E1086338;

    return sub_1E1060034(v15);
  }
}

uint64_t sub_1E1086338(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[184] = a1;
  v4[185] = a2;
  v4[186] = v2;

  if (v2)
  {

    v5 = sub_1E10866B0;
  }

  else
  {
    v5 = sub_1E108645C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E108645C()
{
  v1 = v0[107];
  if (v0[155])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[156] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[156];

    v3 = v0[155];
  }

  v5 = v0[185];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[119];
  v0[78] = v0[184];
  v0[79] = v5;
  v0[80] = v3;
  v0[81] = v4;
  v0[82] = v1;
  sub_1E1081D8C(v8);

  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = v0[118];
    v10 = v0[117];
    v11 = v0[116];
    sub_1E0FF0440(v0[119], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1E10ADB6C();
    v12 = sub_1E10ADEAC();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v0[189] = v12;
    v13 = v0[146];
    v14 = sub_1E10867D4;
  }

  else
  {
    v15 = v0[146];
    v16 = v0[132];
    v17 = v0[131];
    v18 = v0[130];
    v19 = v0[119];
    v20 = *(v17 + 32);
    v0[187] = v20;
    v0[188] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v19, v18);

    v14 = sub_1E1086720;
    v13 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E10866B0()
{

  v0[189] = v0[186];
  v1 = v0[146];

  return MEMORY[0x1EEE6DFA0](sub_1E10867D4, v1, 0);
}

uint64_t sub_1E1086720()
{
  (*(v0 + 1496))(*(v0 + 1072), *(v0 + 1056), *(v0 + 1040));
  v1 = swift_task_alloc();
  *(v0 + 1368) = v1;
  *v1 = v0;
  v1[1] = sub_1E10850E4;
  v2 = *(v0 + 1072);

  return sub_1E101C960(v0 + 256, v2);
}

uint64_t sub_1E10867D4()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[139];

  sub_1E0FF0440(v3, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[189];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E10868A0()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E10838EC(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_1E1086A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[197] = a6;
  v6[196] = a5;
  v6[195] = a4;
  v6[194] = a3;
  v6[193] = a2;
  v6[192] = a1;
  v6[198] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[199] = swift_task_alloc();
  v6[200] = swift_task_alloc();
  v6[201] = swift_task_alloc();
  sub_1E10ADE9C();
  v6[202] = swift_task_alloc();
  v7 = sub_1E10ADEBC();
  v6[203] = v7;
  v6[204] = *(v7 - 8);
  v6[205] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v6[206] = swift_task_alloc();
  v8 = sub_1E10ADC1C();
  v6[207] = v8;
  v6[208] = *(v8 - 8);
  v6[209] = swift_task_alloc();
  v6[210] = swift_task_alloc();
  v6[211] = swift_task_alloc();
  v6[212] = swift_task_alloc();
  v9 = sub_1E10ADCBC();
  v6[213] = v9;
  v6[214] = *(v9 - 8);
  v6[215] = swift_task_alloc();
  v10 = sub_1E10ADBBC();
  v6[216] = v10;
  v6[217] = *(v10 - 8);
  v6[218] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788);
  v6[219] = swift_task_alloc();
  v6[220] = swift_task_alloc();
  v6[221] = swift_task_alloc();
  v6[222] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1086D64, 0, 0);
}

uint64_t sub_1E1086D64()
{
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[214];
  v4 = v0[213];
  v5 = v0[195];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[223] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1086EB0, v7, 0);
}

uint64_t sub_1E1086EB0()
{
  v8 = v0;
  v1 = *(v0 + 1552);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1E1018D54(*(v1 + 16), 0);
    v4 = sub_1E10190FC(&v7, v3 + 4, v2, v1);
    v5 = v7;

    sub_1E1019254(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v7 = v3;
  sub_1E108C644(&v7);
  *(v0 + 1792) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E1086FFC, 0, 0);
}

uint64_t sub_1E1086FFC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1784) + 112), *(*(v0 + 1784) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1800) = v2;
  *v2 = v0;
  v2[1] = sub_1E10870A0;

  return sub_1E10615E4(v1);
}

uint64_t sub_1E10870A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[226] = a1;
  v4[227] = a2;
  v4[228] = v2;

  if (v2)
  {

    v4[245] = v2;
    v5 = v4[223];
    v6 = sub_1E1088C14;
  }

  else
  {
    v6 = sub_1E10871E0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E10871E0()
{
  v1 = v0[224];
  v2 = v0[193];
  v3 = v0[192];
  v0[229] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 32) = 0x64695F65756E6576;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0x707974746E657665;
  *(v4 + 72) = 0xEA00000000007365;
  v5 = *(v1 + 16);
  if (v5)
  {
    v55 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v5, 0);
    v6 = v55;
    v7 = v1 + 40;
    do
    {
      v8 = sub_1E10AE07C();
      v56 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v8;
        v14 = v9;
        sub_1E1059D4C((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v13;
        v6 = v56;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v15 = v0[222];
  v16 = v0[220];
  v17 = v0[214];
  v18 = v0[213];
  v0[190] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B270, &qword_1E10B17E0);
  sub_1E108D7D4();
  v19 = sub_1E10AE01C();
  v21 = v20;

  *(v4 + 80) = v19;
  *(v4 + 88) = v21;
  v0[230] = sub_1E1017200(v4);
  swift_setDeallocating();
  v0[231] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E0FEDC50(v15, v16, &unk_1ECE8B220, &qword_1E10BA788);
  v22 = *(v17 + 48);
  if (v22(v16, 1, v18) == 1)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v53 = v22;
    v25 = v0[214];
    v51 = v0[215];
    v52 = v0[213];
    v26 = v0[212];
    v27 = v0[211];
    v28 = v0[210];
    v29 = v0[209];
    v30 = v0[208];
    v31 = v0[207];
    v32 = (*(v25 + 32))();
    MEMORY[0x1E12ED140](v32);
    sub_1E10ADBFC();
    v33 = *(v30 + 8);
    v33(v29, v31);
    sub_1E10ADC0C();
    v33(v28, v31);
    sub_1E10ADBEC();
    v33(v27, v31);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v33(v26, v31);
    (*(v25 + 8))(v51, v52);
    v22 = v53;
    v23 = v0[187];
    v24 = v0[188];
  }

  v0[233] = v24;
  v0[232] = v23;
  v34 = v0[219];
  v35 = v0[213];
  sub_1E0FEDC50(v0[221], v34, &unk_1ECE8B220, &qword_1E10BA788);
  if (v22(v34, 1, v35) == 1)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v38 = v0[215];
    v39 = v0[214];
    v54 = v0[213];
    v40 = v0[212];
    v41 = v0[211];
    v42 = v0[210];
    v43 = v0[209];
    v44 = v0[208];
    v45 = v0[207];
    v46 = (*(v39 + 32))(v38, v0[219]);
    MEMORY[0x1E12ED140](v46);
    sub_1E10ADBFC();
    v47 = *(v44 + 8);
    v47(v43, v45);
    sub_1E10ADC0C();
    v47(v42, v45);
    sub_1E10ADBEC();
    v47(v41, v45);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v47(v40, v45);
    (*(v39 + 8))(v38, v54);
    v36 = v0[185];
    v37 = v0[186];
  }

  v0[235] = v37;
  v0[234] = v36;
  v48 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[236] = v48;
  v0[2] = v0;
  v0[7] = v0 + 181;
  v0[3] = sub_1E1087828;
  v49 = swift_continuation_init();
  v0[171] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[168] = v49;
  v0[164] = MEMORY[0x1E69E9820];
  v0[165] = 1107296256;
  v0[166] = sub_1E105FFCC;
  v0[167] = &block_descriptor_80_0;
  [v48 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1087828()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1087908, 0, 0);
}

uint64_t sub_1E1087908()
{
  v20 = v0;
  v1 = v0[236];
  v2 = v0[234];
  v3 = v0[233];
  v4 = v0[232];
  v17 = v0[235];
  v5 = v0[230];
  v18 = v0[228];
  v6 = sub_1E10AE07C();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E10BA690;
  *(v9 + 32) = 0x6F726665726F7473;
  *(v9 + 40) = 0xEA0000000000746ELL;
  *(v9 + 48) = v6;
  *(v9 + 56) = v8;
  *(v9 + 64) = 0x657461646D6F7266;
  *(v9 + 72) = 0xE800000000000000;
  *(v9 + 80) = v4;
  *(v9 + 88) = v3;
  *(v9 + 96) = 0x657461646F74;
  *(v9 + 104) = 0xE600000000000000;
  *(v9 + 112) = v2;
  *(v9 + 120) = v17;
  *(v9 + 128) = 0x74696D696CLL;
  *(v9 + 136) = 0xE500000000000000;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0xE000000000000000;
  *(v9 + 160) = 0x74657366666FLL;
  *(v9 + 168) = 0xE600000000000000;
  *(v9 + 176) = 0;
  *(v9 + 184) = 0xE000000000000000;
  v10 = sub_1E1017200(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v5;
  sub_1E108D4E0(v10, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v19);

  if (v18)
  {
  }

  else
  {
    v0[191] = v19;
    v13 = sub_1E1062A58();
    if (v14)
    {
      sub_1E1074334(v13, v14, 1735287148, 0xE400000000000000);
    }

    v15 = *__swift_project_boxed_opaque_existential_1((v0[223] + 112), *(v0[223] + 136));
    v16 = swift_task_alloc();
    v0[237] = v16;
    *v16 = v0;
    v16[1] = sub_1E1087B94;

    return sub_1E1060034(v15);
  }
}

uint64_t sub_1E1087B94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[238] = a1;
  v4[239] = a2;
  v4[240] = v2;

  if (v2)
  {

    v5 = sub_1E1087F64;
  }

  else
  {
    v5 = sub_1E1087CB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1087CB8()
{
  v1 = v0[191];
  if (v0[226])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[227] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[227];

    v3 = v0[226];
  }

  v5 = v0[239];
  v6 = v0[217];
  v7 = v0[216];
  v8 = v0[206];
  v0[172] = v0[238];
  v0[173] = v5;
  v0[174] = v3;
  v0[175] = v4;
  v0[176] = v1;
  sub_1E1081D8C(v8);

  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = v0[205];
    v10 = v0[204];
    v11 = v0[203];
    sub_1E0FF0440(v0[206], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1E10ADB6C();
    v12 = sub_1E10ADEAC();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v0[245] = v12;
    v13 = v0[223];

    return MEMORY[0x1EEE6DFA0](sub_1E1088C14, v13, 0);
  }

  else
  {
    (*(v0[217] + 32))(v0[218], v0[206], v0[216]);

    v14 = swift_task_alloc();
    v0[241] = v14;
    *v14 = v0;
    v14[1] = sub_1E1087FD4;
    v15 = v0[218];

    return sub_1E101CF18((v0 + 150), v15);
  }
}

uint64_t sub_1E1087F64()
{

  v0[245] = v0[240];
  v1 = v0[223];

  return MEMORY[0x1EEE6DFA0](sub_1E1088C14, v1, 0);
}

uint64_t sub_1E1087FD4()
{
  v2 = *v1;
  *(*v1 + 1936) = v0;

  v3 = *(v2 + 1784);
  if (v0)
  {
    v4 = sub_1E1088694;
  }

  else
  {
    v4 = sub_1E1088100;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E1088100()
{
  v1 = *(v0 + 1936);
  *(v0 + 1136) = *(v0 + 1248);
  *(v0 + 1152) = *(v0 + 1264);
  *(v0 + 1168) = *(v0 + 1280);
  *(v0 + 1184) = *(v0 + 1296);
  *(v0 + 1088) = *(v0 + 1200);
  *(v0 + 1104) = *(v0 + 1216);
  *(v0 + 1120) = *(v0 + 1232);
  v2 = sub_1E102F05C((v0 + 768));
  if (v1)
  {
    v3 = *(v0 + 1776);
    v4 = *(v0 + 1768);
    v5 = *(v0 + 1744);
    v6 = *(v0 + 1736);
    v7 = *(v0 + 1728);
    sub_1E0FF0440(v0 + 1088, &qword_1ECE8B280, &qword_1E10BA7B0);

    (*(v6 + 8))(v5, v7);
    sub_1E0FF0440(v4, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1952) = v1;
    v8 = sub_1E10889DC;
LABEL_27:
    isUniquelyReferenced_nonNull_native = v8;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v66 = *(v0 + 1584);
    v9 = *(v0 + 1552);
    v10 = v2;
    sub_1E0FF0440(v0 + 1088, &qword_1ECE8B280, &qword_1E10BA7B0);
    v11 = *(v0 + 864);
    *(v0 + 1040) = *(v0 + 880);
    v12 = *(v0 + 912);
    *(v0 + 1056) = *(v0 + 896);
    *(v0 + 1072) = v12;
    v13 = *(v0 + 816);
    *(v0 + 960) = *(v0 + 800);
    *(v0 + 976) = v13;
    v14 = *(v0 + 848);
    *(v0 + 992) = *(v0 + 832);
    *(v0 + 1008) = v14;
    *(v0 + 1024) = v11;
    v15 = *(v0 + 784);
    *(v0 + 928) = *(v0 + 768);
    *(v0 + 944) = v15;
    v16 = v9 + 64;
    v17 = -1;
    v18 = -1 << *(v9 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & *(v9 + 64);
    v20 = (63 - v18) >> 6;
    v65 = v9;

    v24 = 0;
    v67 = v10;
    v59 = (v10 + 40);
    v62 = MEMORY[0x1E69E7CC0];
    v63 = v20;
    *(v0 + 1944) = MEMORY[0x1E69E7CC0];
    for (i = v9 + 64; v19; v16 = i)
    {
LABEL_13:
      v26 = *(v0 + 1608);
      v27 = *(v0 + 1600);
      v28 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v29 = v28 | (v24 << 6);
      v30 = *(v65 + 48);
      v31 = sub_1E10ADCFC();
      v32 = *(v31 - 8);
      v33 = v30 + *(v32 + 72) * v29;
      v34 = v31;
      (*(v32 + 16))(v26, v33, v31);
      v35 = (*(v65 + 56) + 16 * v29);
      v36 = *v35;
      v37 = v35[1];
      v38 = (v26 + *(v66 + 48));
      *v38 = v36;
      v38[1] = v37;
      sub_1E0FEDC50(v26, v27, &qword_1ECE89878, &unk_1E10B6A20);

      v39 = sub_1E10AE74C();

      if (v39 >= 8)
      {
        (*(v32 + 8))(*(v0 + 1600), v34);
      }

      else
      {
        v60 = *(v32 + 8);
        v61 = v34;
        isUniquelyReferenced_nonNull_native = v60(*(v0 + 1600), v34);
        v40 = *(v67 + 2);
        if (v40)
        {
          v41 = 0;
          v42 = v59;
          while (v41 < *(v67 + 2))
          {
            v43 = *(v42 - 1);
            v44 = *v42;

            if (sub_1E109C394(v39, v43, v44))
            {
              v45 = *(v0 + 1608);
              v46 = *(v0 + 1592);
              sub_1E0FEDC50(v45, v46, &qword_1ECE89878, &unk_1E10B6A20);

              v47 = sub_1E10ADCDC();
              v58 = v48;
              sub_1E0FF0440(v45, &qword_1ECE89878, &unk_1E10B6A20);
              v60(v46, v61);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_1E1058CB8(0, *(v62 + 16) + 1, 1, v62);
                v62 = isUniquelyReferenced_nonNull_native;
              }

              v16 = i;
              v50 = *(v62 + 16);
              v49 = *(v62 + 24);
              if (v50 >= v49 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_1E1058CB8((v49 > 1), v50 + 1, 1, v62);
                v62 = isUniquelyReferenced_nonNull_native;
              }

              *(v62 + 16) = v50 + 1;
              v51 = v62 + 32 * v50;
              *(v51 + 32) = v47;
              *(v51 + 40) = v58;
              *(v51 + 48) = v43;
              *(v51 + 56) = v44;
              *(v0 + 1944) = v62;
              v20 = v63;
              if (v19)
              {
                goto LABEL_13;
              }

              goto LABEL_9;
            }

            ++v41;
            v42 += 16;
            if (v40 == v41)
            {
              goto LABEL_8;
            }
          }

          goto LABEL_31;
        }
      }

LABEL_8:
      isUniquelyReferenced_nonNull_native = sub_1E0FF0440(*(v0 + 1608), &qword_1ECE89878, &unk_1E10B6A20);
      v20 = v63;
    }

LABEL_9:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        v52 = *(v0 + 1776);
        v53 = *(v0 + 1768);
        v54 = *(v0 + 1744);
        v55 = *(v0 + 1736);
        v56 = *(v0 + 1728);

        (*(v55 + 8))(v54, v56);
        sub_1E0FF0440(v53, &unk_1ECE8B220, &qword_1E10BA788);
        sub_1E0FF0440(v52, &unk_1ECE8B220, &qword_1E10BA788);

        v8 = sub_1E1088770;
        goto LABEL_27;
      }

      v19 = *(v16 + 8 * v25);
      ++v24;
      if (v19)
      {
        v24 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](isUniquelyReferenced_nonNull_native, v22, v23);
}

uint64_t sub_1E1088694()
{
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];

  (*(v4 + 8))(v3, v5);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[244] = v0[242];

  return MEMORY[0x1EEE6DFA0](sub_1E10889DC, 0, 0);
}

uint64_t sub_1E1088770()
{
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1040);
  *(v0 + 528) = *(v0 + 1024);
  *(v0 + 544) = v3;
  v4 = *(v0 + 1072);
  *(v0 + 560) = *(v0 + 1056);
  *(v0 + 576) = v4;
  v5 = *(v0 + 976);
  *(v0 + 464) = *(v0 + 960);
  *(v0 + 480) = v5;
  v6 = *(v0 + 1008);
  *(v0 + 496) = *(v0 + 992);
  *(v0 + 512) = v6;
  v7 = *(v0 + 944);
  *(v0 + 432) = *(v0 + 928);
  *(v0 + 448) = v7;
  *(v0 + 592) = v1;
  sub_1E0FEDC50(v0 + 432, v0 + 600, &qword_1ECE8B288, &qword_1E10BA7B8);

  sub_1E0FEDAB8(v0 + 928);
  v8 = *(v0 + 1040);
  *(v0 + 352) = *(v0 + 1024);
  *(v0 + 368) = v8;
  v9 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v9;
  v10 = *(v0 + 976);
  *(v0 + 288) = *(v0 + 960);
  *(v0 + 304) = v10;
  v11 = *(v0 + 1008);
  *(v0 + 320) = *(v0 + 992);
  *(v0 + 336) = v11;
  v12 = *(v0 + 944);
  *(v0 + 256) = *(v0 + 928);
  *(v0 + 272) = v12;
  *(v0 + 416) = v1;
  sub_1E108D838(v0 + 256);
  v13 = type metadata accessor for VenueScheduleXPCValueContainer();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value];
  v17 = *(v0 + 272);
  v16 = *(v0 + 288);
  *v15 = *(v0 + 256);
  v18 = *(v0 + 368);
  v19 = *(v0 + 384);
  v20 = *(v0 + 400);
  *(v15 + 153) = *(v0 + 409);
  *(v15 + 8) = v19;
  *(v15 + 9) = v20;
  *(v15 + 7) = v18;
  v21 = *(v0 + 304);
  v22 = *(v0 + 320);
  v23 = *(v0 + 352);
  *(v15 + 5) = *(v0 + 336);
  *(v15 + 6) = v23;
  *(v15 + 3) = v21;
  *(v15 + 4) = v22;
  *(v15 + 1) = v17;
  *(v15 + 2) = v16;
  *(v0 + 1464) = v14;
  *(v0 + 1472) = v13;
  v24 = objc_msgSendSuper2((v0 + 1464), sel_init);
  v2();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1E10889DC()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1568);
  *(v0 + 1512) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 1416);
  v6 = *(v0 + 1424);
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
  }

  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  sub_1E108D7C8(v0 + 80);
  v7 = type metadata accessor for VenueScheduleXPCValueContainer();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value];
  v10 = *(v0 + 233);
  v12 = *(v0 + 208);
  v11 = *(v0 + 224);
  *(v9 + 7) = *(v0 + 192);
  *(v9 + 8) = v12;
  *(v9 + 9) = v11;
  *(v9 + 153) = v10;
  v14 = *(v0 + 160);
  v13 = *(v0 + 176);
  v15 = *(v0 + 144);
  *(v9 + 3) = *(v0 + 128);
  *(v9 + 4) = v15;
  *(v9 + 5) = v14;
  *(v9 + 6) = v13;
  v17 = *(v0 + 96);
  v16 = *(v0 + 112);
  *v9 = *(v0 + 80);
  *(v9 + 1) = v17;
  *(v9 + 2) = v16;
  *(v0 + 1432) = v8;
  *(v0 + 1440) = v7;
  v18 = objc_msgSendSuper2((v0 + 1432), sel_init);
  v2();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E1088C14()
{
  v1 = v0[222];
  v2 = v0[221];

  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[244] = v0[245];

  return MEMORY[0x1EEE6DFA0](sub_1E10889DC, 0, 0);
}

uint64_t sub_1E1088CC4()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E1086A44(v4, v5, v6, v0 + v3, v8, v9);
}

void sub_1E1088E48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a1;
  v37 = a8;
  v34 = a5;
  v35 = a7;
  v38 = a9;
  v39 = a10;
  v11 = sub_1E10ADCBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(a6);
  v22 = sub_1E10AE05C();
  v32 = v23;
  v33 = v22;
  sub_1E10ADCFC();
  sub_1E108D780(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v24 = sub_1E10ADFDC();
  sub_1E10ADC8C();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = v36;
  v35 = *&v36[OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator];
  (*(v12 + 16))(v16, v20, v11);
  v27 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v28 = swift_allocObject();
  v29 = v32;
  *(v28 + 2) = v33;
  *(v28 + 3) = v29;
  *(v28 + 4) = v24;
  (*(v12 + 32))(&v28[v27], v16, v11);
  v30 = &v28[(v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v38;
  v30[1] = v25;
  v31 = v26;

  sub_1E0FE5278(v39, v28);

  (*(v12 + 8))(v20, v11);
}

uint64_t sub_1E10890DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a8;
  v23[0] = a1;
  v23[1] = a7;
  v12 = sub_1E10ADCBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a4, v12);
  v18 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v23[0];
  *(v20 + 3) = a2;
  *(v20 + 4) = a3;
  (*(v13 + 32))(&v20[v18], v17, v12);
  v21 = &v20[v19];
  *v21 = v24;
  v21[1] = a6;

  sub_1E0FE5278(v25, v20);
}

uint64_t sub_1E1089268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[131] = a6;
  v6[130] = a5;
  v6[129] = a4;
  v6[128] = a3;
  v6[127] = a2;
  v6[126] = a1;
  sub_1E10ADE9C();
  v6[132] = swift_task_alloc();
  v7 = sub_1E10ADEBC();
  v6[133] = v7;
  v6[134] = *(v7 - 8);
  v6[135] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v6[136] = swift_task_alloc();
  v8 = sub_1E10ADC1C();
  v6[137] = v8;
  v6[138] = *(v8 - 8);
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v9 = sub_1E10ADCBC();
  v6[143] = v9;
  v6[144] = *(v9 - 8);
  v6[145] = swift_task_alloc();
  v10 = sub_1E10ADBBC();
  v6[146] = v10;
  v6[147] = *(v10 - 8);
  v6[148] = swift_task_alloc();
  v6[149] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B210, &unk_1E10BA778);
  v6[150] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[151] = v11;
  v6[152] = *(v11 - 8);
  v6[153] = swift_task_alloc();
  v6[154] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788);
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E10895EC, 0, 0);
}

uint64_t sub_1E10895EC()
{
  v1 = v0[158];
  v2 = v0[157];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[129];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[159] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1089738, v7, 0);
}

uint64_t sub_1E1089738()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
  sub_1E1082CB8(v0[128], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[150];
    v5 = &unk_1ECE8B210;
    v6 = &unk_1E10BA778;
    goto LABEL_6;
  }

  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[151];
  sub_1E0FEDEF4(v0[150], v7, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FEDC50(v7, v8, &qword_1ECE89878, &unk_1E10B6A20);
  v10 = sub_1E10A215C(*(v8 + *(v9 + 48)), *(v8 + *(v9 + 48) + 8));
  v11 = sub_1E10ADCFC();
  v0[160] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v0[161] = v13;
  v0[162] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v11);
  if (v10 != 1)
  {
    if (v10 != 8)
    {
      v14 = v0[158];
      v15 = v0[157];
      v17 = v0[154];

      sub_1E0FF0440(v17, &qword_1ECE89878, &unk_1E10B6A20);
      goto LABEL_7;
    }

    v4 = v0[154];
    v5 = &qword_1ECE89878;
    v6 = &unk_1E10B6A20;
LABEL_6:
    sub_1E0FF0440(v4, v5, v6);
    v14 = v0[158];
    v15 = v0[157];

LABEL_7:
    sub_1E0FF0440(v15, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v14, &unk_1ECE8B220, &qword_1E10BA788);
    v0[184] = MEMORY[0x1E69E7CC0];
    v16 = sub_1E108AD50;
    goto LABEL_8;
  }

  v16 = sub_1E1089958;
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t sub_1E1089958()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1272) + 112), *(*(v0 + 1272) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1304) = v2;
  *v2 = v0;
  v2[1] = sub_1E10899FC;

  return sub_1E1061C90(v1);
}

uint64_t sub_1E10899FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[164] = a1;
  v4[165] = a2;
  v4[166] = v2;

  if (v2)
  {
    v4[186] = v2;
    v5 = v4[159];
    v6 = sub_1E108B104;
  }

  else
  {
    v6 = sub_1E1089B34;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E1089B34()
{
  v1 = v0[158];
  v2 = v0[156];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[127];
  v6 = v0[126];
  v0[167] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  strcpy((inited + 32), "sportgroupid");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[168] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v40 = v8;
    v11 = v0[144];
    v38 = v0[145];
    v39 = v0[143];
    v12 = v0[142];
    v13 = v0[141];
    v14 = v0[140];
    v15 = v0[139];
    v16 = v0[138];
    v17 = v0[137];
    v18 = (*(v11 + 32))();
    MEMORY[0x1E12ED140](v18);
    sub_1E10ADBFC();
    v19 = *(v16 + 8);
    v19(v15, v17);
    sub_1E10ADC0C();
    v19(v14, v17);
    sub_1E10ADBEC();
    v19(v13, v17);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v19(v12, v17);
    (*(v11 + 8))(v38, v39);
    v8 = v40;
    v9 = v0[121];
    v10 = v0[122];
  }

  v0[170] = v10;
  v0[169] = v9;
  v20 = v0[155];
  v21 = v0[143];
  sub_1E0FEDC50(v0[157], v20, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v20, 1, v21) == 1)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = v0[145];
    v25 = v0[144];
    v41 = v0[143];
    v26 = v0[142];
    v27 = v0[141];
    v28 = v0[140];
    v29 = v0[139];
    v30 = v0[138];
    v31 = v0[137];
    v32 = (*(v25 + 32))(v24, v0[155]);
    MEMORY[0x1E12ED140](v32);
    sub_1E10ADBFC();
    v33 = *(v30 + 8);
    v33(v29, v31);
    sub_1E10ADC0C();
    v33(v28, v31);
    sub_1E10ADBEC();
    v33(v27, v31);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v33(v26, v31);
    (*(v25 + 8))(v24, v41);
    v22 = v0[119];
    v23 = v0[120];
  }

  v0[172] = v23;
  v0[171] = v22;
  v0[124] = 48;
  v0[173] = sub_1E10AE8DC();
  v0[174] = v34;
  v35 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[175] = v35;
  v0[2] = v0;
  v0[7] = v0 + 117;
  v0[3] = sub_1E108A05C;
  v36 = swift_continuation_init();
  v0[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[102] = v36;
  v0[98] = MEMORY[0x1E69E9820];
  v0[99] = 1107296256;
  v0[100] = sub_1E105FFCC;
  v0[101] = &block_descriptor_4;
  [v35 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E108A05C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E108A13C, 0, 0);
}

uint64_t sub_1E108A13C()
{
  v22 = v0;
  v1 = v0[175];
  v18 = v0[173];
  v19 = v0[174];
  v17 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[168];
  v20 = v0[166];
  v6 = sub_1E10AE07C();
  v8 = v7;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10BA690;
  *(inited + 32) = 0x6F726665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = 0x657461646D6F7266;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  *(inited + 96) = 0x657461646F74;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = v2;
  *(inited + 120) = v17;
  *(inited + 128) = 0x74696D696CLL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 160) = 0x74657366666FLL;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = 0;
  *(inited + 184) = 0xE000000000000000;
  v10 = sub_1E1017200(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v5;
  sub_1E108D4E0(v10, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v21);

  if (v20)
  {
  }

  else
  {
    v0[125] = v21;
    v13 = sub_1E1062A58();
    if (v14)
    {
      sub_1E1074334(v13, v14, 1735287148, 0xE400000000000000);
    }

    v15 = *__swift_project_boxed_opaque_existential_1((v0[159] + 112), *(v0[159] + 136));
    v16 = swift_task_alloc();
    v0[176] = v16;
    *v16 = v0;
    v16[1] = sub_1E108A3D8;

    return sub_1E1060034(v15);
  }
}

uint64_t sub_1E108A3D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[177] = a1;
  v4[178] = a2;
  v4[179] = v2;

  if (v2)
  {

    v5 = sub_1E108A750;
  }

  else
  {
    v5 = sub_1E108A4FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E108A4FC()
{
  v1 = v0[125];
  if (v0[164])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[165] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[165];

    v3 = v0[164];
  }

  v5 = v0[178];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[136];
  v0[106] = v0[177];
  v0[107] = v5;
  v0[108] = v3;
  v0[109] = v4;
  v0[110] = v1;
  sub_1E1081D8C(v8);

  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = v0[135];
    v10 = v0[134];
    v11 = v0[133];
    sub_1E0FF0440(v0[136], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1E10ADB6C();
    v12 = sub_1E10ADEAC();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v0[186] = v12;
    v13 = v0[159];
    v14 = sub_1E108B104;
  }

  else
  {
    v15 = v0[159];
    v16 = v0[148];
    v17 = v0[147];
    v18 = v0[146];
    v19 = v0[136];
    v20 = *(v17 + 32);
    v0[180] = v20;
    v0[181] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v19, v18);

    v14 = sub_1E108A7C0;
    v13 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E108A750()
{

  v0[186] = v0[179];
  v1 = v0[159];

  return MEMORY[0x1EEE6DFA0](sub_1E108B104, v1, 0);
}

uint64_t sub_1E108A7C0()
{
  (*(v0 + 1440))(*(v0 + 1192), *(v0 + 1184), *(v0 + 1168));
  v1 = swift_task_alloc();
  *(v0 + 1456) = v1;
  *v1 = v0;
  v1[1] = sub_1E108A874;
  v2 = *(v0 + 1192);

  return sub_1E101C960(v0 + 384, v2);
}

uint64_t sub_1E108A874()
{
  v2 = *v1;
  *(*v1 + 1464) = v0;

  v3 = *(v2 + 1272);
  if (v0)
  {
    v4 = sub_1E108AC58;
  }

  else
  {
    v4 = sub_1E108A9A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E108A9A0()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 464);
  *(v0 + 336) = *(v0 + 448);
  *(v0 + 352) = v2;
  *(v0 + 368) = *(v0 + 480);
  v3 = *(v0 + 400);
  *(v0 + 272) = *(v0 + 384);
  *(v0 + 288) = v3;
  v4 = *(v0 + 432);
  *(v0 + 304) = *(v0 + 416);
  *(v0 + 320) = v4;
  sub_1E1035FF8(v0 + 496);
  if (v1)
  {
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1256);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1192);
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1168);
    sub_1E0FF0440(v0 + 272, &qword_1ECE89880, &qword_1E10B39F8);

    (*(v9 + 8))(v8, v10);
    sub_1E0FF0440(v7, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v6, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v5, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1480) = v1;
    v11 = sub_1E108AEFC;
  }

  else
  {
    v21 = *(v0 + 1288);
    v12 = *(v0 + 1280);
    v25 = *(v0 + 1264);
    v24 = *(v0 + 1256);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1224);
    v15 = *(v0 + 1176);
    v22 = *(v0 + 1168);
    v23 = *(v0 + 1192);
    sub_1E0FF0440(v0 + 272, &qword_1ECE89880, &qword_1E10B39F8);
    sub_1E10485A8(v0 + 496, v0 + 608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B250, &unk_1E10BA7A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E10B2E70;
    sub_1E0FEDC50(v13, v14, &qword_1ECE89878, &unk_1E10B6A20);

    v17 = sub_1E10ADCDC();
    v19 = v18;
    v21(v14, v12);
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1E10485A8(v0 + 608, v16 + 48);

    (*(v15 + 8))(v23, v22);
    sub_1E0FF0440(v13, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v24, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v25, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1472) = v16;
    v11 = sub_1E108AD50;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E108AC58()
{
  v1 = v0[158];
  v2 = v0[157];
  v3 = v0[154];
  v4 = v0[149];
  v5 = v0[147];
  v6 = v0[146];

  (*(v5 + 8))(v4, v6);
  sub_1E0FF0440(v3, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[185] = v0[183];

  return MEMORY[0x1EEE6DFA0](sub_1E108AEFC, 0, 0);
}

uint64_t sub_1E108AD50()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1040);
  v3 = type metadata accessor for GroupScheduleXPCValueContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value];
  *v5 = v1;
  *(v5 + 1) = 0;
  v5[16] = 0;
  *(v0 + 888) = v4;
  *(v0 + 896) = v3;
  v6 = objc_msgSendSuper2((v0 + 888), sel_init);
  v2();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E108AEFC()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1040);
  *(v0 + 984) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = *(v0 + 904);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(v0 + 912);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for GroupScheduleXPCValueContainer();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value];
  *v9 = v5;
  *(v9 + 1) = v6;
  v9[16] = 1;
  *(v0 + 920) = v8;
  *(v0 + 928) = v7;
  v10 = objc_msgSendSuper2((v0 + 920), sel_init);
  v2();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E108B104()
{
  v1 = v0[158];
  v2 = v0[157];
  v3 = v0[154];

  sub_1E0FF0440(v3, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v1, &unk_1ECE8B220, &qword_1E10BA788);
  v0[185] = v0[186];

  return MEMORY[0x1EEE6DFA0](sub_1E108AEFC, 0, 0);
}

uint64_t sub_1E108B1D0()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E1089268(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t ShazamEventsService.serviceVersion(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1E0FE5278(&unk_1E10BA6E8, v4);
}

uint64_t sub_1E108B3E0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for EventService.Version(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E108B4B8, 0, 0);
}

uint64_t sub_1E108B4B8()
{
  type metadata accessor for PartialEventFetcher();
  v1 = swift_allocObject();
  v0[15] = v1;
  swift_defaultActor_initialize();
  type metadata accessor for PartialEventNetworkHandler();
  swift_allocObject();
  *(v1 + 112) = sub_1E1078764();
  type metadata accessor for PartialEventConfigurationProvider(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v4 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask) = 0;
  *(v1 + 120) = v2;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1E108B610;
  v6 = v0[14];

  return sub_1E101D7F4(v6, 0);
}

uint64_t sub_1E108B610()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1E108B868;
  }

  else
  {

    v2 = sub_1E108B72C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E108B72C()
{
  super_class = v0[6].super_class;
  receiver = v0[7].receiver;
  v3 = v0[4].super_class;
  sub_1E1017590(receiver, super_class);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for VersionXPCValueContainer(0);
  v5 = objc_allocWithZone(v4);
  sub_1E0FEDC50(super_class, v5 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, &qword_1ECE89520, &qword_1E10B26A0);
  v0[3].receiver = v5;
  v0[3].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 3, sel_init);
  sub_1E0FF0440(super_class, &qword_1ECE89520, &qword_1E10B26A0);
  v3(v6);

  sub_1E10175F4(receiver);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_1E108B868()
{
  super_class = v0[8].super_class;
  receiver = v0[6].receiver;
  v3 = v0[4].super_class;

  v0[4].receiver = super_class;
  v4 = super_class;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v5 = swift_dynamicCast();
  v6 = v0[1].receiver;
  v7 = v0[1].super_class;
  if (!v5)
  {
    v6 = 0;
    v7 = 1;
  }

  *receiver = v6;
  receiver[1] = v7;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for VersionXPCValueContainer(0);
  v9 = objc_allocWithZone(v8);
  sub_1E0FEDC50(receiver, v9 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, &qword_1ECE89520, &qword_1E10B26A0);
  v0[2].receiver = v9;
  v0[2].super_class = v8;
  v10 = objc_msgSendSuper2(v0 + 2, sel_init);
  sub_1E0FF0440(receiver, &qword_1ECE89520, &qword_1E10B26A0);
  v3(v10);

  v11 = v0->super_class;

  return v11();
}

uint64_t sub_1E108B9F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E0FE6540;

  return sub_1E108B3E0(v2, v3);
}

uint64_t ShazamEventsService.partialEvents(geoRequests:requestTypes:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_1E0FE5278(&unk_1E10BA6F8, v8);
}

uint64_t sub_1E108BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E108BC34, 0, 0);
}

uint64_t sub_1E108BC34()
{
  type metadata accessor for PartialEventFetcher();
  v1 = swift_allocObject();
  v0[13] = v1;
  swift_defaultActor_initialize();
  type metadata accessor for PartialEventNetworkHandler();
  swift_allocObject();
  *(v1 + 112) = sub_1E1078764();
  type metadata accessor for PartialEventConfigurationProvider(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v4 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask) = 0;
  *(v1 + 120) = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1E108BD88;
  v7 = v0[9];
  v6 = v0[10];

  return sub_1E101ECD8(v7, v6);
}

uint64_t sub_1E108BD88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1E108BF74;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1E108BEB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E108BEB8()
{
  receiver = v0[8].receiver;
  super_class = v0[5].super_class;
  v3 = type metadata accessor for PartialEventXPCValueContainer();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  *v5 = receiver;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v0[3].receiver = v4;
  v0[3].super_class = v3;
  v6 = objc_msgSendSuper2(v0 + 3, sel_init);
  super_class();

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_1E108BF74()
{
  super_class = v0[7].super_class;
  v2 = v0[5].super_class;

  v0[4].receiver = super_class;
  v3 = super_class;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = swift_dynamicCast();
  if (v4)
  {
    receiver = v0[1].receiver;
  }

  else
  {
    receiver = 0;
  }

  if (v4)
  {
    v6 = v0[1].super_class;
  }

  else
  {
    v6 = 3;
  }

  v7 = type metadata accessor for PartialEventXPCValueContainer();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  *v9 = receiver;
  *(v9 + 1) = v6;
  v9[16] = 1;
  v0[2].receiver = v8;
  v0[2].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 2, sel_init);
  v2();

  v11 = v0->super_class;

  return v11();
}

uint64_t sub_1E108C0A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E0FE6540;

  return sub_1E108BC10(v2, v3, v5, v4);
}

Swift::Void __swiftcall ShazamEventsService.shutdownService()()
{
  v1 = v0;
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE43C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "Shutting down ShazamEventsService", v5, 2u);
    MEMORY[0x1E12EE9E0](v5, -1, -1);
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator) + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_1E0FE5AD0((v6 + 16));

  os_unfair_lock_unlock((v6 + 24));
}

id ShazamEventsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShazamEventsService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator;
  type metadata accessor for ServiceCoordinator();
  v3 = swift_allocObject();
  v4 = sub_1E1017018(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B1A0, &unk_1E10BA700);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ShazamEventsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E108C644(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E104834C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E108C6B0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E108C6B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E10AE8CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E10AE1CC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E108C878(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E108C7A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E108C7A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1E10AE8FC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E108C878(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E1047DA8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1E108CE54((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1E10AE8FC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E10AE8FC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1047EA0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1E1047EA0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1E108CE54((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E1047DA8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1E1047D1C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1E10AE8FC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E108CE54(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1E10AE8FC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1E108D07C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1E108D0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v10 = result;
    v11 = *(a5 + 56);
    v12 = *(*(a5 + 48) + 16 * a2);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    sub_1E0FEDC50(v11 + *(*(v13 - 8) + 72) * a2, v10, a6, a7);

    return v12;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E108D19C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_1E10ADCFC();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(*(a5 + 56) + 16 * a2);

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E108D2DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E0FE5FDC;

  return sub_1E108BC10(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_1E10ADCBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t sub_1E108D4E0(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v48[0] = v17;
    v48[1] = v18;
    v48[2] = v20;
    v48[3] = v21;

    a2(v47, v48);

    v22 = v47[0];
    v23 = v47[1];
    v24 = v47[2];
    v25 = v47[3];
    v26 = *v49;
    v28 = sub_1E10181E8();
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1E1016AA4();
      }
    }

    else
    {
      sub_1E101577C(v31, v46 & 1);
      v33 = sub_1E10181E8();
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v49;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1E1019254(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

uint64_t sub_1E108D780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E108D7D4()
{
  result = qword_1EE17E418;
  if (!qword_1EE17E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE8B270, &qword_1E10B17E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E418);
  }

  return result;
}

uint64_t static Time.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1E10ADA7C())
  {
    type metadata accessor for Time(0);

    JUMPOUT(0x1E12ED5E0);
  }

  return 0;
}

uint64_t type metadata accessor for Time(uint64_t a1)
{
  result = qword_1EE17EE78;
  if (!qword_1EE17EE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Time.init(dateInterval:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E10ADACC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for Time(0) + 20);
  v8 = sub_1E10ADE6C();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t Time.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E10ADACC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Time.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Time(0) + 20);
  v4 = sub_1E10ADE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E108DAAC()
{
  if (*v0)
  {
    return 0x656E6F5A656D6974;
  }

  else
  {
    return 0x65746E4965746164;
  }
}

uint64_t sub_1E108DAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E108DBD0(uint64_t a1)
{
  v2 = sub_1E108DE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E108DC0C(uint64_t a1)
{
  v2 = sub_1E108DE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Time.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B2C0, &qword_1E10BA7C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E108DE48();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10ADACC();
  sub_1E108E774(&unk_1ECE8B320, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1E10AE8AC();
  if (!v1)
  {
    type metadata accessor for Time(0);
    v10[14] = 1;
    sub_1E10ADE6C();
    sub_1E108E774(&qword_1ECE8B2C8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1E10AE8AC();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1E108DE48()
{
  result = qword_1EE17EEA0[0];
  if (!qword_1EE17EEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17EEA0);
  }

  return result;
}

uint64_t Time.hash(into:)(uint64_t a1)
{
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1E10ADFFC();
}

uint64_t Time.hashValue.getter()
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t Time.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_1E10ADE6C();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E10ADACC();
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B2D0, &qword_1E10BA7D0);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E108DE48();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v15;
  v20 = v19;
  v22 = v31;
  v21 = v32;
  v38 = 0;
  sub_1E108E774(&unk_1EE180180, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v23 = v33;
  sub_1E10AE7FC();
  v24 = *(v22 + 32);
  v27 = v20;
  v24(v20, v23, v35);
  v37 = 1;
  sub_1E108E774(&qword_1EE17FF38, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  sub_1E10AE7FC();
  (*(v34 + 8))(v14, v36);
  v25 = v27;
  (*(v29 + 32))(v27 + *(v28 + 20), v7, v21);
  sub_1E100AA5C(v25, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E100ACB0(v25);
}

uint64_t sub_1E108E484()
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E108E570(uint64_t a1)
{
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E108E644(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E10ADACC();
  sub_1E108E774(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  sub_1E10ADE6C();
  sub_1E108E774(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E108E774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E108E7EC(uint64_t a1, uint64_t a2)
{
  if (sub_1E10ADA7C())
  {

    JUMPOUT(0x1E12ED5E0);
  }

  return 0;
}

uint64_t sub_1E108E87C(uint64_t a1)
{
  result = sub_1E10ADACC();
  if (v2 <= 0x3F)
  {
    result = sub_1E10ADE6C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E108E914()
{
  result = qword_1ECE8B2E0;
  if (!qword_1ECE8B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2E0);
  }

  return result;
}

unint64_t sub_1E108E96C()
{
  result = qword_1EE17EE90;
  if (!qword_1EE17EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EE90);
  }

  return result;
}

unint64_t sub_1E108E9C4()
{
  result = qword_1EE17EE98;
  if (!qword_1EE17EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EE98);
  }

  return result;
}

uint64_t sub_1E108EA28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E108EC14(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1E108EA54(void *a1)
{
  result = sub_1E108EB5C(*v1, *(v1 + 8));
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E10AEA4C();
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1E10AE91C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

unint64_t sub_1E108EB08()
{
  result = qword_1ECE8B2E8;
  if (!qword_1ECE8B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2E8);
  }

  return result;
}

uint64_t sub_1E108EB5C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    while (1)
    {
      sub_1E10AE0CC();
      if (!v3)
      {
        break;
      }

      v4 = sub_1E10AE00C();

      if ((v4 & 1) == 0)
      {
      }
    }
  }

  sub_1E108ED04();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1E108EC14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA2C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = sub_1E10AE90C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1E108EB5C(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_1E108ED04()
{
  result = qword_1ECE8B2F0;
  if (!qword_1ECE8B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2F0);
  }

  return result;
}

unint64_t sub_1E108ED6C()
{
  result = qword_1ECE8B2F8;
  if (!qword_1ECE8B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B2F8);
  }

  return result;
}

uint64_t sub_1E108EDC0()
{
  v75 = sub_1E10ADB4C();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v71 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E10ADCBC();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v64 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89650, &qword_1E10B2930);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - v19;
  v21 = sub_1E10ADE6C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E10ADDAC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E10ADE2C();
  v65 = *(v33 - 8);
  v66 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v32, *MEMORY[0x1E6969830], v27);
  sub_1E10ADDBC();
  (*(v28 + 8))(v32, v27);
  sub_1E10ADE4C();
  result = (*(v22 + 48))(v20, 1, v21);
  if (result != 1)
  {
    (*(v22 + 32))(v26, v20, v21);
    sub_1E10ADE0C();
    v39 = OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload;
    sub_1E10911BC(v78 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload, v6);
    v77 = v37;
    v41 = v69;
    v40 = v70;
    v42 = *(v70 + 28);
    sub_1E10ADAAC();
    v43 = sub_1E10ADACC();
    v67 = *(*(v43 - 8) + 8);
    v67(&v6[v42], v43);
    sub_1E10ADDCC();
    v68 = v16;
    v44 = *(v74 + 8);
    v45 = v76;
    v44(v41, v76);
    sub_1E10911BC(v78 + v39, v6);
    v46 = *(v40 + 28);
    v47 = v77;
    sub_1E10ADA8C();
    v67(&v6[v46], v43);
    v48 = v72;
    sub_1E10ADDCC();
    v49 = v41;
    v50 = v44;
    v44(v49, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B330, &unk_1E10BAC60);
    v51 = sub_1E10ADE1C();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1E10B2E70;
    (*(v52 + 104))(v54 + v53, *MEMORY[0x1E6969A48], v51);
    sub_1E10906D4(v54);
    swift_setDeallocating();
    (*(v52 + 8))(v54 + v53, v51);
    swift_deallocClassInstance();
    v55 = v71;
    v56 = v68;
    sub_1E10ADDDC();

    v57 = sub_1E10ADB3C();
    LOBYTE(v51) = v58;
    result = (*(v73 + 8))(v55, v75);
    if (v51)
    {
      v61 = 1;
    }

    else
    {
      v61 = v57;
    }

    if ((v61 & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](v59, v60);
      *(&v64 - 2) = v47;
      *(&v64 - 1) = v56;
      v63 = sub_1E1035304(sub_1E1091220, (&v64 - 4), 0, v62);
      v50(v48, v45);
      v50(v56, v45);
      (*(v65 + 8))(v47, v66);
      return v63;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12ShazamEvents22GeoXPCRequestContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  sub_1E10ADA3C();
  swift_allocObject();
  sub_1E10ADA2C();
  sub_1E0FED9C8();

  v2 = sub_1E10ADA1C();
  v4 = v3;

  type metadata accessor for GeoXPCRequestContainer.Payload(0);
  sub_1E1090ED8(&unk_1EE17F2C8, type metadata accessor for GeoXPCRequestContainer.Payload, &unk_1E10BABF8);
  v5 = v2;
  v6 = sub_1E10ADA1C();
  v7 = v4;
  v9 = v8;
  v10 = sub_1E10ADBCC();
  v11 = sub_1E10AE04C();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_1E10ADBCC();
  v13 = sub_1E10AE04C();
  [a1 encodeObject:v12 forKey:v13];

  sub_1E0FFDAC0(v6, v9);
  sub_1E0FFDAC0(v5, v7);
}

uint64_t sub_1E108F818()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x737569646172;
  if (*v0 != 2)
  {
    v2 = 0x65746E4965746164;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E108F89C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1091354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E108F8C4(uint64_t a1)
{
  v2 = sub_1E10910A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E108F900(uint64_t a1)
{
  v2 = sub_1E10910A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id GeoXPCRequestContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1E10909F4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id GeoXPCRequestContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1E10909F4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id GeoXPCRequestContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GeoXPCRequestContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E108FC80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v4 = sub_1E10ADC1C();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v46 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v47 = &v45 - v17;
  v18 = sub_1E10ADE1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E10ADE2C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v45 - v32;
  (*(v25 + 16))(v29, v50, v24);
  (*(v19 + 104))(v23, *MEMORY[0x1E6969A48], v18);
  sub_1E10ADDFC();
  (*(v19 + 8))(v23, v18);
  (*(v25 + 8))(v29, v24);
  v34 = sub_1E10ADCBC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    result = sub_1E0FF0440(v33, &unk_1ECE8B220, &qword_1E10BA788);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    MEMORY[0x1E12ED140]();
    v39 = v45;
    sub_1E10ADBFC();
    v40 = v49;
    v41 = *(v48 + 8);
    v41(v8, v49);
    v42 = v46;
    sub_1E10ADC0C();
    v41(v39, v40);
    v43 = v47;
    sub_1E10ADBEC();
    v41(v42, v40);
    sub_1E1090ED8(&qword_1EE17FF70, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_1E10ADCAC();
    v41(v43, v40);
    result = (*(v35 + 8))(v33, v34);
    v37 = v53;
    v38 = v54;
  }

  v44 = v52;
  *v52 = v37;
  v44[1] = v38;
  return result;
}

uint64_t sub_1E1090108(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B318, &unk_1E10BAC50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10910A8();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10AE88C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1E10AE88C();
    v10[13] = 2;
    sub_1E10AE88C();
    type metadata accessor for GeoXPCRequestContainer.Payload(0);
    v10[12] = 3;
    sub_1E10ADACC();
    sub_1E1090ED8(&unk_1ECE8B320, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1E10AE8AC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E1090344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1E10ADACC();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B310, &qword_1E10BAC48);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10910A8();
  v18 = v35;
  sub_1E10AEA3C();
  if (!v18)
  {
    v19 = v17;
    v35 = v13;
    v20 = v7;
    v39 = 0;
    v21 = v33;
    sub_1E10AE7DC();
    *v19 = v22;
    v38 = 1;
    sub_1E10AE7DC();
    v23 = v21;
    v19[1] = v24;
    v37 = 2;
    sub_1E10AE7DC();
    v26 = v19;
    v19[2] = v27;
    v36 = 3;
    sub_1E1090ED8(&unk_1EE180180, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
    v28 = v20;
    v29 = v34;
    sub_1E10AE7FC();
    (*(v23 + 8))(v12, v29);
    (*(v31 + 32))(v26 + *(v35 + 28), v28, v3);
    sub_1E10910FC(v26, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E10906D4(uint64_t a1)
{
  v2 = sub_1E10ADE1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v33 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B338, &unk_1E10BAC70);
    v12 = sub_1E10AE5BC();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v38 = v15;
    v39 = v12 + 56;
    v16 = *(v14 + 64);
    v35 = v11;
    v36 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v34 = (v14 + 16);
    while (1)
    {
      v37 = v13;
      v38(v40, v36 + v17 * v13, v2);
      sub_1E1090ED8(&qword_1EE17FF50, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v19 = sub_1E10ADFEC();
      v20 = ~(-1 << *(v12 + 32));
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v39 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) != 0)
      {
        while (1)
        {
          v25 = v14;
          v38(v7, *(v12 + 48) + v21 * v17, v2);
          sub_1E1090ED8(&qword_1ECE8B348, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v26 = sub_1E10AE03C();
          v27 = *v18;
          (*v18)(v7, v2);
          if (v26)
          {
            break;
          }

          v21 = (v21 + 1) & v20;
          v22 = v21 >> 6;
          v23 = *(v39 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          v14 = v25;
          if (((1 << v21) & v23) == 0)
          {
            goto LABEL_8;
          }
        }

        v27(v40, v2);
        v14 = v25;
      }

      else
      {
LABEL_8:
        v28 = v40;
        *(v39 + 8 * v22) = v24 | v23;
        result = (*v34)(*(v12 + 48) + v21 * v17, v28, v2);
        v30 = *(v12 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v32;
      }

      v13 = v37 + 1;
      if (v37 + 1 == v35)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1E10909F4(void *a1)
{
  type metadata accessor for GeoXPCRequestContainer.Payload(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  sub_1E100A428();
  v10 = sub_1E10AE48C();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1E10AE48C();
    if (v12)
    {
      v13 = v12;
      sub_1E10ADA0C();
      swift_allocObject();
      sub_1E10AD9FC();
      v14 = v11;
      v15 = sub_1E10ADBDC();
      v17 = v16;

      sub_1E0FEDD04();
      sub_1E10AD9EC();
      v32 = v14;
      sub_1E0FFDAC0(v15, v17);
      v29 = v34;
      v31 = v35;
      v18 = v13;
      v19 = sub_1E10ADBDC();
      v21 = v20;
      v30 = v18;

      sub_1E1090ED8(&qword_1EE17F2C0, type metadata accessor for GeoXPCRequestContainer.Payload, &unk_1E10BAC20);
      sub_1E10AD9EC();
      sub_1E0FFDAC0(v19, v21);
      sub_1E10911BC(v9, v5);
      v22 = type metadata accessor for GeoXPCRequestContainer(0);
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
      v25 = v31;
      *v24 = v29;
      *(v24 + 1) = v25;
      sub_1E10911BC(v5, &v23[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload]);
      v33.receiver = v23;
      v33.super_class = v22;
      v26 = objc_msgSendSuper2(&v33, sel_init);

      sub_1E1091160(v5);
      sub_1E1091160(v9);
      return v26;
    }
  }

  return 0;
}

uint64_t sub_1E1090ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1090F48(uint64_t a1)
{
  result = type metadata accessor for GeoXPCRequestContainer.Payload(319);
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

uint64_t sub_1E1091024(uint64_t a1)
{
  result = sub_1E10ADACC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E10910A8()
{
  result = qword_1EE17F2F8;
  if (!qword_1EE17F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F2F8);
  }

  return result;
}

uint64_t sub_1E10910FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1091160(uint64_t a1)
{
  v2 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E10911BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1091250()
{
  result = qword_1ECE8B350;
  if (!qword_1ECE8B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B350);
  }

  return result;
}

unint64_t sub_1E10912A8()
{
  result = qword_1EE17F2D8;
  if (!qword_1EE17F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F2D8);
  }

  return result;
}

unint64_t sub_1E1091300()
{
  result = qword_1EE17F2E0[0];
  if (!qword_1EE17F2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F2E0);
  }

  return result;
}

uint64_t sub_1E1091354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E10914C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E109214C;

  return MEMORY[0x1EEDC6260](a1, 0);
}

id sub_1E1091570()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    sub_1E10915CC(v0);
    v3 = v0[3];
    v0[3] = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E10915CC(uint64_t *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 amsBag];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1E10AE05C();

    v7 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
    v8 = v3;
    v9 = sub_1E10AE04C();

    v10 = [v7 initWithClientIdentifier:v9 bag:v8];

    [v10 setClientType_];
    v11 = a1[2];
    [v10 setSession_];
    v12 = [objc_allocWithZone(MEMORY[0x1E698C9B8]) initWithTokenService_];
    [v11 setProtocolHandler_];

    [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:v10 bag:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E10917B8(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E10917D8, 0, 0);
}

uint64_t sub_1E10917D8()
{
  v1 = sub_1E1091570();
  v2 = sub_1E10AD96C();
  v3 = [v1 requestByEncodingRequest:v2 parameters:0];
  v0[29] = v3;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1E1091940;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B358, &qword_1E10BAE08);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1092150;
  v0[21] = &block_descriptor_5;
  v0[22] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1091940()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1E0FFA9C4;
  }

  else
  {
    v2 = sub_1E1091A50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1091A50()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v0[31] = v3;

  v4 = [*(v2 + 16) dataTaskPromiseWithRequest_];
  v0[32] = v4;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E1091BA4;
  v5 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B360, &unk_1E10BAE10);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1092150;
  v0[21] = &block_descriptor_9;
  v0[22] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E1091BA4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1E1091DA4;
  }

  else
  {
    v2 = sub_1E1091CB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1091CB4()
{
  v1 = *(v0 + 208);

  v2 = [v1 data];
  v3 = sub_1E10ADBDC();
  v5 = v4;

  v6 = [v1 response];
  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AF70]) init];
  }

  v7 = *(v0 + 8);

  return v7(v3, v5, v6);
}

uint64_t sub_1E1091DA4(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1E1091E1C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E1091EF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1091F58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E1091FF0;

  return sub_1E10917B8(a1);
}

uint64_t sub_1E1091FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t Playlist.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E1092190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1092210(uint64_t a1)
{
  v2 = sub_1E109241C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109224C(uint64_t a1)
{
  v2 = sub_1E109241C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Playlist.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t Playlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B368, &qword_1E10BAE70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109241C();

  sub_1E10AEA5C();
  v12[0] = v9;
  v12[1] = v10;
  sub_1E0FED9C8();
  sub_1E10AE8AC();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1E109241C()
{
  result = qword_1ECE8B370;
  if (!qword_1ECE8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B370);
  }

  return result;
}

uint64_t Playlist.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Playlist.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B378, &qword_1E10BAE78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109241C();
  sub_1E10AEA3C();
  if (!v2)
  {
    sub_1E0FEDD04();
    sub_1E10AE7FC();
    (*(v6 + 8))(v10, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E1092668()
{
  result = qword_1ECE8B380;
  if (!qword_1ECE8B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B380);
  }

  return result;
}

unint64_t sub_1E10926E0()
{
  result = qword_1ECE8B388;
  if (!qword_1ECE8B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B388);
  }

  return result;
}

unint64_t sub_1E1092738()
{
  result = qword_1ECE8B390;
  if (!qword_1ECE8B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B390);
  }

  return result;
}

unint64_t sub_1E1092790()
{
  result = qword_1ECE8B398;
  if (!qword_1ECE8B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B398);
  }

  return result;
}

uint64_t EventAttribution.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventAttribution.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventAttribution(0) + 20);
  v4 = sub_1E10ADBBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EventAttribution(uint64_t a1)
{
  result = qword_1EE17F798;
  if (!qword_1EE17F798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E10928DC(uint64_t a1)
{
  v2 = sub_1E1092B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1092918(uint64_t a1)
{
  v2 = sub_1E1092B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static EventAttribution.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EventAttribution(0);

  return sub_1E10ADB8C();
}

uint64_t EventAttribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3A0, &qword_1E10BB0C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1092B88();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10AE86C();
  if (!v1)
  {
    type metadata accessor for EventAttribution(0);
    v10[14] = 1;
    sub_1E10ADBBC();
    sub_1E109331C(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE8AC();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1E1092B88()
{
  result = qword_1ECE8B3A8;
  if (!qword_1ECE8B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3A8);
  }

  return result;
}

uint64_t EventAttribution.hash(into:)(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for EventAttribution(0);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E10ADFFC();
}

uint64_t EventAttribution.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for EventAttribution(0);
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t EventAttribution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E10ADBBC();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3B0, &qword_1E10BB0C8);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for EventAttribution(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1092B88();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v18 = v24;
  v17 = v25;
  v28 = 0;
  *v16 = sub_1E10AE7BC();
  v16[1] = v19;
  v27 = 1;
  sub_1E109331C(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E10AE7FC();
  (*(v18 + 8))(v11, v26);
  (*(v22 + 32))(v16 + *(v21 + 20), v7, v17);
  sub_1E1093214(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E1093278(v16);
}

uint64_t sub_1E109303C()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10930E4(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E1093170(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E109331C(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1093214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttribution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1093278(uint64_t a1)
{
  v2 = type metadata accessor for EventAttribution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E109331C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E10933D0()
{
  result = qword_1ECE8B3C0;
  if (!qword_1ECE8B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3C0);
  }

  return result;
}

unint64_t sub_1E1093428()
{
  result = qword_1ECE8B3C8;
  if (!qword_1ECE8B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3C8);
  }

  return result;
}