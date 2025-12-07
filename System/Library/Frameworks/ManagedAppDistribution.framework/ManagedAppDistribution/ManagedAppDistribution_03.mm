unint64_t sub_1D9583094()
{
  result = qword_1ECB06ED0;
  if (!qword_1ECB06ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06ED0);
  }

  return result;
}

unint64_t sub_1D95830EC()
{
  result = qword_1ECB06ED8;
  if (!qword_1ECB06ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06ED8);
  }

  return result;
}

unint64_t sub_1D9583144()
{
  result = qword_1ECB06EE0;
  if (!qword_1ECB06EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EE0);
  }

  return result;
}

unint64_t sub_1D958319C()
{
  result = qword_1ECB06EE8;
  if (!qword_1ECB06EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EE8);
  }

  return result;
}

unint64_t sub_1D95831F4()
{
  result = qword_1ECB06EF0;
  if (!qword_1ECB06EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EF0);
  }

  return result;
}

unint64_t sub_1D958324C()
{
  result = qword_1ECB06EF8;
  if (!qword_1ECB06EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06EF8);
  }

  return result;
}

uint64_t sub_1D95832A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C6C6174736E69 && a2 == 0xEA0000000000676ELL || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6974696177 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D9583468(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_1D9583498(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t DDMPollForUpdatesRequest.init(isUserInitiated:shouldInitiateUpdates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DDMPollForUpdatesRequest.request()()
{
  *(v1 + 24) = *v0;
  *(v1 + 25) = v0[1];
  return MEMORY[0x1EEE6DFA0](sub_1D9583560, 0, 0);
}

uint64_t sub_1D9583560()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 25);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  if (v1)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *v3 = v0;
  v3[1] = sub_1D955C654;

  return sub_1D9550940(1, v4 | v2, sub_1D95837C4, 0);
}

uint64_t DDMPollForUpdatesRequest.send(to:)(char a1)
{
  v2[24] = a1;
  v2[25] = *v1;
  v2[26] = v1[1];
  return MEMORY[0x1EEE6DFA0](sub_1D95836A4, 0, 0);
}

uint64_t sub_1D95836A4()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = *(v0 + 26);
  v2 = *(v0 + 25);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  if (v1)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *v3 = v0;
  v3[1] = sub_1D955BACC;

  return sub_1D9550940(1, v4 | v2, sub_1D95837C4, 0);
}

void sub_1D95837C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [a1 pollForMediaAPIUpdates:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95838A0()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E49726573557369;
  }
}

uint64_t sub_1D95838EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49726573557369 && a2 == 0xEF64657461697469;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D08C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95839D8(uint64_t a1)
{
  v2 = sub_1D9583DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9583A14(uint64_t a1)
{
  v2 = sub_1D9583DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPollForUpdatesRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F00, &qword_1D95C8570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9583DB8();
  sub_1D95C05BC();
  v12 = 0;
  sub_1D95C039C();
  if (!v2)
  {
    v11 = 1;
    sub_1D95C039C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DDMPollForUpdatesRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F10, &qword_1D95C8578);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9583DB8();
  sub_1D95C059C();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1D95C02DC();
    v13 = 1;
    v11 = sub_1D95C02DC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D9583DB8()
{
  result = qword_1ECB06F08;
  if (!qword_1ECB06F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDMPollForUpdatesRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DDMPollForUpdatesRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1D9583F90()
{
  result = qword_1ECB06F18;
  if (!qword_1ECB06F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F18);
  }

  return result;
}

unint64_t sub_1D9583FE8()
{
  result = qword_1ECB06F20;
  if (!qword_1ECB06F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F20);
  }

  return result;
}

unint64_t sub_1D9584040()
{
  result = qword_1ECB06F28;
  if (!qword_1ECB06F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F28);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D95840AC()
{
  v1 = 0x6574617267696DLL;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x7465736572;
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

uint64_t sub_1D958412C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9585F4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9584154(uint64_t a1)
{
  v2 = sub_1D958486C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584190(uint64_t a1)
{
  v2 = sub_1D958486C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95841CC(uint64_t a1)
{
  v2 = sub_1D95848C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584208(uint64_t a1)
{
  v2 = sub_1D95848C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9584244(uint64_t a1)
{
  v2 = sub_1D9584914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584280(uint64_t a1)
{
  v2 = sub_1D9584914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95842BC(uint64_t a1)
{
  v2 = sub_1D95849BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95842F8(uint64_t a1)
{
  v2 = sub_1D95849BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9584334(uint64_t a1)
{
  v2 = sub_1D9584968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9584370(uint64_t a1)
{
  v2 = sub_1D9584968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagnosticRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F30, &qword_1D95C8720);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F38, &qword_1D95C8728);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F40, &qword_1D95C8730);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F48, &qword_1D95C8738);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F50, &qword_1D95C8740);
  v13 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = &v24 - v14;
  v16 = *v1;
  *&v34 = v1[1];
  *(&v34 + 1) = v16;
  v17 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958486C();
  sub_1D95C05BC();
  if (v17)
  {
    if (v17 == 1)
    {
      v39 = 3;
      sub_1D95848C0();
      v18 = v31;
      v19 = v35;
      sub_1D95C034C();
      v20 = v33;
      sub_1D95C038C();
      (*(v32 + 8))(v18, v20);
    }

    else if (v34 == 0)
    {
      v36 = 0;
      sub_1D95849BC();
      v19 = v35;
      sub_1D95C034C();
      (*(v24 + 8))(v12, v25);
    }

    else
    {
      v37 = 1;
      sub_1D9584968();
      v22 = v26;
      v19 = v35;
      sub_1D95C034C();
      (*(v27 + 8))(v22, v28);
    }
  }

  else
  {
    v38 = 2;
    sub_1D9584914();
    v19 = v35;
    sub_1D95C034C();
    v21 = v30;
    sub_1D95C038C();
    (*(v29 + 8))(v7, v21);
  }

  return (*(v13 + 8))(v15, v19);
}

unint64_t sub_1D958486C()
{
  result = qword_1ECB06F58;
  if (!qword_1ECB06F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F58);
  }

  return result;
}

unint64_t sub_1D95848C0()
{
  result = qword_1ECB06F60;
  if (!qword_1ECB06F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F60);
  }

  return result;
}

unint64_t sub_1D9584914()
{
  result = qword_1ECB06F68;
  if (!qword_1ECB06F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F68);
  }

  return result;
}

unint64_t sub_1D9584968()
{
  result = qword_1ECB06F70;
  if (!qword_1ECB06F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F70);
  }

  return result;
}

unint64_t sub_1D95849BC()
{
  result = qword_1ECB06F78;
  if (!qword_1ECB06F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06F78);
  }

  return result;
}

uint64_t DiagnosticRequestType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F80, &qword_1D95C8748);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F88, &qword_1D95C8750);
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F90, &qword_1D95C8758);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06F98, &qword_1D95C8760);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FA0, &unk_1D95C8768);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_1D958486C();
  v16 = v54;
  sub_1D95C059C();
  if (!v16)
  {
    v17 = v10;
    v42 = v8;
    v43 = 0;
    v18 = v7;
    v20 = v50;
    v19 = v51;
    v54 = v12;
    v21 = v52;
    v22 = v53;
    v23 = sub_1D95C032C();
    v24 = (2 * *(v23 + 16)) | 1;
    v56 = v23;
    v57 = v23 + 32;
    v58 = 0;
    v59 = v24;
    v25 = sub_1D954A270();
    if (v25 == 4 || v58 != v59 >> 1)
    {
      v30 = v11;
      v31 = sub_1D95C01FC();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v33 = &type metadata for DiagnosticRequestType;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v54 + 8))(v14, v30);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v55);
    }

    if (v25 <= 1u)
    {
      if (v25)
      {
        v60 = 1;
        sub_1D9584968();
        v38 = v43;
        sub_1D95C027C();
        if (!v38)
        {
          (*(v46 + 8))(v18, v47);
          (*(v54 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v28 = 0;
          v29 = 2;
          v27 = 1;
          goto LABEL_21;
        }
      }

      else
      {
        v60 = 0;
        sub_1D95849BC();
        v26 = v43;
        sub_1D95C027C();
        if (!v26)
        {
          (*(v45 + 8))(v17, v42);
          (*(v54 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v27 = 0;
          v28 = 0;
          v29 = 2;
LABEL_21:
          *v22 = v27;
          *(v22 + 8) = v28;
          *(v22 + 16) = v29;
          return __swift_destroy_boxed_opaque_existential_0(v55);
        }
      }

      v35 = v54;
LABEL_16:
      (*(v35 + 8))(v14, v11);
      goto LABEL_9;
    }

    v35 = v54;
    if (v25 == 2)
    {
      v60 = 2;
      sub_1D9584914();
      v36 = v43;
      sub_1D95C027C();
      if (!v36)
      {
        v47 = v11;
        v37 = v44;
        v27 = sub_1D95C02CC();
        v28 = v40;
        (*(v49 + 8))(v20, v37);
        (*(v35 + 8))(v14, v47);
        swift_unknownObjectRelease();
        v29 = 0;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v60 = 3;
    sub_1D95848C0();
    v39 = v43;
    sub_1D95C027C();
    if (!v39)
    {
      v47 = v11;
      v27 = sub_1D95C02CC();
      v28 = v41;
      (*(v48 + 8))(v19, v21);
      (*(v35 + 8))(v14, v47);
      swift_unknownObjectRelease();
      v29 = 1;
      goto LABEL_21;
    }

    (*(v35 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t DiagnosticRequest.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D955AEB0(v2, v3, v4);
}

__n128 DiagnosticRequest.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t DiagnosticRequest.request()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D9585220, 0, 0);
}

uint64_t sub_1D9585220()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);

  return sub_1D95512B0(1, v2, v3, v4, sub_1D958531C, 0);
}

void sub_1D958531C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_11;
  v9 = _Block_copy(v10);

  [a1 handleDiagnostics:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95853F8(uint64_t a1)
{
  v2 = sub_1D9585790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9585434(uint64_t a1)
{
  v2 = sub_1D9585790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagnosticRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FA8, &qword_1D95C8780);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955AEB0(v6, v7, v8);
  sub_1D9585790();
  sub_1D95C05BC();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1D95857E4();
  v9 = v11;
  sub_1D95C03CC();
  sub_1D955AEC8(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t DiagnosticRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06FC0, &qword_1D95C8788);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9585790();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D9585838();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D9585790()
{
  result = qword_1ECB06FB0;
  if (!qword_1ECB06FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FB0);
  }

  return result;
}

unint64_t sub_1D95857E4()
{
  result = qword_1ECB06FB8;
  if (!qword_1ECB06FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FB8);
  }

  return result;
}

unint64_t sub_1D9585838()
{
  result = qword_1ECB06FC8;
  if (!qword_1ECB06FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FC8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution21DiagnosticRequestTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D95858A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D95858D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D9585918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D95859D0()
{
  result = qword_1ECB06FD0;
  if (!qword_1ECB06FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FD0);
  }

  return result;
}

unint64_t sub_1D9585A28()
{
  result = qword_1ECB06FD8;
  if (!qword_1ECB06FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FD8);
  }

  return result;
}

unint64_t sub_1D9585A80()
{
  result = qword_1ECB06FE0;
  if (!qword_1ECB06FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FE0);
  }

  return result;
}

unint64_t sub_1D9585AD8()
{
  result = qword_1ECB06FE8;
  if (!qword_1ECB06FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FE8);
  }

  return result;
}

unint64_t sub_1D9585B30()
{
  result = qword_1ECB06FF0;
  if (!qword_1ECB06FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FF0);
  }

  return result;
}

unint64_t sub_1D9585B88()
{
  result = qword_1ECB06FF8;
  if (!qword_1ECB06FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06FF8);
  }

  return result;
}

unint64_t sub_1D9585BE0()
{
  result = qword_1ECB07000;
  if (!qword_1ECB07000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07000);
  }

  return result;
}

unint64_t sub_1D9585C38()
{
  result = qword_1ECB07008;
  if (!qword_1ECB07008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07008);
  }

  return result;
}

unint64_t sub_1D9585C90()
{
  result = qword_1ECB07010;
  if (!qword_1ECB07010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07010);
  }

  return result;
}

unint64_t sub_1D9585CE8()
{
  result = qword_1ECB07018;
  if (!qword_1ECB07018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07018);
  }

  return result;
}

unint64_t sub_1D9585D40()
{
  result = qword_1ECB07020;
  if (!qword_1ECB07020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07020);
  }

  return result;
}

unint64_t sub_1D9585D98()
{
  result = qword_1ECB07028;
  if (!qword_1ECB07028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07028);
  }

  return result;
}

unint64_t sub_1D9585DF0()
{
  result = qword_1ECB07030;
  if (!qword_1ECB07030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07030);
  }

  return result;
}

unint64_t sub_1D9585E48()
{
  result = qword_1ECB07038;
  if (!qword_1ECB07038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07038);
  }

  return result;
}

unint64_t sub_1D9585EA0()
{
  result = qword_1ECB07040;
  if (!qword_1ECB07040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07040);
  }

  return result;
}

unint64_t sub_1D9585EF8()
{
  result = qword_1ECB07048;
  if (!qword_1ECB07048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07048);
  }

  return result;
}

