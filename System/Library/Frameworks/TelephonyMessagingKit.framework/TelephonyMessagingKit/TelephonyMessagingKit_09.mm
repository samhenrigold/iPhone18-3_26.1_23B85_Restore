unint64_t sub_1E4BB3B2C()
{
  result = qword_1ECF970F0;
  if (!qword_1ECF970F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970F0);
  }

  return result;
}

unint64_t sub_1E4BB3B84()
{
  result = qword_1ECF970F8;
  if (!qword_1ECF970F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970F8);
  }

  return result;
}

unint64_t sub_1E4BB3BDC()
{
  result = qword_1ECF97100;
  if (!qword_1ECF97100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97100);
  }

  return result;
}

unint64_t sub_1E4BB3C34()
{
  result = qword_1ECF97108;
  if (!qword_1ECF97108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97108);
  }

  return result;
}

unint64_t sub_1E4BB3C8C()
{
  result = qword_1ECF97110;
  if (!qword_1ECF97110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97110);
  }

  return result;
}

unint64_t sub_1E4BB3CE4()
{
  result = qword_1ECF97118;
  if (!qword_1ECF97118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97118);
  }

  return result;
}

unint64_t sub_1E4BB3D3C()
{
  result = qword_1ECF97120;
  if (!qword_1ECF97120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97120);
  }

  return result;
}

unint64_t sub_1E4BB3D94()
{
  result = qword_1ECF97128;
  if (!qword_1ECF97128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97128);
  }

  return result;
}

unint64_t sub_1E4BB3DEC()
{
  result = qword_1ECF97130;
  if (!qword_1ECF97130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97130);
  }

  return result;
}

uint64_t sub_1E4BB3E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BB3E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4BB3EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  *(a4 + 32) = a2;
  *(a4 + 40) = *(a3 + 8);
  *(a4 + 56) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 8));
  v9 = *(a2 - 8);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
  LOBYTE(v4) = (*(v4 + 32))(a2, v4);
  result = (*(v9 + 8))(a1, a2);
  *a4 = v4;
  return result;
}

uint64_t sub_1E4BB3FCC(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971F0, &qword_1E4C14D60);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971F8, &qword_1E4C14D68);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97200, &qword_1E4C14D70);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97208, &qword_1E4C14D78);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97210, &qword_1E4C14D80);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97218, &qword_1E4C14D88);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97220, &unk_1E4C14D90);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5FE8();
  sub_1E4BF0ACC();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_1E4BB60E4();
      v24 = v34;
      v25 = v43;
      sub_1E4BF08BC();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_1E4BB6090();
      v24 = v37;
      v25 = v43;
      sub_1E4BF08BC();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_1E4BB603C();
      v24 = v40;
      v25 = v43;
      sub_1E4BF08BC();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_1E4BB618C();
      v22 = v43;
      sub_1E4BF08BC();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_1E4BB6138();
    v25 = v43;
    sub_1E4BF08BC();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_1E4BB61E0();
    v25 = v43;
    sub_1E4BF08BC();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

uint64_t sub_1E4BB45C0()
{
  v1 = *v0;
  v2 = 0x696C707041637078;
  v3 = 0x6976726553736D6DLL;
  v4 = 0x4350586B6D74;
  if (v1 == 4)
  {
    v4 = 0x6976726553736372;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6976726553736D73;
  if (v1 == 1)
  {
    v5 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E4BB4688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BB5604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BB46B0(uint64_t a1)
{
  v2 = sub_1E4BB5FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB46EC(uint64_t a1)
{
  v2 = sub_1E4BB5FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4728(uint64_t a1)
{
  v2 = sub_1E4BB60E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4764(uint64_t a1)
{
  v2 = sub_1E4BB60E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB47A0(uint64_t a1)
{
  v2 = sub_1E4BB6090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB47DC(uint64_t a1)
{
  v2 = sub_1E4BB6090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4818(uint64_t a1)
{
  v2 = sub_1E4BB618C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4854(uint64_t a1)
{
  v2 = sub_1E4BB618C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4890(uint64_t a1)
{
  v2 = sub_1E4BB6138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB48CC(uint64_t a1)
{
  v2 = sub_1E4BB6138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4908(uint64_t a1)
{
  v2 = sub_1E4BB603C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4944(uint64_t a1)
{
  v2 = sub_1E4BB603C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4980(uint64_t a1)
{
  v2 = sub_1E4BB61E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB49BC(uint64_t a1)
{
  v2 = sub_1E4BB61E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB49F8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E4BB5800(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E4BB4A40(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64657070617277;
  }

  else
  {
    v2 = 0x4449726F727265;
  }

  if (*a2)
  {
    v3 = 0x64657070617277;
  }

  else
  {
    v3 = 0x4449726F727265;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E4BF099C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E4BB4AC8()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4BB4B40(uint64_t a1)
{
  sub_1E4BEFF4C();
}

uint64_t sub_1E4BB4B9C(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4BB4C10@<X0>(char *a2@<X8>)
{
  v3 = sub_1E4BF07DC();

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

  *a2 = v5;
  return result;
}

void sub_1E4BB4C70(uint64_t *a1@<X8>)
{
  v2 = 0x4449726F727265;
  if (*v1)
  {
    v2 = 0x64657070617277;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1E4BB4CA8()
{
  if (*v0)
  {
    return 0x64657070617277;
  }

  else
  {
    return 0x4449726F727265;
  }
}

uint64_t sub_1E4BB4CDC@<X0>(char *a3@<X8>)
{
  v4 = sub_1E4BF07DC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1E4BB4D40(uint64_t a1)
{
  v2 = sub_1E4BB5318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4D7C(uint64_t a1)
{
  v2 = sub_1E4BB5318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4DB8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97138, &qword_1E4C14B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5318();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v24 = 0;
    sub_1E4BB536C();
    sub_1E4BF087C();
    v23 = v17;
    if (v17 > 2u)
    {
      if (v17 == 3)
      {
        v9 = sub_1E4B0DC58();
        v10 = sub_1E4B0D9E8();
        v11 = &type metadata for MMSService.Error;
        v12 = sub_1E4B33840();
      }

      else if (v17 == 4)
      {
        v9 = sub_1E4B1B7E8();
        v10 = sub_1E4B1B740();
        v11 = &type metadata for RCSService.Error;
        v12 = sub_1E4B843DC();
      }

      else
      {
        v9 = sub_1E4B71030();
        v10 = sub_1E4B71084();
        v11 = &type metadata for TMKXPCError;
        v12 = sub_1E4B14264();
      }
    }

    else if (v17)
    {
      if (v17 == 1)
      {
        v9 = sub_1E4B39338();
        v10 = sub_1E4B3938C();
        v11 = &type metadata for TelephonyMessagingSession.Error;
        v12 = sub_1E4B304F4();
      }

      else
      {
        v9 = sub_1E4B861BC();
        v10 = sub_1E4B85F4C();
        v11 = &type metadata for SMSService.Error;
        v12 = sub_1E4B84F0C();
      }
    }

    else
    {
      v9 = sub_1E4B6781C();
      v10 = sub_1E4B67870();
      v11 = &type metadata for XPCApplicationError;
      v12 = sub_1E4B678C4();
    }

    v18 = v11;
    v19 = v9;
    v20 = v10;
    v21 = v12;
    __swift_allocate_boxed_opaque_existential_1(&v17);
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97138, &qword_1E4C14B08);
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    LOBYTE(v22[0]) = v23;
    sub_1E4BB5410(&v17, v22 + 8);
    v13 = v22[1];
    *a2 = v22[0];
    a2[1] = v13;
    v14 = v22[3];
    a2[2] = v22[2];
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BB50BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97150, &qword_1E4C14B10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5318();
  sub_1E4BF0ACC();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1E4BB5430();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 48);
    v11 = __swift_project_boxed_opaque_existential_1((v3 + 8), v9);
    sub_1E4BB5240(v11, v8, v9, v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E4BB5240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97150, &qword_1E4C14B10);
  sub_1E4BF093C();
  return swift_endAccess();
}

unint64_t sub_1E4BB5318()
{
  result = qword_1ECF97140;
  if (!qword_1ECF97140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97140);
  }

  return result;
}

unint64_t sub_1E4BB536C()
{
  result = qword_1ECF97148;
  if (!qword_1ECF97148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97148);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_3(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E6921800);
  }

  return result;
}

uint64_t sub_1E4BB5410(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

unint64_t sub_1E4BB5430()
{
  result = qword_1ECF97158;
  if (!qword_1ECF97158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97158);
  }

  return result;
}

unint64_t sub_1E4BB54A8()
{
  result = qword_1ECF97160;
  if (!qword_1ECF97160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97160);
  }

  return result;
}

unint64_t sub_1E4BB5500()
{
  result = qword_1ECF97168;
  if (!qword_1ECF97168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97168);
  }

  return result;
}

unint64_t sub_1E4BB5558()
{
  result = qword_1ECF97170;
  if (!qword_1ECF97170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97170);
  }

  return result;
}

unint64_t sub_1E4BB55B0()
{
  result = qword_1ECF97178;
  if (!qword_1ECF97178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97178);
  }

  return result;
}

uint64_t sub_1E4BB5604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C707041637078 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6976726553736D73 && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6976726553736D6DLL && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6976726553736372 && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4350586B6D74 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BB5800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97180, &qword_1E4C14D20);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97188, &qword_1E4C14D28);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97190, &qword_1E4C14D30);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97198, &qword_1E4C14D38);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971A0, &qword_1E4C14D40);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971A8, &qword_1E4C14D48);
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971B0, &unk_1E4C14D50);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E4BB5FE8();
  v21 = v56;
  sub_1E4BF0ABC();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_1E4BF088C();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_1E4ADD58C();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_1E4BB6090();
            sub_1E4BF07EC();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_1E4BB603C();
            v38 = v52;
            sub_1E4BF07EC();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_1E4BB60E4();
        sub_1E4BF07EC();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_1E4BB618C();
          v23 = v40;
          sub_1E4BF07EC();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_1E4BB6138();
          sub_1E4BF07EC();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_1E4BB61E0();
        sub_1E4BF07EC();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v17;
    }

    v33 = sub_1E4BF06EC();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v35 = &type metadata for BoxedCodableError.ID;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v17;
}

unint64_t sub_1E4BB5FE8()
{
  result = qword_1ECF971B8;
  if (!qword_1ECF971B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971B8);
  }

  return result;
}

unint64_t sub_1E4BB603C()
{
  result = qword_1ECF971C0;
  if (!qword_1ECF971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971C0);
  }

  return result;
}

unint64_t sub_1E4BB6090()
{
  result = qword_1ECF971C8;
  if (!qword_1ECF971C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971C8);
  }

  return result;
}

unint64_t sub_1E4BB60E4()
{
  result = qword_1ECF971D0;
  if (!qword_1ECF971D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971D0);
  }

  return result;
}

unint64_t sub_1E4BB6138()
{
  result = qword_1ECF971D8;
  if (!qword_1ECF971D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971D8);
  }

  return result;
}

unint64_t sub_1E4BB618C()
{
  result = qword_1ECF971E0;
  if (!qword_1ECF971E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971E0);
  }

  return result;
}

unint64_t sub_1E4BB61E0()
{
  result = qword_1ECF971E8;
  if (!qword_1ECF971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971E8);
  }

  return result;
}

unint64_t sub_1E4BB62A8()
{
  result = qword_1ECF97228;
  if (!qword_1ECF97228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97228);
  }

  return result;
}

unint64_t sub_1E4BB6300()
{
  result = qword_1ECF97230;
  if (!qword_1ECF97230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97230);
  }

  return result;
}

unint64_t sub_1E4BB6358()
{
  result = qword_1ECF97238;
  if (!qword_1ECF97238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97238);
  }

  return result;
}

unint64_t sub_1E4BB63B0()
{
  result = qword_1ECF97240;
  if (!qword_1ECF97240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97240);
  }

  return result;
}

unint64_t sub_1E4BB6408()
{
  result = qword_1ECF97248;
  if (!qword_1ECF97248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97248);
  }

  return result;
}

unint64_t sub_1E4BB6460()
{
  result = qword_1ECF97250;
  if (!qword_1ECF97250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97250);
  }

  return result;
}

unint64_t sub_1E4BB64B8()
{
  result = qword_1ECF97258;
  if (!qword_1ECF97258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97258);
  }

  return result;
}

unint64_t sub_1E4BB6510()
{
  result = qword_1ECF97260;
  if (!qword_1ECF97260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97260);
  }

  return result;
}

unint64_t sub_1E4BB6568()
{
  result = qword_1ECF97268;
  if (!qword_1ECF97268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97268);
  }

  return result;
}

unint64_t sub_1E4BB65C0()
{
  result = qword_1ECF97270;
  if (!qword_1ECF97270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97270);
  }

  return result;
}

unint64_t sub_1E4BB6618()
{
  result = qword_1ECF97278;
  if (!qword_1ECF97278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97278);
  }

  return result;
}

unint64_t sub_1E4BB6670()
{
  result = qword_1ECF97280;
  if (!qword_1ECF97280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97280);
  }

  return result;
}

unint64_t sub_1E4BB66C8()
{
  result = qword_1ECF97288;
  if (!qword_1ECF97288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97288);
  }

  return result;
}

unint64_t sub_1E4BB6720()
{
  result = qword_1ECF97290;
  if (!qword_1ECF97290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97290);
  }

  return result;
}

