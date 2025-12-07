uint64_t sub_1A3FA00DC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB124BF8, MEMORY[0x1E69C1440], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A5245154();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    sub_1A3FA0464([v11 type], v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v14 = *(v8 + 32);
      v14(v10, v6, v7);
      v14(a2, v10, v7);
      v15 = *MEMORY[0x1E69C1270];
      v16 = sub_1A5244EB4();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a2, v15, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    sub_1A3C2C658(v6, &qword_1EB124BF8, MEMORY[0x1E69C1440], MEMORY[0x1E69E6720], sub_1A3CA0974);
  }

  v12 = [a1 assetCollectionSubtype];
  if (v12 == 205)
  {
    v13 = MEMORY[0x1E69C1268];
  }

  else if (v12 == 1000000212)
  {
    v13 = MEMORY[0x1E69C1258];
  }

  else
  {
    if (v12 != 1000000201)
    {
      v20 = sub_1A5244EB4();
      return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    }

    v13 = MEMORY[0x1E69C1260];
  }

  v18 = *v13;
  v16 = sub_1A5244EB4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(a2, v18, v16);
  return (*(v17 + 56))(a2, 0, 1, v16);
}

uint64_t sub_1A3FA0464@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5245154();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 6u)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&unk_1E7729CA0 + (a1 - 1));
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6.n128_f64[0]);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

void *sub_1A3FA05D8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3CA0974(0, &qword_1EB126280, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1A3FA07D4()
{
  result = qword_1EB12A578;
  if (!qword_1EB12A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A578);
  }

  return result;
}

void sub_1A3FA0828(uint64_t a1)
{
  if (!qword_1EB12F6C0)
  {
    sub_1A3FA0898();
    sub_1A524E4B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F6C0);
    }
  }
}

unint64_t sub_1A3FA0898()
{
  result = qword_1EB139C40;
  if (!qword_1EB139C40)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB139C40);
  }

  return result;
}

uint64_t sub_1A3FA08E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3FA0948()
{
  result = qword_1EB12A568;
  if (!qword_1EB12A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A568);
  }

  return result;
}

void sub_1A3FA099C(uint64_t a1)
{
  if (!qword_1EB125B48)
  {
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125B48);
    }
  }
}

uint64_t sub_1A3FA0A08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A53BFAF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

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

uint64_t sub_1A3FA0B20(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  result = *a1;
  switch(*a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xA:
    case 0x16:
      return 11;
    case 3:
      return 2;
    case 7:
      return 4;
    case 9:
      return 5;
    case 0xB:
    case 0xF:
      return 6;
    case 0xC:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
      return 7;
    case 0xD:
      return 8;
    case 0xE:
      return 9;
    case 0x15:
      return 10;
    default:
      sub_1A3C581A4(a2, &v24 - v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 9)
        {
          return 0;
        }
      }

      else if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 4)
      {
        sub_1A3C582D4(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        return 0;
      }

      v17 = sub_1A3C4A5F8();
      (*(v5 + 16))(v7, v17, v4);
      sub_1A3C581A4(a2, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v18 = sub_1A5246F04();
      v19 = sub_1A524D244();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v20 = 136315138;
        v21 = sub_1A3F9B024();
        v23 = v22;
        sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        sub_1A3C2EF94(v21, v23, &v25);
      }

      sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      (*(v5 + 8))(v7, v4);
      sub_1A3C582D4(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      return 11;
  }
}

unint64_t sub_1A3FA0F18()
{
  result = qword_1EB12F6C8;
  if (!qword_1EB12F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6C8);
  }

  return result;
}

unint64_t sub_1A3FA0FC0()
{
  result = qword_1EB12F6D0;
  if (!qword_1EB12F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6D0);
  }

  return result;
}

unint64_t sub_1A3FA1014()
{
  result = qword_1EB12F6D8;
  if (!qword_1EB12F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6D8);
  }

  return result;
}

void sub_1A3FA1068(uint64_t a1)
{
  if (!qword_1EB1254A0)
  {
    sub_1A3C652C8(255, &qword_1EB1254B0, &protocol descriptor for LemonadeMemoriesShelfProviding, 0);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1254A0);
    }
  }
}

unint64_t sub_1A3FA10D4()
{
  result = qword_1EB12F6E0;
  if (!qword_1EB12F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6E0);
  }

  return result;
}

unint64_t sub_1A3FA117C()
{
  result = qword_1EB12F6E8;
  if (!qword_1EB12F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6E8);
  }

  return result;
}

unint64_t sub_1A3FA11D0()
{
  result = qword_1EB12F6F0;
  if (!qword_1EB12F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6F0);
  }

  return result;
}

unint64_t sub_1A3FA12DC()
{
  result = qword_1EB12F6F8;
  if (!qword_1EB12F6F8)
  {
    sub_1A3C371F0(255, &qword_1EB12F700, &type metadata for LemonadeBookmark.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6F8);
  }

  return result;
}

unint64_t sub_1A3FA13A4()
{
  result = qword_1EB12F708;
  if (!qword_1EB12F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F708);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LemonadeBookmark.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3FA15E4()
{
  result = qword_1EB19D720[0];
  if (!qword_1EB19D720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D720);
  }

  return result;
}

unint64_t sub_1A3FA163C()
{
  result = qword_1EB19D830[0];
  if (!qword_1EB19D830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D830);
  }

  return result;
}

unint64_t sub_1A3FA1694()
{
  result = qword_1EB19D940[0];
  if (!qword_1EB19D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D940);
  }

  return result;
}

unint64_t sub_1A3FA16EC()
{
  result = qword_1EB19DA50[0];
  if (!qword_1EB19DA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DA50);
  }

  return result;
}

unint64_t sub_1A3FA1744()
{
  result = qword_1EB19DB60[0];
  if (!qword_1EB19DB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DB60);
  }

  return result;
}

unint64_t sub_1A3FA179C()
{
  result = qword_1EB19DC70[0];
  if (!qword_1EB19DC70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DC70);
  }

  return result;
}

unint64_t sub_1A3FA17F4()
{
  result = qword_1EB19DD80[0];
  if (!qword_1EB19DD80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DD80);
  }

  return result;
}

unint64_t sub_1A3FA184C()
{
  result = qword_1EB19DE90[0];
  if (!qword_1EB19DE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DE90);
  }

  return result;
}

unint64_t sub_1A3FA18A4()
{
  result = qword_1EB19DFA0[0];
  if (!qword_1EB19DFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DFA0);
  }

  return result;
}

unint64_t sub_1A3FA18FC()
{
  result = qword_1EB19E0B0[0];
  if (!qword_1EB19E0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19E0B0);
  }

  return result;
}

unint64_t sub_1A3FA1954()
{
  result = qword_1EB19E1C0[0];
  if (!qword_1EB19E1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19E1C0);
  }

  return result;
}

void sub_1A3FA1A10()
{
  sub_1A3FA3CC8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1A5240E34();
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1A5240D44();
    (*(v4 + 8))(v2, v3);
    PXOpenSensitiveURL(v5, 0);
  }
}

uint64_t sub_1A3FA1B74()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FA1C08()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FA1CC4()
{
  sub_1A3D809E8(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6982A88];
  sub_1A3CBA198(0, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1A5247594();
  MEMORY[0x1A59028B0](v8, v5, v9);
  (*(v6 + 8))(v8, v5);
  v18 = v5;
  v19 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v14, v11, OpaqueTypeConformance2);
  v18 = v11;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1A5247554();
  (*(v2 + 8))(v4, v1);
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_1A3FA1FA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1A3CB4D08();
  v5 = v4;
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v5, a2);
  sub_1A3FA3CC8(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3FA2144@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v18 = a1;
  v4 = MEMORY[0x1E6968D10];
  sub_1A3CB7B30(0, &qword_1EB12B088, MEMORY[0x1E6968D10]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = MEMORY[0x1E6968D98];
  sub_1A3CB7B30(0, &qword_1EB12B010, MEMORY[0x1E6968D98]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1A3CB7E5C(&qword_1EB12B018, &qword_1EB12B010, v10, MEMORY[0x1E6968DA8]);
  sub_1A5240AB4();
  v20 = v19;
  sub_1A5240AA4();
  sub_1A3CB7F40(0);
  a3[3] = v16;
  a3[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1A3CB7E5C(&qword_1EB12B090, &qword_1EB12B088, v4, MEMORY[0x1E6968D20]);
  sub_1A5240A44();
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A3FA23DC()
{
  v0 = sub_1A5246944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A4A5AD54();
  (*(v1 + 16))(v3, v4, v0);
  return sub_1A524B5E4();
}

void *sub_1A3FA24CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3FA24EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3FA24EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3FA3CC8(0, &qword_1EB12F718, MEMORY[0x1E6982B58], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5247784() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A5247784() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A3FA26E8()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB16E6B0[0] != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EAF88);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FA29B0(uint64_t a1)
{
  v2 = sub_1A5247784();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA3B9C(0);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1A3FA24CC(0, 0, 0);
  v11 = v32;
  v29 = *(a1 + 16);
  if (v29)
  {
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = *(v13 + 56);
    v27 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v28 = v14;
    v16 = a1 + v27;
    v25 = (v13 + 16);
    v26 = v15;
    do
    {
      v17 = v30;
      v18 = *(v31 + 48);
      *v30 = v12;
      v19 = v13;
      v28(v17 + v18, v16, v2);
      sub_1A3FA3C08(v17, v10);
      sub_1A5247774();
      sub_1A3FA3C6C(v10);
      v32 = v11;
      v20 = v2;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A3FA24CC((v21 > 1), v22 + 1, 1);
        v11 = v32;
      }

      ++v12;
      *(v11 + 16) = v22 + 1;
      v23 = v26;
      (*v25)(v11 + v27 + v22 * v26, v5, v20);
      v16 += v23;
      v2 = v20;
      v13 = v19;
    }

    while (v29 != v12);
  }

  return v11;
}

uint64_t sub_1A3FA2C14()
{
  v0 = sub_1A5247784();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v13[0] = v6;
  v13[1] = v8;
  sub_1A3D5F9DC();
  sub_1A5247764();
  sub_1A3FA3CC8(0, &qword_1EB12F718, MEMORY[0x1E6982B58], MEMORY[0x1E69E6F90]);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v1 + 32))(v10 + v9, v3, v0);
  v11 = sub_1A3FA29B0(v10);
  swift_setDeallocating();
  (*(v1 + 8))(v10 + v9, v0);
  swift_deallocClassInstance();
  return v11;
}

void sub_1A3FA2E24()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB170CA8[0] != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EAFD8);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FA30EC()
{
  sub_1A3FA39A0(0);
  v1 = *(v0 - 8);
  v58 = v0;
  v59 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB99D8(0);
  v54 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA0BC(0);
  v51 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A52476E4();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA198(0, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
  v50 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v45 - v10;
  v11 = sub_1A5247584();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA198(0, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
  v61 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v45 - v16;
  v17 = sub_1A52475E4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E6982AC0];
  sub_1A3CBA198(0, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
  v23 = v22;
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v20, v17, v21);
  (*(v18 + 8))(v20, v17);
  sub_1A5247594();
  MEMORY[0x1A59028B0](v14, v11, MEMORY[0x1E6982A88]);
  (*(v12 + 8))(v14, v11);
  sub_1A52475D4();
  v26 = v46;
  v27 = MEMORY[0x1E6982B20];
  MEMORY[0x1A59028B0](v8, v46, MEMORY[0x1E6982B20]);
  v28 = v26;
  (*(v47 + 8))(v8, v26);
  v64 = v17;
  v65 = MEMORY[0x1E6982AC0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v23;
  MEMORY[0x1A59028E0](v25, v23, OpaqueTypeConformance2);
  v64 = v23;
  v65 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v64 = v11;
  v65 = MEMORY[0x1E6982A88];
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v52;
  v33 = v51;
  v34 = v61;
  sub_1A5247564();
  v64 = v33;
  v65 = v34;
  v66 = v30;
  v67 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v64 = v28;
  v65 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v55;
  v38 = v32;
  v39 = v62;
  v40 = v54;
  v41 = v50;
  sub_1A5247564();
  v64 = v40;
  v65 = v41;
  v66 = v35;
  v67 = v36;
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  v43 = sub_1A5247554();
  (*(v59 + 8))(v37, v42);
  (*(v57 + 8))(v38, v40);
  (*(v56 + 8))(v63, v33);
  (*(v53 + 8))(v39, v41);
  (*(v49 + 8))(v60, v61);
  (*(v48 + 8))(v25, v45);
  return v43;
}

unint64_t sub_1A3FA38D4()
{
  result = qword_1EB125BB8;
  if (!qword_1EB125BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BB8);
  }

  return result;
}

unint64_t sub_1A3FA392C()
{
  result = qword_1EB125DF8;
  if (!qword_1EB125DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DF8);
  }

  return result;
}

void sub_1A3FA39A0(uint64_t a1)
{
  if (!qword_1EB1249F8)
  {
    sub_1A3CB99D8(255);
    sub_1A3CBA198(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A3CBA0BC(255);
    sub_1A3CBA198(255, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
    sub_1A3CBA198(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1249F8);
    }
  }
}

void sub_1A3FA3B9C(uint64_t a1)
{
  if (!qword_1EB12F720)
  {
    sub_1A5247784();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F720);
    }
  }
}

uint64_t sub_1A3FA3C08(uint64_t a1, uint64_t a2)
{
  sub_1A3FA3B9C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FA3C6C(uint64_t a1)
{
  sub_1A3FA3B9C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3FA3CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3FA3D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3[2] = sub_1A524CC54();
  v3[3] = sub_1A524CC44();
  sub_1A3FA4F30(0, v7);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1A3FA3E34;

  return static UIApplication.navigate(to:options:ignoreNavigationFailure:)(a1, a2, v4);
}

uint64_t sub_1A3FA3E34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A3DDDDF0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A3FA3FB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A3FA3FB4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1A3FA401C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1A524CC54();
  v3[3] = sub_1A524CC44();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1A3DDF8E8;

  return sub_1A42A90DC(a1, a2, a3);
}

