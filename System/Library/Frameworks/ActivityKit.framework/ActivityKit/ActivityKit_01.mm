unint64_t sub_1A2C6A958(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x5472657474616C70;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x656D656870457369;
      break;
    case 8:
      result = 0x6E756F626E557369;
      break;
    case 9:
      result = 0x746E656D6F4D7369;
      break;
    case 10:
      result = 0x74726F706D497369;
      break;
    case 11:
      result = 0x69746365746F7270;
      break;
    case 12:
      result = 0x7461447472617473;
      break;
    case 13:
      result = 0x726154656E656373;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A2C6ABA0()
{
  result = qword_1ED709918;
  if (!qword_1ED709918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709918);
  }

  return result;
}

unint64_t sub_1A2C6AC28()
{
  result = qword_1ED708C80;
  if (!qword_1ED708C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C80);
  }

  return result;
}

unint64_t sub_1A2C6AC7C()
{
  result = qword_1ED708910;
  if (!qword_1ED708910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708910);
  }

  return result;
}

unint64_t sub_1A2C6ACD0()
{
  v1 = 0xD00000000000001DLL;
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
    return 0x50746E6572727563;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityChange.Change.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityChange.Change.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A2C6AE88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A2C6AEA0(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18C8, &qword_1A2D14A20);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2C6AF80()
{
  result = qword_1ED709470;
  if (!qword_1ED709470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709470);
  }

  return result;
}

void sub_1A2C6AFD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x657263736B636F6CLL;
  v4 = 0x657263536C6C7566;
  v5 = 0xE700000000000000;
  v6 = 0x746E6569626D61;
  if (v2 != 4)
  {
    v6 = 0x79616C50726163;
    v5 = 0xE700000000000000;
  }

  if (v2 == 3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6162;
  if (v2 != 1)
  {
    v8 = 0x70416D6574737973;
    v7 = 0xEE00657275747265;
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_1A2C6B09C()
{
  result = qword_1ED7092E8;
  if (!qword_1ED7092E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092E8);
  }

  return result;
}

uint64_t ActivityPresentationOptions.encode(to:)(void *a1)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0868, &qword_1A2D0C160);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v31 = *(v1 + 9);
  v32 = v9;
  v10 = *(v1 + 10);
  v11 = *(v1 + 11);
  v26 = *(v1 + 12);
  v27 = v11;
  v29 = *(v1 + 13);
  v30 = v10;
  v25 = *(v1 + 14);
  v28 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6B53C();

  v12 = v4;
  sub_1A2D08C74();
  v34[0] = v8;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0870, &qword_1A2D0C168);
  sub_1A2C6B590();
  sub_1A2D08AE4();
  if (!v2)
  {

    LOBYTE(v34[0]) = 1;
    sub_1A2D08AC4();
    LOBYTE(v34[0]) = 2;
    sub_1A2D08AC4();
    LOBYTE(v34[0]) = 3;
    sub_1A2D08AC4();
    LOBYTE(v34[0]) = 5;
    sub_1A2D08AC4();
    v14 = v28;
    if (v28)
    {
      v15 = objc_opt_self();
      v34[0] = 0;
      v16 = v14;
      v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:v34];
      v18 = v34[0];
      if (!v17)
      {
        v23 = v18;
        sub_1A2D07ED4();

        swift_willThrow();
        return (*(v5 + 8))(v7, v12);
      }

      v19 = sub_1A2D07F44();
      v20 = v7;
      v22 = v21;

      v34[0] = v19;
      v34[1] = v22;
      v33 = 4;
      sub_1A2C669D0();
      sub_1A2D08AE4();

      sub_1A2C55840(v19, v22);
      v7 = v20;
    }

    LOBYTE(v34[0]) = v25;
    v33 = 6;
    sub_1A2C6B754();
    sub_1A2D08AE4();
    LOBYTE(v34[0]) = 7;
    sub_1A2D08AC4();
    LOBYTE(v34[0]) = 8;
    sub_1A2D08AC4();
    return (*(v5 + 8))(v7, v12);
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_1A2C6B53C()
{
  result = qword_1ED7096F8[0];
  if (!qword_1ED7096F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7096F8);
  }

  return result;
}

unint64_t sub_1A2C6B590()
{
  result = qword_1ED709290;
  if (!qword_1ED709290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0870, &qword_1A2D0C168);
    sub_1A2CAA9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709290);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1A2C6B754()
{
  result = qword_1ED709258;
  if (!qword_1ED709258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709258);
  }

  return result;
}

uint64_t ActivityAuthorizationOptionsType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EE0, &qword_1A2D17730);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EE8, &qword_1A2D17738);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EF0, &qword_1A2D17740);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EF8, &qword_1A2D17748);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F00, &qword_1A2D17750);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6BBF8();
  sub_1A2D08C74();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1A2D025B4();
      v18 = v27;
      sub_1A2D08A84();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1A2C6BC4C();
      v18 = v30;
      sub_1A2D08A84();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1A2D02608();
    v18 = v24;
    sub_1A2D08A84();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1A2D0265C();
  sub_1A2D08A84();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1A2C6BBF8()
{
  result = qword_1ED709620;
  if (!qword_1ED709620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709620);
  }

  return result;
}

unint64_t sub_1A2C6BC4C()
{
  result = qword_1ED709260;
  if (!qword_1ED709260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709260);
  }

  return result;
}

uint64_t sub_1A2C6BCA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18D0, &qword_1A2D14A28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C6BD18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A2C6BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A2D07EF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A2C6BE74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OpaqueActivityContent(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A2C6BF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C69EDC(&qword_1EB09EFD8, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2C639DC(v7, a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
}

uint64_t ActivityRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v43 - v4;
  v5 = sub_1A2D07F94();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C0, &qword_1A2D14A18);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6A740();
  v15 = v55;
  sub_1A2D08C64();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v55 = a1;
  v47 = v14;
  LOBYTE(v57) = 0;
  v18 = sub_1A2D089F4();
  v19 = v9;
  v20 = v47;
  *v47 = v18;
  v20[1] = v21;
  v46 = v21;
  LOBYTE(v56) = 1;
  sub_1A2C6CDD0();
  sub_1A2D08A54();
  v22 = *(&v57 + 1);
  v20[2] = v57;
  v20[3] = v22;
  LOBYTE(v56) = 2;
  sub_1A2C6CFD4();
  v45 = 0;
  sub_1A2D08A54();
  *(v20 + 2) = v57;
  LOBYTE(v57) = 3;
  sub_1A2C69EDC(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  sub_1A2D08A54();
  sub_1A2C671E0(v17, v20 + v12[7], type metadata accessor for OpaqueActivityContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C8, &qword_1A2D14A20);
  LOBYTE(v56) = 13;
  sub_1A2C6AEA0(&qword_1EB09EB40, sub_1A2CAAA44, sub_1A2CEC510, MEMORY[0x1E69E5E58]);
  sub_1A2D08A14();
  v23 = v57;
  v53 = v11;
  if (!v57)
  {
    LOBYTE(v56) = 4;
    sub_1A2CEC510();
    sub_1A2D08A54();
    v25 = *(&v57 + 1);
    v24 = v57;
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    v44 = v9;
    *(inited + 32) = 0;
    v27 = inited + 32;
    *(inited + 40) = v24;
    *(inited + 48) = v25;
    *(inited + 56) = v59;
    v23 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    v28 = v27;
    v19 = v44;
    sub_1A2C54E38(v28, &qword_1EB0A0E38, &qword_1A2D0EC28);
  }

  *(v47 + v12[8]) = v23;
  LOBYTE(v56) = 14;
  sub_1A2D08A14();
  v29 = v57;
  if (!v57)
  {
    v29 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
  }

  v30 = v47;
  *(v47 + v12[9]) = v29;
  v61 = 5;
  sub_1A2C70D80();
  sub_1A2D08A54();
  v31 = v30 + v12[10];
  *v31 = v57;
  *(v31 + 2) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D0, &qword_1A2D14A28);
  v60 = 6;
  sub_1A2C6BCA0(&qword_1EB09EE98, sub_1A2CEC564, MEMORY[0x1E69E6330]);
  sub_1A2D08A54();
  *(v30 + v12[11]) = v56;
  LOBYTE(v56) = 7;
  *(v30 + v12[12]) = sub_1A2D08A34() & 1;
  LOBYTE(v56) = 8;
  v32 = v19;
  *(v47 + v12[13]) = sub_1A2D08A34() & 1;
  LOBYTE(v56) = 9;
  *(v47 + v12[14]) = sub_1A2D08A34() & 1;
  LOBYTE(v56) = 10;
  v33 = sub_1A2D08A04();
  if (v33 == 2)
  {
    *(v47 + v12[15]) = 0;
  }

  else
  {
    *(v47 + v12[15]) = v33 & 1;
  }

  v60 = 11;
  sub_1A2C6E118();
  sub_1A2D08A14();
  *(v47 + v12[16]) = v56;
  LOBYTE(v56) = 12;
  sub_1A2C69EDC(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1A2D08A14();
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    sub_1A2C54E38(v52, &qword_1EB0A0E28, &unk_1A2D0EC10);
    _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  }

  else
  {
    v34 = v51;
    v35 = *(v50 + 32);
    v36 = v48;
    v35(v48, v52, v51);
    v35(v47 + v12[17], v36, v34);
  }

  LOBYTE(v56) = 15;
  v37 = sub_1A2D089F4();
  v39 = v38;
  (*(v54 + 8))(v53, v32);
  v40 = v12[18];
  v41 = v47;
  v42 = (v47 + v40);
  *v42 = v37;
  v42[1] = v39;
  sub_1A2C69790(v41, v49, type metadata accessor for ActivityRequest);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_1A2C6E1CC(v41, type metadata accessor for ActivityRequest);
}

unint64_t sub_1A2C6CDD0()
{
  result = qword_1ED709910;
  if (!qword_1ED709910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709910);
  }

  return result;
}

uint64_t ActivityAttributesType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF0, &qword_1A2D0DFC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C64();
  if (!v2)
  {
    v9 = sub_1A2D08A24();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2C6CFD4()
{
  result = qword_1ED7097D8;
  if (!qword_1ED7097D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097D8);
  }

  return result;
}

uint64_t OpaqueActivityContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1220, &qword_1A2D0FB00);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = sub_1A2D07F94();
  v16 = *(*(v15 - 8) + 56);
  v29 = v12;
  v30 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D3E8();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1A2C54E38(v29 + v30, &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v25 = a1;
    v17 = v6;
    v18 = v27;
    v31 = 0;
    sub_1A2C6CFD4();
    v19 = v28;
    sub_1A2D08A54();
    v20 = v29;
    *v29 = v32;
    LOBYTE(v32) = 1;
    sub_1A2C6D4B0(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1A2D08A14();
    sub_1A2C6D68C(v17, v20 + v30);
    LOBYTE(v32) = 2;
    sub_1A2D08A44();
    v22 = v21;
    (*(v18 + 8))(v9, v19);
    *(v20 + *(v10 + 24)) = v22;
    sub_1A2C6D6FC(v20, v26);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_1A2C6FD00(v20);
  }
}

unint64_t sub_1A2C6D3E8()
{
  result = qword_1ED7090B0;
  if (!qword_1ED7090B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090B0);
  }

  return result;
}

uint64_t sub_1A2C6D43C()
{
  v1 = 0x746144656C617473;
  if (*v0 != 1)
  {
    v1 = 0x636E6176656C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746E65746E6F63;
  }
}

uint64_t sub_1A2C6D4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C6D4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C6D540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A2C6D588()
{
  result = qword_1ED708CF8;
  if (!qword_1ED708CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CF8);
  }

  return result;
}

unint64_t sub_1A2C6D5DC()
{
  result = qword_1ED708918;
  if (!qword_1ED708918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708918);
  }

  return result;
}

unint64_t sub_1A2C6D630()
{
  result = qword_1ED708C68;
  if (!qword_1ED708C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C68);
  }

  return result;
}

uint64_t sub_1A2C6D68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C6D6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueActivityContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C6D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746567646977 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2C6D840@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1A2C6D87C()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746567646977;
  }
}

unint64_t sub_1A2C6D8A8()
{
  result = qword_1EB09EF50;
  if (!qword_1EB09EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF50);
  }

  return result;
}

uint64_t sub_1A2C6D908@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2C70B08(a2, a3);
  *a1 = result;
  return result;
}

void ActivityPresentationOptions.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0848, &unk_1A2D0C150);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6B53C();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    LOBYTE(v39) = 0;
    sub_1A2C70DD4();
    LOBYTE(v9) = sub_1A2D08A54();
    v37 = v5;
    v38 = v8;
    v36 = v6;
    v34 = a2;
    v10 = 0;
    v11 = v41;
    v12 = *(v41 + 2);
    v13 = v41 + 40;
    v44 = MEMORY[0x1E69E7CC0];
    v14 = &unk_1F1579118;
    v35 = v41 + 40;
LABEL_4:
    v15 = &v13[16 * v10];
    while (1)
    {
      if (v12 == v10)
      {

        LOBYTE(v41) = 1;
        LODWORD(v35) = sub_1A2D08A34();
        LOBYTE(v41) = 2;
        v33 = sub_1A2D08A34();
        LOBYTE(v41) = 3;
        LODWORD(v10) = sub_1A2D08A34() & 1;
        LOBYTE(v41) = 5;
        v20 = sub_1A2D08A34() & 1;
        LOBYTE(v39) = 4;
        sub_1A2C6CFD4();
        sub_1A2D08A54();
        v21 = v41;
        v12 = v42;
        sub_1A2C569A0(0, &qword_1EB0A0858, 0x1E696ACD0);
        sub_1A2C569A0(0, &qword_1EB0A0860, 0x1E698E650);
        v14 = sub_1A2D086B4();
        sub_1A2C55840(v21, v12);
        v8 = v37;
        LOBYTE(v39) = 6;
        sub_1A2C6E060();
        sub_1A2D08A54();
        LOBYTE(v12) = v41;
        LOBYTE(v41) = 7;
        v11 = v38;
        v22 = sub_1A2D08A04();
        LODWORD(v37) = v20;
        v32 = v10;
        LOBYTE(v10) = v22;
        LOBYTE(v41) = 8;
        LOBYTE(v9) = sub_1A2D08A04();
        v15 = (v36 + 8);
        goto LABEL_15;
      }

      if (v10 >= *(v11 + 2))
      {
        break;
      }

      ++v10;
      v16 = v15 + 2;

      v8 = sub_1A2D089C4();

      v15 = v16;
      if (v8 < 6)
      {
        LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
        if ((v9 & 1) == 0)
        {
          v9 = sub_1A2C6DF60(0, *(v44 + 2) + 1, 1, v44);
          v44 = v9;
        }

        v18 = *(v44 + 2);
        v17 = *(v44 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1A2C6DF60((v17 > 1), v18 + 1, 1, v44);
          v44 = v9;
        }

        v19 = v44;
        *(v44 + 2) = v18 + 1;
        v19[v18 + 32] = v8;
        v13 = v35;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_15:
    v23 = v9;
    v24 = v35 & 1;
    LODWORD(v36) = v35 & 1;
    LODWORD(v35) = v33 & 1;
    v25 = v10 & 1;
    (*v15)(v11, v8);
    v26 = v23 & 1;
    LODWORD(v38) = v23 & 1;
    v27 = v44;
    *&v39 = v44;
    BYTE8(v39) = v24;
    v28 = v35;
    BYTE9(v39) = v35;
    v29 = v32;
    BYTE10(v39) = v32;
    BYTE11(v39) = v25;
    BYTE12(v39) = v26;
    v30 = v37;
    BYTE13(v39) = v37;
    BYTE14(v39) = v12;
    v40 = v14;
    v31 = v34;
    *(v34 + 16) = v14;
    *v31 = v39;
    sub_1A2C66F58(&v39, &v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = v27;
    LOBYTE(v42) = v36;
    BYTE1(v42) = v28;
    BYTE2(v42) = v29;
    BYTE3(v42) = v25;
    BYTE4(v42) = v38;
    BYTE5(v42) = v30;
    BYTE6(v42) = v12;
    v43 = v14;
    sub_1A2C69EAC(&v41);
  }
}

char *sub_1A2C6DF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09C0, &qword_1A2D0D178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1A2C6E060()
{
  result = qword_1ED7095D8;
  if (!qword_1ED7095D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095D8);
  }

  return result;
}

uint64_t sub_1A2C6E0B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2C71508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2C6E0E4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A2C6E118()
{
  result = qword_1ED709640;
  if (!qword_1ED709640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709640);
  }

  return result;
}