uint64_t sub_1D9585F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617267696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D95D08E0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D95D0910 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedAppLibrary.ManagedApps.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D955B7C8, 0, 0);
}

uint64_t ManagedAppLibrary.ManagedApps.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*v3 + **v3);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D955BACC;

  return v10(a1, a2, a3);
}

uint64_t _s22ManagedAppDistribution0aB7LibraryC13availableAppsAC0aF0Vvg_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07088, &qword_1D95C9078);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - v2);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 isiOSAppOnMac];

  v6 = (v1 + 104);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
    (*v6)(v3, *MEMORY[0x1E69E8650], v0);
  }

  else
  {
    *v3 = 1;
    (*v6)(v3, *MEMORY[0x1E69E8640], v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
  }

  return sub_1D95C002C();
}

uint64_t sub_1D95863D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  if (qword_1EDCF9BB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D95BFC8C();
  __swift_project_value_buffer(v4, qword_1EDCF9BC0);
  v5 = sub_1D95BFC6C();
  v6 = sub_1D95C009C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D953A000, v5, v6, "Managed App Distribution is not available for iOS / iPadOS apps running on macOS", v7, 2u);
    MEMORY[0x1DA733200](v7, -1, -1);
  }

  v9 = 3;
  v10 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  sub_1D95BFFBC();
  (*(v1 + 8))(v3, v0);
  return sub_1D95BFFCC();
}

uint64_t sub_1D95865A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v6 = qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  sub_1D958B6E8((v6 + 8), a1);
  os_unfair_lock_unlock(v6);
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  return sub_1D95BFFAC();
}

void sub_1D958674C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A0, &qword_1D95C9088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v6 = (qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage);
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  swift_beginAccess();
  sub_1D95AE5F4(a2, v5);
  sub_1D9586DFC(v5);
  swift_endAccess();
  os_unfair_lock_unlock(v6);
}

uint64_t ManagedAppLibrary.ManagedApps.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v2 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  result = sub_1D95BFFEC();
  *a1 = &unk_1D95C8F80;
  a1[1] = v2;
  return result;
}

uint64_t sub_1D95868CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a3;
  v4[5] = a1;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v4[9] = swift_projectBox();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1D95BFF2C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D955C020, v6, v8);
}

uint64_t sub_1D9586990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D955C654;

  return sub_1D95868CC(a1, a2, a3, v3);
}

unint64_t sub_1D9586A48()
{
  result = qword_1ECB07060;
  if (!qword_1ECB07060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07060);
  }

  return result;
}

uint64_t sub_1D9586A9C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v3 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  sub_1D95BFFEC();
  result = sub_1D9586C70(v1);
  *a1 = &unk_1D95C9070;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for ManagedAppLibrary.ManagedApps(uint64_t a1)
{
  result = qword_1ECB07068;
  if (!qword_1ECB07068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9586B90(uint64_t a1)
{
  sub_1D9586BFC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9586BFC(uint64_t a1)
{
  if (!qword_1ECB07078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07080, &qword_1D95C9038);
    v1 = sub_1D95C001C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB07078);
    }
  }
}

uint64_t sub_1D9586C70(uint64_t a1)
{
  v2 = type metadata accessor for ManagedAppLibrary.ManagedApps(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9586CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D955BACC;

  return sub_1D95868CC(a1, a2, a3, v3);
}

void sub_1D9586D80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1D958674C(a1, v4);
}

uint64_t sub_1D9586DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A0, &qword_1D95C9088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallEnterpriseManifestRequest.manifestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D95BFBAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InstallEnterpriseManifestRequest.manifestURL.setter(uint64_t a1)
{
  v3 = sub_1D95BFBAC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InstallEnterpriseManifestRequest.init(manifestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D9586FE0()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D95870D8;
  v2 = *(v0 + 16);

  return sub_1D9551B5C(1, v2, sub_1D95871CC, 0);
}

uint64_t sub_1D95870D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D95871CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_12;
  v9 = _Block_copy(v10);

  [a1 installEnterpriseManifest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95872C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736566696E616DLL && a2 == 0xEB000000004C5255)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9587354(uint64_t a1)
{
  v2 = sub_1D9587918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9587390(uint64_t a1)
{
  v2 = sub_1D9587918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallEnterpriseManifestRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A8, &qword_1D95C9098);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  sub_1D95C05BC();
  sub_1D95BFBAC();
  sub_1D956C888(&qword_1ECB05E10, MEMORY[0x1E6968FB8]);
  sub_1D95C03CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t InstallEnterpriseManifestRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1D95BFBAC();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070B8, &qword_1D95C90A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for InstallEnterpriseManifestRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  v12 = v19;
  sub_1D95C059C();
  if (!v12)
  {
    v13 = v17;
    sub_1D956C888(&qword_1ECB05E88, MEMORY[0x1E6968FD0]);
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1D95879B8(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95877B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB070A8, &qword_1D95C9098);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9587918();
  sub_1D95C05BC();
  sub_1D95BFBAC();
  sub_1D956C888(&qword_1ECB05E10, MEMORY[0x1E6968FB8]);
  sub_1D95C03CC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9587918()
{
  result = qword_1ECB070B0;
  if (!qword_1ECB070B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070B0);
  }

  return result;
}

uint64_t type metadata accessor for InstallEnterpriseManifestRequest(uint64_t a1)
{
  result = qword_1ECB070C0;
  if (!qword_1ECB070C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D95879B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallEnterpriseManifestRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9587A44(uint64_t a1)
{
  result = sub_1D95BFBAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9587AC4()
{
  result = qword_1ECB070D0;
  if (!qword_1ECB070D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070D0);
  }

  return result;
}

unint64_t sub_1D9587B1C()
{
  result = qword_1ECB070D8;
  if (!qword_1ECB070D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070D8);
  }

  return result;
}

unint64_t sub_1D9587B74()
{
  result = qword_1ECB070E0;
  if (!qword_1ECB070E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB070E0);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ServiceConnection.withAsyncService<A>(argument:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  sub_1D9588970(&qword_1ECB070E8, MEMORY[0x1E69E7400], MEMORY[0x1E69E7C88]);
  sub_1D9588970(&qword_1ECB070F0, MEMORY[0x1E69E73E8], MEMORY[0x1E69E7C70]);
  *v11 = v5;
  v11[1] = sub_1D9587D48;

  return ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(v5 + 32, 1, a1, a2, a3, a4, v12, a5);
}

uint64_t sub_1D9587D48()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_1D9587E74;
  }

  else
  {
    v2 = sub_1D9587E5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void ServiceConnection.withSyncService<A>(argument:body:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, unint64_t, uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  v13 = sub_1D9588970(&qword_1ECB070E8, MEMORY[0x1E69E7400], MEMORY[0x1E69E7C88]);
  v14 = sub_1D9588970(&qword_1ECB070F0, MEMORY[0x1E69E73E8], MEMORY[0x1E69E7C70]);
  ServiceConnection.withSyncService<A, B>(retryCount:argument:body:)(1, a1, a2, a3, a4, v12, a5, a6, &v15, v13, v14);
}

uint64_t ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  *(v9 + 104) = v16;
  *(v9 + 112) = v10;
  *(v9 + 88) = v15;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 120) = *v10;
  v12 = sub_1D95BFA3C();
  *(v9 + 128) = v12;
  *(v9 + 136) = *(v12 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = *(a7 - 8);
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95880DC, 0, 0);
}

uint64_t sub_1D95880DC()
{
  v1 = encodeXPCValues<A>(_:)(*(v0 + 40), *(v0 + 64));
  *(v0 + 168) = v1;
  *(v0 + 176) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 120);
  v6 = *(*(v0 + 112) + 16);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v10 = *(v0 + 48);
  *(v7 + 16) = *(v0 + 64);
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  *(v7 + 64) = v6;
  *(v7 + 72) = v10;
  *(v7 + 88) = v3;
  *(v7 + 96) = v4;
  *(v7 + 104) = v5;
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_1D9588278;
  v12 = *(v0 + 160);
  v13 = *(v0 + 72);

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D95898D4, v7, v13);
}

uint64_t sub_1D9588278()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D958843C;
  }

  else
  {

    v2 = sub_1D9588394;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9588394()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[9];
  v4 = v0[3];
  sub_1D955AA18(v0[21], v0[22]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D958843C()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 32);

  v6 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v7 = sub_1D95BFA7C();

  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 200);
  if ((v7 & 1) != 0 && v5)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D95BFC8C();
    __swift_project_value_buffer(v9, qword_1EDCFA2D0);
    v10 = sub_1D95BFC6C();
    v11 = sub_1D95C009C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D953A000, v10, v11, "Connection interrupted, retrying request", v12, 2u);
      MEMORY[0x1DA733200](v12, -1, -1);
    }

    v13 = *(v0 + 32);

    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v14[1] = sub_1D958876C;
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    v21 = *(v0 + 24);

    return ServiceConnection.withAsyncService<A, B>(retryCount:argument:body:)(v21, v13 - 1, v19, v20, v17, v18, v15, v16);
  }

  else
  {
    *(v0 + 16) = v8;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v24 = swift_dynamicCast();
    v25 = *(v0 + 200);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    if (v24)
    {

      v28 = *(v0 + 224);
      sub_1D955A9C4();
      swift_allocError();
      *v29 = v28;
      swift_willThrow();
      sub_1D955AA18(v26, v27);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();

      sub_1D955AA18(v26, v27);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D958876C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D95888F8;
  }

  else
  {
    v2 = sub_1D9588880;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9588880()
{
  sub_1D955AA18(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95888F8()
{
  sub_1D955AA18(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D9588970(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06080, &unk_1D95C9250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ServiceConnection.withSyncService<A, B>(retryCount:argument:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, unint64_t, uint64_t (*)(), void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a3;
  v12 = v11;
  v48 = a4;
  v53 = a2;
  v44 = a1;
  v41 = a9;
  v46 = *v12;
  v47 = sub_1D95BFA3C();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v19 = MEMORY[0x1E69E7288];
  v37 = sub_1D95C056C();
  MEMORY[0x1EEE9AC00](v37);
  v45 = v36 - v20;
  v40 = a6;
  v38 = v18;
  type metadata accessor for SyncXPCResult(0, a6, v18, v19);
  v21 = SyncXPCResult.__allocating_init()();
  v39 = v12;
  v22 = v12[2];
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a10;
  v49 = a11;
  v50 = a10;
  v23[6] = a11;
  v23[7] = v21;
  aBlock[4] = sub_1D958A964;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);

  v25 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v24);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(v55, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v26 = v55[6];
    v27 = v52;
    v28 = encodeXPCValues<A>(_:)(v53, a5);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_0(v55);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v29;
      v32 = v28;
      v33 = swift_allocObject();
      v36[1] = a5;
      v33[2] = a5;
      v33[3] = a7;
      v36[2] = a7;
      v36[3] = a8;
      v34 = v49;
      v35 = v50;
      v33[4] = a8;
      v33[5] = v35;
      v33[6] = v34;
      v33[7] = v21;
      v33[8] = v46;

      v46 = v32;
      v52 = v31;
      v51(v26, v32, v31, sub_1D958A98C, v33);

      SyncXPCResult.result.getter(v45);
      sub_1D958A894(v37, aBlock, v41);
      __swift_destroy_boxed_opaque_existential_0(v55);

      sub_1D955AA18(v46, v52);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D955A9C4();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v55);
  }
}

void sub_1D9589114()
{
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCFA1A8;
  type metadata accessor for ServiceConnection();
  swift_allocObject();
  v1 = v0;
  v2 = sub_1D958A9C0(0xD000000000000025, 0x80000001D95D0940, v0);

  qword_1EDCFA280 = v2;
}

uint64_t ServiceConnection.__allocating_init()()
{
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCFA1A8;
  swift_allocObject();
  v1 = v0;
  v2 = sub_1D958A9C0(0xD000000000000025, 0x80000001D95D0940, v0);

  return v2;
}

uint64_t static ServiceConnection.shared.getter()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }
}

uint64_t ServiceConnection.__allocating_init(machServiceName:exportedObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1D958A9C0(a1, a2, a3);

  return v6;
}

uint64_t ServiceConnection.init(machServiceName:exportedObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D958A9C0(a1, a2, a3);

  return v4;
}

uint64_t sub_1D9589360(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D95893B0(const char *a1)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D95BFC8C();
  __swift_project_value_buffer(v2, qword_1EDCFA2D0);
  oslog = sub_1D95BFC6C();
  v3 = sub_1D95C009C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D953A000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1DA733200](v4, -1, -1);
  }
}