uint64_t sub_1A3FA40FC(uint64_t a1)
{
  v1[2] = sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1A3DDF8E8;

  return sub_1A42A9B08(a1);
}

uint64_t sub_1A3FA41C4()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDDC30;

  return sub_1A42A7CD0();
}

uint64_t sub_1A3FA427C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1A524CC54();
  v4[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1A3DDF8E8;

  return sub_1A42A8B54(a1, a2 & 1, a3, a4);
}

uint64_t sub_1A3FA4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1A524CC54();
  v4[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1A3DDF8E8;

  return sub_1A42A9EC8(a1, a2, a3, a4);
}

uint64_t sub_1A3FA444C(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 176) = a2;
  *(v7 + 184) = v6;
  *(v7 + 160) = a5;
  *(v7 + 168) = a6;
  *(v7 + 144) = a3;
  *(v7 + 152) = a4;
  *(v7 + 225) = a1;
  sub_1A524CC54();
  *(v7 + 192) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A3FA44F0, v9, v8);
}

uint64_t sub_1A3FA44F0()
{
  v1 = qword_1A530D8B8[*(v0 + 225)];
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(*(v0 + 184) + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_1A3FA4654;
  v8 = swift_continuation_init();
  sub_1A3FA4F7C(0);
  *(v0 + 136) = v9;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A3FA485C;
  *(v0 + 104) = &block_descriptor_61;
  *(v0 + 112) = v8;
  [v5 swipeTowardsEdge:v1 touchArea:v2 inCoordinateSpace:v0 + 80 completionHandler:{v7, v6, v4, v3}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A3FA4654()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_1A3FA47E8;
  }

  else
  {
    v5 = sub_1A3FA4784;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3FA4784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA47E8()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA485C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A3FA4948(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1A524E5E4();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();
  sub_1A524CC54();
  *(v1 + 48) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3FA4A3C, v4, v3);
}

uint64_t sub_1A3FA4A3C()
{
  v1 = sub_1A524EE14();
  v3 = v2;
  sub_1A524EBB4();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1A3FA4B18;

  return sub_1A3DCFAB0(v1, v3, 0, 0, 1);
}

uint64_t sub_1A3FA4B18()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1A3FA4D1C;
  }

  else
  {
    v8 = sub_1A3FA4CB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A3FA4CB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA4D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A3FA4DE0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v3 + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A3DE0D04(a1);
  return v4;
}

id sub_1A3FA4E54(uint64_t a1)
{
  sub_1A3DE0CA0(a1, v1 + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosPPTTestCase(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1A3DE0D04(a1);
  return v3;
}

id sub_1A3FA4EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPPTTestCase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3FA4F30(uint64_t a1, uint64_t a2)
{
  result = qword_1EB12F728;
  if (!qword_1EB12F728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12F728);
  }

  return result;
}

void sub_1A3FA4F7C(uint64_t a1)
{
  if (!qword_1EB131250)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131250);
    }
  }
}

uint64_t type metadata accessor for PhotosPPTTestCase(uint64_t a1)
{
  result = qword_1EB19E3E0;
  if (!qword_1EB19E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3FA5034()
{
  result = qword_1EB12F730;
  if (!qword_1EB12F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F730);
  }

  return result;
}

uint64_t sub_1A3FA5090(uint64_t a1)
{
  result = type metadata accessor for PhotosPPTTestRunner(319);
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

uint64_t sub_1A3FA5130@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  sub_1A3FAAD38(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(uint64_t a1)
{
  result = qword_1EB18F1C0;
  if (!qword_1EB18F1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FA53AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3FA5410@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1A530D8E0;
  *(a2 + 16) = 0x4028000000000000;
  v3 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v4 = v3[7];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + v3[9]);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0);
  sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_1A3FA5510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  sub_1A3FA8BC4(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F918, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F948]);
  v104 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v90 - v8;
  v105 = sub_1A5249764();
  v9 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A52486A4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8554(0);
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3FA850C(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v90 - v20;
  sub_1A3FA8468(0);
  v102 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v96 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA835C(0, v22);
  v103 = v24;
  v100 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v27 = a1;
  v28 = *(a1 + *(v26 + 36) + 8);
  v29 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v28) + 0x140))() == 5)
  {
    *v15 = sub_1A524BC74();
    v15[1] = v30;
    sub_1A3FAA798(0, &qword_1EB12F928, sub_1A3FA85E8, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    v32 = v15 + *(v31 + 44);
    v90 = v27;
    sub_1A3FA60F8(v27, v32);
    v33 = sub_1A44070D4();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0xE000000000000000;
    if (v34)
    {
      v36 = v34;
    }

    *&v112 = v35;
    *(&v112 + 1) = v36;
    sub_1A3D5F9DC();
    v37 = sub_1A524A464();
    v39 = v38;
    v92 = v4;
    v41 = v40;
    v91 = v9;
    sub_1A3FAA5BC(&qword_1EB12F7F0, sub_1A3FA8554, MEMORY[0x1E6981880]);
    v42 = v94;
    sub_1A524AAB4();
    sub_1A3E04DF4(v37, v39, v41 & 1);

    sub_1A3FAA99C(v15, sub_1A3FA8554);
    v43 = v95;
    v44 = &v95[*(v19 + 36)];
    v45 = *(sub_1A5248A14() + 20);
    v46 = *MEMORY[0x1E697F468];
    v47 = sub_1A52494A4();
    (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
    __asm { FMOV            V0.2D, #16.0 }

    *v44 = _Q0;
    sub_1A3EC447C(0);
    v44[*(v53 + 36)] = 0;
    sub_1A3CD13D8(v42, v43);
    sub_1A3FA5130(v12);
    sub_1A4394B64(v12, v26, &off_1EE6D7980);
    v54 = *(v97 + 8);
    v55 = v98;
    v54(v12, v98);
    sub_1A3FA5130(v12);
    v56 = sub_1A4394B64(v12, v26, &off_1EE6D7980);
    (v54)(v12, v55, v56);
    sub_1A524BC74();
    sub_1A52481F4();
    v57 = v96;
    sub_1A3CD143C(v43, v96);
    v58 = v102;
    v59 = (v57 + *(v102 + 36));
    v60 = v113;
    *v59 = v112;
    v59[1] = v60;
    v59[2] = v114;
    v61 = v101;
    sub_1A5248B84();
    v62 = sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    v63 = sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v64 = v99;
    v65 = v105;
    sub_1A524A974();
    (*(v91 + 8))(v61, v65);
    sub_1A3FAA99C(v57, sub_1A3FA8468);
    v66 = v100;
    v67 = v103;
    (*(v100 + 16))(v106, v64, v103);
    swift_storeEnumTagMultiPayload();
    v108 = v58;
    v109 = v65;
    v110 = v62;
    v111 = v63;
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    sub_1A5249744();
    return (*(v66 + 8))(v64, v67);
  }

  else
  {
    *v6 = sub_1A5249574();
    *(v6 + 1) = 0;
    v6[16] = 0;
    sub_1A3FAA798(0, &qword_1EB12F920, sub_1A3FA8CFC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A3FA7394(v27, &v6[*(v69 + 44)]);
    sub_1A3FAA714(0, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v71 = &v6[*(v70 + 36)];
    sub_1A4110614(v28);
    v72 = sub_1A524BC74();
    v74 = v73;
    sub_1A3FA9268(0, v73);
    v76 = &v71[*(v75 + 36)];
    *v76 = v72;
    v76[1] = v74;
    v77 = (*((*v29 & *v28) + 0xC0))();
    [v77 contentGuideInsets];

    EdgeInsets.init(_:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = sub_1A524A064();
    v87 = &v6[*(v4 + 36)];
    *v87 = v86;
    *(v87 + 1) = v79;
    *(v87 + 2) = v81;
    *(v87 + 3) = v83;
    *(v87 + 4) = v85;
    v87[40] = 0;
    sub_1A3FAA934(v6, v106, sub_1A3FA8BC4);
    swift_storeEnumTagMultiPayload();
    v88 = sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    v89 = sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    *&v112 = v102;
    *(&v112 + 1) = v105;
    *&v113 = v88;
    *(&v113 + 1) = v89;
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    sub_1A5249744();
    return sub_1A3FAA99C(v6, sub_1A3FA8BC4);
  }
}

uint64_t sub_1A3FA60F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = sub_1A52489A4();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v59 = *(v4 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA87E0(0);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA86B4(0);
  v67 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v12;
  v13 = sub_1A52486A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v56 - v21;
  v60 = *(a1 + *(v4 + 36) + 8);
  sub_1A4110614(v60);
  v22 = a1;
  sub_1A3FA5130(v16);
  sub_1A4394B64(v16, v4, &off_1EE6D7980);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1A3FA5130(v16);
  v24 = sub_1A4394B64(v16, v4, &off_1EE6D7980);
  (v23)(v16, v13, v24);
  sub_1A524BC74();
  sub_1A52481F4();
  v25 = v56;
  v26 = &v56[*(v18 + 44)];
  v27 = v74;
  *v26 = v73;
  *(v26 + 1) = v27;
  *(v26 + 2) = v75;
  v28 = v57;
  sub_1A3FAAD38(a1, v57, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v29 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v30 = swift_allocObject();
  sub_1A3FA9F40(v28, v30 + v29, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v72 = v22;
  sub_1A3FA8874(0);
  sub_1A3FAA5BC(&qword_1EB12F7C0, sub_1A3FA8874, MEMORY[0x1E6981870]);
  v31 = v61;
  sub_1A524B704();
  v32 = v64;
  sub_1A5248994();
  sub_1A3FAA5BC(&qword_1EB12F7C8, sub_1A3FA87E0, MEMORY[0x1E697D680]);
  sub_1A3FAA5BC(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v33 = v62;
  v34 = v65;
  v35 = v68;
  sub_1A524A934();
  (*(v70 + 8))(v32, v35);
  v36 = (*(v66 + 8))(v31, v34);
  v37 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0xC0))(v36);
  [v37 contentGuideInsets];

  EdgeInsets.init(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = sub_1A524A064();
  v47 = v33 + *(v67 + 44);
  *v47 = v46;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = v25;
  v49 = v25;
  v50 = v63;
  sub_1A3FAA934(v48, v63, sub_1A3EC3E2C);
  v51 = v33;
  v52 = v69;
  sub_1A3FAA934(v33, v69, sub_1A3FA86B4);
  v53 = v71;
  sub_1A3FAA934(v50, v71, sub_1A3EC3E2C);
  sub_1A3FA861C(0);
  sub_1A3FAA934(v52, v53 + *(v54 + 48), sub_1A3FA86B4);
  sub_1A3FAA99C(v51, sub_1A3FA86B4);
  sub_1A3FAA99C(v49, sub_1A3EC3E2C);
  sub_1A3FAA99C(v52, sub_1A3FA86B4);
  return sub_1A3FAA99C(v50, sub_1A3EC3E2C);
}

uint64_t sub_1A3FA6890()
{
  v1 = sub_1A5248334();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  v9 = sub_1A524C634();
  sub_1A3F37DA4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v11;
  v12 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v29[3] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_1A3FAAD38(v0, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  String.init(forType:)(v29);
  v14 = sub_1A524C634();

  *(inited + 48) = v14;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v15;
  v16 = *(v12 + 36);
  v25 = v0;
  *(inited + 72) = (*((*MEMORY[0x1E69E7D40] & **(v0 + v16 + 8)) + 0x88))();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3FAA9FC(0, &qword_1EB126F80, sub_1A3C7B6A4, MEMORY[0x1E69E6158]);
  swift_arrayDestroy();
  sub_1A3C7B6A4(0, v17);
  v18 = sub_1A524C3D4();

  [v28 sendEvent:v9 withPayload:v18];

  sub_1A44069A0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1A3FAADA0(v5, sub_1A3EE53E0);
  }

  v20 = v23;
  (*(v7 + 32))(v23, v5, v6);
  v21 = v24;
  sub_1A3EE4C48(v24);
  sub_1A5248304();
  (*(v26 + 8))(v21, v27);
  return (*(v7 + 8))(v20, v6);
}

double sub_1A3FA6C94@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524A274();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA7018(v42);
  v33 = v42[0];
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  sub_1A4406DDC(v11);
  v12 = sub_1A524A454();
  v31 = v13;
  v32 = v14;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  (*(v6 + 104))(v8, *MEMORY[0x1E6980F18], v5);
  v18 = sub_1A524A154();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_1A524A1A4();
  v19 = sub_1A524A1C4();
  sub_1A3FAADA0(v4, sub_1A3E75D84);
  (*(v6 + 8))(v8, v5);
  v20 = swift_getKeyPath();
  v16 &= 1u;
  LOBYTE(v42[0]) = v16;
  v21 = sub_1A524B4A4();
  v22 = swift_getKeyPath();
  v23 = *v36;
  *(&v38 + 1) = *v36;
  DWORD1(v38) = *&v36[3];
  v24 = *v35;
  *(&v39 + 9) = *v35;
  HIDWORD(v39) = *&v35[3];
  v25 = v31;
  v26 = v32;
  *&v37 = v12;
  *(&v37 + 1) = v31;
  LOBYTE(v38) = v16;
  *(&v38 + 1) = v32;
  *&v39 = KeyPath;
  BYTE8(v39) = 1;
  *&v40 = v20;
  *(&v40 + 1) = v19;
  *&v41 = v22;
  *(&v41 + 1) = v21;
  *a1 = v33;
  v27 = v38;
  *(a1 + 8) = v37;
  v28 = v39;
  v29 = v40;
  *(a1 + 72) = v41;
  *(a1 + 56) = v29;
  *(a1 + 40) = v28;
  *(a1 + 24) = v27;
  v42[0] = v12;
  v42[1] = v25;
  v43 = v16;
  *&v44[3] = *&v36[3];
  *v44 = v23;
  v45 = v26;
  v46 = KeyPath;
  v47 = 1;
  *&v48[3] = *&v35[3];
  *v48 = v24;
  v49 = v20;
  v50 = v19;
  v51 = v22;
  v52 = v21;

  sub_1A3FAAD38(&v37, &v34, sub_1A3EC42B0);
  sub_1A3FAADA0(v42, sub_1A3EC42B0);

  return result;
}

void sub_1A3FA7018(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1A3FA92E4(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A524B554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0) + 36) + 8);
  v12 = sub_1A44066C0();
  if (v12)
  {
    v13 = v12;
    sub_1A524B524();
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v14 = sub_1A524B5C4();

    (*(v8 + 8))(v10, v7);
    v15 = sub_1A524B484();
    KeyPath = swift_getKeyPath();
    v17 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x140);
    v17();
    v17();
    sub_1A524BC74();
    sub_1A52481F4();
    v26 = 1;
    v21[1] = v14;
    v21[2] = 0;
    v22 = 257;
    v23 = KeyPath;
    v24 = v15;
    v25 = 256;
    sub_1A3FAA714(0, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FA9DC0();
    v18 = sub_1A524B8E4();
  }

  else
  {
    *v6 = sub_1A524BC74();
    v6[1] = v19;
    sub_1A3FAA798(0, &qword_1EB12F8B8, sub_1A3FA9378, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A3FA9630(v2, v6 + *(v20 + 44));
    sub_1A3FAA5BC(&qword_1EB12F8C0, sub_1A3FA92E4, MEMORY[0x1E6981880]);
    v18 = sub_1A524B8E4();
  }

  *a1 = v18;
}

uint64_t sub_1A3FA7394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v4 = v3 - 8;
  v91 = *(v3 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA53AC(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v84 - v9;
  sub_1A3FAAA68(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8DDC(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8DB4(0);
  v96 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D8C(0);
  v94 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v84 - v21;
  v88 = sub_1A524B9A4();
  v22 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v84 - v36;
  v38 = sub_1A524B994();
  if ((*((*MEMORY[0x1E69E7D40] & **(a1 + *(v4 + 44) + 8)) + 0x108))(v38))
  {
    v39 = 0.8;
  }

  else
  {
    v39 = 0.0;
  }

  (*(v22 + 32))(v28, v24, v88);
  *&v28[*(v26 + 44)] = v39;
  v40 = sub_1A524A094();
  v41 = *(a1 + 8);
  sub_1A5247BC4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1A3FA9F40(v28, v34, sub_1A3EE16E8);
  v50 = &v34[*(v30 + 44)];
  *v50 = v40;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v88 = v37;
  sub_1A3FA9F40(v34, v37, sub_1A3FA8D64);
  v51 = v84;
  sub_1A3FA7D4C(v84);
  sub_1A3FAA714(0, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
  v53 = v52;
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v54 = v85;
  sub_1A4406DDC(v85);
  v55 = sub_1A52407E4();
  v56 = *(*(v55 - 8) + 56);
  v56(v54, 0, 1, v55);
  v57 = v87;
  v56(v87, 1, 1, v55);
  v58 = sub_1A44070D4();
  v60 = v59;
  v61 = a1;
  v62 = v89;
  sub_1A3FAAD38(a1, v89, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v63 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v64 = swift_allocObject();
  v65 = v64 + v63;
  v66 = v86;
  sub_1A3FA9F40(v62, v65, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v67 = sub_1A3FA900C();
  sub_1A42F9768(v51, v54, 0, 0, 0, v57, v58, v60, v66, sub_1A3FAAE04, v64, 3, v53, v67);
  sub_1A3FAACE8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v53) = sub_1A524A094();
  *(inited + 32) = v53;
  v69 = sub_1A524A0B4();
  *(inited + 33) = v69;
  v70 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v53)
  {
    v70 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v69)
  {
    v70 = sub_1A524A0A4();
  }

  v71 = v95;
  sub_1A3FA9F40(v66, v95, sub_1A3FA8DDC);
  *(v71 + *(v96 + 36)) = v70;
  v72 = *(v61 + 16);
  v73 = sub_1A524A064();
  v74 = v71;
  v75 = v93;
  sub_1A3FA9F40(v74, v93, sub_1A3FA8DB4);
  v76 = v75 + *(v94 + 36);
  *v76 = v73;
  *(v76 + 8) = v72;
  *(v76 + 16) = v41;
  *(v76 + 24) = v72;
  *(v76 + 32) = v41;
  *(v76 + 40) = 0;
  v77 = v97;
  sub_1A3FA9F40(v75, v97, sub_1A3FA8D8C);
  v78 = v88;
  v79 = v92;
  sub_1A3FAAD38(v88, v92, sub_1A3FA8D64);
  v80 = v98;
  sub_1A3FAAD38(v77, v98, sub_1A3FA8D8C);
  v81 = v99;
  sub_1A3FAAD38(v79, v99, sub_1A3FA8D64);
  sub_1A3FA8D30(0);
  sub_1A3FAAD38(v80, v81 + *(v82 + 48), sub_1A3FA8D8C);
  sub_1A3FAADA0(v77, sub_1A3FA8D8C);
  sub_1A3FAADA0(v78, sub_1A3FA8D64);
  sub_1A3FAADA0(v80, sub_1A3FA8D8C);
  return sub_1A3FAADA0(v79, sub_1A3FA8D64);
}

uint64_t sub_1A3FA7D4C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v54);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8E84(0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0) + 36);
  v53 = v1;
  v12 = *(v1 + v11 + 8);
  if (sub_1A44066C0())
  {
    v13 = sub_1A524B524();
  }

  else
  {
    v13 = sub_1A524B544();
  }

  v51 = v13;
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);

  v50 = sub_1A524B5C4();

  (*(v5 + 8))(v7, v4);
  v14 = objc_opt_self();
  v15 = [v14 tertiarySystemFillColor];
  v49 = sub_1A524B284();
  KeyPath = swift_getKeyPath();
  v16 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x140);
  v16();
  v16();
  sub_1A524BC74();
  sub_1A52481F4();
  v59 = 1;
  v17 = *v53;
  v18 = &v10[*(v52 + 36)];
  v19 = v54;
  v20 = *(v54 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  v23 = *(*(v22 - 8) + 104);
  v23(&v18[v20], v21, v22);
  *v18 = v17;
  *(v18 + 1) = v17;
  sub_1A3E42C88(0);
  *&v18[*(v24 + 36)] = 256;
  v25 = v57;
  *(v10 + 40) = v56;
  *v10 = v50;
  *(v10 + 1) = 0;
  *(v10 + 8) = 257;
  v26 = v49;
  *(v10 + 3) = KeyPath;
  *(v10 + 4) = v26;
  *(v10 + 56) = v25;
  *(v10 + 72) = v58;
  v23(&v3[*(v19 + 20)], v21, v22);
  *v3 = v17;
  *(v3 + 1) = v17;
  v27 = [v14 secondarySystemFillColor];
  v28 = sub_1A524B284();
  sub_1A5247EE4();
  sub_1A3FAA714(0, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
  v30 = v55;
  v31 = v55 + *(v29 + 36);
  sub_1A3FAAD38(v3, v31, MEMORY[0x1E697EAF0]);
  sub_1A3E44D10(0);
  v33 = v31 + *(v32 + 36);
  v34 = v61;
  *v33 = v60;
  *(v33 + 16) = v34;
  *(v33 + 32) = v62;
  sub_1A3E44DA4(0);
  *(v31 + *(v35 + 52)) = v28;
  *(v31 + *(v35 + 56)) = 256;
  v36 = sub_1A524BC74();
  v38 = v37;
  sub_1A3FAADA0(v3, MEMORY[0x1E697EAF0]);
  sub_1A3E44E54(0);
  v40 = (v31 + *(v39 + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = sub_1A524BC74();
  v43 = v42;

  sub_1A3FA8F78(0);
  v45 = (v31 + *(v44 + 36));
  *v45 = v41;
  v45[1] = v43;
  return sub_1A3FA9F40(v10, v30, sub_1A3FA8E84);
}

void sub_1A3FA82C0(uint64_t a1)
{
  if (!qword_1EB12F740)
  {
    sub_1A3FAA714(255, &qword_1EB12F748, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F740);
    }
  }
}

void sub_1A3FA835C(uint64_t a1, double a2)
{
  if (!qword_1EB12F750)
  {
    sub_1A3FA8468(255);
    sub_1A5249764();
    sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F750);
    }
  }
}

void sub_1A3FA8468(uint64_t a1)
{
  if (!qword_1EB12F758)
  {
    sub_1A3FAA714(255, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F758);
    }
  }
}

void sub_1A3FA8554(uint64_t a1)
{
  if (!qword_1EB12F770)
  {
    sub_1A3FA85E8(255);
    sub_1A3FAA5BC(&qword_1EB12F7D0, sub_1A3FA85E8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F770);
    }
  }
}

void sub_1A3FA8650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3FA86DC(uint64_t a1, double a2)
{
  if (!qword_1EB12F790)
  {
    sub_1A3FA87E0(255);
    sub_1A52489A4();
    sub_1A3FAA5BC(&qword_1EB12F7C8, sub_1A3FA87E0, MEMORY[0x1E697D680]);
    sub_1A3FAA5BC(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F790);
    }
  }
}

void sub_1A3FA87E0(uint64_t a1)
{
  if (!qword_1EB12F798)
  {
    sub_1A3FA8874(255);
    sub_1A3FAA5BC(&qword_1EB12F7C0, sub_1A3FA8874, MEMORY[0x1E6981870]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F798);
    }
  }
}

void sub_1A3FA8874(uint64_t a1)
{
  if (!qword_1EB12F7A0)
  {
    sub_1A3FA8908(255);
    sub_1A3FAA5BC(&qword_1EB12F7B8, sub_1A3FA8908, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F7A0);
    }
  }
}