unint64_t sub_1E4BB6778()
{
  result = qword_1ECF97298;
  if (!qword_1ECF97298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97298);
  }

  return result;
}

uint64_t sub_1E4BB67E4(uint64_t a1)
{
  v2 = sub_1E4BB68A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB6820(uint64_t a1)
{
  v2 = sub_1E4BB68A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BB68A0()
{
  result = qword_1ECF972A8;
  if (!qword_1ECF972A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972A8);
  }

  return result;
}

uint64_t SMSContent.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E4BB69CC(uint64_t a1)
{
  v2 = sub_1E4BB6BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB6A08(uint64_t a1)
{
  v2 = sub_1E4BB6BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB6A88(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E4BB6BD0()
{
  result = qword_1ECF972C0;
  if (!qword_1ECF972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972C0);
  }

  return result;
}

uint64_t sub_1E4BB6C68@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E4BF0ABC();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_1E4BF083C();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BB6E44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v10 + 8))(v12, v9);
}

unint64_t SMSMessageID.description.getter()
{
  sub_1E4BF069C();

  v0 = sub_1E4BF096C();
  MEMORY[0x1E69205B0](v0);

  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

double SMSMessage.handle.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

double SMSMessage.content.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t SMSMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SMSMessage(0) + 32);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SMSMessage(uint64_t a1)
{
  result = qword_1EE2BE078;
  if (!qword_1EE2BE078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SMSMessage.init(cellularServiceID:handle:messageID:content:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = *a4;
  v9 = a4[1];
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v9;
  type metadata accessor for SMSMessage(0);
  return sub_1E4BEFAAC();
}

unint64_t sub_1E4BB7240()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x496567617373656DLL;
  v4 = 0x746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4BB72E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BB80F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BB7308(uint64_t a1)
{
  v2 = sub_1E4BB7624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB7344(uint64_t a1)
{
  v2 = sub_1E4BB7624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF972D0, &qword_1E4C15390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB7624();
  sub_1E4BF0ACC();
  LOBYTE(v13) = *v3;
  v15 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v13 = *(v3 + 8);
    v14 = v9;
    v15 = 1;
    sub_1E4BB7678();

    sub_1E4BF093C();

    LODWORD(v13) = *(v3 + 24);
    v15 = 2;
    sub_1E4B4824C();
    sub_1E4BF093C();
    v10 = *(v3 + 40);
    v13 = *(v3 + 32);
    v14 = v10;
    v15 = 3;
    sub_1E4BB76CC();

    sub_1E4BF093C();

    type metadata accessor for SMSMessage(0);
    LOBYTE(v13) = 4;
    sub_1E4BEFABC();
    sub_1E4AE0B44(&qword_1ECF925B0, MEMORY[0x1E6969538]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4BB7624()
{
  result = qword_1ECF972D8;
  if (!qword_1ECF972D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972D8);
  }

  return result;
}

unint64_t sub_1E4BB7678()
{
  result = qword_1ECF972E0;
  if (!qword_1ECF972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972E0);
  }

  return result;
}

unint64_t sub_1E4BB76CC()
{
  result = qword_1ECF972E8;
  if (!qword_1ECF972E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972E8);
  }

  return result;
}

uint64_t SMSMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1E4BEFABC();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF972F0, &qword_1E4C15398);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SMSMessage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E4BB7624();
  v13 = v26;
  sub_1E4BF0ABC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v14 = v11;
  v15 = v5;
  v16 = v24;
  v30 = 0;
  sub_1E4ADBF38();
  v17 = v25;
  sub_1E4BF087C();
  *v14 = v28;
  v30 = 1;
  sub_1E4BB7B34();
  sub_1E4BF087C();
  v18 = v16;
  v19 = v29;
  *(v14 + 8) = v28;
  *(v14 + 16) = v19;
  v30 = 2;
  sub_1E4B48474();
  sub_1E4BF087C();
  *(v14 + 24) = v28;
  v30 = 3;
  sub_1E4BB7B88();
  sub_1E4BF087C();
  v20 = v29;
  *(v14 + 32) = v28;
  *(v14 + 40) = v20;
  LOBYTE(v28) = 4;
  sub_1E4AE0B44(&qword_1ECF925D8, MEMORY[0x1E6969558]);
  sub_1E4BF087C();
  (*(v18 + 8))(v8, v17);
  (*(v22 + 32))(v14 + *(v9 + 32), v15, v3);
  sub_1E4B6FEF8(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1E4BB7BDC(v14);
}

unint64_t sub_1E4BB7B34()
{
  result = qword_1ECF972F8;
  if (!qword_1ECF972F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972F8);
  }

  return result;
}

unint64_t sub_1E4BB7B88()
{
  result = qword_1ECF97300;
  if (!qword_1ECF97300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97300);
  }

  return result;
}

uint64_t sub_1E4BB7BDC(uint64_t a1)
{
  v2 = type metadata accessor for SMSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4BB7C3C()
{
  result = qword_1ECF97308;
  if (!qword_1ECF97308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97308);
  }

  return result;
}

uint64_t sub_1E4BB7D18(uint64_t a1)
{
  result = sub_1E4BEFABC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BB7DE4()
{
  result = qword_1ECF97310;
  if (!qword_1ECF97310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97310);
  }

  return result;
}

unint64_t sub_1E4BB7E3C()
{
  result = qword_1ECF97318;
  if (!qword_1ECF97318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97318);
  }

  return result;
}

unint64_t sub_1E4BB7E94()
{
  result = qword_1ECF97320;
  if (!qword_1ECF97320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97320);
  }

  return result;
}

unint64_t sub_1E4BB7EEC()
{
  result = qword_1ECF97328;
  if (!qword_1ECF97328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97328);
  }

  return result;
}

unint64_t sub_1E4BB7F44()
{
  result = qword_1ECF97330;
  if (!qword_1ECF97330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97330);
  }

  return result;
}

unint64_t sub_1E4BB7F9C()
{
  result = qword_1ECF97338;
  if (!qword_1ECF97338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97338);
  }

  return result;
}

unint64_t sub_1E4BB7FF4()
{
  result = qword_1ECF97340;
  if (!qword_1ECF97340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97340);
  }

  return result;
}

unint64_t sub_1E4BB804C()
{
  result = qword_1ECF97348;
  if (!qword_1ECF97348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97348);
  }

  return result;
}

unint64_t sub_1E4BB80A4()
{
  result = qword_1ECF97350;
  if (!qword_1ECF97350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97350);
  }

  return result;
}

uint64_t sub_1E4BB80F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

unint64_t sub_1E4BB82BC()
{
  result = qword_1ECF97358;
  if (!qword_1ECF97358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97358);
  }

  return result;
}

uint64_t RCSService.RevokeMessageRequest.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSService.RevokeMessageRequest.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

double RCSService.RevokeMessageRequest.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

uint64_t RCSService.RevokeMessageRequest.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 RCSService.RevokeMessageRequest.init(cellularServiceID:handle:messageID:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a2;
  v5 = *(a2 + 16);
  *(a4 + 8) = *a2;
  v6 = *(a2 + 32);
  v7 = *a3;
  v8 = a3[1];
  *a4 = *a1;
  *(a4 + 24) = v5;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  *(a4 + 56) = v8;
  return result;
}

uint64_t sub_1E4BB8490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97360, &qword_1E4C15AA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v8;
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v28 = v1[40];
  v11 = *(v1 + 7);
  v18 = *(v1 + 6);
  v19 = v9;
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8AF0();
  sub_1E4BF0ACC();
  LOBYTE(v23) = v7;
  v29 = 0;
  sub_1E4ADBE98();
  v12 = v22;
  sub_1E4BF093C();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v10;
    v27 = v28;
    v29 = 1;
    sub_1E4ADD6D8(v21, v20, v19, v10, v28);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v23, v24, v25, v26, v27);
    v23 = v14;
    v24 = v13;
    v29 = 2;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4BB86C4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97370, &qword_1E4C15AB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8AF0();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23[0]) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v26;
  LOBYTE(v23[0]) = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v20 = v26;
  v21 = *v27;
  v22 = *&v27[16];
  v33 = v28;
  v34 = 2;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v18 = *(&v32 + 1);
  v19 = v32;
  LOBYTE(v23[0]) = v9;
  v10 = v20;
  v11 = v21;
  *(&v23[0] + 1) = v20;
  v23[1] = v21;
  v12 = v22;
  *&v24 = v22;
  v13 = v33;
  BYTE8(v24) = v33;
  v25 = v32;
  v14 = v21;
  *a2 = v23[0];
  a2[1] = v14;
  v15 = v25;
  a2[2] = v24;
  a2[3] = v15;
  sub_1E4B96568(v23, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v26) = v9;
  *v27 = v10;
  *&v27[8] = v11;
  v28 = v12;
  v29 = v13;
  v30 = v19;
  v31 = v18;
  return sub_1E4B9666C(&v26);
}

uint64_t sub_1E4BB89C0()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x496567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BB8A20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BB8C5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BB8A48(uint64_t a1)
{
  v2 = sub_1E4BB8AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB8A84(uint64_t a1)
{
  v2 = sub_1E4BB8AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BB8AF0()
{
  result = qword_1ECF97368;
  if (!qword_1ECF97368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97368);
  }

  return result;
}

unint64_t sub_1E4BB8B58()
{
  result = qword_1ECF97378;
  if (!qword_1ECF97378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97378);
  }

  return result;
}

unint64_t sub_1E4BB8BB0()
{
  result = qword_1ECF97380;
  if (!qword_1ECF97380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97380);
  }

  return result;
}

unint64_t sub_1E4BB8C08()
{
  result = qword_1ECF97388;
  if (!qword_1ECF97388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97388);
  }

  return result;
}