uint64_t sub_1A2C6E16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E1CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E28C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityRequest.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityRequest(0) + 68);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ActivityRequest.contentSourceRequests.getter()
{
  type metadata accessor for ActivityRequest(0);

  return result;
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

uint64_t sub_1A2C6E3F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A2C6E42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

double ActivityRequest.sceneTargets.getter()
{
  type metadata accessor for ActivityRequest(0);

  return result;
}

uint64_t sub_1A2C6E4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A2C6E510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t SceneTarget.Request.description.getter(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return 0xD00000000000001FLL;
      }

      else
      {
        sub_1A2C66A98(a1, a2);
        return a1;
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1A2D08864();

    v6 = 0x80000001A2D1AD20;
    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = a2;
    }

    if (a2 == 1)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 1)
    {
      v9 = 0x80000001A2D1AD00;
    }

    else
    {
      v9 = v6;
    }

    v10 = sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v8, v9, v10);

    MEMORY[0x1A58E4150](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }
}

uint64_t ActivityRequest.attributesData.getter()
{
  v1 = *(v0 + 32);
  sub_1A2C5E63C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1A2C6E6EC(uint64_t result, int a2, int a3)
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

uint64_t ActivityRequest.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityRequest(0) + 40));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

double ActivityRequest.copy(withPresentationOptions:)@<D0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v29 = *a1;
  v30 = *(a1 + 2);
  v25 = v2[3];
  v5 = v2[5];
  v26 = v2[4];
  v27 = v2[2];
  v6 = type metadata accessor for ActivityRequest(0);
  sub_1A2C69790(v2 + v6[7], &a2[v6[7]], type metadata accessor for OpaqueActivityContent);
  v7 = *(v2 + v6[8]);
  v8 = *(v2 + v6[9]);
  v22 = *(v2 + v6[11]);
  v23 = *(v2 + v6[14]);
  v24 = *(v2 + v6[12]);
  v9 = *(v2 + v6[15]);
  v10 = v2[1];
  v19 = *v2;
  v20 = *(v2 + v6[16]);
  v21 = *(v2 + v6[13]);
  v11 = v6[17];
  v12 = sub_1A2D07F94();
  (*(*(v12 - 8) + 16))(&a2[v11], v2 + v11, v12);
  v13 = (v2 + v6[18]);
  v14 = *v13;
  v15 = v13[1];
  *(a2 + 2) = v27;
  *(a2 + 3) = v25;
  *(a2 + 4) = v26;
  *(a2 + 5) = v5;
  *&a2[v6[8]] = v7;
  *&a2[v6[9]] = v8;
  v16 = &a2[v6[10]];
  *(v16 + 2) = *(a1 + 2);
  *v16 = *a1;
  *&a2[v6[11]] = v22;
  a2[v6[12]] = v24;
  a2[v6[13]] = v21;
  a2[v6[14]] = v23;
  a2[v6[15]] = v9;
  *a2 = v19;
  *(a2 + 1) = v10;
  a2[v6[16]] = v20;
  v17 = &a2[v6[18]];
  *v17 = v14;
  *(v17 + 1) = v15;

  sub_1A2C5E63C(v26, v5);

  sub_1A2C66F58(&v29, v28);

  return result;
}

void sub_1A2C6E9DC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return;
  }

LABEL_9:
  v12 = objc_opt_self();
  v13 = [v12 bytes];
  sub_1A2C72100();
  sub_1A2D07D94();
  v14 = [v12 bytes];
  sub_1A2D07D94();
  sub_1A2C56A78(&qword_1ED7090C0, &qword_1EB0A1A40, &qword_1A2D15658, MEMORY[0x1E6968088]);
  if (sub_1A2D08414())
  {
    type metadata accessor for ActivityPayloadError(0);
    sub_1A2C75024(&qword_1EB0A1A90, type metadata accessor for ActivityPayloadError, &protocol conformance descriptor for ActivityPayloadError);
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
    v18 = *(v5 + 16);
    v18(v16, v10, v4);
    v18(v16 + v17, v7, v4);
    swift_willThrow();
  }

  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
}

uint64_t OpaqueActivityContent.staleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpaqueActivityContent(0) + 20);

  return sub_1A2C7214C(v3, a1);
}

uint64_t OpaqueActivityPayload.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpaqueActivityPayload(0) + 20);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1A2C6EDCC()
{
  result = qword_1ED709168;
  if (!qword_1ED709168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709168);
  }

  return result;
}

uint64_t sub_1A2C6EE20()
{
  if (*v0)
  {
    return 0x7365676E616863;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1A2C6EE60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
    sub_1A2C60E08(a2, type metadata accessor for ActivityChange.Change, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityChange.Change.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C50, &qword_1A2D0D4A8);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v29 - v3;
  v34 = type metadata accessor for OpaqueActivityPayload(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C58, &qword_1A2D0D4B0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v29 - v6;
  v30 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C60, &qword_1A2D0D4B8);
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ActivityChange.Change(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C68, &qword_1A2D0D4C0);
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C72504();
  sub_1A2D08C74();
  sub_1A2C72558(v39, v14, type metadata accessor for ActivityChange.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A2C72690(v14, v8, type metadata accessor for ActivityDescriptor);
      v44 = 1;
      sub_1A2C6F514();
      v19 = v31;
      v20 = v41;
      sub_1A2D08A84();
      sub_1A2C60E08(&qword_1ED708D60, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
      v21 = v33;
      sub_1A2D08AE4();
      (*(v32 + 8))(v19, v21);
      v22 = type metadata accessor for ActivityDescriptor;
      v23 = v8;
    }

    else
    {
      v25 = v35;
      sub_1A2C72690(v14, v35, type metadata accessor for OpaqueActivityPayload);
      v45 = 2;
      sub_1A2C7495C();
      v26 = v36;
      v20 = v41;
      sub_1A2D08A84();
      sub_1A2C60E08(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
      v27 = v38;
      sub_1A2D08AE4();
      (*(v37 + 8))(v26, v27);
      v22 = type metadata accessor for OpaqueActivityPayload;
      v23 = v25;
    }

    sub_1A2C74070(v23, v22);
  }

  else
  {
    v24 = *v14;
    v43 = 0;
    sub_1A2C740D0();
    v20 = v41;
    sub_1A2D08A84();
    v42 = v24;
    sub_1A2C74124();
    sub_1A2D08AE4();
    (*(v29 + 8))(v11, v9);
  }

  return (*(v40 + 8))(v17, v20);
}

unint64_t sub_1A2C6F514()
{
  result = qword_1ED7091B8;
  if (!qword_1ED7091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091B8);
  }

  return result;
}

uint64_t ActivityDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F70, &unk_1A2D17D90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6FCAC();
  sub_1A2D08C74();
  LOBYTE(v44) = 0;
  sub_1A2D08AB4();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = *(v3 + 24);
  v44 = *(v3 + 16);
  v45 = v9;
  LOBYTE(v41[0]) = 1;
  sub_1A2C6ABA0();

  sub_1A2D08AE4();

  v10 = *(v3 + 40);
  v44 = *(v3 + 32);
  v45 = v10;
  LOBYTE(v41[0]) = 2;
  sub_1A2C5E63C(v44, v10);
  sub_1A2C669D0();
  sub_1A2D08AE4();
  result = sub_1A2C55840(v44, v45);
  v12 = *(v3 + 88);
  if (*(v12 + 16))
  {
    result = sub_1A2C66BC0(0);
    if (v13)
    {
      v14 = *(v12 + 56) + 48 * result;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      v18 = *(v14 + 32);
      v19 = *(v14 + 40);
      v44 = *v14;
      v45 = v15;
      v46 = v16;
      v47 = v17;
      v48 = v18;
      v49 = v19;
      v43 = 3;
      sub_1A2C72A00(v44, v15, v16, v17, v18);
      sub_1A2C72AB0();
      sub_1A2D08AE4();
      sub_1A2C732E4(v44, v45, v46, v47, v48);
      v20 = *(v3 + 64);
      v41[0] = *(v3 + 48);
      v41[1] = v20;
      v42 = *(v3 + 80);
      v21 = *(v3 + 64);
      v38 = *(v3 + 48);
      v39 = v21;
      v40 = *(v3 + 80);
      v37 = 4;
      sub_1A2C73320(v41, v35);
      sub_1A2C72F38();
      sub_1A2D08AE4();
      v35[0] = v38;
      v35[1] = v39;
      v36 = v40;
      sub_1A2C7337C(v35);
      *&v31 = v12;
      LOBYTE(v29) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
      sub_1A2C733D0(&unk_1ED708B88, sub_1A2CAA9F0, sub_1A2C72AB0, MEMORY[0x1E69E5E38]);
      sub_1A2D08AE4();
      *&v31 = *(v3 + 96);
      LOBYTE(v29) = 6;
      sub_1A2D08AE4();
      v34 = *(v3 + 104);
      v33 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
      sub_1A2C73460(&qword_1ED708D78, sub_1A2D06B34, MEMORY[0x1E69E6300]);
      sub_1A2D08AE4();
      v31 = *(v3 + 112);
      v32 = *(v3 + 128);
      v29 = *(v3 + 112);
      v30 = *(v3 + 128);
      v28 = 8;
      sub_1A2C66F58(&v31, &v26);
      sub_1A2C6B09C();
      sub_1A2D08AE4();
      v26 = v29;
      v27 = v30;
      sub_1A2C69EAC(&v26);
      LOBYTE(v25) = 9;
      sub_1A2D08AC4();
      LOBYTE(v25) = 10;
      sub_1A2D08AC4();
      LOBYTE(v25) = 11;
      sub_1A2D08AC4();
      v22 = type metadata accessor for ActivityDescriptor(0);
      LOBYTE(v25) = 12;
      sub_1A2D07F94();
      sub_1A2C60E98(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1A2D08AE4();
      v25 = *(v3 + v22[16]);
      v24 = 13;
      sub_1A2C73B10();
      sub_1A2D08AE4();
      v25 = *(v3 + v22[17]);
      v24 = 14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
      sub_1A2C6A794();
      sub_1A2D08AE4();
      LOBYTE(v25) = *(v3 + v22[18]);
      v24 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
      sub_1A2CEC60C();
      sub_1A2D08AE4();
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2C6FCAC()
{
  result = qword_1ED7097C8;
  if (!qword_1ED7097C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097C8);
  }

  return result;
}

uint64_t sub_1A2C6FD00(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueActivityContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ActivityKit::ActivityPresentationOptions::ActivityPresentationDestination_optional __swiftcall ActivityPresentationOptions.ActivityPresentationDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A2D089C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationOptions.ActivityPresentationDestination(unsigned __int8 *a1, unsigned int a2)
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

void *sub_1A2C6FEA8(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1860, &qword_1A2D14780);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1868, &qword_1A2D14788);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1870, &unk_1A2D14790);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = a1[3];
  v36 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1A2C6D588();
  v13 = v30;
  sub_1A2D08C64();
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = v3;
  v30 = v8;
  v15 = v10;
  v16 = sub_1A2D08A64();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_1A2C6D870();
  v19 = v7;
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = sub_1A2D088A4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v24 = &type metadata for SceneTarget.Request;
    v12 = v15;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v30 + 8))(v15, v7);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v12;
  }

  v26[3] = v18;
  if (v18)
  {
    LOBYTE(v31) = 1;
    sub_1A2C6D5DC();
    sub_1A2D089D4();
    v20 = v30;
    sub_1A2C6D8A8();
    v21 = v27;
    sub_1A2D08A54();
    (*(v29 + 8))(v14, v21);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1A2CE9948();
    sub_1A2D089D4();
    v20 = v30;
    sub_1A2C6D8A8();
    sub_1A2D08A54();
    (*(v28 + 8))(v6, v4);
  }

  (*(v20 + 8))(v15, v19);
  swift_unknownObjectRelease();
  v12 = v31;
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v12;
}

void *sub_1A2C703D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2C6FEA8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2C704A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A2C704D4(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1840, &qword_1A2D14760);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1848, &qword_1A2D14768);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1850, &qword_1A2D14770);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1858, &qword_1A2D14778);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v36 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A2C6AC28();
  v14 = v35;
  sub_1A2D08C64();
  if (v14)
  {
    goto LABEL_11;
  }

  v28 = v5;
  v35 = 0;
  v16 = v33;
  v15 = v34;
  v17 = sub_1A2D08A64();
  v18 = (2 * *(v17 + 16)) | 1;
  v37 = v17;
  v38 = v17 + 32;
  v39 = 0;
  v40 = v18;
  v19 = sub_1A2C6D930();
  v13 = v11;
  if (v19 == 3 || v39 != v40 >> 1)
  {
    v21 = sub_1A2D088A4();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v23 = &type metadata for ProcessDescriptor.Request;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
LABEL_9:
    (*(v9 + 8))(v13, v8);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!v19)
  {
    v41 = 0;
    sub_1A2CE9D78();
    v25 = v35;
    sub_1A2D089D4();
    if (!v25)
    {
      (*(v30 + 8))(v7, v28);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v19 == 1)
  {
    v41 = 1;
    sub_1A2CE9D24();
    v20 = v35;
    sub_1A2D089D4();
    if (!v20)
    {
      (*(v31 + 8))(v4, v29);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  v41 = 2;
  sub_1A2C6AC7C();
  v26 = v35;
  sub_1A2D089D4();
  if (!v26)
  {
    v13 = sub_1A2D08A24();
    (*(v32 + 8))(v16, v15);
  }

  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v13;
}

void *sub_1A2C70ADC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A2C704D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A2C70B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50746E6572727563 && a2 == 0xEE00737365636F72;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A2D1ADF0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1AE10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2C70C38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2C70C74(uint64_t a1, unsigned __int8 a2)
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

unint64_t sub_1A2C70D80()
{
  result = qword_1ED7096E0;
  if (!qword_1ED7096E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096E0);
  }

  return result;
}

unint64_t sub_1A2C70DD4()
{
  result = qword_1ED709510;
  if (!qword_1ED709510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709510);
  }

  return result;
}

uint64_t sub_1A2C70E58(uint64_t a1)
{
  v2 = sub_1A2C6B53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t ActivityAuthorizationOptionsType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F18, &qword_1A2D17758);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F20, &qword_1A2D17760);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F28, &qword_1A2D17768);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F30, &qword_1A2D17770);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F38, &unk_1A2D17778);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A2C6BBF8();
  v15 = v46;
  sub_1A2D08C64();
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
    v22 = sub_1A2D08A64();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1A2C6E0DC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1A2D088A4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v28 = &type metadata for ActivityAuthorizationOptionsType;
      sub_1A2D089E4();
      sub_1A2D08894();
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
        sub_1A2D02608();
        v32 = v35;
        sub_1A2D089D4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1A2D0265C();
        v25 = v35;
        sub_1A2D089D4();
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
      sub_1A2D025B4();
      v31 = v35;
      sub_1A2D089D4();
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
      sub_1A2C6BC4C();
      v33 = v35;
      sub_1A2D089D4();
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