void sub_1A3FA8908(uint64_t a1)
{
  if (!qword_1EB12F7A8)
  {
    sub_1A3FAA9FC(255, &qword_1EB12F7B0, sub_1A3EC42B0, MEMORY[0x1E6981910]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F7A8);
    }
  }
}

void sub_1A3FA8984(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3FAACE8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3FA89F0()
{
  result = qword_1EB12F7E0;
  if (!qword_1EB12F7E0)
  {
    sub_1A3FAA714(255, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A3FA8AE4();
    sub_1A3FAA5BC(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F7E0);
  }

  return result;
}

unint64_t sub_1A3FA8AE4()
{
  result = qword_1EB12F7E8;
  if (!qword_1EB12F7E8)
  {
    sub_1A3FA850C(255);
    sub_1A3FAA5BC(&qword_1EB12F7F0, sub_1A3FA8554, MEMORY[0x1E6981880]);
    sub_1A3FAA5BC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F7E8);
  }

  return result;
}

void sub_1A3FA8BC4(uint64_t a1)
{
  if (!qword_1EB12F7F8)
  {
    sub_1A3FAA714(255, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F7F8);
    }
  }
}

void sub_1A3FA8C68(uint64_t a1)
{
  if (!qword_1EB12F808)
  {
    sub_1A3FA8CFC(255);
    sub_1A3FAA5BC(&qword_1EB12F878, sub_1A3FA8CFC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F808);
    }
  }
}

void sub_1A3FA8DDC(uint64_t a1)
{
  if (!qword_1EB12F830)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = sub_1A3FA900C();
    v6 = type metadata accessor for PhotosDetailsDiscoverableView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12F830);
    }
  }
}

void sub_1A3FA8ECC(uint64_t a1)
{
  if (!qword_1EB12EA88)
  {
    sub_1A3FA9EEC(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3FA8984(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12EA88);
    }
  }
}

void sub_1A3FA8F78(uint64_t a1)
{
  if (!qword_1EB12F848)
  {
    sub_1A3E356AC(255);
    sub_1A3FAA5BC(&qword_1EB1280A8, sub_1A3E356AC, MEMORY[0x1E697E8C0]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F848);
    }
  }
}

unint64_t sub_1A3FA900C()
{
  result = qword_1EB12F850;
  if (!qword_1EB12F850)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    sub_1A3FA9100();
    sub_1A3FAA5BC(&qword_1EB12F870, sub_1A3FA8F78, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F850);
  }

  return result;
}

unint64_t sub_1A3FA9100()
{
  result = qword_1EB12F858;
  if (!qword_1EB12F858)
  {
    sub_1A3FA8E84(255);
    sub_1A3FAA418(&qword_1EB12F860, sub_1A3F2F0CC, sub_1A3FA91E8);
    sub_1A3FAA5BC(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F858);
  }

  return result;
}

unint64_t sub_1A3FA91E8()
{
  result = qword_1EB12F868;
  if (!qword_1EB12F868)
  {
    sub_1A3FA8ECC(255);
    sub_1A3E44C04();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F868);
  }

  return result;
}

void sub_1A3FA9268(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB13D7A0)
  {
    sub_1A3EC3E68(255, a2);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A5249724();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13D7A0);
    }
  }
}

void sub_1A3FA92E4(uint64_t a1)
{
  if (!qword_1EB12F880)
  {
    sub_1A3FA9378(255);
    sub_1A3FAA5BC(&qword_1EB12F8B0, sub_1A3FA9378, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F880);
    }
  }
}

void sub_1A3FA93E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3FA945C(uint64_t a1)
{
  if (!qword_1EB12F898)
  {
    sub_1A3FAA714(255, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F898);
    }
  }
}

void sub_1A3FA9500(uint64_t a1)
{
  if (!qword_1EB12F8A8)
  {
    sub_1A524BBF4();
    sub_1A3FA9580();
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F8A8);
    }
  }
}

unint64_t sub_1A3FA9580()
{
  result = qword_1EB127420;
  if (!qword_1EB127420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127420);
  }

  return result;
}

void sub_1A3FA95D4(uint64_t a1)
{
  if (!qword_1EB1289E0)
  {
    sub_1A3FA9580();
    v1 = sub_1A5247FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1289E0);
    }
  }
}