uint64_t ServiceConnection.deinit()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t ServiceConnection.__deallocating_deinit()
{
  [*(v0 + 16) invalidate];

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D9589518(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a7;
  v43 = a5;
  v44 = a6;
  v45 = a4;
  v46 = a3;
  v47 = a2;
  v49 = a13;
  v50 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v14 = sub_1D95BFF6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v37 - v17;
  v19 = *(v15 + 16);
  v48 = a1;
  v37[2] = v15 + 16;
  v37[0] = v19;
  v19(v37 - v17, a1, v14);
  v20 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v21 = v20 + v16;
  v37[1] = *(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v50;
  *(v22 + 3) = a9;
  v38 = a9;
  v39 = a10;
  *(v22 + 4) = a10;
  *(v22 + 5) = a11;
  v40 = a11;
  v41 = a12;
  v23 = v49;
  *(v22 + 6) = a12;
  *(v22 + 7) = v23;
  v24 = *(v15 + 32);
  v24(&v22[v20], v18, v14);
  aBlock[4] = sub_1D958ACFC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_20;
  v25 = _Block_copy(aBlock);

  v26 = [v47 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v27 = v51;
    (v37[0])(v18, v48, v14);
    v28 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 2) = v50;
    *(v29 + 3) = v30;
    v31 = v40;
    *(v29 + 4) = v39;
    *(v29 + 5) = v31;
    v32 = v49;
    *(v29 + 6) = v41;
    *(v29 + 7) = v32;
    v24(&v29[v20], v18, v14);
    v33 = v43;
    *&v29[v28] = v42;
    v46(v27, v33, v44, sub_1D958ADCC, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v34 = swift_allocError();
    *v35 = 0;
    v52[0] = v34;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9589918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D95BFC8C();
  __swift_project_value_buffer(v5, qword_1EDCFA2D0);
  v6 = a1;
  v7 = sub_1D95BFC6C();
  v8 = sub_1D95C009C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D953A000, v7, v8, "Error fetching remote object proxy: %{public}@", v9, 0xCu);
    sub_1D958AC94(v10);
    MEMORY[0x1DA733200](v10, -1, -1);
    MEMORY[0x1DA733200](v9, -1, -1);
  }

  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  sub_1D95BFF6C();
  return sub_1D95BFF4C();
}

void sub_1D9589AB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D9589B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18[1] = a3;
  v11 = sub_1D955A9C4();
  v12 = sub_1D95C056C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_1D9589C80(a6, a9, a10, v18 - v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v16 = sub_1D95BFF6C();
  sub_1D958A000(v15, v16, &type metadata for ManagedAppDistributionError, v11);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D9589C80@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v19 = a6;
  v9 = type metadata accessor for ServiceResult(0, a3, a4, a5);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  decodeXPCValues<A>(from:)(v9, WitnessTable, v17, v15);
  (*(v10 + 32))(v13, v15, v9);
  return sub_1D9590134(v13, a3, a4, a5, v19);
}

uint64_t sub_1D958A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D95C056C();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  (*(v18 + 16))(v23 - v16, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v12 + 32);
    v19(v14, v17, a3);
    v20 = swift_allocError();
    v19(v21, v14, a3);
    v23[3] = v20;
    return sub_1D95BFF4C();
  }

  else
  {
    (*(v7 + 32))(v10, v17, v6);
    return sub_1D95BFF5C();
  }
}

uint64_t sub_1D958A260(void *a1, uint64_t a2)
{
  v3 = sub_1D95C056C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v17 - v5);
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D95BFC8C();
  __swift_project_value_buffer(v7, qword_1EDCFA2D0);
  v8 = a1;
  v9 = sub_1D95BFC6C();
  v10 = sub_1D95C009C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D953A000, v9, v10, "Error fetching synchronous remote object proxy: %{public}@", v11, 0xCu);
    sub_1D958AC94(v12);
    MEMORY[0x1DA733200](v12, -1, -1);
    MEMORY[0x1DA733200](v11, -1, -1);
  }

  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v15 = a1;
  SyncXPCResult.setResult(_:)(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D958A49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a8;
  v21 = a4;
  v19 = a9;
  v9 = *(*a3 + 80);
  sub_1D955A9C4();
  v10 = sub_1D95C056C();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = sub_1D95C056C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - v15;
  sub_1D9589C80(v9, v20, v19, v12);
  sub_1D958A6C0(sub_1D958A678, v10, v16);
  SyncXPCResult.setResult(_:)(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D958A678@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1D955A9C4();
  result = swift_allocError();
  *a2 = result;
  *v5 = v3;
  return result;
}

uint64_t sub_1D958A6C0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v5, v9);
    a1(v12);
    (*(v10 + 8))(v12, v9);
    sub_1D95C056C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a5, v5, *(a2 + 16));
    sub_1D95C056C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D958A894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D958A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v6 = sub_1D95BFD8C();

  v7 = [v5 initWithMachServiceName:v6 options:0];

  *(v3 + 16) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v11 = *(v3 + 16);
  v26 = sub_1D9589354;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D9589360;
  v25 = &block_descriptor_12;
  v12 = _Block_copy(&v22);
  v13 = v11;
  [v13 setInterruptionHandler_];
  _Block_release(v12);

  v14 = *(v3 + 16);
  v26 = sub_1D95893A4;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D9589360;
  v25 = &block_descriptor_15;
  v15 = _Block_copy(&v22);
  v16 = v14;
  [v16 setInvalidationHandler_];
  _Block_release(v15);

  if (a3)
  {
    v17 = *(v3 + 16);
    v18 = a3;
    v19 = v17;
    v20 = [v8 interfaceWithProtocol_];
    [v19 setExportedInterface_];

    [*(v3 + 16) setExportedObject_];
  }

  [*(v3 + 16) resume];
  return v3;
}

uint64_t sub_1D958AC94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06050, &qword_1D95C5B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D958ACFC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v5 = *(sub_1D95BFF6C() - 8);
  v6 = v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1D9589918(a1, v6, v3, v4);
}

uint64_t sub_1D958ADCC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v11 = *(sub_1D95BFF6C() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  return sub_1D9589B1C(a1, a2, v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D958AEE8()
{
  type metadata accessor for ManagedAppLibraryCache(0);
  v0 = swift_allocObject();
  result = sub_1D958B918();
  qword_1ECB20790 = v0;
  return result;
}

uint64_t sub_1D958AF28(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - v10;
  v11 = type metadata accessor for ManagedApp(0);
  v54 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v52 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v52 - v23;
  v24 = *a1;
  v25 = *(v19 + 16);
  v60 = a4;
  v63 = v26;
  v25(v22, a4);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v24 + 24);
  v28 = v64;
  *(v24 + 24) = 0x8000000000000000;
  v62 = a2;
  v29 = a2;
  v30 = a3;
  v32 = sub_1D953E644(v29, a3);
  v33 = v28[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    goto LABEL_26;
  }

  LOBYTE(a4) = v31;
  if (v28[3] >= v35)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  sub_1D95AA89C(v35, isUniquelyReferenced_nonNull_native);
  v28 = v64;
  v36 = v30;
  v37 = sub_1D953E644(v62, v30);
  if ((a4 & 1) == (v38 & 1))
  {
    v32 = v37;
    *(v24 + 24) = v28;
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v43 = v61;
      sub_1D95ABF7C(v61, v22);
      v44 = *(v19 + 8);
      v19 += 8;
      v44(v43, v63);
      result = swift_endAccess();
      v22 = *(v24 + 40);
      if (v22 == 255)
      {
        break;
      }

      v30 = *(v24 + 32);
      if (v22)
      {
        *v57 = v30;
        swift_storeEnumTagMultiPayload();
        v46 = v55;
        sub_1D95BFFBC();
        return (*(v58 + 8))(v46, v59);
      }

      v47 = *(v30 + 16);
      sub_1D953C994(*(v24 + 32), 0);
      v32 = v62;
      v24 = v54;
      if (!v47)
      {
        return sub_1D953C97C(v30, v22);
      }

      a4 = 0;
      while (a4 < *(v30 + 16))
      {
        sub_1D9548200(v30 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * a4, v14);
        v48 = *v14 == v32 && v14[1] == v36;
        if (v48 || (sub_1D95C041C() & 1) != 0)
        {
          v49 = v52;
          sub_1D958DA24(v14, v52);
          v50 = v53;
          sub_1D958DA24(v49, v53);
          sub_1D9548200(v50, v57);
          swift_storeEnumTagMultiPayload();
          v51 = v55;
          sub_1D95BFFBC();
          sub_1D953C97C(v30, v22);
          (*(v58 + 8))(v51, v59);
          return sub_1D9548264(v50);
        }

        ++a4;
        sub_1D9548264(v14);
        if (v47 == a4)
        {
          return sub_1D953C97C(v30, v22);
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      sub_1D95AB46C();
      v28 = v64;
LABEL_7:
      v36 = v30;
      *(v24 + 24) = v28;
      if ((a4 & 1) == 0)
      {
LABEL_8:
        v28[(v32 >> 6) + 8] |= 1 << v32;
        v39 = (v28[6] + 16 * v32);
        *v39 = v62;
        v39[1] = v36;
        *(v28[7] + 8 * v32) = MEMORY[0x1E69E7CD0];
        v40 = v28[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          __break(1u);
          goto LABEL_29;
        }

        v28[2] = v42;
      }
    }
  }

  else
  {
LABEL_29:
    result = sub_1D95C04BC();
    __break(1u);
  }

  return result;
}

void sub_1D958B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07118, &qword_1D95C9300);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = v3 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  v12 = *(v11 + 8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v12 + 24);
  v14 = v26;
  *(v12 + 24) = 0x8000000000000000;
  v15 = sub_1D953E644(a2, a3);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v16;
  if (v14[3] < v20)
  {
    sub_1D95AA89C(v20, isUniquelyReferenced_nonNull_native);
    v14 = v26;
    v15 = sub_1D953E644(a2, a3);
    if ((v4 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1D95C04BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    v25 = v15;
    sub_1D95AB46C();
    v15 = v25;
    v14 = v26;
    *(v12 + 24) = v26;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v12 + 24) = v14;
  if (v4)
  {
LABEL_9:
    sub_1D95AE8D4(a1, v10);
    sub_1D9547EAC(v10, &qword_1ECB07118, &qword_1D95C9300);
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    return;
  }

LABEL_7:
  v14[(v15 >> 6) + 8] |= 1 << v15;
  v22 = (v14[6] + 16 * v15);
  *v22 = a2;
  v22[1] = a3;
  *(v14[7] + 8 * v15) = MEMORY[0x1E69E7CD0];
  v23 = v14[2];
  v19 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v19)
  {
    v14[2] = v24;

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D958B6E8(uint64_t *a1, uint64_t a2)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a1;
  v15 = *(v8 + 16);
  v20 = a2;
  v15(v11, a2, v7);
  swift_beginAccess();
  sub_1D95ABC98(v13, v11);
  (*(v8 + 8))(v13, v7);
  result = swift_endAccess();
  v17 = *(v14 + 40);
  if (v17 != 255)
  {
    v21 = *(v14 + 32);
    v22 = v17 & 1;
    sub_1D953C994(v21, v17 & 1);
    sub_1D95BFFBC();
    return (*(v4 + 8))(v6, v19);
  }

  return result;
}

uint64_t sub_1D958B918()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07088, &qword_1D95C9078);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = v0 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  type metadata accessor for ManagedAppLibraryCache.Storage();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CD0];
  *(v13 + 24) = sub_1D953FA80(MEMORY[0x1E69E7CC0]);
  *(v13 + 32) = 0;
  *(v13 + 40) = -1;
  *v12 = 0;
  *(v12 + 8) = v13;
  *v7 = 1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8640], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07080, &qword_1D95C9038);
  sub_1D95C002C();
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_stream, v11, v8);
  v14 = sub_1D95BFF8C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v0;

  sub_1D958D420(0, 0, v3, &unk_1D95C9338, v15);

  sub_1D9547EAC(v3, &qword_1ECB07138, &unk_1D95C9320);
  return v0;
}

uint64_t sub_1D958BC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-v4];
  (*(v3 + 16))(&v11[-v4], a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07150, &unk_1D95C9370);
  v6 = swift_allocObject();
  v7 = (*(v3 + 32))(v6 + *(*v6 + 88), v5, v2);
  if (qword_1EDCFA1A0 != -1)
  {
    v7 = swift_once();
  }

  v8 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v7);
  *&v11[-16] = v6;
  *&v11[-8] = v9;
  os_unfair_lock_lock(v8 + 26);
  sub_1D958DE08(&v8[4]);
  os_unfair_lock_unlock(v8 + 26);
  return sub_1D95BFFAC();
}

void sub_1D958BE14(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D958DE2C(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D958BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07050, &unk_1D95C9350);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D958BF98, 0, 0);
}

uint64_t sub_1D958BF98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  sub_1D95BFFEC();
  v0[8] = OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  v0[9] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1D958C084;
  v2 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v2);
}

uint64_t sub_1D958C084()
{

  return MEMORY[0x1EEE6DFA0](sub_1D958C180, 0, 0);
}

void sub_1D958C180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 32) + *(v0 + 64);
    os_unfair_lock_lock(v4);
    sub_1D958C32C((v4 + 8), v1, v2 & 1);
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);
    if (v3)
    {

      os_unfair_lock_unlock((v6 + v5));
    }

    else
    {
      sub_1D953C97C(v1, v2);
      os_unfair_lock_unlock((v6 + v5));
      *(v0 + 72) = 0;
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v8[1] = sub_1D958C084;
      v9 = *(v0 + 40);

      MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v9);
    }
  }
}