uint64_t sub_1E4BB8C5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BB8DD4(uint64_t a1)
{
  v2 = sub_1E4BB8FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB8E10(uint64_t a1)
{
  v2 = sub_1E4BB8FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSReceivedNotification.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97390, &qword_1E4C15BD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4BB941C(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4BB8FC4()
{
  result = qword_1ECF97398;
  if (!qword_1ECF97398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97398);
  }

  return result;
}

uint64_t SMSReceivedNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SMSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973A0, &qword_1E4C15BD8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SMSReceivedNotification(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4BB941C(&qword_1ECF95CA8, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4BB92D8(v13, v11, type metadata accessor for SMSMessage);
    sub_1E4BB92D8(v11, v12, type metadata accessor for SMSReceivedNotification);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SMSReceivedNotification(uint64_t a1)
{
  result = qword_1ECF973B8;
  if (!qword_1ECF973B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BB92D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BB9340(uint64_t a1)
{
  result = sub_1E4BB941C(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BB9398(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BB941C(&qword_1ECF973A8, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);
  result = sub_1E4BB941C(&qword_1ECF973B0, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BB941C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BB947C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97390, &qword_1E4C15BD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4BB941C(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4BB9630()
{
  result = qword_1ECF973C8;
  if (!qword_1ECF973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973C8);
  }

  return result;
}

unint64_t sub_1E4BB9688()
{
  result = qword_1ECF973D0;
  if (!qword_1ECF973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973D0);
  }

  return result;
}

unint64_t sub_1E4BB96E0()
{
  result = qword_1ECF973D8;
  if (!qword_1ECF973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973D8);
  }

  return result;
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.init(request:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t RCSChatbotFetchRenderInformationRequest.init(request:operationID:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *a2;
  v7 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  return result;
}

double RCSChatbotReadCachedRenderInformationRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return result;
}

uint64_t sub_1E4BB97B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747365757165725FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BB983C(uint64_t a1)
{
  v2 = sub_1E4BB9A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB9878(uint64_t a1)
{
  v2 = sub_1E4BB9A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973E0, &qword_1E4C15DB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11 = *(v1 + 1);
  HIDWORD(v10) = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9A38();

  sub_1E4BF0ACC();
  v12[0] = v7;
  v13 = v11;
  v14 = v8;
  v15 = BYTE4(v10);
  sub_1E4B463E8();
  sub_1E4BF093C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4BB9A38()
{
  result = qword_1ECF973E8;
  if (!qword_1ECF973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973E8);
  }

  return result;
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973F0, &qword_1E4C15DB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9A38();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4B46390();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v15;
    v11 = v16;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double RCSChatbotFetchRenderInformationRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return result;
}

double RCSChatbotFetchRenderInformationRequest.operationID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E4BB9C7C(uint64_t a1)
{
  v2 = sub_1E4BB9ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB9CB8(uint64_t a1)
{
  v2 = sub_1E4BB9ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotFetchRenderInformationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973F8, &qword_1E4C15DC0);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v20 = v1[24];
  v9 = *(v1 + 5);
  v12 = *(v1 + 4);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9ED8();

  sub_1E4BF0ACC();
  LOBYTE(v16) = v6;
  v17 = v7;
  v18 = v8;
  v19 = v20;
  v21 = 0;
  sub_1E4B463E8();
  v10 = v14;
  sub_1E4BF093C();

  if (!v10)
  {
    v16 = v12;
    v17 = v13;
    v21 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v15 + 8))(v5, v3);
}

unint64_t sub_1E4BB9ED8()
{
  result = qword_1ECF97400;
  if (!qword_1ECF97400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97400);
  }

  return result;
}

uint64_t RCSChatbotFetchRenderInformationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97408, &unk_1E4C15DC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9ED8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1E4B46390();
  sub_1E4BF087C();
  v9 = v16;
  v10 = v18;
  v15 = v17;
  v20 = v19;
  v21 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v17;
  *a2 = v9;
  *(a2 + 8) = v15;
  *(a2 + 16) = v10;
  *(a2 + 24) = v20;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BBA1C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double RCSChatbotRenderInformationResponse.operationID.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSChatbotRenderInformationResponse(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t type metadata accessor for RCSChatbotRenderInformationResponse(uint64_t a1)
{
  result = qword_1ECF97448;
  if (!qword_1ECF97448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSChatbotRenderInformationResponse.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSChatbotRenderInformationResponse.init(renderInfo:operationID:error:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  sub_1E4BBA350(a1, a4);
  result = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  v9 = (a4 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_1E4BBA350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBA3C0()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E497265646E6572;
  }
}

uint64_t sub_1E4BBA424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BBB4B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BBA44C(uint64_t a1)
{
  v2 = sub_1E4BBA6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBA488(uint64_t a1)
{
  v2 = sub_1E4BBA6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotRenderInformationResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97410, &qword_1E4C15DD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBA6F4();
  sub_1E4BF0ACC();
  LOBYTE(v15) = 0;
  type metadata accessor for RCSService.Business(0);
  sub_1E4BBAF08(&qword_1ECF97420, type metadata accessor for RCSService.Business, &protocol conformance descriptor for RCSService.Business);
  sub_1E4BF08EC();
  if (!v2)
  {
    v9 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1E4B1AC54();

    sub_1E4BF08EC();

    LOBYTE(v15) = *(v3 + *(v9 + 24));
    v14 = 2;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4BBA6F4()
{
  result = qword_1ECF97418;
  if (!qword_1ECF97418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97418);
  }

  return result;
}

uint64_t RCSChatbotRenderInformationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97428, &qword_1E4C15DE0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBA6F4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v12;
  v14 = v19;
  type metadata accessor for RCSService.Business(0);
  LOBYTE(v21) = 0;
  sub_1E4BBAF08(&qword_1ECF97430, type metadata accessor for RCSService.Business, &protocol conformance descriptor for RCSService.Business);
  v15 = v20;
  sub_1E4BF082C();
  sub_1E4BBA350(v6, v13);
  v22 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF082C();
  *(v13 + *(v10 + 20)) = v21;
  v22 = 2;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v14 + 8))(v9, v15);
  *(v13 + *(v10 + 24)) = v21;
  sub_1E4BBAB2C(v13, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4BBAB90(v13);
}

uint64_t sub_1E4BBAAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BBAB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBAB90(uint64_t a1)
{
  v2 = type metadata accessor for RCSChatbotRenderInformationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4BBABEC(uint64_t a1)
{
  result = sub_1E4B9E5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BBACD0()
{
  result = qword_1EE2BD888;
  if (!qword_1EE2BD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD888);
  }

  return result;
}

unint64_t sub_1E4BBAD24()
{
  result = qword_1EE2BD890;
  if (!qword_1EE2BD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD890);
  }

  return result;
}

unint64_t sub_1E4BBAD78(uint64_t a1)
{
  result = sub_1E4B9E59C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BBAE08()
{
  result = qword_1EE2BD8C0;
  if (!qword_1EE2BD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8C0);
  }

  return result;
}

unint64_t sub_1E4BBAE5C()
{
  result = qword_1EE2BD8C8;
  if (!qword_1EE2BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8C8);
  }

  return result;
}

uint64_t sub_1E4BBAEB0(uint64_t a1)
{
  result = sub_1E4BBAF08(&qword_1ECF95F28, type metadata accessor for RCSChatbotRenderInformationResponse, &protocol conformance descriptor for RCSChatbotRenderInformationResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBAF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BBAF5C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBAF08(&qword_1ECF97438, type metadata accessor for RCSChatbotRenderInformationResponse, "Y0(\n");
  result = sub_1E4BBAF08(&qword_1ECF97440, type metadata accessor for RCSChatbotRenderInformationResponse, &protocol conformance descriptor for RCSChatbotRenderInformationResponse);
  *(a1 + 16) = result;
  return result;
}

void sub_1E4BBB058(uint64_t a1)
{
  sub_1E4BBB114(319);
  if (v1 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1ECF97460, &type metadata for RCSOperationID);
    if (v2 <= 0x3F)
    {
      sub_1E4AE5B08(319, &qword_1ECF96D48, &type metadata for RCSService.Error);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4BBB114(uint64_t a1)
{
  if (!qword_1ECF97458)
  {
    type metadata accessor for RCSService.Business(255);
    v1 = sub_1E4BF053C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF97458);
    }
  }
}

unint64_t sub_1E4BBB1A0()
{
  result = qword_1ECF97468;
  if (!qword_1ECF97468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97468);
  }

  return result;
}

unint64_t sub_1E4BBB1F8()
{
  result = qword_1ECF97470;
  if (!qword_1ECF97470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97470);
  }

  return result;
}

unint64_t sub_1E4BBB250()
{
  result = qword_1ECF97478;
  if (!qword_1ECF97478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97478);
  }

  return result;
}

unint64_t sub_1E4BBB2A8()
{
  result = qword_1ECF97480;
  if (!qword_1ECF97480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97480);
  }

  return result;
}

unint64_t sub_1E4BBB300()
{
  result = qword_1ECF97488;
  if (!qword_1ECF97488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97488);
  }

  return result;
}

unint64_t sub_1E4BBB358()
{
  result = qword_1ECF97490;
  if (!qword_1ECF97490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97490);
  }

  return result;
}

unint64_t sub_1E4BBB3B0()
{
  result = qword_1ECF97498;
  if (!qword_1ECF97498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97498);
  }

  return result;
}

unint64_t sub_1E4BBB408()
{
  result = qword_1ECF974A0;
  if (!qword_1ECF974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974A0);
  }

  return result;
}

unint64_t sub_1E4BBB460()
{
  result = qword_1ECF974A8;
  if (!qword_1ECF974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974A8);
  }

  return result;
}

uint64_t sub_1E4BBB4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E497265646E6572 && a2 == 0xEA00000000006F66;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BBB5D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SendSMSRequest(0);
  v2[5] = swift_task_alloc();
  type metadata accessor for SMSMessage(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BBB694, 0, 0);
}

uint64_t sub_1E4BBB694()
{
  v23 = v0;
  if (qword_1ECF92420 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF974B0);
  sub_1E4B6FEF8(v2, v1);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = *(v7 + 8);
    v11 = *(v7 + 16);

    sub_1E4BBC1A4(v7, type metadata accessor for SMSMessage);
    v12 = sub_1E4B30548(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Sending SMS to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {

    sub_1E4BBC1A4(v7, type metadata accessor for SMSMessage);
  }

  v13 = v0[3];
  sub_1E4B6FEF8(v0[2], v0[5]);
  v14 = v13[6];
  v15 = v13[7];
  __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
  v21 = (*(v15 + 32) + **(v15 + 32));
  v16 = swift_task_alloc();
  v0[7] = v16;
  v17 = sub_1E4BBC15C(&qword_1EE2BDE10, type metadata accessor for SendSMSRequest, &protocol conformance descriptor for SendSMSRequest);
  *v16 = v0;
  v16[1] = sub_1E4BBB984;
  v19 = v0[4];
  v18 = v0[5];

  return v21(v18, v19, v17, v14, v15);
}

uint64_t sub_1E4BBB984()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E4BBBB24;
  }

  else
  {
    v2 = sub_1E4BBBA98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BBBA98()
{
  sub_1E4BBC1A4(*(v0 + 40), type metadata accessor for SendSMSRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BBBB24()
{
  sub_1E4BBC1A4(*(v0 + 40), type metadata accessor for SendSMSRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BBBBB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SMSReportSpamRequest(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BBBC44, 0, 0);
}

uint64_t sub_1E4BBBC44()
{
  if (qword_1ECF92420 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF974B0);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Reporting SMS message as spam.", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  sub_1E4B6FEF8(v6, v5);
  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v8);
  v15 = (*(v9 + 32) + **(v9 + 32));
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = sub_1E4BBC15C(&qword_1EE2BDBE0, type metadata accessor for SMSReportSpamRequest, &protocol conformance descriptor for SMSReportSpamRequest);
  *v10 = v0;
  v10[1] = sub_1E4BBBE78;
  v13 = v0[4];
  v12 = v0[5];

  return v15(v12, v13, v11, v8, v9);
}

uint64_t sub_1E4BBBE78()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E4BBC010;
  }

  else
  {
    v2 = sub_1E4BBBF8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BBBF8C()
{
  sub_1E4BBC1A4(*(v0 + 40), type metadata accessor for SMSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BBC010()
{
  sub_1E4BBC1A4(*(v0 + 40), type metadata accessor for SMSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BBC094()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF974B0);
  v1 = __swift_project_value_buffer(v0, qword_1ECF974B0);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BBC15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BBC1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BBC210(uint64_t a1)
{
  v2 = sub_1E4BBC39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBC24C(uint64_t a1)
{
  v2 = sub_1E4BBC39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceStatusRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF974C8, &qword_1E4C163F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBC39C();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4BBC39C()
{
  result = qword_1ECF974D0;
  if (!qword_1ECF974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974D0);
  }

  return result;
}

unint64_t sub_1E4BBC418(uint64_t a1)
{
  result = sub_1E4B3A788();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BBC444()
{
  result = qword_1ECF974D8;
  if (!qword_1ECF974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974D8);
  }

  return result;
}

unint64_t sub_1E4BBC49C()
{
  result = qword_1ECF974E0;
  if (!qword_1ECF974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974E0);
  }

  return result;
}

unint64_t sub_1E4BBC4F0(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBC520();
  result = sub_1E4BBC574();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BBC520()
{
  result = qword_1EE2BDB40;
  if (!qword_1EE2BDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB40);
  }

  return result;
}

unint64_t sub_1E4BBC574()
{
  result = qword_1EE2BDB48;
  if (!qword_1EE2BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB48);
  }

  return result;
}

uint64_t sub_1E4BBC5C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF974C8, &qword_1E4C163F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBC39C();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4BBC700()
{
  result = qword_1ECF974E8;
  if (!qword_1ECF974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974E8);
  }

  return result;
}

unint64_t sub_1E4BBC758()
{
  result = qword_1ECF974F0;
  if (!qword_1ECF974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974F0);
  }

  return result;
}

uint64_t RCSService.FileUploadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileUploadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileUploadRequest.fileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileUploadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileUploadRequest.init(cellularServiceID:fileURL:contentType:thumbnailURL:thumbnailContentType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v16 = *a1;
  v7 = type metadata accessor for RCSService.FileUploadRequest(0);
  v8 = v7[6];
  v9 = sub_1E4BEFB4C();
  v10 = *(*(v9 - 8) + 56);
  v10(&a6[v8], 1, 1, v9);
  v11 = v7[7];
  v12 = sub_1E4BEFA6C();
  v13 = *(v12 - 8);
  (*(v13 + 56))(&a6[v11], 1, 1, v12);
  v14 = v7[8];
  v10(&a6[v14], 1, 1, v9);
  *a6 = v16;
  (*(v13 + 32))(&a6[v7[5]], a2, v12);
  sub_1E4AF1900(a3, &a6[v8], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1900(a4, &a6[v11], &qword_1ECF92F88, &qword_1E4BFDD20);
  return sub_1E4AF1900(a5, &a6[v14], &qword_1ECF92700, &qword_1E4BFB090);
}

uint64_t RCSService.FileUploadRequest.Metadata.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFAFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RCSService.FileUploadRequest.Metadata.init(transactionID:fileMetadata:thumbnailMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFAFC();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RCSService.FileUploadRequest.Metadata(0);
  sub_1E4BBCF50(a2, a4 + *(v9 + 20));
  return sub_1E4AFD6D0(a3, a4 + *(v9 + 24), &qword_1ECF93730, qword_1E4C16550);
}

uint64_t sub_1E4BBCF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileTransferMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBD064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4BBD1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4BF053C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_12Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFAFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RCSFileTransferMetadata(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t __swift_store_extra_inhabitant_index_13Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for RCSFileTransferMetadata(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1E4BBD4CC(uint64_t a1)
{
  sub_1E4BEFAFC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RCSFileTransferMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_1E4BBD1AC(319, qword_1EE2BDAC0, type metadata accessor for RCSFileTransferMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1E4BEFA6C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *__swift_store_extra_inhabitant_indexTm_3(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1E4BEFA6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_1E4BBD8A8(uint64_t a1)
{
  sub_1E4BEFA6C();
  if (v1 <= 0x3F)
  {
    sub_1E4BBD1AC(319, qword_1EE2BD758, MEMORY[0x1EEE9A700]);
    if (v2 <= 0x3F)
    {
      sub_1E4BBD1AC(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4BBD984(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97580, &qword_1E4C166B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBED80();
  sub_1E4BF0ACC();
  v21 = *v3;
  v20 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
    v19 = 1;
    sub_1E4BEFA6C();
    sub_1E4BBD064(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF093C();
    v10 = *(v9 + 24);
    v14[2] = v9;
    v15 = v10;
    v18 = 2;
    v11 = sub_1E4BEFB4C();
    v12 = sub_1E4AF109C(&qword_1ECF92C08, MEMORY[0x1EEE9A718]);
    v15 = v11;
    sub_1E4BF08EC();
    v14[1] = v12;
    v17 = 3;
    sub_1E4BF08EC();
    v16 = 4;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E4BBDC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v30 - v4;
  v5 = sub_1E4BEFA6C();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97590, &qword_1E4C166C0);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  v11 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBED80();
  v39 = v10;
  v14 = v40;
  sub_1E4BF0ABC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v37;
  v33 = v11;
  v45 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v16 = v13;
  *v13 = v46;
  v44 = 1;
  v17 = v7;
  v18 = v5;
  v19 = sub_1E4BBD064(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF087C();
  v32 = v19;
  (*(v36 + 32))(v16 + v33[5], v17, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v40 = v30;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v30 - v22;
  v24 = sub_1E4BEFB4C();
  v43 = 2;
  v25 = sub_1E4AF109C(&qword_1ECF92C38, MEMORY[0x1EEE9A728]);
  v31 = v23;
  sub_1E4BF082C();
  v30[0] = v25;
  v30[1] = v24;
  v26 = v33;
  sub_1E4AFD6D0(v31, v16 + v33[6], &qword_1ECF92700, &qword_1E4BFB090);
  v42 = 3;
  v27 = v35;
  v40 = 0;
  sub_1E4BF082C();
  v28 = sub_1E4AFD6D0(v27, v16 + v26[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v28);
  v41 = 4;
  sub_1E4BF082C();
  (*(v15 + 8))(v39, v38);
  sub_1E4AFD6D0(v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v33[8], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4BBECB8(v16, v34, _s17FileUploadRequestV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4BBED20(v16, _s17FileUploadRequestV21CodableRepresentationVMa);
}

unint64_t sub_1E4BBE260()
{
  v1 = *v0;
  v2 = 0x4C5255656C6966;
  v3 = 0x54746E65746E6F63;
  v4 = 0x69616E626D756874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4BBE318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BBF004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BBE340(uint64_t a1)
{
  v2 = sub_1E4BBED80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBE37C(uint64_t a1)
{
  v2 = sub_1E4BBED80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BBE3E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97558, &qword_1E4C166A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBEC64();
  sub_1E4BF0ACC();
  v11 = 0;
  sub_1E4BEFAFC();
  sub_1E4BBD064(&qword_1ECF97568, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E4BF093C();
  if (!v1)
  {
    _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
    v10 = 1;
    type metadata accessor for RCSFileTransferMetadata(0);
    sub_1E4BBD064(&qword_1ECF93748, type metadata accessor for RCSFileTransferMetadata, &protocol conformance descriptor for RCSFileTransferMetadata);
    sub_1E4BF093C();
    v9 = 2;
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4BBE628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v21 - v4;
  v28 = type metadata accessor for RCSFileTransferMetadata(0);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4BEFAFC();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97570, &qword_1E4C166B0);
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v21 - v9;
  v11 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBEC64();
  v31 = v10;
  v14 = v32;
  sub_1E4BF0ABC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v23 = v13;
  v15 = v27;
  v32 = a1;
  v35 = 0;
  sub_1E4BBD064(&qword_1ECF97578, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v29;
  sub_1E4BF087C();
  (*(v26 + 32))(v23, v16, v7);
  v34 = 1;
  sub_1E4BBD064(&qword_1ECF93758, type metadata accessor for RCSFileTransferMetadata, &protocol conformance descriptor for RCSFileTransferMetadata);
  sub_1E4BF087C();
  v29 = v7;
  v17 = v23;
  sub_1E4BBCF50(v6, &v23[*(v22 + 20)]);
  v33 = 2;
  v18 = v25;
  sub_1E4BF082C();
  v19 = v32;
  (*(v15 + 8))(v31, v30);
  sub_1E4AFD6D0(v18, v17 + *(v22 + 24), &qword_1ECF93730, qword_1E4C16550);
  sub_1E4BBECB8(v17, v24, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E4BBED20(v17, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
}

unint64_t sub_1E4BBEB20()
{
  v1 = 0x6174654D656C6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1E4BBEB94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BBF1CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BBEBBC(uint64_t a1)
{
  v2 = sub_1E4BBEC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBEBF8(uint64_t a1)
{
  v2 = sub_1E4BBEC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BBEC64()
{
  result = qword_1ECF97560;
  if (!qword_1ECF97560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97560);
  }

  return result;
}

uint64_t sub_1E4BBECB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BBED20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4BBED80()
{
  result = qword_1ECF97588;
  if (!qword_1ECF97588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97588);
  }

  return result;
}

unint64_t sub_1E4BBEDF8()
{
  result = qword_1ECF97598;
  if (!qword_1ECF97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97598);
  }

  return result;
}

unint64_t sub_1E4BBEE50()
{
  result = qword_1ECF975A0;
  if (!qword_1ECF975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975A0);
  }

  return result;
}

unint64_t sub_1E4BBEEA8()
{
  result = qword_1ECF975A8;
  if (!qword_1ECF975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975A8);
  }

  return result;
}

unint64_t sub_1E4BBEF00()
{
  result = qword_1ECF975B0;
  if (!qword_1ECF975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975B0);
  }

  return result;
}

unint64_t sub_1E4BBEF58()
{
  result = qword_1ECF975B8;
  if (!qword_1ECF975B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975B8);
  }

  return result;
}

unint64_t sub_1E4BBEFB0()
{
  result = qword_1ECF975C0;
  if (!qword_1ECF975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975C0);
  }

  return result;
}

uint64_t sub_1E4BBF004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1ED0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4BBF1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174654D656C6966 && a2 == 0xEC00000061746164 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1720 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BBF384(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1E4BEFB6C();
}

uint64_t sub_1E4BBF444(uint64_t a1)
{
  v2 = sub_1E4BBF634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBF480(uint64_t a1)
{
  v2 = sub_1E4BBF634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSReceivedNotification.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975C8, &qword_1E4C168F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BBFA8C(&qword_1ECF94180, type metadata accessor for MMSMessage, &protocol conformance descriptor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4BBF634()
{
  result = qword_1ECF975D0;
  if (!qword_1ECF975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975D0);
  }

  return result;
}

uint64_t MMSReceivedNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for MMSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975D8, &qword_1E4C168F8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MMSReceivedNotification(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4BBFA8C(&qword_1ECF94178, type metadata accessor for MMSMessage, &protocol conformance descriptor for MMSMessage);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4BBF948(v13, v11, type metadata accessor for MMSMessage);
    sub_1E4BBF948(v11, v12, type metadata accessor for MMSReceivedNotification);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MMSReceivedNotification(uint64_t a1)
{
  result = qword_1ECF975F0;
  if (!qword_1ECF975F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BBF948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BBF9B0(uint64_t a1)
{
  result = sub_1E4BBFA8C(&qword_1ECF94888, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBFA08(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBFA8C(&qword_1ECF975E0, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);
  result = sub_1E4BBFA8C(&qword_1ECF975E8, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BBFA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4BBFAEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975C8, &qword_1E4C168F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BBFA8C(&qword_1ECF94180, type metadata accessor for MMSMessage, &protocol conformance descriptor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E4BBFC8C(uint64_t a1)
{
  result = type metadata accessor for MMSMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BBFD0C()
{
  result = qword_1ECF97600;
  if (!qword_1ECF97600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97600);
  }

  return result;
}

unint64_t sub_1E4BBFD64()
{
  result = qword_1ECF97608;
  if (!qword_1ECF97608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97608);
  }

  return result;
}

unint64_t sub_1E4BBFDBC()
{
  result = qword_1ECF97610;
  if (!qword_1ECF97610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97610);
  }

  return result;
}

uint64_t RCSOperationID.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

TelephonyMessagingKit::RCSOperationID __swiftcall RCSOperationID.init()()
{
  v1 = v0;
  v2 = sub_1E4BEFAFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFAEC();
  v6 = sub_1E4BEFACC();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  *v1 = v6;
  v1[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t RCSOperationID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0x617265704F534352;
}

unint64_t sub_1E4BBFFBC()
{
  result = qword_1ECF97618;
  if (!qword_1ECF97618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97618);
  }

  return result;
}

uint64_t sub_1E4BC00C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0x617265704F534352;
}

unint64_t sub_1E4BC0158()
{
  result = qword_1ECF97620;
  if (!qword_1ECF97620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97620);
  }

  return result;
}

unint64_t sub_1E4BC01B0()
{
  result = qword_1ECF97628;
  if (!qword_1ECF97628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97628);
  }

  return result;
}

unint64_t sub_1E4BC0214()
{
  result = qword_1ECF97630;
  if (!qword_1ECF97630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97630);
  }

  return result;
}

uint64_t sub_1E4BC028C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97638);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97638);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BC0368()
{
  v1 = 0x6F70707553746F6ELL;
  if (*v0 != 2)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E4BC03F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BC3CAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BC041C(uint64_t a1)
{
  v2 = sub_1E4BC0AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0458(uint64_t a1)
{
  v2 = sub_1E4BC0AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC0494(uint64_t a1)
{
  v2 = sub_1E4BC0B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC04D0(uint64_t a1)
{
  v2 = sub_1E4BC0B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC050C(uint64_t a1)
{
  v2 = sub_1E4BC0BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0548(uint64_t a1)
{
  v2 = sub_1E4BC0BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC0584(uint64_t a1)
{
  v2 = sub_1E4BC0BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC05C0(uint64_t a1)
{
  v2 = sub_1E4BC0BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC05FC(uint64_t a1)
{
  v2 = sub_1E4BC0B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0638(uint64_t a1)
{
  v2 = sub_1E4BC0B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSService.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97650, &qword_1E4C16D70);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97658, &qword_1E4C16D78);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97660, &qword_1E4C16D80);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97668, &qword_1E4C16D88);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97670, &qword_1E4C16D90);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC0AAC();
  sub_1E4BF0ACC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1E4BC0B54();
      v18 = v27;
      sub_1E4BF08BC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1E4BC0B00();
      v18 = v30;
      sub_1E4BF08BC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1E4BC0BA8();
    v18 = v24;
    sub_1E4BF08BC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1E4BC0BFC();
  sub_1E4BF08BC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1E4BC0AAC()
{
  result = qword_1ECF97678;
  if (!qword_1ECF97678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97678);
  }

  return result;
}

unint64_t sub_1E4BC0B00()
{
  result = qword_1ECF97680;
  if (!qword_1ECF97680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97680);
  }

  return result;
}

unint64_t sub_1E4BC0B54()
{
  result = qword_1ECF97688;
  if (!qword_1ECF97688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97688);
  }

  return result;
}

unint64_t sub_1E4BC0BA8()
{
  result = qword_1ECF97690;
  if (!qword_1ECF97690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97690);
  }

  return result;
}

unint64_t sub_1E4BC0BFC()
{
  result = qword_1ECF97698;
  if (!qword_1ECF97698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97698);
  }

  return result;
}

uint64_t SMSService.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t SMSService.Error.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976A0, &qword_1E4C16D98);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976A8, &qword_1E4C16DA0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976B0, &qword_1E4C16DA8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976B8, &qword_1E4C16DB0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976C0, &unk_1E4C16DB8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4BC0AAC();
  v15 = v46;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1E4BF088C();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1E4AE0F20();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1E4BF06EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v28 = &type metadata for SMSService.Error;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1E4BC0BA8();
        v32 = v35;
        sub_1E4BF07EC();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1E4BC0BFC();
        v25 = v35;
        sub_1E4BF07EC();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1E4BC0B54();
      v31 = v35;
      sub_1E4BF07EC();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1E4BC0B00();
      v33 = v35;
      sub_1E4BF07EC();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t SMSService.CriticalMessageStateNotification.State.hashValue.getter()
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

Swift::Bool __swiftcall SMSService.isViable(for:)(TelephonyMessagingKit::CellularServiceID a1)
{
  v2 = *a1.simSlot;
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v3 + 6);
  if (Strong)
  {
    sub_1E4B35598(&v9);

    v8 = 0;
    v7 = v2;
    v5 = MessagingServiceStatus.isViable(for:cellularServiceID:)(&v8, &v7);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t SMSService.viabilityNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v3 + 6);
  if (Strong)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(Strong + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);

    os_unfair_lock_lock((v6 + 96));
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E4BC1760;
    *(v7 + 24) = v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1E4B31A54(sub_1E4BC1768, v7, 0, isUniquelyReferenced_nonNull_native);
    *(v6 + 40) = v11;
    os_unfair_lock_unlock((v6 + 96));

    return sub_1E4B2A52C(a1);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4BC16E4(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    sub_1E4B752F4(v6 | v4);
  }

  return result;
}

uint64_t SMSService.sendMessage(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(type metadata accessor for SMSMessage(0) - 8);
  v2[9] = v3;
  v2[10] = *(v3 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BC1864, 0, 0);
}

uint64_t sub_1E4BC1864()
{
  v51 = v0;
  v1 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);

    v6 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v7 = swift_allocObject();
    swift_weakInit();
    sub_1E4B7CABC(*v6, v7);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_1ECF92438 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 56);
    v13 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v13, qword_1ECF97638);
    sub_1E4BC3E28(v12, v9, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v12, v8, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v12, v10, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v12, v11, type metadata accessor for SMSMessage);
    v14 = sub_1E4BEFB5C();
    v15 = sub_1E4BF04BC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    if (v16)
    {
      v21 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v21 = 136315907;
      v22 = *v17;
      v49 = 0;
      v50 = 0xE000000000000000;
      v46 = v15;
      sub_1E4BF069C();
      MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
      sub_1E4AEC058(v22);
      MEMORY[0x1E69205B0](41, 0xE100000000000000);
      sub_1E4BC3E90(v17, type metadata accessor for SMSMessage);
      v23 = sub_1E4B30548(0, 0xE000000000000000, &v48);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = *(v18 + 8);
      v25 = *(v18 + 16);

      sub_1E4BC3E90(v18, type metadata accessor for SMSMessage);
      v26 = sub_1E4B30548(v24, v25, &v48);

      *(v21 + 14) = v26;
      *(v21 + 22) = 2080;
      LODWORD(v25) = *(v20 + 24);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_1E4BF069C();

      v49 = 0xD000000000000017;
      v50 = 0x80000001E4BF2670;
      *(v0 + 172) = v25;
      v27 = sub_1E4BF096C();
      MEMORY[0x1E69205B0](v27);

      MEMORY[0x1E69205B0](41, 0xE100000000000000);
      v28 = v49;
      v29 = v50;
      sub_1E4BC3E90(v20, type metadata accessor for SMSMessage);
      v30 = sub_1E4B30548(v28, v29, &v48);

      *(v21 + 24) = v30;
      *(v21 + 32) = 2085;
      v31 = *(v19 + 32);
      v32 = *(v19 + 40);

      sub_1E4BC3E90(v19, type metadata accessor for SMSMessage);
      v33 = sub_1E4B30548(v31, v32, &v48);

      *(v21 + 34) = v33;
      _os_log_impl(&dword_1E4AD3000, v14, v46, "[%s] Sending SMS to [%s], [%s] with content [%{sensitive}s]", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E6921800](v47, -1, -1);
      MEMORY[0x1E6921800](v21, -1, -1);
    }

    else
    {

      sub_1E4BC3E90(v19, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v20, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v18, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v17, type metadata accessor for SMSMessage);
    }

    v34 = *(v0 + 88);
    v35 = *(v0 + 64);
    v36 = *(v0 + 72);
    v37 = *(v0 + 56);
    v38 = *(v35 + 48);
    v39 = *(v37 + 24);
    sub_1E4BC3E28(v37, v34, type metadata accessor for SMSMessage);
    v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v41 = swift_allocObject();
    *(v0 + 128) = v41;
    *(v41 + 16) = v35;
    sub_1E4BC3444(v34, v41 + v40);
    *(v0 + 168) = v39;

    v42 = swift_task_alloc();
    *(v0 + 136) = v42;
    v42[2] = v38;
    v42[3] = v0 + 168;
    v42[4] = &unk_1E4C16DD8;
    v42[5] = v41;
    v43 = swift_task_alloc();
    *(v0 + 144) = v43;
    *(v43 + 16) = v38;
    *(v43 + 24) = v0 + 168;
    v44 = swift_task_alloc();
    *(v0 + 152) = v44;
    *v44 = v0;
    v44[1] = sub_1E4BC1EE4;
    v45 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE18](v44, &unk_1E4C16DE8, v42, sub_1E4BC364C, v43, 0, 0, v45);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E4BC1EE4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E4BC20B0;
  }

  else
  {

    v2 = sub_1E4BC201C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BC201C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BC20B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BC2168(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BC2188, 0, 0);
}

uint64_t sub_1E4BC2188()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1E4B28C68;
    v4 = v0[8];

    return sub_1E4BBB5D4(v4);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t SMSService.reportSpam(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for SMSMessage(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BC2398, 0, 0);
}

uint64_t sub_1E4BC2398()
{
  v40 = v0;
  if (qword_1ECF92438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v6, qword_1ECF97638);
  sub_1E4BC3E28(v5, v2, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v1, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v3, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v4, type metadata accessor for SMSMessage);
  v7 = sub_1E4BEFB5C();
  v8 = sub_1E4BF04BC();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v14 = 136315906;
    v15 = *v10;
    v38 = 0;
    v39 = 0xE000000000000000;
    v35 = v8;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v15);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    sub_1E4BC3E90(v10, type metadata accessor for SMSMessage);
    v16 = sub_1E4B30548(0, 0xE000000000000000, &v37);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    v17 = *(v11 + 8);
    v18 = *(v11 + 16);

    sub_1E4BC3E90(v11, type metadata accessor for SMSMessage);
    v19 = sub_1E4B30548(v17, v18, &v37);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    LODWORD(v18) = *(v13 + 24);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1E4BF069C();

    v38 = 0xD000000000000017;
    v39 = 0x80000001E4BF2670;
    *(v0 + 128) = v18;
    v20 = sub_1E4BF096C();
    MEMORY[0x1E69205B0](v20);

    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v21 = v38;
    v22 = v39;
    sub_1E4BC3E90(v13, type metadata accessor for SMSMessage);
    v23 = sub_1E4B30548(v21, v22, &v37);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2080;
    sub_1E4BEFABC();
    sub_1E4BC3EF0(&qword_1ECF94378, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v24 = sub_1E4BF096C();
    v26 = v25;
    sub_1E4BC3E90(v12, type metadata accessor for SMSMessage);
    v27 = sub_1E4B30548(v24, v26, &v37);

    *(v14 + 34) = v27;
    _os_log_impl(&dword_1E4AD3000, v7, v35, "[%s] Reporting SMS message as spam. (SMSMessage: phoneNumber: [%s], messageID: [%s], receivedAt: [%s])", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v36, -1, -1);
    MEMORY[0x1E6921800](v14, -1, -1);
  }

  else
  {

    sub_1E4BC3E90(v12, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v13, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v11, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v10, type metadata accessor for SMSMessage);
  }

  v28 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v28 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v28 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v30 = swift_task_alloc();
    *(v0 + 112) = v30;
    *v30 = v0;
    v30[1] = sub_1E4BC2920;
    v31 = *(v0 + 56);

    return sub_1E4BBBBB0(v31);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1E4BC2920()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E4BC2AC8;
  }

  else
  {
    v2 = sub_1E4BC2A34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4BC2A34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BC2AC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SMSService.incomingMessageNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v4 + 6);
  if (Strong)
  {
    sub_1E4B35420(v10);

    if (!v2)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v8 = swift_allocObject();
      swift_weakInit();
      sub_1E4B7D378(*v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v10);
      return sub_1E4B2AC20(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BC2C6C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SMSReceivedNotification(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SMSService.IncomingMessageNotification(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4BC3E28(a1, v5, type metadata accessor for SMSReceivedNotification);
    sub_1E4BC3444(v5, v8);
    sub_1E4B75628(v8);
    sub_1E4BC3E90(v8, type metadata accessor for SMSService.IncomingMessageNotification);
  }

  return result;
}

uint64_t SMSService.criticalMessageStateNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v4 + 6);
  if (Strong)
  {
    sub_1E4B35420(v10);

    if (!v2)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v8 = swift_allocObject();
      swift_weakInit();
      sub_1E4B7DE70(*v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v10);
      return sub_1E4B2B31C(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BC2EBC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B759C0(v2 | (v3 << 32));
  }

  return result;
}

void *SMSService.deinit()
{

  return v0;
}

uint64_t SMSService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1E4BC2FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3 == 4)
    {
      sub_1E4B7417C(v2);
    }

    else
    {
      sub_1E4B84F0C();
      v4 = swift_allocError();
      *v5 = v3;
      sub_1E4BC8010(v2, v4);
    }
  }
}

uint64_t sub_1E4BC308C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 72) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1E4BC30B8, 0, 0);
}

uint64_t sub_1E4BC30B8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 72;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E4B32E40;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BC3F38, v2, v6);
}

void sub_1E4BC31C0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_1E4BF01DC();
  sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  sub_1E4BEFD9C();
  sub_1E4BC8010(v2, v3);
}

void *sub_1E4BC326C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97758, &qword_1E4C17580);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97760, &qword_1E4C17588);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  v1[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97768, &qword_1E4C17590);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97770, &qword_1E4C17598);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v4;
  *(v5 + 16) = v6;
  v1[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97778, &qword_1E4C175A0);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97780, &qword_1E4C175A8);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v4;
  *(v7 + 16) = v8;
  v1[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97788, &qword_1E4C175B0);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97790, &qword_1E4C175B8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = v10;
  v1[6] = v9;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97798, &unk_1E4C175C0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  sub_1E4BC3F48(v13, v11 + 16);
  v1[2] = v11;
  return v1;
}

uint64_t sub_1E4BC3444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BC34A8()
{
  v2 = *(type metadata accessor for SMSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B33678;

  return sub_1E4BC2168(v4, v0 + v3);
}

uint64_t sub_1E4BC3580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BC308C(a1, v4, v5, v7, v6);
}

unint64_t sub_1E4BC3658()
{
  result = qword_1ECF976C8;
  if (!qword_1ECF976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF976C8);
  }

  return result;
}

unint64_t sub_1E4BC36B4()
{
  result = qword_1ECF976D0;
  if (!qword_1ECF976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF976D0);
  }

  return result;
}

unint64_t sub_1E4BC3708(void *a1)
{
  a1[1] = sub_1E4B861BC();
  a1[2] = sub_1E4B85F4C();
  result = sub_1E4B84F0C();
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for SMSService.IncomingMessageNotification(uint64_t a1)
{
  result = qword_1ECF976D8;
  if (!qword_1ECF976D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BC3830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E4BC38E8()
{
  result = qword_1ECF97700;
  if (!qword_1ECF97700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97700);
  }

  return result;
}

unint64_t sub_1E4BC3940()
{
  result = qword_1ECF97708;
  if (!qword_1ECF97708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97708);
  }

  return result;
}

unint64_t sub_1E4BC3998()
{
  result = qword_1ECF97710;
  if (!qword_1ECF97710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97710);
  }

  return result;
}

unint64_t sub_1E4BC39F0()
{
  result = qword_1ECF97718;
  if (!qword_1ECF97718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97718);
  }

  return result;
}