uint64_t sub_1A3FA9630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1A524B554();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  sub_1A3FA945C(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v40 - v17;
  sub_1A524BBD4();
  sub_1A3FA9500(0);
  *&v9[*(v18 + 56)] = 256;
  *&v9[*(v7 + 44)] = 256;
  v19 = *((*MEMORY[0x1E69E7D40] & **(a1 + *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0) + 36) + 8)) + 0x140);
  v19();
  v19();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3FAA66C(v9, v15);
  v20 = &v15[*(v11 + 44)];
  v21 = v58;
  *v20 = v57;
  *(v20 + 1) = v21;
  *(v20 + 2) = v59;
  v22 = v40;
  sub_1A3FA9F40(v15, v40, sub_1A3FA945C);
  sub_1A524B574();
  v24 = v41;
  v23 = v42;
  (*(v41 + 104))(v5, *MEMORY[0x1E6981630], v42);
  v25 = sub_1A524B5C4();

  v26 = (*(v24 + 8))(v5, v23);
  (v19)(v26);
  v19();
  sub_1A524BC74();
  sub_1A52481F4();
  v56 = 1;
  *&v55[6] = v60;
  *&v55[22] = v61;
  *&v55[38] = v62;
  v27 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  v29 = v22;
  v30 = v22;
  v31 = v43;
  sub_1A3FAAD38(v29, v43, sub_1A3FA945C);
  v32 = v44;
  sub_1A3FAAD38(v31, v44, sub_1A3FA945C);
  sub_1A3FA93AC(0);
  v34 = v32 + *(v33 + 48);
  v45[0] = v25;
  v45[1] = 0;
  LOWORD(v46[0]) = 1;
  *(v46 + 2) = *v55;
  *(&v46[1] + 2) = *&v55[16];
  *(&v46[2] + 2) = *&v55[32];
  *&v46[3] = *&v55[46];
  *(&v46[3] + 1) = KeyPath;
  v47 = v27;
  v35 = v46[0];
  *v34 = v25;
  *(v34 + 16) = v35;
  v36 = v46[1];
  v37 = v46[2];
  v38 = v46[3];
  *(v34 + 80) = v27;
  *(v34 + 48) = v37;
  *(v34 + 64) = v38;
  *(v34 + 32) = v36;
  sub_1A3FAAD38(v45, v48, sub_1A3E33E34);
  sub_1A3FAADA0(v30, sub_1A3FA945C);
  v48[0] = v25;
  v48[1] = 0;
  v49 = 1;
  v50 = *v55;
  v51 = *&v55[16];
  *v52 = *&v55[32];
  *&v52[14] = *&v55[46];
  v53 = KeyPath;
  v54 = v27;
  sub_1A3FAADA0(v48, sub_1A3E33E34);
  return sub_1A3FAADA0(v31, sub_1A3FA945C);
}

uint64_t sub_1A3FA9B84@<X0>(int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1A530D8E0;
  *(a3 + 16) = 0x4028000000000000;
  v5 = a2[7];
  *(a3 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2[8];
  *(a3 + v6) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + a2[9]);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0);
  sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v7 = result;
  v7[1] = v9;
  return result;
}

void sub_1A3FA9C8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A3FA5510(v2, a2);
  sub_1A3FAAD38(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A3FA9F40(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  sub_1A3FA8298(0);
  v9 = (a2 + *(v8 + 36));
  *v9 = sub_1A3FAAE00;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
}

unint64_t sub_1A3FA9DC0()
{
  result = qword_1EB12F8D0;
  if (!qword_1EB12F8D0)
  {
    sub_1A3FAA714(255, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FAA418(&qword_1EB12F860, sub_1A3F2F0CC, sub_1A3FA91E8);
    sub_1A3FAA5BC(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8D0);
  }

  return result;
}

void sub_1A3FA9EEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3FA9F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FA9FA8(uint64_t a1)
{
  result = sub_1A3FAA5BC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, &unk_1A530D9AC);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3FAA044(uint64_t a1)
{
  sub_1A3FA53AC(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3FA53AC(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3FAA158(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3FAA158(uint64_t a1)
{
  if (!qword_1EB1243A0)
  {
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(255);
    sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243A0);
    }
  }
}

unint64_t sub_1A3FAA1EC()
{
  result = qword_1EB12F8E8;
  if (!qword_1EB12F8E8)
  {
    sub_1A3FA82C0(255);
    sub_1A3FAA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8E8);
  }

  return result;
}

unint64_t sub_1A3FAA264()
{
  result = qword_1EB12F8F0;
  if (!qword_1EB12F8F0)
  {
    sub_1A3FAA714(255, &qword_1EB12F748, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F960]);
    sub_1A3FA8468(255);
    sub_1A5249764();
    sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8F0);
  }

  return result;
}

uint64_t sub_1A3FAA418(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3FAA498()
{
  result = qword_1EB12F900;
  if (!qword_1EB12F900)
  {
    sub_1A3FAA714(255, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A3FAA5BC(&qword_1EB12F908, sub_1A3FA8C68, MEMORY[0x1E6981870]);
    sub_1A3FAA5BC(&qword_1EB12F910, sub_1A3FA9268, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F900);
  }

  return result;
}

uint64_t sub_1A3FAA5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3FAA66C(uint64_t a1, uint64_t a2)
{
  sub_1A3FAA714(0, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3FAA714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3FAA798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_1A3FAA808@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249574();
  v10 = 0;
  sub_1A3FA6C94(v9);
  v13 = *&v9[32];
  v14 = *&v9[48];
  v15 = *&v9[64];
  v16 = *&v9[80];
  v11 = *v9;
  v12 = *&v9[16];
  v18 = *&v9[80];
  v17[2] = *&v9[32];
  v17[3] = *&v9[48];
  v17[4] = *&v9[64];
  v17[0] = *v9;
  v17[1] = *&v9[16];
  sub_1A3FAAD38(&v11, &v8, sub_1A3FA8908);
  sub_1A3FAADA0(v17, sub_1A3FA8908);
  *&v9[39] = v13;
  *&v9[55] = v14;
  *&v9[71] = v15;
  *&v9[87] = v16;
  *&v9[7] = v11;
  *&v9[23] = v12;
  *(a1 + 49) = *&v9[32];
  v4 = *&v9[64];
  *(a1 + 65) = *&v9[48];
  *(a1 + 81) = v4;
  *(a1 + 96) = *&v9[79];
  result = *&v9[16];
  v6 = *v9;
  *(a1 + 33) = *&v9[16];
  v7 = v10;
  *a1 = v3;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_1A3FAA934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FAA99C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3FAA9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3FAAA68(uint64_t a1)
{
  if (!qword_1EB12F930)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F930);
    }
  }
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A3FAACE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FAAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FAADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FAAE08()
{
  sub_1A3FAAF54(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[3] = sub_1A524B544();
  v5[1] = sub_1A3C38BD4(0xD000000000000013);
  v5[2] = v3;
  sub_1A3D5F9DC();
  sub_1A524AC94();

  sub_1A5248744();
  return sub_1A3FAB1F4(v2);
}

void sub_1A3FAAF54(uint64_t a1)
{
  if (!qword_1EB128528)
  {
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128528);
    }
  }
}

unint64_t sub_1A3FAAFB4()
{
  result = qword_1EB123CD0;
  if (!qword_1EB123CD0)
  {
    sub_1A3FAAF54(255);
    sub_1A3FAB148(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CD0);
  }

  return result;
}

uint64_t sub_1A3FAB080()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1A3FAAF54(0);
  sub_1A3FAAFB4();

  return sub_1A524B704();
}

uint64_t sub_1A3FAB148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3FAB190(uint64_t a1)
{
  if (!qword_1EB12F940)
  {
    sub_1A3FAAF54(255);
    sub_1A3FAAFB4();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F940);
    }
  }
}

uint64_t sub_1A3FAB1F4(uint64_t a1)
{
  sub_1A3FAAF54(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FAB33C(unint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + OBJC_IVAR___PXSocialGroupRejectGroupAction_socialGroups) = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3FAB598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a3;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3C2E0D0;
  v17 = a4;
  v12 = _Block_copy(&v14);

  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3D6084C;
  v17 = a5;
  v13 = _Block_copy(&v14);

  [v5 performChanges:v12 completionHandler:v13];
  _Block_release(v13);
  _Block_release(v12);
}

void sub_1A3FAB6F4(SEL *a1, const char *a2, ...)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR___PXSocialGroupRejectGroupAction_socialGroups);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_6:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  objc_opt_self();
  if (v5 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

unint64_t sub_1A3FABA8C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126C28;
  if (!qword_1EB126C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126C28);
  }

  return result;
}

void sub_1A3FABAF4()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FABB68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FABD08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel__cachePromptSuggestion) = MEMORY[0x1E69E7CC0];
  sub_1A5241604();
  *(v4 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_photoLibrary) = a1;
  v5 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_logger;
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t sub_1A3FABDC0()
{
  v1[6] = v0;
  sub_1A3C562DC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v1[7] = swift_task_alloc();
  sub_1A3FACBC4(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_1A524CC54();
  v1[14] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v1[15] = v5;
  v1[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3FABF28, v5, v4);
}

uint64_t sub_1A3FABF28()
{
  v1 = *(v0 + 48);
  sub_1A5244D64();
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_photoLibrary);
  *(v0 + 136) = sub_1A5244D44();
  *(v0 + 144) = 0;
  *(v0 + 184) = *(*(v0 + 64) + 48);
  sub_1A3FAD088(&qword_1EB12F960, MEMORY[0x1E69C1200], MEMORY[0x1E69C1208]);
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FAC19C, v4, v3);
}

uint64_t sub_1A3FAC19C()
{
  v1 = *(v0 + 144);
  v2 = sub_1A5244D54();
  *(v0 + 152) = v1;
  if (v1)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = sub_1A3FAC400;
  }

  else
  {
    v8 = *(v0 + 64);
    *(v0 + 160) = v4;
    *(v0 + 168) = v3;
    *(v0 + 176) = v2;
    *(v0 + 188) = *(v8 + 64);
    *(v0 + 192) = *(v8 + 80);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = sub_1A3FAC24C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A3FAC24C()
{
  v2 = *(v0 + 188);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v17 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  *v6 = v4;
  *(v6 + v2) = v3;
  *(v6 + v1) = v5;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1A3FACD50(v6, v7);

  v11 = sub_1A524CC44();
  v12 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v9;
  sub_1A3FACDB4(v7, v13 + v12);
  sub_1A3D4D930(0, 0, v8, &unk_1A530DB78, v13);

  sub_1A3FACEF0(v6);

  v15 = *(v0 + 8);

  return v15();
}

void sub_1A3FAC400()
{
  v9 = v0;

  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = sub_1A524EBE4();
    sub_1A3C2EF94(v6, v7, &v8);
  }

  sub_1A3FABBE0(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A3FAC5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A3FACBC4(0);
  v5[4] = v6;
  v5[5] = swift_task_alloc();
  sub_1A524CC54();
  v5[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FAC67C, v8, v7);
}

void sub_1A3FAC67C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  sub_1A3FACD50(v2, v1);
  sub_1A3FABBE0(*v1);
}

uint64_t sub_1A3FAC870()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FAC96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244A54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A3FAD088(&qword_1EB124C70, MEMORY[0x1E69C10C8], MEMORY[0x1E69C10D0]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1A3FACBC4(uint64_t a1)
{
  if (!qword_1EB12F950)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A3C562DC(255, &qword_1EB12F958, MEMORY[0x1E69C10C8], MEMORY[0x1E69E62F8]);
    sub_1A3C562DC(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB12F950);
    }
  }
}