uint64_t sub_1A2C71508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265507473726966 && a2 == 0xEF6E6F697373696DLL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D1B540 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B560 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974704F6F6ELL && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2C71688()
{
  v1 = 0x7265507473726966;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974704F6F6ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1A2C71734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OpaqueActivityContent(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit0A13ContentSourceO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

double ActivityRequest.alertSceneTargets.getter()
{
  type metadata accessor for ActivityRequest(0);

  return result;
}

uint64_t ActivityRequest.isCustomSceneBacked.getter()
{
  result = type metadata accessor for ActivityRequest(0);
  v2 = 0;
  v3 = *(v0 + *(result + 32));
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + 24 * (v9 | (v8 << 6)) + 16))
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  v10 = 0;
  v11 = *(v0 + *(result + 36));
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v10;
LABEL_21:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    if (*(*(v11 + 56) + 24 * (v17 | (v16 << 6)) + 16) == 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      return 0;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s11ActivityKit0A6CenterC23liveActivitiesSupportedSbvgZ_0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v3 = 0x24Au >> deviceClassNumber;
    if (deviceClassNumber >= 0xA)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if (qword_1EB09F588 != -1)
    {
      swift_once();
    }

    v4 = sub_1A2D08094();
    __swift_project_value_buffer(v4, qword_1EB09F590);
    v5 = sub_1A2D08074();
    v6 = sub_1A2D08684();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A2C51000, v5, v6, "Unable to determine device class from MobileGestalt - defaulting to live activities not supported", v7, 2u);
      MEMORY[0x1A58E5180](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t ProcessDescriptor.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A2C71BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E65;
  v3 = 0x657263736B636F6CLL;
  v4 = a1;
  v5 = 0x657263536C6C7566;
  v6 = 0xE700000000000000;
  v7 = 0x746E6569626D61;
  if (a1 != 4)
  {
    v7 = 0x79616C50726163;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656E6E6162;
  if (a1 != 1)
  {
    v9 = 0x70416D6574737973;
    v8 = 0xEE00657275747265;
  }

  if (!a1)
  {
    v9 = 0x657263736B636F6CLL;
    v8 = 0xEA00000000006E65;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if (v10 != 0x657263536C6C7566)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x746E6569626D61)
        {
          goto LABEL_32;
        }
      }

      else if (v10 != 0x79616C50726163)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x72656E6E6162)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x70416D6574737973;
      v2 = 0xEE00657275747265;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1A2D08B34();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t OpaqueActivityPayload.init(timestamp:content:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for OpaqueActivityPayload(0);
  v8 = v7[8];
  v9 = type metadata accessor for AlertConfiguration(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = v7[9];
  v11 = sub_1A2D07F94();
  v12 = *(v11 - 8);
  (*(v12 + 56))(a4 + v10, 1, 1, v11);
  *(a4 + v7[10]) = 0;
  sub_1A2D07FB4();
  v21 = a1;
  (*(v12 + 16))(a4 + v7[5], a1, v11);
  v13 = *a2;
  v14 = a2[1];
  v15 = (a4 + v7[6]);
  *v15 = *a2;
  v15[1] = v14;
  v16 = a4 + v7[7];
  sub_1A2C72030(a2, v16, type metadata accessor for OpaqueActivityContent);
  sub_1A2C5E63C(v13, v14);
  sub_1A2C72098(a3, a4 + v8, &qword_1EB0A04D0, &unk_1A2D15640);
  v17 = type metadata accessor for OpaqueActivityContent(0);
  sub_1A2C72098(a2 + *(v17 + 20), a4 + v10, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6E9DC(*v16, *(v16 + 8));
  sub_1A2C54E38(a3, &qword_1EB0A04D0, &unk_1A2D15640);
  sub_1A2C6E28C(a2, type metadata accessor for OpaqueActivityContent);
  if (!v20)
  {
    return (*(v12 + 8))(v21, v11);
  }

  (*(v12 + 8))(v21, v11);
  return sub_1A2C6E28C(a4, type metadata accessor for OpaqueActivityPayload);
}

uint64_t sub_1A2C72030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A2C72100()
{
  result = qword_1ED708EE0;
  if (!qword_1ED708EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED708EE0);
  }

  return result;
}

uint64_t sub_1A2C7214C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ActivityDescriptor.init(id:attributesType:attributesData:sceneTargets:alertSceneTargets:requester:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:localizedAppName:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20)
{
  v22 = *a3;
  v23 = a3[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v22;
  *(a9 + 24) = v23;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 112) = *a10;
  *(a9 + 128) = *(a10 + 16);
  *(a9 + 104) = a11;
  *(a9 + 136) = a12;
  *(a9 + 137) = a13;
  *(a9 + 138) = a14;
  v24 = type metadata accessor for ActivityDescriptor(0);
  v25 = v24[15];
  v26 = sub_1A2D07F94();
  (*(*(v26 - 8) + 32))(a9 + v25, a15, v26);
  v27 = (a9 + v24[16]);
  *v27 = a16;
  v27[1] = a17;
  v28 = (a9 + v24[17]);
  *v28 = a19;
  v28[1] = a20;
  *(a9 + v24[18]) = a18;
  *(a9 + 80) = *(a8 + 32);
  result = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = result;
  return result;
}

uint64_t ActivityChange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C90, &qword_1A2D0D4F0);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6EDCC();
  sub_1A2D08C74();
  v13 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
    sub_1A2C6EE60(&qword_1EB09EE88, &qword_1EB09EFE8, &protocol conformance descriptor for ActivityChange.Change, MEMORY[0x1E69E6300]);
    sub_1A2D08AE4();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1A2C72504()
{
  result = qword_1ED7091F8;
  if (!qword_1ED7091F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091F8);
  }

  return result;
}

uint64_t sub_1A2C72558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C725C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C726F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72760()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617473;
  }
}

unint64_t sub_1A2C727C4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x5472657474616C70;
      break;
    case 4:
      result = 0x6574736575716572;
      break;
    case 5:
      result = 0x726154656E656373;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x53746E65746E6F63;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x656D656870457369;
      break;
    case 10:
      result = 0x746E656D6F4D7369;
      break;
    case 11:
      result = 0x74726F706D497369;
      break;
    case 12:
      result = 0x4464657461657263;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x69746365746F7270;
      break;
    default:
      return result;
  }

  return result;
}

double sub_1A2C72A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return result;
}

uint64_t sub_1A2C72A3C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1A2C72A88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_1A2C72AB0()
{
  result = qword_1ED708D88;
  if (!qword_1ED708D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D88);
  }

  return result;
}

uint64_t SceneTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1778, &qword_1A2D135E8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1780, &qword_1A2D135F0);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1788, &qword_1A2D135F8);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = v1[1];
  v29 = *v1;
  v30 = v11;
  v12 = *(v1 + 4);
  v13 = v1[4];
  v31 = v1[3];
  v32 = v13;
  v14 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C72E90();
  sub_1A2D08C74();
  v15 = (v12 >> 8) & 1;
  v16 = v12 & 1;
  v17 = HIWORD(v12) & 1;
  v18 = HIBYTE(v12) & 1;
  if (v14)
  {
    LOBYTE(v35) = 1;
    sub_1A2C72EE4();
    v19 = v26;
    v20 = v34;
    sub_1A2D08A84();
    v35 = v29;
    v36 = v30;
    LOBYTE(v37) = v16;
    HIBYTE(v37) = v15;
    v38 = v17;
    v39 = v18;
    v40 = v31;
    v41 = v32;
    sub_1A2C72F38();
    v21 = v28;
    sub_1A2D08AE4();
    (*(v27 + 8))(v19, v21);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_1A2CE9CD0();
    v20 = v34;
    sub_1A2D08A84();
    v35 = v29;
    v36 = v30;
    v37 = v12 & 0x101;
    v38 = BYTE2(v12) & 1;
    v39 = HIBYTE(v12) & 1;
    v40 = v31;
    v41 = v32;
    sub_1A2C72F38();
    v22 = v25;
    sub_1A2D08AE4();
    (*(v24 + 8))(v7, v22);
  }

  return (*(v33 + 8))(v10, v20);
}

unint64_t sub_1A2C72E90()
{
  result = qword_1ED709698;
  if (!qword_1ED709698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709698);
  }

  return result;
}

unint64_t sub_1A2C72EE4()
{
  result = qword_1ED708F60[0];
  if (!qword_1ED708F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED708F60);
  }

  return result;
}

unint64_t sub_1A2C72F38()
{
  result = qword_1ED708D80;
  if (!qword_1ED708D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D80);
  }

  return result;
}

uint64_t ProcessDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17C8, &qword_1A2D13640);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 17);
  v19 = v7;
  v8 = *(v1 + 18);
  v16 = *(v1 + 19);
  v17 = v8;
  v15 = *(v1 + 24);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1A2C731E8();
  sub_1A2D08C74();
  v26 = 0;
  v13 = v20;
  sub_1A2D08AB4();
  if (v13)
  {
    return (*(v4 + 8))(v6, v12);
  }

  v25 = 1;
  sub_1A2D08AC4();
  v24 = 2;
  sub_1A2D08AC4();
  v23 = 3;
  sub_1A2D08AC4();
  v22 = 4;
  sub_1A2D08AC4();
  v21 = 5;
  sub_1A2D08A94();
  return (*(v4 + 8))(v6, v12);
}

unint64_t sub_1A2C731E8()
{
  result = qword_1ED709660;
  if (!qword_1ED709660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709660);
  }

  return result;
}

unint64_t sub_1A2C7323C()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 4)
  {
    v3 = 0xD000000000000022;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A2C732E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_1A2C733D0(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0738, &qword_1A2D0BB60);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C73460(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityContentSource.encode(to:)(void *a1)
{
  v2 = v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1550, &qword_1A2D11870);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v23 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1558, &qword_1A2D11878);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1560, &qword_1A2D11880);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1568, &qword_1A2D11888);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = v2[1];
  v32 = *v2;
  v33 = v13;
  v14 = v2[3];
  v34 = v2[2];
  v35 = v14;
  v36 = *(v2 + 32);
  v15 = v2[6];
  v25 = v2[5];
  v24 = v15;
  v16 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C739AC();
  sub_1A2D08C74();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v39) = 1;
      sub_1A2C73A00();
      v17 = v38;
      sub_1A2D08A84();
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
      v43 = v36;
      *v44 = *(v2 + 33);
      *&v44[3] = *(v2 + 9);
      sub_1A2C72F38();
      v18 = v31;
      sub_1A2D08AE4();
      (*(v29 + 8))(v6, v18);
      return (*(v37 + 8))(v12, v17);
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_1A2C73ABC();
      v21 = v27;
      v22 = v38;
      sub_1A2D08A84();
      (*(v28 + 8))(v21, v30);
      return (*(v37 + 8))(v12, v22);
    }
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1A2CE4A2C();
    v20 = v38;
    sub_1A2D08A84();
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v45 = v25;
    v46 = v24;
    sub_1A2CE4A80();
    sub_1A2D08AE4();
    (*(v26 + 8))(v9, v7);
    return (*(v37 + 8))(v12, v20);
  }
}

unint64_t sub_1A2C739AC()
{
  result = qword_1ED7097A8;
  if (!qword_1ED7097A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097A8);
  }

  return result;
}

unint64_t sub_1A2C73A00()
{
  result = qword_1ED709768;
  if (!qword_1ED709768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709768);
  }

  return result;
}

uint64_t sub_1A2C73A54()
{
  v1 = 0x737365636F7270;
  if (*v0 != 1)
  {
    v1 = 1668184435;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752397168;
  }
}

unint64_t sub_1A2C73ABC()
{
  result = qword_1ED709780;
  if (!qword_1ED709780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709780);
  }

  return result;
}

unint64_t sub_1A2C73B10()
{
  result = qword_1ED708CB8;
  if (!qword_1ED708CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CB8);
  }

  return result;
}

uint64_t DeviceIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F50, &qword_1A2D17D68);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F58, &qword_1A2D17D70);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F60, &qword_1A2D17D78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C73E74();
  v14 = v20;
  sub_1A2D08C74();
  if (v14)
  {
    v22 = 1;
    sub_1A2D06AE0();
    sub_1A2D08A84();
    sub_1A2D08AB4();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_1A2C73EC8();
    sub_1A2D08A84();
    (*(v16 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A2C73E74()
{
  result = qword_1ED709568;
  if (!qword_1ED709568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709568);
  }

  return result;
}

unint64_t sub_1A2C73EC8()
{
  result = qword_1ED709550;
  if (!qword_1ED709550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709550);
  }

  return result;
}

uint64_t sub_1A2C73F1C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1A2C73F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C73FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C74010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C74070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A2C740D0()
{
  result = qword_1ED7091E0;
  if (!qword_1ED7091E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091E0);
  }

  return result;
}

unint64_t sub_1A2C74124()
{
  result = qword_1EB09EFF0;
  if (!qword_1EB09EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFF0);
  }

  return result;
}

uint64_t ActivityState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1180, &qword_1A2D0F3B0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1188, &qword_1A2D0F3B8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1190, &qword_1A2D0F3C0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1198, &qword_1A2D0F3C8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11A0, &qword_1A2D0F3D0);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11A8, &qword_1A2D0F3D8);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A2C746D0();
  sub_1A2D08C74();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A2C74724();
      v31 = v45;
      sub_1A2D08A84();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A2CD18DC();
      v31 = v45;
      sub_1A2D08A84();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A2CD1888();
      v22 = v33;
      v23 = v45;
      sub_1A2D08A84();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A2C957C4();
      v22 = v36;
      v23 = v45;
      sub_1A2D08A84();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A2CD1834();
      v22 = v39;
      v23 = v45;
      sub_1A2D08A84();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1A2C746D0()
{
  result = qword_1ED709250;
  if (!qword_1ED709250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709250);
  }

  return result;
}

unint64_t sub_1A2C74724()
{
  result = qword_1ED709228;
  if (!qword_1ED709228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709228);
  }

  return result;
}

uint64_t sub_1A2C74778()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E65;
  v4 = 0x657373696D736964;
  if (v1 != 3)
  {
    v4 = 0x656C617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657669746361;
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

uint64_t storeEnumTagSinglePayload for MockPushError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockPushError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1A2C7495C()
{
  result = qword_1ED7090D0;
  if (!qword_1ED7090D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090D0);
  }

  return result;
}