uint64_t sub_1D958C32C(int64_t *a1, _BYTE *a2, int a3)
{
  LODWORD(v133) = a3;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  MEMORY[0x1EEE9AC00](i);
  v130 = &v110[-v6];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v112 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v110[-v7];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v132 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v110[-v8];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07090, &qword_1D95C9080);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v110[-v9];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v124 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v110[-v10];
  v11 = type metadata accessor for ManagedApp(0);
  v116 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v114 = &v110[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v113 = &v110[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v110[-v18];
  v20 = *a1;
  v21 = *(*a1 + 40);
  v134 = a2;
  v117 = v3;
  v115 = v20;
  if (v21 == 255)
  {
    v23 = 0;
    v24 = 255;
  }

  else
  {
    v22 = *(v20 + 32);
    if (v21)
    {
      sub_1D953C97C(*(v20 + 32), v21);
      v23 = v22;
      v24 = 1;
    }

    else
    {
      v25 = *(v22 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v25)
      {
        v26 = *(v20 + 32);
        LODWORD(v119) = v21;
        sub_1D953CA18(v26, v21);
        sub_1D953C994(v22, 0);
        v137 = v23;
        sub_1D95AB8D4(0, v25, 0);
        v23 = v137;
        v27 = v22;
        v28 = v22 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
        v125 = *(v116 + 72);
        do
        {
          sub_1D9548200(v28, v19);
          v29 = *v19;
          v30 = v19[1];

          sub_1D9548264(v19);
          v137 = v23;
          v32 = *(v23 + 16);
          v31 = *(v23 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D95AB8D4((v31 > 1), v32 + 1, 1);
            v23 = v137;
          }

          *(v23 + 16) = v32 + 1;
          v33 = v23 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          v28 += v125;
          --v25;
        }

        while (v25);
        v21 = v119;
        sub_1D953C97C(v27, v119);
        sub_1D953C97C(v27, v21);
        a2 = v134;
        v20 = v115;
      }

      v24 = 0;
    }
  }

  v125 = v23;
  if (v133)
  {
    v34 = a2;
  }

  else
  {
    v35 = *(a2 + 2);
    v34 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v111 = v24;
      LODWORD(v119) = v21;
      v137 = MEMORY[0x1E69E7CC0];
      sub_1D95AB8D4(0, v35, 0);
      v34 = v137;
      v36 = &a2[(*(v116 + 80) + 32) & ~*(v116 + 80)];
      v37 = *(v116 + 72);
      do
      {
        sub_1D9548200(v36, v19);
        v38 = *v19;
        v39 = v19[1];

        sub_1D9548264(v19);
        v137 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D95AB8D4((v40 > 1), v41 + 1, 1);
          v34 = v137;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        v36 += v37;
        --v35;
      }

      while (v35);
      a2 = v134;
      v20 = v115;
      v21 = v119;
      LOBYTE(v24) = v111;
    }
  }

  LOBYTE(v43) = v133 & 1;
  if (v21 == 255)
  {
    sub_1D953C97C(v125, v24);
    sub_1D953C97C(v34, v43);
LABEL_27:
    v53 = *(v20 + 32);
    *(v20 + 32) = a2;
    v54 = *(v20 + 40);
    *(v20 + 40) = v43;
    sub_1D953C994(a2, v133 & 1);
    sub_1D953C97C(v53, v54);
    swift_beginAccess();
    v55 = *(v20 + 16);
    v56 = v55 + 56;
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v55 + 56);
    v60 = (v57 + 63) >> 6;
    v119 = v124 + 16;
    v43 = v118 + 8;
    v118 = v124 + 8;
    v125 = v55;

    v61 = 0;
    if (v59)
    {
      while (1)
      {
        v62 = v61;
LABEL_35:
        v63 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        a2 = v124;
        v64 = v120;
        v20 = v121;
        (*(v124 + 16))(v120, *(v125 + 48) + *(v124 + 72) * (v63 | (v62 << 6)), v121);
        v135 = v134;
        v136 = v133 & 1;
        sub_1D953C994(v134, v133 & 1);
        v65 = v122;
        sub_1D95BFFBC();
        (*v43)(v65, v123);
        (*(a2 + 1))(v64, v20);
        if (!v59)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_81;
      }

      if (v62 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v62);
      ++v61;
      if (v59)
      {
        v61 = v62;
        goto LABEL_35;
      }
    }

    if (v133)
    {
      v66 = v115;
      swift_beginAccess();
      v67 = *(v66 + 24);
      v68 = (v67 + 64);
      v69 = 1 << *(v67 + 32);
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v71 = v70 & *(v67 + 64);
      v72 = (v69 + 63) >> 6;
      v133 = v132 + 16;
      v124 = v132 + 8;
      v125 = v112 + 8;
      v121 = v67;

      v73 = 0;
      v120 = v68;
      v119 = v72;
      v74 = v127;
LABEL_43:
      if (!v71)
      {
        while (1)
        {
          v75 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v75 >= v72)
          {
          }

          v71 = *&v68[8 * v75];
          ++v73;
          if (v71)
          {
            goto LABEL_48;
          }
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v75 = v73;
LABEL_48:
      v76 = *(v121 + 56);
      v122 = v75;
      v77 = *(v76 + ((v75 << 9) | (8 * __clz(__rbit64(v71)))));
      v123 = (v71 - 1) & v71;
      a2 = v77 + 56;
      v78 = 1 << v77[32];
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v77 + 7);
      v43 = (v78 + 63) >> 6;
      v139 = v77;
      swift_bridgeObjectRetain_n();
      v20 = 0;
      while (v80)
      {
        v81 = v20;
LABEL_57:
        v82 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        v83 = v132;
        v84 = v126;
        (*(v132 + 16))(v126, *(v139 + 6) + *(v132 + 72) * (v82 | (v81 << 6)), v74);
        *v130 = v134;
        swift_storeEnumTagMultiPayload();
        v85 = v128;
        sub_1D95BFFBC();
        (*v125)(v85, v129);
        (*(v83 + 8))(v84, v74);
      }

      while (1)
      {
        v81 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v81 >= v43)
        {

          v73 = v122;
          v71 = v123;
          v68 = v120;
          v72 = v119;
          goto LABEL_43;
        }

        v80 = *&a2[8 * v81];
        ++v20;
        if (v80)
        {
          v20 = v81;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {
      v86 = v115;
      swift_beginAccess();
      v87 = *(v86 + 24);
      v90 = *(v87 + 64);
      v89 = v87 + 64;
      v88 = v90;
      v91 = 1 << *(*(v86 + 24) + 32);
      v92 = -1;
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      v93 = v92 & v88;
      v20 = (v91 + 63) >> 6;
      v132 = *(v86 + 24);

      v94 = 0;
      for (i = v89; v93; v89 = i)
      {
LABEL_68:
        while (1)
        {
          v96 = __clz(__rbit64(v93));
          v93 &= v93 - 1;
          v97 = v96 | (v94 << 6);
          v98 = (*(v132 + 48) + 16 * v97);
          a2 = *v98;
          v99 = v98[1];
          v100 = *(*(v132 + 56) + 8 * v97);
          v101 = v134;
          v102 = *(v134 + 2);

          v133 = v100;

          if (v102)
          {
            break;
          }

LABEL_63:

          v89 = i;
          if (!v93)
          {
            goto LABEL_64;
          }
        }

        v103 = v101 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
        v43 = *(v116 + 72);
        v104 = v139;
        while (1)
        {
          sub_1D9548200(v103, v104);
          v105 = *v104 == a2 && v104[1] == v99;
          if (v105 || (sub_1D95C041C() & 1) != 0)
          {
            break;
          }

          v104 = v139;
          sub_1D9548264(v139);
          v103 += v43;
          if (!--v102)
          {
            goto LABEL_63;
          }
        }

        v106 = v114;
        sub_1D958DA24(v139, v114);
        v107 = v113;
        v108 = sub_1D958DA24(v106, v113);
        MEMORY[0x1EEE9AC00](v108);
        *&v110[-16] = v107;
        a2 = v133;
        v109 = v117;
        sub_1D958D24C(sub_1D958DD1C, &v110[-32], v133);
        v117 = v109;

        sub_1D9548264(v107);
      }

LABEL_64:
      while (1)
      {
        v95 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v95 >= v20)
        {
        }

        v93 = *(v89 + 8 * v95);
        ++v94;
        if (v93)
        {
          v94 = v95;
          goto LABEL_68;
        }
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v44 = v125;
  v137 = v125;
  v138 = v24;
  v135 = v34;
  v136 = v133 & 1;
  sub_1D953CA18(v125, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  sub_1D958DD38();
  sub_1D958DDB4();
  sub_1D955A9C4();
  v45 = sub_1D95C057C();
  sub_1D953BC8C(v135, v136);
  sub_1D953BC8C(v137, v138);
  sub_1D953C97C(v44, v24);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_1EDCFA2C8 != -1)
  {
LABEL_84:
    swift_once();
  }

  v46 = sub_1D95BFC8C();
  __swift_project_value_buffer(v46, qword_1EDCFA2D0);
  v47 = sub_1D95BFC6C();
  v48 = sub_1D95C00AC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D953A000, v47, v48, "Deduplicating app catalog results", v49, 2u);
    MEMORY[0x1DA733200](v49, -1, -1);
  }

  v50 = *(v20 + 32);
  *(v20 + 32) = a2;
  v51 = *(v20 + 40);
  *(v20 + 40) = v43;
  sub_1D953C994(a2, v133 & 1);
  return sub_1D953C97C(v50, v51);
}

uint64_t sub_1D958D0D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07128, &unk_1D95C9310);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  sub_1D9548200(a2, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  sub_1D95BFFBC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D958D24C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v18[1] = v6 + 8;
  v18[2] = v6 + 16;
  v20 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v6 + 16))(v8, *(v20 + 48) + *(v6 + 72) * (v17 | (v16 << 6)), v5);
    v19(v8);
    result = (*(v6 + 8))(v8, v5);
    if (v3)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D958D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D958DB3C(a3, v25 - v10);
  v12 = sub_1D95BFF8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D9547EAC(v11, &qword_1ECB07138, &unk_1D95C9320);
  }

  else
  {
    sub_1D95BFF7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D95BFF2C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D95BFE0C() + 32;
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

uint64_t sub_1D958D6D0()
{

  sub_1D953C97C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1D958D71C()
{
  v1 = OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ManagedAppLibraryCache(uint64_t a1)
{
  result = qword_1ECB07108;
  if (!qword_1ECB07108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D958D82C(uint64_t a1)
{
  sub_1D9586BFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_OWORD *sub_1D958D8E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D953F6D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1D958D954(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D953F6D0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1D958D9D0(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1D958DA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D958DA88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D955BACC;

  return sub_1D958BECC(a1, v4, v5, v6);
}

uint64_t sub_1D958DB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07138, &unk_1D95C9320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D958DBAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D955C654;

  return sub_1D95A9C8C(a1, v4);
}

uint64_t sub_1D958DC64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D955BACC;

  return sub_1D95A9C8C(a1, v4);
}

unint64_t sub_1D958DD38()
{
  result = qword_1ECB07140;
  if (!qword_1ECB07140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07140);
  }

  return result;
}

unint64_t sub_1D958DDB4()
{
  result = qword_1ECB07148;
  if (!qword_1ECB07148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07148);
  }

  return result;
}

uint64_t InternalManagedAppInstallRequest.declarationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InternalManagedAppInstallRequest.init(declarationID:buyParams:externalVersionID:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{

  *(a7 + 17) = 1;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 16) = a6 & 1;
  return result;
}

uint64_t InternalManagedAppInstallRequest.request()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D958DF5C, 0, 0);
}

uint64_t sub_1D958DF5C()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D958E054;

  return sub_1D9552454(1, v0 + 16, sub_1D958E148, 0);
}

uint64_t sub_1D958E054()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D958E148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [a1 installManagedAppInternal:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D958E224()
{
  v1 = 0x746172616C636564;
  v2 = 0x74696E4972657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x65706F6373;
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

uint64_t sub_1D958E2B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D958EA14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D958E2E0(uint64_t a1)
{
  v2 = sub_1D958E558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D958E31C(uint64_t a1)
{
  v2 = sub_1D958E558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalManagedAppInstallRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07158, &qword_1D95C9388);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 17);
  v13 = v7;
  v11 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958E558();
  sub_1D95C05BC();
  v19 = 0;
  v8 = v14;
  sub_1D95C038C();
  if (!v8)
  {
    v18 = v13;
    v17 = 1;
    sub_1D9547DB0();
    sub_1D95C03CC();
    v16 = 2;
    sub_1D95C039C();
    v15 = 3;
    sub_1D95C037C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D958E558()
{
  result = qword_1ECB07160;
  if (!qword_1ECB07160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07160);
  }

  return result;
}

uint64_t InternalManagedAppInstallRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07168, &qword_1D95C9390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D958E558();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_1D95C02CC();
  v11 = v10;
  v20 = v9;
  v23 = 1;
  sub_1D9548104();
  sub_1D95C030C();
  v12 = v24;
  v22 = 2;
  v13 = sub_1D95C02DC();
  v18 = v12;
  v19 = v13;
  v21 = 3;
  v15 = sub_1D95C02BC();
  LOBYTE(v12) = v16;
  v19 &= 1u;
  (*(v6 + 8))(v8, v5);
  *a2 = v20;
  *(a2 + 8) = v11;
  v17 = v19;
  *(a2 + 16) = v18;
  *(a2 + 17) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
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

uint64_t sub_1D958E860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D958E8A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D958E910()
{
  result = qword_1ECB07170;
  if (!qword_1ECB07170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07170);
  }

  return result;
}

unint64_t sub_1D958E968()
{
  result = qword_1ECB07178;
  if (!qword_1ECB07178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07178);
  }

  return result;
}