uint64_t sub_1A3FACD50(uint64_t a1, uint64_t a2)
{
  sub_1A3FACBC4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FACDB4(uint64_t a1, uint64_t a2)
{
  sub_1A3FACBC4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FACE18()
{
  sub_1A3FACBC4(0);
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A3FAC5B4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A3FACEF0(uint64_t a1)
{
  sub_1A3FACBC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GenerativeStoryInternalSuggestionViewModel(uint64_t a1)
{
  result = qword_1EB15D420;
  if (!qword_1EB15D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FACFA0(uint64_t a1)
{
  result = sub_1A5246F24();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
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

uint64_t sub_1A3FAD088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Int.divided(by:rounding:)(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    goto LABEL_10;
  }

  if (*a2 != 1)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v3 = a3 + result;
    if (__OFADD__(a3, result))
    {
      goto LABEL_32;
    }

    a3 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v3 != 0x8000000000000001 || result != -1)
    {
      return a3 / result;
    }

    __break(1u);
LABEL_10:
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (result)
      {
        return a3 / result;
      }

      __break(1u);
LABEL_13:
      if ((a3 & 0x8000000000000000) == 0)
      {
        v4 = __OFADD__(a3, result / 2);
        a3 += result / 2;
        if (!v4)
        {
          if (result)
          {
            if (a3 != 0x8000000000000000 || result != -1)
            {
              return a3 / result;
            }

LABEL_40:
            __break(1u);
            return result;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v4 = __OFSUB__(0, a3);
  v5 = -a3;
  if (v4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v6 = Int.divided(by:rounding:)(result, &v12, v5);
  v4 = __OFSUB__(0, v6);
  result = -v6;
  if (!v4)
  {
    return result;
  }

  __break(1u);
LABEL_24:
  v4 = __OFSUB__(0, a3);
  v7 = -a3;
  if (v4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = 1;
  v8 = Int.divided(by:rounding:)(result, &v11, v7);
  v4 = __OFSUB__(0, v8);
  result = -v8;
  if (v4)
  {
    __break(1u);
LABEL_28:
    v4 = __OFSUB__(0, a3);
    v9 = -a3;
    if (v4)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v13 = 2;
    v10 = Int.divided(by:rounding:)(result, &v13, v9);
    v4 = __OFSUB__(0, v10);
    result = -v10;
    if (!v4)
    {
      return result;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t Int.RoundingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t OptionSetIterator.init(element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for OptionSetIterator(0, a2, a4, a5);
  v9 = a3 + *(v8 + 36);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a3 + *(v8 + 40)) = 1;
  v10 = *(*(a2 - 8) + 32);

  return v10(a3, a1, a2);
}

uint64_t sub_1A3FAD348(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v7 + *(v6 + 44));
  if (v8[8] != 1)
  {
    return *v8;
  }

  (*(v2 + 16))(v5, v3);
  v9 = *(a1 + 16);
  sub_1A524C9C4();
  (*(*(v9 - 8) + 8))(v5, v9);
  result = v12;
  *v8 = v12;
  v8[8] = 0;
  return result;
}

uint64_t OptionSetIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (sub_1A3FAD348(a1))
  {
    while (1)
    {
      v6 = sub_1A3FAD348(a1);
      v8 = *(v2 + *(a1 + 40));
      if ((v8 & v6) != 0)
      {
        break;
      }

      v9 = *(a1 + 16);
      v10 = type metadata accessor for OptionSetIterator(0, v9, *(a1 + 24), v7);
      *(v2 + *(v10 + 40)) *= 2;
      if (!sub_1A3FAD348(a1))
      {
        goto LABEL_6;
      }
    }

    v13 = sub_1A3FAD348(a1);
    v14 = v2 + *(a1 + 36);
    *v14 = v13 & ~v8;
    *(v14 + 8) = 0;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_1A524C9D4();
    result = type metadata accessor for OptionSetIterator(0, v15, v16, v17);
    *(v3 + *(result + 40)) *= 2;
  }

  else
  {
    v9 = *(a1 + 16);
LABEL_6:
    v11 = *(*(v9 - 8) + 56);

    return v11(a2, 1, 1, v9);
  }

  return result;
}

uint64_t OptionSet<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a1, v8);
  v12 = type metadata accessor for OptionSetIterator(0, a1, a2, v11);
  v13 = a3 + *(v12 + 36);
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a3 + *(v12 + 40)) = 1;
  return (*(v7 + 32))(a3, v10, a1);
}

uint64_t OptionSet<>.toggling(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524C9C4();
  sub_1A524C9C4();
  return sub_1A524EE64();
}

uint64_t OptionSet<>.toggle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v10, v3, a2, v8);
  OptionSet<>.toggling(_:)(a1, a2, a3);
  return (*(v7 + 8))(v10, a2);
}

unint64_t sub_1A3FAD86C()
{
  result = qword_1EB12F970;
  if (!qword_1EB12F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F970);
  }

  return result;
}

void sub_1A3FAD8D0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A3FADBE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3FAD960(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1A3FADA64(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1A3FADBE8()
{
  if (!qword_1EB126D60)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126D60);
    }
  }
}

void *sub_1A3FADC38()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A3FADCE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A3FADD98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3FADDC8(v1);
}

void sub_1A3FADDC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1A3FADF58()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
  sub_1A52415D4();

  return *(v0 + 24);
}

void sub_1A3FADFF8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
}

void sub_1A3FAE0C8(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3FAE1D8(uint64_t a1)
{
  if (*(v1 + 56) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 40);
  if (v2 == sub_1A52403B4())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A3FAE220()
{
  v1 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v2 = v1;
    v3 = sub_1A524C634();
    v4 = PXLocalizedString(v3);

    sub_1A524C674();
    sub_1A3C71138(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52F8E10;
    v6 = [v2 string];
    v7 = sub_1A524C674();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1A3D710E8();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v10 = sub_1A524C6C4();
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = [v1 localizedTitle];
    if (v13)
    {
      v14 = v13;
      v10 = sub_1A524C674();

      sub_1A3FAE3DC(v1, v12, v11, 0);
    }

    else
    {
      sub_1A3FAE3DC(v1, v12, v11, 0);
      return 0;
    }
  }

  return v10;
}

double sub_1A3FAE3DC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

void *sub_1A3FAE428()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1A3FAE464()
{
  v1 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v2 = v1;
    strcpy(v15, "user-search-");
    BYTE5(v15[1]) = 0;
    HIWORD(v15[1]) = -5120;
    v3 = [v2 string];
    v4 = sub_1A524C674();
    v6 = v5;

    MEMORY[0x1A5907B60](v4, v6);
  }

  else
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = v1;
    sub_1A524E404();

    v15[0] = 0xD000000000000011;
    v15[1] = 0x80000001A53BFEA0;
    v10 = [v9 uuid];
    v11 = sub_1A524C674();
    v13 = v12;

    MEMORY[0x1A5907B60](v11, v13);

    sub_1A3FAE3DC(v1, v8, v7, 0);
  }

  return v15[0];
}

uint64_t sub_1A3FAE5D8()
{
  sub_1A3FAE3DC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC12PhotosUICore33LemonadeSuggestedSearchCollection___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FAE68C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v7 = 1;
  }

  else
  {
    v2 = sub_1A3FAE464();
    v4 = v3;
    if (v2 == sub_1A3FAE464() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1A524EAB4();
    }
  }

  return v7 & 1;
}

uint64_t sub_1A3FAE724()
{
  sub_1A524EC94();
  sub_1A3FAE464();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A3FAE784(uint64_t a1)
{
  sub_1A3FAE464();
  sub_1A524C794();

  return result;
}

uint64_t sub_1A3FAE7D8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A3FAE464();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FAE834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3FAE464();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LemonadeSuggestedSearchQueryFetcher.initialSuggestionGroup.getter(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  if (*(*(v1 + 88) + 16))
  {
    swift_getKeyPath();
    sub_1A52415D4();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
}

void sub_1A3FAE988()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAEA2C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 88);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3FAEAD8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415C4();

  return result;
}

void LemonadeSuggestedSearchQueryFetcher.topRecentSuggestionGroup.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(sub_1A3FAED00() + 16);

  if (v4)
  {
    v5 = sub_1A3FAED00();
    swift_getKeyPath();
    *&v13[0] = v2;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415D4();

    v6 = *(v2 + 160);
    v7 = swift_allocObject();
    swift_weakInit();
    sub_1A3DA27E4(v5, v6, sub_1A3FB00D8, v7, v13);
    v8 = v13[0];
    v9 = v13[1];
    v10 = v13[2];
    v11 = v13[3];
    v12 = v13[4];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
}

uint64_t sub_1A3FAED00()
{
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  i = *(v0 + 96);
  v3 = i >> 62;
  if (!(i >> 62))
  {
    result = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v5)
    {
      goto LABEL_6;
    }

LABEL_51:
    __break(1u);
    return result;
  }

  v26 = sub_1A524E2B4();
  if (sub_1A524E2B4() < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v26 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  if (v26 >= 0)
  {
    v5 = v27;
  }

  else
  {
    v5 = 3;
  }

  result = sub_1A524E2B4();
  if (result < v5)
  {
    goto LABEL_51;
  }

LABEL_6:
  if ((i & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for LemonadeSuggestedSearchCollection(0);
    swift_bridgeObjectRetain_n();
    sub_1A524E464();
    if (v5 != 1)
    {
      sub_1A524E464();
      if (v5 != 2)
      {
        sub_1A524E464();
      }
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  if (v3)
  {
    v6 = sub_1A524E754();
    v1 = v8;
    v3 = v9;
    v7 = v10;

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = (i & 0xFFFFFFFFFFFFFF8);
    v1 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v7 = (2 * v5) | 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1A524EB04();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v7 >> 1, v3))
  {
    goto LABEL_42;
  }

  if (v13 != (v7 >> 1) - v3)
  {
    goto LABEL_43;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_24;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v11)
  {
    swift_unknownObjectRelease();
LABEL_24:
    if ((i & 0x8000000000000000) != 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_38:
      v7 = sub_1A524E2B4();
      if (!v7)
      {
LABEL_39:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v7 = *(i + 16);
      if (!v7)
      {
        goto LABEL_39;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
    v6 = &v30;
    sub_1A3DADE0C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease_n();
LABEL_16:
    sub_1A3FB5D30(v6, v1, v3, v7);
  }

  v14 = 0;
  v15 = v30;
  do
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1A59097F0](v14, i);
    }

    else
    {
    }

    sub_1A3DA2330(v16, v28);
    v30 = v15;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1A3DADE0C((v17 > 1), v18 + 1, 1);
      v15 = v30;
    }

    ++v14;
    *(v15 + 16) = v18 + 1;
    v19 = (v15 + 144 * v18);
    v19[2] = v28[0];
    v20 = v28[1];
    v21 = v28[2];
    v22 = v28[4];
    v19[5] = v28[3];
    v19[6] = v22;
    v19[3] = v20;
    v19[4] = v21;
    v23 = v28[5];
    v24 = v28[6];
    v25 = v29[0];
    *(v19 + 153) = *(v29 + 9);
    v19[8] = v24;
    v19[9] = v25;
    v19[7] = v23;
  }

  while (v7 != v14);

  return v15;
}

uint64_t sub_1A3FAF0C0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  return *(v0 + 160);
}

void sub_1A3FAF160()
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB17A820 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB17A828);
  v2 = sub_1A5246F04();
  v3 = sub_1A524D224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "Clearing all recent searches", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = *(v0 + 80);
  v17[0] = 0;
  if ([v5 deleteAllRecentSearchSuggestionsForPhotoLibrary:v6 error:v17])
  {
    v7 = v17[0];
  }

  else
  {
    v8 = v17[0];
    v9 = sub_1A5240B84();

    swift_willThrow();
    v10 = v9;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D244();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1A3C1C000, v11, v12, "Failed to clear recent searches: %@", v13, 0xCu);
      sub_1A3CB65E4(v14);
      MEMORY[0x1A590EEC0](v14, -1, -1);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    else
    {
    }
  }

  LemonadeSuggestedSearchQueryFetcher.updateRecentSearches()();
}

void sub_1A3FAF3B0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAF454()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = *(v0 + 96);
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      swift_getKeyPath();
      sub_1A52415D4();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1A3C9BE6C();
}

void sub_1A3FAF56C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 96);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAF798()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = v0[17];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[18];
    swift_getKeyPath();

    sub_1A52415D4();

    v4 = v0[13];
    if (v4)
    {
      if (v4 >> 62)
      {
        v5 = sub_1A524E2B4();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!__OFADD__(v5, *(v3 + 16)))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
      sub_1A524E2B4();
      v12 = sub_1A524E494();

      sub_1A3CB32F8(v2, v1, v3, v6);
      sub_1A3CB36CC(v4, v7);

      v11 = v12;
      goto LABEL_13;
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v8 = v0[17];
  if (v8)
  {
    v9 = v0[18];
    v10 = v0[16];

    v11 = sub_1A3FB5E30(v10, v8, v9);
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    if (v0[13])
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v11 = MEMORY[0x1E69E7CC0];
  }

LABEL_13:
  sub_1A3FAF644(v11);
}

void sub_1A3FAFAA0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAFB44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 104);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FAFC1C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = *(v0 + 128);
  sub_1A3CB237C(v1, *(v3 + 136), *(v3 + 144));
  return v1;
}

double sub_1A3FAFCDC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v4 = v3[16];
  v5 = v3[17];
  v6 = v3[18];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1A3CB237C(v4, v5, v6);
}

void sub_1A3FAFD90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1A3CB237C(*a1, v2, v3);
  sub_1A3FAFDE0(v1, v2, v3);
}

void sub_1A3FAFDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[16];
  v8 = v3[17];
  v9 = v3[18];
  if (!v8)
  {
    if (!a2)
    {
      v13 = 0;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  sub_1A3FB7C70(v8, a2);
  if ((v10 & 1) == 0)
  {
    sub_1A3CB23D0(v7, v8, v9);
    goto LABEL_11;
  }

  sub_1A3FB7930(v9, a3);
  v12 = v11;
  sub_1A3CB23D0(v7, v8, v9);
  if ((v12 & 1) == 0)
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
    sub_1A3CB23D0(a1, a2, a3);

    return;
  }

  v7 = v3[16];
  v13 = v3[17];
  v9 = v3[18];
LABEL_8:
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  sub_1A3CB237C(a1, a2, a3);
  sub_1A3CB23D0(v7, v13, v9);
  if (v3[19])
  {

    sub_1A5245804();
  }

  __break(1u);
}

void sub_1A3FB0008(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 160);
}

double sub_1A3FB00D8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3FAF160();
  }

  return result;
}

void sub_1A3FB012C(char a1)
{
  if (*(v1 + 160) == (a1 & 1))
  {
    *(v1 + 160) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }
}

void sub_1A3FB023C(void *a1)
{
  v2 = v1;
  v53 = a1;
  v43 = *v1;
  v3 = sub_1A5246EA4();
  v42[2] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42[1] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BEE4();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A524BF64();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246E94();
  v18 = __swift_project_value_buffer(v17, qword_1EB17A8F8);
  sub_1A5246E84();
  sub_1A5246E24();
  v50 = v18;
  v19 = sub_1A5246E84();
  v20 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v21 = swift_slowAlloc();
    v52 = v8;
    v22 = v21;
    *v21 = 0;
    v23 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, v20, v23, "FetchSearchKeyAssets", "", v22, 2u);
    v8 = v52;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  (*(v9 + 16))(v13, v16, v8);
  sub_1A5246ED4();
  swift_allocObject();
  v24 = sub_1A5246EC4();
  v25 = *(v9 + 8);
  v52 = v9 + 8;
  v25(v16, v8);
  swift_getKeyPath();
  aBlock = v2;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v26 = v2[17];
  if (!v26 || (v27 = v2[18], !*(v27 + 16)))
  {
    aBlock = 0;
    v56 = 0;
    v57 = 0;
    sub_1A5245824();
  }

  v28 = v2[16];
  v29 = objc_opt_self();
  v30 = v2[10];

  v31 = [v29 px:v30 searchAssetFetchOptionsForPhotoLibrary:?];
  [v31 setFetchLimit_];
  v32 = qword_1EB17A860;

  if (v32 != -1)
  {
    swift_once();
  }

  v52 = qword_1EB17A868;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v51 = v33;
  v35 = v53;
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v24;
  v34[5] = v28;
  v34[6] = v26;
  v34[7] = v27;
  v36 = v43;
  v34[8] = v31;
  v34[9] = v36;
  v59 = sub_1A3FB8504;
  v60 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1A3C2E0D0;
  v58 = &block_descriptor_103;
  v37 = _Block_copy(&aBlock);

  v53 = v31;
  v50 = v28;
  v38 = v44;
  sub_1A524BF14();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v39 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v39, MEMORY[0x1E69E6328]);
  v40 = v46;
  v41 = v49;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v38, v40, v37);
  _Block_release(v37);

  (*(v48 + 8))(v40, v41);
  (*(v45 + 8))(v38, v47);
}