uint64_t OpaqueActivityPayload.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = v28 - v5;
  v6 = type metadata accessor for AlertConfiguration(0);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A80, &qword_1A2D15688);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C74FD0();
  sub_1A2D08C74();
  LOBYTE(v33) = 4;
  sub_1A2D07FC4();
  sub_1A2C75024(&qword_1EB09F670, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v13 = v2;
  v14 = v32;
  sub_1A2D08AE4();
  if (v14)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v32 = v6;
  v29 = v8;
  v15 = type metadata accessor for OpaqueActivityPayload(0);
  LOBYTE(v33) = 0;
  sub_1A2D07F94();
  sub_1A2C75024(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v16 = v12;
  sub_1A2D08AE4();
  v17 = (v2 + v15[6]);
  v18 = v17[1];
  v33 = *v17;
  v34 = v18;
  v35 = 1;
  sub_1A2C5E63C(v33, v18);
  v19 = sub_1A2C669D0();
  sub_1A2D08AE4();
  v28[0] = v19;
  sub_1A2C55840(v33, v34);
  v28[1] = v15[7];
  LOBYTE(v33) = 2;
  type metadata accessor for OpaqueActivityContent(0);
  sub_1A2C75024(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  sub_1A2D08AE4();
  LOBYTE(v33) = 5;
  sub_1A2D08AA4();
  LOBYTE(v33) = 6;
  sub_1A2D08AC4();
  v21 = v16;
  v22 = v9;
  v23 = v31;
  sub_1A2C6BD18(v13 + v15[8], v31, &qword_1EB0A04D0, &unk_1A2D15640);
  if ((*(v30 + 48))(v23, 1, v32) == 1)
  {
    (*(v10 + 8))(v21, v9);
    return sub_1A2C54E38(v23, &qword_1EB0A04D0, &unk_1A2D15640);
  }

  else
  {
    v24 = v29;
    sub_1A2C67248(v23, v29, type metadata accessor for AlertConfiguration);
    sub_1A2D07D84();
    swift_allocObject();
    sub_1A2D07D74();
    sub_1A2C75024(&qword_1EB09F308, type metadata accessor for AlertConfiguration, &protocol conformance descriptor for AlertConfiguration);
    v33 = sub_1A2D07D64();
    v34 = v25;
    v35 = 3;
    v26 = v33;
    v27 = v25;
    sub_1A2D08AE4();

    sub_1A2C6E28C(v24, type metadata accessor for AlertConfiguration);
    (*(v10 + 8))(v21, v22);
    return sub_1A2C55840(v26, v27);
  }
}

unint64_t sub_1A2C74FD0()
{
  result = qword_1ED709088;
  if (!qword_1ED709088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709088);
  }

  return result;
}

uint64_t sub_1A2C75024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t storeEnumTagSinglePayload for AlertPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AlertPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2C751AC()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x746144656C617473;
  if (v1 != 5)
  {
    v3 = 0x7974746168437369;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 25705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x53746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x746E65746E6F63;
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

uint64_t OpaqueActivityContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1218, &qword_1A2D0FAF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D3E8();
  sub_1A2D08C74();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1A2C5E63C(v12, v9);
  sub_1A2C669D0();
  sub_1A2D08AE4();
  sub_1A2C55840(v12, v13);
  if (!v2)
  {
    type metadata accessor for OpaqueActivityContent(0);
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    sub_1A2C7548C();
    sub_1A2D08AE4();
    LOBYTE(v12) = 2;
    sub_1A2D08AD4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A2C7548C()
{
  result = qword_1ED708B48;
  if (!qword_1ED708B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    sub_1A2C6D4B0(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B48);
  }

  return result;
}

uint64_t sub_1A2C75678()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C756B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v3 = sub_1A2D07F44();
    v5 = v4;
    sub_1A2C62624();
    sub_1A2D07E64();
    sub_1A2C55840(v3, v5);

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

uint64_t ActivityChange.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CA0, qword_1A2D0D500);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6EDCC();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1A2D08A24();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
  v16 = 1;
  sub_1A2C6EE60(&unk_1ED708EE8, &qword_1ED708FE8, &protocol conformance descriptor for ActivityChange.Change, MEMORY[0x1E69E6330]);
  sub_1A2D08A54();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityChange.Change.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C70, &qword_1A2D0D4C8);
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v65 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C78, &qword_1A2D0D4D0);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v51 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C80, &qword_1A2D0D4D8);
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C88, &unk_1A2D0D4E0);
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v51 - v6;
  v8 = type metadata accessor for ActivityChange.Change(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1A2C72504();
  v21 = v68;
  sub_1A2D08C64();
  if (!v21)
  {
    v51 = v16;
    v52 = v13;
    v22 = v61;
    v23 = v62;
    v53 = v10;
    v54 = v19;
    v24 = v64;
    v25 = v65;
    v55 = 0;
    v68 = v8;
    v26 = v66;
    v27 = v63;
    v28 = sub_1A2D08A64();
    v29 = (2 * *(v28 + 16)) | 1;
    v70 = v28;
    v71 = v28 + 32;
    v72 = 0;
    v73 = v29;
    v30 = sub_1A2C6D930();
    v31 = v27;
    if (v30 == 3 || v72 != v73 >> 1)
    {
      v38 = sub_1A2D088A4();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v40 = v68;
      v33 = v31;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
    }

    else
    {
      if (!v30)
      {
        v74 = 0;
        sub_1A2C740D0();
        v42 = v55;
        sub_1A2D089D4();
        if (!v42)
        {
          sub_1A2C78A64();
          sub_1A2D08A54();
          (*(v56 + 8))(v22, v23);
          (*(v67 + 8))(v7, v27);
          swift_unknownObjectRelease();
          v48 = v51;
          *v51 = v74;
          swift_storeEnumTagMultiPayload();
          v49 = v54;
          sub_1A2C72690(v48, v54, type metadata accessor for ActivityChange.Change);
          v35 = v26;
LABEL_18:
          sub_1A2C72690(v49, v35, type metadata accessor for ActivityChange.Change);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        (*(v67 + 8))(v7, v27);
        goto LABEL_10;
      }

      if (v30 == 1)
      {
        v74 = 1;
        sub_1A2C6F514();
        v32 = v24;
        v33 = v31;
        v34 = v55;
        sub_1A2D089D4();
        if (!v34)
        {
          v35 = v26;
          type metadata accessor for ActivityDescriptor(0);
          sub_1A2C60E08(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
          v36 = v52;
          v37 = v57;
          sub_1A2D08A54();
          (*(v59 + 8))(v32, v37);
          (*(v67 + 8))(v7, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v36;
LABEL_17:
          v49 = v54;
          sub_1A2C72690(v50, v54, type metadata accessor for ActivityChange.Change);
          goto LABEL_18;
        }
      }

      else
      {
        v74 = 2;
        sub_1A2C7495C();
        v43 = v25;
        v33 = v27;
        v44 = v55;
        sub_1A2D089D4();
        if (!v44)
        {
          v35 = v26;
          type metadata accessor for OpaqueActivityPayload(0);
          sub_1A2C60E08(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload, &protocol conformance descriptor for OpaqueActivityPayload);
          v45 = v53;
          v46 = v58;
          sub_1A2D08A54();
          v47 = v67;
          (*(v60 + 8))(v43, v46);
          (*(v47 + 8))(v7, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v45;
          goto LABEL_17;
        }
      }
    }

    (*(v67 + 8))(v7, v33);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1A2C762C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2C762F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2C762F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t ActivityDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = sub_1A2D07F94();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F80, &qword_1A2D17DB8);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6FCAC();
  v11 = v55;
  sub_1A2D08C64();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v4;
  v12 = v44;
  v40 = v8;
  v55 = v10;
  LOBYTE(v51) = 0;
  v13 = sub_1A2D08A24();
  v15 = v55;
  *v55 = v13;
  *(v15 + 1) = v16;
  v38 = v16;
  LOBYTE(v48) = 1;
  sub_1A2C6CDD0();
  sub_1A2D08A54();
  v17 = v7;
  v18 = *(&v51 + 1);
  *(v15 + 2) = v51;
  *(v15 + 3) = v18;
  LOBYTE(v48) = 2;
  sub_1A2C6CFD4();
  sub_1A2D08A54();
  v37 = a1;
  *(v15 + 2) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
  LOBYTE(v48) = 5;
  v19 = sub_1A2C733D0(&unk_1ED709440, sub_1A2CAAA44, sub_1A2CAAA98, MEMORY[0x1E69E5E58]);
  sub_1A2D08A14();
  v34 = v19;
  v35 = v17;
  v36 = v5;
  v20 = v51;
  if (!v51)
  {
    LOBYTE(v48) = 3;
    sub_1A2CAAA98();
    sub_1A2D08A54();
    v22 = v53;
    v23 = v54;
    v33 = v51;
    v32 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v25 = inited + 32;
    *(inited + 56) = v32;
    *(inited + 40) = v33;
    *(inited + 72) = v22;
    *(inited + 80) = v23;
    v20 = sub_1A2CAA8B0(inited);
    swift_setDeallocating();
    sub_1A2C54E38(v25, &qword_1EB0A0728, &qword_1A2D0BB50);
    v15 = v55;
  }

  *(v15 + 11) = v20;
  LOBYTE(v48) = 6;
  sub_1A2D08A14();
  v21 = v51;
  if (!v51)
  {
    v21 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  }

  *(v15 + 12) = v21;
  v50 = 4;
  sub_1A2C7774C();
  sub_1A2D08A54();
  v26 = v52;
  *(v15 + 3) = v51;
  *(v15 + 4) = v26;
  *(v15 + 10) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
  LOBYTE(v46) = 7;
  sub_1A2C73460(&qword_1ED709438, sub_1A2D06B88, MEMORY[0x1E69E6330]);
  sub_1A2D08A54();
  v27 = v55;
  *(v55 + 13) = v48;
  v47 = 8;
  sub_1A2C70D80();
  sub_1A2D08A54();
  *(v27 + 7) = v48;
  *(v27 + 16) = v49;
  LOBYTE(v46) = 9;
  v55[136] = sub_1A2D08A34() & 1;
  LOBYTE(v46) = 10;
  v55[137] = sub_1A2D08A34() & 1;
  LOBYTE(v46) = 11;
  v55[138] = sub_1A2D08A34() & 1;
  LOBYTE(v46) = 12;
  sub_1A2C60E98(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1A2D08A54();
  (*(v42 + 32))(&v55[v40[15]], v39, v43);
  v45 = 13;
  sub_1A2C78344();
  sub_1A2D08A54();
  *&v55[v40[16]] = v46;
  LOBYTE(v46) = 14;
  v28 = sub_1A2D089F4();
  v29 = &v55[v40[17]];
  *v29 = v28;
  v29[1] = v30;
  v45 = 15;
  sub_1A2C6E118();
  sub_1A2D08A14();
  (*(v12 + 8))(v35, v36);
  v31 = v55;
  v55[v40[18]] = v46;
  sub_1A2C789A4(v31, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A2C78A08(v31);
}

uint64_t SceneTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1790, &qword_1A2D13600);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1798, &qword_1A2D13608);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17A0, &unk_1A2D13610);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-v12];
  v14 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A2C72E90();
  v15 = v34;
  sub_1A2D08C64();
  if (!v15)
  {
    v34 = v11;
    v16 = v33;
    v17 = sub_1A2D08A64();
    v18 = (2 * *(v17 + 16)) | 1;
    v38 = v17;
    v39 = v17 + 32;
    v40 = 0;
    v41 = v18;
    v19 = sub_1A2C6D870();
    if (v19 == 2 || v40 != v41 >> 1)
    {
      v20 = sub_1A2D088A4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v22 = &type metadata for SceneTarget;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v34 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = v19;
      if (v19)
      {
        LOBYTE(v35) = 1;
        sub_1A2C72EE4();
        sub_1A2D089D4();
        sub_1A2C7774C();
        v24 = v31;
        sub_1A2D08A54();
        (*(v32 + 8))(v6, v24);
        (*(v34 + 8))(v13, v10);
      }

      else
      {
        LOBYTE(v35) = 0;
        sub_1A2CE9CD0();
        sub_1A2D089D4();
        sub_1A2C7774C();
        sub_1A2D08A54();
        v25 = v34;
        (*(v30 + 8))(v9, v7);
        (*(v25 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      v26 = v36;
      v27 = v37;
      *v16 = v35;
      *(v16 + 16) = v26;
      *(v16 + 32) = v27;
      *(v16 + 40) = v29 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_1A2C7774C()
{
  result = qword_1ED709520;
  if (!qword_1ED709520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709520);
  }

  return result;
}

uint64_t ProcessDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17D0, &qword_1A2D13648);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C731E8();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_1A2D08A24();
  v11 = v10;
  v12 = v9;
  LOBYTE(v29[0]) = 1;
  v36 = sub_1A2D08A34();
  LOBYTE(v29[0]) = 2;
  v25 = sub_1A2D08A34();
  LOBYTE(v29[0]) = 3;
  v24 = sub_1A2D08A34();
  LOBYTE(v29[0]) = 4;
  v23 = sub_1A2D08A34();
  v37 = 5;
  v13 = sub_1A2D089F4();
  v22 = v36 & 1;
  v36 = v25 & 1;
  v24 &= 1u;
  v25 = v23 & 1;
  v14 = v13;
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  *&v26 = v12;
  *(&v26 + 1) = v11;
  v18 = v22;
  LOBYTE(v27) = v22;
  BYTE1(v27) = v36;
  v19 = v24;
  BYTE2(v27) = v24;
  BYTE3(v27) = v25;
  *(&v27 + 1) = v14;
  v28 = v17;
  *(a2 + 32) = v17;
  v20 = v27;
  *a2 = v26;
  *(a2 + 16) = v20;
  sub_1A2C73320(&v26, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v12;
  v29[1] = v11;
  v30 = v18;
  v31 = v36;
  v32 = v19;
  v33 = v25;
  v34 = v14;
  v35 = v17;
  return sub_1A2C7337C(v29);
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationOptions.ActivityPresentationDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ActivityContentSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1570, &qword_1A2D11890);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v39[-v3];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1578, &qword_1A2D11898);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v39[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1580, &qword_1A2D118A0);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1588, &qword_1A2D118A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-v11];
  v13 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A2C739AC();
  v14 = v49;
  sub_1A2D08C64();
  if (!v14)
  {
    v15 = v46;
    v16 = v47;
    v41 = 0;
    v49 = v10;
    v17 = v48;
    v18 = sub_1A2D08A64();
    v19 = (2 * *(v18 + 16)) | 1;
    v55 = v18;
    v56 = v18 + 32;
    v57 = 0;
    v58 = v19;
    v20 = sub_1A2C6D930();
    if (v20 == 3 || v57 != v58 >> 1)
    {
      v25 = sub_1A2D088A4();
      swift_allocError();
      v26 = v9;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v28 = &type metadata for ActivityContentSource;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v49 + 8))(v12, v26);
    }

    else
    {
      v40 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v50) = 1;
          sub_1A2C73A00();
          v21 = v5;
          v22 = v41;
          sub_1A2D089D4();
          v23 = v49;
          if (!v22)
          {
            sub_1A2C7774C();
            v24 = v42;
            sub_1A2D08A54();
            (*(v45 + 8))(v21, v24);
            (*(v23 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v35 = v50;
            v36 = v51;
            v37 = v52;
            v38 = v52 & 0xFFFFFFFFFFFFFF00;
LABEL_17:
            v32 = v17;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_1A2C73ABC();
          v31 = v41;
          sub_1A2D089D4();
          v23 = v49;
          if (!v31)
          {
            (*(v16 + 8))(v15, v44);
            (*(v23 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v33 = 0;
            v34 = 0;
            v37 = 0;
            v38 = 0;
            v35 = 0uLL;
            v36 = 0uLL;
            goto LABEL_17;
          }
        }

        (*(v23 + 8))(v12, v9);
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_1A2CE4A2C();
        v30 = v41;
        sub_1A2D089D4();
        if (!v30)
        {
          v32 = v17;
          sub_1A2CE4AD4();
          sub_1A2D08A54();
          (*(v43 + 8))(v8, v6);
          (*(v49 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v38 = 0;
          v35 = v50;
          v36 = v51;
          v37 = v52;
          v33 = v53;
          v34 = v54;
LABEL_18:
          *v32 = v35;
          *(v32 + 16) = v36;
          *(v32 + 32) = v38 | v37;
          *(v32 + 40) = v33;
          *(v32 + 48) = v34;
          *(v32 + 56) = v40;
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        (*(v49 + 8))(v12, v9);
      }
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1A2C78204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2C7822C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2C7822C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752397168 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2C78344()
{
  result = qword_1ED709528;
  if (!qword_1ED709528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709528);
  }

  return result;
}

void *sub_1A2C78398(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FB8, &qword_1A2D18620);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FC0, &qword_1A2D18628);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FC8, &unk_1A2D18630);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A2C73E74();
  v14 = v30;
  sub_1A2D08C64();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_1A2D08A64();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A2C6D870();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1A2D088A4();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v23 = &type metadata for DeviceIdentifier;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1A2D06AE0();
      sub_1A2D089D4();
      v20 = v30;
      v27 = v11;
      v13 = sub_1A2D08A24();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_1A2C73EC8();
      sub_1A2D089D4();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

void *sub_1A2C788A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A2C78398(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A2C788D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2C789A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C78A08(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2C78A64()
{
  result = qword_1ED709020;
  if (!qword_1ED709020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709020);
  }

  return result;
}

uint64_t ActivityState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11C0, &qword_1A2D0F3E0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11C8, &qword_1A2D0F3E8);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11D0, &qword_1A2D0F3F0);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11D8, &qword_1A2D0F3F8);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11E0, &qword_1A2D0F400);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11E8, &unk_1A2D0F408);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A2C746D0();
  v19 = v61;
  sub_1A2D08C64();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1A2D08A64();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1A2C794A0();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1A2D088A4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v34 = &type metadata for ActivityState;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1A2C74724();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1A2D089D4();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1A2CD18DC();
      v37 = v46;
      sub_1A2D089D4();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1A2CD1888();
    v38 = v24;
    v39 = v46;
    sub_1A2D089D4();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1A2CD1834();
    v41 = v56;
    v42 = v46;
    sub_1A2D089D4();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1A2C957C4();
  v31 = v46;
  sub_1A2D089D4();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1A2C792CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2C792F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2C792F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C617473 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A2C794A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OpaqueActivityPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v58 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = v54 - v5;
  v61 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A2D07F94();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A2D07FC4();
  v63 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A88, &qword_1A2D15690);
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = v54 - v11;
  v13 = type metadata accessor for OpaqueActivityPayload(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  v18 = type metadata accessor for AlertConfiguration(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v73 = v17;
  v20(&v15[v17], 1, 1, v18);
  v22 = *(v13 + 36);
  v62 = v8;
  v23 = v8;
  v24 = v74;
  v25 = *(v23 + 56);
  v71 = v15;
  v72 = v22;
  v66 = v7;
  v25(&v15[v22], 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1A2C74FD0();
  v26 = v70;
  sub_1A2D08C64();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    v32 = v71;
    v33 = v72;
    sub_1A2C54E38(&v71[v73], &qword_1EB0A04D0, &unk_1A2D15640);
    return sub_1A2C54E38(&v32[v33], &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v27 = v64;
    v54[1] = v21;
    v55 = v20;
    v56 = v18;
    v70 = v13;
    v28 = v66;
    LOBYTE(v75) = 4;
    sub_1A2C75024(&qword_1ED7090B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v29 = v67;
    v30 = v69;
    v31 = v65;
    sub_1A2D08A54();
    v35 = v30;
    v36 = v71;
    (*(v63 + 32))(v71, v29, v35);
    LOBYTE(v75) = 0;
    sub_1A2C75024(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v37 = v12;
    v38 = v27;
    v39 = v28;
    sub_1A2D08A54();
    v40 = v70;
    v41 = v31;
    (*(v62 + 32))(v36 + *(v70 + 20), v38, v39);
    v76 = 1;
    v42 = sub_1A2C6CFD4();
    v67 = 0;
    sub_1A2D08A54();
    v64 = v42;
    v43 = (v36 + *(v40 + 24));
    *v43 = v75;
    LOBYTE(v75) = 2;
    sub_1A2C75024(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
    v44 = v60;
    sub_1A2D08A54();
    v45 = v41;
    v61 = v43;
    sub_1A2C67248(v44, v36 + *(v40 + 28), type metadata accessor for OpaqueActivityContent);
    LOBYTE(v75) = 5;
    v46 = v59;
    sub_1A2D08A14();
    sub_1A2C7A000(v46, v36 + v72, &qword_1EB0A0E28, &unk_1A2D0EC10);
    LOBYTE(v75) = 6;
    v47 = sub_1A2D08A04();
    v60 = v37;
    *(v36 + *(v70 + 40)) = v47 & 1;
    sub_1A2C6E9DC(*v61, *(v61 + 8));
    v76 = 3;
    sub_1A2D08A14();
    v48 = *(&v75 + 1);
    if (*(&v75 + 1) >> 60 == 15)
    {
      (*(v68 + 8))(v60, v45);
      v49 = v73;
      sub_1A2C54E38(v36 + v73, &qword_1EB0A04D0, &unk_1A2D15640);
      v55(v36 + v49, 1, 1, v56);
    }

    else
    {
      v50 = v75;
      sub_1A2D07D54();
      swift_allocObject();
      sub_1A2D07D44();
      sub_1A2C75024(&qword_1ED708BD8, type metadata accessor for AlertConfiguration, &protocol conformance descriptor for AlertConfiguration);
      v51 = v57;
      v52 = v56;
      sub_1A2D07D34();
      (*(v68 + 8))(v60, v45);

      sub_1A2C5DE40(v50, v48);
      v55(v51, 0, 1, v52);
      sub_1A2C7A000(v51, v36 + v73, &qword_1EB0A04D0, &unk_1A2D15640);
    }

    v53 = v74;
    sub_1A2C72030(v36, v58, type metadata accessor for OpaqueActivityPayload);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_1A2C6E28C(v36, type metadata accessor for OpaqueActivityPayload);
  }
}

uint64_t sub_1A2C7A000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2C7A07C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_1A2D08974();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = (*(v7 + 56) + 24 * v23);
      v27 = v26[1];
      v40 = *v26;
      v41 = *v24;
      v28 = v26[2];
      if ((v39 & 1) == 0)
      {
      }

      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v41;
      v18[1] = v25;
      v19 = (*(v9 + 56) + 24 * v17);
      *v19 = v40;
      v19[1] = v27;
      v19[2] = v28;
      ++*(v9 + 16);
      v7 = v38;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1A2C7A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v201 = a5;
  v211 = a4;
  v208 = a2;
  v209 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v202 = &v178 - v7;
  v8 = type metadata accessor for ActivityDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v178 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v199 = &v178 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v185 = &v178 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v180 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v186 = &v178 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v179 = &v178 - v22;
  v23 = type metadata accessor for OpaqueActivityPayload(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v204 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v178 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v196 = &v178 - v29;
  v30 = type metadata accessor for SubscribedActivity(0);
  v206 = *(v30 - 8);
  v207 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v198 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v189 = &v178 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v197 = &v178 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v184 = (&v178 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v182 = &v178 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v178 - v41;
  v42 = type metadata accessor for ActivityChange.Change(0);
  v205 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v178 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v187 = &v178 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v190 = &v178 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v194 = &v178 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v181 = &v178 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v178 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v203 = &v178 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v191 = &v178 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v183 = &v178 - v64;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = *(a3 + 16);
  v210 = v9;
  v68 = *(v9 + 56);
  v217 = &v178 - v69;
  v214 = v8;
  v68(v66);
  v200 = v24;
  v70 = *(v24 + 56);
  v215 = v23;
  v216 = v58;
  v212 = v70;
  v213 = v24 + 56;
  v70(v58, 1, 1, v23);
  v71 = *(v67 + 16);
  p_cache = &OBJC_METACLASS____TtC11ActivityKit14ActivityCenter.cache;
  if (!v71)
  {
    v79 = 5;
    v80 = v208;
    goto LABEL_19;
  }

  v73 = v67 + ((v205[80] + 32) & ~v205[80]);
  v74 = 5;
  v75 = *(v205 + 9);
  do
  {
    sub_1A2C7BFE4(v73, v47, type metadata accessor for ActivityChange.Change);
    sub_1A2C725C0(v47, v44, type metadata accessor for ActivityChange.Change);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v77 = v217;
        sub_1A2C54E38(v217, &qword_1EB0A0210, &unk_1A2D0ACA0);
        sub_1A2C725C0(v44, v77, type metadata accessor for ActivityDescriptor);
        (v68)(v77, 0, 1, v214);
      }

      else
      {
        v78 = v216;
        sub_1A2C54E38(v216, &qword_1EB0A02E0, &qword_1A2D0AA50);
        sub_1A2C725C0(v44, v78, type metadata accessor for OpaqueActivityPayload);
        v212(v78, 0, 1, v215);
      }
    }

    else
    {
      v74 = *v44;
    }

    v73 += v75;
    --v71;
  }

  while (v71);
  v79 = v74;
  v80 = v208;
  p_cache = (&OBJC_METACLASS____TtC11ActivityKit14ActivityCenter + 16);
  if (v74 != 3)
  {
LABEL_19:
    v101 = p_cache[399];
    v102 = v211;
    swift_beginAccess();
    v103 = *&v101[v102];
    v104 = *(v103 + 16);
    v105 = v209;
    v106 = v210;
    v107 = v215;
    v205 = v101;
    if (v104)
    {

      v108 = sub_1A2C64868(v105, v80);
      if (v109)
      {
        v110 = v189;
        sub_1A2C7BFE4(*(v103 + 56) + *(v206 + 72) * v108, v189, type metadata accessor for SubscribedActivity);

        v111 = v197;
        sub_1A2C725C0(v110, v197, type metadata accessor for SubscribedActivity);
        if (qword_1ED709860 != -1)
        {
          swift_once();
        }

        v112 = v107;
        v113 = sub_1A2D08094();
        __swift_project_value_buffer(v113, qword_1ED709870);

        v114 = sub_1A2D08074();
        v115 = sub_1A2D086A4();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v219 = v117;
          *v116 = 136446210;
          *(v116 + 4) = sub_1A2C55558(v105, v80, &v219);
          _os_log_impl(&dword_1A2C51000, v114, v115, "Received updated activity: %{public}s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v117);
          MEMORY[0x1A58E5180](v117, -1, -1);
          MEMORY[0x1A58E5180](v116, -1, -1);
        }

        v118 = v192;
        v119 = v190;
        v219 = *(v111 + *(v207 + 28));
        sub_1A2C6BD18(v216, v190, &qword_1EB0A02E0, &qword_1A2D0AA50);
        if ((*(v200 + 48))(v119, 1, v112) == 1)
        {

          sub_1A2C54E38(v119, &qword_1EB0A02E0, &qword_1A2D0AA50);
        }

        else
        {
          sub_1A2C725C0(v119, v118, type metadata accessor for OpaqueActivityPayload);
          v136 = v186;
          sub_1A2C6BD18(v118 + *(v112 + 32), v186, &qword_1EB0A04D0, &unk_1A2D15640);
          v137 = type metadata accessor for AlertConfiguration(0);
          v138 = (*(*(v137 - 8) + 48))(v136, 1, v137);

          sub_1A2C54E38(v136, &qword_1EB0A04D0, &unk_1A2D15640);
          v139 = v194;
          sub_1A2C7BFE4(v118, v194, type metadata accessor for OpaqueActivityPayload);
          v140 = v212;
          v212(v139, 0, 1, v112);
          sub_1A2C7C2D4(v139, 0);
          if (v138 != 1)
          {
            sub_1A2C7BFE4(v118, v139, type metadata accessor for OpaqueActivityPayload);
            v140(v139, 0, 1, v112);
            sub_1A2C7C2D4(v139, 1);
          }

          sub_1A2C73F50(v118, type metadata accessor for OpaqueActivityPayload);
          v111 = v197;
          v105 = v209;
        }

        v141 = v193;
        v142 = v210;
        if (v79 == 5)
        {
          v79 = *(v111 + 16);
        }

        LODWORD(v196) = v79;
        v143 = v219;
        v144 = v191;
        sub_1A2C6BD18(v217, v191, &qword_1EB0A0210, &unk_1A2D0ACA0);
        v145 = *(v142 + 48);
        v146 = v214;
        v135 = v105;
        if (v145(v144, 1, v214) == 1)
        {
          sub_1A2C7BFE4(v111 + *(v207 + 24), v141, type metadata accessor for ActivityDescriptor);
          sub_1A2C73F50(v111, type metadata accessor for SubscribedActivity);
          if (v145(v144, 1, v146) != 1)
          {
            sub_1A2C54E38(v144, &qword_1EB0A0210, &unk_1A2D0ACA0);
          }
        }

        else
        {
          sub_1A2C73F50(v111, type metadata accessor for SubscribedActivity);
          sub_1A2C725C0(v144, v141, type metadata accessor for ActivityDescriptor);
        }

        v147 = v141;
        goto LABEL_68;
      }
    }

    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v120 = sub_1A2D08094();
    __swift_project_value_buffer(v120, qword_1ED709870);

    v121 = sub_1A2D08074();
    v122 = sub_1A2D086A4();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v219 = v124;
      *v123 = 136446210;
      *(v123 + 4) = sub_1A2C55558(v105, v80, &v219);
      _os_log_impl(&dword_1A2C51000, v121, v122, "Received new activity: %{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x1A58E5180](v124, -1, -1);
      MEMORY[0x1A58E5180](v123, -1, -1);
    }

    v125 = v204;
    v126 = v203;
    if (v79 == 5)
    {

      v127 = sub_1A2D08074();
      v128 = sub_1A2D08684();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_54;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v219 = v130;
      *v129 = 136446210;
      *(v129 + 4) = sub_1A2C55558(v105, v80, &v219);
      v131 = "Received activity without state: %{public}s";
    }

    else
    {
      sub_1A2C6BD18(v217, v203, &qword_1EB0A0210, &unk_1A2D0ACA0);
      if ((*(v106 + 48))(v126, 1, v214) != 1)
      {
        v132 = v188;
        sub_1A2C725C0(v126, v188, type metadata accessor for ActivityDescriptor);
        v219 = MEMORY[0x1E69E7CC8];
        v133 = v187;
        sub_1A2C6BD18(v216, v187, &qword_1EB0A02E0, &qword_1A2D0AA50);
        v134 = (*(v200 + 48))(v133, 1, v107);
        LODWORD(v196) = v79;
        if (v134 == 1)
        {
          v135 = v105;
          sub_1A2C54E38(v133, &qword_1EB0A02E0, &qword_1A2D0AA50);
        }

        else
        {
          sub_1A2C725C0(v133, v125, type metadata accessor for OpaqueActivityPayload);
          v148 = v125 + *(v107 + 32);
          v149 = v107;
          v150 = v180;
          sub_1A2C6BD18(v148, v180, &qword_1EB0A04D0, &unk_1A2D15640);
          v151 = type metadata accessor for AlertConfiguration(0);
          v152 = (*(*(v151 - 8) + 48))(v150, 1, v151);
          sub_1A2C54E38(v150, &qword_1EB0A04D0, &unk_1A2D15640);
          v153 = v194;
          sub_1A2C7BFE4(v125, v194, type metadata accessor for OpaqueActivityPayload);
          v154 = v125;
          v155 = v212;
          v212(v153, 0, 1, v149);
          sub_1A2C7C2D4(v153, 0);
          if (v152 == 1)
          {
            v135 = v105;
          }

          else
          {
            v135 = v105;
            sub_1A2C7BFE4(v154, v153, type metadata accessor for OpaqueActivityPayload);
            v155(v153, 0, 1, v149);
            sub_1A2C7C2D4(v153, 1);
          }

          sub_1A2C73F50(v154, type metadata accessor for OpaqueActivityPayload);
          v132 = v188;
        }

        v143 = v219;
        v147 = v132;
LABEL_68:
        v172 = v199;
        sub_1A2C725C0(v147, v199, type metadata accessor for ActivityDescriptor);
        v173 = v207;
        v174 = v198;
        sub_1A2C7BFE4(v172, &v198[*(v207 + 24)], type metadata accessor for ActivityDescriptor);
        *v174 = v135;
        *(v174 + 8) = v80;
        *(v174 + 16) = v196;
        *(v174 + *(v173 + 28)) = v143;
        v175 = v202;
        sub_1A2C7BFE4(v174, v202, type metadata accessor for SubscribedActivity);
        v176 = *(v206 + 56);
        v176(v175, 0, 1, v173);
        swift_bridgeObjectRetain_n();
        sub_1A2C7CD50(v175, v135, v80);
        sub_1A2C7BFE4(v174, v175, type metadata accessor for SubscribedActivity);
        v176(v175, 0, 1, v173);
        swift_beginAccess();

        sub_1A2C7CD50(v175, v135, v80);
        swift_endAccess();
        sub_1A2C73F50(v174, type metadata accessor for SubscribedActivity);
        v171 = type metadata accessor for ActivityDescriptor;
        v170 = v172;
LABEL_69:
        sub_1A2C73F50(v170, v171);
        goto LABEL_70;
      }

      sub_1A2C54E38(v126, &qword_1EB0A0210, &unk_1A2D0ACA0);

      v127 = sub_1A2D08074();
      v128 = sub_1A2D08684();

      if (!os_log_type_enabled(v127, v128))
      {
        goto LABEL_54;
      }

      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v219 = v130;
      *v129 = 136446210;
      *(v129 + 4) = sub_1A2C55558(v105, v80, &v219);
      v131 = "Received activity without descriptor: %{public}s";
    }

LABEL_53:
    _os_log_impl(&dword_1A2C51000, v127, v128, v131, v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v130);
    MEMORY[0x1A58E5180](v130, -1, -1);
    MEMORY[0x1A58E5180](v129, -1, -1);
    goto LABEL_54;
  }

  v81 = v209;
  v82 = v210;
  v83 = v211;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v84 = sub_1A2D08094();
  __swift_project_value_buffer(v84, qword_1ED709870);

  v85 = sub_1A2D08074();
  v86 = sub_1A2D086A4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = v82;
    v89 = swift_slowAlloc();
    v220 = v89;
    *v87 = 136446210;
    *(v87 + 4) = sub_1A2C55558(v81, v80, &v220);
    _os_log_impl(&dword_1A2C51000, v85, v86, "Activity dismissed: %{public}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v90 = v89;
    v82 = v88;
    MEMORY[0x1A58E5180](v90, -1, -1);
    MEMORY[0x1A58E5180](v87, -1, -1);
  }

  v91 = v196;
  v92 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  v93 = *(v83 + v92);
  if (*(v93 + 16))
  {

    v94 = sub_1A2C64868(v81, v80);
    if (v95)
    {
      v96 = v182;
      sub_1A2C7BFE4(*(v93 + 56) + *(v206 + 72) * v94, v182, type metadata accessor for SubscribedActivity);

      v97 = v195;
      sub_1A2C725C0(v96, v195, type metadata accessor for SubscribedActivity);
      v218 = *(v97 + *(v207 + 28));
      v98 = v181;
      sub_1A2C6BD18(v216, v181, &qword_1EB0A02E0, &qword_1A2D0AA50);
      v99 = v215;
      if ((*(v200 + 48))(v98, 1, v215) == 1)
      {

        sub_1A2C54E38(v98, &qword_1EB0A02E0, &qword_1A2D0AA50);
        v100 = v208;
      }

      else
      {
        sub_1A2C725C0(v98, v91, type metadata accessor for OpaqueActivityPayload);
        v156 = v179;
        sub_1A2C6BD18(v91 + *(v99 + 32), v179, &qword_1EB0A04D0, &unk_1A2D15640);
        v157 = type metadata accessor for AlertConfiguration(0);
        v158 = (*(*(v157 - 8) + 48))(v156, 1, v157);

        sub_1A2C54E38(v156, &qword_1EB0A04D0, &unk_1A2D15640);
        v159 = v194;
        sub_1A2C7BFE4(v91, v194, type metadata accessor for OpaqueActivityPayload);
        v160 = v212;
        v212(v159, 0, 1, v99);
        sub_1A2C7C2D4(v159, 0);
        if (v158 != 1)
        {
          sub_1A2C7BFE4(v91, v159, type metadata accessor for OpaqueActivityPayload);
          v160(v159, 0, 1, v99);
          sub_1A2C7C2D4(v159, 1);
        }

        sub_1A2C73F50(v91, type metadata accessor for OpaqueActivityPayload);
        v100 = v208;
        v82 = v210;
      }

      v161 = v183;
      sub_1A2C6BD18(v217, v183, &qword_1EB0A0210, &unk_1A2D0ACA0);
      v162 = *(v82 + 48);
      v163 = v214;
      if (v162(v161, 1, v214) == 1)
      {
        v164 = v185;
        sub_1A2C7BFE4(v195 + *(v207 + 24), v185, type metadata accessor for ActivityDescriptor);
        if (v162(v161, 1, v163) != 1)
        {
          sub_1A2C54E38(v161, &qword_1EB0A0210, &unk_1A2D0ACA0);
        }
      }

      else
      {
        v164 = v185;
        sub_1A2C725C0(v161, v185, type metadata accessor for ActivityDescriptor);
      }

      v165 = v218;
      v166 = v184;
      *v184 = v81;
      *(v166 + 8) = v100;
      *(v166 + 16) = 3;
      v167 = v207;
      sub_1A2C725C0(v164, v166 + *(v207 + 24), type metadata accessor for ActivityDescriptor);
      *(v166 + *(v167 + 28)) = v165;
      v168 = v202;
      sub_1A2C7BFE4(v166, v202, type metadata accessor for SubscribedActivity);
      v169 = *(v206 + 56);
      v169(v168, 0, 1, v167);
      swift_bridgeObjectRetain_n();
      sub_1A2C7CD50(v168, v81, v100);
      v169(v168, 1, 1, v167);
      swift_beginAccess();

      sub_1A2C7CD50(v168, v81, v100);
      swift_endAccess();
      sub_1A2C73F50(v166, type metadata accessor for SubscribedActivity);
      v170 = v195;
      v171 = type metadata accessor for SubscribedActivity;
      goto LABEL_69;
    }
  }

  v127 = sub_1A2D08074();
  v128 = sub_1A2D08684();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v219 = v130;
    *v129 = 136446210;
    *(v129 + 4) = sub_1A2C55558(v81, v80, &v219);
    v131 = "No activity found to dismiss: %{public}s";
    goto LABEL_53;
  }

LABEL_54:

LABEL_70:
  sub_1A2C54E38(v216, &qword_1EB0A02E0, &qword_1A2D0AA50);
  return sub_1A2C54E38(v217, &qword_1EB0A0210, &unk_1A2D0ACA0);
}

uint64_t sub_1A2C7BDEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1A2D07FC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1A2D07F94();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for OpaqueActivityContent(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10]) = a2 + 1;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A2C7BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C0C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1A2D07FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1A2D07F94();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for OpaqueActivityContent(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[7];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[8];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[10]);
            if (v18 >= 2)
            {
              return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[9];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A2C7C2D4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for OpaqueActivityPayload(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1A2C54E38(a1, &qword_1EB0A02E0, &qword_1A2D0AA50);
    v14 = sub_1A2C7C7B4(a2 & 1);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A2C8AF54();
        v18 = v22;
      }

      sub_1A2C7C590(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for OpaqueActivityPayload);
      sub_1A2CA8F84(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1A2C54E38(v8, &qword_1EB0A02E0, &qword_1A2D0AA50);
  }

  else
  {
    sub_1A2C7C590(a1, v13, type metadata accessor for OpaqueActivityPayload);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    result = sub_1A2C7C660(v13, a2 & 1, v19);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_1A2C7C528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C660(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A2C7C7B4(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for OpaqueActivityPayload(0);
      return sub_1A2C8B18C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for OpaqueActivityPayload);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1A2C8AF54();
    goto LABEL_7;
  }

  sub_1A2C7C820(v13, a3 & 1);
  v20 = sub_1A2C7C7B4(a2 & 1);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1A2C7CBEC(v10, a2 & 1, a1, v16);
}

unint64_t sub_1A2C7C7B4(char a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1 & 1);
  v2 = sub_1A2D08C54();

  return sub_1A2C7CB7C(a1 & 1, v2);
}

uint64_t sub_1A2C7C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for OpaqueActivityPayload(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0990, &qword_1A2D0D128);
  v36 = v4;
  result = sub_1A2D08974();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1A2C7C5F8(v24, v37, type metadata accessor for OpaqueActivityPayload);
      }

      else
      {
        sub_1A2C68F00(v24, v37, type metadata accessor for OpaqueActivityPayload);
      }

      sub_1A2D08C14();
      MEMORY[0x1A58E48E0](v22);
      result = sub_1A2D08C54();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1A2C7C5F8(v37, *(v9 + 56) + v23 * v17, type metadata accessor for OpaqueActivityPayload);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1A2C7CB7C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A2C7CBEC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for OpaqueActivityPayload(0);
  result = sub_1A2C67248(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for OpaqueActivityPayload);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1A2C7CCAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDescriptor(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C7CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SubscribedActivity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1A2C54E38(a1, &qword_1EB0A02C8, &qword_1A2D0AA28);
    sub_1A2C91E28(a2, a3, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity, sub_1A2CB36A8, v9);

    return sub_1A2C54E38(v9, &qword_1EB0A02C8, &qword_1A2D0AA28);
  }

  else
  {
    sub_1A2C7C590(a1, v13, type metadata accessor for SubscribedActivity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A2C7D034(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1A2C7CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityDescriptor(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_1A2C7D034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SubscribedActivity(0);
      sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SubscribedActivity);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB36A8();
    goto LABEL_7;
  }

  sub_1A2C7D508(v15, a4 & 1);
  v21 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1A2D08B84();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity);
}

uint64_t sub_1A2C7D1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v10;
  result = sub_1A2D08974();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
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
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_1A2C7C5F8(v34, v48, v49);
      }

      else
      {
        sub_1A2C68F00(v34, v48, v49);
      }

      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_1A2C7C5F8(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_1A2C7D544(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1A2C67248(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1A2C7D624()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t SceneTarget.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[5])
  {
  }

  else
  {
    sub_1A2D08864();

    MEMORY[0x1A58E4150](v1, v2);
    MEMORY[0x1A58E4150](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return v1;
}

uint64_t sub_1A2C7D784()
{
  if (*v0)
  {
    return 0x7472656C61;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1A2C7D7C0(uint64_t *a1, uint64_t a2)
{
  v67 = a1;
  v63 = type metadata accessor for ActivityDescriptorContentState(0);
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v71 = (&v60 - v9);
  v72 = type metadata accessor for OpaqueActivityPayload(0);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C6BD18(a2, v20, &qword_1EB0A02D8, &qword_1A2D0AA38);

  v24 = &v20[*(v13 + 48)];
  v25 = type metadata accessor for SubscribedActivity(0);
  v26 = &v24[*(v25 + 24)];
  v73 = v23;
  sub_1A2C7BFE4(v26, v23, type metadata accessor for ActivityDescriptor);
  v27 = v24;
  v28 = a2;
  sub_1A2C73F50(v27, type metadata accessor for SubscribedActivity);
  sub_1A2C6BD18(a2, v20, &qword_1EB0A02D8, &qword_1A2D0AA38);

  v29 = &v20[*(v13 + 48)];
  v30 = *(v29 + 16);
  sub_1A2C73F50(v29, type metadata accessor for SubscribedActivity);
  sub_1A2C6BD18(a2, v17, &qword_1EB0A02D8, &qword_1A2D0AA38);

  v31 = &v17[*(v13 + 48)];
  v32 = *(v31 + *(v25 + 28));

  sub_1A2C73F50(v31, type metadata accessor for SubscribedActivity);
  if (!*(v32 + 16))
  {
    goto LABEL_11;
  }

  v33 = sub_1A2C7C7B4(0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = v69;
  v36 = *(v68 + 72);
  sub_1A2C7BFE4(*(v32 + 56) + v36 * v33, v69, type metadata accessor for OpaqueActivityPayload);

  v37 = v71;
  v38 = v72;
  sub_1A2C7BFE4(v35 + *(v72 + 28), v71, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v35, type metadata accessor for OpaqueActivityPayload);
  v40 = *v37;
  v39 = v37[1];
  sub_1A2C5E63C(*v37, v39);
  sub_1A2C73F50(v37, type metadata accessor for OpaqueActivityContent);
  v41 = v70;
  sub_1A2C6BD18(v28, v70, &qword_1EB0A02D8, &qword_1A2D0AA38);

  v42 = v41 + *(v13 + 48);
  v43 = *(v42 + *(v25 + 28));

  sub_1A2C73F50(v42, type metadata accessor for SubscribedActivity);
  if (!*(v43 + 16) || (v44 = sub_1A2C7C7B4(0), (v45 & 1) == 0))
  {
    sub_1A2C55840(v40, v39);
LABEL_11:

    return sub_1A2C73F50(v73, type metadata accessor for ActivityDescriptor);
  }

  v46 = *(v43 + 56) + v44 * v36;
  v47 = v61;
  sub_1A2C7BFE4(v46, v61, type metadata accessor for OpaqueActivityPayload);

  v48 = v62;
  sub_1A2C7BFE4(v47 + *(v38 + 28), v62, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v47, type metadata accessor for OpaqueActivityPayload);
  v49 = v64;
  sub_1A2C725C0(v48, v64, type metadata accessor for OpaqueActivityContent);
  v50 = v39;
  v51 = v73;
  v52 = v65;
  sub_1A2C7BFE4(v73, v65, type metadata accessor for ActivityDescriptor);
  v53 = v63;
  sub_1A2C7BFE4(v49, v52 + *(v63 + 28), type metadata accessor for OpaqueActivityContent);
  *(v52 + *(v53 + 20)) = v30;
  v54 = (v52 + *(v53 + 24));
  *v54 = v40;
  v54[1] = v50;
  v55 = v67;
  v56 = *v67;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = sub_1A2C7E08C(0, v56[2] + 1, 1, v56);
  }

  v58 = v56[2];
  v57 = v56[3];
  if (v58 >= v57 >> 1)
  {
    v56 = sub_1A2C7E08C((v57 > 1), v58 + 1, 1, v56);
  }

  sub_1A2C73F50(v49, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v51, type metadata accessor for ActivityDescriptor);
  v56[2] = v58 + 1;
  result = sub_1A2C725C0(v52, v56 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v58, type metadata accessor for ActivityDescriptorContentState);
  *v55 = v56;
  return result;
}

void *sub_1A2C7DEB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

BOOL _s11ActivityKit0A22DescriptorContentStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((_s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActivityDescriptorContentState(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if (!sub_1A2C8D278(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8), *(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8)))
  {
    return 0;
  }

  v6 = *(v5 + 28);

  return static OpaqueActivityContent.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t _s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1A2D08B34() & 1) == 0 || !sub_1A2C8D278(a1[4], a1[5], *(a2 + 32), *(a2 + 40)) || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DAD4(a1[11], *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DAD4(a1[12], *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DEE8(a1[13], *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  v27 = *(a1 + 7);
  v28 = a1[16];
  v25 = *(a1 + 7);
  v26 = a1[16];
  v29 = *(a2 + 112);
  v30 = *(a2 + 128);
  v23 = *(a2 + 112);
  v24 = *(a2 + 128);
  sub_1A2C66F58(&v27, v22);
  sub_1A2C66F58(&v29, v22);
  v6 = _s11ActivityKit0A19PresentationOptionsV2eeoiySbAC_ACtFZ_0(&v25, &v23);
  v31 = v23;
  v32 = v24;
  sub_1A2C69EAC(&v31);
  v33 = v25;
  v34 = v26;
  sub_1A2C69EAC(&v33);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 136) != *(a2 + 136))
  {
    return 0;
  }

  if (*(a1 + 137) != *(a2 + 137))
  {
    return 0;
  }

  if (*(a1 + 138) != *(a2 + 138))
  {
    return 0;
  }

  v7 = type metadata accessor for ActivityDescriptor(0);
  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = v7[16];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12 || (*v9 != *v11 || v10 != v12) && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = v7[17];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17 || (*v14 != *v16 || v15 != v17) && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    v18 = v7[18];
    v19 = *(a1 + v18);
    v20 = *(a2 + v18);
    if (v19 == 4)
    {
      if (v20 != 4)
      {
        return 0;
      }
    }

    else if (v19 != v20)
    {
      return 0;
    }

    return 1;
  }

  if (!v17)
  {
    goto LABEL_37;
  }

  return 0;
}

void ActivityPredicate.matches(descriptor:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v25 = v1[3];
  if (!v25)
  {
    if (!v4)
    {
      return;
    }

LABEL_22:
    if (*(v2 + 16) != v3 || v4 != *(v2 + 24))
    {
      sub_1A2D08B34();
    }

    return;
  }

  v5 = *(a1 + 104);
  v22 = *(v5 + 16);
  if (!v22)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_22;
  }

  v16 = *v1;
  v17 = v1[1];
  v18 = *(a1 + 104);
  v6 = 0;
  v26 = v1[2];
  v20 = v1[5];
  v21 = v1[4];
  v7 = v5 + 48;
  v19 = v1[6];
  while (1)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v7 - 16);
    v11 = *(v7 - 8);
    v12 = *v7;
    v8 = *(v7 + 8);
    v13 = *(v7 + 16);
    v35 = *(v7 + 24);
    if (*(v7 + 40) == 1)
    {
      break;
    }

    v23 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_5:
    sub_1A2CA0190(v26, v25, v21, v20, v19);
    sub_1A2C5E574(v10, 0, v9, v8, v23);
    sub_1A2C5E574(v26, v25, v21 & 0x1010101, v20, v19);
LABEL_6:
    ++v6;
    v7 += 64;
    v5 = v18;
    if (v22 == v6)
    {
      goto LABEL_19;
    }
  }

  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v8;
  v32 = v13;
  v33 = v35;
  v34 = 1;
  sub_1A2CDF70C(&v28, v27);
  if (!v11)
  {
    v23 = v13;
    v9 = v12;
    goto LABEL_5;
  }

  if (v10 == v26 && v11 == v25)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1A2D08B34();
  }

  sub_1A2CA0190(v26, v25, v21, v20, v19);
  sub_1A2CA0190(v10, v11, v12, v8, v13);
  sub_1A2C5E574(v26, v25, v21 & 0x1010101, v20, v19);
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v8;
  v32 = v13;
  sub_1A2C7337C(&v28);
  sub_1A2C5E574(v10, v11, v12, v8, v13);
  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  v3 = v16;
  v4 = v17;
  v2 = a1;
  if (v17)
  {
    goto LABEL_22;
  }
}

void *sub_1A2C7E67C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1A2C7E858(void *a1, int64_t a2, char a3)
{
  result = sub_1A2C7E67C(a1, a2, a3, *v3, &unk_1EB0A03E0, &qword_1A2D0D190, type metadata accessor for ActivityDescriptorContentState);
  *v3 = result;
  return result;
}

void sub_1A2C7E89C(uint64_t *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v90 = a3;
  v91 = a4;
  v89 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v83 - v6;
  v7 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v83 - v10;
  v11 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v83 - v14);
  v16 = type metadata accessor for ActivityDescriptorContentState(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = (&v83 - v21);
  v22 = *a1;
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v23 = sub_1A2D08094();
  __swift_project_value_buffer(v23, qword_1EB09F590);

  v24 = sub_1A2D08074();
  v25 = sub_1A2D086A4();

  v26 = os_log_type_enabled(v24, v25);
  v94 = v19;
  v95 = v15;
  v92 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v101[0] = v96;
    v98 = v27;
    *v27 = 136446210;
    v28 = *(v22 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    v97 = v17;
    if (v28)
    {
      LODWORD(v85) = v25;
      v86 = v7;
      v100 = MEMORY[0x1E69E7CC0];
      sub_1A2C7F170(0, v28, 0);
      v29 = v100;
      v30 = v17;
      v31 = v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v32 = *(v30 + 72);
      do
      {
        v33 = v87;
        sub_1A2C7F304(v31, v87, type metadata accessor for ActivityDescriptorContentState);
        v34 = *v33;
        v35 = v33[1];

        sub_1A2C6E22C(v33, type metadata accessor for ActivityDescriptorContentState);
        v100 = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1A2C7F170((v36 > 1), v37 + 1, 1);
          v29 = v100;
        }

        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        v31 += v32;
        --v28;
      }

      while (v28);
      v7 = v86;
      v19 = v94;
      v15 = v95;
      v16 = v92;
      LOBYTE(v25) = v85;
    }

    v39 = MEMORY[0x1A58E4220](v29, MEMORY[0x1E69E6158]);
    v41 = v40;

    v42 = sub_1A2C55558(v39, v41, v101);

    v43 = v98;
    *(v98 + 1) = v42;
    _os_log_impl(&dword_1A2C51000, v24, v25, "Activity Content update: %{public}s", v43, 0xCu);
    v44 = v96;
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1A58E5180](v44, -1, -1);
    MEMORY[0x1A58E5180](v43, -1, -1);

    v17 = v97;
  }

  else
  {
  }

  v98 = *(v22 + 16);
  if (v98)
  {
    v45 = sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
    v85 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
    v86 = v45;
    v46 = v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v84 = *(v17 + 72);
    do
    {
      sub_1A2C7F304(v46, v19, type metadata accessor for ActivityDescriptorContentState);
      sub_1A2C7F304(v19, v15, type metadata accessor for ActivityDescriptor);
      v51 = v19[*(v16 + 20)];
      v52 = *v15;
      v53 = v15[1];
      v96 = v53;
      v97 = v52;
      if (v51 == 3)
      {
        swift_beginAccess();
        v54 = v83;
        sub_1A2CA8DA8(v52, v53, v83);
        sub_1A2C54E38(v54, &qword_1EB0A0A68, &unk_1A2D0D240);
        swift_endAccess();
        v55 = v88;
        sub_1A2C7F304(v15, v88, type metadata accessor for ActivityDescriptor);
        v56 = ACActivityDescriptor.init(descriptor:)(v55);
        v57 = 2;
      }

      else
      {
        v58 = v87;
        sub_1A2C7F304(v19, v87, type metadata accessor for ActivityDescriptorContentState);
        v59 = v89;
        v60 = v46;
        v61 = v16;
        v62 = v7;
        v63 = v52;
        v64 = v85;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = *(v59 + v64);
        *(v59 + v64) = 0x8000000000000000;
        v66 = v63;
        v7 = v62;
        v16 = v61;
        v46 = v60;
        sub_1A2C80A14(v58, v66, v53, isUniquelyReferenced_nonNull_native);
        *(v59 + v64) = v100;
        v19 = v94;
        swift_endAccess();
        v67 = v88;
        sub_1A2C7F304(v95, v88, type metadata accessor for ActivityDescriptor);
        v56 = ACActivityDescriptor.init(descriptor:)(v67);
        v68 = 1;
        if (v51 != 2)
        {
          v68 = 3;
        }

        v69 = 4;
        if (v51)
        {
          v69 = 0;
        }

        if (v51 <= 1)
        {
          v57 = v69;
        }

        else
        {
          v57 = v68;
        }
      }

      v70 = v99;
      sub_1A2C7F304(&v19[*(v16 + 28)], v99, type metadata accessor for OpaqueActivityContent);
      v71 = *(v7 + 20);
      v72 = *(v70 + *(v7 + 24));
      v73 = sub_1A2D07F24();
      v74 = v70 + v71;
      v75 = v93;
      sub_1A2C7214C(v74, v93);
      v76 = sub_1A2D07F94();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 48))(v75, 1, v76);
      v79 = 0;
      if (v78 != 1)
      {
        v80 = v7;
        v81 = v93;
        v79 = sub_1A2D07F54();
        v82 = v81;
        v7 = v80;
        (*(v77 + 8))(v82, v76);
      }

      v47 = [objc_allocWithZone(ACActivityContent) initWithContentData:v73 staleDate:v79 relevanceScore:v72];

      sub_1A2C6E22C(v99, type metadata accessor for OpaqueActivityContent);
      v48 = objc_allocWithZone(ACActivityContentUpdate);
      v49 = sub_1A2D08434();
      v50 = [v48 initWithIdentifier:v49 descriptor:v56 state:v57 content:v47];

      v90(v50);
      v19 = v94;
      sub_1A2C6E22C(v94, type metadata accessor for ActivityDescriptorContentState);
      v15 = v95;
      sub_1A2C6E22C(v95, type metadata accessor for ActivityDescriptor);
      v46 += v84;
      v98 = (v98 - 1);
      v16 = v92;
    }

    while (v98);
  }
}