unint64_t sub_1D958E9C0()
{
  result = qword_1ECB07180;
  if (!qword_1ECB07180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07180);
  }

  return result;
}

uint64_t sub_1D958EA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172616C636564 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696E4972657375 && a2 == 0xED00006465746169 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0230 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedAppLibrary.app(with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07188, &unk_1D95C9560);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07120, &qword_1D95C9308);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v4);
  return sub_1D95C002C();
}

uint64_t sub_1D958ECE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage;
  os_unfair_lock_lock((qword_1ECB20790 + OBJC_IVAR____TtC22ManagedAppDistribution22ManagedAppLibraryCache_lockedStorage));
  sub_1D958AF28((v11 + 8), a2, a3, a1);
  os_unfair_lock_unlock(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;

  return sub_1D95BFFAC();
}

void sub_1D958EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (qword_1ECB05B98 != -1)
  {
    swift_once();
    v6 = a2;
  }

  sub_1D958B4CC(v6, a3, a4);
}

uint64_t sub_1D958EF64()
{
  *(v0 + 16) = 0u;
  *(v0 + 88) = 1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 256;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D958F088;

  return sub_1D954ADD4(1, v0 + 16, sub_1D954A5DC, 0);
}

uint64_t sub_1D958F088()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D958F200;
  }

  else
  {
    v2 = sub_1D958F19C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D958F19C()
{
  sub_1D9555D64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D958F200()
{
  sub_1D9555D64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ManagedAppLibrary.install(_:)(uint64_t a1)
{
  v1[10] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07190, &qword_1D95C9580);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07198, &qword_1D95C9588);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D958F398, 0, 0);
}

uint64_t sub_1D958F398()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  ManagedApp.state.getter();
  sub_1D95BFFEC();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1D958F484;
  v5 = v0[14];

  return MEMORY[0x1EEE6D9D0](v0 + 9, v5);
}

uint64_t sub_1D958F484()
{

  return MEMORY[0x1EEE6DFA0](sub_1D958F580, 0, 0);
}

uint64_t sub_1D958F580()
{
  v25 = v0;
  v1 = *(v0 + 72);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
  }

  *(v0 + 144) = v1;
  if (qword_1EDCFA1A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  *(v0 + 152) = qword_1EDCFA1A8;
  v3 = v2[2];
  *(v0 + 160) = v3;
  v4 = v2[3];
  *(v0 + 168) = v4;
  v5 = v2[4];
  *(v0 + 176) = v5;
  v6 = *(v2 + 40);
  *(v0 + 65) = v6;
  v20 = 0x8000000000000010;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  swift_bridgeObjectRetain_n();
  sub_1D95A6484(&v20);

  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  sub_1D9564D80(v20);
  sub_1D958FFD0(v7, v8, v9, v10);
  v12 = *v2;
  v11 = v2[1];
  v13 = type metadata accessor for ManagedApp(0);
  v14 = (v2 + *(v13 + 120));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v2 + *(v13 + 124));
  *(v0 + 200) = 1;
  *(v0 + 16) = v12;
  *(v0 + 24) = v11;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = v14;
  *(v0 + 49) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v17 = qword_1EDCFA278;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_1D958F7C8;

  return sub_1D954ADD4(1, v0 + 16, sub_1D954A5DC, 0);
}

uint64_t sub_1D958F7C8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D958F98C;
  }

  else
  {
    v2 = sub_1D958F8DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D958F8DC()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_1D9555D64((v0 + 2));
  sub_1D9564D80(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D958F98C()
{
  v19 = v0;
  v1 = *(v0 + 65);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v13 = *(v0 + 112);
  sub_1D9555D64(v0 + 16);
  v14 = v5;
  v15 = v4;
  v16 = v2;
  v17 = v3;
  v18 = v1;
  swift_bridgeObjectRetain_n();
  sub_1D953FCB8(v5);
  sub_1D95A6484(&v14);

  v8 = v15;
  v9 = v16;
  v10 = v17;
  LOBYTE(v3) = v18;
  sub_1D9564D80(v14);
  sub_1D958FFD0(v8, v9, v10, v3);
  swift_willThrow();
  sub_1D9564D80(v5);
  (*(v6 + 8))(v7, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D958FAD8()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v0[3] = v2;
  v4 = qword_1EDCFA278;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D955FDAC;

  return sub_1D954C21C(1, v3, v2, sub_1D9568CB0, 0);
}

uint64_t static ManagedAppLibrary.appProgress.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06288, &unk_1D95C2AF0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06290, &unk_1D95C95A0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-v10];
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1D95BFF9C();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 16))(v9, v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06298, &qword_1D95C2B00);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + *(*v12 + 88), v9, v5);

  v13 = sub_1D95BFFAC();
  if (qword_1EDCFA1A0 != -1)
  {
    v13 = swift_once();
  }

  v14 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v13);
  *&v17[-16] = v12;
  *&v17[-8] = v15;
  os_unfair_lock_lock(v14 + 26);
  sub_1D9560370(&v14[4]);
  os_unfair_lock_unlock(v14 + 26);

  return (*(v6 + 8))(v11, v5);
}

void sub_1D958FF00(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95603C8(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D958FFD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_1D9590024()
{
  result = qword_1ECB071A0;
  if (!qword_1ECB071A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB071A8, &qword_1D95C95E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071A0);
  }

  return result;
}

void sub_1D9590088(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1D958EEC8(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D9590134@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  type metadata accessor for ServiceResult(0, a2, a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a5 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a5, a1, a2);
  }

  sub_1D955A9C4();
  sub_1D95C056C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D9590220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9590324(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D959036C(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D959039C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D95C041C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D959044C(uint64_t a1)
{
  sub_1D95C051C();
  sub_1D95902FC(v3, *v1);
  return sub_1D95C055C();
}

uint64_t sub_1D95904AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9590220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95904E0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D9591958();
  *a2 = result;
  return result;
}

uint64_t sub_1D9590514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9590568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D95905BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9590610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9590664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D95906B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ServiceResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v41 = v7;
  v8 = sub_1D95C03EC();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = v34 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v36 = v10;
  v34[1] = v11;
  v12 = sub_1D95C03EC();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v35 = v34 - v14;
  v37 = *(v4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v34[0] = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  v46 = v4;
  type metadata accessor for ServiceResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v20 = sub_1D95C03EC();
  v48 = *(v20 - 8);
  v49 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05BC();
  (*(v17 + 16))(v19, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v19;
    v52 = 1;
    v24 = v42;
    v25 = v49;
    sub_1D95C034C();
    v51 = v23;
    sub_1D9590C68();
    v26 = v44;
    sub_1D95C03CC();
    (*(v43 + 8))(v24, v26);
    return (*(v48 + 8))(v22, v25);
  }

  else
  {
    v28 = v37;
    v29 = v34[0];
    v30 = v46;
    (*(v37 + 32))(v34[0], v19, v46);
    v50 = 0;
    v31 = v35;
    v32 = v49;
    sub_1D95C034C();
    v33 = v39;
    sub_1D95C03CC();
    (*(v38 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v48 + 8))(v22, v32);
  }
}

unint64_t sub_1D9590C68()
{
  result = qword_1EDCF9CC8;
  if (!qword_1EDCF9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CC8);
  }

  return result;
}

uint64_t ServiceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a1;
  v65 = a5;
  v8 = type metadata accessor for ServiceResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v62 = v8;
  v55 = sub_1D95C033C();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v63 = &v50 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, a2, a3, a4);
  v58 = swift_getWitnessTable();
  v59 = v10;
  v53 = sub_1D95C033C();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v60 = &v50 - v11;
  type metadata accessor for ServiceResult.CodingKeys(255, a2, a3, a4);
  v68 = swift_getWitnessTable();
  v12 = sub_1D95C033C();
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v56 = a2;
  v57 = a3;
  v16 = type metadata accessor for ServiceResult(0, a2, a3, a4);
  v64 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - v23;
  __swift_project_boxed_opaque_existential_1Tm(v74, v74[3]);
  v25 = v69;
  sub_1D95C059C();
  if (!v25)
  {
    v69 = v22;
    v51 = v19;
    v68 = v24;
    v26 = v66;
    v27 = v15;
    *&v70 = sub_1D95C032C();
    sub_1D95BFF1C();
    swift_getWitnessTable();
    *&v72 = sub_1D95C010C();
    *(&v72 + 1) = v28;
    *&v73 = v29;
    *(&v73 + 1) = v30;
    sub_1D95C00FC();
    swift_getWitnessTable();
    sub_1D95C004C();
    v31 = v70;
    if (v70 == 2 || (v50 = v72, v70 = v72, v71 = v73, (sub_1D95C005C() & 1) == 0))
    {
      v40 = sub_1D95C01FC();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v42 = v16;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v67 + 8))(v15, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v70) = 1;
        v32 = v63;
        v33 = v27;
        sub_1D95C027C();
        v34 = v65;
        v35 = v67;
        sub_1D9591498();
        v36 = v55;
        sub_1D95C030C();
        (*(v54 + 8))(v32, v36);
        (*(v35 + 8))(v33, v26);
        swift_unknownObjectRelease();
        v37 = v51;
        *v51 = v70;
        swift_storeEnumTagMultiPayload();
        v38 = *(v64 + 32);
        v39 = v68;
        v38(v68, v37, v16);
      }

      else
      {
        LOBYTE(v70) = 0;
        v43 = v60;
        v44 = v27;
        sub_1D95C027C();
        v45 = v67;
        v46 = v64;
        v47 = v53;
        sub_1D95C030C();
        (*(v52 + 8))(v43, v47);
        (*(v45 + 8))(v44, v26);
        swift_unknownObjectRelease();
        v49 = v69;
        swift_storeEnumTagMultiPayload();
        v38 = *(v46 + 32);
        v39 = v68;
        v38(v68, v49, v16);
        v34 = v65;
      }

      v38(v34, v39, v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v74);
}

unint64_t sub_1D9591498()
{
  result = qword_1ECB071B0;
  if (!qword_1ECB071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071B0);
  }

  return result;
}

uint64_t sub_1D9591528(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9591594(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D95916A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t ManagedAppDistributionError.localizedStringResource.getter()
{
  v0 = sub_1D95BFC2C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D95BFAFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D95BFD7C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D95BFD6C();
  if (qword_1ECB05BD8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1ECB07F78);
  (*(v2 + 16))(v4, v6, v1);
  sub_1D95BFC0C();
  return sub_1D95BFB1C();
}

uint64_t ManagedAppDistributionError.description.getter()
{
  v0 = sub_1D95BFB0C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

uint64_t ManagedAppDistributionError.errorDescription.getter()
{
  v0 = sub_1D95BFB0C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

uint64_t sub_1D9591DA8(uint64_t a1)
{
  v2 = sub_1D9593168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591DE4(uint64_t a1)
{
  v2 = sub_1D9593168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9591E20()
{
  v1 = *v0;
  v2 = 0x456B726F7774656ELL;
  v3 = 0xD000000000000013;
  v4 = 0x4E65736E6563696CLL;
  if (v1 != 4)
  {
    v4 = 0x614D746F4E707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9591F08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9593A4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9591F30(uint64_t a1)
{
  v2 = sub_1D9593114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591F6C(uint64_t a1)
{
  v2 = sub_1D9593114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9591FA8(uint64_t a1)
{
  v2 = sub_1D9593264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9591FE4(uint64_t a1)
{
  v2 = sub_1D9593264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592020(uint64_t a1)
{
  v2 = sub_1D95931BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959205C(uint64_t a1)
{
  v2 = sub_1D95931BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592098(uint64_t a1)
{
  v2 = sub_1D95932B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95920D4(uint64_t a1)
{
  v2 = sub_1D95932B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592110(uint64_t a1)
{
  v2 = sub_1D959330C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959214C(uint64_t a1)
{
  v2 = sub_1D959330C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9592188(uint64_t a1)
{
  v2 = sub_1D9593210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95921C4(uint64_t a1)
{
  v2 = sub_1D9593210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDistributionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071B8, &qword_1D95C9A10);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071C0, &qword_1D95C9A18);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071C8, &qword_1D95C9A20);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071D0, &qword_1D95C9A28);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071D8, &qword_1D95C9A30);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071E0, &qword_1D95C9A38);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB071E8, &qword_1D95C9A40);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9593114();
  sub_1D95C05BC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1D9593210();
      v21 = v33;
      v22 = v42;
      sub_1D95C034C();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1D95931BC();
      v21 = v36;
      v22 = v42;
      sub_1D95C034C();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1D9593168();
      v21 = v39;
      v22 = v42;
      sub_1D95C034C();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1D95932B8();
      v21 = v27;
      v22 = v42;
      sub_1D95C034C();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1D9593264();
      v21 = v30;
      v22 = v42;
      sub_1D95C034C();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1D959330C();
  v22 = v42;
  sub_1D95C034C();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t ManagedAppDistributionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t ManagedAppDistributionError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07218, &qword_1D95C9A48);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07220, &qword_1D95C9A50);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07228, &qword_1D95C9A58);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07230, &qword_1D95C9A60);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07238, &qword_1D95C9A68);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07240, &qword_1D95C9A70);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07248, &unk_1D95C9A78);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_1D9593114();
  v22 = v56;
  sub_1D95C059C();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1D95C032C();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1D954A274();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1D95C01FC();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v36 = &type metadata for ManagedAppDistributionError;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1D9593210();
          sub_1D95C027C();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1D95931BC();
          sub_1D95C027C();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1D9593168();
          sub_1D95C027C();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1D95932B8();
            v31 = v56;
            sub_1D95C027C();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1D9593264();
            v31 = v51;
            sub_1D95C027C();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1D959330C();
          sub_1D95C027C();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_1D9593008()
{
  v0 = sub_1D95BFB0C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  ManagedAppDistributionError.localizedStringResource.getter();
  return sub_1D95BFDEC();
}

unint64_t sub_1D9593114()
{
  result = qword_1EDCF9D00;
  if (!qword_1EDCF9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D00);
  }

  return result;
}

unint64_t sub_1D9593168()
{
  result = qword_1ECB071F0;
  if (!qword_1ECB071F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071F0);
  }

  return result;
}

unint64_t sub_1D95931BC()
{
  result = qword_1ECB071F8;
  if (!qword_1ECB071F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB071F8);
  }

  return result;
}

unint64_t sub_1D9593210()
{
  result = qword_1ECB07200;
  if (!qword_1ECB07200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07200);
  }

  return result;
}

unint64_t sub_1D9593264()
{
  result = qword_1ECB07208;
  if (!qword_1ECB07208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07208);
  }

  return result;
}

unint64_t sub_1D95932B8()
{
  result = qword_1ECB07210;
  if (!qword_1ECB07210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07210);
  }

  return result;
}