double sub_1A3FB0B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB17A868;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v12, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);

  return result;
}

Swift::Void __swiftcall LemonadeSuggestedSearchQueryFetcher.resetInitialSuggestions()()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415C4();

  sub_1A3FB1504(sub_1A3FB8174, v1, v0);
}

uint64_t sub_1A3FB0F5C(void *a1)
{
  v2 = [a1 container];
  if (!v2)
  {
LABEL_7:

    return 0;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  v6 = dynamic_cast_existential_1_superclass_conditional(v3, ObjectType, v5, &protocol descriptor for LemonadeSearchableContainer);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = swift_getObjectType();
    v11 = [v8 photoLibrary];
    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
      v14[3] = v10;
      v14[4] = v9;
      v14[0] = v8;
      swift_allocObject();
      swift_unknownObjectRetain();
      LemonadeSuggestedSearchQueryFetcher.init(searchQueryManager:container:)(v12, v14);
    }

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1A3FB10AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524D474();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  aBlock[4] = sub_1A3FB8374;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_56;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3FB13DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A3FB1504(uint64_t a1, __n128 a2, uint64_t a3)
{
  v37 = *v3;
  v38 = a1;
  v5 = sub_1A524BEE4();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5246E54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v34 - v15;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246E94();
  __swift_project_value_buffer(v17, qword_1EB17A8F8);
  sub_1A5246E84();
  sub_1A5246E24();
  v18 = sub_1A5246E84();
  v19 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v20 = v16;
    v21 = v11;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, v19, v23, "FetchSuggestedQueries", "", v22, 2u);
    v24 = v22;
    v11 = v21;
    v16 = v20;
    MEMORY[0x1A590EEC0](v24, -1, -1);
  }

  v35 = v16;

  (*(v11 + 16))(v13, v16, v10);
  sub_1A5246ED4();
  swift_allocObject();
  v25 = sub_1A5246EC4();
  v36 = v10;
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v34[1] = qword_1EB17A868;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v25;
  v28 = v37;
  v27[4] = v38;
  v27[5] = a3;
  v27[6] = v28;
  aBlock[4] = sub_1A3FB8328;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_34_2;
  v29 = _Block_copy(aBlock);

  sub_1A524BF14();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v30 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v30, MEMORY[0x1E69E6328]);
  v31 = v39;
  v32 = v43;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v31, v29);
  _Block_release(v29);

  (*(v42 + 8))(v31, v32);
  (*(v40 + 8))(v9, v41);
  (*(v11 + 8))(v35, v36);

  return result;
}

uint64_t sub_1A3FB1A80(uint64_t a1)
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A524BF64();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v9 = sub_1A3FB1E2C();
    v11 = v10;
    v13 = v12;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v24 = sub_1A524D474();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v9;
    v21[2] = v9;
    v22 = v1;
    v15[4] = v11;
    v15[5] = v13;
    v16 = v4;
    v21[0] = v13;
    v21[1] = v11;
    aBlock[4] = sub_1A3FB837C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_64_1;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v18 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v18, MEMORY[0x1E69E6328]);
    v19 = v22;
    sub_1A524E224();
    v20 = v24;
    MEMORY[0x1A5908800](0, v7, v16, v17);
    _Block_release(v17);

    (*(v2 + 8))(v16, v19);
    return (*(v5 + 8))(v7, v25);
  }

  return result;
}

void *sub_1A3FB1E2C()
{
  v1 = v0;
  v60 = sub_1A5246EA4();
  v2 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  isEscapingClosureAtFileLocation = &v58 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  if (qword_1EB17A8F0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v13 = sub_1A5246E94();
    v14 = __swift_project_value_buffer(v13, qword_1EB17A8F8);
    sub_1A5246E84();
    sub_1A5246E24();
    v64 = v14;
    v15 = sub_1A5246E84();
    v16 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, v16, v18, "FetchRecentSearches", "", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v19 = *(v65 + 16);
    v63 = v12;
    v19(isEscapingClosureAtFileLocation, v12, v66);
    sub_1A5246ED4();
    swift_allocObject();
    v20 = sub_1A5246EC4();
    v21 = [objc_opt_self() recentSearchesForPhotoLibrary:v1[10] error:0];
    sub_1A3C52C70(0, &qword_1EB1268F8, 0x1E6978A88);
    v22 = sub_1A524CA34();

    sub_1A3CA70B8(MEMORY[0x1E69E7CC0], v23);
    v1 = v24;
    isEscapingClosureAtFileLocation = v25;
    v75 = v24;
    v76 = v25;
    v77 = v26;
    v12 = v22 >> 62 ? sub_1A524E2B4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v20;
    v59 = v2;
    v58 = v4;
    if (!v12)
    {
      break;
    }

    v27 = 0;
    v70 = v22 & 0xFFFFFFFFFFFFFF8;
    v71 = v22 & 0xC000000000000001;
    v69 = v73;
    v67 = v12;
    v68 = v22;
    while (1)
    {
      if (v71)
      {
        v32 = MEMORY[0x1A59097F0](v27, v22);
      }

      else
      {
        if (v27 >= *(v70 + 16))
        {
          goto LABEL_31;
        }

        v32 = *(v22 + 8 * v27 + 32);
      }

      v33 = v32;
      v34 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v35 = [v32 queryText];
      if (v35)
      {
        v2 = v35;
        v36 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        v37 = [v2 length];
        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v38 = v37;
        v1 = swift_allocObject();
        v1[2] = v36;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_1A3FB8ABC;
        *(v39 + 24) = v1;
        v73[2] = sub_1A3FB8A50;
        v74 = v39;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v73[0] = sub_1A3FB5BBC;
        v73[1] = &block_descriptor_80;
        v12 = _Block_copy(aBlock);
        v4 = v74;
        v40 = v36;

        [v40 enumerateAttributesInRange:0 options:v38 usingBlock:{0, v12}];

        _Block_release(v12);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_33;
        }

        v1 = [v33 assetCount];
        v41 = [v33 keyAssetUUIDs];
        if (v41)
        {
          v28 = v41;
          isEscapingClosureAtFileLocation = sub_1A524CA34();
        }

        else
        {
          isEscapingClosureAtFileLocation = 0;
        }

        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        v4 = 1;
        *(v29 + 24) = 1;
        v2 = OBJC_IVAR____TtC12PhotosUICore33LemonadeSuggestedSearchCollection___observationRegistrar;
        v30 = v40;
        sub_1A5241604();
        *(v29 + 32) = v40;
        *(v29 + 40) = v1;
        *(v29 + 48) = isEscapingClosureAtFileLocation;
        *(v29 + 56) = 1;
        sub_1A3FB3A94(v29, v30, v31);
        v12 = v67;
        v22 = v68;
      }

      ++v27;
      if (v34 == v12)
      {
        v1 = v75;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_22:

  v42 = sub_1A5246E84();
  v43 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v42, v43, v45, "Prefetched recent searches", "", v44, 2u);
    MEMORY[0x1A590EEC0](v44, -1, -1);
  }

  v46 = sub_1A5246E84();
  v47 = v61;
  sub_1A5246EB4();
  v48 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v49 = v58;
    sub_1A5246EE4();

    v50 = v59;
    v51 = v60;
    if (v59[11](v49, v60) == *MEMORY[0x1E69E93E8])
    {
      v52 = "[Error] Interval already ended";
    }

    else
    {
      v50[1](v49, v51);
      v52 = "";
    }

    v47 = v61;
    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v46, v48, v54, "FetchRecentSearches", v52, v53, 2u);
    MEMORY[0x1A590EEC0](v53, -1, -1);
  }

  v55 = v66;
  v56 = *(v65 + 8);
  v56(v47, v66);
  v56(v63, v55);
  return v1;
}

double sub_1A3FB2648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(a4 + 16);
    if ((*(Strong + 160) ^ (v8 != 0)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
      sub_1A52415C4();
    }

    else
    {
      *(Strong + 160) = v8 != 0;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1A3FAFDE0(a2, a3, a4);
  }

  return result;
}

Swift::Void __swiftcall LemonadeSuggestedSearchQueryFetcher.boostBackgroundTasks()()
{
  if (*(v0 + 112))
  {

    sub_1A5245804();
  }

  __break(1u);
}

uint64_t LemonadeSuggestedSearchQueryFetcher.deinit()
{
  sub_1A3C2CE9C(v0 + 40);

  sub_1A3CB23D0(*(v0 + 128), *(v0 + 136), *(v0 + 144));

  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeSuggestedSearchQueryFetcher.__deallocating_deinit()
{
  LemonadeSuggestedSearchQueryFetcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FB29F0(uint64_t a1)
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16[1] = result;
    v10 = sub_1A3C9BE6C();
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v17 = sub_1A524D474();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    aBlock[4] = sub_1A3FB849C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_96;
    v13 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v14 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    v16[0] = v5;
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v14, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    v15 = v17;
    MEMORY[0x1A5908800](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v16[0]);
  }

  return result;
}

void sub_1A3FB2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v8 = sub_1A5246EA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5246E54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = objc_opt_self();
    v19 = *(v17 + 80);
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v21 = v32;
    v20[4] = a2;
    v20[5] = v21;
    aBlock[4] = sub_1A3FB8338;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3FB39E4;
    aBlock[3] = &block_descriptor_40_0;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    [v18 initialSearchQuerySuggestionsForPhotoLibrary:v23 suggestionLimit:3 minimumResultCountPerSuggestion:0 suggestionsHandler:v22];
    _Block_release(v22);
  }

  else
  {
    v24 = v8;
    if (qword_1EB17A8F0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246E94();
    __swift_project_value_buffer(v25, qword_1EB17A8F8);
    v26 = sub_1A5246E84();
    sub_1A5246EB4();
    v27 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      sub_1A5246EE4();

      if ((*(v9 + 88))(v11, v24) == *MEMORY[0x1E69E93E8])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v24);
        v28 = "Cancelled: fetcher deallocated already";
      }

      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, v27, v31, "FetchSuggestedQueries", v28, v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);

      (*(v13 + 8))(v15, v29);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_1A3FB3124(unint64_t a1, void *a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v61 = a4;
  v62 = a3;
  v66 = sub_1A5246EA4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A5246E54();
  v68 = *(v69 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v69);
  v67 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isEscapingClosureAtFileLocation = a1 >> 62;
  if (a2)
  {
    v13 = a2;
    if (qword_1EB17A820 != -1)
    {
      swift_once();
    }

    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB17A828);
    v15 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v78 = MEMORY[0x1E69E7CC0];
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (isEscapingClosureAtFileLocation)
    {
LABEL_39:
      v19 = sub_1A524E2B4();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
    if (!v19)
    {
      break;
    }

    v6 = 0;
    v60 = &v71;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = &selRef_photosEnvironmentReference;
    while (1)
    {
      v5 = v6;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1A59097F0](v5, a1, v10);
          v6 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v22 = *(a1 + 8 * v5 + 32);
          v6 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v23 = v22;
        v24 = [v23 v21[175]];
        if (v24)
        {
          break;
        }

        ++v5;
        if (v6 == v19)
        {
          goto LABEL_26;
        }
      }

      v25 = v24;
      v5 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      isEscapingClosureAtFileLocation = v25;
      v26 = [v5 initWithAttributedString_];
      v27 = [isEscapingClosureAtFileLocation length];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v59 = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v58 = v28;
      v29 = swift_allocObject();
      LOBYTE(v5) = v29;
      *(v29 + 16) = sub_1A3FB8344;
      *(v29 + 24) = v28;
      *&v72 = sub_1A3FB834C;
      *(&v72 + 1) = v29;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v71 = sub_1A3FB5BBC;
      *(&v71 + 1) = &block_descriptor_49_0;
      v30 = _Block_copy(&aBlock);
      v57 = isEscapingClosureAtFileLocation;
      v31 = v26;

      [v31 enumerateAttributesInRange:0 options:v59 usingBlock:{0, v30}];

      _Block_release(v30);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v20 = v57;

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      MEMORY[0x1A5907D70](v32);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v20 = v78;
      isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
      v21 = &selRef_photosEnvironmentReference;
      if (v6 == v19)
      {
        goto LABEL_26;
      }
    }

LABEL_52:
    __break(1u);
    *(v18 + 4) = sub_1A524E2B4();

    *(v18 + 12) = 2112;
    v16 = v20;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v17;
    *v6 = v17;
    _os_log_impl(&dword_1A3C1C000, v23, v5, "Failed to prefetch %ld suggested queries with error: %@", v18, 0x16u);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v18, -1, -1);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_26:
  if (v20 >> 62)
  {
    a1 = sub_1A524E2B4();
    if (!a1)
    {
LABEL_41:

      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }
  }

  else
  {
    a1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_41;
    }
  }

  v78 = isEscapingClosureAtFileLocation;
  v23 = &v78;
  sub_1A3DADE0C(0, a1 & ~(a1 >> 63), 0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v33 = 0;
  v34 = v78;
  do
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1A59097F0](v33, v20);
    }

    else
    {
      v35 = *(v20 + 8 * v33 + 32);
    }

    sub_1A3DA2540(v35, &aBlock);
    v78 = v34;
    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1A3DADE0C((v36 > 1), v37 + 1, 1);
      v34 = v78;
    }

    ++v33;
    *(v34 + 16) = v37 + 1;
    v38 = (v34 + 144 * v37);
    v38[2] = aBlock;
    v39 = v71;
    v40 = v72;
    v41 = v74;
    v38[5] = v73;
    v38[6] = v41;
    v38[3] = v39;
    v38[4] = v40;
    v42 = v75;
    v43 = v76;
    v44 = v77[0];
    *(v38 + 153) = *(v77 + 9);
    v38[8] = v43;
    v38[9] = v44;
    v38[7] = v42;
  }

  while (a1 != v33);