unint64_t sub_1E4BC3A48()
{
  result = qword_1ECF97720;
  if (!qword_1ECF97720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97720);
  }

  return result;
}

unint64_t sub_1E4BC3AA0()
{
  result = qword_1ECF97728;
  if (!qword_1ECF97728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97728);
  }

  return result;
}

unint64_t sub_1E4BC3AF8()
{
  result = qword_1ECF97730;
  if (!qword_1ECF97730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97730);
  }

  return result;
}

unint64_t sub_1E4BC3B50()
{
  result = qword_1ECF97738;
  if (!qword_1ECF97738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97738);
  }

  return result;
}

unint64_t sub_1E4BC3BA8()
{
  result = qword_1ECF97740;
  if (!qword_1ECF97740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97740);
  }

  return result;
}

unint64_t sub_1E4BC3C00()
{
  result = qword_1ECF97748;
  if (!qword_1ECF97748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97748);
  }

  return result;
}

unint64_t sub_1E4BC3C58()
{
  result = qword_1ECF97750;
  if (!qword_1ECF97750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97750);
  }

  return result;
}

uint64_t sub_1E4BC3CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E4BF2730 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2750 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4BC3E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BC3E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BC3EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double ServiceStatusNotification.serviceStatus.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_1E4BC3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5365636976726573 && a2 == 0xED00007375746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BC4060(uint64_t a1)
{
  v2 = sub_1E4BC4238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC409C(uint64_t a1)
{
  v2 = sub_1E4BC4238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceStatusNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977A0, &qword_1E4C175D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC4238();

  sub_1E4BF0ACC();
  v9[1] = v7;
  sub_1E4BBC49C();
  sub_1E4BF093C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4BC4238()
{
  result = qword_1ECF977A8;
  if (!qword_1ECF977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977A8);
  }

  return result;
}

uint64_t ServiceStatusNotification.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977B0, &qword_1E4C175D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC4238();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4BBC444();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BC43F8(uint64_t a1)
{
  result = sub_1E4B8519C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BC4420(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BC4450();
  result = sub_1E4BC44A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BC4450()
{
  result = qword_1ECF977B8;
  if (!qword_1ECF977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977B8);
  }

  return result;
}

unint64_t sub_1E4BC44A4()
{
  result = qword_1ECF977C0;
  if (!qword_1ECF977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977C0);
  }

  return result;
}

unint64_t sub_1E4BC454C()
{
  result = qword_1ECF977C8;
  if (!qword_1ECF977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977C8);
  }

  return result;
}