char *sub_1A2C7F170(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A2C7F190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A2C7F190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A2C7F29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7F304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1A2C7F36C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v57 - v17);
  v67 = *a3;
  os_unfair_lock_assert_owner(*(v4[9] + 16));
  v19 = *a1;
  v20 = a1[1];
  swift_beginAccess();
  v63 = v19;
  v69[0] = v19;
  v69[1] = v20;
  v22 = type metadata accessor for Activity(0, *(v8 + 80), *(v8 + 88), v21);

  v66 = v22;
  sub_1A2D083D4();

  if (v70)
  {

    __break(1u);
  }

  else
  {
    v64 = a2;
    if (qword_1ED708BB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1A2D08094();
    v24 = __swift_project_value_buffer(v23, qword_1ED708BC0);
    sub_1A2C7C04C(a1, v18, type metadata accessor for ActivityDescriptor);

    v61 = v24;
    v25 = sub_1A2D08074();
    v26 = sub_1A2D086A4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v11;
      v29 = v28;
      v69[0] = v28;
      *v27 = 136446466;
      v60 = a1;
      v30 = v4[2];
      v31 = v4[3];

      v32 = sub_1A2C55558(v30, v31, v69);
      v59 = v20;
      v33 = v32;

      *(v27 + 4) = v33;
      *(v27 + 12) = 2082;
      v34 = *v18;
      v35 = v18[1];

      sub_1A2C73FB0(v18, type metadata accessor for ActivityDescriptor);
      v36 = sub_1A2C55558(v34, v35, v69);
      a1 = v60;

      *(v27 + 14) = v36;
      v20 = v59;
      _os_log_impl(&dword_1A2C51000, v25, v26, "[%{public}s] Creating activity: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      v37 = v29;
      v11 = v58;
      MEMORY[0x1A58E5180](v37, -1, -1);
      MEMORY[0x1A58E5180](v27, -1, -1);
    }

    else
    {

      sub_1A2C73FB0(v18, type metadata accessor for ActivityDescriptor);
    }

    v38 = v67;
    v39 = v65;
    sub_1A2C7C04C(a1, v65, type metadata accessor for ActivityDescriptor);
    LOBYTE(v69[0]) = v38;
    sub_1A2C7C04C(v64, v11, type metadata accessor for OpaqueActivityContent);
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v40 = off_1ED709CF8;

    v41 = v40;
    v42 = v68;
    v43 = sub_1A2C7FA44(v39, v69, v11, v41);
    if (!v42)
    {
      LOBYTE(v69[0]) = v38;
      sub_1A2C8079C(v69);
      v72 = v43;
      v70 = v63;
      v71 = v20;
      swift_beginAccess();
      sub_1A2D083C4();

      sub_1A2D083E4();
      swift_endAccess();
      sub_1A2C8081C();
      if (LOBYTE(v69[0]) == 3)
      {
        sub_1A2C7C04C(a1, v62, type metadata accessor for ActivityDescriptor);

        v44 = sub_1A2D08074();
        v45 = sub_1A2D086A4();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = v62;
          v48 = v46;
          v49 = swift_slowAlloc();
          v69[0] = v49;
          *v48 = 136446466;
          v51 = v4[2];
          v50 = v4[3];

          v52 = sub_1A2C55558(v51, v50, v69);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2082;
          v53 = *v47;
          v54 = v47[1];

          sub_1A2C73FB0(v47, type metadata accessor for ActivityDescriptor);
          v55 = sub_1A2C55558(v53, v54, v69);

          *(v48 + 14) = v55;
          _os_log_impl(&dword_1A2C51000, v44, v45, "[%{public}s] Not publishing activity because it is already dismissed: %{public}s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1A58E5180](v49, -1, -1);
          MEMORY[0x1A58E5180](v48, -1, -1);
        }

        else
        {

          sub_1A2C73FB0(v62, type metadata accessor for ActivityDescriptor);
        }
      }

      else
      {
        v69[0] = v43;

        sub_1A2D08124();
      }
    }

    return v43;
  }

  return result;
}