unint64_t sub_1D959330C()
{
  result = qword_1EDCF9D48[0];
  if (!qword_1EDCF9D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF9D48);
  }

  return result;
}

uint64_t sub_1D9593374(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D9593404(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9593528()
{
  result = qword_1ECB07250;
  if (!qword_1ECB07250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07250);
  }

  return result;
}

unint64_t sub_1D9593580()
{
  result = qword_1EDCF9D38;
  if (!qword_1EDCF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D38);
  }

  return result;
}

unint64_t sub_1D95935D8()
{
  result = qword_1EDCF9D40;
  if (!qword_1EDCF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D40);
  }

  return result;
}

unint64_t sub_1D9593630()
{
  result = qword_1EDCF9D28;
  if (!qword_1EDCF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D28);
  }

  return result;
}

unint64_t sub_1D9593688()
{
  result = qword_1EDCF9D30;
  if (!qword_1EDCF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D30);
  }

  return result;
}

unint64_t sub_1D95936E0()
{
  result = qword_1EDCF9D18;
  if (!qword_1EDCF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D18);
  }

  return result;
}

unint64_t sub_1D9593738()
{
  result = qword_1EDCF9D20;
  if (!qword_1EDCF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D20);
  }

  return result;
}

unint64_t sub_1D9593790()
{
  result = qword_1EDCF9CD0;
  if (!qword_1EDCF9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CD0);
  }

  return result;
}

unint64_t sub_1D95937E8()
{
  result = qword_1EDCF9CD8;
  if (!qword_1EDCF9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CD8);
  }

  return result;
}

unint64_t sub_1D9593840()
{
  result = qword_1EDCF9CE0;
  if (!qword_1EDCF9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CE0);
  }

  return result;
}

unint64_t sub_1D9593898()
{
  result = qword_1EDCF9CE8;
  if (!qword_1EDCF9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CE8);
  }

  return result;
}

unint64_t sub_1D95938F0()
{
  result = qword_1EDCF9D08;
  if (!qword_1EDCF9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D08);
  }

  return result;
}

unint64_t sub_1D9593948()
{
  result = qword_1EDCF9D10;
  if (!qword_1EDCF9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9D10);
  }

  return result;
}

unint64_t sub_1D95939A0()
{
  result = qword_1EDCF9CF0;
  if (!qword_1EDCF9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CF0);
  }

  return result;
}

unint64_t sub_1D95939F8()
{
  result = qword_1EDCF9CF8;
  if (!qword_1EDCF9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CF8);
  }

  return result;
}

uint64_t sub_1D9593A4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001D95D0C00 == a2;
  if (v3 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D0C20 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D95D0C40 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E65736E6563696CLL && a2 == 0xEF646E756F46746FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614D746F4E707061 && a2 == 0xED0000646567616ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ManagedAppDeclaration.declarationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ManagedAppDeclaration.declarationKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedAppDeclaration.declarationIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ManagedAppDeclaration.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ManagedAppDeclaration.personaIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ManagedAppDeclaration.personaIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ManagedAppDeclaration.attributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D957E2D0(v2, v3);
}

uint64_t ManagedAppDeclaration.attributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D955F8FC(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t ManagedAppDeclaration.backupBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ManagedAppDeclaration.backupBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ManagedAppDeclaration(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t ManagedAppDeclaration.updateBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t ManagedAppDeclaration.updateBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for ManagedAppDeclaration(0);
  v6 = v1 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t ManagedAppDeclaration.platform.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ManagedAppDeclaration(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ManagedAppDeclaration.platform.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ManagedAppDeclaration(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:managementScope:personaIdentifier:installBehavior:backupBehavior:updateBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t *a12)
{
  v16 = *a10;
  v17 = *a11;
  v18 = *(a11 + 8);
  v19 = *(a11 + 9);
  v20 = *a12;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a8, a9 + v21[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v21[10]) = v16;
  v23 = a9 + v21[11];
  *v23 = v17;
  *(v23 + 8) = v18;
  *(v23 + 9) = v19;
  *(a9 + v21[12]) = v20;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 32) = a5 & 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:personaIdentifier:installBehavior:backupBehavior:updateBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v15 = *a8;
  v16 = *a10;
  v17 = *(a10 + 8);
  v18 = *(a10 + 9);
  v19 = *a11;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v20 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a7, a9 + v20[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v20[10]) = v15;
  v22 = a9 + v20[11];
  *v22 = v16;
  *(v22 + 8) = v17;
  *(v22 + 9) = v18;
  *(a9 + v20[12]) = v19;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:personaIdentifier:installBehavior:backupBehavior:updateBehavior:removalBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t *a12)
{
  v16 = *a8;
  v17 = *a10;
  v18 = *(a10 + 8);
  v19 = *(a10 + 9);
  v20 = *a12;
  *(a9 + 56) = xmmword_1D95CA220;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v21 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a7, a9 + v21[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a9 + v21[10]) = v16;
  v23 = a9 + v21[11];
  *v23 = v17;
  *(v23 + 8) = v18;
  *(v23 + 9) = v19;
  *(a9 + v21[12]) = v20;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.init(declarationKey:declarationIdentifier:installBehavior:backupBehavior:updateBehavior:removalBehavior:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, uint64_t *a9)
{
  v11 = *a6;
  v12 = *a7;
  v13 = *(a7 + 8);
  v14 = *(a7 + 9);
  v15 = *a9;
  *(a8 + 56) = xmmword_1D95CA220;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v16 = type metadata accessor for ManagedAppDeclaration(0);
  result = sub_1D959D0B0(a5, a8 + v16[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  *(a8 + v16[10]) = v11;
  v18 = a8 + v16[11];
  *v18 = v12;
  *(v18 + 8) = v13;
  *(v18 + 9) = v14;
  *(a8 + v16[12]) = v15;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 32) = 1;
  return result;
}

uint64_t sub_1D959456C(uint64_t a1)
{
  v2 = sub_1D9594990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95945A8(uint64_t a1)
{
  v2 = sub_1D9594990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95945E4(uint64_t a1)
{
  v2 = sub_1D9594A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594620(uint64_t a1)
{
  v2 = sub_1D9594A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959465C(uint64_t a1)
{
  v2 = sub_1D95949E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594698(uint64_t a1)
{
  v2 = sub_1D95949E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.ManagementScope.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07258, &qword_1D95CA230);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07260, &qword_1D95CA238);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07268, &qword_1D95CA240);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9594990();
  sub_1D95C05BC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D95949E4();
    sub_1D95C034C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D9594A38();
    sub_1D95C034C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1D9594990()
{
  result = qword_1ECB07270;
  if (!qword_1ECB07270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07270);
  }

  return result;
}

unint64_t sub_1D95949E4()
{
  result = qword_1ECB07278;
  if (!qword_1ECB07278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07278);
  }

  return result;
}

unint64_t sub_1D9594A38()
{
  result = qword_1ECB07280;
  if (!qword_1ECB07280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07280);
  }

  return result;
}

uint64_t ManagedAppDeclaration.ManagementScope.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D9594B18@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D959CAB0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t ManagedAppDeclaration.Attributes.rawValue.getter()
{
  v1 = *v0;
  sub_1D955F8A8(*v0, *(v0 + 8));
  return v1;
}

uint64_t ManagedAppDeclaration.Attributes.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedAppDeclaration.Attributes.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1D95BFD1C();

  v11[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:v11];

  v6 = v11[0];
  if (v5)
  {
    v7 = sub_1D95BFBCC();
    v9 = v8;

    *v2 = v7;
    v2[1] = v9;
  }

  else
  {
    v10 = v6;
    sub_1D95BFAEC();

    swift_willThrow();
  }
}

id ManagedAppDeclaration.Attributes.dictionaryRepresentation()()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1D95BFBBC();
  v6[0] = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:v6];

  v3 = v6[0];
  if (v2)
  {
    sub_1D95C00EC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07288, &qword_1D95CA248);
    swift_dynamicCast();
    return v6[0];
  }

  else
  {
    v5 = v3;
    sub_1D95BFAEC();

    return swift_willThrow();
  }
}