LABEL_42:
  (v62)(v34);

  v45 = v67;
  v46 = v66;
  v47 = v65;
  v48 = v63;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v49 = sub_1A5246E94();
  __swift_project_value_buffer(v49, qword_1EB17A8F8);
  v50 = sub_1A5246E84();
  sub_1A5246EB4();
  v51 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v47 + 88))(v48, v46) == *MEMORY[0x1E69E93E8])
    {
      v52 = "[Error] Interval already ended";
    }

    else
    {
      (*(v47 + 8))(v48, v46);
      v52 = "";
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v50, v51, v54, "FetchSuggestedQueries", v52, v53, 2u);
    MEMORY[0x1A590EEC0](v53, -1, -1);
  }

  return (*(v68 + 8))(v45, v69);
}

void sub_1A3FB39E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1A3C52C70(0, &qword_1EB1268F8, 0x1E6978A88);
  v5 = sub_1A524CA34();

  v6 = a3;
  v4(v5, a3);
}

void sub_1A3FB3A94(uint64_t a1, void *a2, __n128 a3)
{
  v4 = v3;
  v7 = *v3;
  v6 = v3[1];
  v8 = v6 + 32;
  v9 = *(v6 + 16);
  v22 = a2;
  if (!*v3)
  {
    if (!v9)
    {
      v14 = 0;
      if (!a1)
      {
LABEL_10:

        return;
      }

      goto LABEL_16;
    }

    sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
    v10 = 0;
    while (1)
    {
      v15 = *(v8 + 8 * v10);
      v16 = sub_1A524DBF4();

      if (v16)
      {
        break;
      }

      if (v9 == ++v10)
      {
        v14 = 0;
        a2 = v22;
        if (a1)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    if (a1)
    {
      goto LABEL_18;
    }

    v14 = 0;
LABEL_24:
    sub_1A3FB63E8(v10, v14);

    sub_1A3FB6570(v10, sub_1A3FB8A6C);
    goto LABEL_25;
  }

  v10 = sub_1A3FB62B0(v22, v8, v9, (v7 + 16), v7 + 32);
  v12 = v11;
  v14 = v13;

  if (v12)
  {
    a2 = v22;
    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_1A3FB5EFC(a2, v14);

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
LABEL_25:

    return;
  }

  if (!a1)
  {
    goto LABEL_24;
  }

LABEL_18:
  v19 = v4[2];
  v17 = v4 + 2;
  v18 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1A3D35B98(v18);
    *v17 = v18;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v18 + 16))
  {
    *(v18 + 8 * v10 + 32) = a1;

    sub_1A524E524();
    return;
  }

  __break(1u);
}

void sub_1A3FB3CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v21 = a3;
  v18 = sub_1A5246EA4();
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v19 = v17 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v25 = a2;
    swift_getKeyPath();
    v12 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
    v28 = v11;
    v13 = sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    v17[2] = v12;
    v17[1] = v13;
    sub_1A52415D4();

    if (*(v11 + 104))
    {
      v14 = *(v11 + 104);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v24 = v14;
    if (v14 >> 62)
    {
      v15 = sub_1A524E2B4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17[3] = v7;
    v17[4] = v6;
    if (v15)
    {
      v27 = v26 & 0xC000000000000001;
      v16 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 < 0)
      {
        v16 = v26;
      }

      v22 = v16;
      v23 = v24 & 0xFFFFFFFFFFFFFF8;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v28 = 0;
  sub_1A5245824();
}

uint64_t sub_1A3FB4A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v40 = a6;
  v41 = a8;
  v37 = a7;
  v38 = a4;
  v39 = a5;
  v44 = a3;
  v45 = a2;
  v8 = sub_1A5246EA4();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BEE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    aBlock = 0;
    v47 = 0;
    v48 = 0;
    sub_1A5245824();
  }

  v18 = Strong;
  v19 = v37;
  v37 = v11;
  v20 = v19;
  sub_1A3FB8518(v38, v39, v40, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v40 = sub_1A524D474();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v30 = v44;
  v29 = v45;
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v30;
  v28[5] = v22;
  v38 = v22;
  v39 = v18;
  v28[6] = v24;
  v28[7] = v26;
  v36 = v24;
  v28[8] = v41;
  v50 = sub_1A3FB8820;
  v51 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1A3C2E0D0;
  v49 = &block_descriptor_110_0;
  v31 = _Block_copy(&aBlock);

  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v32 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v32, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  v33 = v40;
  MEMORY[0x1A5908800](0, v16, v13, v31);
  _Block_release(v31);

  (*(v37 + 1))(v13, v10);
  return (*(v42 + 8))(v16, v43);
}

uint64_t sub_1A3FB50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A5246EA4();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v57 = v56 - v11;
  v12 = sub_1A5246E54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v60 = v56 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_1A5245824();
  }

  v17 = Strong;
  v56[5] = a2;
  v18 = *(a5 + 16);
  v19 = a5;
  v20 = v12;
  if (!v18)
  {
LABEL_29:
    swift_getKeyPath();
    v71 = v17;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415D4();

    v42 = v17[17];
    v43 = v17[18];
    v71 = v17[16];
    v72 = v42;
    v73 = v43;
    sub_1A3CB237C(v71, v42, v43);
    sub_1A5245824();
  }

  v21 = v18;
  v56[2] = a3;
  v56[3] = v13;
  v56[4] = v20;
  v67 = v19 + 32;
  v68 = a4 + 32;
  v66 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
  v69 = *(a4 + 16);
  v56[1] = v19;

  v22 = 0;
  v62 = v17;
  v63 = 0;
  v61 = v21;
  while (v22 != v69)
  {
    v23 = *(v68 + 8 * v22);
    v20 = *(v67 + 8 * v22);
    swift_getKeyPath();
    v71 = v17;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher, &protocol conformance descriptor for LemonadeSuggestedSearchQueryFetcher);
    v24 = v20;
    sub_1A52415D4();

    v13 = v17[17];
    if (v13)
    {
      v65 = v20;
      v70 = v24;
      v25 = v17[16];
      v26 = v17[18];
      v20 = v13 + 4;
      v27 = v13[2];
      if (v25)
      {

        sub_1A3CB237C(v28, v13, v26);
        v29 = sub_1A3FB62B0(v23, (v13 + 4), v27, (v25 + 16), v25 + 32);
        v31 = v30;

        if (v31)
        {
          sub_1A3CB23D0(v25, v13, v26);

          goto LABEL_5;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v64 = v26;

        if (!v27)
        {
LABEL_15:
          sub_1A3CB23D0(0, v13, v64);

          v21 = v61;
          v17 = v62;
          goto LABEL_5;
        }

        sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
        v29 = 0;
        while (1)
        {
          v32 = *(v20 + v29);
          v33 = sub_1A524DBF4();

          if (v33)
          {
            break;
          }

          if (v27 == ++v29)
          {
            goto LABEL_15;
          }
        }

        v21 = v61;
        v17 = v62;
        v26 = v64;
      }

      if (v29 >= *(v26 + 16))
      {
        goto LABEL_40;
      }

      v34 = *(v26 + 8 * v29 + 32);

      sub_1A3CB23D0(v25, v13, v26);
      v35 = *(v34 + 16);
      v13 = v70;
      if (v35)
      {
        v20 = v65;
        if (v65)
        {
          sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
          v36 = v13;
          v37 = v35;
          v38 = sub_1A524DBF4();

          if (v38)
          {
            v39 = *(v34 + 16);
LABEL_27:
            *(v34 + 16) = v20;

            goto LABEL_5;
          }
        }
      }

      else
      {
        v20 = v65;
        if (!v65)
        {
          v39 = 0;
          goto LABEL_27;
        }
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v56[-2] = v34;
      v56[-1] = v20;
      v71 = v34;
      sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DE28);
      v41 = v63;
      sub_1A52415C4();
      v63 = v41;
    }

    else
    {
    }

LABEL_5:
    if (++v22 == v21)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  swift_once();
  v44 = sub_1A5246E94();
  __swift_project_value_buffer(v44, qword_1EB17A8F8);
  v45 = sub_1A5246E84();
  v46 = v60;
  sub_1A5246EB4();
  v47 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v48 = v57;
    sub_1A5246EE4();

    v50 = v58;
    v49 = v59;
    if ((*(v58 + 88))(v48, v59) == *MEMORY[0x1E69E93E8])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = v60;
    v55 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v45, v47, v55, "FetchSearchKeyAssets", v51, v53, 2u);
    MEMORY[0x1A590EEC0](v53, -1, -1);

    return (v13[1])(v54, v20);
  }

  else
  {

    return (v13[1])(v46, v20);
  }
}

void sub_1A3FB59CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1A52429C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12 = *MEMORY[0x1E6978F98];
    v13 = sub_1A3C8BF74(v12);
    if (v14)
    {
      sub_1A3C2F0BC(*(a1 + 56) + 32 * v13, v16);

      sub_1A3C35B00(v16);
      (*(v9 + 104))(v11, *MEMORY[0x1E69C2068], v8);
      sub_1A52429B4();
      (*(v9 + 8))(v11, v8);
      type metadata accessor for Key(0);
      sub_1A3C45350(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
      v15 = sub_1A524C3D4();

      [a4 addAttributes:v15 range:{a2, a3}];

      return;
    }
  }

  memset(v16, 0, sizeof(v16));
  sub_1A3C35B00(v16);
}

double sub_1A3FB5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1A3C45350(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
  v9 = sub_1A524C3E4();
  v8(v9, a3, a4, a5);

  return result;
}

void *sub_1A3FB5C8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C8B438(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1A3FB5D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C8B438(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1A3FB5E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1A3FB5C8C(*(a3 + 16), 0);
  v8 = sub_1A3CB35E8(&v10, (v7 + 4), v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void sub_1A3FB5EFC(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  sub_1A524E524();
  v5 = *v2;
  v6 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v5 + 16) & 0x3FLL) >= v6)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v8 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v8)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v9 = sub_1A52468B4();

        *v2 = v9;
        v8 = v9;
      }

      if (v8)
      {
        sub_1A5246854();
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v6 < 0x10)
  {
    return;
  }

  sub_1A3FB6034(v4);
}

void sub_1A3FB6034(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x1A5901C30](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = sub_1A3FB60D4(v4, v8, 0, v3);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
}

uint64_t sub_1A3FB60D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1A5901C30](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1A5901C40](v8, a4);
    sub_1A3FB6154(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1A3FB61A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v9 + 8 * v6);
        result = sub_1A524DBE4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1A5246834();

        if (v8)
        {
          while (1)
          {
            sub_1A5246884();
          }
        }

        result = sub_1A5246874();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A3FB62B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_1A524DBE4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    v8 = sub_1A5246864();
    if ((v9 & 1) == 0)
    {
      sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
      do
      {
        v10 = *(a2 + 8 * v8);
        v11 = sub_1A524DBF4();

        if (v11)
        {
          break;
        }

        sub_1A5246884();
        v8 = sub_1A5246864();
      }

      while ((v12 & 1) == 0);
    }

    return v8;
  }

  return result;
}

void sub_1A3FB63E8(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_1A3FB6570(a1, sub_1A3FB8A6C);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1A5901C10]())
  {
LABEL_16:
    sub_1A3FB6570(a1, sub_1A3FB8A6C);
    sub_1A3FB6034(v11);
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1A52468B4();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_1A3FB6604(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1A3FB67E4(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1A3FB6570(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    sub_1A524E524();
    return v10;
  }

  return result;
}

void sub_1A3FB6604(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v18 = sub_1A5246834();
  sub_1A5246884();
  if (v18)
  {
    v7 = sub_1A5246844();
    while (1)
    {
      v8 = sub_1A5246864();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v10 + 8 * v8 + 32);
      v12 = sub_1A524DBE4();

      v13 = 1 << *a2;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_24;
      }

      v14 = (v13 - 1) & v12;
      if (v6 >= v7)
      {
        if (v14 >= v7 && v6 >= v14)
        {
LABEL_18:
          sub_1A5246864();
          v6 = a1;
          sub_1A5246854();
        }
      }

      else if (v14 >= v7 || v6 >= v14)
      {
        goto LABEL_18;
      }

      sub_1A5246884();
    }
  }

  sub_1A5246854();
}

void sub_1A3FB67E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (a1 < (v10 - v6) / 2)
    {
      if (MEMORY[0x1A5901C00](*a4 & 0x3F) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v10 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v11 = a3;

        if (a1)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(v11 + 32 + 8 * v12);
            sub_1A524DBE4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1A5246834())
            {
              while (1)
              {
                v14 = sub_1A5246864();
                if ((v15 & 1) == 0 && v14 == v12)
                {
                  break;
                }

                sub_1A5246884();
              }
            }

            if (__OFADD__(v12, v6))
            {
              goto LABEL_55;
            }

            ++v12;
            sub_1A5246874();

            if (v12 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1A5246834();
      v21 = sub_1A5246864();
      if ((v22 & 1) != 0 || v21 >= a1)
      {
LABEL_33:
        sub_1A5246884();
LABEL_18:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v20 = (v19 & (((v16 >> 6) - v6) >> 63)) + (v16 >> 6) - v6;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v6))
      {
        sub_1A5246874();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1A5246834();
      v23 = sub_1A5246864();
      if ((v24 & 1) == 0 && v23 >= v5)
      {
        if (__OFSUB__(v23, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1A5246874();
      }

      sub_1A5246884();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v10 - a2) >= MEMORY[0x1A5901C00](*a4 & 0x3F) / 3)
    {
      goto LABEL_39;
    }

    if (v10 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v10 != v5)
    {
      do
      {
        v25 = *(a3 + 32 + 8 * v5);
        sub_1A524DBE4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1A5246834())
        {
          while (1)
          {
            v26 = sub_1A5246864();
            if ((v27 & 1) == 0 && v26 == v5)
            {
              break;
            }

            sub_1A5246884();
          }
        }

        sub_1A5246874();
      }

      while (++v5 != v10);
    }
  }
}

