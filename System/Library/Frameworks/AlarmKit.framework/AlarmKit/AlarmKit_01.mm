unint64_t sub_1BBBD08D0()
{
  result = qword_1EDD45BB0;
  if (!qword_1EDD45BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BB0);
  }

  return result;
}

uint64_t sub_1BBBD0924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E697472656C61 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBD0A90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBC00DE0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBD0BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBBD0C74()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_1BBBD0CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBD0D98(uint64_t a1)
{
  v2 = sub_1BBBD11B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD0DD4(uint64_t a1)
{
  v2 = sub_1BBBD11B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBD0E10(uint64_t a1)
{
  v2 = sub_1BBBD1258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD0E4C(uint64_t a1)
{
  v2 = sub_1BBBD1258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBD0E88(uint64_t a1)
{
  v2 = sub_1BBBD1204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD0EC4(uint64_t a1)
{
  v2 = sub_1BBBD1204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmActionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAB8, &qword_1BBBF9320);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAC0, &qword_1BBBF9328);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAC8, &qword_1BBBF9330);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBD11B0();
  sub_1BBBF58A4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BBBD1204();
    v14 = v18;
    sub_1BBBF56F4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BBBD1258();
    sub_1BBBF56F4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1BBBD11B0()
{
  result = qword_1EBC9AAD0;
  if (!qword_1EBC9AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AAD0);
  }

  return result;
}

unint64_t sub_1BBBD1204()
{
  result = qword_1EBC9AAD8;
  if (!qword_1EBC9AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AAD8);
  }

  return result;
}

unint64_t sub_1BBBD1258()
{
  result = qword_1EBC9AAE0;
  if (!qword_1EBC9AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AAE0);
  }

  return result;
}

uint64_t AlarmActionType.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t AlarmActionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAE8, &qword_1BBBF9338);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAF0, &qword_1BBBF9340);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAF8, &unk_1BBBF9348);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBD11B0();
  v12 = v31;
  sub_1BBBF5894();
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
    v16 = sub_1BBBF56D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1BBBC324C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1BBBF55D4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v22 = &type metadata for AlarmActionType;
      sub_1BBBF5644();
      sub_1BBBF55C4();
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
        sub_1BBBD1204();
        sub_1BBBF5634();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1BBBD1258();
        sub_1BBBF5634();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1BBBD17E0()
{
  result = qword_1EBC9AB00;
  if (!qword_1EBC9AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB00);
  }

  return result;
}

unint64_t sub_1BBBD18A8()
{
  result = qword_1EBC9AB08;
  if (!qword_1EBC9AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB08);
  }

  return result;
}

unint64_t sub_1BBBD1900()
{
  result = qword_1EBC9AB10;
  if (!qword_1EBC9AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB10);
  }

  return result;
}

unint64_t sub_1BBBD1958()
{
  result = qword_1EBC9AB18;
  if (!qword_1EBC9AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB18);
  }

  return result;
}

unint64_t sub_1BBBD19B0()
{
  result = qword_1EBC9AB20;
  if (!qword_1EBC9AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB20);
  }

  return result;
}

unint64_t sub_1BBBD1A08()
{
  result = qword_1EBC9AB28;
  if (!qword_1EBC9AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB28);
  }

  return result;
}

unint64_t sub_1BBBD1A60()
{
  result = qword_1EBC9AB30;
  if (!qword_1EBC9AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB30);
  }

  return result;
}

unint64_t sub_1BBBD1AB8()
{
  result = qword_1EBC9AB38;
  if (!qword_1EBC9AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB38);
  }

  return result;
}

uint64_t AlarmManager.AlarmError.hashValue.getter()
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](0);
  return sub_1BBBF5884();
}

AlarmKit::AlarmManager::AuthorizationState __swiftcall AlarmManager.AuthorizationState.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 3)
  {
    sub_1BBBF55B4();

    v2 = sub_1BBBF5794();
    MEMORY[0x1BFB17930](v2);

    LOBYTE(rawValue) = sub_1BBBF55E4();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t sub_1BBBD1C74(uint64_t a1)
{
  v2 = sub_1BBBD22A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD1CB0(uint64_t a1)
{
  v2 = sub_1BBBD22A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBD1CEC()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

uint64_t sub_1BBBD1D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBD7F7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBD1D7C(uint64_t a1)
{
  v2 = sub_1BBBD2250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD1DB8(uint64_t a1)
{
  v2 = sub_1BBBD2250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBD1DF4(uint64_t a1)
{
  v2 = sub_1BBBD22F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD1E30(uint64_t a1)
{
  v2 = sub_1BBBD22F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBD1E6C(uint64_t a1)
{
  v2 = sub_1BBBD234C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBD1EA8(uint64_t a1)
{
  v2 = sub_1BBBD234C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmManager.AuthorizationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB40, &qword_1BBBF96E0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB48, &qword_1BBBF96E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB50, &qword_1BBBF96F0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB58, &qword_1BBBF96F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBD2250();
  sub_1BBBF58A4();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBBD22F8();
      v9 = v21;
      sub_1BBBF56F4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBBD22A4();
      v9 = v24;
      sub_1BBBF56F4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBBD234C();
    sub_1BBBF56F4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BBBD2250()
{
  result = qword_1EBC9AB60;
  if (!qword_1EBC9AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB60);
  }

  return result;
}

unint64_t sub_1BBBD22A4()
{
  result = qword_1EBC9AB68;
  if (!qword_1EBC9AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB68);
  }

  return result;
}

unint64_t sub_1BBBD22F8()
{
  result = qword_1EBC9AB70;
  if (!qword_1EBC9AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB70);
  }

  return result;
}

unint64_t sub_1BBBD234C()
{
  result = qword_1EBC9AB78;
  if (!qword_1EBC9AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AB78);
  }

  return result;
}

uint64_t AlarmManager.AuthorizationState.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t AlarmManager.AuthorizationState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB80, &qword_1BBBF9700);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB88, &qword_1BBBF9708);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB90, &qword_1BBBF9710);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AB98, &qword_1BBBF9718);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBBD2250();
  v15 = v36;
  sub_1BBBF5894();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBBF56D4();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBBC3250();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBBF55D4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v24 = &type metadata for AlarmManager.AuthorizationState;
      sub_1BBBF5644();
      sub_1BBBF55C4();
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
          sub_1BBBD22F8();
          sub_1BBBF5634();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBBD22A4();
          v26 = v17;
          sub_1BBBF5634();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBBD234C();
        sub_1BBBF5634();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t AlarmManager.AlarmConfiguration.init(countdownDuration:schedule:attributes:stopIntent:secondaryIntent:sound:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  v14 = *(a1 + 25);
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  *(a9 + 24) = 256;
  v15 = type metadata accessor for AlarmManager.AlarmConfiguration(0, a7, a8, a4);
  v16 = v15[9];
  v17 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = a9 + v15[11];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v19 = a9 + v15[12];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *a9 = v27;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 25) = v14;
  sub_1BBBC1754(a2, a9 + v16, &qword_1EBC9A900, &qword_1BBBF7EE0);
  v20 = v15[10];
  v22 = type metadata accessor for AlarmAttributes(0, a7, a8, v21);
  (*(*(v22 - 8) + 32))(a9 + v20, a3, v22);
  sub_1BBBC1754(a4, v18, &qword_1EBC9ABA0, &unk_1BBBF9720);
  sub_1BBBC1754(a5, v19, &qword_1EBC9ABA0, &unk_1BBBF9720);
  v23 = v15[13];
  v24 = sub_1BBBF52D4();
  v25 = *(*(v24 - 8) + 32);

  return v25(a9 + v23, a6, v24);
}

uint64_t static AlarmManager.AlarmConfiguration.timer(duration:attributes:stopIntent:secondaryIntent:sound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, unint64_t a8@<D0>)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a7;
  v12 = sub_1BBBF52D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlarmAttributes(0, a5, a6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v29 - v22;
  v24 = *(a1 + *(type metadata accessor for AlarmPresentation.Alert(0) + 24));
  if (v24 == 2 || (v24 & 1) != 0)
  {
    v25 = 1;
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = a8;
  }

  v36 = a8;
  v37 = v26;
  v38 = v25;
  v39 = 0;
  v27 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  (*(v18 + 16))(v20, a1, v17);
  sub_1BBBC16A4(v30, v35, &qword_1EBC9ABA0, &unk_1BBBF9720);
  sub_1BBBC16A4(v31, v34, &qword_1EBC9ABA0, &unk_1BBBF9720);
  (*(v13 + 16))(v15, v32, v12);
  return AlarmManager.AlarmConfiguration.init(countdownDuration:schedule:attributes:stopIntent:secondaryIntent:sound:)(&v36, v23, v20, v35, v34, v15, a5, a6, v33);
}

uint64_t static AlarmManager.AlarmConfiguration.alarm(schedule:attributes:stopIntent:secondaryIntent:sound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v28 = a4;
  v29 = a5;
  v24 = a2;
  v25 = a3;
  v30 = a8;
  v11 = sub_1BBBF52D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AlarmAttributes(0, a6, a7, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v24 - v21;
  v33 = 0uLL;
  v34 = 0;
  v35 = 256;
  sub_1BBBC16A4(a1, &v24 - v21, &qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(v17 + 16))(v19, v24, v16);
  sub_1BBBC16A4(v25, v32, &qword_1EBC9ABA0, &unk_1BBBF9720);
  sub_1BBBC16A4(v28, v31, &qword_1EBC9ABA0, &unk_1BBBF9720);
  (*(v12 + 16))(v14, v29, v11);
  return AlarmManager.AlarmConfiguration.init(countdownDuration:schedule:attributes:stopIntent:secondaryIntent:sound:)(&v33, v22, v19, v32, v31, v14, v26, v27, v30);
}

id sub_1BBBD30E8()
{
  type metadata accessor for AlarmManager();
  v0 = swift_allocObject();
  type metadata accessor for AlarmClient();
  v1 = swift_allocObject();
  if (qword_1EDD45708 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  v2 = qword_1EDD45710;
  *(v1 + 16) = qword_1EDD45710;
  *(v0 + 16) = v1;
  type metadata accessor for AuthorizationClient();
  v3 = swift_allocObject();
  v4 = qword_1EDD45718;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDD45720;
  *(v3 + 16) = qword_1EDD45720;
  *(v0 + 24) = v3;
  qword_1EDD458D8 = v0;

  return v6;
}

uint64_t static AlarmManager.shared.getter()
{
  if (qword_1EDD458D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BBBD3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = type metadata accessor for AlarmAttributes(0, a4, a5, a4);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v8 = sub_1BBBF5284();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  type metadata accessor for AlarmRequest(0);
  v6[34] = swift_task_alloc();
  v9 = sub_1BBBF52D4();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v10 = sub_1BBBF5214();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v11 = sub_1BBBF52F4();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBBD3524, 0, 0);
}

uint64_t sub_1BBBD3524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = v4;
  v5 = *(v4 + 384);
  v6 = *(v4 + 192);
  v7 = type metadata accessor for AlarmManager.AlarmConfiguration(0, *(v4 + 200), *(v4 + 208), a4);
  v58 = v7[9];
  sub_1BBBC16A4(v6 + v58, v5, &qword_1EBC9A900, &qword_1BBBF7EE0);
  v8 = type metadata accessor for Alarm.Schedule(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v5, 1, v8);
  v11 = sub_1BBBC22E0(v5, &qword_1EBC9A900, &qword_1BBBF7EE0);
  if (v10 == 1 && (*(*(v4 + 192) + 25) & 1) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = *(v4 + 376);
  sub_1BBBC16A4(v6 + v58, v19, &qword_1EBC9A900, &qword_1BBBF7EE0);
  v20 = v9(v19, 1, v8);
  v11 = sub_1BBBC22E0(v19, &qword_1EBC9A900, &qword_1BBBF7EE0);
  v21 = *(v4 + 192);
  if (v20 == 1 && (*(v21 + 25) & 1) == 0)
  {
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (*(v21 + 8))
    {
      if ((*(v21 + 24) & 1) == 0)
      {
LABEL_10:
        if (v22 > 0.0)
        {
          goto LABEL_11;
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    if (*v21 <= 0.0)
    {
LABEL_30:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (v23)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v25 = *(v4 + 288);
  v24 = *(v4 + 296);
  v26 = *(v4 + 280);
  v55 = v7[10];
  (*(*(v4 + 312) + 16))(*(v4 + 328), v21 + v55, *(v4 + 304));
  sub_1BBBF5204();
  (*(v25 + 16))(v24, v21 + v7[13], v26);
  sub_1BBBF52E4();
  sub_1BBBC16A4(v21 + v7[11], v4 + 16, &qword_1EBC9ABA0, &unk_1BBBF9720);
  if (!*(v4 + 40))
  {
    sub_1BBBC22E0(v4 + 16, &qword_1EBC9ABA0, &unk_1BBBF9720);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1BBBF5144();
  __swift_destroy_boxed_opaque_existential_1((v4 + 16));
  if (!*(v4 + 120))
  {
LABEL_17:
    sub_1BBBC22E0(v4 + 96, &qword_1EBC9B280, &qword_1BBBF9730);
    v28 = 0;
    goto LABEL_18;
  }

  sub_1BBBD40AC();
  v27 = swift_dynamicCast();
  v28 = *(v4 + 168);
  if (!v27)
  {
    v28 = 0;
  }

LABEL_18:
  v54 = v28;
  *(v4 + 392) = v28;
  sub_1BBBC16A4(*(v4 + 192) + v7[12], v4 + 56, &qword_1EBC9ABA0, &unk_1BBBF9720);
  v29 = *(v4 + 80);
  v56 = v21;
  v57 = v6;
  if (!v29)
  {
    sub_1BBBC22E0(v4 + 56, &qword_1EBC9ABA0, &unk_1BBBF9720);
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 56), v29);
  sub_1BBBF5144();
  __swift_destroy_boxed_opaque_existential_1((v4 + 56));
  if (!*(v4 + 152))
  {
LABEL_24:
    sub_1BBBC22E0(v4 + 128, &qword_1EBC9B280, &qword_1BBBF9730);
    v30 = 0;
    goto LABEL_25;
  }

  sub_1BBBD40AC();
  if (swift_dynamicCast())
  {
    v30 = *(v4 + 160);
  }

  else
  {
    v30 = 0;
  }

LABEL_25:
  *(v4 + 400) = v30;
  v31 = *(v4 + 368);
  v33 = *(v4 + 344);
  v32 = *(v4 + 352);
  v49 = *(v4 + 336);
  v50 = *(v4 + 360);
  v34 = *(v4 + 264);
  v35 = *(v4 + 232);
  v36 = *(v4 + 240);
  v37 = *(v4 + 224);
  v51 = *(v4 + 208);
  v52 = *(v4 + 200);
  v53 = *(v4 + 272);
  v38 = *(v4 + 192);
  (*(*(v4 + 256) + 16))(v34, *(v4 + 184), *(v4 + 248));
  v39 = *(v38 + 2);
  v40 = *(v38 + 24);
  v41 = *(v38 + 25);
  v59 = *v38;
  v60 = v39;
  v61 = v40;
  v62 = v41;
  sub_1BBBC16A4(v57 + v58, v31, &qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(v35 + 16))(v36, v56 + v55, v37);
  (*(v33 + 16))(v32, v50, v49);
  v42 = v30;
  v43 = v54;
  AlarmRequest.init<A>(id:countdownDuration:schedule:attributes:stopAction:secondaryAction:alertConfiguration:)(v34, &v59, v31, v36, v54, v30, v32, v52, v53, v51);
  v44 = *(v4 + 272);
  v45 = *(v4 + 216);
  v46 = swift_task_alloc();
  *(v4 + 408) = v46;
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  v47 = swift_task_alloc();
  *(v4 + 416) = v47;
  v18 = type metadata accessor for Alarm(0);
  *v47 = v4;
  v47[1] = sub_1BBBD3B98;
  v11 = *(v4 + 176);
  v16 = sub_1BBBD40A4;
  v15 = 0x80000001BBC00E50;
  v12 = 0;
  v13 = 0;
  v14 = 0xD00000000000001BLL;
  v17 = v46;

  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1BBBD3B98()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1BBBD3E0C;
  }

  else
  {
    v2 = sub_1BBBD3CCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BBBD3CCC()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 336);
  v5 = *(v0 + 272);

  (*(v3 + 8))(v2, v4);
  sub_1BBBD80A0(v5, type metadata accessor for AlarmRequest);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1BBBD3E0C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 272);

  (*(v4 + 8))(v2, v3);
  sub_1BBBD80A0(v5, type metadata accessor for AlarmRequest);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1BBBD3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD68, &qword_1BBBF9E88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_1BBBD8B38(a3, sub_1BBBD822C, v10);
}

unint64_t sub_1BBBD40AC()
{
  result = qword_1EBC9ABA8;
  if (!qword_1EBC9ABA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC9ABA8);
  }

  return result;
}

uint64_t sub_1BBBD40F8(uint64_t a1)
{
  v2 = type metadata accessor for Alarm(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD70, &qword_1BBBF9E90);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v12 - v9);
  sub_1BBBC16A4(a1, v12 - v9, &qword_1EBC9AD70, &qword_1BBBF9E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD68, &qword_1BBBF9E88);
    return sub_1BBBF5444();
  }

  else
  {
    sub_1BBBD82A8(v10, v7);
    sub_1BBBD830C(v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD68, &qword_1BBBF9E88);
    sub_1BBBF5454();
    return sub_1BBBD80A0(v7, type metadata accessor for Alarm);
  }
}

uint64_t sub_1BBBD4414()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABB8, &unk_1BBBF9740);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABB0, &qword_1BBBF9738);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BBBF54B4();
}