unint64_t sub_1E4BC45A4()
{
  result = qword_1ECF977D0;
  if (!qword_1ECF977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977D0);
  }

  return result;
}

unint64_t sub_1E4BC45FC()
{
  result = qword_1ECF977D8;
  if (!qword_1ECF977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977D8);
  }

  return result;
}

double RCSReportSpamResultNotification.operationID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

TelephonyMessagingKit::RCSReportSpamResultNotification __swiftcall RCSReportSpamResultNotification.init(cellularServiceID:operationID:error:)(TelephonyMessagingKit::CellularServiceID cellularServiceID, TelephonyMessagingKit::RCSOperationID operationID, TelephonyMessagingKit::RCSService::Error_optional error)
{
  v4 = *operationID.rawValue._countAndFlagsBits;
  v5 = *(operationID.rawValue._countAndFlagsBits + 8);
  v6 = *operationID.rawValue._object;
  *v3 = *cellularServiceID.simSlot;
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  result.operationID = operationID;
  result.error = error;
  result.cellularServiceID = cellularServiceID;
  return result;
}

uint64_t sub_1E4BC469C()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BC4700@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BC4E90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BC4728(uint64_t a1)
{
  v2 = sub_1E4BC499C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC4764(uint64_t a1)
{
  v2 = sub_1E4BC499C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamResultNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977E0, &qword_1E4C177C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v12[0] = *(v1 + 1);
  v15 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC499C();
  sub_1E4BF0ACC();
  LOBYTE(v13) = v7;
  v16 = 0;
  sub_1E4ADBE98();
  v9 = v12[1];
  sub_1E4BF093C();
  if (!v9)
  {
    v10 = v15;
    v13 = v12[0];
    v14 = v8;
    v16 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    LOBYTE(v13) = v10;
    v16 = 2;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4BC499C()
{
  result = qword_1ECF977E8;
  if (!qword_1ECF977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977E8);
  }

  return result;
}

uint64_t RCSReportSpamResultNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977F0, &qword_1E4C177C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC499C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v15;
  v17 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  v10 = v16;
  v14 = v15;
  v17 = 2;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BC4C2C(uint64_t a1)
{
  result = sub_1E4B84488();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BC4C60(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BC4C90();
  result = sub_1E4BC4CE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BC4C90()
{
  result = qword_1ECF977F8;
  if (!qword_1ECF977F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977F8);
  }

  return result;
}

unint64_t sub_1E4BC4CE4()
{
  result = qword_1ECF97800;
  if (!qword_1ECF97800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97800);
  }

  return result;
}

unint64_t sub_1E4BC4D8C()
{
  result = qword_1ECF97808;
  if (!qword_1ECF97808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97808);
  }

  return result;
}

unint64_t sub_1E4BC4DE4()
{
  result = qword_1ECF97810;
  if (!qword_1ECF97810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97810);
  }

  return result;
}