uint64_t sub_1D9594E00(uint64_t a1)
{
  v2 = sub_1D959CF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9594E3C(uint64_t a1)
{
  v2 = sub_1D959CF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07290, &qword_1D95CA250);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955F8A8(v7, v8);
  sub_1D959CF6C();
  sub_1D95C05BC();
  v10 = v7;
  v11 = v8;
  sub_1D957F164();
  sub_1D95C03CC();
  sub_1D955AA18(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ManagedAppDeclaration.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072A0, &qword_1D95CA258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959CF6C();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D957F74C();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ManagedAppDeclaration.InstallBehavior.version.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(installTiming:isAccountPromptAllowed:purchaseMethod:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = 2;
  v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v9 = a4 + *(v8 + 32);
  *(a4 + 1) = v7;
  *(a4 + 2) = a2;
  result = sub_1D959D0B0(a3, a4 + *(v8 + 28), type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(installTiming:isAccountPromptAllowed:purchaseMethod:version:cellularAvailability:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a6;
  *a7 = 2;
  if (v13 == 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  v16 = a7 + *(v15 + 32);
  *a7 = v14;
  *(a7 + 1) = v12;
  *(a7 + 2) = a2;
  result = sub_1D959D0B0(a3, a7 + *(v15 + 28), type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  return result;
}

uint64_t sub_1D959551C(uint64_t a1)
{
  v2 = sub_1D959D118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595558(uint64_t a1)
{
  v2 = sub_1D959D118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595594(uint64_t a1)
{
  v2 = sub_1D959D1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95955D0(uint64_t a1)
{
  v2 = sub_1D959D1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959560C(uint64_t a1)
{
  v2 = sub_1D959D16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595648(uint64_t a1)
{
  v2 = sub_1D959D16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072A8, &qword_1D95CA260);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072B0, &qword_1D95CA268);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072B8, &qword_1D95CA270);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D118();
  sub_1D95C05BC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D959D16C();
    v14 = v18;
    sub_1D95C034C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D959D1C0();
    sub_1D95C034C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072D8, &qword_1D95CA278);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072E0, &qword_1D95CA280);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072E8, &unk_1D95CA288);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D118();
  v12 = v31;
  sub_1D95C059C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D95C032C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D954A268();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D95C01FC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v22 = &type metadata for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D959D16C();
        sub_1D95C027C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D959D1C0();
        sub_1D95C027C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1D9595E50(uint64_t a1)
{
  v2 = sub_1D959D310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595E8C(uint64_t a1)
{
  v2 = sub_1D959D310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595EC8()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_1D9595F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D959E228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9595F50(uint64_t a1)
{
  v2 = sub_1D959D214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9595F8C(uint64_t a1)
{
  v2 = sub_1D959D214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9595FC8(uint64_t a1)
{
  v2 = sub_1D959D2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596004(uint64_t a1)
{
  v2 = sub_1D959D2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596040(uint64_t a1)
{
  v2 = sub_1D959D268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959607C(uint64_t a1)
{
  v2 = sub_1D959D268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072F0, &qword_1D95CA298);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB072F8, &qword_1D95CA2A0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07300, &qword_1D95CA2A8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07308, &qword_1D95CA2B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D214();
  sub_1D95C05BC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D959D2BC();
      v9 = v21;
      sub_1D95C034C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D959D268();
      v9 = v24;
      sub_1D95C034C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D959D310();
    sub_1D95C034C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07330, &qword_1D95CA2B8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07338, &qword_1D95CA2C0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07340, &qword_1D95CA2C8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07348, &qword_1D95CA2D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_1D959D214();
  v15 = v36;
  sub_1D95C059C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D95C032C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D954A26C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D95C01FC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v24 = &type metadata for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D959D2BC();
          sub_1D95C027C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D959D268();
          v26 = v17;
          sub_1D95C027C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D959D310();
        sub_1D95C027C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.volumePurchaseProgram(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = a3 & 1;
  *(a4 + 16) = a3 & 1;
  *(a4 + 17) = 0;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return sub_1D953FCA8(a1, a2, v6);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.volumePurchaseProgram(_:license:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = a3 & 1;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = v8;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return sub_1D953FCA8(a1, a2, v9);
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.manifest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D95BFBAC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.preInstalled(_:)@<X0>(void *a3@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_1D95BFD8C();
  v6 = [v4 newComposedIdentifierWithBundleID_];

  *a3 = v6;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);

  return swift_storeEnumTagMultiPayload();
}

id static ManagedAppDeclaration.InstallBehavior.PurchaseMethod.other(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_1D9596C24()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D9596C80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D959E340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9596CA8(uint64_t a1)
{
  v2 = sub_1D959D364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596CE4(uint64_t a1)
{
  v2 = sub_1D959D364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596D20(uint64_t a1)
{
  v2 = sub_1D959D460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596D5C(uint64_t a1)
{
  v2 = sub_1D959D460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596D98(uint64_t a1)
{
  v2 = sub_1D959D3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596DD4(uint64_t a1)
{
  v2 = sub_1D959D3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9596E10()
{
  if (*v0)
  {
    return 0x65736E6563696CLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D9596E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9596F14(uint64_t a1)
{
  v2 = sub_1D959D4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9596F50(uint64_t a1)
{
  v2 = sub_1D959D4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07350, &qword_1D95CA2D8);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07358, &qword_1D95CA2E0);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1D95BFBAC();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07360, &qword_1D95CA2E8);
  v34 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07368, &qword_1D95CA2F0);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D364();
  sub_1D95C05BC();
  sub_1D959CFC0(v43, v14, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v35;
      v19 = v36;
      (*(v35 + 32))(v9, v14, v36);
      LOBYTE(v47) = 1;
      sub_1D959D460();
      v21 = v46;
      sub_1D95C034C();
      sub_1D959D604(&qword_1ECB05E10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      v22 = v39;
      sub_1D95C03CC();
      (*(v38 + 8))(v6, v22);
      (*(v20 + 8))(v9, v19);
      (*(v45 + 8))(v17, v21);
    }

    else
    {
      v29 = *v14;
      LOBYTE(v47) = 2;
      sub_1D959D3B8();
      v30 = v37;
      v31 = v46;
      sub_1D95C034C();
      v47 = v29;
      sub_1D959D40C();
      v32 = v41;
      sub_1D95C03CC();
      (*(v40 + 8))(v30, v32);
      (*(v45 + 8))(v17, v31);
    }
  }

  else
  {
    v23 = v34;
    v24 = *v14;
    v25 = *(v14 + 1);
    v26 = v14[16];
    LODWORD(v43) = v14[17];
    LOBYTE(v47) = 0;
    sub_1D959D4B4();
    v27 = v46;
    sub_1D95C034C();
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v50 = 0;
    sub_1D959D508();
    v28 = v44;
    sub_1D95C03CC();
    if (v28)
    {
      (*(v23 + 8))(v11, v42);
      (*(v45 + 8))(v17, v27);
      sub_1D953FCF0(v24, v25, v26);
    }

    else
    {
      sub_1D953FCF0(v24, v25, v26);
      LOBYTE(v47) = v43;
      v50 = 1;
      sub_1D959D55C();
      v33 = v42;
      sub_1D95C03CC();
      (*(v23 + 8))(v11, v33);
      (*(v45 + 8))(v17, v27);
    }
  }
}

uint64_t ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073A8, &qword_1D95CA2F8);
  v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073B0, &qword_1D95CA300);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v53 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073B8, &qword_1D95CA308);
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v65 = &v53 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073C0, &qword_1D95CA310);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v53 - v8;
  v10 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v53 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v22 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v22);
  sub_1D959D364();
  v23 = v69;
  sub_1D95C059C();
  if (!v23)
  {
    v55 = v13;
    v69 = v16;
    v54 = v19;
    v25 = v65;
    v24 = v66;
    v26 = v67;
    v56 = v21;
    v27 = v64;
    v28 = v68;
    v29 = sub_1D95C032C();
    v30 = (2 * *(v29 + 16)) | 1;
    v74 = v29;
    v75 = v29 + 32;
    v76 = 0;
    v77 = v30;
    v31 = sub_1D954A26C();
    if (v31 == 3 || v76 != v77 >> 1)
    {
      v36 = v9;
      v37 = v28;
      v38 = sub_1D95C01FC();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v40 = v10;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v27 + 8))(v36, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          LOBYTE(v71) = 1;
          sub_1D959D460();
          v32 = v62;
          sub_1D95C027C();
          v33 = v27;
          sub_1D95BFBAC();
          sub_1D959D604(&qword_1ECB05E88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
          v34 = v69;
          v35 = v58;
          sub_1D95C030C();
          (*(v59 + 8))(v32, v35);
          (*(v33 + 8))(v9, v28);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v34;
        }

        else
        {
          LOBYTE(v71) = 2;
          sub_1D959D3B8();
          sub_1D95C027C();
          sub_1D959D5B0();
          sub_1D95C030C();
          (*(v61 + 8))(v24, v26);
          (*(v27 + 8))(v9, v28);
          swift_unknownObjectRelease();
          v49 = v55;
          *v55 = v71;
          swift_storeEnumTagMultiPayload();
          v45 = v49;
        }

        v52 = v56;
        sub_1D959D0B0(v45, v56, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
        v42 = v63;
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_1D959D4B4();
        sub_1D95C027C();
        v42 = v63;
        v79 = 0;
        sub_1D959D64C();
        v43 = v25;
        v44 = v57;
        sub_1D95C030C();
        v69 = v9;
        v47 = v71;
        v46 = v72;
        v48 = v73;
        v78 = 1;
        sub_1D959D6A0();
        sub_1D95C030C();
        (*(v60 + 8))(v43, v44);
        (*(v27 + 8))(v69, v68);
        swift_unknownObjectRelease();
        v50 = v79;
        v51 = v54;
        *v54 = v47;
        *(v51 + 8) = v46;
        *(v51 + 16) = v48;
        *(v51 + 17) = v50;
        swift_storeEnumTagMultiPayload();
        v52 = v56;
        sub_1D959D0B0(v51, v56, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
      }

      sub_1D959D0B0(v52, v42, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_1D9597F0C()
{
  if (*v0)
  {
    return 0x656369766564;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_1D9597F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9598014(uint64_t a1)
{
  v2 = sub_1D959D6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598050(uint64_t a1)
{
  v2 = sub_1D959D6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959808C(uint64_t a1)
{
  v2 = sub_1D959D748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95980C8(uint64_t a1)
{
  v2 = sub_1D959D748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9598104(uint64_t a1)
{
  v2 = sub_1D959D79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598140(uint64_t a1)
{
  v2 = sub_1D959D79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.LicenseEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073E0, &qword_1D95CA318);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073E8, &qword_1D95CA320);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB073F0, &qword_1D95CA328);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D6F4();
  sub_1D95C05BC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D959D748();
    v14 = v18;
    sub_1D95C034C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D959D79C();
    sub_1D95C034C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ManagedAppDeclaration.InstallBehavior.LicenseEnum.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07410, &qword_1D95CA330);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07418, &qword_1D95CA338);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07420, &qword_1D95CA340);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D6F4();
  v12 = v31;
  sub_1D95C059C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D95C032C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D954A268();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D95C01FC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v22 = &type metadata for ManagedAppDeclaration.InstallBehavior.LicenseEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D959D748();
        sub_1D95C027C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D959D79C();
        sub_1D95C027C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

unint64_t sub_1D9598918()
{
  v1 = *v0;
  v2 = 0x546C6C6174736E69;
  v3 = 0xD000000000000016;
  v4 = 0x6573616863727570;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D95989D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D959E460(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9598A00(uint64_t a1)
{
  v2 = sub_1D959D7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9598A3C(uint64_t a1)
{
  v2 = sub_1D959D7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.InstallBehavior.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07428, &qword_1D95CA348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D7F0();
  sub_1D95C05BC();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1D959D844();
  sub_1D95C03CC();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_1D959D898();
    sub_1D95C03CC();
    v10[11] = 2;
    sub_1D95C039C();
    type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    v10[10] = 3;
    type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
    sub_1D959D604(&qword_1ECB07448, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum, &protocol conformance descriptor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
    sub_1D95C03CC();
    v10[9] = 4;
    sub_1D95C037C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ManagedAppDeclaration.InstallBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07450, &qword_1D95CA350);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_1D959D7F0();
  v13 = v28;
  sub_1D95C059C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v28 = v9;
  v14 = v11;
  v15 = v26;
  v35 = 0;
  sub_1D959D8EC();
  v16 = v27;
  sub_1D95C030C();
  *v14 = v36;
  v33 = 1;
  sub_1D959D940();
  sub_1D95C030C();
  v14[1] = v34;
  v32 = 2;
  v14[2] = sub_1D95C02DC() & 1;
  v31 = 3;
  sub_1D959D604(&qword_1ECB07468, type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum, &protocol conformance descriptor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  sub_1D95C030C();
  v17 = v28;
  sub_1D959D0B0(v5, &v14[*(v28 + 28)], type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum);
  v30 = 4;
  v18 = sub_1D95C02BC();
  v20 = v19;
  v21 = v14;
  v22 = &v14[*(v17 + 32)];
  (*(v15 + 8))(v8, v16);
  *v22 = v18;
  v22[8] = v20 & 1;
  sub_1D959CFC0(v21, v25, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_1D959D994(v21, type metadata accessor for ManagedAppDeclaration.InstallBehavior);
}

uint64_t sub_1D959918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x704170756B636162 && a2 == 0xED00006174614470)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D959921C(uint64_t a1)
{
  v2 = sub_1D959D9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599258(uint64_t a1)
{
  v2 = sub_1D959D9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.BackupBehavior.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07470, &qword_1D95CA358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C05BC();
  sub_1D95C039C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ManagedAppDeclaration.BackupBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07480, &qword_1D95CA360);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C059C();
  if (!v2)
  {
    v9 = sub_1D95C02DC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D959953C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07470, &qword_1D95CA358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959D9F4();
  sub_1D95C05BC();
  sub_1D95C039C();
  return (*(v3 + 8))(v5, v2);
}

char *ManagedAppDeclaration.UpdateBehavior.init(policy:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 9) = v2;
  return result;
}

uint64_t sub_1D95996D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D959975C(uint64_t a1)
{
  v2 = sub_1D959DA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599798(uint64_t a1)
{
  v2 = sub_1D959DA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07488, &qword_1D95CA368);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DA48();
  sub_1D95C05BC();
  v10 = v7;
  sub_1D959DA9C();
  sub_1D95C03CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074A0, &qword_1D95CA370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DA48();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D959DAF0();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D9599AD0()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1D9599B24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D959E630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9599B4C(uint64_t a1)
{
  v2 = sub_1D959DB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599B88(uint64_t a1)
{
  v2 = sub_1D959DB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599BC4(uint64_t a1)
{
  v2 = sub_1D959DBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599C00(uint64_t a1)
{
  v2 = sub_1D959DBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599C3C(uint64_t a1)
{
  v2 = sub_1D959DC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599C78(uint64_t a1)
{
  v2 = sub_1D959DC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9599CB4(uint64_t a1)
{
  v2 = sub_1D959DB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9599CF0(uint64_t a1)
{
  v2 = sub_1D959DB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074B0, &qword_1D95CA378);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074B8, &qword_1D95CA380);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074C0, &qword_1D95CA388);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074C8, &qword_1D95CA390);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DB44();
  sub_1D95C05BC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D959DBEC();
      v9 = v21;
      sub_1D95C034C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D959DB98();
      v9 = v24;
      sub_1D95C034C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D959DC40();
    sub_1D95C034C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074F0, &qword_1D95CA398);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB074F8, &qword_1D95CA3A0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07500, &qword_1D95CA3A8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07508, &qword_1D95CA3B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_1D959DB44();
  v15 = v36;
  sub_1D95C059C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D95C032C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D954A26C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D95C01FC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
      *v24 = &type metadata for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D959DBEC();
          sub_1D95C027C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D959DB98();
          v26 = v17;
          sub_1D95C027C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D959DC40();
        sub_1D95C027C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1D959A668()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_1D959A6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0CB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D959A78C(uint64_t a1)
{
  v2 = sub_1D959DC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959A7C8(uint64_t a1)
{
  v2 = sub_1D959DC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07510, &qword_1D95CA3B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v13 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DC94();
  sub_1D95C05BC();
  v11[2] = v7;
  v12 = v8;
  v16 = 0;
  sub_1D959DCE8();
  v9 = v11[1];
  sub_1D95C03CC();
  if (!v9)
  {
    v15 = v13;
    v14 = 1;
    sub_1D959DD3C();
    sub_1D95C03CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ManagedAppDeclaration.UpdateBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07530, &qword_1D95CA3C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DC94();
  sub_1D95C059C();
  if (!v2)
  {
    v17 = 0;
    sub_1D959DD90();
    sub_1D95C030C();
    v9 = v13;
    v10 = v14;
    v15 = 1;
    sub_1D959DDE4();
    sub_1D95C030C();
    (*(v6 + 8))(v8, v5);
    v11 = v16;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 9) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D959ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684633189 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D959AC54(uint64_t a1)
{
  v2 = sub_1D959DE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959AC90(uint64_t a1)
{
  v2 = sub_1D959DE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D95D0CD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D95C041C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D959AD7C(uint64_t a1)
{
  v2 = sub_1D959DE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959ADB8(uint64_t a1)
{
  v2 = sub_1D959DE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.UpdateBehaviorEnum.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07548, &qword_1D95CA3C8);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07550, &qword_1D95CA3D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v13 = *v1;
  v12[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DE38();
  sub_1D95C05BC();
  sub_1D959DE8C();
  sub_1D95C034C();
  v10 = v14;
  sub_1D95C037C();
  (*(v3 + 8))(v5, v10);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ManagedAppDeclaration.UpdateBehaviorEnum.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07568, &qword_1D95CA3D8);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07570, &qword_1D95CA3E0);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DE38();
  sub_1D95C059C();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v10 = v33;
  v11 = v28;
  v12 = sub_1D95C032C();
  v13 = (2 * *(v12 + 16)) | 1;
  v29 = v12;
  v30 = v12 + 32;
  v31 = 0;
  v32 = v13;
  v14 = v9;
  if (sub_1D954217C() || v31 != v32 >> 1)
  {
    v15 = sub_1D95C01FC();
    swift_allocError();
    v16 = v7;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v18 = &type metadata for ManagedAppDeclaration.UpdateBehaviorEnum;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v9, v16);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  sub_1D959DE8C();
  sub_1D95C027C();
  v20 = sub_1D95C02BC();
  v22 = v21;
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v14, v7);
  swift_unknownObjectRelease();
  v23 = v26;
  v24 = v27;
  *v27 = v20;
  *(v24 + 8) = v22 & 1;
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t ManagedAppDeclaration.RemovalBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 1;
  return result;
}

unint64_t sub_1D959B41C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746172616C636564;
    v6 = 0x656D6567616E616DLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0xD000000000000015;
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
    v1 = 0x654270756B636162;
    v2 = 0x6542657461647075;
    if (a1 != 7)
    {
      v2 = 0x6D726F6674616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0x426C6C6174736E69;
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

uint64_t sub_1D959B57C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1D959B5B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D959E748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D959B5E0(uint64_t a1)
{
  v2 = sub_1D959DEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959B61C(uint64_t a1)
{
  v2 = sub_1D959DEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppDeclaration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07578, &qword_1D95CA3E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959DEE0();
  sub_1D95C05BC();
  LOBYTE(v16) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1D95C038C();
    LOBYTE(v16) = *(v3 + 32);
    v18 = 2;
    sub_1D956C130();
    sub_1D95C03CC();
    LOBYTE(v16) = 3;
    sub_1D95C035C();
    v10 = *(v3 + 64);
    v16 = *(v3 + 56);
    v17 = v10;
    v18 = 4;
    sub_1D957E2D0(v16, v10);
    sub_1D959DF34();
    sub_1D95C036C();
    sub_1D955F8FC(v16, v17);
    v11 = type metadata accessor for ManagedAppDeclaration(0);
    LOBYTE(v16) = 5;
    type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    sub_1D959D604(&qword_1ECB07590, type metadata accessor for ManagedAppDeclaration.InstallBehavior, &protocol conformance descriptor for ManagedAppDeclaration.InstallBehavior);
    sub_1D95C03CC();
    LOBYTE(v16) = *(v3 + v11[10]);
    v18 = 6;
    sub_1D959DF88();
    sub_1D95C03CC();
    v12 = v3 + v11[11];
    v13 = *v12;
    v14 = *(v12 + 8);
    LOBYTE(v12) = *(v12 + 9);
    v16 = v13;
    LOBYTE(v17) = v14;
    BYTE1(v17) = v12;
    v18 = 7;
    sub_1D959DFDC();
    sub_1D95C03CC();
    v16 = *(v3 + v11[12]);
    v18 = 8;
    sub_1D9547C90();
    sub_1D95C03CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ManagedAppDeclaration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075A8, &qword_1D95CA3F0);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = v28 - v7;
  v9 = type metadata accessor for ManagedAppDeclaration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v11 + 7) = xmmword_1D95CA220;
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_1D959DEE0();
  v32 = v8;
  sub_1D95C059C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);

    return sub_1D955F8FC(v11[7], v11[8]);
  }

  else
  {
    v28[2] = v4;
    v13 = v6;
    v14 = v29;
    v15 = v30;
    LOBYTE(v34) = 0;
    v16 = v11;
    *v11 = sub_1D95C02CC();
    v11[1] = v17;
    LOBYTE(v34) = 1;
    v11[2] = sub_1D95C02CC();
    v11[3] = v18;
    v36 = 2;
    sub_1D956C834();
    sub_1D95C030C();
    MEMORY[0x20] = v34;
    LOBYTE(v34) = 3;
    v11[5] = sub_1D95C029C();
    v11[6] = v20;
    v28[1] = v20;
    v36 = 4;
    sub_1D959E030();
    sub_1D95C02AC();
    v21 = v34;
    v22 = v35;
    sub_1D955F8FC(*(v16 + 56), *(v16 + 64));
    *(v16 + 56) = v21;
    *(v16 + 64) = v22;
    v23 = v32;
    LOBYTE(v34) = 5;
    sub_1D959D604(&qword_1ECB075B8, type metadata accessor for ManagedAppDeclaration.InstallBehavior, &protocol conformance descriptor for ManagedAppDeclaration.InstallBehavior);
    sub_1D95C030C();
    sub_1D959D0B0(v13, v16 + v9[9], type metadata accessor for ManagedAppDeclaration.InstallBehavior);
    v36 = 6;
    sub_1D959E084();
    sub_1D95C030C();
    *(v16 + v9[10]) = v34;
    v36 = 7;
    sub_1D959E0D8();
    v24 = v31;
    sub_1D95C030C();
    v25 = v35;
    v26 = BYTE1(v35);
    v27 = v16 + v9[11];
    *v27 = v34;
    *(v27 + 8) = v25;
    *(v27 + 9) = v26;
    v36 = 8;
    sub_1D9547F0C();
    sub_1D95C030C();
    (*(v14 + 8))(v23, v24);
    *(v16 + v9[12]) = v34;
    sub_1D959CFC0(v16, v15, type metadata accessor for ManagedAppDeclaration);
    __swift_destroy_boxed_opaque_existential_0(v33);
    return sub_1D959D994(v16, type metadata accessor for ManagedAppDeclaration);
  }
}

uint64_t StoreAppIdentifier.bundleID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t StoreAppIdentifier.itemID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t static StoreAppIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1D95C041C();
}

uint64_t sub_1D959C0EC(uint64_t a1)
{
  v2 = sub_1D959E180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C128(uint64_t a1)
{
  v2 = sub_1D959E180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959C164()
{
  if (*v0)
  {
    return 0x4449656C646E7562;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1D959C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D959C274(uint64_t a1)
{
  v2 = sub_1D959E12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C2B0(uint64_t a1)
{
  v2 = sub_1D959E12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D959C2EC(uint64_t a1)
{
  v2 = sub_1D959E1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D959C328(uint64_t a1)
{
  v2 = sub_1D959E1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoreAppIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = a2;
  v21 = a4;
  v18 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075D0, &qword_1D95CA3F8);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075D8, &qword_1D95CA400);
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB075E0, &qword_1D95CA408);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D959E12C();
  sub_1D95C05BC();
  if (v21)
  {
    v23 = 1;
    sub_1D959E180();
    sub_1D95C034C();
    v14 = v19;
    sub_1D95C038C();
    (*(v17 + 8))(v6, v14);
  }

  else
  {
    v22 = 0;
    sub_1D959E1D4();
    sub_1D95C034C();
    sub_1D95C03DC();
    (*(v16 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t StoreAppIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA732B80](1);

    return sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0, a2, a3);
    return MEMORY[0x1DA732BA0](a2);
  }
}

uint64_t StoreAppIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D95C051C();
  if (a3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](a1);
  }

  return sub_1D95C055C();
}

void *StoreAppIdentifier.init(from:)(void *a1)
{
  result = sub_1D959EA78(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D959C7A0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D95C051C();
  if (v2 == 1)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v1);
  }

  return sub_1D95C055C();
}

uint64_t sub_1D959C828(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1DA732B80](1);

    return sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    return MEMORY[0x1DA732BA0](v2);
  }
}

uint64_t sub_1D959C8B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D95C051C();
  if (v3 == 1)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v2);
  }

  return sub_1D95C055C();
}

void *sub_1D959C934@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D959EA78(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D959C988(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t StoreAppIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_1D959EFAC();
    return sub_1D95C00DC();
  }
}

uint64_t sub_1D959CA48()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_1D959EFAC();
    return sub_1D95C00DC();
  }
}

uint64_t sub_1D959CAB0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07910, &qword_1D95CCD00);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07918, &qword_1D95CCD08);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB07920, &unk_1D95CCD10);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9594990();
  v11 = v26;
  sub_1D95C059C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D95C032C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D954A268();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D95C01FC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250);
    *v19 = &type metadata for ManagedAppDeclaration.ManagementScope;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D95949E4();
    sub_1D95C027C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D9594A38();
    sub_1D95C027C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_1D959CF6C()
{
  result = qword_1ECB07298;
  if (!qword_1ECB07298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07298);
  }

  return result;
}

uint64_t sub_1D959CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D959D048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D959D0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D959D118()
{
  result = qword_1ECB072C0;
  if (!qword_1ECB072C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072C0);
  }

  return result;
}

unint64_t sub_1D959D16C()
{
  result = qword_1ECB072C8;
  if (!qword_1ECB072C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072C8);
  }

  return result;
}

unint64_t sub_1D959D1C0()
{
  result = qword_1ECB072D0;
  if (!qword_1ECB072D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB072D0);
  }

  return result;
}

unint64_t sub_1D959D214()
{
  result = qword_1ECB07310;
  if (!qword_1ECB07310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07310);
  }

  return result;
}

unint64_t sub_1D959D268()
{
  result = qword_1ECB07318;
  if (!qword_1ECB07318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07318);
  }

  return result;
}

unint64_t sub_1D959D2BC()
{
  result = qword_1ECB07320;
  if (!qword_1ECB07320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07320);
  }

  return result;
}

unint64_t sub_1D959D310()
{
  result = qword_1ECB07328;
  if (!qword_1ECB07328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07328);
  }

  return result;
}

unint64_t sub_1D959D364()
{
  result = qword_1ECB07370;
  if (!qword_1ECB07370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07370);
  }

  return result;
}

unint64_t sub_1D959D3B8()
{
  result = qword_1ECB07378;
  if (!qword_1ECB07378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07378);
  }

  return result;
}

unint64_t sub_1D959D40C()
{
  result = qword_1ECB07380;
  if (!qword_1ECB07380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07380);
  }

  return result;
}

unint64_t sub_1D959D460()
{
  result = qword_1ECB07388;
  if (!qword_1ECB07388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07388);
  }

  return result;
}

unint64_t sub_1D959D4B4()
{
  result = qword_1ECB07390;
  if (!qword_1ECB07390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07390);
  }

  return result;
}

unint64_t sub_1D959D508()
{
  result = qword_1ECB07398;
  if (!qword_1ECB07398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07398);
  }

  return result;
}

unint64_t sub_1D959D55C()
{
  result = qword_1ECB073A0;
  if (!qword_1ECB073A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073A0);
  }

  return result;
}

unint64_t sub_1D959D5B0()
{
  result = qword_1ECB073C8;
  if (!qword_1ECB073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073C8);
  }

  return result;
}

uint64_t sub_1D959D604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D959D64C()
{
  result = qword_1ECB073D0;
  if (!qword_1ECB073D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073D0);
  }

  return result;
}

unint64_t sub_1D959D6A0()
{
  result = qword_1ECB073D8;
  if (!qword_1ECB073D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073D8);
  }

  return result;
}

unint64_t sub_1D959D6F4()
{
  result = qword_1ECB073F8;
  if (!qword_1ECB073F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB073F8);
  }

  return result;
}

unint64_t sub_1D959D748()
{
  result = qword_1ECB07400;
  if (!qword_1ECB07400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07400);
  }

  return result;
}

unint64_t sub_1D959D79C()
{
  result = qword_1ECB07408;
  if (!qword_1ECB07408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07408);
  }

  return result;
}

unint64_t sub_1D959D7F0()
{
  result = qword_1ECB07430;
  if (!qword_1ECB07430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07430);
  }

  return result;
}

unint64_t sub_1D959D844()
{
  result = qword_1ECB07438;
  if (!qword_1ECB07438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07438);
  }

  return result;
}

unint64_t sub_1D959D898()
{
  result = qword_1ECB07440;
  if (!qword_1ECB07440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07440);
  }

  return result;
}

unint64_t sub_1D959D8EC()
{
  result = qword_1ECB07458;
  if (!qword_1ECB07458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07458);
  }

  return result;
}

unint64_t sub_1D959D940()
{
  result = qword_1ECB07460;
  if (!qword_1ECB07460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07460);
  }

  return result;
}

uint64_t sub_1D959D994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}