uint64_t sub_1BBBD45B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BBBD45D8, 0, 0);
}

uint64_t sub_1BBBD45D8()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BBBD46AC;
  v2 = v0[2];
  v3 = v0[3];

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000016, 0x80000001BBC00E70, sub_1BBBD61D8, v3, &type metadata for AlarmManager.AuthorizationState);
}

uint64_t sub_1BBBD46AC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BBBD47E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BBBD47F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD60, &qword_1BBBF9E80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 24);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = *(v8 + 16);
  v12 = *&v11[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_1BBBD8100;
  v13[4] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BBBD817C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1BBBD8188;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = v11;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBBD4A6C(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD60, &qword_1BBBF9E80);
    return sub_1BBBF5444();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD60, &qword_1BBBF9E80);
    return sub_1BBBF5454();
  }
}

uint64_t sub_1BBBD4AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABC0, &qword_1BBBF9750);
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x1E69E8650]);
  return sub_1BBBF54B4();
}

uint64_t AlarmManager.AlarmUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABC8, &qword_1BBBF9758);

  return sub_1BBBF5494();
}

uint64_t AlarmManager.AlarmUpdates.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABD0, &qword_1BBBF9768);
  *v1 = v0;
  v1[1] = sub_1BBBD4CE0;

  return MEMORY[0x1EEE6D9D0](v0 + 16, v2);
}

uint64_t sub_1BBBD4CE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BBBD4DDC, 0, 0);
}

uint64_t sub_1BBBD4DF4(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABD0, &qword_1BBBF9768);
  *v2 = v1;
  v2[1] = sub_1BBBD4EA8;

  return MEMORY[0x1EEE6D9D0](v1 + 16, v3);
}

uint64_t sub_1BBBD4EA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BBBD4FA4, 0, 0);
}

uint64_t sub_1BBBD4FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BBBD5080;

  return sub_1BBBD51A4(a2, a3);
}

uint64_t sub_1BBBD5080(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1BBBD51A4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for AlarmManager.AlarmUpdates.Iterator(0);
  v4 = sub_1BBBD64B0(&qword_1EBC9AC00, type metadata accessor for AlarmManager.AlarmUpdates.Iterator, &protocol conformance descriptor for AlarmManager.AlarmUpdates.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1BBBD5294;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t sub_1BBBD5294()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1BBBF5434();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1BBBD5440;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1BBBF5434();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1BBBD5424;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1BBBD5440()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD58, &qword_1BBBF9E70);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t AlarmManager.AlarmAuthorizationStateUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABD8, &qword_1BBBF9770);

  return sub_1BBBF5494();
}

uint64_t AlarmManager.AlarmAuthorizationStateUpdates.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABE0, &unk_1BBBF9780);
  *v3 = v1;
  v3[1] = sub_1BBBD5614;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1BBBD5614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BBBD5708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABE0, &unk_1BBBF9780);
  *v3 = v1;
  v3[1] = sub_1BBBD57C4;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1BBBD57C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BBBD58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1BBBD5974;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1BBBD5974()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1BBBF5434();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1BBBD5B1C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1BBBF5434();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1BBBD5B04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1BBBD5B1C()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD58, &qword_1BBBF9E70);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1BBBD5BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1BBBF5494();
  return sub_1BBBD80A0(v5, a5);
}

uint64_t AlarmManager.deinit()
{

  return v0;
}

uint64_t AlarmManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BBBD5E84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_1BBBF5534();
  if (!v3)
  {
    return v5;
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmManager.supportsAlarmKit(bundleID:)(Swift::String bundleID)
{
  sub_1BBBF5534();
  if (!v1)
  {
    v2 = v4;
  }

  return v2 & 1;
}

unint64_t sub_1BBBD6348()
{
  result = qword_1EBC9ABF0;
  if (!qword_1EBC9ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9ABF0);
  }

  return result;
}

unint64_t sub_1BBBD63A0()
{
  result = qword_1EBC9ABF8;
  if (!qword_1EBC9ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9ABF8);
  }

  return result;
}

uint64_t sub_1BBBD64B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of AlarmManager.schedule<A>(id:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 104) + **(*v5 + 104));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1BBBD8388;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AlarmManager.requestAuthorization()(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BBBD5614;

  return v6(a1);
}