unint64_t sub_1E4BC4E3C()
{
  result = qword_1ECF97818[0];
  if (!qword_1ECF97818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF97818);
  }

  return result;
}

uint64_t sub_1E4BC4E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BC4FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 64))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (a5 + *(type metadata accessor for XPCBoxedMessage(0, a2, AssociatedConformanceWitness, v11) + 36));
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  v14 = *(*(a3 - 8) + 32);

  return v14(boxed_opaque_existential_1, a1, a3);
}

uint64_t sub_1E4BC508C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v10 = a4 + *(type metadata accessor for XPCBoxedMessage(0, a3, a5, v9) + 36);

  return sub_1E4ADB544(a2, v10);
}

uint64_t sub_1E4BC511C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E4BF07DC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4BC5170(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1E4BC51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC5220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4BC528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC536C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4BC511C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1E4BC539C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4BC5170(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4BC53D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BC511C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BC53F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4B67BD8();
  *a1 = result;
  return result;
}

uint64_t sub_1E4BC5424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E4BC5478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E4BC54CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v27 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v23 - v8;
  v29 = v10;
  v30 = v9;
  type metadata accessor for XPCBoxedMessage.CodingKeys(255, v9, v10, v11);
  swift_getWitnessTable();
  v12 = sub_1E4BF08AC();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BF0ABC();
  if (v3)
  {
    v22 = a1;
  }

  else
  {
    v25 = a1;
    v15 = v27;
    LOBYTE(v32[0]) = 0;
    v16 = v29;
    sub_1E4BF087C();
    v24 = v12;
    v17 = v30;
    v18 = (*(v16 + 32))(v30, v16);
    v32[3] = v18;
    v32[4] = v19;
    __swift_allocate_boxed_opaque_existential_1(v32);
    sub_1E4BC5814(v18, v14, v17, v18, v16);
    (*(v28 + 8))(v14, v24);
    v21 = v30;
    (*(v15 + 32))(v7, v33, v30);
    sub_1E4B14334(v32, v31);
    sub_1E4BC508C(v7, v31, v21, v26, v16);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void *sub_1E4BC5814(uint64_t a1, void x1_0, uint64_t x2_0, uint64_t a2, uint64_t a5)
{
  type metadata accessor for XPCBoxedMessage.CodingKeys(255, x2_0, a5, a2);
  swift_getWitnessTable();
  sub_1E4BF08AC();
  return sub_1E4BF087C();
}

uint64_t sub_1E4BC58CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for XPCBoxedMessage.CodingKeys(255, v7, v6, a4);
  swift_getWitnessTable();
  v22 = sub_1E4BF094C();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v19[1];
  sub_1E4BF0ACC();
  v11 = (v10 + *(a2 + 36));
  v12 = v11[3];
  v13 = v11[4];
  v14 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v15 = v21;
  sub_1E4BC5AC8(v14, v9, v7, v12, v6, *(v13 + 16));
  if (v15)
  {
    return (*(v20 + 8))(v9, v22);
  }

  v17 = v20;
  v23 = 0;
  swift_beginAccess();
  v18 = v22;
  sub_1E4BF093C();
  swift_endAccess();
  return (*(v17 + 8))(v9, v18);
}

uint64_t sub_1E4BC5AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  type metadata accessor for XPCBoxedMessage.CodingKeys(255, a3, a5, v8);
  swift_getWitnessTable();
  sub_1E4BF094C();
  sub_1E4BF093C();
  return swift_endAccess();
}

uint64_t sub_1E4BC5C14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E4BC5F9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4BC5C9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1E4BC5DD8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_1E4BC5F9C()
{
  result = qword_1ECF97920;
  if (!qword_1ECF97920)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECF97920);
  }

  return result;
}