char *sub_1A2C7FA44(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v39 = a2;
  v6 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = v4;
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v42[0] = AssociatedTypeWitness;
  v42[1] = AssociatedConformanceWitness;
  v34 = v14;
  v35 = AssociatedConformanceWitness;
  v42[2] = v14;
  v42[3] = v15;
  v33 = v15;
  v16 = type metadata accessor for ActivityContent(0, v42);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v29[-v17];
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = v40;
  v23 = *v39;
  v24 = a1;
  ActivityDescriptor.decodeAttributes<A>(for:)(v10, v10, v11);
  if (v22)
  {

    sub_1A2C69F84(v43, type metadata accessor for OpaqueActivityContent);
    sub_1A2C69F84(a1, type metadata accessor for ActivityDescriptor);
  }

  else
  {
    v30 = v23;
    v39 = v16;
    v40 = v18;
    v25 = v36;
    sub_1A2C7FF28(v43, v36, type metadata accessor for OpaqueActivityContent);
    ActivityContent.init(from:)(v25, AssociatedTypeWitness, v35, v34, v33, v38);
    v26 = v32;
    sub_1A2C7FF28(a1, v32, type metadata accessor for ActivityDescriptor);
    LOBYTE(v42[0]) = v30;
    v27 = v38;
    v24 = sub_1A2C80130(v26, v21, v42, v38, v41);

    sub_1A2C69F84(v43, type metadata accessor for OpaqueActivityContent);
    sub_1A2C69F84(a1, type metadata accessor for ActivityDescriptor);
    (*(v31 + 8))(v27, v39);
    (*(v40 + 8))(v21, v10);
  }

  return v24;
}