void sub_1BBBD69B0(uint64_t a1)
{
  sub_1BBBD7BD4(319, &qword_1EDD45D28, &type metadata for Alarm.CountdownDuration, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1BBBCF704(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for AlarmAttributes(319, *(a1 + 16), *(a1 + 24), v3);
      if (v5 <= 0x3F)
      {
        sub_1BBBD7960(319, &qword_1EBC9AC90, &qword_1EBC9AC98, "20", MEMORY[0x1E69E6720]);
        if (v6 <= 0x3F)
        {
          sub_1BBBF52D4();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BBBD6AD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1BBBF5254() - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v70 = v6;
  v7 = *(sub_1BBBF5214() - 8);
  v72 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v68 = *(v7 + 84);
  if (v9 - 1 > v8)
  {
    v8 = v9 - 1;
  }

  v11 = v8 - 1;
  v65 = v8 - 1;
  v66 = v8;
  if (v8 - 1 < v8)
  {
    v11 = v8;
  }

  v64 = *(a3 + 16);
  v12 = *(v64 - 8);
  if (v10 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v69 = v13;
  v67 = v15;
  if (v15 <= v13)
  {
    v15 = v13;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(sub_1BBBF52D4() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v19 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = *(v17 + 84);
  }

  v21 = *(v12 + 80);
  v22 = *(v7 + 64);
  v23 = *(v17 + 80);
  v24 = *(v17 + 64);
  if (v14)
  {
    v25 = *(v12 + 64);
  }

  else
  {
    v25 = *(v12 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(v5 + 80) & 0xF8;
  v27 = v26 | 7;
  v28 = v70 + 1;
  v29 = *(v7 + 80) & 0xF8 | 7;
  v30 = v21 | v29;
  v31 = v22 + v29;
  v32 = v22 + 7;
  v33 = ((v22 + v29) & ~v29) + ((((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = v33 + 16;
  v35 = v33 + 17;
  v36 = (v33 + 17 + v29) & ~v29;
  v37 = v33 + 16 + v29;
  v38 = ((v37 + v36) & ~v29) + v34;
  v39 = v25 + 7;
  v40 = ((v39 + ((v38 + v21) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = v23 + 40;
  if (a2 <= v20)
  {
    goto LABEL_49;
  }

  v42 = ((v41 + ((v40 + ((v30 + v28 + ((v26 + 33) & ~v27)) & ~v30) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v24;
  v43 = 8 * v42;
  if (v42 > 3)
  {
    goto LABEL_29;
  }

  v45 = ((a2 - v20 + ~(-1 << v43)) >> v43) + 1;
  if (HIWORD(v45))
  {
    v44 = *(a1 + v42);
    if (!v44)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  if (v45 > 0xFF)
  {
    v44 = *(a1 + v42);
    if (!*(a1 + v42))
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  if (v45 >= 2)
  {
LABEL_29:
    v44 = *(a1 + v42);
    if (!*(a1 + v42))
    {
      goto LABEL_49;
    }

LABEL_36:
    v46 = (v44 - 1) << v43;
    if (v42 > 3)
    {
      v46 = 0;
    }

    if (v42)
    {
      if (v42 <= 3)
      {
        v47 = v42;
      }

      else
      {
        v47 = 4;
      }

      if (v47 > 2)
      {
        if (v47 == 3)
        {
          v48 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v48 = *a1;
        }
      }

      else if (v47 == 1)
      {
        v48 = *a1;
      }

      else
      {
        v48 = *a1;
      }
    }

    else
    {
      v48 = 0;
    }

    return v20 + (v48 | v46) + 1;
  }

LABEL_49:
  v49 = (((a1 + v27 + 26) & ~v27) + v28 + v30) & ~v30;
  if (v16 < v19)
  {
    v50 = *(v18 + 48);
    v51 = (v41 + ((((v40 + v49) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v23;

    return v50(v51);
  }

  if (v69 != v16)
  {
    v56 = (v49 + v21 + v38) & ~v21;
    if (v67 != v16)
    {
      v59 = *((v39 + v56) & 0xFFFFFFFFFFFFFFF8);
      if (v59 >= 0xFFFFFFFF)
      {
        LODWORD(v59) = -1;
      }

      return (v59 + 1);
    }

    if (v14 >= 2)
    {
      v61 = (*(v12 + 48))(v56, v14, v64);
      goto LABEL_87;
    }

    return 0;
  }

  v53 = ~v29;
  if (v66 != v69)
  {
    v54 = (v49 + v29 + v35) & v53;
    if (v65 == v69)
    {
      if (v68 < v10)
      {
        v57 = (v31 + v54) & v53;
        if (v68 < 0x7FFFFFFF)
        {
          v63 = *((v32 + v57) & 0xFFFFFFFFFFFFFFF8);
          if (v63 >= 0xFFFFFFFF)
          {
            LODWORD(v63) = -1;
          }

          v58 = v63 + 1;
        }

        else
        {
          v58 = (*(v72 + 48))(v57);
        }

        if (v58 >= 2)
        {
          v61 = v58 - 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_87;
      }
    }

    else
    {
      v54 = (v37 + v54) & v53;
      if (v68 < 0x7FFFFFFF)
      {
        v55 = v32 + ((v31 + v54) & v53);
        goto LABEL_78;
      }
    }

    goto LABEL_76;
  }

  if (v68 < v10)
  {
    v54 = (v31 + v49) & v53;
    if (v68 < 0x7FFFFFFF)
    {
      v55 = v32 + v54;
LABEL_78:
      v62 = *(v55 & 0xFFFFFFFFFFFFFFF8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      v61 = v62 + 1;
      goto LABEL_87;
    }

LABEL_76:
    v61 = (*(v72 + 48))(v54);
LABEL_87:
    if (v61 >= 2)
    {
      return v61 - 1;
    }

    else
    {
      return 0;
    }
  }

  v60 = *(v72 + 48);

  return v60(v49);
}

void sub_1BBBD70BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1BBBF5254() - 8);
  if (*(v5 + 64) <= 0x18uLL)
  {
    v6 = 24;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v72 = sub_1BBBF5214();
  v7 = *(v72 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v74 = *(v7 + 84);
  if (v9 - 1 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = v11 - 1;
  v73 = v9;
  if (v11 - 1 < v11)
  {
    v12 = v11;
  }

  v71 = *(a4 + 16);
  v13 = *(v71 - 8);
  if (v10 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9 - 1;
  }

  v79 = *(v71 - 8);
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v75 = v16;
  v76 = v14;
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v13 + 84);
  v19 = 0;
  v20 = *(sub_1BBBF52D4() - 8);
  v21 = v20;
  v22 = *(v20 + 84);
  if (v22 <= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = *(v20 + 84);
  }

  v24 = *(v5 + 80) & 0xF8;
  v25 = *(v13 + 80);
  v26 = *(v7 + 64);
  v27 = *(v13 + 64);
  v28 = *(v20 + 80);
  v29 = *(v20 + 64);
  v30 = v24 | 7;
  v31 = v6 + 1;
  v32 = *(v7 + 80) & 0xF8 | 7;
  v33 = v25 | v32;
  v34 = ((v25 | v32) + v6 + 1 + ((v24 + 33) & ~(v24 | 7))) & ~(v25 | v32);
  v35 = v26 + v32;
  v36 = v26 + 7;
  v37 = ((((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v38 = v37 + ((v26 + v32) & ~v32);
  v40 = ((v38 + v32 + (((v38 | 1) + v32) & ~v32)) & ~v32) + v38;
  if (!v18)
  {
    ++v27;
  }

  v41 = ((v40 + v25) & ~v25) + v27;
  v42 = ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = ((v28 + 40 + ((v42 + v34 + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v28) + v29;
  if (a3 > v23)
  {
    if (v43 <= 3)
    {
      v44 = ((a3 - v23 + ~(-1 << (8 * v43))) >> (8 * v43)) + 1;
      if (HIWORD(v44))
      {
        v19 = 4;
      }

      else
      {
        if (v44 < 0x100)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        if (v44 >= 2)
        {
          v19 = v45;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v23 < a2)
  {
    v46 = ~v23 + a2;
    if (v43 >= 4)
    {
      bzero(a1, v43);
      *a1 = v46;
      v47 = 1;
      if (v19 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_73;
    }

    v47 = (v46 >> (8 * v43)) + 1;
    if (v43)
    {
      v48 = v46 & ~(-1 << (8 * v43));
      bzero(a1, v43);
      if (v43 != 3)
      {
        if (v43 == 2)
        {
          *a1 = v48;
          if (v19 > 1)
          {
            goto LABEL_41;
          }
        }

        else
        {
          *a1 = v46;
          if (v19 > 1)
          {
LABEL_41:
            if (v19 == 2)
            {
              *&a1[v43] = v47;
            }

            else
            {
              *&a1[v43] = v47;
            }

            return;
          }
        }

LABEL_73:
        if (v19)
        {
          a1[v43] = v47;
        }

        return;
      }

      *a1 = v48;
      a1[2] = BYTE2(v48);
    }

    if (v19 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_73;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v43] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *&a1[v43] = 0;
  }

  else if (v19)
  {
    a1[v43] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  v49 = ~v30;
  v50 = &a1[v30 + 26];
  v51 = (((v50 & v49) + v31 + v33) & ~v33);
  if (v17 < v22)
  {
    v52 = *(v21 + 56);

    v52((v28 + 40 + ((((v51 + v42) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v28, a2);
    return;
  }

  if (v17 < a2)
  {
    v53 = (v41 + 7) & 0xFFFFFFF8;
    if (v53 != -8)
    {
      bzero((((v50 & v49) + v31 + v33) & ~v33), (v53 + 8));
      *v51 = ~v17 + a2;
    }

    return;
  }

  if (v76 != v17)
  {
    v58 = ((v51 + v25 + v40) & ~v25);
    if (v75 != v17)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v66 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v66 = a2 - 1;
      }

      *((v58 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) = v66;
      return;
    }

    if (v18 < 2)
    {
      return;
    }

    v59 = *(v79 + 56);
    v60 = a2 + 1;
    v55 = v18;
    v61 = v71;
    goto LABEL_93;
  }

  v54 = ~v32;
  if (v11 == v76)
  {
    v55 = v74;
    if (v74 >= v10)
    {
      v59 = *(v7 + 56);
      v58 = (((v50 & v49) + v31 + v33) & ~v33);
      v60 = a2;
LABEL_92:
      v61 = v72;
LABEL_93:

      v59(v58, v60, v55, v61);
      return;
    }

    v56 = ((v51 + v35) & v54);
    if (a2 > v10)
    {
      if (((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
      {
        return;
      }

      v57 = a2 - v73;
LABEL_109:
      v68 = v56;
LABEL_113:
      bzero(v68, v37);
      *v56 = v57;
      return;
    }

    v57 = a2 - v73;
    if (a2 < v73)
    {
      v60 = a2 + 1;
      if (v74 < 0x7FFFFFFF)
      {
        v67 = v56 + v36;
        goto LABEL_115;
      }

LABEL_107:
      v59 = *(v7 + 56);
      v58 = v56;
      goto LABEL_92;
    }

LABEL_108:
    if (((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      return;
    }

    goto LABEL_109;
  }

  v39 = v38 | 1;
  v62 = ((v51 + v32 + (v38 | 1)) & v54);
  if (v11 - 1 != v76)
  {
    v56 = ((v62 + v38 + v32) & v54);
    if (a2 <= v10)
    {
      v57 = a2 - v73;
      if (a2 < v73)
      {
        v60 = a2 + 1;
        v55 = v74;
        if (v74 < 0x7FFFFFFF)
        {
          v67 = v36 + ((v56 + v35) & v54);
LABEL_115:
          v69 = (v67 & 0xFFFFFFFFFFFFFFF8);
          if ((v60 & 0x80000000) != 0)
          {
            *v69 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v69 = a2;
          }

          return;
        }

        goto LABEL_107;
      }

      if (!v38)
      {
        return;
      }
    }

    else
    {
      if (!v38)
      {
        return;
      }

      v57 = a2 - v73;
    }

    v68 = ((v62 + v38 + v32) & v54);
    v37 += (v26 + v32) & ~v32;
    goto LABEL_113;
  }

  v63 = a2 >= v11;
  v64 = a2 - v11;
  if (v63)
  {
    if (v38)
    {
      bzero(((v51 + v32 + v39) & v54), v38);
      *v62 = v64;
    }
  }

  else
  {
    v65 = a2 + 1;
    v55 = v74;
    if (v74 >= v10)
    {
      v59 = *(v7 + 56);
      v58 = ((v51 + v32 + v39) & v54);
      v60 = a2 + 1;
      goto LABEL_92;
    }

    v56 = ((v62 + v35) & v54);
    v57 = a2 - v10;
    if (a2 >= v10)
    {
      goto LABEL_108;
    }

    if (a2 + 2 > v73)
    {
      if (((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
      {
        return;
      }

      v57 = v65 - v73;
      goto LABEL_109;
    }

    if (v74 >= 0x7FFFFFFF)
    {
      v59 = *(v7 + 56);
      v58 = ((v62 + v35) & v54);
      v60 = a2 + 2;
      goto LABEL_92;
    }

    v70 = ((v56 + v36) & 0xFFFFFFFFFFFFFFF8);
    if (((a2 + 2) & 0x80000000) != 0)
    {
      v65 = a2 - 2147483646;
    }

    *v70 = v65;
  }
}

void sub_1BBBD78E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1BBBD7960(319, a4, &qword_1EBC9ABB0, &qword_1BBBF9738, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BBBD7960(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BBBD7A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1BBBD7BD4(319, a4, &type metadata for AlarmManager.AuthorizationState, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1BBBD7BD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BBBD7C68()
{
  result = qword_1EBC9AD10;
  if (!qword_1EBC9AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD10);
  }

  return result;
}

unint64_t sub_1BBBD7CC0()
{
  result = qword_1EBC9AD18;
  if (!qword_1EBC9AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD18);
  }

  return result;
}

unint64_t sub_1BBBD7D18()
{
  result = qword_1EBC9AD20;
  if (!qword_1EBC9AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD20);
  }

  return result;
}

unint64_t sub_1BBBD7D70()
{
  result = qword_1EBC9AD28;
  if (!qword_1EBC9AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD28);
  }

  return result;
}

unint64_t sub_1BBBD7DC8()
{
  result = qword_1EBC9AD30;
  if (!qword_1EBC9AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD30);
  }

  return result;
}

unint64_t sub_1BBBD7E20()
{
  result = qword_1EBC9AD38;
  if (!qword_1EBC9AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD38);
  }

  return result;
}

unint64_t sub_1BBBD7E78()
{
  result = qword_1EBC9AD40;
  if (!qword_1EBC9AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD40);
  }

  return result;
}

unint64_t sub_1BBBD7ED0()
{
  result = qword_1EBC9AD48;
  if (!qword_1EBC9AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD48);
  }

  return result;
}

unint64_t sub_1BBBD7F28()
{
  result = qword_1EBC9AD50;
  if (!qword_1EBC9AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AD50);
  }

  return result;
}

uint64_t sub_1BBBD7F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746544746F6ELL && a2 == 0xED000064656E696DLL;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBD80A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBBD8100(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD60, &qword_1BBBF9E80);

  return sub_1BBBD4A6C(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1BBBD822C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD68, &qword_1BBBF9E88);

  return sub_1BBBD40F8(a1);
}

uint64_t sub_1BBBD82A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBD830C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AlarmClient.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1EDD45708 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45710;
  *(v0 + 16) = qword_1EDD45710;
  v2 = v1;
  return v0;
}

uint64_t sub_1BBBD8400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE30, &qword_1BBBF9EF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - v4;
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if (qword_1EDD45708 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDD45710;
  (*(v3 + 16))(v5, a1, v2);
  v13 = *(v3 + 80);
  v24[1] = a1;
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v16 = v2;
  v24[0] = v2;
  v17 = v15;
  v18 = (*(v3 + 32))(v15 + v14, v5, v16);
  MEMORY[0x1EEE9AC00](v18);
  v24[-4] = v12;
  v24[-3] = sub_1BBBDD84C;
  v24[-2] = v17;
  v19 = v12;
  sub_1BBBF5534();

  v20 = v25;
  (*(v7 + 16))(v25, v11, v6);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v21, v20, v6);
  sub_1BBBF5474();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1BBBD8730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE38, &qword_1BBBF9F00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE30, &qword_1BBBF9EF8);
  sub_1BBBF5484();
  return (*(v3 + 8))(v5, v2);
}

void sub_1BBBD8834(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD45708 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD45710;
  sub_1BBBD88C0(a2);
}

uint64_t sub_1BBBD88C0(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *&v1[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BBBDD958;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1BBBD8188;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor_62;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t AlarmClient.init()()
{
  if (qword_1EDD45708 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45710;
  *(v0 + 16) = qword_1EDD45710;
  v2 = v1;
  return v0;
}

uint64_t sub_1BBBD8B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AlarmRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v3[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue];
  sub_1BBBDDCF8(a1, v10, type metadata accessor for AlarmRequest);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1BBBDDC90(v10, v14 + v12, type metadata accessor for AlarmRequest);
  *(v14 + v13) = v3;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1BBBDDA18;
  *(v16 + 24) = v14;
  aBlock[4] = sub_1BBBDDDF0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor_81;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  dispatch_sync(v11, v17);
  _Block_release(v17);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t AlarmClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1BBBD8DE0()
{
  result = [objc_allocWithZone(type metadata accessor for Singleton()) init];
  qword_1EDD45710 = result;
  return result;
}

id sub_1BBBD8E64()
{
  v16 = sub_1BBBF5524();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v15 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BBBF5514();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BBBF5384();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection;
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_serverStartupToken] = -1;
  v13 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue;
  v5 = sub_1BBBDD660();
  v12[3] = "";
  v12[4] = v5;
  sub_1BBBF5374();
  v18 = MEMORY[0x1E69E7CC0];
  v12[2] = sub_1BBBDDABC(&qword_1EDD456F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v12[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBDD6AC(&qword_1EDD45700, &unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBF5594();
  v6 = *MEMORY[0x1E69E8098];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v12[0] = v7;
  v8(v15, v6, v16);
  *&v0[v13] = sub_1BBBF5554();
  v13 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_calloutQueue;
  sub_1BBBF5374();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BBBF5594();
  v8(v15, v6, v16);
  *&v0[v13] = sub_1BBBF5554();
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_alarmObservers] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates] = 0;
  v9 = *&v0[v14];
  *&v0[v14] = 0;

  v10 = type metadata accessor for Singleton();
  v17.receiver = v0;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BBBD9224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Singleton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BBBD92FC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BBBF5354();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBBF5384();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBBDDCF8(a1, v16, type metadata accessor for AlarmRequest);
  v17 = sub_1BBBD98EC();
  if (v17)
  {
    v18 = v17;
    sub_1BBBF51D4();
    swift_allocObject();
    sub_1BBBF51C4();
    sub_1BBBDDABC(&qword_1EBC9AE48, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
    v19 = sub_1BBBF51B4();
    v21 = v20;
    v22 = sub_1BBBF5224();
    sub_1BBBBBE78(v19, v21);

    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a4;
    v38 = sub_1BBBDDB04;
    v39 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1BBBDA2A4;
    v37 = &block_descriptor_93;
    v24 = _Block_copy(&aBlock);

    v25 = a2;

    [v18 scheduleWithParameters:v22 completion:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();

    return sub_1BBBDDD60(v16, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm);
  }

  else
  {
    v29 = *&a2[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_calloutQueue];
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v38 = sub_1BBBDDAB4;
    v39 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1BBBE6AD0;
    v37 = &block_descriptor_87;
    v28 = _Block_copy(&aBlock);

    sub_1BBBF5364();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1BBBDDABC(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBF5594();
    MEMORY[0x1BFB17A50](0, v13, v10, v28);
    _Block_release(v28);
    (*(v32 + 8))(v10, v8);
    (*(v30 + 8))(v13, v31);
    sub_1BBBDDD60(v16, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm);
  }
}

uint64_t sub_1BBBD9800(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD70, &qword_1BBBF9E90);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - v3);
  sub_1BBBDD700();
  v5 = swift_allocError();
  *v6 = 3;
  *(v6 + 8) = 0;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_1BBBC22E0(v4, &qword_1EBC9AD70, &qword_1BBBF9E90);
}

uint64_t sub_1BBBD98EC()
{
  v1 = sub_1BBBF5394();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BBBDCCF0();
  v7 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection);
  if (!v7)
  {
    if (qword_1EBC9A560 != -1)
    {
      swift_once();
    }

    v8 = sub_1BBBF5324();
    __swift_project_value_buffer(v8, qword_1EBCA4748);
    v1 = sub_1BBBF5304();
    v9 = sub_1BBBF54E4();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBBB7000, v1, v9, "Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFB18360](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE00, &qword_1BBBF9EF0);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BBBC22E0(v19, &qword_1EBC9B280, &qword_1BBBF9730);
  }

  if (qword_1EBC9A560 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BBBF5324();
  __swift_project_value_buffer(v12, qword_1EBCA4748);
  v13 = sub_1BBBF5304();
  v14 = sub_1BBBF54E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBBB7000, v13, v14, "Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFB18360](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1BBBD9C30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v7 = sub_1BBBF5354();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BBBF5384();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v27 - v16;
  v31 = *(a3 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_calloutQueue);
  sub_1BBBDDB10(a1, &v27 - v16);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1BBBDDB80(v17, v20 + v18, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  v21 = (v20 + v19);
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  v23 = v28;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_1BBBDDBE8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_99;
  v24 = _Block_copy(aBlock);
  v25 = v23;

  sub_1BBBF5364();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1BBBDDABC(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v12, v9, v24);
  _Block_release(v24);
  (*(v33 + 8))(v9, v7);
  (*(v10 + 8))(v12, v32);
}

uint64_t sub_1BBBD9FE0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AD70, &qword_1BBBF9E90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBBDDB10(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BBBC22E0(v12, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    if (a4)
    {
      *v9 = a4;
      swift_storeEnumTagMultiPayload();
      v17 = a4;
    }

    else
    {
      sub_1BBBDD700();
      v19 = swift_allocError();
      *v20 = 3;
      *(v20 + 8) = 0;
      *v9 = v19;
      swift_storeEnumTagMultiPayload();
    }

    a2(v9);
    return sub_1BBBC22E0(v9, &qword_1EBC9AD70, &qword_1BBBF9E90);
  }

  else
  {
    sub_1BBBDDC90(v12, v16, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
    sub_1BBBDDCF8(v16, v9, type metadata accessor for Alarm);
    swift_storeEnumTagMultiPayload();
    a2(v9);
    sub_1BBBC22E0(v9, &qword_1EBC9AD70, &qword_1BBBF9E90);
    return sub_1BBBDDD60(v16, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
  }
}

uint64_t sub_1BBBDA2A4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1BBBE8024(a2, &v14 - v7);
    v10 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1BBBC22E0(v8, &unk_1EBC9AE50, &unk_1BBBFB0A0);
}

uint64_t sub_1BBBDA4A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for AlarmXPCServiceParameters.AlarmID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BBBF5284();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = sub_1BBBD98EC();
  if (!v10)
  {
    sub_1BBBDD700();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0;
    swift_willThrow();
    return sub_1BBBDDD60(v8, type metadata accessor for AlarmXPCServiceParameters.AlarmID);
  }

  v11 = v10;
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBDDABC(&qword_1EBC9AE40, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  v12 = sub_1BBBF51B4();
  if (!v3)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_1BBBF5224();
    sub_1BBBBBE78(v14, v15);

    v21[0] = 0;
    LOBYTE(v14) = [v11 *a3];

    if (v14)
    {
      v17 = v21[0];
    }

    else
    {
      v19 = v21[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BBBDDD60(v8, type metadata accessor for AlarmXPCServiceParameters.AlarmID);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBDA714()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BBBD98EC();
  if (v0)
  {
    v5[0] = 0;
    if ([v0 cancelAllAndReturnError_])
    {
      v1 = v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BBBDD700();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;
    return swift_willThrow();
  }
}

void sub_1BBBDA9E4(SEL *a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a4@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1BBBD98EC();
  if (v8)
  {
    v21[0] = 0;
    v9 = [v8 *a1];
    v10 = v21[0];
    if (v9)
    {
      v11 = v9;
      sub_1BBBF51A4();
      swift_allocObject();
      v12 = v10;
      sub_1BBBF5194();
      v13 = sub_1BBBF5234();
      v15 = v14;
      a2();
      sub_1BBBF5184();
      v16 = v13;
      v17 = v15;
      if (!v4)
      {
        sub_1BBBBBE78(v13, v15);

        v18 = v21[0];
        if (v21[0])
        {
          swift_unknownObjectRelease();

          *a4 = v18;
          return;
        }

        __break(1u);
      }

      sub_1BBBBBE78(v16, v17);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v20 = v21[0];
      sub_1BBBF51F4();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BBBDD700();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1BBBDAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BBBF5284();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = &v12[*(v10 + 20)];
  *v14 = a2;
  *(v14 + 1) = a3;

  v15 = sub_1BBBD98EC();
  if (!v15)
  {
    sub_1BBBDD700();
    swift_allocError();
    *v23 = 3;
    *(v23 + 8) = 0;
    swift_willThrow();
    return sub_1BBBDDD60(v12, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  }

  v16 = v15;
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBDDABC(&qword_1EBC9AE28, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  v17 = sub_1BBBF51B4();
  if (!v5)
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_1BBBF5224();
    sub_1BBBBBE78(v19, v20);

    v26[0] = 0;
    LOBYTE(v19) = [v16 *a5];

    if (v19)
    {
      v22 = v26[0];
    }

    else
    {
      v24 = v26[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BBBDDD60(v12, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBDB000(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBBF5284();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = &v11[*(v9 + 20)];
  *v13 = a2;
  *(v13 + 1) = a3;
  v11[*(v9 + 24)] = a4 & 1;

  v14 = sub_1BBBD98EC();
  if (!v14)
  {
    sub_1BBBDD700();
    swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 0;
    swift_willThrow();
    return sub_1BBBDDD60(v11, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  }

  v15 = v14;
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBDDABC(&qword_1EBC9AE20, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  v16 = sub_1BBBF51B4();
  if (!v4)
  {
    v18 = v16;
    v19 = v17;
    v20 = sub_1BBBF5224();
    sub_1BBBBBE78(v18, v19);

    v25[0] = 0;
    LOBYTE(v19) = [v15 executeIntentWithOwnerIDWithParameters:v20 error:v25];

    if (v19)
    {
      v21 = v25[0];
    }

    else
    {
      v23 = v25[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BBBDDD60(v11, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1BBBDB2A0()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BBBF5394();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue];
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  v8 = sub_1BBBD98EC();
  if (!v8)
  {
    sub_1BBBDD700();
    swift_allocError();
    *v17 = 3;
    *(v17 + 8) = 0;
    swift_willThrow();
    return v0;
  }

  v20[0] = 0;
  v9 = [v8 subscribeToAlarmUpdatesAndReturnError_];
  v0 = v20[0];
  if (!v9)
  {
    v18 = v20[0];
    sub_1BBBF51F4();

    swift_willThrow();
    swift_unknownObjectRelease();
    return v0;
  }

  v10 = v9;
  sub_1BBBF51A4();
  swift_allocObject();
  v11 = v0;
  sub_1BBBF5194();
  v12 = sub_1BBBF5234();
  v14 = v13;
  sub_1BBBDD7A4();
  sub_1BBBF5184();
  v15 = v12;
  v16 = v14;
  if (!v1)
  {
    sub_1BBBBBE78(v12, v14);

    v0 = v20[0];
    if (v20[0])
    {
      swift_unknownObjectRelease();

      return v0;
    }

    __break(1u);
  }

  sub_1BBBBBE78(v15, v16);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBDB53C()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BBBD98EC();
  if (v0)
  {
    v5[0] = 0;
    if ([v0 unsubscribeFromAlarmUpdatesAndReturnError_])
    {
      v1 = v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BBBDD700();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BBBDB62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1BBBF5354();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBBF5384();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBBF5274();
  v15 = swift_allocObject();
  v35 = a2;
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_alarmObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + v16);
  *(a1 + v16) = 0x8000000000000000;
  sub_1BBBED084(sub_1BBBDD9BC, v15, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + v16) = v42;
  swift_endAccess();
  v18 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates;
  v19 = 0x1EBC9A000uLL;
  if (*(a1 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates))
  {
    v40 = v4;
  }

  else
  {
    v20 = sub_1BBBDB2A0();
    if (v4)
    {
      if (qword_1EBC9A560 != -1)
      {
        swift_once();
      }

      v21 = sub_1BBBF5324();
      __swift_project_value_buffer(v21, qword_1EBCA4748);
      v22 = v4;
      v23 = sub_1BBBF5304();
      v24 = sub_1BBBF54D4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        v27 = v4;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_1BBBB7000, v23, v24, "Could not subscribe to alarm updates: %{public}@", v25, 0xCu);
        sub_1BBBC22E0(v26, &qword_1EBC9B2F0, &qword_1BBBFB180);
        v29 = v26;
        v19 = 0x1EBC9A000;
        MEMORY[0x1BFB18360](v29, -1, -1);
        MEMORY[0x1BFB18360](v25, -1, -1);
      }

      else
      {
      }

      v40 = 0;
    }

    else
    {
      v40 = 0;
      *(a1 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms) = v20;

      *(a1 + v18) = 1;
    }
  }

  v30 = *(a1 + *(v19 + 3488));
  v31 = swift_allocObject();
  v31[2] = v35;
  v31[3] = a3;
  v31[4] = v30;
  aBlock[4] = sub_1BBBDD9E8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_71;
  v32 = _Block_copy(aBlock);

  sub_1BBBF5364();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1BBBDDABC(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  v33 = v39;
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v14, v11, v32);
  _Block_release(v32);
  (*(v38 + 8))(v11, v33);
  (*(v36 + 8))(v14, v37);
}

uint64_t sub_1BBBDBB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBBF5284();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  v8 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_alarmObservers;
  swift_beginAccess();
  sub_1BBBE82FC(0, 0, v6);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    sub_1BBBDB53C();
    *(a1 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates) = 0;
    *(a1 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BBBDBDC8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD0, "P\x1B");
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v5;
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD8, &qword_1BBBF9EE8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v43 - v14;
  v15 = *(a1 + 64);
  v43 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v46 = v7 + 16;
  v54 = (v7 + 32);
  v57 = (v4 + 48);
  v58 = (v4 + 56);
  v48 = v7;
  v49 = a1;
  v51 = (v7 + 8);
  v20 = v13;

  v22 = 0;
  v56 = v20;
  v45 = v3;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v23 << 6);
      v29 = v48;
      v28 = v49;
      v30 = v47;
      (*(v48 + 16))(v47, *(v49 + 48) + *(v48 + 72) * v27, v6);
      v31 = *(v3 + 48);
      v32 = *(v29 + 32);
      v59 = *(*(v28 + 56) + 16 * v27);
      v20 = v56;
      v32(v56, v30, v6);
      *(v20 + v31) = v59;
      v33 = *v58;
      (*v58)(v20, 0, 1, v3);

      v25 = v23;
LABEL_13:
      v34 = *v57;
      v35 = 1;
      if ((*v57)(v20, 1, v3) != 1)
      {
        *&v59 = v25;
        v36 = *(v3 + 48);
        v50 = v33;
        v37 = *v54;
        (*v54)(v44, v20, v6);
        v38 = swift_allocObject();
        *(v38 + 16) = *(v56 + v36);
        v39 = &v55[*(v3 + 48)];
        v37();
        v33 = v50;
        v35 = 0;
        *v39 = sub_1BBBDD628;
        v39[1] = v38;
        v25 = v59;
        v20 = v56;
        v3 = v45;
      }

      v40 = v55;
      v33(v55, v35, 1, v3);
      v41 = v40;
      v42 = v53;
      sub_1BBBDDB80(v41, v53, &qword_1EBC9ADD8, &qword_1BBBF9EE8);
      if (v34(v42, 1, v3) == 1)
      {
      }

      (*(v42 + *(v3 + 48)))(v52);

      result = (*v51)(v42, v6);
      v22 = v25;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v33 = *v58;
        (*v58)(v20, 1, 1, v3);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v43 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BBBDC358()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection])
  {
    v8 = sub_1BBBF18D0(0, 0);
    if (v8)
    {
      v9 = *&v0[v7];
      *&v0[v7] = v8;
      v10 = v8;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BBBDD78C;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BBBDD794;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBBF1F18;
      aBlock[3] = &block_descriptor_29;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configureConnection_];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        sub_1BBBDCADC();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1BBBDC5C8(void *a1, uint64_t a2)
{
  v4 = sub_1BBBF53E4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v19 = sub_1BBBDC950;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBE8578;
  v18 = &block_descriptor_38;
  v8 = _Block_copy(&v15);
  v9 = &unk_1F3ABBB50;

  v10 = [v6 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v5 setServer_];
  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1BBBDC9C8;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_41;
  v12 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v12);
  v19 = sub_1BBBDC9D4;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_44;
  v13 = _Block_copy(&v15);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v19 = sub_1BBBDC9E0;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_47;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

id sub_1BBBDC950(void *a1)
{
  [a1 selector];
  if (sub_1BBBF52A4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_1BBBDC9EC(uint64_t a1, const char *a2)
{
  if (qword_1EBC9A560 != -1)
  {
    swift_once();
  }

  v3 = sub_1BBBF5324();
  __swift_project_value_buffer(v3, qword_1EBCA4748);
  oslog = sub_1BBBF5304();
  v4 = sub_1BBBF54C4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBBB7000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFB18360](v5, -1, -1);
  }
}

void sub_1BBBDCADC()
{
  v1 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_serverStartupToken;
  swift_beginAccess();
  if (*(v0 + v1) == -1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BBBDD79C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBBE85CC;
    aBlock[3] = &block_descriptor_35;
    v4 = _Block_copy(aBlock);

    v5 = sub_1BBBF5404();
    swift_beginAccess();
    LODWORD(v2) = notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
    swift_endAccess();
    _Block_release(v4);

    if (v2)
    {
      if (qword_1EBC9A560 != -1)
      {
        swift_once();
      }

      v6 = sub_1BBBF5324();
      __swift_project_value_buffer(v6, qword_1EBCA4748);
      v7 = sub_1BBBF5304();
      v8 = sub_1BBBF54D4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBBB7000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
        MEMORY[0x1BFB18360](v9, -1, -1);
      }
    }
  }
}

void sub_1BBBDCCF0()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1BBBDC358();
  v7 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_connection);
  if (!v7)
  {
    return;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();

    sub_1BBBC22E0(v12, &qword_1EBC9B280, &qword_1BBBF9730);
    return;
  }

  memset(v12, 0, sizeof(v12));
  sub_1BBBC22E0(v12, &qword_1EBC9B280, &qword_1BBBF9730);
  [v1 activate];
  if (qword_1EBC9A560 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = sub_1BBBF5324();
  __swift_project_value_buffer(v8, qword_1EBCA4748);
  v9 = sub_1BBBF5304();
  v10 = sub_1BBBF54F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBBB7000, v9, v10, "Activated connection", v11, 2u);
    MEMORY[0x1BFB18360](v11, -1, -1);
  }
}

void sub_1BBBDCF54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EBC9A560 != -1)
    {
      swift_once();
    }

    v4 = sub_1BBBF5324();
    __swift_project_value_buffer(v4, qword_1EBCA4748);
    v5 = sub_1BBBF5304();
    v6 = sub_1BBBF54F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BBBB7000, v5, v6, "Server has restarted", v7, 2u);
      MEMORY[0x1BFB18360](v7, -1, -1);
    }

    sub_1BBBDCCF0();
    v8 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates;
    if (v3[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_isSubscribedToAlarmUpdates] == 1)
    {
      v9 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_alarmObservers;
      swift_beginAccess();
      if (*(*&v3[v9] + 16))
      {
        *&v3[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms] = sub_1BBBDB2A0();
      }

      else
      {
        v3[v8] = 0;
        *&v3[OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms] = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BBBDD1FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_1BBBF5354();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BBBF5384();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBBF5394();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = *(a2 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue);
  *v14 = v16;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = sub_1BBBF53A4();
  result = (*(v12 + 8))(v14, v11);
  if (v16)
  {
    v19 = OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_alarmObservers;
    swift_beginAccess();
    v20 = *(a2 + v19);
    *(a2 + OBJC_IVAR____TtC8AlarmKitP33_80C642E48E33ABCAAAB14D35FE805C4D9Singleton_queue_observedAlarms) = v15;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v15;
    aBlock[4] = sub_1BBBDD608;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBBE6AD0;
    aBlock[3] = &block_descriptor_0;
    v22 = _Block_copy(aBlock);

    sub_1BBBF5364();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BBBDDABC(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBF5594();
    MEMORY[0x1BFB17A50](0, v10, v7, v22);
    _Block_release(v22);
    (*(v25 + 8))(v7, v5);
    (*(v8 + 8))(v10, v24);

    return (*(v26 + 16))(v26, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BBBDD628(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1BBBDD660()
{
  result = qword_1EDD456E0;
  if (!qword_1EDD456E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD456E0);
  }

  return result;
}

uint64_t sub_1BBBDD6AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BBBDD700()
{
  result = qword_1EBC9ADF0;
  if (!qword_1EBC9ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9ADF0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BBBDD7A4()
{
  result = qword_1EBC9AE10;
  if (!qword_1EBC9AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AE10);
  }

  return result;
}

unint64_t sub_1BBBDD7F8()
{
  result = qword_1EBC9AE18;
  if (!qword_1EBC9AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AE18);
  }

  return result;
}

uint64_t sub_1BBBDD84C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE30, &qword_1BBBF9EF8);

  return sub_1BBBD8730(a1);
}

void sub_1BBBDD8E8(uint64_t a1)
{
  v3 = *(sub_1BBBF5284() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BBBD8834(a1, v4);
}

uint64_t sub_1BBBDD958()
{
  v1 = *(sub_1BBBF5284() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BBBDBB44(v2, v3);
}

uint64_t sub_1BBBDDA18()
{
  v1 = *(type metadata accessor for AlarmRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1BBBD92FC(v0 + v2, v4, v6, v7);
}

uint64_t sub_1BBBDDABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BBBDDB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBDDB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BBBDDBE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  return sub_1BBBD9FE0(v0 + v2, v6, v7, v8);
}

uint64_t sub_1BBBDDC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBDDCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBDDD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AlarmRequest.init<A>(id:countdownDuration:schedule:attributes:stopAction:secondaryAction:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a2[1];
  v37 = *a2;
  v35 = a2[2];
  v33 = *(a2 + 25);
  v34 = *(a2 + 24);
  v14 = type metadata accessor for AlarmRequest(0);
  v15 = a9 + v14[5];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 24) = 256;
  *(v15 + 16) = 0;
  v16 = v14[6];
  v17 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  sub_1BBBF5174();
  swift_allocObject();
  sub_1BBBF5164();
  v19 = type metadata accessor for AlarmAttributes(0, a8, a10, v18);
  swift_getWitnessTable();
  v38 = a4;
  v20 = sub_1BBBF5154();
  if (v10)
  {

    v22 = sub_1BBBF52F4();
    (*(*(v22 - 8) + 8))(a7, v22);
    (*(*(v19 - 8) + 8))(a4, v19);
    sub_1BBBDE1E4(a3);
    v23 = sub_1BBBF5284();
    (*(*(v23 - 8) + 8))(a1, v23);
    return sub_1BBBDE1E4(a9 + v16);
  }

  else
  {
    v25 = v20;
    v26 = v21;
    v31 = v14[8];
    v32 = v14[7];
    swift_getWitnessTable();
    sub_1BBBF52B4();

    (*(*(v19 - 8) + 8))(v38, v19);
    v27 = (a9 + v14[11]);
    *v27 = v25;
    v27[1] = v26;
    v28 = sub_1BBBF5284();
    (*(*(v28 - 8) + 32))(a9, a1, v28);
    sub_1BBBCF1CC(a3, a9 + v16);
    *v15 = v37;
    *(v15 + 8) = v36;
    *(v15 + 16) = v35;
    *(v15 + 24) = v34;
    *(v15 + 25) = v33;
    *(a9 + v32) = a5;
    *(a9 + v31) = a6;
    v29 = v14[9];
    v30 = sub_1BBBF52F4();
    return (*(*(v30 - 8) + 32))(a9 + v29, a7, v30);
  }
}

uint64_t type metadata accessor for AlarmRequest(uint64_t a1)
{
  result = qword_1EBC9AEF8;
  if (!qword_1EBC9AEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBBDE1E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlarmRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlarmRequest.id.setter(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 AlarmRequest.countdownDuration.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AlarmRequest(0) + 20));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  v6 = v3[1].n128_u8[9];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  a1[1].n128_u8[9] = v6;
  return result;
}

__n128 AlarmRequest.countdownDuration.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + *(type metadata accessor for AlarmRequest(0) + 20));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t AlarmRequest.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlarmRequest(0) + 24);

  return sub_1BBBCF15C(v3, a1);
}

uint64_t AlarmRequest.schedule.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmRequest(0) + 24);

  return sub_1BBBCF1CC(a1, v3);
}

void *AlarmRequest.stopAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmRequest(0) + 28));
  v2 = v1;
  return v1;
}

void AlarmRequest.stopAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 28);

  *(v1 + v3) = a1;
}

void *AlarmRequest.secondaryAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmRequest(0) + 32));
  v2 = v1;
  return v1;
}

void AlarmRequest.secondaryAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t AlarmRequest.alertConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 36);
  v4 = sub_1BBBF52F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmRequest.alertConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 36);
  v4 = sub_1BBBF52F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmRequest.attributesType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 40);
  v4 = sub_1BBBF52C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmRequest.attributesType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmRequest(0) + 40);
  v4 = sub_1BBBF52C4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmRequest.attributesData.getter()
{
  v1 = v0 + *(type metadata accessor for AlarmRequest(0) + 44);
  v2 = *v1;
  sub_1BBBDE944(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1BBBDE944(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AlarmRequest.attributesData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AlarmRequest(0) + 44);
  result = sub_1BBBBBE78(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

unint64_t sub_1BBBDEA28()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x69746341706F7473;
  if (v1 != 6)
  {
    v3 = 0x7261646E6F636573;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x7475626972747461;
  }

  v4 = 0x656C756465686373;
  if (v1 != 2)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BBBDEB40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBE0264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBDEB74(uint64_t a1)
{
  v2 = sub_1BBBDF6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBDEBB0(uint64_t a1)
{
  v2 = sub_1BBBDF6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AlarmRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v49 = sub_1BBBF52C4();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BBBF52F4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v44 - v7;
  v59 = sub_1BBBF5284();
  v53 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AEC0, &qword_1BBBF9F08);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = type metadata accessor for AlarmRequest(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 20)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 12) = 256;
  v18 = *(v14 + 24);
  v19 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BBBDF6C4();
  v56 = v12;
  v21 = v61;
  sub_1BBBF5894();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BBBDE1E4(&v16[v18]);
  }

  else
  {
    v22 = v54;
    v60 = v18;
    v45 = v13;
    v61 = v16;
    v23 = a1;
    LOBYTE(v62) = 0;
    sub_1BBBDFE18(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v24 = v55;
    v25 = v59;
    sub_1BBBF56C4();
    (*(v53 + 32))(v61, v24, v25);
    v66 = 1;
    sub_1BBBCF338();
    sub_1BBBF5674();
    v26 = v63;
    v27 = v64;
    v28 = v65;
    *v17 = v62;
    *(v17 + 2) = v26;
    v17[24] = v27;
    v17[25] = v28;
    LOBYTE(v62) = 2;
    sub_1BBBDFE18(&qword_1EBC9A938, type metadata accessor for Alarm.Schedule, &protocol conformance descriptor for Alarm.Schedule);
    sub_1BBBF5674();
    v29 = v52;
    v30 = v61;
    sub_1BBBCF1CC(v22, &v61[v60]);
    LOBYTE(v62) = 3;
    sub_1BBBDFE18(&qword_1EBC9AED0, MEMORY[0x1E6959C88], MEMORY[0x1E6959C98]);
    v31 = v48;
    v32 = v51;
    sub_1BBBF56C4();
    v44 = v23;
    v33 = v45;
    (*(v50 + 32))(&v30[v45[9]], v31, v32);
    v66 = 4;
    sub_1BBBBBDDC();
    sub_1BBBF56C4();
    *&v30[v33[11]] = v62;
    LOBYTE(v62) = 5;
    sub_1BBBDFE18(&qword_1EBC9AED8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BE0]);
    v34 = v49;
    sub_1BBBF56C4();
    (*(v29 + 32))(&v30[v33[10]], v47, v34);
    v66 = 6;
    sub_1BBBF5674();
    v35 = v33[7];
    v36 = *(&v62 + 1);
    if (*(&v62 + 1) >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      v38 = v62;
      sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
      sub_1BBBBBE30(0, &qword_1EBC9ABA8, 0x1E69AC640);
      v37 = sub_1BBBF5504();
      sub_1BBBDF7D8(v38, v36);
    }

    *&v61[v35] = v37;
    v66 = 7;
    sub_1BBBF5674();
    v39 = v45[8];
    v40 = *(&v62 + 1);
    if (*(&v62 + 1) >> 60 == 15)
    {
      (*(v58 + 8))(v56, v57);
      v41 = 0;
    }

    else
    {
      v42 = v62;
      sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
      sub_1BBBBBE30(0, &qword_1EBC9ABA8, 0x1E69AC640);
      v41 = sub_1BBBF5504();
      (*(v58 + 8))(v56, v57);
      sub_1BBBDF7D8(v42, v40);
    }

    v43 = v61;
    *&v61[v39] = v41;
    sub_1BBBDF718(v43, v46);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1BBBDF77C(v43);
  }
}

unint64_t sub_1BBBDF6C4()
{
  result = qword_1EBC9AEC8;
  if (!qword_1EBC9AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AEC8);
  }

  return result;
}

uint64_t sub_1BBBDF718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBDF77C(uint64_t a1)
{
  v2 = type metadata accessor for AlarmRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BBBDF7D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BBBBBE78(result, a2);
  }

  return result;
}

uint64_t AlarmRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AEE0, &qword_1BBBF9F10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBDF6C4();
  sub_1BBBF58A4();
  LOBYTE(v42) = 0;
  sub_1BBBF5284();
  sub_1BBBDFE18(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for AlarmRequest(0);
  v10 = (v3 + v9[5]);
  v11 = *(v10 + 2);
  v12 = *(v10 + 24);
  v13 = *(v10 + 25);
  v42 = *v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v41 = 1;
  sub_1BBBCF290();
  sub_1BBBF5724();
  LOBYTE(v42) = 2;
  type metadata accessor for Alarm.Schedule(0);
  sub_1BBBDFE18(&qword_1EBC9A918, type metadata accessor for Alarm.Schedule, &protocol conformance descriptor for Alarm.Schedule);
  sub_1BBBF5724();
  LOBYTE(v42) = 3;
  sub_1BBBF52F4();
  sub_1BBBDFE18(&qword_1EBC9AEE8, MEMORY[0x1E6959C88], MEMORY[0x1E6959C90]);
  sub_1BBBF5774();
  LOBYTE(v42) = 5;
  sub_1BBBF52C4();
  sub_1BBBDFE18(&qword_1EBC9AEF0, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD0]);
  sub_1BBBF5774();
  v14 = (v3 + v9[11]);
  v15 = v14[1];
  *&v42 = *v14;
  *(&v42 + 1) = v15;
  v41 = 4;
  sub_1BBBDE944(v42, v15);
  v16 = sub_1BBBBC18C();
  sub_1BBBF5774();
  sub_1BBBBBE78(v42, *(&v42 + 1));
  v18 = *(v3 + v9[7]);
  if (v18)
  {
    v19 = objc_opt_self();
    *&v42 = 0;
    v20 = v18;
    v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v42];
    v22 = v42;
    if (!v21)
    {
      v27 = v22;
      sub_1BBBF51F4();

      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }

    v40 = v20;
    v23 = sub_1BBBF5234();
    v37[1] = v16;
    v24 = v23;
    v26 = v25;

    v38 = v24;
    v39 = v26;
    *&v42 = v24;
    *(&v42 + 1) = v26;
    v41 = 6;
    sub_1BBBF5774();

    sub_1BBBBBE78(v38, v39);
  }

  v28 = *(v3 + v9[8]);
  if (!v28)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v29 = objc_opt_self();
  *&v42 = 0;
  v30 = v28;
  v31 = [v29 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v42];
  v32 = v42;
  if (!v31)
  {
    v36 = v32;
    sub_1BBBF51F4();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v33 = sub_1BBBF5234();
  v35 = v34;

  *&v42 = v33;
  *(&v42 + 1) = v35;
  v41 = 7;
  sub_1BBBF5774();
  (*(v6 + 8))(v8, v5);

  return sub_1BBBBBE78(v33, v35);
}

uint64_t sub_1BBBDFE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BBBDFEB8(uint64_t a1)
{
  sub_1BBBF5284();
  if (v1 <= 0x3F)
  {
    sub_1BBBCF75C();
    if (v2 <= 0x3F)
    {
      sub_1BBBCF704(319);
      if (v3 <= 0x3F)
      {
        sub_1BBBDFFA4(319);
        if (v4 <= 0x3F)
        {
          sub_1BBBF52F4();
          if (v5 <= 0x3F)
          {
            sub_1BBBF52C4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BBBDFFA4(uint64_t a1)
{
  if (!qword_1EBC9AF08)
  {
    sub_1BBBBBE30(255, &qword_1EBC9ABA8, 0x1E69AC640);
    v1 = sub_1BBBF5574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC9AF08);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BBBE0160()
{
  result = qword_1EBC9AF10;
  if (!qword_1EBC9AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF10);
  }

  return result;
}

unint64_t sub_1BBBE01B8()
{
  result = qword_1EBC9AF18;
  if (!qword_1EBC9AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF18);
  }

  return result;
}

unint64_t sub_1BBBE0210()
{
  result = qword_1EBC9AF20;
  if (!qword_1EBC9AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF20);
  }

  return result;
}

uint64_t sub_1BBBE0264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBC00DE0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BBC011D0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69746341706F7473 && a2 == 0xEA00000000006E6FLL || (sub_1BBBF57A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BBBF57A4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

_BYTE *AlarmServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t AlarmXPCServiceParameters.AlarmID.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BBBF5284();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerID.init(id:ownerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BBBF5284();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerIDActionType.init(id:ownerID:actionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = sub_1BBBF5284();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = v9;
  return result;
}

uint64_t sub_1BBBE071C()
{
  if (qword_1EDD45590 != -1)
  {
    swift_once();
  }

  qword_1EDD455C8 = qword_1EDD45598;
  unk_1EDD455D0 = unk_1EDD455A0;
  qword_1EDD455D8 = qword_1EDD455A8;
  unk_1EDD455E0 = unk_1EDD455B0;
}

uint64_t static AlarmServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD455C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD455D0;
  v2 = qword_1EDD455D8;
  v3 = unk_1EDD455E0;
  *a1 = qword_1EDD455C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BBBE0840@<X0>(void *a1@<X8>)
{
  if (qword_1EDD455C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD455D0;
  v2 = qword_1EDD455D8;
  v3 = unk_1EDD455E0;
  *a1 = qword_1EDD455C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

AlarmKit::AlarmServiceError::Code_optional __swiftcall AlarmServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t AlarmServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
    v4 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBC22E0(inited + 32, &qword_1EBC9AF30, &qword_1BBBFA128);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v6);
  }
}

unint64_t sub_1BBBE0A80()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
    v4 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBC22E0(inited + 32, &qword_1EBC9AF30, &qword_1BBBFA128);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v6);
  }
}

uint64_t sub_1BBBE0BA8(uint64_t a1)
{
  v2 = sub_1BBBE6960();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BBBE0BE4(uint64_t a1)
{
  v2 = sub_1BBBE6960();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BBBE0CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBE0D44(uint64_t a1)
{
  v2 = sub_1BBBE4BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE0D80(uint64_t a1)
{
  v2 = sub_1BBBE4BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceParameters.ScheduleAlarm.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF38, &qword_1BBBFA130);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4BB4();
  sub_1BBBF58A4();
  type metadata accessor for AlarmRequest(0);
  sub_1BBBE4C28(&qword_1EBC9AF48, type metadata accessor for AlarmRequest, &protocol conformance descriptor for AlarmRequest);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AlarmXPCServiceParameters.ScheduleAlarm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for AlarmRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF50, &qword_1BBBFA138);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4BB4();
  sub_1BBBF5894();
  if (!v2)
  {
    v12 = v15;
    sub_1BBBE4C28(&qword_1EBC9AF58, type metadata accessor for AlarmRequest, &protocol conformance descriptor for AlarmRequest);
    v13 = v17;
    sub_1BBBF56C4();
    (*(v16 + 8))(v8, v6);
    sub_1BBBE4C70(v13, v11, type metadata accessor for AlarmRequest);
    sub_1BBBE4C70(v11, v12, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBE11C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF38, &qword_1BBBFA130);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4BB4();
  sub_1BBBF58A4();
  type metadata accessor for AlarmRequest(0);
  sub_1BBBE4C28(&qword_1EBC9AF48, type metadata accessor for AlarmRequest, &protocol conformance descriptor for AlarmRequest);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBBE136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B260, &qword_1BBBFB0C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v8 = sub_1BBBF5234();
  v10 = v9;
  sub_1BBBE4C28(&qword_1EBC9B038, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
  sub_1BBBF5184();
  sub_1BBBC22E0(a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
  sub_1BBBBBE78(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BBBDDB80(v7, a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
}

uint64_t sub_1BBBE156C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBE15EC(uint64_t a1)
{
  v2 = sub_1BBBE4CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE1628(uint64_t a1)
{
  v2 = sub_1BBBE4CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceParameters.AlarmID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF60, &qword_1BBBFA140);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4CD8();
  sub_1BBBF58A4();
  sub_1BBBF5284();
  sub_1BBBE4C28(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AlarmXPCServiceParameters.AlarmID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BBBF5284();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF70, &qword_1BBBFA148);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmID(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4CD8();
  sub_1BBBF5894();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BBBE4C28(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BBBF56C4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BBBE4C70(v11, v13, type metadata accessor for AlarmXPCServiceParameters.AlarmID);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBE1A90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF60, &qword_1BBBFA140);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4CD8();
  sub_1BBBF58A4();
  sub_1BBBF5284();
  sub_1BBBE4C28(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBBE1C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B250, &unk_1BBBFB160);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v8 = sub_1BBBF5234();
  v10 = v9;
  sub_1BBBE4C28(&qword_1EBC9B048, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  sub_1BBBF5184();
  sub_1BBBC22E0(a2, &unk_1EBC9B250, &unk_1BBBFB160);
  sub_1BBBBBE78(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BBBDDB80(v7, a2, &unk_1EBC9B250, &unk_1BBBFB160);
}

uint64_t sub_1BBBE1EA8()
{
  if (*v0)
  {
    return 0x444972656E776FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BBBE1ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444972656E776FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBE1FAC(uint64_t a1)
{
  v2 = sub_1BBBE4D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE1FE8(uint64_t a1)
{
  v2 = sub_1BBBE4D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF78, &qword_1BBBFA150);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4D4C();
  sub_1BBBF58A4();
  v8[15] = 0;
  sub_1BBBF5284();
  sub_1BBBE4C28(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  if (!v1)
  {
    type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
    v8[14] = 1;
    sub_1BBBF5734();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1BBBF5284();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF88, &qword_1BBBFA158);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4D4C();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_1BBBE4C28(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  sub_1BBBF56C4();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_1BBBF5684();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1BBBE4DA0(v19, v18, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBE4F04(v19, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
}

uint64_t sub_1BBBE259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B240, &unk_1BBBFB0B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v8 = sub_1BBBF5234();
  v10 = v9;
  sub_1BBBE4C28(&qword_1EBC9B058, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  sub_1BBBF5184();
  sub_1BBBC22E0(a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
  sub_1BBBBBE78(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BBBDDB80(v7, a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
}

uint64_t sub_1BBBE2778(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1BBBE2818(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1BBBE2878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerIDActionType.actionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerIDActionType.actionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_1BBBE29B8()
{
  v1 = 0x444972656E776FLL;
  if (*v0 != 1)
  {
    v1 = 0x79546E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BBBE2A0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBE6848(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBE2A34(uint64_t a1)
{
  v2 = sub_1BBBE4E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE2A70(uint64_t a1)
{
  v2 = sub_1BBBE4E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerIDActionType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF90, &qword_1BBBFA160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4E08();
  sub_1BBBF58A4();
  v11[15] = 0;
  sub_1BBBF5284();
  sub_1BBBE4C28(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  if (!v2)
  {
    v9 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
    v11[14] = 1;
    sub_1BBBF5734();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1BBBE4E5C();
    sub_1BBBF5774();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AlarmXPCServiceParameters.AlarmIDOwnerIDActionType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1BBBF5284();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFA8, &qword_1BBBFA168);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4E08();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v8;
  v22 = v10;
  v31 = 0;
  sub_1BBBE4C28(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  v13 = v27;
  sub_1BBBF56C4();
  (*(v11 + 32))(v22, v14, v4);
  v30 = 1;
  v15 = sub_1BBBF5684();
  v16 = &v22[*(v21 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v28 = 2;
  sub_1BBBE4EB0();
  sub_1BBBF56C4();
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  v22[*(v21 + 24)] = v29;
  sub_1BBBE4DA0(v18, v23, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBE4F04(v18, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
}

uint64_t sub_1BBBE30FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B230, &unk_1BBBFB150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v8 = sub_1BBBF5234();
  v10 = v9;
  sub_1BBBE4C28(&qword_1EBC9B068, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  sub_1BBBF5184();
  sub_1BBBC22E0(a2, &unk_1EBC9B230, &unk_1BBBFB150);
  sub_1BBBBBE78(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BBBDDB80(v7, a2, &unk_1EBC9B230, &unk_1BBBFB150);
}

uint64_t sub_1BBBE3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D72616C61 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBE341C(uint64_t a1)
{
  v2 = sub_1BBBE4FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE3458(uint64_t a1)
{
  v2 = sub_1BBBE4FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceResponse.ScheduleAlarm.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFB8, &qword_1BBBFA170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4FCC();
  sub_1BBBF58A4();
  type metadata accessor for Alarm(0);
  sub_1BBBE4C28(&qword_1EBC9AFC8, type metadata accessor for Alarm, &protocol conformance descriptor for Alarm);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AlarmXPCServiceResponse.ScheduleAlarm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for Alarm(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFD0, &qword_1BBBFA178);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4FCC();
  sub_1BBBF5894();
  if (!v2)
  {
    v12 = v15;
    sub_1BBBE4C28(&qword_1EBC9AFD8, type metadata accessor for Alarm, &protocol conformance descriptor for Alarm);
    v13 = v17;
    sub_1BBBF56C4();
    (*(v16 + 8))(v8, v6);
    sub_1BBBE4C70(v13, v11, type metadata accessor for Alarm);
    sub_1BBBE4C70(v11, v12, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBE3898(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFB8, &qword_1BBBFA170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE4FCC();
  sub_1BBBF58A4();
  type metadata accessor for Alarm(0);
  sub_1BBBE4C28(&qword_1EBC9AFC8, type metadata accessor for Alarm, &protocol conformance descriptor for Alarm);
  sub_1BBBF5774();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BBBE3A44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBE4C28(a3, a4, a5);
  v8 = sub_1BBBF51B4();
  v10 = v9;
  v11 = sub_1BBBF5224();
  sub_1BBBBBE78(v8, v10);

  return v11;
}

uint64_t sub_1BBBE3B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v8 = sub_1BBBF5234();
  v10 = v9;
  sub_1BBBE4C28(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
  sub_1BBBF5184();
  sub_1BBBC22E0(a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  sub_1BBBBBE78(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BBBDDB80(v7, a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
}

uint64_t AlarmXPCServiceResponse.Alarms.alarms.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1BBBE3D60(uint64_t a1)
{
  v2 = sub_1BBBE5040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE3D9C(uint64_t a1)
{
  v2 = sub_1BBBE5040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceResponse.Alarms.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFE0, &unk_1BBBFA180);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE5040();

  sub_1BBBF58A4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABB0, &qword_1BBBF9738);
  sub_1BBBE5094(&qword_1EBC9AFF0, &qword_1EBC9AFC8, &protocol conformance descriptor for Alarm, MEMORY[0x1E69E6300]);
  sub_1BBBF5774();

  return (*(v4 + 8))(v6, v3);
}

uint64_t AlarmXPCServiceResponse.Alarms.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AFF8, &qword_1BBBFA190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE5040();
  sub_1BBBF5894();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABB0, &qword_1BBBF9738);
    sub_1BBBE5094(&qword_1EBC9B000, &qword_1EBC9AFD8, &protocol conformance descriptor for Alarm, MEMORY[0x1E69E6330]);
    sub_1BBBF56C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBE41B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBE4234(uint64_t a1)
{
  v2 = sub_1BBBE5130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBE4270(uint64_t a1)
{
  v2 = sub_1BBBE5130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmXPCServiceResponse.AllAlarms.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B008, &qword_1BBBFA198);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE5130();

  sub_1BBBF58A4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABE8, &qword_1BBBFA1A0);
  sub_1BBBE5184();
  sub_1BBBF5774();

  return (*(v4 + 8))(v6, v3);
}

uint64_t AlarmXPCServiceResponse.AllAlarms.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B020, &qword_1BBBFA1A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBE5130();
  sub_1BBBF5894();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ABE8, &qword_1BBBFA1A0);
    sub_1BBBE5248();
    sub_1BBBF56C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBE45E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  a3();
  v4 = sub_1BBBF51B4();
  v6 = v5;
  v7 = sub_1BBBF5224();
  sub_1BBBBBE78(v4, v6);

  return v7;
}

unint64_t sub_1BBBE46B8(uint64_t a1)
{
  sub_1BBBF5284();
  sub_1BBBE4C28(&qword_1EBC9B310, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1BBBF53B4();

  return sub_1BBBE47C8(a1, v2);
}

unint64_t sub_1BBBE4750(uint64_t a1, uint64_t a2)
{
  sub_1BBBF5844();
  sub_1BBBF5414();
  v4 = sub_1BBBF5884();

  return sub_1BBBE4988(a1, a2, v4);
}

unint64_t sub_1BBBE47C8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1BBBF5284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1BBBE4C28(&unk_1EBC9B1B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1BBBF53D4();
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

unint64_t sub_1BBBE4988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BBBF57A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BBBE4A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B1B0, &qword_1BBBFB0C8);
    v3 = sub_1BBBF5614();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BBBE69B4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BBBE4750(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BBBE6A24(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1BBBE4BB4()
{
  result = qword_1EBC9AF40;
  if (!qword_1EBC9AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF40);
  }

  return result;
}

uint64_t sub_1BBBE4C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BBBE4C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBE4CD8()
{
  result = qword_1EBC9AF68;
  if (!qword_1EBC9AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF68);
  }

  return result;
}

unint64_t sub_1BBBE4D4C()
{
  result = qword_1EBC9AF80;
  if (!qword_1EBC9AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF80);
  }

  return result;
}

uint64_t sub_1BBBE4DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBE4E08()
{
  result = qword_1EBC9AF98;
  if (!qword_1EBC9AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AF98);
  }

  return result;
}

unint64_t sub_1BBBE4E5C()
{
  result = qword_1EBC9AFA0;
  if (!qword_1EBC9AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AFA0);
  }

  return result;
}

unint64_t sub_1BBBE4EB0()
{
  result = qword_1EBC9AFB0;
  if (!qword_1EBC9AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AFB0);
  }

  return result;
}

uint64_t sub_1BBBE4F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBBE4F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBE4FCC()
{
  result = qword_1EBC9AFC0;
  if (!qword_1EBC9AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AFC0);
  }

  return result;
}

unint64_t sub_1BBBE5040()
{
  result = qword_1EBC9AFE8;
  if (!qword_1EBC9AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AFE8);
  }

  return result;
}

uint64_t sub_1BBBE5094(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC9ABB0, &qword_1BBBF9738);
    sub_1BBBE4C28(a2, type metadata accessor for Alarm, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBBE5130()
{
  result = qword_1EBC9B010;
  if (!qword_1EBC9B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B010);
  }

  return result;
}

unint64_t sub_1BBBE5184()
{
  result = qword_1EBC9B018;
  if (!qword_1EBC9B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC9ABE8, &qword_1BBBFA1A0);
    sub_1BBBE5094(&qword_1EBC9AFF0, &qword_1EBC9AFC8, &protocol conformance descriptor for Alarm, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B018);
  }

  return result;
}

unint64_t sub_1BBBE5248()
{
  result = qword_1EBC9B028;
  if (!qword_1EBC9B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC9ABE8, &qword_1BBBFA1A0);
    sub_1BBBE5094(&qword_1EBC9B000, &qword_1EBC9AFD8, &protocol conformance descriptor for Alarm, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B028);
  }

  return result;
}

unint64_t sub_1BBBE5310()
{
  result = qword_1EBC9B030;
  if (!qword_1EBC9B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B030);
  }

  return result;
}

uint64_t sub_1BBBE5368(void *a1)
{
  a1[1] = sub_1BBBE4C28(&qword_1EBC9B038, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
  a1[2] = sub_1BBBE4C28(&qword_1EBC9AE48, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
  result = sub_1BBBE4C28(&qword_1EBC9B040, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
  a1[3] = result;
  return result;
}

uint64_t sub_1BBBE5414(void *a1)
{
  a1[1] = sub_1BBBE4C28(&qword_1EBC9B048, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  a1[2] = sub_1BBBE4C28(&qword_1EBC9AE40, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  result = sub_1BBBE4C28(&qword_1EBC9B050, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
  a1[3] = result;
  return result;
}

uint64_t sub_1BBBE54C0(void *a1)
{
  a1[1] = sub_1BBBE4C28(&qword_1EBC9B058, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  a1[2] = sub_1BBBE4C28(&qword_1EBC9AE28, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  result = sub_1BBBE4C28(&qword_1EBC9B060, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  a1[3] = result;
  return result;
}

uint64_t sub_1BBBE556C(void *a1)
{
  a1[1] = sub_1BBBE4C28(&qword_1EBC9B068, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  a1[2] = sub_1BBBE4C28(&qword_1EBC9AE20, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  result = sub_1BBBE4C28(&qword_1EBC9B070, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  a1[3] = result;
  return result;
}

uint64_t sub_1BBBE5618(void *a1)
{
  a1[1] = sub_1BBBE4C28(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
  a1[2] = sub_1BBBE4C28(&qword_1EBC9B080, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
  result = sub_1BBBE4C28(&qword_1EBC9B088, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
  a1[3] = result;
  return result;
}

unint64_t sub_1BBBE5704()
{
  result = qword_1EBC9B090;
  if (!qword_1EBC9B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B090);
  }

  return result;
}

unint64_t sub_1BBBE5758()
{
  result = qword_1EBC9B098;
  if (!qword_1EBC9B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B098);
  }

  return result;
}

uint64_t sub_1BBBE57EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BBBE5840()
{
  result = qword_1EBC9B0A0;
  if (!qword_1EBC9B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B0A0);
  }

  return result;
}

unint64_t sub_1BBBE5894()
{
  result = qword_1EBC9B0A8;
  if (!qword_1EBC9B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B0A8);
  }

  return result;
}

uint64_t sub_1BBBE58F8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BBBE5954(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AlarmServiceError.Code(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmServiceError.Code(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BBBE5BBC(uint64_t a1)
{
  result = sub_1BBBF5284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5284();
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

uint64_t __swift_store_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBBF5284();
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

uint64_t sub_1BBBE5DD4(uint64_t a1)
{
  result = sub_1BBBF5284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BBBE5F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBBE600C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BBBE6054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBBE6114()
{
  result = qword_1EBC9B100;
  if (!qword_1EBC9B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B100);
  }

  return result;
}

unint64_t sub_1BBBE616C()
{
  result = qword_1EBC9B108;
  if (!qword_1EBC9B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B108);
  }

  return result;
}

unint64_t sub_1BBBE61C4()
{
  result = qword_1EBC9B110;
  if (!qword_1EBC9B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B110);
  }

  return result;
}

unint64_t sub_1BBBE621C()
{
  result = qword_1EBC9B118;
  if (!qword_1EBC9B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B118);
  }

  return result;
}

unint64_t sub_1BBBE6274()
{
  result = qword_1EBC9B120;
  if (!qword_1EBC9B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B120);
  }

  return result;
}

unint64_t sub_1BBBE62CC()
{
  result = qword_1EBC9B128;
  if (!qword_1EBC9B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B128);
  }

  return result;
}

unint64_t sub_1BBBE6324()
{
  result = qword_1EBC9B130;
  if (!qword_1EBC9B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B130);
  }

  return result;
}

unint64_t sub_1BBBE637C()
{
  result = qword_1EBC9B138;
  if (!qword_1EBC9B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B138);
  }

  return result;
}

unint64_t sub_1BBBE63D4()
{
  result = qword_1EBC9B140;
  if (!qword_1EBC9B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B140);
  }

  return result;
}

unint64_t sub_1BBBE642C()
{
  result = qword_1EBC9B148;
  if (!qword_1EBC9B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B148);
  }

  return result;
}

unint64_t sub_1BBBE6484()
{
  result = qword_1EBC9B150;
  if (!qword_1EBC9B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B150);
  }

  return result;
}

unint64_t sub_1BBBE64DC()
{
  result = qword_1EBC9B158;
  if (!qword_1EBC9B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B158);
  }

  return result;
}

unint64_t sub_1BBBE6534()
{
  result = qword_1EBC9B160;
  if (!qword_1EBC9B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B160);
  }

  return result;
}

unint64_t sub_1BBBE658C()
{
  result = qword_1EBC9B168;
  if (!qword_1EBC9B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B168);
  }

  return result;
}

unint64_t sub_1BBBE65E4()
{
  result = qword_1EBC9B170;
  if (!qword_1EBC9B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B170);
  }

  return result;
}

unint64_t sub_1BBBE663C()
{
  result = qword_1EBC9B178;
  if (!qword_1EBC9B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B178);
  }

  return result;
}

unint64_t sub_1BBBE6694()
{
  result = qword_1EBC9B180;
  if (!qword_1EBC9B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B180);
  }

  return result;
}

unint64_t sub_1BBBE66EC()
{
  result = qword_1EBC9B188;
  if (!qword_1EBC9B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B188);
  }

  return result;
}

unint64_t sub_1BBBE6744()
{
  result = qword_1EBC9B190;
  if (!qword_1EBC9B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B190);
  }

  return result;
}

unint64_t sub_1BBBE679C()
{
  result = qword_1EBC9B198;
  if (!qword_1EBC9B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B198);
  }

  return result;
}

unint64_t sub_1BBBE67F4()
{
  result = qword_1EBC9B1A0;
  if (!qword_1EBC9B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B1A0);
  }

  return result;
}

uint64_t sub_1BBBE6848(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972656E776FLL && a2 == 0xE700000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

unint64_t sub_1BBBE6960()
{
  result = qword_1EBC9B1A8;
  if (!qword_1EBC9B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B1A8);
  }

  return result;
}

uint64_t sub_1BBBE69B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF30, &qword_1BBBFA128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BBBE6A24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t AuthorizationClient.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1EDD45718 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45720;
  *(v0 + 16) = qword_1EDD45720;
  v2 = v1;
  return v0;
}

uint64_t sub_1BBBE6AD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BBBE6B14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBDD7A4();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v7)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE6BF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B260, &qword_1BBBFB0C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v14 = sub_1BBBF5234();
    a1 = v15;
    sub_1BBBEDD5C(&qword_1EBC9B038, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceParameters.ScheduleAlarm);
    sub_1BBBF5184();
    sub_1BBBC22E0(v11, &unk_1EBC9B260, &qword_1BBBFB0C0);
    sub_1BBBBBE78(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BBBDDB80(v9, v11, &unk_1EBC9B260, &qword_1BBBFB0C0);
    v16 = v20;
    sub_1BBBC16A4(v11, v20, &unk_1EBC9B260, &qword_1BBBFB0C0);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BBBC22E0(v11, &unk_1EBC9B260, &qword_1BBBFB0C0);
      return sub_1BBBEDA78(v16, v18, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE6ED4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B250, &unk_1BBBFB160);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlarmXPCServiceParameters.AlarmID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v14 = sub_1BBBF5234();
    a1 = v15;
    sub_1BBBEDD5C(&qword_1EBC9B048, type metadata accessor for AlarmXPCServiceParameters.AlarmID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmID);
    sub_1BBBF5184();
    sub_1BBBC22E0(v11, &unk_1EBC9B250, &unk_1BBBFB160);
    sub_1BBBBBE78(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BBBDDB80(v9, v11, &unk_1EBC9B250, &unk_1BBBFB160);
    v16 = v20;
    sub_1BBBC16A4(v11, v20, &unk_1EBC9B250, &unk_1BBBFB160);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BBBC22E0(v11, &unk_1EBC9B250, &unk_1BBBFB160);
      return sub_1BBBEDA78(v16, v18, type metadata accessor for AlarmXPCServiceParameters.AlarmID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE71B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B240, &unk_1BBBFB0B0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v14 = sub_1BBBF5234();
    a1 = v15;
    sub_1BBBEDD5C(&qword_1EBC9B058, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerID);
    sub_1BBBF5184();
    sub_1BBBC22E0(v11, &unk_1EBC9B240, &unk_1BBBFB0B0);
    sub_1BBBBBE78(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BBBDDB80(v9, v11, &unk_1EBC9B240, &unk_1BBBFB0B0);
    v16 = v20;
    sub_1BBBC16A4(v11, v20, &unk_1EBC9B240, &unk_1BBBFB0B0);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BBBC22E0(v11, &unk_1EBC9B240, &unk_1BBBFB0B0);
      return sub_1BBBEDA78(v16, v18, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE748C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B230, &unk_1BBBFB150);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v14 = sub_1BBBF5234();
    a1 = v15;
    sub_1BBBEDD5C(&qword_1EBC9B068, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType, &protocol conformance descriptor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
    sub_1BBBF5184();
    sub_1BBBC22E0(v11, &unk_1EBC9B230, &unk_1BBBFB150);
    sub_1BBBBBE78(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BBBDDB80(v9, v11, &unk_1EBC9B230, &unk_1BBBFB150);
    v16 = v20;
    sub_1BBBC16A4(v11, v20, &unk_1EBC9B230, &unk_1BBBFB150);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BBBC22E0(v11, &unk_1EBC9B230, &unk_1BBBFB150);
      return sub_1BBBEDA78(v16, v18, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7768@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v14 = sub_1BBBF5234();
    a1 = v15;
    sub_1BBBEDD5C(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
    sub_1BBBF5184();
    sub_1BBBC22E0(v11, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    sub_1BBBBBE78(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BBBDDB80(v9, v11, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    v16 = v20;
    sub_1BBBC16A4(v11, v20, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BBBC22E0(v11, &unk_1EBC9AE50, &unk_1BBBFB0A0);
      return sub_1BBBEDA78(v16, v18, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7A84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a4@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v6 = sub_1BBBF5234();
    v8 = v7;
    a2();
    sub_1BBBF5184();
    sub_1BBBBBE78(v6, v8);

    if (v10)
    {
      *a4 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7B7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBED914();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v7 != 3)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7C64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBEDA10();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v8 != 1)
    {
      *a2 = v7;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBED9BC();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v8)
    {
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7E48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBED914();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v7 != 3)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE7F34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v3 = sub_1BBBF5234();
    v5 = v4;
    sub_1BBBED968();
    sub_1BBBF5184();
    sub_1BBBBBE78(v3, v5);

    if (v7 != 2)
    {
      *a2 = v7 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE8024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1BBBF51A4();
    swift_allocObject();
    sub_1BBBF5194();
    v2 = sub_1BBBF5234();
    v15 = v16;
    sub_1BBBEDD5C(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm, &protocol conformance descriptor for AlarmXPCServiceResponse.ScheduleAlarm);
    sub_1BBBF5184();
    sub_1BBBC22E0(v12, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    sub_1BBBBBE78(v2, v15);

    v20(v10, 0, 1, v13);
    sub_1BBBDDB80(v10, v12, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    v17 = v21;
    sub_1BBBC16A4(v12, v21, &unk_1EBC9AE50, &unk_1BBBFB0A0);
    if ((*(v14 + 48))(v17, 1, v13) != 1)
    {
      sub_1BBBC22E0(v12, &unk_1EBC9AE50, &unk_1BBBFB0A0);
      return sub_1BBBEDA78(v17, v19, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BBBBBE78(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBE8310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    sub_1BBBED098(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);
    v13 = sub_1BBBF5284();
    result = (*(*(v13 - 8) + 8))(a3, v13);
    *v5 = v26;
  }

  else
  {
    v15 = sub_1BBBE46B8(a3);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v8;
      if (!v18)
      {
        sub_1BBBED340(a4, a5);
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_1BBBF5284();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_1BBBECD64(v17, v19);
      result = (v23)(a3, v21);
      *v8 = v19;
    }

    else
    {
      v24 = sub_1BBBF5284();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

id sub_1BBBE8500(void *a1)
{
  [a1 selector];
  if (sub_1BBBF52A4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_1BBBE8578(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t sub_1BBBE85CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1BBBE8660(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v6 = sub_1BBBF5234();
  v8 = v7;
  a3();
  sub_1BBBF5184();

  sub_1BBBBBE78(v6, v8);

  *a2 = v10;
  return result;
}

double sub_1BBBE8750(uint64_t a1, uint64_t a2)
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBED9BC();
  sub_1BBBF5184();

  sub_1BBBBBE78(v3, v5);

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double sub_1BBBE8840(uint64_t a1, uint64_t *a2)
{
  sub_1BBBF51A4();
  swift_allocObject();
  sub_1BBBF5194();
  v3 = sub_1BBBF5234();
  v5 = v4;
  sub_1BBBEDA10();
  sub_1BBBF5184();
  sub_1BBBEDA64(*a2, a2[1]);
  sub_1BBBBBE78(v3, v5);

  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t sub_1BBBE8928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - v4;
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if (qword_1EDD45718 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDD45720;
  (*(v3 + 16))(v5, a1, v2);
  v13 = *(v3 + 80);
  v24[1] = a1;
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v16 = v2;
  v24[0] = v2;
  v17 = v15;
  v18 = (*(v3 + 32))(v15 + v14, v5, v16);
  MEMORY[0x1EEE9AC00](v18);
  v24[-4] = v12;
  v24[-3] = sub_1BBBEDBEC;
  v24[-2] = v17;
  v19 = v12;
  sub_1BBBF5534();

  v20 = v25;
  (*(v7 + 16))(v25, v11, v6);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v21, v20, v6);
  sub_1BBBF5474();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1BBBE8C58(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B318, &qword_1BBBFB198);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188);
  sub_1BBBF5484();
  return (*(v3 + 8))(v5, v2);
}

void sub_1BBBE8D58(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD45718 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD45720;
  sub_1BBBE8DE4(a2);
}

uint64_t sub_1BBBE8DE4(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *&v1[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue];
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BBBEDCF8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1BBBD8188;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor_62_0;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t AuthorizationClient.init()()
{
  if (qword_1EDD45718 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45720;
  *(v0 + 16) = qword_1EDD45720;
  v2 = v1;
  return v0;
}

uint64_t AuthorizationClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1BBBE90B4()
{
  result = [objc_allocWithZone(_s8AlarmKit9SingletonCMa_0()) init];
  qword_1EDD45720 = result;
  return result;
}

id sub_1BBBE9138()
{
  v16 = sub_1BBBF5524();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v15 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BBBF5514();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BBBF5384();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection;
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_serverStartupToken] = -1;
  v13 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue;
  v5 = sub_1BBBDD660();
  v12[3] = "edToStateChanges";
  v12[4] = v5;
  sub_1BBBF5374();
  v18 = MEMORY[0x1E69E7CC0];
  v12[2] = sub_1BBBEDD5C(&qword_1EDD456F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v12[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBDD6AC(&qword_1EDD45700, &unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBF5594();
  v6 = *MEMORY[0x1E69E8098];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v12[0] = v7;
  v8(v15, v6, v16);
  *&v0[v13] = sub_1BBBF5554();
  v13 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_calloutQueue;
  sub_1BBBF5374();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BBBF5594();
  v8(v15, v6, v16);
  *&v0[v13] = sub_1BBBF5554();
  *&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers] = MEMORY[0x1E69E7CC8];
  v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState] = 0;
  v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges] = 0;
  v9 = *&v0[v14];
  *&v0[v14] = 0;

  v10 = _s8AlarmKit9SingletonCMa_0();
  v17.receiver = v0;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BBBE94F0()
{
  v2.receiver = v0;
  v2.super_class = _s8AlarmKit9SingletonCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BBBE95B8(_BYTE *a1@<X8>)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BBBF5394();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1BBBF53A4();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  v10 = sub_1BBBE9868();
  if (v10)
  {
    v23[0] = 0;
    v11 = [v10 subscribeToAuthorizationUpdatesAndReturnError_];
    v12 = v23[0];
    if (v11)
    {
      v13 = v11;
      sub_1BBBF51A4();
      swift_allocObject();
      v14 = v12;
      sub_1BBBF5194();
      v15 = sub_1BBBF5234();
      v17 = v16;
      sub_1BBBED914();
      sub_1BBBF5184();
      v18 = v15;
      v19 = v17;
      if (!v2)
      {
        sub_1BBBBBE78(v15, v17);

        v20 = v23[0];
        if (LOBYTE(v23[0]) != 3)
        {
          swift_unknownObjectRelease();

          *a1 = v20;
          return;
        }

        __break(1u);
      }

      sub_1BBBBBE78(v18, v19);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v22 = v23[0];
      sub_1BBBF51F4();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1BBBE9868()
{
  v1 = sub_1BBBF5394();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BBBEC374();
  v7 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection);
  if (!v7)
  {
    if (qword_1EBC9A558 != -1)
    {
      swift_once();
    }

    v8 = sub_1BBBF5324();
    __swift_project_value_buffer(v8, qword_1EBCA4730);
    v1 = sub_1BBBF5304();
    v9 = sub_1BBBF54E4();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBBB7000, v1, v9, "Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFB18360](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B288, &unk_1BBBFB170);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BBBC22E0(v19, &qword_1EBC9B280, &qword_1BBBF9730);
  }

  if (qword_1EBC9A558 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BBBF5324();
  __swift_project_value_buffer(v12, qword_1EBCA4730);
  v13 = sub_1BBBF5304();
  v14 = sub_1BBBF54E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBBB7000, v13, v14, "Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFB18360](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1BBBE9BAC()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BBBE9868();
  if (v0)
  {
    v5[0] = 0;
    if ([v0 unsubscribeFromAuthorizationUpdatesAndReturnError_])
    {
      v1 = v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BBBE9C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1BBBF5354();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBBF5384();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBBF5274();
  v15 = swift_allocObject();
  v35 = a2;
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(a1 + v16);
  *(a1 + v16) = 0x8000000000000000;
  sub_1BBBED098(sub_1BBBEDDA4, v15, a4, isUniquelyReferenced_nonNull_native, &qword_1EBC9B308, &qword_1BBBFB190);
  *(a1 + v16) = v41;
  swift_endAccess();
  v18 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges;
  v19 = &qword_1EBC9B000;
  if ((*(a1 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges) & 1) == 0)
  {
    sub_1BBBE95B8(aBlock);
    if (v4)
    {
      if (qword_1EBC9A558 != -1)
      {
        swift_once();
      }

      v20 = sub_1BBBF5324();
      __swift_project_value_buffer(v20, qword_1EBCA4730);
      v21 = v4;
      v22 = sub_1BBBF5304();
      v23 = sub_1BBBF54D4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        v26 = v4;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1BBBB7000, v22, v23, "Could not subscribe to state changes: %{public}@", v24, 0xCu);
        sub_1BBBC22E0(v25, &qword_1EBC9B2F0, &qword_1BBBFB180);
        v28 = v25;
        v19 = &qword_1EBC9B000;
        MEMORY[0x1BFB18360](v28, -1, -1);
        MEMORY[0x1BFB18360](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState) = aBlock[0];
      *(a1 + v18) = 1;
    }
  }

  v29 = *(a1 + v19[62]);
  v30 = swift_allocObject();
  *(v30 + 16) = v35;
  *(v30 + 24) = a3;
  *(v30 + 32) = v29;
  aBlock[4] = sub_1BBBEDDCC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_71_0;
  v31 = _Block_copy(aBlock);

  sub_1BBBF5364();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BBBEDD5C(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  v32 = v39;
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v14, v11, v31);
  _Block_release(v31);
  (*(v38 + 8))(v11, v32);
  (*(v36 + 8))(v14, v37);
}

uint64_t sub_1BBBEA1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBBF5284();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  v8 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
  swift_beginAccess();
  sub_1BBBE8310(0, 0, v6, &qword_1EBC9B308, &qword_1BBBFB190);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    result = sub_1BBBE9BAC();
    *(a1 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges) = 0;
    *(a1 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState) = 0;
  }

  return result;
}

uint64_t sub_1BBBEA430(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BBBF5384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BBBE9868();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v30 = sub_1BBBEDE14;
    v31 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1BBBEABE8;
    v29 = &block_descriptor_83;
    v17 = _Block_copy(&aBlock);

    v18 = a1;

    [v15 requestWithCompletion_];
    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    v24 = *&a1[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_calloutQueue];
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v30 = sub_1BBBEDE0C;
    v31 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1BBBE6AD0;
    v29 = &block_descriptor_77;
    v23 = _Block_copy(&aBlock);

    sub_1BBBF5364();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1BBBEDD5C(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
    sub_1BBBF5594();
    v21 = v23;
    MEMORY[0x1BFB17A50](0, v13, v9, v23);
    _Block_release(v21);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_1BBBEA7C8(void (*a1)(uint64_t *))
{
  sub_1BBBEDAE0();
  v2 = swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 0;
  v6 = v2;
  v7 = 1;
  a1(&v6);
  v4 = v6;
  v5 = v7;

  sub_1BBBEDE30(v4, v5);
}

uint64_t sub_1BBBEA84C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BBBF5354();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BBBF5384();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a2;
  aBlock[4] = sub_1BBBEDE20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_89;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_1BBBF5364();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1BBBEDD5C(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v14, v11, v16);
  _Block_release(v16);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void sub_1BBBEAB30(unsigned __int8 a1, void (*a2)(id *, void (*)(uint64_t *), uint64_t, void *), uint64_t a3, void *a4)
{
  if (a1 == 3)
  {
    if (a4)
    {
      v8 = a4;
      v9 = 1;
      v5 = a4;
    }

    else
    {
      sub_1BBBEDAE0();
      v6 = swift_allocError();
      *v7 = 3;
      *(v7 + 8) = 0;
      v8 = v6;
      v9 = 1;
    }

    (a2)(&v8);
    sub_1BBBEDE30(v8, v9);
  }

  else
  {
    v8 = a1;
    v9 = 0;
    a2(&v8, a2, a3, a4);
  }
}

uint64_t sub_1BBBEABE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    sub_1BBBE7B7C(a2, &v7);
  }

  else
  {
    v7 = 3;
  }

  v5 = a3;
  v4(&v7, a3);
}

void sub_1BBBEAC70(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1BBBE9868();
  if (!v7)
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v25[0] = a1;
  v25[1] = a2;
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v9 = sub_1BBBF51B4();
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1BBBF5224();
    sub_1BBBBBE78(v11, v12);

    v25[0] = 0;
    v14 = [v8 stateWithParameters:v13 error:v25];

    v15 = v25[0];
    if (!v14)
    {
      v22 = v25[0];
      sub_1BBBF51F4();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    sub_1BBBF51A4();
    swift_allocObject();
    v16 = v15;
    sub_1BBBF5194();
    v17 = sub_1BBBF5234();
    v19 = v18;
    sub_1BBBED914();
    sub_1BBBF5184();
    sub_1BBBBBE78(v17, v19);

    v20 = v25[0];
    if (LOBYTE(v25[0]) != 3)
    {
      swift_unknownObjectRelease();

      *a3 = v20;
      return;
    }

    __break(1u);
  }

  v23 = swift_unexpectedError();
  __break(1u);
  sub_1BBBBBE78(v23, v24);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BBBEAEE4(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1BBBE9868();
  if (v6)
  {
    v7 = v6;
    v18[0] = a2;
    v18[1] = a3;
    sub_1BBBF51D4();
    swift_allocObject();
    sub_1BBBF51C4();
    sub_1BBBEDB34();
    v8 = sub_1BBBF51B4();
    if (v3)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v10 = v8;
      v11 = v9;
      v12 = sub_1BBBF5224();
      sub_1BBBBBE78(v10, v11);

      v18[0] = 0;
      v13 = [v7 removeWithParameters:v12 error:v18];

      if (v13)
      {
        v14 = v18[0];
      }

      else
      {
        v17 = v18[0];
        sub_1BBBF51F4();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BBBEB088(uint64_t a1, void *a2, void *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = sub_1BBBE9868();
  if (v8)
  {
    v9 = v8;
    v19[0] = a2;
    v19[1] = a3;
    v20 = a4;
    sub_1BBBF51D4();
    swift_allocObject();

    sub_1BBBF51C4();
    sub_1BBBEDB98();
    v10 = sub_1BBBF51B4();
    if (v4)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v12 = v10;
      v13 = v11;

      v14 = sub_1BBBF5224();
      sub_1BBBBBE78(v12, v13);

      v19[0] = 0;
      LOBYTE(v12) = [v9 setStateWithParameters:v14 error:v19];

      if (v12)
      {
        v15 = v19[0];
      }

      else
      {
        v18 = v19[0];
        sub_1BBBF51F4();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1BBBEB24C(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1BBBE9868();
  if (!v7)
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v25[0] = a1;
  v25[1] = a2;
  sub_1BBBF51D4();
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v9 = sub_1BBBF51B4();
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1BBBF5224();
    sub_1BBBBBE78(v11, v12);

    v25[0] = 0;
    v14 = [v8 supportsAlarmKitWithParameters:v13 error:v25];

    v15 = v25[0];
    if (!v14)
    {
      v22 = v25[0];
      sub_1BBBF51F4();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    sub_1BBBF51A4();
    swift_allocObject();
    v16 = v15;
    sub_1BBBF5194();
    v17 = sub_1BBBF5234();
    v19 = v18;
    sub_1BBBED968();
    sub_1BBBF5184();
    sub_1BBBBBE78(v17, v19);

    v20 = v25[0];
    if (LOBYTE(v25[0]) != 2)
    {
      swift_unknownObjectRelease();

      *a3 = v20 & 1;
      return;
    }

    __break(1u);
  }

  v23 = swift_unexpectedError();
  __break(1u);
  sub_1BBBBBE78(v23, v24);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BBBEB4C4(uint64_t a1, int a2)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD0, "P\x1B");
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v44 - v5;
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD8, &qword_1BBBF9EE8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v44 - v14;
  v15 = *(a1 + 64);
  v44 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v47 = v7 + 16;
  v55 = (v7 + 32);
  v58 = (v4 + 48);
  v59 = (v4 + 56);
  v49 = v7;
  v50 = a1;
  v52 = (v7 + 8);
  v20 = v13;

  v22 = 0;
  v57 = v20;
  v46 = v3;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v23 << 6);
      v29 = v49;
      v28 = v50;
      v30 = v48;
      (*(v49 + 16))(v48, *(v50 + 48) + *(v49 + 72) * v27, v6);
      v31 = *(v3 + 48);
      v32 = *(v29 + 32);
      v60 = *(*(v28 + 56) + 16 * v27);
      v20 = v57;
      v32(v57, v30, v6);
      *(v20 + v31) = v60;
      v33 = *v59;
      (*v59)(v20, 0, 1, v3);

      v25 = v23;
LABEL_13:
      v34 = *v58;
      v35 = 1;
      if ((*v58)(v20, 1, v3) != 1)
      {
        *&v60 = v25;
        v36 = *(v3 + 48);
        v51 = v33;
        v37 = *v55;
        (*v55)(v45, v20, v6);
        v38 = swift_allocObject();
        *(v38 + 16) = *(v57 + v36);
        v39 = &v56[*(v3 + 48)];
        v37();
        v33 = v51;
        v35 = 0;
        *v39 = sub_1BBBED8EC;
        v39[1] = v38;
        v25 = v60;
        v20 = v57;
        v3 = v46;
      }

      v40 = v56;
      v33(v56, v35, 1, v3);
      v41 = v40;
      v42 = v54;
      sub_1BBBDDB80(v41, v54, &qword_1EBC9ADD8, &qword_1BBBF9EE8);
      if (v34(v42, 1, v3) == 1)
      {
      }

      v43 = *(v42 + *(v3 + 48));
      v61[0] = v53;
      v43(v61);

      result = (*v52)(v42, v6);
      v22 = v25;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v33 = *v59;
        (*v59)(v20, 1, 1, v3);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v44 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BBBEBA54()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection])
  {
    v8 = sub_1BBBF1AB8(0, 0);
    if (v8)
    {
      v9 = *&v0[v7];
      *&v0[v7] = v8;
      v10 = v8;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BBBEDB88;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BBBDD794;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBBF1F18;
      aBlock[3] = &block_descriptor_29_0;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configureConnection_];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        sub_1BBBEC160();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1BBBEBCC4(void *a1, uint64_t a2)
{
  v4 = sub_1BBBF53E4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v19 = sub_1BBBE8500;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBE8578;
  v18 = &block_descriptor_38_0;
  v8 = _Block_copy(&v15);
  v9 = &unk_1F3ABBBB0;

  v10 = [v6 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v5 setServer_];
  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1BBBEC04C;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_41_0;
  v12 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v12);
  v19 = sub_1BBBEC058;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_44_0;
  v13 = _Block_copy(&v15);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v19 = sub_1BBBEC064;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_47_0;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_1BBBEC070(uint64_t a1, const char *a2)
{
  if (qword_1EBC9A558 != -1)
  {
    swift_once();
  }

  v3 = sub_1BBBF5324();
  __swift_project_value_buffer(v3, qword_1EBCA4730);
  oslog = sub_1BBBF5304();
  v4 = sub_1BBBF54C4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBBB7000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFB18360](v5, -1, -1);
  }
}

void sub_1BBBEC160()
{
  v1 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_serverStartupToken;
  swift_beginAccess();
  if (*(v0 + v1) == -1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BBBEDB90;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBBE85CC;
    aBlock[3] = &block_descriptor_35_0;
    v4 = _Block_copy(aBlock);

    v5 = sub_1BBBF5404();
    swift_beginAccess();
    LODWORD(v2) = notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
    swift_endAccess();
    _Block_release(v4);

    if (v2)
    {
      if (qword_1EBC9A558 != -1)
      {
        swift_once();
      }

      v6 = sub_1BBBF5324();
      __swift_project_value_buffer(v6, qword_1EBCA4730);
      v7 = sub_1BBBF5304();
      v8 = sub_1BBBF54D4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBBB7000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
        MEMORY[0x1BFB18360](v9, -1, -1);
      }
    }
  }
}

void sub_1BBBEC374()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BBBF53A4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1BBBEBA54();
  v7 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection);
  if (!v7)
  {
    return;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();

    sub_1BBBC22E0(v12, &qword_1EBC9B280, &qword_1BBBF9730);
    return;
  }

  memset(v12, 0, sizeof(v12));
  sub_1BBBC22E0(v12, &qword_1EBC9B280, &qword_1BBBF9730);
  [v1 activate];
  if (qword_1EBC9A558 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = sub_1BBBF5324();
  __swift_project_value_buffer(v8, qword_1EBCA4730);
  v9 = sub_1BBBF5304();
  v10 = sub_1BBBF54F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBBB7000, v9, v10, "Activated connection", v11, 2u);
    MEMORY[0x1BFB18360](v11, -1, -1);
  }
}

void sub_1BBBEC5D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EBC9A558 != -1)
    {
      swift_once();
    }

    v4 = sub_1BBBF5324();
    __swift_project_value_buffer(v4, qword_1EBCA4730);
    v5 = sub_1BBBF5304();
    v6 = sub_1BBBF54F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BBBB7000, v5, v6, "Server has restarted", v7, 2u);
      MEMORY[0x1BFB18360](v7, -1, -1);
    }

    sub_1BBBEC374();
    v8 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges;
    if (v3[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges] == 1)
    {
      v9 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
      swift_beginAccess();
      if (*(*&v3[v9] + 16))
      {
        sub_1BBBE95B8(&v10);
        v3[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState] = v10;
      }

      else
      {
        v3[v8] = 0;
        v3[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState] = 0;
      }
    }
  }
}

uint64_t sub_1BBBEC8A8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1BBBEC908(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1BBBEC918(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1BBBEC98C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1BBBF5284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = v8;
  result = sub_1BBBF5604();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v9;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v10 + 16);
    v40 = v10;
    v43 = (v10 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v10 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v39)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      sub_1BBBEDD5C(&qword_1EBC9B310, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1BBBF53B4();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v43)(*(v15 + 48) + v45 * v23, v46, v47);
      *(*(v15 + 56) + 16 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}