uint64_t sub_1E4BC6054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v56 - v6;
  v67 = type metadata accessor for RCSService.Business.Suggestion(0);
  v8 = MEMORY[0x1EEE9AC00](v67);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v56 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v56 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD0, &qword_1E4BFCCD8);
  MEMORY[0x1EEE9AC00](v72);
  v16 = &v56 - v15;
  v71 = type metadata accessor for RCSService.Business.Menu.Content(0);
  v17 = MEMORY[0x1EEE9AC00](v71);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v56 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v56 - v24;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    return 0;
  }

  if (!v27 || a1 == a2)
  {
    return 1;
  }

  v61 = v25;
  v59 = v7;
  v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v65 = *(v23 + 72);
  v66 = v16;
  v62 = v10;
  v63 = &v56 - v24;
  v60 = v22;
  v57 = v13;
  while (1)
  {
    sub_1E4BE6884(v29, v26, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE6884(v30, v22, type metadata accessor for RCSService.Business.Menu.Content);
    v32 = &v16[*(v72 + 48)];
    sub_1E4BE6884(v26, v16, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE6884(v22, v32, type metadata accessor for RCSService.Business.Menu.Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v33 = v61;
    sub_1E4BE6884(v16, v61, type metadata accessor for RCSService.Business.Menu.Content);
    v35 = *v33;
    v34 = v33[1];
    v36 = v33[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v26 = v63;
      v16 = v66;
LABEL_27:
      sub_1E4AE0AE4(v16, &qword_1ECF92BD0, &qword_1E4BFCCD8);
      goto LABEL_35;
    }

    v37 = *(v32 + 1);
    v38 = *(v32 + 2);
    if (v34)
    {
      if (!v37 || (v35 != *v32 || v34 != v37) && (sub_1E4BF099C() & 1) == 0)
      {
LABEL_33:

        v16 = v66;

        v22 = v60;
        v26 = v63;
        goto LABEL_34;
      }
    }

    else if (v37)
    {
      goto LABEL_33;
    }

    v31 = sub_1E4BC6054(v36, v38);

    v22 = v60;
    v26 = v63;
    v16 = v66;
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_7:
    sub_1E4BE3004(v16, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE3004(v22, type metadata accessor for RCSService.Business.Menu.Content);
    sub_1E4BE3004(v26, type metadata accessor for RCSService.Business.Menu.Content);
    v30 += v65;
    v29 += v65;
    if (!--v27)
    {
      return 1;
    }
  }

  v39 = v69;
  sub_1E4BE6884(v16, v69, type metadata accessor for RCSService.Business.Menu.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4BE3004(v39, type metadata accessor for RCSService.Business.Suggestion);
    goto LABEL_27;
  }

  v40 = v70;
  sub_1E4BE68EC(v32, v70, type metadata accessor for RCSService.Business.Suggestion);
  v41 = v59;
  v42 = &v59[*(v68 + 48)];
  sub_1E4BE6884(v39, v59, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE6884(v40, v42, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v62;
    sub_1E4BE6884(v41, v62, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E4BE3004(v43, type metadata accessor for RCSService.Business.SuggestedAction);
      goto LABEL_31;
    }

    v44 = v64;
    sub_1E4BE68EC(v42, v64, type metadata accessor for RCSService.Business.SuggestedAction);
    v45 = static RCSService.Business.SuggestedAction.== infix(_:_:)();
    sub_1E4BE3004(v44, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v62, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v41, type metadata accessor for RCSService.Business.Suggestion);
    v16 = v66;
    if ((v45 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v46 = v57;
  sub_1E4BE6884(v41, v57, type metadata accessor for RCSService.Business.Suggestion);
  v47 = v41;
  v48 = v46[1];
  v49 = v46[3];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = v46[2];
    v51 = *v42;
    v52 = *(v42 + 1);
    v53 = *(v42 + 2);
    v54 = *(v42 + 3);
    v74[0] = *v46;
    v74[1] = v48;
    v74[2] = v50;
    v74[3] = v49;
    v73[0] = v51;
    v73[1] = v52;
    v73[2] = v53;
    v73[3] = v54;
    v58 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v74, v73);

    v26 = v63;

    sub_1E4BE3004(v47, type metadata accessor for RCSService.Business.Suggestion);
    v16 = v66;
    v39 = v69;
    if (!v58)
    {
      goto LABEL_32;
    }

LABEL_23:
    sub_1E4BE3004(v70, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v39, type metadata accessor for RCSService.Business.Suggestion);
    goto LABEL_7;
  }

  v41 = v47;
  v39 = v69;
LABEL_31:
  sub_1E4AE0AE4(v41, &qword_1ECF95758, &qword_1E4C0BDE0);
  v16 = v66;
LABEL_32:
  sub_1E4BE3004(v70, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE3004(v39, type metadata accessor for RCSService.Business.Suggestion);
LABEL_34:
  sub_1E4BE3004(v16, type metadata accessor for RCSService.Business.Menu.Content);
LABEL_35:
  sub_1E4BE3004(v22, type metadata accessor for RCSService.Business.Menu.Content);
  sub_1E4BE3004(v26, type metadata accessor for RCSService.Business.Menu.Content);
  return 0;
}

uint64_t sub_1E4BC68F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  MEMORY[0x1EEE9AC00](v46);
  v7 = v38 - v6;
  v8 = type metadata accessor for RCSService.Business.Suggestion(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v42 = (v38 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v18 = v38 - v16;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v39 = v17;
  v40 = v38 - v16;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v44 = *(v15 + 72);
  v45 = v7;
  v38[1] = v8;
  while (1)
  {
    sub_1E4BE6884(v21, v18, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v22, v14, type metadata accessor for RCSService.Business.Suggestion);
    v23 = &v7[*(v46 + 48)];
    sub_1E4BE6884(v18, v7, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v14, v23, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v28 = v14;
    v29 = v42;
    sub_1E4BE6884(v7, v42, type metadata accessor for RCSService.Business.Suggestion);
    v30 = v29[1];
    v31 = v29[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v14 = v28;
      v18 = v40;
      goto LABEL_16;
    }

    v32 = v29[2];
    v33 = *v23;
    v34 = *(v23 + 1);
    v35 = *(v23 + 2);
    v36 = *(v23 + 3);
    v48[0] = *v29;
    v48[1] = v30;
    v48[2] = v32;
    v48[3] = v31;
    v47[0] = v33;
    v47[1] = v34;
    v47[2] = v35;
    v47[3] = v36;
    v43 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV14SuggestedReplyV2eeoiySbAG_AGtFZ_0(v48, v47);

    v7 = v45;

    sub_1E4BE3004(v7, type metadata accessor for RCSService.Business.Suggestion);
    v14 = v28;
    v18 = v40;
    if (!v43)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_1E4BE3004(v14, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v18, type metadata accessor for RCSService.Business.Suggestion);
    v22 += v44;
    v21 += v44;
    if (!--v19)
    {
      return 1;
    }
  }

  v24 = v39;
  sub_1E4BE6884(v7, v39, type metadata accessor for RCSService.Business.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v41;
    sub_1E4BE68EC(v23, v41, type metadata accessor for RCSService.Business.SuggestedAction);
    v26 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV15SuggestedActionV2eeoiySbAG_AGtFZ_0(v24, v25);
    v27 = v25;
    v7 = v45;
    sub_1E4BE3004(v27, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v24, type metadata accessor for RCSService.Business.SuggestedAction);
    sub_1E4BE3004(v7, type metadata accessor for RCSService.Business.Suggestion);
    if (!v26)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_1E4BE3004(v24, type metadata accessor for RCSService.Business.SuggestedAction);
LABEL_16:
  sub_1E4AE0AE4(v7, &qword_1ECF95758, &qword_1E4C0BDE0);
LABEL_17:
  sub_1E4BE3004(v14, type metadata accessor for RCSService.Business.Suggestion);
  sub_1E4BE3004(v18, type metadata accessor for RCSService.Business.Suggestion);
  return 0;
}

uint64_t sub_1E4BC6DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.URIEntry(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1E4BE6884(v13, v10, type metadata accessor for RCSService.Business.URIEntry);
        sub_1E4BE6884(v14, v7, type metadata accessor for RCSService.Business.URIEntry);
        if ((sub_1E4BEFA4C() & 1) == 0 || v10[*(v4 + 20)] != v7[*(v4 + 20)])
        {
          break;
        }

        v16 = v10[*(v4 + 24)];
        sub_1E4BE3004(v10, type metadata accessor for RCSService.Business.URIEntry);
        v17 = v7[*(v4 + 24)];
        sub_1E4BE3004(v7, type metadata accessor for RCSService.Business.URIEntry);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_1E4BE3004(v7, type metadata accessor for RCSService.Business.URIEntry);
      sub_1E4BE3004(v10, type metadata accessor for RCSService.Business.URIEntry);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1E4BC7008(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for RCSService.Business.SuggestedAction(0);
  MEMORY[0x1EEE9AC00](v98);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95758, &qword_1E4C0BDE0);
  MEMORY[0x1EEE9AC00](v105);
  v109 = &v81 - v6;
  v104 = type metadata accessor for RCSService.Business.Suggestion(0);
  v107 = *(v104 - 8);
  v7 = MEMORY[0x1EEE9AC00](v104);
  v101 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = (&v81 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v108 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - v13;
  v97 = type metadata accessor for RCSService.Business.Card.Media(0);
  v15 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v93 = &v81 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95730, &qword_1E4C0BDC0);
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v81 - v19;
  v106 = type metadata accessor for RCSService.Business.Card.Content(0);
  v20 = MEMORY[0x1EEE9AC00](v106);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v81 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    return 0;
  }

  if (!v26 || a1 == a2)
  {
    return 1;
  }

  v89 = v5;
  v27 = 0;
  v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = a1 + v28;
  v87 = a2 + v28;
  v86 = (v15 + 48);
  v30 = *(v23 + 72);
  v31 = &qword_1ECF951E8;
  v32 = v100;
  v84 = v22;
  v83 = &v81 - v24;
  v90 = v26;
  v82 = v29;
  v85 = v14;
  v81 = v30;
  while (1)
  {
    v35 = v27;
    v36 = v30 * v27;
    result = sub_1E4BE6884(v29 + v36, v25, type metadata accessor for RCSService.Business.Card.Content);
    v88 = v35;
    if (v35 == v90)
    {
      goto LABEL_84;
    }

    sub_1E4BE6884(v87 + v36, v22, type metadata accessor for RCSService.Business.Card.Content);
    v37 = *(v96 + 48);
    sub_1E4AF1898(v25, v32, v31, &qword_1E4C07AB0);
    sub_1E4AF1898(v22, v32 + v37, v31, &qword_1E4C07AB0);
    v38 = *v86;
    v39 = v97;
    if ((*v86)(v32, 1, v97) == 1)
    {
      if (v38(v32 + v37, 1, v39) != 1)
      {
        goto LABEL_72;
      }

      result = sub_1E4AE0AE4(v32, v31, &qword_1E4C07AB0);
      v40 = v85;
      goto LABEL_13;
    }

    v41 = v32;
    v42 = v32;
    v43 = v93;
    sub_1E4AF1898(v41, v93, v31, &qword_1E4C07AB0);
    if (v38(v42 + v37, 1, v39) == 1)
    {
      sub_1E4BE3004(v43, type metadata accessor for RCSService.Business.Card.Media);
      v32 = v42;
LABEL_72:
      sub_1E4AE0AE4(v32, &qword_1ECF95730, &qword_1E4C0BDC0);
LABEL_79:
      sub_1E4BE3004(v22, type metadata accessor for RCSService.Business.Card.Content);
      sub_1E4BE3004(v25, type metadata accessor for RCSService.Business.Card.Content);
      return 0;
    }

    v44 = v92;
    sub_1E4BE68EC(v42 + v37, v92, type metadata accessor for RCSService.Business.Card.Media);
    v45 = static RCSService.Business.Card.Media.== infix(_:_:)();
    sub_1E4BE3004(v44, type metadata accessor for RCSService.Business.Card.Media);
    sub_1E4BE3004(v43, type metadata accessor for RCSService.Business.Card.Media);
    result = sub_1E4AE0AE4(v42, v31, &qword_1E4C07AB0);
    v32 = v42;
    v40 = v85;
    if ((v45 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_13:
    v46 = v106[5];
    v47 = &v25[v46];
    v48 = *&v25[v46 + 8];
    v49 = &v22[v46];
    v50 = *(v49 + 1);
    if (v48)
    {
      if (!v50)
      {
        goto LABEL_79;
      }

      result = *v47;
      if (*v47 != *v49 || v48 != v50)
      {
        result = sub_1E4BF099C();
        if ((result & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    else if (v50)
    {
      goto LABEL_79;
    }

    v51 = v106[6];
    v52 = &v25[v51];
    v53 = *&v25[v51 + 8];
    v54 = &v22[v51];
    v55 = *(v54 + 1);
    if (v53)
    {
      if (!v55)
      {
        goto LABEL_79;
      }

      result = *v52;
      if (*v52 != *v54 || v53 != v55)
      {
        result = sub_1E4BF099C();
        if ((result & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    else if (v55)
    {
      goto LABEL_79;
    }

    v56 = v106[7];
    v57 = *&v25[v56];
    v102 = *&v22[v56];
    v103 = v57;
    v58 = *(v57 + 16);
    if (v58 != *(v102 + 16))
    {
      goto LABEL_79;
    }

    v59 = v101;
    if (v58)
    {
      if (v103 != v102)
      {
        break;
      }
    }

LABEL_6:
    v34 = v88 + 1;
    v22 = v84;
    sub_1E4BE3004(v84, type metadata accessor for RCSService.Business.Card.Content);
    v25 = v83;
    v27 = v34;
    sub_1E4BE3004(v83, type metadata accessor for RCSService.Business.Card.Content);
    result = 1;
    v29 = v82;
    v30 = v81;
    if (v34 == v90)
    {
      return result;
    }
  }

  v60 = 0;
  v61 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v95 = v103 + v61;
  v94 = v102 + v61;
  v91 = v58;
  while (v60 < *(v103 + 16))
  {
    v62 = *(v107 + 72) * v60;
    result = sub_1E4BE6884(v95 + v62, v40, type metadata accessor for RCSService.Business.Suggestion);
    if (v60 >= *(v102 + 16))
    {
      goto LABEL_83;
    }

    v63 = v108;
    sub_1E4BE6884(v94 + v62, v108, type metadata accessor for RCSService.Business.Suggestion);
    v64 = (v109 + *(v105 + 48));
    sub_1E4BE6884(v40, v109, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE6884(v63, v64, type metadata accessor for RCSService.Business.Suggestion);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E4BE6884(v109, v59, type metadata accessor for RCSService.Business.Suggestion);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1E4BE3004(v59, type metadata accessor for RCSService.Business.SuggestedAction);
        goto LABEL_67;
      }

      v65 = v89;
      sub_1E4BE68EC(v64, v89, type metadata accessor for RCSService.Business.SuggestedAction);
      if ((*v59 != *v65 || v59[1] != v65[1]) && (sub_1E4BF099C() & 1) == 0)
      {
        goto LABEL_74;
      }

      v66 = v59[3];
      v67 = v65[3];
      if (v66)
      {
        if (!v67)
        {
          goto LABEL_73;
        }

        if ((v59[2] != v65[2] || v66 != v67) && (sub_1E4BF099C() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v67)
        {
LABEL_73:

          v65 = v89;
LABEL_74:
          sub_1E4BE3004(v65, type metadata accessor for RCSService.Business.SuggestedAction);
          sub_1E4BE3004(v59, type metadata accessor for RCSService.Business.SuggestedAction);
          goto LABEL_77;
        }
      }

      if ((static RCSService.Business.SuggestedAction.Action.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_1E4BE3004(v65, type metadata accessor for RCSService.Business.SuggestedAction);
      sub_1E4BE3004(v59, type metadata accessor for RCSService.Business.SuggestedAction);
    }

    else
    {
      v68 = v31;
      v69 = v40;
      v70 = v99;
      sub_1E4BE6884(v109, v99, type metadata accessor for RCSService.Business.Suggestion);
      v72 = *v70;
      v71 = v70[1];
      v73 = v70[2];
      v74 = v70[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v40 = v69;
LABEL_67:
        sub_1E4AE0AE4(v109, &qword_1ECF95758, &qword_1E4C0BDE0);
        goto LABEL_78;
      }

      v75 = *v64;
      v76 = v64[1];
      v78 = v64[2];
      v77 = v64[3];
      v79 = v72 == v75 && v71 == v76;
      if (!v79 && (sub_1E4BF099C() & 1) == 0)
      {

        v40 = v69;
        goto LABEL_76;
      }

      v40 = v69;
      if (!v74)
      {
        if (v77)
        {
LABEL_75:

          swift_bridgeObjectRelease_n();

LABEL_76:

LABEL_77:
          sub_1E4BE3004(v109, type metadata accessor for RCSService.Business.Suggestion);
LABEL_78:
          v22 = v84;
          v25 = v83;
          sub_1E4BE3004(v108, type metadata accessor for RCSService.Business.Suggestion);
          sub_1E4BE3004(v40, type metadata accessor for RCSService.Business.Suggestion);
          goto LABEL_79;
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      if (!v77)
      {
        goto LABEL_75;
      }

      if (v73 == v78 && v74 == v77)
      {

LABEL_32:

        v32 = v100;
        v59 = v101;
        v31 = v68;
        goto LABEL_33;
      }

      v80 = sub_1E4BF099C();

      v32 = v100;
      v59 = v101;
      v31 = v68;
      if ((v80 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

LABEL_33:
    ++v60;
    sub_1E4BE3004(v109, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BE3004(v108, type metadata accessor for RCSService.Business.Suggestion);
    result = sub_1E4BE3004(v40, type metadata accessor for RCSService.Business.Suggestion);
    if (v91 == v60)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1E4BC7C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  for (i = (a1 + 64); ; i += 40)
  {
    v13 = *(i - 4);
    v12 = *(i - 3);
    v15 = *(i - 2);
    v14 = *(i - 1);
    v16 = *i;
    v18 = *(v3 - 4);
    v17 = *(v3 - 3);
    v20 = *(v3 - 2);
    v19 = *(v3 - 1);
    if (*i)
    {
      break;
    }

    if (*v3)
    {
      goto LABEL_28;
    }

    if (v13 == v18 && v12 == v17)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      sub_1E4ADD6D8(*(i - 4), *(i - 3), v5, v6, 0);
      sub_1E4ADD6D8(v13, v12, v15, v14, 0);
      sub_1E4ADD764(v13, v12, v15, v14, 0);
      v7 = v13;
      v8 = v12;
      v9 = v5;
      v10 = v6;
      v11 = 0;
LABEL_6:
      sub_1E4ADD764(v7, v8, v9, v10, v11);
      goto LABEL_7;
    }

    v24 = *(v3 - 2);
    v38 = *(v3 - 1);
    v35 = sub_1E4BF099C();
    sub_1E4ADD6D8(v18, v17, v24, v38, 0);
    sub_1E4ADD6D8(v13, v12, v15, v14, 0);
    sub_1E4ADD764(v13, v12, v15, v14, 0);
    v25 = v18;
    v26 = v17;
    v27 = v24;
    v28 = v38;
    v29 = 0;
LABEL_25:
    sub_1E4ADD764(v25, v26, v27, v28, v29);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*v3)
  {
    v21 = v13 == v18 && v12 == v17;
    v36 = *(v3 - 2);
    v37 = *(v3 - 1);
    if (!v21)
    {
      v22 = sub_1E4BF099C();
      v20 = v36;
      v19 = v37;
      if ((v22 & 1) == 0)
      {
LABEL_28:
        v32 = 1;
        goto LABEL_30;
      }
    }

    if (v15 == v20 && v14 == v19)
    {
      sub_1E4ADD6D8(v18, v17, v15, v14, 1);
      sub_1E4ADD6D8(v13, v12, v15, v14, 1);
      sub_1E4ADD764(v13, v12, v15, v14, 1);
      v7 = v18;
      v8 = v17;
      v9 = v15;
      v10 = v14;
      v11 = 1;
      goto LABEL_6;
    }

    v30 = v20;
    v35 = sub_1E4BF099C();
    sub_1E4ADD6D8(v18, v17, v30, v37, 1);
    sub_1E4ADD6D8(v13, v12, v15, v14, 1);
    sub_1E4ADD764(v13, v12, v15, v14, 1);
    v25 = v18;
    v26 = v17;
    v27 = v36;
    v28 = v37;
    v29 = 1;
    goto LABEL_25;
  }

  v32 = 0;
LABEL_30:
  v33 = v20;
  v34 = v19;
  sub_1E4ADD6D8(v18, v17, v20, v19, v32);
  sub_1E4ADD6D8(v13, v12, v15, v14, v16);
  sub_1E4ADD764(v13, v12, v15, v14, v16);
  sub_1E4ADD764(v18, v17, v33, v34, v32);
  return 0;
}

uint64_t sub_1E4BC8038(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v18 = *(v5 + 16);
  os_unfair_lock_lock((v18 + 24));
  sub_1E4BC9128((v18 + 16), a1, a3, a4, a5, v13);
  os_unfair_lock_unlock((v18 + 24));
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1E4AE0AE4(v13, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v15 + 32))(v17, v13, v14);
  v21[0] = a2;
  v20 = a2;
  sub_1E4BF01AC();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1E4BC8228(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84E24(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC8408(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84DC8(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F70, &unk_1E4C0E850);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC85E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84CB8(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F18, &qword_1E4C0E7F8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC87C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84B84(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95EF8, &unk_1E4C0E7C0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC89A8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4BE5A7C(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC8B88(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84C50(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F08, &unk_1E4C0E7E0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC8D68(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84C18(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F00, &unk_1E4C0E7D0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC8F48(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v20[0] = a1;
  v20[1] = a2;
  v14 = *(v3 + 16);
  v18 = v20;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B843A4(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95E50, &qword_1E4C0E6E8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v19 = a3;
  v16 = a3;
  sub_1E4BF01AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4BC9128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a3(a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    v20 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4BDF740(a4, a5);
      v14 = v20;
    }

    v15 = *(v14 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v17 = *(v16 - 8);
    (*(v17 + 32))(a6, v15 + *(v17 + 72) * v12, v16);
    sub_1E4BDEF9C(v12, v14);
    *a1 = v14;
    return (*(v17 + 56))(a6, 0, 1, v16);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    return (*(*(v19 - 8) + 56))(a6, 1, 1, v19);
  }
}

uint64_t sub_1E4BC92C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32[-v13];
  v15 = *a1;
  if (*(*a1 + 16))
  {
    v16 = sub_1E4B8EFD0();
    if (v17)
    {
      (*(v9 + 16))(v12, *(v15 + 56) + *(v9 + 72) * v16, v8);
      (*(v9 + 32))(v14, v12, v8);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v18 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v18, qword_1ECF940C8);
      v19 = sub_1E4BEFB5C();
      v20 = sub_1E4BF04BC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v21;
        v35 = swift_slowAlloc();
        v38 = v35;
        *v21 = 136315138;
        v37 = a2;
        v22 = sub_1E4BEFF0C();
        v24 = sub_1E4B30548(v22, v23, &v38);
        v33 = v20;
        v25 = a2;
        v26 = v24;

        v27 = v34;
        *(v34 + 1) = v26;
        a2 = v25;
        v28 = v27;
        _os_log_impl(&dword_1E4AD3000, v19, v33, "Found existing continuation with ID %s, cancelling", v27, 0xCu);
        v29 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v29, -1, -1);
        MEMORY[0x1E6921800](v28, -1, -1);
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v30 = swift_allocError();
      sub_1E4BEFD9C();
      v38 = v30;
      sub_1E4BF01AC();
      (*(v9 + 8))(v14, v8);
    }
  }

  (*(v9 + 16))(v7, v36, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_1E4BCBC14(v7, a2, sub_1E4B31790, sub_1E4B8EFD0, &qword_1ECF94608, &qword_1E4C18D20);
}

uint64_t sub_1E4BC96B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32[-v13];
  v15 = *a1;
  if (*(*a1 + 16))
  {
    v16 = sub_1E4B8EFD0();
    if (v17)
    {
      (*(v9 + 16))(v12, *(v15 + 56) + *(v9 + 72) * v16, v8);
      (*(v9 + 32))(v14, v12, v8);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v18 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v18, qword_1ECF940C8);
      v19 = sub_1E4BEFB5C();
      v20 = sub_1E4BF04BC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v21;
        v35 = swift_slowAlloc();
        v38 = v35;
        *v21 = 136315138;
        v37 = a2;
        v22 = sub_1E4BEFF0C();
        v24 = sub_1E4B30548(v22, v23, &v38);
        v33 = v20;
        v25 = a2;
        v26 = v24;

        v27 = v34;
        *(v34 + 1) = v26;
        a2 = v25;
        v28 = v27;
        _os_log_impl(&dword_1E4AD3000, v19, v33, "Found existing continuation with ID %s, cancelling", v27, 0xCu);
        v29 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v29, -1, -1);
        MEMORY[0x1E6921800](v28, -1, -1);
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v30 = swift_allocError();
      sub_1E4BEFD9C();
      v38 = v30;
      sub_1E4BF01AC();
      (*(v9 + 8))(v14, v8);
    }
  }

  (*(v9 + 16))(v7, v36, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_1E4BCBC14(v7, a2, sub_1E4B31BB4, sub_1E4B8EFD0, &qword_1ECF94558, &unk_1E4C05570);
}

uint64_t sub_1E4BC9AA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCBE94(v9, a2, a3);
}

uint64_t sub_1E4BC9E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC074(v9, a2, a3);
}

uint64_t sub_1E4BCA268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC254(v9, a2, a3);
}

uint64_t sub_1E4BCA64C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC434(v9, a2, a3);
}

uint64_t sub_1E4BCAA30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC614(v9, a2, a3);
}

uint64_t sub_1E4BCAE14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC7F4(v9, a2, a3);
}

uint64_t sub_1E4BCB1F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCC9D4(v9, a2, a3);
}

uint64_t sub_1E4BCB5DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v18 = sub_1E4B8EFD4();
    if (v19)
    {
      v36 = a1;
      v37 = a2;
      (*(v11 + 16))(v14, *(v17 + 56) + *(v11 + 72) * v18, v10);
      (*(v11 + 32))(v16, v14, v10);
      if (qword_1ECF923B8 != -1)
      {
        swift_once();
      }

      v20 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v20, qword_1ECF940C8);

      v21 = sub_1E4BEFB5C();
      v22 = sub_1E4BF04BC();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v37;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v41 = v35;
        *v25 = 136315138;
        v39 = v24;
        v40 = a3;
        v26 = sub_1E4BEFF0C();
        v28 = sub_1E4B30548(v26, v27, &v41);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_1E4AD3000, v21, v22, "Found existing continuation with ID %s, cancelling", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E6921800](v31, -1, -1);
        MEMORY[0x1E6921800](v30, -1, -1);
      }

      else
      {
      }

      sub_1E4BF01DC();
      sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v32 = swift_allocError();
      sub_1E4BEFD9C();
      v39 = v32;
      sub_1E4BF01AC();
      (*(v11 + 8))(v16, v10);
      a2 = v37;
    }
  }

  (*(v11 + 16))(v9, v38, v10);
  (*(v11 + 56))(v9, 0, 1, v10);

  return sub_1E4BCCBB4(v9, a2, a3);
}

uint64_t sub_1E4BCB9C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94368, &qword_1E4C04A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for MMSMessage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF94368, &qword_1E4C04A30);
    v13 = sub_1E4B8EFD0();
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4BDF394();
        v17 = v21;
      }

      sub_1E4BE68EC(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for MMSMessage);
      sub_1E4BDEDCC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1E4AE0AE4(v8, &qword_1ECF94368, &qword_1E4C04A30);
  }

  else
  {
    sub_1E4BE68EC(a1, v12, type metadata accessor for MMSMessage);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1E4B31908(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1E4BCBC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  v27 = a6;
  v10 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  if ((*(v17 + 48))(a1, 1, v16) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    v20 = a4(a2);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v10;
      v28 = *v10;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E4BDF740(a5, v27);
        v24 = v28;
      }

      (*(v17 + 32))(v15, *(v24 + 56) + *(v17 + 72) * v22, v16);
      sub_1E4BDEF9C(v22, v24);
      *v10 = v24;
      (*(v17 + 56))(v15, 0, 1, v16);
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    return sub_1E4AE0AE4(v15, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v17 + 32))(v19, a1, v16);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v10;
    result = a3(v19, a2, v25);
    *v10 = v28;
  }

  return result;
}

uint64_t sub_1E4BCBE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    sub_1E4BDDFCC(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B31D2C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F70, &unk_1E4C0E850);
    sub_1E4BDE18C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95F70, &unk_1E4C0E850);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B31EE8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F18, &qword_1E4C0E7F8);
    sub_1E4BDE34C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95F18, &qword_1E4C0E7F8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B320A4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EF8, &unk_1E4C0E7C0);
    sub_1E4BDE50C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95EF8, &unk_1E4C0E7C0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B32260(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95EC0, &unk_1E4C0E780);
    sub_1E4BDE6CC(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B3241C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F08, &unk_1E4C0E7E0);
    sub_1E4BDE88C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95F08, &unk_1E4C0E7E0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B325D8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCC9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95F00, &unk_1E4C0E7D0);
    sub_1E4BDEA4C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95F00, &unk_1E4C0E7D0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B32794(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCCBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E4AE0AE4(a1, &qword_1ECF95E50, &qword_1E4C0E6E8);
    sub_1E4BDEC0C(v9);

    return sub_1E4AE0AE4(v9, &qword_1ECF95E50, &qword_1E4C0E6E8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E4B32950(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E4BCCD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a3;
  v5[4] = a1;
  v5[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BCCDBC, 0, 0);
}

uint64_t sub_1E4BCCDBC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1E4BCCEC0;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 80, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5964, v2, v5);
}

uint64_t sub_1E4BCCEC0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BCD000, 0, 0);
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_1E4BCD000()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1E4BCD068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-v11];
  v20 = a3;
  v13 = *(a2 + 16);
  v18 = &v20;
  v19 = a1;
  os_unfair_lock_lock((v13 + 24));
  sub_1E4BE673C((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  v14 = sub_1E4BF01FC();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;

  sub_1E4BA8E24(0, 0, v12, &unk_1E4C18D30, v15);
}

uint64_t sub_1E4BCD1D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-v11];
  v20 = a3;
  v13 = *(a2 + 16);
  v18 = &v20;
  v19 = a1;
  os_unfair_lock_lock((v13 + 24));
  sub_1E4BE663C((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  v14 = sub_1E4BF01FC();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;

  sub_1E4BA8E24(0, 0, v12, &unk_1E4C18D00, v15);
}

uint64_t sub_1E4BCD348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE64EC((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18CE8, v17);
}

uint64_t sub_1E4BCD4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE62C0((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18CC0, v17);
}

uint64_t sub_1E4BCD650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE61A8((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18CA8, v17);
}

uint64_t sub_1E4BCD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE5DF8((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18C68, v17);
}

uint64_t sub_1E4BCD958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE5CE0((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18C40, v17);
}

uint64_t sub_1E4BCDADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE5BC8((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18C30, v17);
}

uint64_t sub_1E4BCDC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE5AB0((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18C18, v17);
}

uint64_t sub_1E4BCDDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  v22[0] = a3;
  v22[1] = a4;
  v15 = *(a2 + 16);
  v20 = v22;
  v21 = a1;
  os_unfair_lock_lock((v15 + 24));
  sub_1E4BE597C((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  v16 = sub_1E4BF01FC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  sub_1E4BA8E24(0, 0, v14, &unk_1E4C18BF8, v17);
}

uint64_t sub_1E4BCDF68()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97928);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97928);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1E4BCE044(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C616E7265746E69;
    v6 = 0x646E756F46746F6ELL;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7261726F706D6574;
    if (a1 != 5)
    {
      v7 = 0x6E656E616D726570;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4164696C61766E69;
    v2 = 0x676E69646F636564;
    v3 = 0x6F70707553746F6ELL;
    if (a1 != 3)
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E4BCE1DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4BE2AB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4BCE204(uint64_t a1)
{
  v2 = sub_1E4BCF098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE240(uint64_t a1)
{
  v2 = sub_1E4BCF098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE27C(uint64_t a1)
{
  v2 = sub_1E4BCF338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE2B8(uint64_t a1)
{
  v2 = sub_1E4BCF338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE2F4(uint64_t a1)
{
  v2 = sub_1E4BCF194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE330(uint64_t a1)
{
  v2 = sub_1E4BCF194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE36C(uint64_t a1)
{
  v2 = sub_1E4BCF38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE3A8(uint64_t a1)
{
  v2 = sub_1E4BCF38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE3E4(uint64_t a1)
{
  v2 = sub_1E4BCF0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE420(uint64_t a1)
{
  v2 = sub_1E4BCF0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE45C(uint64_t a1)
{
  v2 = sub_1E4BCF140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE498(uint64_t a1)
{
  v2 = sub_1E4BCF140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE4D4(uint64_t a1)
{
  v2 = sub_1E4BCF2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE510(uint64_t a1)
{
  v2 = sub_1E4BCF2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE54C(uint64_t a1)
{
  v2 = sub_1E4BCF1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE588(uint64_t a1)
{
  v2 = sub_1E4BCF1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE5C4(uint64_t a1)
{
  v2 = sub_1E4BCF3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE600(uint64_t a1)
{
  v2 = sub_1E4BCF3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE63C(uint64_t a1)
{
  v2 = sub_1E4BCF23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE678(uint64_t a1)
{
  v2 = sub_1E4BCF23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BCE6B4(uint64_t a1)
{
  v2 = sub_1E4BCF290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BCE6F0(uint64_t a1)
{
  v2 = sub_1E4BCF290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97940, &qword_1E4C17BB0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97948, &qword_1E4C17BB8);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97950, &qword_1E4C17BC0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97958, &qword_1E4C17BC8);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97960, &qword_1E4C17BD0);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97968, &qword_1E4C17BD8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97970, &qword_1E4C17BE0);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97978, &qword_1E4C17BE8);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97980, &qword_1E4C17BF0);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97988, &qword_1E4C17BF8);
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97990, &qword_1E4C17C00);
  v22 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BCF098();
  v64 = v24;
  sub_1E4BF0ACC();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_1E4BCF23C();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_1E4BF08BC();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_1E4BCF1E8();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_1E4BF08BC();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_1E4BCF194();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_1E4BF08BC();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_1E4BCF140();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_1E4BF08BC();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_1E4BCF0EC();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_1E4BF08BC();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_1E4BCF338();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_1E4BF08BC();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_1E4BCF2E4();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_1E4BF08BC();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_1E4BCF290();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_1E4BF08BC();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_1E4BCF38C();
    v34 = v64;
    v35 = v65;
    sub_1E4BF08BC();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_1E4BCF3E0();
  v28 = v64;
  v29 = v65;
  sub_1E4BF08BC();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}