uint64_t sub_1A3FB6C28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3FB8960(0);
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A3FB6E64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A3FB6E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3FB8960(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1A524DBE4();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A3FB70C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3FB88E8(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_1A524EC84();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A3FB731C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      v11 = sub_1A524DBE4();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v4);
          v17 = (v15 + 8 * v7);
          if (v4 != v7 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v4);
          v20 = (v18 + 8 * v7);
          if (v4 != v7 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1A3FB74A8()
{
  v1 = v0;
  sub_1A3FB8960(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A3FB75FC()
{
  v1 = v0;
  sub_1A3FB88E8(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1A3FB7788(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3CB67E8(0, &qword_1EB12F980, &qword_1EB126A40, 0x1E696AAB0, MEMORY[0x1E69E62F8]);
          sub_1A3FB8410();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A3FB7930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (*v3 != *v4)
      {
        v8 = *(v6 + 32);
        if (*(v6 + 56))
        {
          v9 = v8;
          strcpy(v38, "user-search-");
          BYTE5(v38[1]) = 0;
          HIWORD(v38[1]) = -5120;
          v10 = [v9 string];
          v11 = sub_1A524C674();
          v13 = v12;

          MEMORY[0x1A5907B60](v11, v13);
        }

        else
        {
          v15 = *(v6 + 40);
          v14 = *(v6 + 48);
          v16 = v8;
          sub_1A524E404();

          v38[0] = 0xD000000000000011;
          v38[1] = 0x80000001A53BFEA0;
          v17 = [v16 uuid];
          v18 = sub_1A524C674();
          v20 = v19;

          MEMORY[0x1A5907B60](v18, v20);

          sub_1A3FAE3DC(v8, v15, v14, 0);
        }

        v21 = v38[0];
        v22 = v38[1];
        v23 = *(v7 + 32);
        if (*(v7 + 56))
        {
          v24 = v23;
          strcpy(v38, "user-search-");
          BYTE5(v38[1]) = 0;
          HIWORD(v38[1]) = -5120;
          v25 = [v24 string];
          v26 = sub_1A524C674();
          v28 = v27;

          MEMORY[0x1A5907B60](v26, v28);
        }

        else
        {
          v29 = *(v7 + 40);
          v37 = *(v7 + 48);
          v30 = v38[1];
          v31 = v23;
          sub_1A524E404();

          v38[0] = 0xD000000000000011;
          v38[1] = 0x80000001A53BFEA0;
          v32 = [v31 uuid];
          v33 = sub_1A524C674();
          v35 = v34;

          v36 = v33;
          v22 = v30;
          MEMORY[0x1A5907B60](v36, v35);

          sub_1A3FAE3DC(v23, v29, v37, 0);
        }

        if (v21 == v38[0] && v22 == v38[1])
        {
        }

        else
        {
          v5 = sub_1A524EAB4();

          if ((v5 & 1) == 0)
          {
            return;
          }
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_1A3FB7C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = a2 + 32;
    sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
    do
    {
      v5 = *v3++;
      v4 += 8;
      v6 = v5;
      v7 = sub_1A524DBF4();

      if ((v7 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1A3FB7D2C()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v10[1] = qword_1EB17A868;
  sub_1A524BF24();
  aBlock[4] = PXDisplayCollectionDetailedCountsMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_27;
  v7 = _Block_copy(aBlock);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v8 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v8, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v7);
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v11);
}

uint64_t sub_1A3FB8014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if ((a8 & 1) == 0)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    v12 = sub_1A524DBF4();
    result = 0;
    if ((v12 & 1) != 0 && a2 == a6)
    {
      if (a3)
      {
        if (a7 && (sub_1A3D3D27C(a3, a7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!a7)
      {
        return 1;
      }

      return 0;
    }
  }

  else
  {
    if (a8)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    return sub_1A524DBF4() & 1;
  }

  return result;
}

void sub_1A3FB8118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3FB827C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3FB82C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1A3FB8388()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[16];
  v6 = v2[17];
  v7 = v2[18];
  v2[16] = v1;
  v2[17] = v3;
  v2[18] = v4;
  sub_1A3CB237C(v1, v3, v4);
  sub_1A3CB23D0(v5, v6, v7);
  if (v2[19])
  {

    sub_1A5245804();
  }

  __break(1u);
}

unint64_t sub_1A3FB8410()
{
  result = qword_1EB12F988;
  if (!qword_1EB12F988)
  {
    sub_1A3CB67E8(255, &qword_1EB12F980, &qword_1EB126A40, 0x1E696AAB0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F988);
  }

  return result;
}

double sub_1A3FB849C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A3FB8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a3 + 16);
  if (v6)
  {

    sub_1A524E554();
    v8 = 0;
    while (1)
    {
      v9 = *(*(a3 + 32 + 8 * v8) + 56);

      if (v9 == 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v5)
      {
        break;
      }

      ++v8;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v8 == v6)
      {
        return;
      }
    }
  }

  else
  {
  }
}

id sub_1A3FB8830(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1;
}

uint64_t objectdestroy_60Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 40));

  return swift_deallocObject();
}

void sub_1A3FB88E8(uint64_t a1)
{
  if (!qword_1EB126410)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126410);
    }
  }
}

void sub_1A3FB8960(uint64_t a1)
{
  if (!qword_1EB1263E0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    sub_1A3C52CB8(&qword_1EB126AA8, &qword_1EB126AC0, 0x1E6978650);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1263E0);
    }
  }
}

double sub_1A3FB8ADC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UserPromptCoordinator(a1, a2);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  *(v2 + 24) = v3;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 57) = 0u;
  qword_1EB186EE8 = v2;
  return result;
}

double UserPromptCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  return result;
}

double static UserPromptCoordinator.shared.getter()
{
  if (qword_1EB186EE0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t UserPromptCoordinator.Priority.description.getter()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t UserPromptCoordinator.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3FB91E4()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x746C7561666564;
  }
}

double UserPromptCoordinator.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  return result;
}

uint64_t sub_1A3FB9248(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() mainRunLoop];
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A3C52C70(0, &qword_1EB126558, 0x1E695DFD0);
  sub_1A3FBB27C();

  sub_1A5247AB4();
}

void sub_1A3FB9358()
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 40))
  {
    swift_beginAccess();
    v4 = *(v0 + 24);
    if (*(v4 + 16))
    {
      swift_beginAccess();
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v30 = *(v4 + 64);
      v28 = v5;
      v29 = v6;
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v26 = *(v4 + 48);
      v25 = *(v4 + 56);
      sub_1A3FBAFC4(&v28, v27);
      v9 = v0;
      sub_1A3FBAF04(0, 1);
      swift_endAccess();
      if (qword_1EB176A30 != -1)
      {
        swift_once();
      }

      v10 = sub_1A5246F24();
      __swift_project_value_buffer(v10, qword_1EB176A38);
      sub_1A3FBAFC4(&v28, v27);
      v11 = sub_1A5246F04();
      v12 = sub_1A524D264();
      sub_1A3FBAFFC(&v28);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v27[0] = swift_slowAlloc();
        *v13 = 136315138;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      *(v9 + 32) = v7;
      *(v9 + 40) = v8;
      *(v9 + 48) = v26;
      *(v9 + 56) = v25;
      sub_1A3FBAFC4(&v28, v27);
      sub_1A3FBACB0(v14, v15);
      v16 = sub_1A524CCB4();
      (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
      sub_1A524CC54();
      sub_1A3FBAFC4(&v28, v27);

      v17 = sub_1A524CC44();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      *(v18 + 16) = v17;
      *(v18 + 24) = v19;
      v20 = v29;
      *(v18 + 32) = v28;
      *(v18 + 48) = v20;
      *(v18 + 64) = v30;
      *(v18 + 72) = v9;
      sub_1A3D4D930(0, 0, v3, &unk_1A530E2C0, v18);
      sub_1A3FBAFFC(&v28);
    }

    else
    {
      if (qword_1EB176A30 != -1)
      {
        swift_once();
      }

      v21 = sub_1A5246F24();
      __swift_project_value_buffer(v21, qword_1EB176A38);
      v22 = sub_1A5246F04();
      v23 = sub_1A524D234();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1A3C1C000, v22, v23, "no scheduled prompt", v24, 2u);
        MEMORY[0x1A590EEC0](v24, -1, -1);
      }
    }
  }
}

uint64_t sub_1A3FB9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[20] = sub_1A524CC54();
  v5[21] = sub_1A524CC44();
  v9 = (*(a4 + 24) + **(a4 + 24));
  v7 = swift_task_alloc();
  v5[22] = v7;
  *v7 = v5;
  v7[1] = sub_1A3FB9870;

  return v9();
}

uint64_t sub_1A3FB9870()
{
  *(*v1 + 184) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3FB9C54;
  }

  else
  {
    v4 = sub_1A3FB99CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3FB99CC()
{
  v17 = v0;

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB176A38);
  sub_1A3FBAFC4(v1, (v0 + 13));
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  sub_1A3FBAFFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315138;
    sub_1A3C2EF94(*v5, v5[1], &v16);
  }

  v7 = v0[19];
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  v10.n128_f64[0] = sub_1A3FBACB0(v8, v9);
  if ((*(v7 + 72) & 1) == 0)
  {
    v11 = [objc_opt_self() sharedScheduler];
    v12 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1A3FBB3DC;
    v0[7] = v12;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_45;
    v13 = _Block_copy(v0 + 2);

    [v11 scheduleTaskWithQoS:1 block:v13];
    _Block_release(v13);
  }

  v14 = v0[1];

  return v14(v10);
}

uint64_t sub_1A3FB9C54()
{
  v26 = v0;

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB176A38);
  sub_1A3FBAFC4(v2, (v0 + 8));
  v4 = v1;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D244();
  sub_1A3FBAFFC(v2);

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = v0[18];
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315394;
    sub_1A3C2EF94(*v9, v9[1], &v25);
  }

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v11 = v0[18];
  __swift_project_value_buffer(v3, qword_1EB176A38);
  sub_1A3FBAFC4(v11, (v0 + 13));
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  sub_1A3FBAFFC(v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[18];
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315138;
    sub_1A3C2EF94(*v14, v14[1], &v25);
  }

  v16 = v0[19];
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0;
  v19.n128_f64[0] = sub_1A3FBACB0(v17, v18);
  if ((*(v16 + 72) & 1) == 0)
  {
    v20 = [objc_opt_self() sharedScheduler];
    v21 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1A3FBB3DC;
    v0[7] = v21;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_45;
    v22 = _Block_copy(v0 + 2);

    [v20 scheduleTaskWithQoS:1 block:v22];
    _Block_release(v22);
  }

  v23 = v0[1];

  return v23(v19);
}

void *UserPromptCoordinator.deinit()
{

  sub_1A3FBACB0(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t UserPromptCoordinator.__deallocating_deinit()
{

  sub_1A3FBACB0(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t static PXUserPromptCoordinator.schedulePrompt(withIdentifier:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  return sub_1A3C67884(sub_1A3FBACF4, v9, "PhotosUICore/UserPromptCoordinator.swift", 40, 2u, 109);
}

double sub_1A3FBA198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB186EE0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB186EE8;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v12 = 0;
  v10 = *(*v8 + 112);

  v10(a1, a2, &v12, &unk_1A530E2D8, v9);

  return result;
}

uint64_t sub_1A3FBA2A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3FBA33C, v4, v3);
}

uint64_t sub_1A3FBA33C()
{
  v7 = *(v0 + 16);
  v1 = sub_1A524CC44();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1A3FBA44C;
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, v1, v4, 0xD000000000000026, 0x80000001A53C0370, sub_1A3FBB1BC, v2, v5);
}

uint64_t sub_1A3FBA44C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3DEB9FC, v3, v2);
}

double sub_1A3FBA5AC(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  a2(sub_1A3FBB1C4, v10);

  return result;
}

double sub_1A3FBA7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_26_0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);

  return result;
}

PXUserPromptCoordinator __swiftcall PXUserPromptCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A3FBA92C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176A38);
  __swift_project_value_buffer(v0, qword_1EB176A38);
  sub_1A5246EF4();
}

char *sub_1A3FBA990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3FBB36C(0, &qword_1EB126270, &type metadata for UserPromptCoordinator.Prompt, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

unint64_t sub_1A3FBAAC8(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 40 * a3;
  a2 = (v9 + 32 + 40 * v8);
  if (result != a2 || result >= &a2[40 * v14])
  {
    result = memmove(result, a2, 40 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v18;
  *(v10 + 16) = v19;
  a2 = v20;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1A3FBB2E4(result, a2);
    __break(1u);
    return result;
  }

  return sub_1A3FBB2E4(a4, v20);
}

unint64_t sub_1A3FBABD4(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1A3FBA990(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1A3FBAAC8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

double sub_1A3FBACB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A3FBAD28()
{
  result = qword_1EB12F990;
  if (!qword_1EB12F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F990);
  }

  return result;
}

unint64_t sub_1A3FBAE2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3FBAF04(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A3FBA990(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A3FBAE2C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A3FBB02C()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3FB9764(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_1A3FBB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FBB124()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3FBA2A0(v2, v3);
}

double sub_1A3FBB224()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = 0;
    sub_1A3FB9358();
  }

  return result;
}

unint64_t sub_1A3FBB27C()
{
  result = qword_1EB126560;
  if (!qword_1EB126560)
  {
    sub_1A3C52C70(255, &qword_1EB126558, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126560);
  }

  return result;
}

uint64_t sub_1A3FBB2E4(uint64_t a1, uint64_t a2)
{
  sub_1A3FBB36C(0, &qword_1EB1204D0, &type metadata for UserPromptCoordinator.Prompt, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3FBB36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FBB3EC()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FBB480, v2, v1);
}

uint64_t sub_1A3FBB480()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1A3FBB4E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBB594;

  return sub_1A3FBB8AC(a1);
}

uint64_t sub_1A3FBB594(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}