uint64_t ActivityDescriptor.decodeAttributes<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A2D07D54();
  swift_allocObject();
  sub_1A2D07D44();
  sub_1A2D07D34();
}

uint64_t sub_1A2C7FF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2D07D54();
  swift_allocObject();
  sub_1A2D07D44();
  sub_1A2D07D34();

  if (v6)
  {
    return sub_1A2C6FD00(a1);
  }

  (*(v12 + 32))(a6, v14, a2);
  v16 = type metadata accessor for OpaqueActivityContent(0);
  v17 = *(v16 + 20);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = v21;
  v18 = type metadata accessor for ActivityContent(0, v22);
  sub_1A2C7214C(a1 + v17, a6 + *(v18 + 52));
  v19 = *(a1 + *(v16 + 24));
  result = sub_1A2C6FD00(a1);
  *(a6 + *(v18 + 56)) = v19;
  return result;
}

{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = &v31 - v12;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  type metadata accessor for ActivityContent.CodingKeys(255, &v43);
  swift_getWitnessTable();
  v41 = sub_1A2D08A74();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v31 - v15;
  v40 = a2;
  v43 = a2;
  v44 = a3;
  v37 = a3;
  v45 = a4;
  v46 = a5;
  v17 = type metadata accessor for ActivityContent(0, &v43);
  v32 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v16;
  v20 = v42;
  sub_1A2D08C64();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v19;
  v22 = v34;
  v21 = v35;
  LOBYTE(v43) = 0;
  v23 = v36;
  v24 = v40;
  v25 = v38;
  sub_1A2D08A54();
  v26 = v42;
  (*(v22 + 32))(v42, v23, v24);
  sub_1A2D07F94();
  LOBYTE(v43) = 1;
  sub_1A2C6D4B0(&qword_1ED7097D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1A2D08A14();
  sub_1A2C639DC(v21, &v26[*(v17 + 52)], &qword_1EB0A0E28, &unk_1A2D0EC10);
  LOBYTE(v43) = 2;
  sub_1A2D08A44();
  v28 = v27;
  (*(v39 + 8))(v25, v41);
  *&v26[*(v17 + 56)] = v28;
  v29 = v32;
  (*(v32 + 16))(v33, v26, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v29 + 8))(v26, v17);
}

char *sub_1A2C80130(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Activity(0, *(v5 + 80), *(v5 + 88), a4);
  swift_allocObject();
  return sub_1A2C801A4(a1, a2, a3, a4, a5);
}

char *sub_1A2C801A4(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = a5;
  v42 = a4;
  v38 = a2;
  v36 = a1;
  v8 = *v5;
  v32 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43[0] = AssociatedTypeWitness;
  v43[1] = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v43[2] = swift_getAssociatedConformanceWitness();
  v43[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ActivityContent(0, v43);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v37 = v28 - v12;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v33 = v28 - v14;
  v30 = sub_1A2D086E4();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v31 = *a3;
  v29 = *(v8 + 152);
  v20 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v28[1] = "criptor";
  v28[2] = v20;
  sub_1A2D082F4();
  v43[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v30);
  *&v5[v29] = sub_1A2D08724();
  *&v5[*(*v5 + 160)] = MEMORY[0x1E69E7CD0];
  v21 = v36;
  sub_1A2C7FF28(v36, &v6[*(*v6 + 136)], type metadata accessor for ActivityDescriptor);
  v22 = v21[1];
  *(v6 + 2) = *v21;
  *(v6 + 3) = v22;
  (*(*(v32 - 8) + 16))(&v6[*(*v6 + 128)], v38);
  *&v6[*(*v6 + 144)] = v41;
  LOBYTE(v43[0]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E40, &unk_1A2D0EC30);
  swift_allocObject();

  *(v6 + 4) = sub_1A2D081B4();
  v23 = v34;
  sub_1A2D08194();
  v24 = v42;
  (*(v35 + 16))(v33, v42, v23);
  *(v6 + 5) = sub_1A2D081A4();
  v25 = v39;
  sub_1A2D08194();
  (*(v40 + 16))(v37, v24, v25);
  v26 = sub_1A2D081A4();
  sub_1A2C69F84(v21, type metadata accessor for ActivityDescriptor);
  *(v6 + 6) = v26;
  return v6;
}

uint64_t sub_1A2C8079C(unsigned __int8 *a1)
{
  v1 = *a1;

  sub_1A2D08174();

  if (v1 == 3)
  {

    sub_1A2D08164();
  }

  return result;
}

uint64_t sub_1A2C8081C()
{

  sub_1A2D08184();
}

uint64_t sub_1A2C80880(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  type metadata accessor for Activity(0, *(v3 + 80), *(v3 + 88), v4);

  sub_1A2D083D4();
}

void sub_1A2C809A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1A2D07EC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1A2C80A04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1A2C80A14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ActivityDescriptorContentState(0);
      sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ActivityDescriptorContentState);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB4414();
    goto LABEL_7;
  }

  sub_1A2CB33B4(v15, a4 & 1);
  v21 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1A2D08B84();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for ActivityDescriptorContentState, type metadata accessor for ActivityDescriptorContentState);
}

id ACActivityDescriptor.init(descriptor:)(uint64_t a1)
{
  v205 = *(a1 + 136);
  v202 = *(a1 + 138);
  v203 = *(a1 + 137);
  v238 = *(a1 + 112);
  v239 = *(a1 + 128);
  sub_1A2C569A0(0, &qword_1ED7088D0, off_1E76B6510);
  v233 = *(a1 + 112);
  v234 = *(a1 + 128);
  sub_1A2C66F58(&v238, v232);
  sub_1A2C81D68(&v233);
  v201 = v2;
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  v3 = type metadata accessor for ActivityDescriptor(0);
  sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  v8 = sub_1A2D07F44();
  v206 = v9;
  v207 = v8;

  v200 = v3;
  v204 = *(a1 + *(v3 + 68) + 8);
  v208 = a1;
  v10 = *(a1 + 88);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(*(a1 + 88) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v213 = *(a1 + 88);

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC8];
  v227 = MEMORY[0x1E69E7CC8];
  for (i = v17; ; v17 = i)
  {
    v226 = v19;
    if (!v16)
    {
      break;
    }

    v27 = v18;
LABEL_12:
    v28 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v29 = v28 | (v27 << 6);
    v30 = *(*(v213 + 48) + v29);
    v31 = *(v213 + 56) + 48 * v29;
    v32 = *v31;
    v33 = *(v31 + 8);
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    v36 = *(v31 + 32);
    v222 = v30;
    v37 = qword_1A2D18668[v30];
    v229 = *v31;
    v217 = v34;
    v219 = v36;
    v215 = v35;
    if ((*(v31 + 40) & 1) == 0)
    {
      v49 = objc_allocWithZone(ACActivityPresentationDestination);
      *&v233 = v32;
      *(&v233 + 1) = v33;
      v234 = v35;
      v235 = v34;
      v236 = v36;
      v237 = 0;
      sub_1A2C6BD18(&v233, v232, &qword_1EB0A18F8, &qword_1A2D17D60);
      v50 = [v49 initWithDestination_];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v232[0] = v227;
      v52 = sub_1A2C82C60(v50);
      v54 = *(v227 + 16);
      v55 = (v53 & 1) == 0;
      v45 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v45)
      {
        goto LABEL_140;
      }

      v57 = v53;
      if (*(v227 + 24) >= v56)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v99 = v52;
          sub_1A2CB42A4();
          v52 = v99;
        }
      }

      else
      {
        sub_1A2C82CAC(v56, isUniquelyReferenced_nonNull_native);
        v52 = sub_1A2C82C60(v50);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_160;
        }
      }

      v61 = v232[0];
      v227 = v232[0];
      if (v57)
      {
        v62 = (*(v232[0] + 56) + 16 * v52);
        *v62 = v229;
        v62[1] = v33;
      }

      else
      {
        *(v232[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        *(v61[6] + 8 * v52) = v50;
        v71 = (v61[7] + 16 * v52);
        *v71 = v229;
        v71[1] = v33;
        v72 = v61[2];
        v45 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v45)
        {
          goto LABEL_152;
        }

        v61[2] = v73;
      }

      v66 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v74 = sub_1A2D087A4();
      v75 = v226;
      if ((v226 & 0xC000000000000001) != 0)
      {
        if (v226 >= 0)
        {
          v75 = v226 & 0xFFFFFFFFFFFFFF8;
        }

        v76 = sub_1A2D08924();
        if (__OFADD__(v76, 1))
        {
          goto LABEL_149;
        }

        v75 = sub_1A2D06894(v75, v76 + 1);
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      v232[0] = v75;
      v78 = sub_1A2C82C60(v66);
      v80 = *(v75 + 16);
      v81 = (v79 & 1) == 0;
      v45 = __OFADD__(v80, v81);
      v82 = v80 + v81;
      if (v45)
      {
        goto LABEL_142;
      }

      v83 = v79;
      if (*(v75 + 24) < v82)
      {
        sub_1A2C82FF4(v82, v77);
        v78 = sub_1A2C82C60(v66);
        if ((v83 & 1) != (v84 & 1))
        {
          goto LABEL_160;
        }

        goto LABEL_48;
      }

      if (v77)
      {
LABEL_48:
        v19 = v232[0];
        if (v83)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v100 = v78;
        sub_1A2CB4144();
        v78 = v100;
        v19 = v232[0];
        if (v83)
        {
LABEL_49:
          v85 = v19[7];
          v86 = *(v85 + 8 * v78);
          *(v85 + 8 * v78) = v74;

          v22 = v229;
          v23 = v33;
          v24 = v215;
          v25 = v217;
          v26 = v219;
          goto LABEL_5;
        }
      }

      v19[(v78 >> 6) + 8] |= 1 << v78;
      *(v19[6] + 8 * v78) = v66;
      *(v19[7] + 8 * v78) = v74;
      sub_1A2C732E4(v229, v33, v215, v217, v219);
      v101 = v19[2];
      v45 = __OFADD__(v101, 1);
      v97 = v101 + 1;
      if (v45)
      {
        goto LABEL_154;
      }

      goto LABEL_63;
    }

    v38 = objc_allocWithZone(ACActivityPresentationDestination);

    v39 = [v38 initWithDestination_];

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v233 = v227;
    v41 = sub_1A2C82C60(v39);
    v43 = *(v227 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_141;
    }

    v47 = v42;
    if (*(v227 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        v98 = v41;
        sub_1A2CB42A4();
        v41 = v98;
      }
    }

    else
    {
      sub_1A2C82CAC(v46, v40);
      v41 = sub_1A2C82C60(v39);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_160;
      }
    }

    v59 = v233;
    v227 = v233;
    if (v47)
    {
      v60 = (*(v233 + 56) + 16 * v41);
      *v60 = v229;
      v60[1] = v33;
    }

    else
    {
      *(v233 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(v59[6] + 8 * v41) = v39;
      v63 = (v59[7] + 16 * v41);
      *v63 = v229;
      v63[1] = v33;
      v64 = v59[2];
      v45 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v45)
      {
        goto LABEL_153;
      }

      v59[2] = v65;
    }

    v66 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
    sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
    v67 = sub_1A2D087A4();
    v68 = v226;
    if ((v226 & 0xC000000000000001) != 0)
    {
      if (v226 >= 0)
      {
        v68 = v226 & 0xFFFFFFFFFFFFFF8;
      }

      v69 = sub_1A2D08924();
      if (__OFADD__(v69, 1))
      {
        goto LABEL_148;
      }

      v70 = v33;
      v68 = sub_1A2D06894(v68, v69 + 1);
    }

    else
    {
      v70 = v33;
    }

    v87 = swift_isUniquelyReferenced_nonNull_native();
    *&v233 = v68;
    v89 = sub_1A2C82C60(v66);
    v90 = *(v68 + 16);
    v91 = (v88 & 1) == 0;
    v92 = v90 + v91;
    if (__OFADD__(v90, v91))
    {
      goto LABEL_143;
    }

    v93 = v88;
    if (*(v68 + 24) >= v92)
    {
      if (v87)
      {
        v19 = v233;
        if (v88)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A2CB4144();
        v19 = v233;
        if (v93)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A2C82FF4(v92, v87);
      v94 = sub_1A2C82C60(v66);
      if ((v93 & 1) != (v95 & 1))
      {
        goto LABEL_160;
      }

      v89 = v94;
      v19 = v233;
      if (v93)
      {
LABEL_4:
        v20 = v19[7];
        v21 = *(v20 + 8 * v89);
        *(v20 + 8 * v89) = v67;

        v22 = v229;
        v23 = v70;
        v24 = v215;
        v25 = v217;
        v26 = v219;
LABEL_5:
        sub_1A2C732E4(v22, v23, v24, v25, v26);

        goto LABEL_6;
      }
    }

    v19[(v89 >> 6) + 8] |= 1 << v89;
    *(v19[6] + 8 * v89) = v66;
    *(v19[7] + 8 * v89) = v67;
    sub_1A2C732E4(v229, v70, v215, v217, v219);
    v96 = v19[2];
    v45 = __OFADD__(v96, 1);
    v97 = v96 + 1;
    if (v45)
    {
      goto LABEL_155;
    }

LABEL_63:
    v19[2] = v97;
LABEL_6:
    v18 = v27;
  }

  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_139;
    }

    if (v27 >= v17)
    {
      break;
    }

    v16 = *(v12 + 8 * v27);
    ++v18;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v102 = *(v208 + 96);
  v105 = *(v102 + 64);
  v104 = v102 + 64;
  v103 = v105;
  v106 = 1 << *(*(v208 + 96) + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & v103;
  v109 = (v106 + 63) >> 6;
  v212 = *(v208 + 96);

  v110 = 0;
  v111 = MEMORY[0x1E69E7CC8];
  v112 = MEMORY[0x1E69E7CC8];
  v209 = v104;
  v210 = v109;
  while (2)
  {
    if (v108)
    {
      v223 = v112;
      v120 = v110;
LABEL_78:
      v121 = __clz(__rbit64(v108));
      v108 &= v108 - 1;
      v122 = v121 | (v120 << 6);
      v123 = *(*(v212 + 48) + v122);
      v124 = *(v212 + 56) + 48 * v122;
      v125 = *v124;
      v126 = *(v124 + 8);
      v128 = *(v124 + 16);
      v127 = *(v124 + 24);
      v129 = *(v124 + 32);
      v220 = v123;
      v130 = qword_1A2D18668[v123];
      v230 = *v124;
      v216 = v127;
      v218 = v129;
      v214 = v128;
      if (*(v124 + 40))
      {
        v131 = objc_allocWithZone(ACActivityPresentationDestination);

        v132 = [v131 initWithDestination_];

        v133 = swift_isUniquelyReferenced_nonNull_native();
        *&v233 = v223;
        v134 = sub_1A2C82C60(v132);
        v136 = v223[2];
        v137 = (v135 & 1) == 0;
        v45 = __OFADD__(v136, v137);
        v138 = v136 + v137;
        if (v45)
        {
          goto LABEL_144;
        }

        v139 = v135;
        if (v223[3] >= v138)
        {
          if (v133)
          {
            goto LABEL_88;
          }

          v170 = v134;
          sub_1A2CB42A4();
          v134 = v170;
          v112 = v233;
          if ((v139 & 1) == 0)
          {
            goto LABEL_113;
          }

LABEL_89:
          v151 = (v112[7] + 16 * v134);
          *v151 = v230;
          v151[1] = v126;
        }

        else
        {
          sub_1A2C82CAC(v138, v133);
          v134 = sub_1A2C82C60(v132);
          if ((v139 & 1) != (v140 & 1))
          {
            goto LABEL_160;
          }

LABEL_88:
          v112 = v233;
          if (v139)
          {
            goto LABEL_89;
          }

LABEL_113:
          v112[(v134 >> 6) + 8] |= 1 << v134;
          *(v112[6] + 8 * v134) = v132;
          v171 = (v112[7] + 16 * v134);
          *v171 = v230;
          v171[1] = v126;
          v172 = v112[2];
          v45 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v45)
          {
            goto LABEL_157;
          }

          v112[2] = v173;
        }

        v156 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v224 = sub_1A2D087A4();
        if ((v111 & 0xC000000000000001) != 0)
        {
          if (v111 < 0)
          {
            v174 = v111;
          }

          else
          {
            v174 = v111 & 0xFFFFFFFFFFFFFF8;
          }

          v175 = sub_1A2D08924();
          if (__OFADD__(v175, 1))
          {
            goto LABEL_150;
          }

          v111 = sub_1A2D06894(v174, v175 + 1);
        }

        v176 = swift_isUniquelyReferenced_nonNull_native();
        *&v233 = v111;
        v178 = sub_1A2C82C60(v156);
        v179 = *(v111 + 16);
        v180 = (v177 & 1) == 0;
        v181 = v179 + v180;
        if (__OFADD__(v179, v180))
        {
          goto LABEL_147;
        }

        v182 = v177;
        if (*(v111 + 24) >= v181)
        {
          if ((v176 & 1) == 0)
          {
            sub_1A2CB4144();
          }
        }

        else
        {
          sub_1A2C82FF4(v181, v176);
          v183 = sub_1A2C82C60(v156);
          if ((v182 & 1) != (v184 & 1))
          {
            goto LABEL_160;
          }

          v178 = v183;
        }

        v111 = v233;
        if (v182)
        {
          v185 = *(v233 + 56);
          v186 = *(v185 + 8 * v178);
          *(v185 + 8 * v178) = v224;

          v115 = v230;
          v116 = v126;
          v117 = v214;
          v118 = v216;
          v119 = v218;
LABEL_70:
          sub_1A2C732E4(v115, v116, v117, v118, v119);

LABEL_71:
          v110 = v120;
          v104 = v209;
          v109 = v210;
          continue;
        }

        *(v233 + 8 * (v178 >> 6) + 64) |= 1 << v178;
        *(*(v111 + 48) + 8 * v178) = v156;
        *(*(v111 + 56) + 8 * v178) = v224;
        sub_1A2C732E4(v230, v126, v214, v216, v218);
        v187 = *(v111 + 16);
        v45 = __OFADD__(v187, 1);
        v169 = v187 + 1;
        if (v45)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v141 = objc_allocWithZone(ACActivityPresentationDestination);
        *&v233 = v125;
        *(&v233 + 1) = v126;
        v234 = v128;
        v235 = v127;
        v236 = v129;
        v237 = 0;
        sub_1A2C6BD18(&v233, v232, &qword_1EB0A18F8, &qword_1A2D17D60);
        v142 = [v141 initWithDestination_];

        v143 = swift_isUniquelyReferenced_nonNull_native();
        v232[0] = v223;
        v144 = sub_1A2C82C60(v142);
        v146 = v223[2];
        v147 = (v145 & 1) == 0;
        v45 = __OFADD__(v146, v147);
        v148 = v146 + v147;
        if (v45)
        {
          goto LABEL_145;
        }

        v149 = v145;
        if (v223[3] >= v148)
        {
          if ((v143 & 1) == 0)
          {
            v188 = v144;
            sub_1A2CB42A4();
            v144 = v188;
          }
        }

        else
        {
          sub_1A2C82CAC(v148, v143);
          v144 = sub_1A2C82C60(v142);
          if ((v149 & 1) != (v150 & 1))
          {
            goto LABEL_160;
          }
        }

        v112 = v232[0];
        if (v149)
        {
          v152 = (*(v232[0] + 56) + 16 * v144);
          *v152 = v230;
          v152[1] = v126;
        }

        else
        {
          *(v232[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
          *(v112[6] + 8 * v144) = v142;
          v153 = (v112[7] + 16 * v144);
          *v153 = v230;
          v153[1] = v126;
          v154 = v112[2];
          v45 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v45)
          {
            goto LABEL_156;
          }

          v112[2] = v155;
        }

        v156 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v157 = sub_1A2D087A4();
        if ((v111 & 0xC000000000000001) != 0)
        {
          if (v111 < 0)
          {
            v158 = v111;
          }

          else
          {
            v158 = v111 & 0xFFFFFFFFFFFFFF8;
          }

          v159 = sub_1A2D08924();
          if (__OFADD__(v159, 1))
          {
            goto LABEL_151;
          }

          v111 = sub_1A2D06894(v158, v159 + 1);
        }

        v160 = swift_isUniquelyReferenced_nonNull_native();
        v232[0] = v111;
        v161 = sub_1A2C82C60(v156);
        v163 = *(v111 + 16);
        v164 = (v162 & 1) == 0;
        v45 = __OFADD__(v163, v164);
        v165 = v163 + v164;
        if (v45)
        {
          goto LABEL_146;
        }

        v166 = v162;
        if (*(v111 + 24) >= v165)
        {
          if ((v160 & 1) == 0)
          {
            v189 = v161;
            sub_1A2CB4144();
            v161 = v189;
          }
        }

        else
        {
          sub_1A2C82FF4(v165, v160);
          v161 = sub_1A2C82C60(v156);
          if ((v166 & 1) != (v167 & 1))
          {
            goto LABEL_160;
          }
        }

        v111 = v232[0];
        if (v166)
        {
          v113 = *(v232[0] + 56);
          v114 = *(v113 + 8 * v161);
          *(v113 + 8 * v161) = v157;

          v115 = v230;
          v116 = v126;
          v117 = v214;
          v118 = v216;
          v119 = v218;
          goto LABEL_70;
        }

        *(v232[0] + 8 * (v161 >> 6) + 64) |= 1 << v161;
        *(*(v111 + 48) + 8 * v161) = v156;
        *(*(v111 + 56) + 8 * v161) = v157;
        sub_1A2C732E4(v230, v126, v214, v216, v218);
        v168 = *(v111 + 16);
        v45 = __OFADD__(v168, 1);
        v169 = v168 + 1;
        if (v45)
        {
          goto LABEL_158;
        }
      }

      *(v111 + 16) = v169;
      goto LABEL_71;
    }

    break;
  }

  while (1)
  {
    v120 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      break;
    }

    if (v120 >= v109)
    {

      v190 = *(v208 + *(v200 + 64) + 8);
      v221 = qword_1A2D18640[*(v208 + *(v200 + 72))];
      v231 = sub_1A2D08434();
      sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
      sub_1A2C8325C();
      v225 = sub_1A2D08384();

      v191 = sub_1A2D08384();

      v228 = sub_1A2D07F54();
      v192 = sub_1A2D07F24();
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v193 = sub_1A2D08384();

      v194 = sub_1A2D08384();

      if (v190)
      {
        v195 = sub_1A2D08434();
      }

      else
      {
        v195 = 0;
      }

      if (v204)
      {
        v196 = sub_1A2D08434();
      }

      else
      {
        v196 = 0;
      }

      LOBYTE(v199) = v202;
      v197 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v231 sceneTargets:v225 alertSceneTargets:v191 presentationOptions:v201 isEphemeral:v205 isMomentary:v203 isImportant:v199 createdDate:v228 descriptorData:v192 contentTypesByDestination:v193 alertContentTypesByDestination:v194 remoteDeviceIdentifier:v195 localizedAppName:v196 protectionClass:v221];
      sub_1A2C55840(v207, v206);

      sub_1A2C78A08(v208);
      return v197;
    }

    v108 = *(v104 + 8 * v120);
    ++v110;
    if (v108)
    {
      v223 = v112;
      goto LABEL_78;
    }
  }

LABEL_139:
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
  sub_1A2D08B84();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}