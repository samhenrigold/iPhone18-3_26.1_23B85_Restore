void sub_1A3E47FB8(double a1)
{
  if (!qword_1EB12CFA8)
  {
    sub_1A3E48238(255, a1);
    sub_1A3E48680(255, &qword_1EB12CFC8, MEMORY[0x1E6982AD8], MEMORY[0x1E6982AD0]);
    sub_1A3E48434(255, v1);
    sub_1A3E48680(255, &qword_1EB12CFC0, MEMORY[0x1E6982AB0], MEMORY[0x1E6982AA8]);
    sub_1A3E485A4(255, v2);
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247604();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFA8);
    }
  }
}

void sub_1A3E48238(uint64_t a1, double a2)
{
  if (!qword_1EB12CFB0)
  {
    sub_1A3E48434(255, a2);
    sub_1A3E48680(255, &qword_1EB12CFC0, MEMORY[0x1E6982AB0], MEMORY[0x1E6982AA8]);
    sub_1A3E485A4(255, v2);
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475C4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFB0);
    }
  }
}

void sub_1A3E48434(uint64_t a1, double a2)
{
  if (!qword_1EB12CFB8)
  {
    sub_1A3E485A4(255, a2);
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8], MEMORY[0x1E6982AC0]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFB8);
    }
  }
}

void sub_1A3E485A4(uint64_t a1, double a2)
{
  if (!qword_1EB1249E8)
  {
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1249E8);
    }
  }
}

void sub_1A3E48680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3E48704(uint64_t a1)
{
  if (!qword_1EB12B120)
  {
    sub_1A52475B4();
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B120);
    }
  }
}

uint64_t PeopleUnifiedManagerSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double PeopleUnifiedItemListManager.itemList.getter()
{
  swift_beginAccess();

  return result;
}

double PeopleUnifiedItemListManager.itemList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

void PeopleUnifiedItemListManager.__allocating_init(_:localIdentifiers:wantMagicItems:sourceType:peopleFetchLimit:peopleSoftCap:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v13 = a3;
  swift_allocObject();
  PeopleUnifiedItemListManager.init(_:localIdentifiers:wantMagicItems:sourceType:peopleFetchLimit:peopleSoftCap:)(a1, a2, v13, a4, a5, a6 & 1, a7, a8 & 1);
}

id sub_1A3E49574(uint64_t a1)
{
  if (*(v1 + 16) != 1 || *(v1 + 17) != 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  v4 = *(v1 + 24);
  sub_1A3C36888();
  return sub_1A414E280(a1, v4);
}

void sub_1A3E495E4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A3E4964C(uint64_t a1)
{
  if (*(v1 + 16) == 2)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  v5 = v1 + 24;
  v4 = *(v1 + 24);
  v3 = *(v5 + 8);
  sub_1A3C36888();
  v7 = sub_1A3C30368();
  return sub_1A414DEC0(a1, v4, v3, v7 & 1);
}

id sub_1A3E496E0(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
    sub_1A3E4C99C(&qword_1EB125368, 255, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    v5 = a1;
    v6 = 0;
    v7 = 1;
    v8 = v3;
  }

  else
  {
    sub_1A3C36888();
    v5 = a1;
    v6 = 1;
    v7 = 0;
    v8 = v3;
  }

  return sub_1A414DACC(v5, v6, v7, v8);
}

void sub_1A3E497FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PeopleUnifiedItem();
    v7 = sub_1A3E4C99C(&qword_1EB12A450, 255, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3E498A0()
{
  v1 = sub_1A524BEE4();
  v32 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A524BFC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  if ((*(v0 + 120) & 1) == 0)
  {
    *(v0 + 120) = 1;
    v28 = v3;
    v19 = v16;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v27 = v1;
    v29 = sub_1A524D474();
    sub_1A524BFA4();
    *v10 = 100;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
    sub_1A524BFB4();
    (*(v8 + 8))(v10, v7);
    v20 = *(v12 + 8);
    v21 = v19;
    v20(v14, v19);
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A3E4C948;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_25;
    v23 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3E4C99C(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C2A0A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v25 = v27;
    v24 = v28;
    sub_1A524E224();
    v26 = v29;
    MEMORY[0x1A5908790](v18, v6, v24, v23);
    _Block_release(v23);

    (*(v32 + 8))(v24, v25);
    (*(v30 + 8))(v6, v31);
    v20(v18, v21);
  }
}

double sub_1A3E49D4C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3E498A0();
  }

  return result;
}

Swift::Bool __swiftcall PeopleUnifiedItemListManager.waitForItemList(timeout:)(Swift::Double timeout)
{
  if (timeout > 0.0)
  {
    v3 = (*(*v1[5] + 440))();
    v4 = (*(*v1[6] + 440))(v3, timeout);
    (*(*v1[7] + 440))(v4, timeout);

    sub_1A3E49EAC();
  }

  return 0;
}

uint64_t static PeopleUnifiedItemListManager.cappedPeopleCount(peopleCount:peopleFetchLimit:peopleSoftCap:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = a3;
  }

  if (result >= a2)
  {
    return v3;
  }

  return result;
}

void *sub_1A3E4AFAC(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5, __n128 a6)
{
  if (a1 >> 62)
  {
    v10 = sub_1A524E2B4();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1A3E4C0A8(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = v27;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x1A59097F0](v13, a1);
        v27 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1A3E4C0A8((v15 > 1), v16 + 1, 1);
          v11 = v27;
        }

        ++v13;
        sub_1A3E495E4(0, a2, a3, a4, type metadata accessor for PhotoKitItem);
        v25 = v17;
        v26 = sub_1A3E4C834(a5, a2, a3, a4);
        *&v24 = v14;
        *(v11 + 16) = v16 + 1;
        sub_1A3C34460(&v24, v11 + 40 * v16 + 32);
      }

      while (v10 != v13);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        v27 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_1A3E4C0A8((v20 > 1), v21 + 1, 1);
          v11 = v27;
        }

        sub_1A3E495E4(0, a2, a3, a4, type metadata accessor for PhotoKitItem);
        v25 = v22;
        v26 = sub_1A3E4C834(a5, a2, a3, a4);
        *&v24 = v19;
        *(v11 + 16) = v21 + 1;
        sub_1A3C34460(&v24, v11 + 40 * v21 + 32);
        ++v18;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

double sub_1A3E4B1D4(void *a1)
{
  type metadata accessor for LemonadePeopleProgressStatus(0);
  sub_1A3F53C40(a1);
  sub_1A3F546F4();

  return result;
}

double (*sub_1A3E4B22C(uint64_t a1, void *a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  v5 = a2;
  return sub_1A3E4C898;
}

double sub_1A3E4B2C0(uint64_t a1, void *a2)
{
  sub_1A3C2A0A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for LemonadePeopleProgressStatus(0);
    sub_1A3F53C40(a2);
    v7 = sub_1A3F546F4();

    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    sub_1A524CC54();

    v10 = a2;
    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = v10;
    v12[6] = v7;

    sub_1A3D4D930(0, 0, v5, &unk_1A5301328, v12);
  }

  return result;
}

uint64_t sub_1A3E4B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_1A524CC54();
  v6[8] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3E4B54C, v8, v7);
}

uint64_t sub_1A3E4B54C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[6];
    v4 = v0[7];
    type metadata accessor for LemonadePeopleProgressStatus(0);
    sub_1A3F53C40(v3);
    v5 = sub_1A3F546F4();

    if (v4 || v5 != 4)
    {
      v6 = *(*v2[5] + 272);

      v6(v7);

      v8 = *(*v2[6] + 272);

      v8(v9);

      v10 = *(*v2[7] + 272);

      v10(v11);
    }

    v12 = v0[6];
    *(swift_task_alloc() + 16) = v12;
    v13 = swift_task_alloc();
    *(v13 + 16) = v2;
    *(v13 + 24) = v12;
    sub_1A52415B4();
  }

  v14 = v0[1];

  return v14();
}

void PeopleUnifiedItemListManager.observeChanges(using:)(uint64_t a1, uint64_t a2)
{
  sub_1A3E497DC(0);
  sub_1A3E4C99C(&qword_1EB128DC8, 255, sub_1A3E497DC, off_1E7721070);

  sub_1A5245C54();
}

void *PeopleUnifiedItemListManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PeopleUnifiedItemListManager.__deallocating_deinit()
{
  PeopleUnifiedItemListManager.deinit();

  return swift_deallocClassInstance();
}

double sub_1A3E4B8E4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_1A3E4B950(double a1)
{
  if (a1 > 0.0)
  {
    v3 = (*(*v1[5] + 440))();
    v4 = (*(*v1[6] + 440))(v3, a1);
    (*(*v1[7] + 440))(v4, a1);

    sub_1A3E49EAC();
  }

  return 0;
}

void sub_1A3E4BA5C(uint64_t a1, uint64_t a2)
{
  sub_1A3E497DC(0);
  sub_1A3E4C99C(&qword_1EB128DC8, 255, sub_1A3E497DC, off_1E7721070);

  sub_1A5245C54();
}

unint64_t sub_1A3E4BB7C()
{
  result = qword_1EB125480;
  if (!qword_1EB125480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125480);
  }

  return result;
}

unint64_t sub_1A3E4BD60()
{
  result = qword_1EB129768;
  if (!qword_1EB129768)
  {
    sub_1A3E495E4(255, &qword_1EB129760, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129768);
  }

  return result;
}

void *sub_1A3E4BDE4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C2A0A4(0, &qword_1EB120370, sub_1A3E4C7D0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3E4C7D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A3E4BF44(char a1)
{
  sub_1A3C6C300();
  v1 = sub_1A524C4A4();
  return sub_1A3E4C228(a1, v1);
}

void sub_1A3E4BFAC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1A3E4BDE4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A3E4C7D0();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1A3E4C0A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3E4C0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3E4C0C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C2A0A4(0, &qword_1EB120370, sub_1A3E4C7D0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3E4C7D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A3E4C228(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C6C358();
    do
    {
      if (sub_1A524C594())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A3E4C304(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 32); ; i += 5)
  {
    v5 = i[3];
    v6 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v5);
    v7 = (*(v6 + 16))(v5, v6);
    v8 = [v7 localIdentifier];

    v9 = sub_1A524C674();
    v11 = v10;

    v12 = [a2 localIdentifier];
    v13 = sub_1A524C674();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v17 = sub_1A524EAB4();

    if (v17)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1A3E4C46C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = sub_1A3E4C304(*a1, a2);
  v32 = result;
  if (v2)
  {
    return v32;
  }

  if (v5)
  {
    return v3[2];
  }

  v6 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    v8 = v3 + 2;
    v7 = v3[2];
    if (v6 == v7)
    {
      return v32;
    }

    v9 = 40 * v32 + 72;
    while (v6 < v7)
    {
      sub_1A3C341C8(v3 + v9, &v29);
      v10 = v30;
      v11 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      v12 = (*(v11 + 16))(v10, v11);
      v13 = [v12 localIdentifier];

      v14 = sub_1A524C674();
      v16 = v15;

      v17 = [a2 localIdentifier];
      v18 = sub_1A524C674();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v29);
      }

      else
      {
        v22 = sub_1A524EAB4();

        result = __swift_destroy_boxed_opaque_existential_0(&v29);
        if ((v22 & 1) == 0)
        {
          v23 = v32;
          if (v6 != v32)
          {
            if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v24 = *v8;
            if (v32 >= *v8)
            {
              goto LABEL_27;
            }

            result = sub_1A3C341C8(&v3[5 * v32 + 4], &v29);
            if (v6 >= v24)
            {
              goto LABEL_28;
            }

            sub_1A3C341C8(v3 + v9, v28);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1A3E4C2F0(v3);
            }

            v25 = &v3[5 * v32];
            __swift_destroy_boxed_opaque_existential_0(v25 + 4);
            result = sub_1A3C34460(v28, (v25 + 4));
            if (v6 >= v3[2])
            {
              goto LABEL_29;
            }

            __swift_destroy_boxed_opaque_existential_0((v3 + v9));
            result = sub_1A3C34460(&v29, v3 + v9);
            *a1 = v3;
            v23 = v32;
          }

          v32 = v23 + 1;
        }
      }

      ++v6;
      v8 = v3 + 2;
      v7 = v3[2];
      v9 += 40;
      if (v6 == v7)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3E4C6F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1A3E4C7D0();
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

unint64_t sub_1A3E4C7D0()
{
  result = qword_1EB12A2A8;
  if (!qword_1EB12A2A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12A2A8);
  }

  return result;
}

uint64_t sub_1A3E4C834(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E495E4(255, a2, a3, a4, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3E4C8A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A3E4B4B0(v5, v6, v7, v2, v3, v4);
}

double sub_1A3E4C948()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3E49EAC();
  }

  return result;
}

uint64_t sub_1A3E4C99C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A3E4CA18()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E4CAC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E4CBB0()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E4CC54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  *a2 = *(v3 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E4CD20()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E4CDC8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  *a2 = *(v3 + 88);
  return swift_unknownObjectRetain();
}

double sub_1A3E4CE98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415C4();

  return result;
}

void sub_1A3E4CF60()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E4D004(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  *a2 = *(v3 + 104);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3E4D0D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415C4();

  return result;
}

id sub_1A3E4D18C()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  v1 = *(v0 + 112);

  return v1;
}

id sub_1A3E4D23C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_1A3E4D320(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  sub_1A3C52C70(0, &qword_1EB12D040, &off_1E7721548);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 112);
    *(v2 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
    sub_1A52415C4();
  }
}

double sub_1A3E4DABC(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 360) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A3E4DBE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v65 = a2;
    v86 = MEMORY[0x1E69E7CC0];
    sub_1A3E50788(0, v2, 0);
    v4 = v2 - 1;
    v5 = v86;
    v6 = (a1 + 40);
    for (i = &selRef_storageTipType; ; i = &selRef_storageTipType)
    {
      v84 = *(v6 - 1);
      v8 = [*v6 viewModel];
      v9 = [v8 attributedPosterTitle];
      v10 = [v9 i[36]];

      v11 = sub_1A524C674();
      v82 = v12;
      v83 = v11;

      v13 = [v8 attributedTitle];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 i[36]];
        v16 = sub_1A524C674();
        v80 = v17;
      }

      else
      {
        v16 = 0;
        v80 = 0;
      }

      v18 = [v8 attributedSubtitle1];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 i[36]];
        v21 = sub_1A524C674();
        v78 = v22;
        v79 = v21;
      }

      else
      {
        v78 = 0;
        v79 = 0;
      }

      v81 = v16;
      v23 = [v8 attributedSubtitle2];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 i[36]];
        v26 = sub_1A524C674();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v8 owner];
      if (v29)
      {
        sub_1A4622A44(v29, &v87);
        v30 = v87;
        v31 = v88;
        v32 = v89;
        v33 = v90;
        v34 = v91;
      }

      else
      {
        v35 = [objc_opt_self() pl_sharedAccountStore];
        v36 = [v35 cachedPrimaryAppleAccount];

        if (v36)
        {
          v37 = [v36 aa_primaryEmail];
          if (v37)
          {
            v38 = v37;
            v75 = sub_1A524C674();
            v73 = v39;
          }

          else
          {
            v75 = 0;
            v73 = 0;
          }

          v40 = [v36 aa_firstName];
          if (v40)
          {
            v41 = v40;
            v71 = sub_1A524C674();
            v69 = v42;
          }

          else
          {
            v71 = 0;
            v69 = 0;
          }

          v43 = [v36 aa_lastName];
          if (v43)
          {
            v44 = v43;
            v45 = sub_1A524C674();
            v66 = v46;
            v67 = v45;
          }

          else
          {
            v66 = 0;
            v67 = 0;
          }

          v77 = v4;
          v47 = [v36 aa_fullName];
          if (v47)
          {
            v48 = v47;
            v49 = sub_1A524C674();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          sub_1A4622A28(v75, v73, 0, 0, v71, v69, v67, v66, &v87, v49, v51);
          v74 = v88;
          v76 = v87;
          v70 = v90;
          v72 = v89;
          v68 = v91;

          v34 = v68;
          v33 = v70;
          v32 = v72;
          v31 = v74;
          v30 = v76;
          v4 = v77;
        }

        else
        {
          v31 = 0uLL;
          v30 = xmmword_1A5301350;
          v32 = 0uLL;
          v33 = 0uLL;
          v34 = 0uLL;
        }
      }

      v92[0] = v30;
      v92[1] = v31;
      v92[2] = v32;
      v92[3] = v33;
      v92[4] = v34;
      swift_unknownObjectRetain();
      v64.n128_u64[1] = v26;
      *(&v63 + 1) = v79;
      v64.n128_u64[0] = v78;
      *&v63 = v80;
      sub_1A4622A98(v84, [v8 isNew], v92, objc_msgSend(v8, sel_posterAsset), objc_msgSend(v8, sel_posterMediaProvider), v83, v82, v81, v85, v63, v64, v28);

      v86 = v5;
      v53 = *(v5 + 16);
      v52 = *(v5 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1A3E50788((v52 > 1), v53 + 1, 1);
        v5 = v86;
      }

      *(v5 + 16) = v53 + 1;
      v54 = (v5 + 176 * v53);
      v55 = v85[0];
      v56 = v85[2];
      v54[3] = v85[1];
      v54[4] = v56;
      v54[2] = v55;
      v57 = v85[3];
      v58 = v85[4];
      v59 = v85[6];
      v54[7] = v85[5];
      v54[8] = v59;
      v54[5] = v57;
      v54[6] = v58;
      v60 = v85[7];
      v61 = v85[8];
      v62 = v85[10];
      v54[11] = v85[9];
      v54[12] = v62;
      v54[9] = v60;
      v54[10] = v61;
      if (!v4)
      {
        break;
      }

      --v4;
      v6 += 4;
    }

    a2 = v65;
  }

  sub_1A41852E4(a2);
}

void sub_1A3E4E10C()
{
  if ([*(v0 + 24) viewMode] == 2)
  {
    swift_allocObject();
    swift_weakInit();
    sub_1A3E50B24(&qword_1EB129CE0, type metadata accessor for iCloudLinkItemListManager, &unk_1A5301458);
    sub_1A5245F44();
  }

  [*(v0 + 80) dataSource];
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  sub_1A3E50EFC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3E4E800(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      if (qword_1EB176980 != -1)
      {
        swift_once();
      }

      v6 = sub_1A5246F24();
      __swift_project_value_buffer(v6, qword_1EB176988);

      v7 = sub_1A5246F04();
      v8 = sub_1A524D234();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v9 = 136315138;
        sub_1A3E50EFC();
        v10 = sub_1A524C714();
        v12 = v11;
        sub_1A3E072BC(0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1A52FC9F0;
        *(v13 + 56) = MEMORY[0x1E69E6158];
        v14 = sub_1A3D710E8();
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        v15 = MEMORY[0x1E69E65A8];
        *(v13 + 96) = MEMORY[0x1E69E6530];
        *(v13 + 104) = v15;
        *(v13 + 64) = v14;
        *(v13 + 72) = v5;
        v16 = sub_1A524C6C4();
        sub_1A3C2EF94(v16, v17, &v19);
      }

      swift_getKeyPath();
      v19 = v5;
      sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
      sub_1A52415D4();

      v18 = *(v5 + 112);
      [v18 inputEvent];
    }
  }

  return result;
}

double sub_1A3E4EAD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EB176980 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB176988);

    v4 = sub_1A5246F04();
    v5 = sub_1A524D234();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136315138;
      v16 = v7;
      sub_1A3E50EFC();
      v8 = sub_1A524C714();
      v10 = v9;
      sub_1A3E072BC(0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A52FC9F0;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      v12 = sub_1A3D710E8();
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
      v13 = MEMORY[0x1E69E65A8];
      *(v11 + 96) = MEMORY[0x1E69E6530];
      *(v11 + 104) = v13;
      *(v11 + 64) = v12;
      *(v11 + 72) = v2;
      v14 = sub_1A524C6C4();
      sub_1A3C2EF94(v14, v15, &v16);
    }

    sub_1A3E4E10C();
  }

  return result;
}

double sub_1A3E4ED04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EB176980 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB176988);

    v4 = sub_1A5246F04();
    v5 = sub_1A524D234();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136315138;
      v16 = v7;
      sub_1A3E50EFC();
      v8 = sub_1A524C714();
      v10 = v9;
      sub_1A3E072BC(0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A52FC9F0;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      v12 = sub_1A3D710E8();
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
      v13 = MEMORY[0x1E69E65A8];
      *(v11 + 96) = MEMORY[0x1E69E6530];
      *(v11 + 104) = v13;
      *(v11 + 64) = v12;
      *(v11 + 72) = v2;
      v14 = sub_1A524C6C4();
      sub_1A3C2EF94(v14, v15, &v16);
    }

    sub_1A3E4E10C();
  }

  return result;
}

uint64_t sub_1A3E4EF4C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
    sub_1A52415C4();

    type metadata accessor for iCloudLinkItemListManager(0);
    swift_getKeyPath();
    sub_1A52415D4();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3E4F164(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v4;
    sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
    sub_1A52415C4();

    type metadata accessor for iCloudLinkItemListManager(0);
    sub_1A3E4DBE4(a2, v6);
  }

  return result;
}

double sub_1A3E4F338(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a1 + 32);

  v8(v4, v5, v6, v7, a3);

  return result;
}

uint64_t sub_1A3E4F3B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3E4F9E0(v1 + 120, a1);
}

uint64_t sub_1A3E4F478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3E4F9E0(v3 + 120, a2);
}

uint64_t sub_1A3E4F538(uint64_t a1, uint64_t *a2, __n128 a3)
{
  sub_1A3E4F9E0(a1, v4);
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415C4();

  return sub_1A3E4F98C(v4);
}

double sub_1A3E4F758()
{
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  swift_beginAccess();

  return result;
}

double sub_1A3E4F810@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3E50B24(&qword_1EB129CD0, type metadata accessor for iCloudLinkItemListManager, &unk_1A53015B0);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 360);

  return result;
}

void sub_1A3E4F8FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 360) = v1;
}

unint64_t sub_1A3E4FA5C()
{
  result = qword_1EB182380[0];
  if (!qword_1EB182380[0])
  {
    type metadata accessor for iCloudLinkItemListManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB182380);
  }

  return result;
}

void sub_1A3E4FAB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A3E4FB2C()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore25iCloudLinkItemListManagerP33_D18CE676E5E2A2B310C3FA58EE842D707Mutator__itemList;
  sub_1A3E50E80(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A3E4FBD0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3E4F9E0(a1, v2);

  sub_1A52456B4();
}

void sub_1A3E4FC50(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A3E4FCF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id *sub_1A3E4FDA8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1A3E4F98C((v0 + 15));

  v1 = OBJC_IVAR____TtC12PhotosUICore25iCloudLinkItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A3E4FE68()
{
  sub_1A3E4FDA8();

  return swift_deallocClassInstance();
}

void sub_1A3E4FEC0()
{
  type metadata accessor for iCloudLinkItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A3E4FA5C();
  sub_1A52456D4();
}

void sub_1A3E4FF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3E50B24(&qword_1EB129CE0, type metadata accessor for iCloudLinkItemListManager, &unk_1A5301458);

  sub_1A5245F44();
}

id sub_1A3E4FFE8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 368);
  *a1 = v2;
  return v2;
}

void sub_1A3E4FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3E50B24(&qword_1EB129CE8, type metadata accessor for iCloudLinkItemListManager, &unk_1A5301530);

  sub_1A5245C54();
}

uint64_t sub_1A3E5007C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176988);
  v1 = __swift_project_value_buffer(v0, qword_1EB176988);
  v2 = sub_1A4531968();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A3E50108(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A3E50184(uint64_t a1, uint64_t *a2)
{
  sub_1A3E4F9E0(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3E4F9E0(v3, &v2);

  sub_1A52456B4();
}

char *sub_1A3E50210(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB12D030, &type metadata for iCloudLinkItemListManager.ICloudLinkItemContext);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3E50320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3E51A24();
  v37 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = *(v5 + 56) + 32 * v21;
      v26 = *v24;
      v25 = *(v24 + 8);
      v38 = *(v24 + 16);
      if ((v37 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v27 = sub_1A524ECE4();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3E505EC()
{
  v1 = v0;
  sub_1A3E51A24();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 32;
        v21 = *(v2 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        v25 = *(v21 + 16);
        *v24 = v20;
        v24[1] = v19;
        v26 = *(v4 + 56) + v16;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v25;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

char *sub_1A3E50788(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3E507A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3E507A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB12D048, &type metadata for iCloudLinkItem);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3E508D4()
{
  v1 = v0;
  if (qword_1EB176980 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB176988);

  v3 = sub_1A5246F04();
  v4 = sub_1A524D234();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v15 = v6;
    sub_1A3E50EFC();
    v7 = sub_1A524C714();
    v9 = v8;
    sub_1A3E072BC(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52FC9F0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1A3D710E8();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    v12 = MEMORY[0x1E69E65A8];
    *(v10 + 96) = MEMORY[0x1E69E6530];
    *(v10 + 104) = v12;
    *(v10 + 64) = v11;
    *(v10 + 72) = v1;
    v13 = sub_1A524C6C4();
    sub_1A3C2EF94(v13, v14, &v15);
  }

  sub_1A3E4E10C();
}

uint64_t sub_1A3E50B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3E50C00()
{
  result = qword_1EB12A3C0;
  if (!qword_1EB12A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3C0);
  }

  return result;
}

uint64_t sub_1A3E50CEC(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A3E50DE0(uint64_t a1, __n128 a2)
{
  sub_1A3E50E80(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A3E50E80(uint64_t a1)
{
  if (!qword_1EB128F60)
  {
    type metadata accessor for iCloudLinkItemListManager.Mutator(255);
    sub_1A3E4FA5C();
    sub_1A52456C4();
  }
}

unint64_t sub_1A3E50EFC()
{
  result = qword_1EB129CC8;
  if (!qword_1EB129CC8)
  {
    type metadata accessor for iCloudLinkItemListManager(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB129CC8);
  }

  return result;
}

uint64_t sub_1A3E50FA0()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3E50FDC()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

double sub_1A3E51020()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3E4E10C();
  }

  return result;
}

void sub_1A3E51074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v7 = [v5 invitationAtItemIndexPath_];
  v8 = [v7 identifier];
  v9 = sub_1A524C674();
  v11 = v10;

  if (*(v6 + 16))
  {
    v12 = sub_1A3C5DCA4(v9, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(v6 + 56) + 32 * v12;
      if (*v15 == v7)
      {
        v19 = qword_1EB176980;
        v22 = *v15;
        swift_unknownObjectRetain_n();
        v20 = *(&v22 + 1);
        swift_unknownObjectRetain();
        if (v19 != -1)
        {
          swift_once();
        }

        v21 = sub_1A5246F24();
        __swift_project_value_buffer(v21, qword_1EB176988);
        swift_unknownObjectRetain();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v16 = *(v15 + 8);
      swift_unknownObjectRetain_n();
      v17 = v16;
      swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  if (qword_1EB176980 != -1)
  {
    swift_once();
  }

  v18 = sub_1A5246F24();
  __swift_project_value_buffer(v18, qword_1EB176988);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E51798(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A3E517E0(void *a1, uint64_t a2)
{
  if (qword_1EB176980 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB176988);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E51A24()
{
  if (!qword_1EB12D038)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D038);
    }
  }
}

void sub_1A3E51A84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

void PhotosPreviewHeaderSlideshowContentViewModel.init(collection:initialAsset:assetChangeTimeInterval:)(uint64_t a1, unint64_t a2, double a3)
{
  v4 = sub_1A5241144();
  v10[1] = *(v4 - 8);
  v10[2] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A52411C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 33) = 0;
  *(v3 + 72) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading) = 0;
  v10[0] = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel_logger;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1A524E404();

  v11 = 0xD00000000000002DLL;
  v12 = 0x80000001A53B9790;
  sub_1A52411B4();
  sub_1A3E567C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v9);

  (*(v6 + 8))(v8, v5);
  sub_1A5246EF4();
}

void sub_1A3E52008(char a1)
{
  v2 = a1 & 1;
  v3 = v1[33];
  if (v3 == v2)
  {
    v1[33] = v2;

    sub_1A3E529F8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 600))(v5);
  }
}

void sub_1A3E52110(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 600))(v3);
  }
}

uint64_t sub_1A3E52220(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1A3E567C0(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v15 = a1;
  LOBYTE(a1) = sub_1A524C594();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 600))(v12);
  }

  return (v10)(v15, v4);
}

double sub_1A3E524A4(char *a1)
{
  v2 = *a1;
  sub_1A3E5617C();
  if (sub_1A524C594())
  {
    v1[32] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 600))(v5);
  }

  return result;
}

uint64_t sub_1A3E525C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E5262C()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E526A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

double sub_1A3E52714(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 600))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A3E527B4()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3E52848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  (*(*v3 + 600))();

  return swift_unknownObjectRelease();
}

void *sub_1A3E528E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A3E52984(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 592))();

  *a1 = v1[32];
}

void sub_1A3E529F8(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A5241144();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 360);
  if (((v7)(v4) & 1) != v2)
  {
    if (v7())
    {
      sub_1A5241104();
      sub_1A3E52220(v6);
    }

    v8 = sub_1A5246F04();
    v9 = sub_1A524D234();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v7() & 1;

      _os_log_impl(&dword_1A3C1C000, v8, v9, "isActive: %{BOOL}d", v10, 8u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    else
    {
    }

    sub_1A3E53528();
    sub_1A3E5451C();
  }
}

uint64_t (*sub_1A3E52BAC(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33);
  return sub_1A3E52BD8;
}

void sub_1A3E52BD8(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 33);
  *(v1 + 33) = v2;
  sub_1A3E529F8(v3);
}

uint64_t sub_1A3E52C08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E52CB0()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  return v0[33];
}

uint64_t (*sub_1A3E52D14(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 592))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E567C0(&qword_1EB125E28, type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel, &protocol conformance descriptor for PhotosPreviewHeaderSlideshowContentViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E52BAC(v4);
  return sub_1A3E52E64;
}

void sub_1A3E52E64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void *sub_1A3E52EF8()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  v1 = v0[9];
  v2 = v1;
  return v1;
}

id sub_1A3E52F64@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 592))();

  v4 = v3[9];
  *a2 = v4;

  return v4;
}

void sub_1A3E52FEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3E5301C(v1);
}

void sub_1A3E5301C(void *a1)
{
  v3 = v1[9];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 600))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[9];
LABEL_8:
  v1[9] = a1;
  v10 = v5;

  sub_1A3E5451C();
}

uint64_t sub_1A3E531AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 592))();

  v3 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
  swift_beginAccess();
  v4 = sub_1A5241144();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A3E53278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 592))();

  v4 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
  swift_beginAccess();
  v5 = sub_1A5241144();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1A3E53348(uint64_t a1)
{
  v2 = sub_1A5241144();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1A3E52220(v5);
}

uint64_t sub_1A3E53414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

double sub_1A3E53528()
{
  v1 = v0;
  sub_1A3C5615C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  KeyPath = swift_getKeyPath();
  (*(*v0 + 592))(KeyPath);

  v8 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading) & 1) == 0 && ((*(*v0 + 360))(v6))
  {
    if (*(v0 + v8) == 1)
    {
      *(v0 + v8) = 1;
    }

    else
    {
      v9 = swift_getKeyPath();
      v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
      *&v15[-16] = v0;
      v15[-8] = 1;
      (*(*v0 + 600))(v10);
    }

    v11 = sub_1A524CCB4();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_1A524CC54();

    v12 = sub_1A524CC44();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v1;
    sub_1A3D4D930(0, 0, v4, &unk_1A5301AA8, v13);
  }

  return result;
}

uint64_t sub_1A3E537D0()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A3E53B2C();
}

uint64_t sub_1A3E5387C()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3E539B8, v1, v0);
}

uint64_t sub_1A3E539B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3E53A18()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading);
}

void sub_1A3E53A84(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 592))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__didStartLoading);
}

uint64_t sub_1A3E53B4C(uint64_t a1)
{
  v26 = v1;
  v2 = sub_1A5246F04();
  v3 = sub_1A524D234();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "loading", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = v1[2];

  v6 = *(v5 + 48);
  v24 = *(v5 + 40);
  LOBYTE(v25) = v6;
  swift_unknownObjectRetain();
  v7 = sub_1A3E53F8C();
  v1[3] = v7;
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D234();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v11 = 136315138;
      v12 = v8;
      v13 = [v12 description];
      v14 = sub_1A524C674();
      v16 = v15;

      sub_1A3C2EF94(v14, v16, &v24);
    }

    sub_1A524CC54();
    v1[4] = sub_1A524CC44();
    v18 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3E53E68, v18, v17);
  }

  else
  {
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "failed to fetch preview assets", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_1A3E53E68()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1A3E5301C(v1);
  v3 = [v2 photoLibrary];
  v5 = sub_1A3E55AC0(v3, v4);
  [v3 px:v5 registerChangeObserver:?];

  return MEMORY[0x1EEE6DFA0](sub_1A3E53F2C, 0, 0);
}

uint64_t sub_1A3E53F2C()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_1A3E53F8C()
{
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v14 = *v0;
  v15 = v5;
  v6 = sub_1A47FD480();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A4A15C9C();
    if (!v8)
    {
      sub_1A5246EF4();
    }

    v9 = v8;

    return v9;
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1269B0, off_1E771FD48);
    v14 = v4;
    v15 = v5;
    swift_unknownObjectRetain();
    v12 = PXStoryConfiguration.init(previewFor:)(&v14, v11);
    v13 = [v12 assets];

    if (!v13)
    {
      sub_1A5246EF4();
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      sub_1A5246EF4();
    }
  }

  return result;
}

void sub_1A3E5451C()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 360))(v4))
  {
    swift_getKeyPath();
    v7 = (*v0 + 592);
    v8 = *v7;
    (*v7)();

    v9 = *(v0 + 9);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel_logger;
      v72 = v9;
      v69[2] = v10;
      v11 = sub_1A5246F04();
      v12 = sub_1A524D234();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "update assets", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }

      v14 = *(*v1 + 216);
      v15 = *v1 + 216;
      v16 = v14();
      v69[3] = v15;
      v70 = v14;
      if (v16)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v72 indexOfObject_];
          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        swift_unknownObjectRelease();
      }

      v18 = sub_1A52403B4();
LABEL_10:
      v19 = swift_allocObject();
      v71 = v19;
      *(v19 + 16) = v18;
      v20 = (v19 + 16);
      swift_getKeyPath();
      v8();

      v21 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
      swift_beginAccess();
      (*(v3 + 16))(v6, v1 + v21, v2);
      sub_1A52410B4();
      v23 = v22;
      (*(v3 + 8))(v6, v2);
      v24 = -v23;
      v25 = v1[8];
      v26 = sub_1A5246F04();
      v27 = sub_1A524D234();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = v18;
        *(v28 + 12) = 1024;
        *(v28 + 14) = v25 <= v24;
        _os_log_impl(&dword_1A3C1C000, v26, v27, "assetIndex: %ld, shouldMoveToNextAsset: %{BOOL}d", v28, 0x12u);
        MEMORY[0x1A590EEC0](v28, -1, -1);
      }

      if (v25 > v24)
      {
        v73 = *(v1 + 32);
        LOBYTE(v75[0]) = 0;
        sub_1A3E5617C();
        if (sub_1A524C594())
        {
          *(v1 + 32) = 0;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v31.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
          v69[-2] = v1;
          LOBYTE(v69[-1]) = 0;
          (*(*v1 + 600))(v31);
        }

        if (v18 == sub_1A52403B4() && [v72 count] >= 1)
        {
          v32 = v70;
          if (!v70())
          {
            swift_beginAccess();
            *v20 = 0;
            goto LABEL_29;
          }

          v33 = swift_unknownObjectRelease();
          v34 = (v32)(v33);
          v35 = *(v1 + 7);
          if (v34)
          {
            if (!v35)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              goto LABEL_29;
            }

            v36 = v34;
            swift_unknownObjectRelease();
            if (v36 != v35)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v35)
            {
              goto LABEL_29;
            }

            swift_unknownObjectRetain();
          }

          sub_1A3E55310();

          return;
        }
      }

      else
      {
        if (v18 == sub_1A52403B4())
        {
          swift_beginAccess();
          v29 = 0;
        }

        else
        {
          swift_beginAccess();
          v29 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            return;
          }
        }

        *v20 = v29;
        sub_1A5241104();
        sub_1A3E52220(v6);
        LOBYTE(v75[0]) = *(v1 + 32);
        LOBYTE(v74) = 1;
        sub_1A3E5617C();
        if (sub_1A524C594())
        {
          *(v1 + 32) = 1;
        }

        else
        {
          v37 = swift_getKeyPath();
          v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
          v69[-2] = v1;
          LOBYTE(v69[-1]) = 1;
          (*(*v1 + 600))(v38);
        }
      }

LABEL_29:
      v40 = v71;
      v39 = v72;
      sub_1A3E55244(0, v71, v72);
      v42 = v41;
      sub_1A3E55244(1, v40, v39);
      v44 = v43;
      swift_unknownObjectRetain();

      v45 = sub_1A5246F04();
      v46 = sub_1A524D234();
      swift_unknownObjectRelease();

      v47 = os_log_type_enabled(v45, v46);
      v69[1] = 0;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v48 = 136315394;
        v74 = v70();
        sub_1A3E565EC(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset, sub_1A3C5D0E8);
        v49 = sub_1A524C714();
        sub_1A3C2EF94(v49, v50, v75);
      }

      swift_unknownObjectRetain();

      v51 = sub_1A5246F04();
      v52 = sub_1A524D234();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v53 = 136315394;
        v74 = (*(*v1 + 264))();
        sub_1A3E565EC(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset, sub_1A3C5D0E8);
        v54 = sub_1A524C714();
        sub_1A3C2EF94(v54, v55, v75);
      }

      v56 = v70();
      v57 = v42;
      v58 = v56;
      if (v42 == v56)
      {

        v59 = swift_unknownObjectRelease();
        goto LABEL_43;
      }

      if (v42 && v56)
      {
        v60 = [v57 isContentEqualTo:v58];
        if (!v60)
        {
          v60 = [v58 isContentEqualTo:v57];
        }

        v59 = swift_unknownObjectRelease();
        if (v60 == 2)
        {
LABEL_43:
          v63 = (*(*v1 + 264))(v59);
          v64 = v44;
          v65 = v63;
          if (v44 == v63)
          {

            swift_unknownObjectRelease();
          }

          else
          {
            if (v44 && v63)
            {
              v66 = [v64 isContentEqualTo:v65];
              if (!v66)
              {
                v66 = [v65 isContentEqualTo:v64];
              }

              swift_unknownObjectRelease();
              if (v66 == 2)
              {
                goto LABEL_53;
              }
            }

            else
            {

              swift_unknownObjectRelease();
            }

            v67 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v67);
            v69[-2] = v1;
            v69[-1] = v44;
            v68 = *(*v1 + 600);
            swift_unknownObjectRetain();
            v68(v67, sub_1A3E5693C, &v69[-4], MEMORY[0x1E69E7CA8] + 8);

            swift_unknownObjectRelease();
          }

LABEL_53:
          sub_1A3E55310();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v61 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v61);
      v69[-2] = v1;
      v69[-1] = v42;
      v62 = *(*v1 + 600);
      swift_unknownObjectRetain();
      v62(v61, sub_1A3E56924, &v69[-4], MEMORY[0x1E69E7CA8] + 8);

      v59 = swift_unknownObjectRelease();
      goto LABEL_43;
    }
  }
}

void sub_1A3E55244(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (v6 != sub_1A52403B4())
  {
    v7 = [a3 count];
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = __OFADD__(v8, a1);
    v10 = v8 + a1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7;
      }

      if (v10 % v11 < v7)
      {
        v12 = [a3 objectAtIndexedSubscript_];
      }
    }
  }
}

double sub_1A3E55310()
{
  v0 = sub_1A524BEE4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BF64();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BFC4();
  v18 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v13 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3E56648;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3E567C0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C5615C(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908790](v12, v5, v2, v15);
  _Block_release(v15);

  (*(v21 + 8))(v2, v0);
  (*(v19 + 8))(v5, v20);
  v17(v12, v18);

  return result;
}

uint64_t sub_1A3E556F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1A3E565A8(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v16[0]);
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v15 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v15);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3E558AC()
{
  swift_getKeyPath();
  (*(*v0 + 592))();

  v1 = v0[9];
  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v2 = v1;
    v3 = sub_1A524DC44();
    v4 = v3;
    v5 = sub_1A5246F04();
    v6 = sub_1A524D234();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v7 = 136315138;
      sub_1A3E565EC(0, &unk_1EB12D0C0, &qword_1EB126848, 0x1E6978848, sub_1A3C52C70);
      v8 = v4;
      v9 = sub_1A524C714();
      sub_1A3C2EF94(v9, v10, &v11);
    }

    if (v3)
    {
      sub_1A3E5301C([v4 fetchResultAfterChanges]);
    }
  }
}

id sub_1A3E55AC0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel____lazy_storage___proxy;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel____lazy_storage___proxy);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel____lazy_storage___proxy);
  }

  else
  {
    v6 = type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel.Proxy(a1, a2);
    v7 = objc_allocWithZone(v6);
    swift_weakInit();
    swift_weakAssign();
    v12.receiver = v7;
    v12.super_class = v6;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_1A3E55C34(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel.Proxy(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PhotosPreviewHeaderSlideshowContentViewModel.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel__lastChangeDate;
  v2 = sub_1A5241144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel_logger;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12PhotosUICore44PhotosPreviewHeaderSlideshowContentViewModel___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t PhotosPreviewHeaderSlideshowContentViewModel.__deallocating_deinit()
{
  PhotosPreviewHeaderSlideshowContentViewModel.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1A3E55F80(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 376))();
  return sub_1A3D3D728;
}

uint64_t sub_1A3E56094@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

unint64_t sub_1A3E560D4()
{
  result = qword_1EB134150;
  if (!qword_1EB134150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134150);
  }

  return result;
}

void sub_1A3E56128()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 33);
  *(v1 + 33) = *(v0 + 24);
  sub_1A3E529F8(v2);
}

unint64_t sub_1A3E5617C()
{
  result = qword_1EB125E40;
  if (!qword_1EB125E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125E40);
  }

  return result;
}

uint64_t type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel(uint64_t a1)
{
  result = qword_1EB170E90;
  if (!qword_1EB170E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3E56244(uint64_t a1)
{
  result = sub_1A3E567C0(&qword_1EB125E20, type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel, &protocol conformance descriptor for PhotosPreviewHeaderSlideshowContentViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3E562B0(uint64_t a1)
{
  result = sub_1A5241144();
  if (v2 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v3 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1A3E56540(BOOL *a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A3E558AC();
  }

  *a1 = Strong == 0;
}

void *sub_1A3E565A8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1A3E565EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_1A3E566B8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3E5451C();
  }

  return result;
}

uint64_t sub_1A3E5672C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A3E537D0();
}

uint64_t sub_1A3E567C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3E56834()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  v4 = v1;

  sub_1A3E5451C();
}

uint64_t sub_1A3E5687C()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3E568B8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void static OneUpSharePlayTileTransform.identity(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = xmmword_1A5301AB0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0x3FE0000000000000;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t OneUpSharePlayTileTransform.init(assetUUID:scale:normalizedTranslation:overscroll:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  return result;
}

void OneUpSharePlayTileTransform.assetUUID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

unint64_t sub_1A3E56C50()
{
  v1 = 0x4955557465737361;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x6F7263737265766FLL;
  }

  if (*v0)
  {
    v1 = 0x656C616373;
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

uint64_t sub_1A3E56CD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A3E5837C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A3E56CFC(uint64_t a1)
{
  v2 = sub_1A3E57C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3E56D38(uint64_t a1)
{
  v2 = sub_1A3E57C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayTileTransform.encode(to:)(void *a1)
{
  sub_1A3E57DF4(0, &qword_1EB12D130, sub_1A3E57C0C, &type metadata for OneUpSharePlayTileTransform.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3E57C0C();
  sub_1A524ED34();
  LOBYTE(v16) = 0;
  v13 = v15;
  sub_1A524E954();
  if (!v13)
  {
    v16 = v9;
    v18 = 1;
    sub_1A3E57C60();
    sub_1A524E9D4();
    v16 = v8;
    v17 = v11;
    v18 = 2;
    type metadata accessor for CGPoint(0);
    sub_1A3E57D08(&qword_1EB12D140, MEMORY[0x1E695EFA8]);
    sub_1A524E9D4();
    v16 = v10;
    v17 = v12;
    v18 = 3;
    sub_1A524E9D4();
  }

  return (*(v5 + 8))(v7, v4);
}

void OneUpSharePlayTileTransform.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1A3E57DF4(0, &qword_1EB12D148, sub_1A3E57C0C, &type metadata for OneUpSharePlayTileTransform.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3E57C0C();
  sub_1A524ED14();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v9 = sub_1A524E864();
    v11 = v10;
    v16 = v9;
    v19 = 1;
    sub_1A3E57CB4();
    sub_1A524E8E4();
    v12 = v18;
    type metadata accessor for CGPoint(0);
    v19 = 2;
    sub_1A3E57D08(&qword_1EB12D150, MEMORY[0x1E695EFC0]);
    sub_1A524E8E4();
    v13 = v18;
    v19 = 3;
    sub_1A524E8E4();
    (*(v6 + 8))(v8, v5);
    v14 = v18;
    v15 = v17;
    *v17 = v16;
    v15[1] = v11;
    v15[2] = v12;
    *(v15 + 3) = v13;
    *(v15 + 5) = v14;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t *sub_1A3E57344()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EB8F0) = *result;
  HIWORD(dword_1EB1EB8F0) = v1;
  dword_1EB1EB8F4 = v2;
  return result;
}

uint64_t *sub_1A3E5737C()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EB8F8) = *result;
  HIWORD(dword_1EB1EB8F8) = v1;
  dword_1EB1EB8FC = v2;
  return result;
}

uint64_t *sub_1A3E573B4()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EB900) = *result;
  HIWORD(dword_1EB1EB900) = v1;
  dword_1EB1EB904 = v2;
  return result;
}

double sub_1A3E573EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

void sub_1A3E5742C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E617254656C6974 && a2 == 0xED00006D726F6673)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A3E574BC(uint64_t a1)
{
  v2 = sub_1A3E57D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3E574F8(uint64_t a1)
{
  v2 = sub_1A3E57D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A3E57534(void *a1)
{
  sub_1A3E57DF4(0, &qword_1EB12D158, sub_1A3E57D4C, &type metadata for OneUpSharePlayTileTransformMessagePayload.CodingKeys, MEMORY[0x1E69E6F58]);
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3E57D4C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E576EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1A3E57DF4(0, &qword_1EB12D168, sub_1A3E57D4C, &type metadata for OneUpSharePlayTileTransformMessagePayload.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3E57D4C();
  sub_1A524ED14();
  if (!v2)
  {
    v9 = v16;
    sub_1A3E57E5C();
    sub_1A524E8E4();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v12 = v14[1];
    v11 = v14[2];
    *v9 = v14[0];
    *(v9 + 16) = v12;
    *(v9 + 32) = v11;
    *(v9 + 48) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_1A3E578BC(_DWORD *a1@<X8>)
{
  if (qword_1EB199230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = dword_1EB1EB8F4;
  *a1 = dword_1EB1EB8F0;
  a1[1] = v2;
}

uint64_t sub_1A3E57938@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB199238 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EB8FC;
  *a1 = dword_1EB1EB8F8;
  a1[1] = v1;
  return result;
}

void sub_1A3E579A0(_DWORD *a1@<X8>)
{
  if (qword_1EB199240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = dword_1EB1EB904;
  *a1 = dword_1EB1EB900;
  a1[1] = v2;
}

void sub_1A3E57A84(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[6];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[6];
  *&v13[0] = *a1;
  *&v13[1] = v2;
  v7 = *(a1 + 2);
  v14 = *(a1 + 1);
  v15 = v7;
  v16 = v3;
  v9[0] = v4;
  v9[1] = v5;
  v8 = *(a2 + 2);
  v10 = *(a2 + 1);
  v11 = v8;
  v12 = v6;
  _s12PhotosUICore27OneUpSharePlayTileTransformV2eeoiySbAC_ACtFZ_0(v13, v9);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

BOOL _s12PhotosUICore27OneUpSharePlayTileTransformV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (!v3)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    v18 = v5 == v11 && v4 == v10;
    if (!v18 || v7 != v13)
    {
      return result;
    }

    return v8 == v14 && v6 == v12;
  }

  if (!v9)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v9)
  {
    if (v5 != v11 || v4 != v10 || v7 != v13)
    {
      return 0;
    }

    return v8 == v14 && v6 == v12;
  }

  v23 = a1[5];
  v24 = a1[6];
  v20 = sub_1A524EAB4();
  result = 0;
  if (v20)
  {
    v21 = v5 == v11 && v4 == v10;
    v22 = v21 && v7 == v13;
    v6 = v23;
    v8 = v24;
    if (v22)
    {
      return v8 == v14 && v6 == v12;
    }
  }

  return result;
}

unint64_t sub_1A3E57C0C()
{
  result = qword_1EB199248;
  if (!qword_1EB199248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB199248);
  }

  return result;
}

unint64_t sub_1A3E57C60()
{
  result = qword_1EB12D138;
  if (!qword_1EB12D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D138);
  }

  return result;
}

unint64_t sub_1A3E57CB4()
{
  result = qword_1EB139CC0;
  if (!qword_1EB139CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139CC0);
  }

  return result;
}

uint64_t sub_1A3E57D08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E57D4C()
{
  result = qword_1EB199250[0];
  if (!qword_1EB199250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB199250);
  }

  return result;
}

unint64_t sub_1A3E57DA0()
{
  result = qword_1EB12D160;
  if (!qword_1EB12D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D160);
  }

  return result;
}

void sub_1A3E57DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A3E57E5C()
{
  result = qword_1EB12D170;
  if (!qword_1EB12D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D170);
  }

  return result;
}

unint64_t sub_1A3E57EB4()
{
  result = qword_1EB1408A0;
  if (!qword_1EB1408A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408A0);
  }

  return result;
}

unint64_t sub_1A3E57F08(void *a1)
{
  a1[1] = sub_1A3E57F40();
  a1[2] = sub_1A3E57F94();
  result = sub_1A3E57FE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1A3E57F40()
{
  result = qword_1EB12D178;
  if (!qword_1EB12D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D178);
  }

  return result;
}

unint64_t sub_1A3E57F94()
{
  result = qword_1EB12D180;
  if (!qword_1EB12D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D180);
  }

  return result;
}

unint64_t sub_1A3E57FE8()
{
  result = qword_1EB12D188;
  if (!qword_1EB12D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D188);
  }

  return result;
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

uint64_t sub_1A3E58080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1A3E580DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A3E58170()
{
  result = qword_1EB1997E0[0];
  if (!qword_1EB1997E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1997E0);
  }

  return result;
}

unint64_t sub_1A3E581C8()
{
  result = qword_1EB1999F0[0];
  if (!qword_1EB1999F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1999F0);
  }

  return result;
}

unint64_t sub_1A3E58220()
{
  result = qword_1EB199B00;
  if (!qword_1EB199B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB199B00);
  }

  return result;
}

unint64_t sub_1A3E58278()
{
  result = qword_1EB199B08[0];
  if (!qword_1EB199B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB199B08);
  }

  return result;
}

unint64_t sub_1A3E582D0()
{
  result = qword_1EB199B90[0];
  if (!qword_1EB199B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB199B90);
  }

  return result;
}

unint64_t sub_1A3E58328()
{
  result = qword_1EB165FB8[0];
  if (!qword_1EB165FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB165FB8);
  }

  return result;
}

uint64_t sub_1A3E5837C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955557465737361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53B99A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7263737265766FLL && a2 == 0xEA00000000006C6CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

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

void sub_1A3E584FC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B608);
  __swift_project_value_buffer(v0, qword_1EB15B608);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double SearchResultItemListManager.itemList.getter()
{
  swift_beginAccess();

  return result;
}

double SearchResultItemListManager.itemList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_1A3E592AC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3E59340(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, a3, a4);
    v9 = type metadata accessor for PhotoKitItemListManager(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3E59398(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E5942C(double a1)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = sub_1A5243994();
  if ((*(*(v5 - 8) + 48))(v1 + v4, 1, v5) == 1)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8))) + 0x2A8))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3E59564(uint64_t a1, void *a2)
{
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E5C7F4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = *(v5 + 48);
  if (v18(a1, 1, v4, v15) == 1)
  {
    return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2B8))();
  }

  (*(v5 + 104))(v17, *MEMORY[0x1E69C2700], v4);
  v20 = (*(v5 + 56))(v17, 0, 1, v4);
  v21 = *(v8 + 48);
  sub_1A3E592AC(a1, v10, v20);
  sub_1A3E592AC(v17, &v10[v21], v22);
  if ((v18)(v10, 1, v4) != 1)
  {
    sub_1A3E592AC(v10, v13, v23);
    if ((v18)(&v10[v21], 1, v4) != 1)
    {
      v27 = &v10[v21];
      v28 = v34;
      (*(v5 + 32))(v34, v27, v4);
      sub_1A3E5BF18(&qword_1EB12ECB0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2728]);
      v29 = sub_1A524C594();
      v30 = *(v5 + 8);
      v31 = v30(v28, v4);
      sub_1A3E5A8B4(v17, v31);
      v32 = v30(v13, v4);
      v25 = sub_1A3E5A8B4(v10, v32);
      if (v29)
      {
        return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2B0))(v25);
      }

      return 0;
    }

    sub_1A3E5A8B4(v17, v26);
    (*(v5 + 8))(v13, v4);
LABEL_8:
    sub_1A3E5C888(v10);
    return 0;
  }

  sub_1A3E5A8B4(v17, v23);
  if ((v18)(&v10[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  v25 = sub_1A3E5A8B4(v10, v24);
  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2B0))(v25);
}

uint64_t sub_1A3E59998(uint64_t a1, void *a2, double a3)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = *(v9 + 48);
  if (v16(a1, 1, v8, v13) == 1)
  {
    return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2A0))();
  }

  sub_1A3E592AC(a1, v7, v17);
  if ((v16)(v7, 1, v8) == 1)
  {
    sub_1A3E5A8B4(v7, v19);
    return 0;
  }

  (*(v9 + 32))(v15, v7, v8);
  (*(v9 + 104))(v11, *MEMORY[0x1E69C2700], v8);
  sub_1A3E5BF18(&qword_1EB12ECB0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2728]);
  v20 = sub_1A524C594();
  v21 = *(v9 + 8);
  v21(v11, v8);
  if (v20)
  {
    v21(v15, v8);
    return 0;
  }

  v22 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x298))(v15);
  v21(v15, v8);
  return v22;
}

uint64_t objectdestroyTm_4(double a1)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = sub_1A5243994();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v1 + v3, 1, v5))
  {
    (*(v6 + 8))(v1 + v3, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3E59E24(double a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v3 + v6, v7);
}

void sub_1A3E59F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchResultItem();
    v7 = sub_1A3E5BF18(&qword_1EB12A4C0, type metadata accessor for SearchResultItem, &protocol conformance descriptor for SearchResultItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1A3E59FD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*(**(Strong + 24) + 272))();
    v4 = (*(**(v2 + 40) + 272))(v3);
    v5 = *(v2 + 32);
    if (v5)
    {
      (*(*v5 + 272))(v4);
    }
  }

  return result;
}

uint64_t sub_1A3E5A8B4(uint64_t a1, double a2)
{
  sub_1A3E5C708(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A3E5B0AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A3C4D548(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  *(v3 + 56) = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  *(v3 + 32) = v2;
  sub_1A524C674();
  v4 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v5 = v2;
  v6 = sub_1A524CA14();

  v7 = sub_1A524C634();

  v8 = [v4 initWithObjects:v6 photoLibrary:v1 fetchType:v7 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v8;
}

double sub_1A3E5B1D4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3E5A0C0();
  }

  return result;
}

void sub_1A3E5BCAC(uint64_t a1)
{
  v2 = a1;
  v9 = MEMORY[0x1E69E7CC0];
  v3 = (*v1 + 280);
  v4 = *v3;
  (*v3)();
  v5 = PhotoKitItemListImplementation.numberOfItems.getter();

  if (v5 < 0)
  {
    __break(1u);
  }

  else if (v5)
  {
    type metadata accessor for SearchResultItem();
    v6 = 0;
    do
    {
      v4();
      PhotoKitItemListImplementation.item(at:)(v6);

      sub_1A44B6AA8(v7, v2);

      MEMORY[0x1A5907D70](v8);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      ++v6;
      sub_1A524CAE4();
    }

    while (v5 != v6);
  }
}

void SearchResultItemListManager.observeChanges(using:)(uint64_t a1, uint64_t a2)
{
  sub_1A3E59F14(0);
  sub_1A3E5BF18(&qword_1EB12D198, sub_1A3E59F14, off_1E7721070);

  sub_1A5245C54();
}

uint64_t sub_1A3E5BF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SearchResultItemListManager.deinit()
{

  sub_1A3E5A8B4(v0 + OBJC_IVAR____TtC12PhotosUICore27SearchResultItemListManager_itemType, v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SearchResultItemListManager.__deallocating_deinit()
{
  SearchResultItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchResultItemListManager(uint64_t a1)
{
  result = qword_1EB180000;
  if (!qword_1EB180000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3E5C1F0(uint64_t a1, uint64_t a2)
{
  sub_1A3E59F14(0);
  sub_1A3E5BF18(&qword_1EB12D198, sub_1A3E59F14, off_1E7721070);

  sub_1A5245C54();
}

void sub_1A3E5C2C4(uint64_t a1, double a2)
{
  sub_1A3E5C708(319, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A3E5C3F4(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A3E5C56C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t (*sub_1A3E5C4E4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1A3E5C564;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E5C56C(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
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
          sub_1A3E5C708(0, &qword_1EB12D1B8, type metadata accessor for SearchResultItem, MEMORY[0x1E69E62F8]);
          sub_1A3E5C76C();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3E5C4E4(v14, i, a3);
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
        type metadata accessor for SearchResultItem();
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

void sub_1A3E5C708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3E5C76C()
{
  result = qword_1EB12D1C0;
  if (!qword_1EB12D1C0)
  {
    sub_1A3E5C708(255, &qword_1EB12D1B8, type metadata accessor for SearchResultItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D1C0);
  }

  return result;
}

void sub_1A3E5C7F4(uint64_t a1)
{
  if (!qword_1EB12D1C8)
  {
    sub_1A3E5C708(255, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D1C8);
    }
  }
}

uint64_t sub_1A3E5C888(uint64_t a1)
{
  sub_1A3E5C7F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *PhotosCollectionPreviewPlayer.Configuration.init(options:playbackRate:resolutionMultiplier:blurRadius:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

double sub_1A3E5C9A8()
{
  *&result = 16;
  xmmword_1EB172CE0 = xmmword_1A5302070;
  byte_1EB172CF0 = 1;
  qword_1EB172CF8 = 0;
  byte_1EB172D00 = 1;
  qword_1EB172D08 = 0;
  byte_1EB172D10 = 1;
  return result;
}

__int128 *sub_1A3E5C9D8()
{
  if (qword_1EB172CD0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB172CE0;
}

double static PhotosCollectionPreviewPlayer.Configuration.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB172CD0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = byte_1EB172CF0;
  v2 = qword_1EB172CF8;
  v3 = byte_1EB172D00;
  v4 = qword_1EB172D08;
  v5 = byte_1EB172D10;
  result = *&xmmword_1EB172CE0;
  *a1 = xmmword_1EB172CE0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t PhotosCollectionPreviewPlayer.Configuration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x1A590A010](*v0);
  if (v2 == 1)
  {
    sub_1A524ECB4();
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524ECB4();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1A590A040](v10);
    if (!v4)
    {
LABEL_3:
      sub_1A524ECB4();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1A590A040](v7);
      if (!v6)
      {
        goto LABEL_7;
      }

      return sub_1A524ECB4();
    }
  }

  sub_1A524ECB4();
  if (v6)
  {
    return sub_1A524ECB4();
  }

LABEL_7:
  sub_1A524ECB4();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1A590A040](v8);
}

uint64_t PhotosCollectionPreviewPlayer.Configuration.hashValue.getter()
{
  sub_1A524EC94();
  PhotosCollectionPreviewPlayer.Configuration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A3E5CBF8()
{
  sub_1A524EC94();
  PhotosCollectionPreviewPlayer.Configuration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A3E5CC70(uint64_t a1)
{
  sub_1A524EC94();
  PhotosCollectionPreviewPlayer.Configuration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t PhotosCollectionPreviewPlayer.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t (*sub_1A3E5CDD4(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1A3E5CE00;
}

double sub_1A3E5CE00(_BYTE *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v3[16] = a1[8];
  v5 = *(*v3 + 184);
  v6 = v4 ^ v5();
  if (a2)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    if ((v5() & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    if ((v5() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  swift_getKeyPath();
  (*(*v3 + 496))();

LABEL_8:
  v9 = sub_1A3E61CA8(v8);
  if (((v5)(v9) & 1) == 0)
  {
    return sub_1A3E5F6E8();
  }

  return result;
}

uint64_t sub_1A3E5CF08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E5CFA0()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  return v0[16];
}

void sub_1A3E5D004(char a1)
{
  v2 = v1[16];
  if (v2 == (a1 & 1))
  {
    v1[16] = a1 & 1;
    v5 = *(*v1 + 184);
    if (v2 != (v5() & 1))
    {
      if (v5())
      {
        swift_getKeyPath();
        (*(*v1 + 496))();
      }

      else
      {
        v6 = 0;
      }

      v7 = sub_1A3E61CA8(v6);
      if (((v5)(v7) & 1) == 0)
      {

        sub_1A3E5F6E8();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 504))(v4);
  }
}

uint64_t (*sub_1A3E5D1C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E65648(&unk_1EB12AAD8, type metadata accessor for PhotosCollectionPreviewPlayer, &protocol conformance descriptor for PhotosCollectionPreviewPlayer);
  sub_1A52415F4();

  v4[7] = sub_1A3E5CDD4(v4);
  return sub_1A3E5D310;
}

void sub_1A3E5D310(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t PhotosCollectionPreviewPlayer.__allocating_init(collection:configuration:priority:existingPlayer:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v8 = swift_allocObject();
  PhotosCollectionPreviewPlayer.init(collection:configuration:priority:existingPlayer:)(a1, a2, a3, a4);
  return v8;
}

char *PhotosCollectionPreviewPlayer.init(collection:configuration:priority:existingPlayer:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v5 = v4;
  v10 = *v5;
  v63 = sub_1A524BEE4();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *a3;
  v17 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  v18 = *MEMORY[0x1E69C1EE0];
  v19 = sub_1A52425F4();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = &v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer] = 0;
  v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer] = 0;
  v21 = &v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__effectivePlayer] = 0;
  sub_1A5241604();
  v5[17] = v16;
  *(v5 + 3) = v14;
  v5[32] = v15;
  v5[16] = 1;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  v23 = [ObjCClassFromMetadata sharedInstance];
  v24 = v23;
  if (v16 == 1 && [v23 enablePreviewCaching])
  {
    v61[0] = v24;
    if (qword_1EB190098 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = qword_1EB1900A0;
    if (*(qword_1EB1900A0 + 16))
    {
      v26 = sub_1A3E638A8(v14, v15);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 24 * v26 + 16);
        swift_endAccess();
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        v29 = qword_1EB1769E8;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = sub_1A5246F24();
        __swift_project_value_buffer(v30, qword_1EB1769F0);

        v31 = sub_1A5246F04();
        v32 = sub_1A524D234();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v68 = v28;
          aBlock = v34;
          *v33 = 136315138;
          type metadata accessor for StoryAsyncPlayer(0);
          sub_1A3E65648(&qword_1EB12D1D0, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);
          v35 = sub_1A524EA44();
          sub_1A3C2EF94(v35, v36, &aBlock);
        }

        sub_1A3E5E038(v37);
        swift_unknownObjectRelease();

        goto LABEL_24;
      }
    }

    swift_endAccess();
    v38 = 1;
    v24 = v61[0];
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v38 = 0;
    if (!a4)
    {
LABEL_17:
      v41 = v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer];
      v61[1] = a4;
      if (v41 == 1)
      {
        v5[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer] = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v61[0] = v61;
        v43.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
        v61[-2] = v5;
        LOBYTE(v61[-1]) = 1;
        (*(*v5 + 504))(v43);
      }

      if (qword_1EB1768C8 != -1)
      {
        swift_once();
      }

      v44 = swift_allocObject();
      swift_weakInit();
      v45 = swift_allocObject();
      v46 = *(a2 + 16);
      *(v45 + 40) = *a2;
      *(v45 + 16) = v44;
      *(v45 + 24) = v14;
      *(v45 + 32) = v15;
      *(v45 + 56) = v46;
      *(v45 + 72) = *(a2 + 32);
      *(v45 + 88) = *(a2 + 48);
      *(v45 + 96) = v24;
      *(v45 + 104) = v38;
      *(v45 + 112) = v10;
      v73 = sub_1A3E64208;
      v74 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_1A3C2E0D0;
      v72 = &block_descriptor_28;
      v47 = _Block_copy(&aBlock);

      v48 = v24;
      v49 = v62;
      sub_1A524BF14();
      v68 = MEMORY[0x1E69E7CC0];
      sub_1A3E65648(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v50 = MEMORY[0x1E69E7F60];
      sub_1A3C2A108(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C9ABC0(&qword_1EB12B1B0, &qword_1EB12B1C0, v50);
      v51 = v64;
      v52 = v63;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v49, v51, v47);
      _Block_release(v47);

      (*(v67 + 8))(v51, v52);
      (*(v65 + 8))(v49, v66);
LABEL_23:

LABEL_24:

      return v5;
    }
  }

  if (![v24 enablePreviewSharing])
  {

    goto LABEL_17;
  }

  v61[0] = v24;
  swift_unknownObjectRelease();
  v39 = swift_getKeyPath();
  (*(*a4 + 496))(v39);

  v40 = *&a4[OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer];
  if (!v40)
  {
    if (qword_1EB1768C8 != -1)
    {
      swift_once();
    }

    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = a4;
    v73 = sub_1A3E64224;
    v74 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1A3C2E0D0;
    v72 = &block_descriptor_15;
    v56 = _Block_copy(&aBlock);

    v57 = v62;
    sub_1A524BF14();
    v68 = MEMORY[0x1E69E7CC0];
    sub_1A3E65648(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v58 = MEMORY[0x1E69E7F60];
    sub_1A3C2A108(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9ABC0(&qword_1EB12B1B0, &qword_1EB12B1C0, v58);
    v59 = v64;
    v60 = v63;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v57, v59, v56);
    _Block_release(v56);

    (*(v67 + 8))(v59, v60);
    (*(v65 + 8))(v57, v66);
    goto LABEL_23;
  }

  swift_retain_n();

  sub_1A3E5E038(v40);

  return v5;
}

void sub_1A3E5DF48(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 504))(v3);
  }
}

uint64_t sub_1A3E5E074(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v20 = sub_1A524D474();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a2;
    aBlock[4] = sub_1A3E6546C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_100;
    v15 = _Block_copy(aBlock);
    v19[1] = v12;
    v16 = v15;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3E65648(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v17 = MEMORY[0x1E69E7F60];
    sub_1A3C2A108(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    v19[0] = v7;
    sub_1A3C9ABC0(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
    sub_1A524E224();
    v18 = v20;
    MEMORY[0x1A5908800](0, v10, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v19[0]);
  }

  return result;
}

uint64_t sub_1A3E5E3D4(uint64_t a1, uint64_t a2, char a3, double *a4, void *a5, int a6, uint64_t a7)
{
  v44 = a7;
  v43 = a6;
  v42 = a5;
  v10 = sub_1A524BEE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v36[1] = result;
  v37 = v13;
  v38 = v15;
  v39 = v14;
  v40 = v11;
  v41 = v10;
  sub_1A3C52C70(0, &qword_1EB1269B0, off_1E771FD48);
  aBlock = a2;
  LOBYTE(v46) = a3;
  swift_unknownObjectRetain();
  v20 = PXStoryConfiguration.init(previewFor:)(&aBlock, v19);
  v21 = *a4;
  v22 = a4[1];
  v23 = *(a4 + 16);
  v24 = a4[5];
  v25 = *(a4 + 48);
  if ((*a4 & 2) != 0)
  {
    PXStoryConfiguration.allowedTransitions.setter(&unk_1F16E4020);
    if (v23)
    {
LABEL_4:
      if (v25)
      {
        goto LABEL_10;
      }

LABEL_8:
      if (v24 > 0.0)
      {
        [v20 setOverlayBlurRadius_];
      }

      goto LABEL_10;
    }
  }

  else if (a4[2])
  {
    goto LABEL_4;
  }

  [v20 setVideoPlaybackRate_];
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v21 & 0x20) != 0)
  {
    [v20 setOptions_];
  }

  v26 = objc_opt_self();
  [v42 simulatedPreviewPlayerDelay];
  [v26 sleepForTimeInterval_];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v27 = sub_1A524D474();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v20;
  v30 = *(a4 + 1);
  *(v29 + 32) = *a4;
  *(v29 + 48) = v30;
  *(v29 + 64) = *(a4 + 2);
  *(v29 + 80) = *(a4 + 48);
  *(v29 + 81) = v43 & 1;
  *(v29 + 88) = a2;
  *(v29 + 96) = a3;
  *(v29 + 104) = v44;
  v49 = sub_1A3E65524;
  v50 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1A3C2E0D0;
  v48 = &block_descriptor_107;
  v31 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v32 = v20;

  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A3E65648(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v33 = MEMORY[0x1E69E7F60];
  sub_1A3C2A108(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9ABC0(&qword_1EB12B1B0, &qword_1EB12B1C0, v33);
  v34 = v37;
  v35 = v41;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v17, v34, v31);
  _Block_release(v31);

  (*(v40 + 8))(v34, v35);
  return (*(v38 + 8))(v17, v39);
}

void sub_1A3E5E8A0(uint64_t a1, void *a2, double *a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for StoryAsyncPlayer(0);
    v8 = (*a3 >> 4) & 1;
    v9 = a2;
    StoryAsyncPlayer.Options.init(deferReferenceSizeChanges:)(v8);
    LOBYTE(v10) = v11;
    StoryAsyncPlayer.__allocating_init(configuration:options:)(v9, &v10);
  }
}

uint64_t PhotosCollectionPreviewPlayer.deinit()
{
  sub_1A3E5F6E8();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  v2 = sub_1A52425F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished + 8));

  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange), *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange + 8));

  v3 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PhotosCollectionPreviewPlayer.__deallocating_deinit()
{
  sub_1A3E5F6E8();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  v2 = sub_1A52425F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished + 8));

  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange), *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange + 8));

  v3 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3E5F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3E5F050, 0, 0);
}

uint64_t sub_1A3E5F050()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  sub_1A3C2A108(0, &qword_1EB12A480, type metadata accessor for StoryAsyncPlayer, MEMORY[0x1E69E6720]);
  *v1 = v0;
  v1[1] = sub_1A3E5F160;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6C50646564616F6CLL, 0xEC00000072657961, sub_1A3E6422C, v3, v2);
}

uint64_t sub_1A3E5F160()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3E5F25C, 0, 0);
}

uint64_t sub_1A3E5F25C()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v9 = (*(*v1 + 328) + **(*v1 + 328));
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1A3E5F3F4;
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];

    return v9(v5, v6, v3, v4);
  }

  else
  {
    (*(*(v0[6] - 8) + 56))(v0[3], 1, 1);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1A3E5F3F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3E5F50C, 0, 0);
}

uint64_t sub_1A3E5F50C()
{
  (*(*(v0[6] - 8) + 56))(v0[3], 0, 1);
  v1 = v0[1];

  return v1();
}

void sub_1A3E5F5A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 496))();

  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);
  if (v5)
  {
    v6 = *(*v5 + 336);

    v6(a1, a2);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

double sub_1A3E5F6E8()
{
  v1 = v0;
  sub_1A3C2A108(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-1] - v3;
  if (qword_1EB190098 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  swift_beginAccess();
  v7 = qword_1EB1900A0;
  if (*(qword_1EB1900A0 + 16) && (v8 = sub_1A3E638A8(v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 24 * v8 + 16);
    swift_endAccess();
    KeyPath = swift_getKeyPath();
    v12 = *(*v1 + 496);
    swift_unknownObjectRetain();
    swift_retain_n();
    v12(KeyPath);

    v13 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);
    if (v13)
    {

      if (v10 == v13)
      {
        v15 = qword_1EB1769E8;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_1A5246F24();
        __swift_project_value_buffer(v16, qword_1EB1769F0);

        v17 = sub_1A5246F04();
        v18 = sub_1A524D234();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v25 = v10;
          v26[0] = v20;
          *v19 = 136315138;
          type metadata accessor for StoryAsyncPlayer(0);
          sub_1A3E65648(&qword_1EB12D1D0, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);
          v21 = sub_1A524EA44();
          sub_1A3C2EF94(v21, v22, v26);
        }

        v23 = sub_1A524CCB4();
        (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = v10;
        sub_1A3D4D930(0, 0, v4, &unk_1A53026D8, v24);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1A3E5FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*a4 + 328) + **(*a4 + 328));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A3D60150;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return v9(a1, sub_1A3E5FC50, 0, v7);
}

void sub_1A3E5FC50(void *a1)
{
  v3[4] = sub_1A3E5FCF8;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D59380;
  v3[3] = &block_descriptor_129;
  v2 = _Block_copy(v3);
  [a1 performChanges_];
  _Block_release(v2);
}

uint64_t sub_1A3E5FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52425F4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 256))(v7);
}

double sub_1A3E5FE48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_1A3E65648(&qword_1EB129258, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F10]);
  v9 = sub_1A524C594();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    if (qword_1EB1769E8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A5246F24();
    __swift_project_value_buffer(v12, qword_1EB1769F0);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D234();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20[1] = v14;
      v16 = v15;
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 136315394;
      v8(v6, v2 + v7, v3);
      sub_1A3E65648(&qword_1EB12D1F8, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F20]);
      v17 = sub_1A524EA44();
      v19 = v18;
      v10(v6, v3);
      sub_1A3C2EF94(v17, v19, &v22);
    }

    swift_getKeyPath();
    (*(*v2 + 496))();

    if (*(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__effectivePlayer))
    {

      sub_1A3E61E40();
    }
  }

  return result;
}

uint64_t sub_1A3E60244@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v4 = sub_1A52425F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A3E602CC(uint64_t a1)
{
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  v8 = sub_1A3E5FE48(v6);
  v9 = *(v4 + 8);
  v9(a1, v3, v8);
  return (v9)(v6, v3);
}

void (*sub_1A3E60428(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1A52425F4();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_desiredInlinePlayState;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1A3E6059C;
}

void sub_1A3E6059C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    v11 = sub_1A3E5FE48(v6);
    v12 = *(v9 + 8);
    v12(v6, v8, v11);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_1A3E5FE48(v7);
    v12 = *(v9 + 8);
  }

  (v12)(v7, v8);
  (v12)(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t sub_1A3E60720@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 272))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3E607B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 280);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A3E60878()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A3E608D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onPlaybackFinished);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A3E609B4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  sub_1A3C2A108(0, &qword_1EB12A480, type metadata accessor for StoryAsyncPlayer, MEMORY[0x1E69E6720]);
  *v1 = v0;
  v1[1] = sub_1A3E60AC4;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6C50646564616F6CLL, 0xEC00000072657961, sub_1A3E658B4, v3, v2);
}

uint64_t sub_1A3E60AC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3E60BC0, 0, 0);
}

uint64_t sub_1A3E60BC0()
{
  result = *(v0 + 16);
  if (result)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

double sub_1A3E60BE0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v15 = sub_1A524BEE4();
  v19 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E64E78(0);
  v14 = *(v6 - 8);
  v7 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3C2A108(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  KeyPath = swift_getKeyPath();
  (*(*a2 + 496))(KeyPath);

  if (!*(a2 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer))
  {
    v13[0] = v7;
    v13[1] = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13[2] = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13[5] = v5;
    aBlock = a2;
    type metadata accessor for PhotosCollectionPreviewPlayer(0);

    sub_1A5245A64();
  }

  aBlock = *(a2 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);

  sub_1A524CBE4();
  return result;
}

uint64_t sub_1A3E611D0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v30 = sub_1A524BEE4();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E64E78(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3C2A108(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v27 = sub_1A524D474();
  (*(v12 + 16))(v15, v26, v11);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v16, v15, v11);
  (*(v8 + 32))(v18 + v17, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1A3E65184;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_93;
  v19 = _Block_copy(aBlock);

  v20 = v28;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3E65648(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1A3C2A108(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9ABC0(&qword_1EB12B1B0, &qword_1EB12B1C0, v21);
  v23 = v29;
  v22 = v30;
  sub_1A524E224();
  v24 = v27;
  MEMORY[0x1A5908800](0, v20, v23, v19);
  _Block_release(v19);

  (*(v33 + 8))(v23, v22);
  return (*(v31 + 8))(v20, v32);
}

void sub_1A3E61694(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);
  if (v2)
  {
    if (v2 == result)
    {
      return;
    }
  }

  else if (!result)
  {
    return;
  }

  if ((*(*v1 + 184))())
  {
    swift_getKeyPath();
    (*(*v1 + 496))();
  }

  else
  {
    v3 = 0;
  }

  sub_1A3E61CA8(v3);
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange + 8);

    v4(v6);

    sub_1A3C784D4(v4, v5);
  }
}

uint64_t sub_1A3E61800()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer);
}

void sub_1A3E6186C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 496))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__isLoadingSharedPlayer);
}

double sub_1A3E61914(uint64_t a1)
{
  swift_getKeyPath();
  v3 = (*v1 + 496);
  v4 = *v3;
  (*v3)();

  v6 = OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__effectivePlayer;
  v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__effectivePlayer);
  if (!v7)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    sub_1A3E63278();
  }

  if (v7 == a1)
  {
    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v4();

  if (*(v1 + v6))
  {

    sub_1A3E63278();
  }

  swift_getKeyPath();
  v4();

  if (*(v1 + v6))
  {

    sub_1A3E61E40();
  }

  return result;
}

double sub_1A3E61B60(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  return result;
}

double sub_1A3E61BF0@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  (*(*v6 + 496))();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_1A3E61CE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a2;

  v10 = sub_1A3E65370(v9, a1);

  if (v10)
  {
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v5 + 504))(v12);
  }

  else
  {
    v14 = *(v5 + v8);
    *(v5 + v8) = a1;

    a5(v14);
  }

  return result;
}

void sub_1A3E61E40()
{
  v11 = sub_1A52425F4();
  v10[4] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v10[1] = v10 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v10[8] = v10 - v2;
  MEMORY[0x1EEE9AC00](v3);
  v10[7] = v10 - v4;
  sub_1A3C2A108(0, &qword_1EB129248, MEMORY[0x1E69C1F00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v10[3] = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10[5] = v10 - v8;
  sub_1A3C2A108(0, &qword_1EB128C68, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721228);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A3E63278();
}

void (*sub_1A3E62978(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 264))();
  return sub_1A3E62A10;
}

void (*sub_1A3E62A6C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 288))();
  return sub_1A3E658B0;
}

uint64_t PhotosCollectionPreviewPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StoryAsyncPlayerView(0);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  KeyPath = swift_getKeyPath();
  (*(*v6 + 496))(KeyPath);

  if (*(v6 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer))
  {

    StoryAsyncPlayerView.init(player:)(v8, v5);
    sub_1A3E64234(v5, a1);
    return (*(v12 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v3);
  }
}

uint64_t sub_1A3E62CA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E62D04(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v2(v3);
}

double sub_1A3E62D68()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_sharedPlayerView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v4)
  {
    v5 = v4;
    swift_getKeyPath();
    (*(*v5 + 496))();

    v6 = *(v5 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);
  }

  else
  {
    v6 = 0;
  }

  (*((*v3 & *v2) + 0x68))(v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_player;
  swift_beginAccess();
  v9 = *(v1 + v7);
  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = (v9 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange);
    v12 = *(v9 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange);
    v13 = *(v9 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer_onSharedPlayerChange + 8);
    *v11 = sub_1A3E64D34;
    v11[1] = v10;

    sub_1A3C784D4(v12, v13);
  }

  return result;
}

double sub_1A3E62F1C()
{
  swift_beginAccess();

  return result;
}

double sub_1A3E62F64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_player;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A3E62D68();

  return result;
}

double (*sub_1A3E62FD4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3E63038;
}

double sub_1A3E63038(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A3E62D68();
  }

  return result;
}

void sub_1A3E63278()
{
  if (qword_1EB18ABD8 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

id sub_1A3E634A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A3E635C0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3E65648(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C2A108(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9ABC0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1768D0 = result;
  return result;
}

void sub_1A3E63844()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1769F0);
  __swift_project_value_buffer(v0, qword_1EB1769F0);
  sub_1A5246EF4();
}

unint64_t sub_1A3E638A8(uint64_t a1, char a2)
{
  sub_1A3D41BF8();
  v2 = sub_1A524C4A4();
  return sub_1A3E63918(a1, a2, v2);
}

unint64_t sub_1A3E63918(uint64_t a1, char a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1A3E6531C();
    do
    {
      swift_unknownObjectRetain();
      v7 = sub_1A524C594();
      swift_unknownObjectRelease();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1A3E63A08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3E655E4(0);
  v36 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v38 = *v22;
      v39 = *(v22 + 8);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v37 = *(v23 + 8);
      v25 = *(v23 + 16);
      if ((v36 & 1) == 0)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
      }

      sub_1A3D41BF8();
      v26 = sub_1A524C4A4();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v38;
      *(v16 + 8) = v39;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v24;
      *(v17 + 8) = v37;
      *(v17 + 16) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1A3E63CE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A3E638A8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A3E63A08(v20, a6 & 1);
      v15 = sub_1A3E638A8(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A3E63EA4();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;

    return swift_unknownObjectRelease();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = v25[6] + 16 * v15;
  *v28 = a4;
  *(v28 + 8) = a5;
  v29 = v25[7] + 24 * v15;
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;

  return swift_unknownObjectRetain();
}

void sub_1A3E63EA4()
{
  v1 = v0;
  sub_1A3E655E4(0);
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        v17 *= 24;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v4 + 48) + v18;
        *v25 = v20;
        *(v25 + 8) = v19;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
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

BOOL _s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

double sub_1A3E640D4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[16];
  v2[16] = *(v1 + 24);
  v4 = *(*v2 + 184);
  if (v3 != (v4() & 1))
  {
    if (v4())
    {
      swift_getKeyPath();
      (*(*v2 + 496))();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_1A3E61CA8(v6);
    if (((v4)(v7) & 1) == 0)
    {
      return sub_1A3E5F6E8();
    }
  }

  return result;
}

uint64_t sub_1A3E64234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryAsyncPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3E642CC()
{
  result = qword_1EB12AAF0;
  if (!qword_1EB12AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AAF0);
  }

  return result;
}

unint64_t sub_1A3E64324()
{
  result = qword_1EB12D1E8;
  if (!qword_1EB12D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D1E8);
  }

  return result;
}

unint64_t sub_1A3E6437C()
{
  result = qword_1EB12D1F0;
  if (!qword_1EB12D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D1F0);
  }

  return result;
}

uint64_t sub_1A3E643F4(uint64_t a1)
{
  result = sub_1A52425F4();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of PhotosCollectionPreviewPlayer.withStoryModel<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 216) + **(*v4 + 216));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A3CA8098;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PhotosCollectionPreviewPlayer.actualPlayer.getter()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t sub_1A3E64928(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A3E64A34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3E64A54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

void sub_1A3E64B9C(uint64_t a1)
{
  sub_1A3C2A108(319, &qword_1EB128C68, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721228);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A3E64C5C()
{
  result = qword_1EB12A288;
  if (!qword_1EB12A288)
  {
    sub_1A3C2A108(255, &qword_1EB12A290, type metadata accessor for StoryAsyncPlayerView, MEMORY[0x1E69E6720]);
    sub_1A3E65648(&qword_1EB12A298, type metadata accessor for StoryAsyncPlayerView, &protocol conformance descriptor for StoryAsyncPlayerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A288);
  }

  return result;
}

void sub_1A3E64D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_sharedPlayerView);
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x60))();
    if (v4)
    {
      v5 = v4;
      swift_getKeyPath();
      (*(*v5 + 496))();

      v6 = *(v5 + OBJC_IVAR____TtC12PhotosUICore29PhotosCollectionPreviewPlayer__sharedPlayer);
    }

    else
    {
      v6 = 0;
    }

    (*((*v3 & *v2) + 0x68))(v6);
  }
}

void sub_1A3E64E78(uint64_t a1)
{
  if (!qword_1EB126DE0)
  {
    sub_1A3C2A108(255, &qword_1EB12A480, type metadata accessor for StoryAsyncPlayer, MEMORY[0x1E69E6720]);
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126DE0);
    }
  }
}

uint64_t sub_1A3E64F10()
{
  sub_1A3C2A108(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  sub_1A3E64E78(0);
  v5 = v0 + ((v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80));

  return sub_1A3E611D0(v0 + v2, v5);
}

uint64_t objectdestroy_83Tm()
{
  sub_1A3C2A108(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_1A3E64E78(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

void sub_1A3E65184()
{
  sub_1A3C2A108(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  sub_1A3E64E78(0);
  sub_1A5245A74();
}

unint64_t sub_1A3E6531C()
{
  result = qword_1EB12AB30;
  if (!qword_1EB12AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB30);
  }

  return result;
}

BOOL sub_1A3E65370(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for StoryAsyncPlayer(0);
      sub_1A3E65648(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer, &protocol conformance descriptor for StoryAsyncPlayer);

      v2 = sub_1A524C594();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

double sub_1A3E6546C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    (*(*v1 + 496))();

    sub_1A3E5E038(v3);
  }

  return result;
}

void sub_1A3E6553C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 272))(Strong);
    v3 = v2;

    if (v1)
    {
      v1(v4);
      sub_1A3C784D4(v1, v3);
    }
  }
}

void sub_1A3E655E4(uint64_t a1)
{
  if (!qword_1EB12D200)
  {
    sub_1A3D41BF8();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12D200);
    }
  }
}

uint64_t sub_1A3E65648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3E65690(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A3E5FAFC(a1, v5, v6, v4);
}

uint64_t sub_1A3E65730(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C2A108(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A3E657E4(void *a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v4 + *a1);
  *(v4 + *a1) = *(v2 + 24);

  a2(v5);
}

uint64_t sub_1A3E658C0()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A3E6590C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

unint64_t sub_1A3E65950()
{
  result = qword_1EB12D208;
  if (!qword_1EB12D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D208);
  }

  return result;
}

void sub_1A3E659A4(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E659B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1A524EAB4();
  }
}

uint64_t sub_1A3E659E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3E65A28(uint64_t result, int a2, int a3)
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

void sub_1A3E65A88(double a1)
{
  swift_getKeyPath();
  (*(*v1 + 360))();

  if (v1[5] != a1)
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 368))(v4);
  }
}

void (*sub_1A3E65BB4(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  KeyPath = swift_getKeyPath();
  v4 = *v1;
  v5 = *(*v1 + 360);
  a1[2] = v5;
  a1[3] = (v4 + 360) & 0xFFFFFFFFFFFFLL | 0xB101000000000000;
  v5(KeyPath);

  *a1 = v1[5];
  return sub_1A3E65C60;
}

void sub_1A3E65C60(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = *a1;
  swift_getKeyPath();
  v3();

  v6 = v4[5];
  if (a2)
  {
    if (v6 == v5)
    {
      return;
    }
  }

  else if (v6 == v5)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v4 + 368))(v8);
}

void sub_1A3E65E08(double a1)
{
  swift_getKeyPath();
  (*(*v1 + 360))();

  if (v1[6] != a1)
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 368))(v4);
  }
}

uint64_t sub_1A3E65F34()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1A3D607F0(v1, *(v0 + 24));
  return v1;
}

void sub_1A3E65FD4(char *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  if (*(v2[7] + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2[7];
  v2[7] = 0x8000000000000000;
  sub_1A3E71684(v4, isUniquelyReferenced_nonNull_native, a2);
  v2[7] = v9;
  v6 = swift_endAccess();
  v7 = (*(*v2 + 208))(v6);
  v8 = sub_1A3E6610C(v4, v7);

  if (v8)
  {
    sub_1A3E66414();
  }
}

uint64_t sub_1A3E6610C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1A3C3DEB4(), v3 = sub_1A524C4A4(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_1A3C4CDB0();
    do
    {
      v7 = sub_1A524C594();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1A3E66230(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E662AC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 32);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E66414()
{
  v1 = v0;
  v2 = v0 + 7;
  v3 = (*(*v0 + 208))();
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  swift_beginAccess();
  v7 = 0;
  while (v6)
  {
    v8 = v6;
LABEL_10:
    v6 = (v8 - 1) & v8;
    if (*(*v2 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= ((v4 + 63) >> 6))
    {
      break;
    }

    v8 = *(v3 + 56 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  KeyPath = swift_getKeyPath();
  (*(*v1 + 360))(KeyPath);

  if (v1[6] != 0.0)
  {
    v11 = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
    (*(*v1 + 368))(v12);
  }
}

double sub_1A3E666A0()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  return v0[5];
}

double sub_1A3E66704@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 360))();

  result = v3[5];
  *a2 = result;
  return result;
}

void sub_1A3E667A4(double a1)
{
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 368))(v3);
  }
}

double sub_1A3E66894()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_1A3E668A4()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  return v0[6];
}

double sub_1A3E66908@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 360))();

  result = v3[6];
  *a2 = result;
  return result;
}

void sub_1A3E669A8(double a1)
{
  if (v1[6] == a1)
  {
    v1[6] = a1;
    v2 = (*(*v1 + 176))();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      v2();

      sub_1A3C784D4(v5, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 368))(v7);
  }
}

uint64_t sub_1A3E66C54()
{
  sub_1A3C784D4(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC12PhotosUICore29LemonadeShelfHeaderAppearance___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3E66D08()
{
  sub_1A3E71A5C();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A3E66D44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for LemonadeShelfHeader(0, a8, a10, a4);
  v17 = v16[14];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  v19 = [v18 enableHeaderTitleChevron];

  *(a9 + v17) = v19;
  v20 = a9 + v16[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a9 + v16[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v16[17];
  *(a9 + v22) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v16[18];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  v24 = v16[19];
  *(a9 + v24) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v16[20];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v16[21];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  result = (*(*(a8 - 8) + 32))(a9, a1, a8);
  *(a9 + v16[9]) = a2;
  *(a9 + v16[10]) = a3;
  v28 = (a9 + v16[11]);
  *v28 = a4;
  v28[1] = a5;
  *(a9 + v16[12]) = a6;
  *(a9 + v16[13]) = a7;
  return result;
}

int *sub_1A3E66F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E678A8(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v12);
  v13 = v2 + *(a1 + 60);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v22 = *v13;
  }

  else
  {

    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v14, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v14) = v22;
  }

  v17 = *(v3 + *(a1 + 40));
  v21 = v14;
  v18 = *(v17 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  return sub_1A42E7D40(v12, &v21, v18, v17, a2);
}

uint64_t sub_1A3E671A0(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E66F5C(a1, v4);
  (*(*(a1 + 24) + 200))(v4, *(a1 + 16));
  return sub_1A3E75FA8(v4, type metadata accessor for LemonadeShelfDisclosureOptions);
}

uint64_t sub_1A3E6725C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E66F5C(a1, v4);
  (*(*(a1 + 24) + 224))(v4, *(a1 + 16));
  return sub_1A3E75FA8(v4, type metadata accessor for LemonadeShelfDisclosureOptions);
}

uint64_t sub_1A3E67318(uint64_t a1)
{
  sub_1A5243164();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v1 = sub_1A524CAF4();

  return v1;
}

BOOL sub_1A3E673E0(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E66F5C(a1, v5);
  (*(*(a1 + 24) + 216))(&v8, v5, *(a1 + 16));
  sub_1A3E75FA8(v5, type metadata accessor for LemonadeShelfDisclosureOptions);
  return v8 != 2 && (!shouldUseNewCollectionsLayout()() || *(v1 + *(a1 + 56)) == 1) && sub_1A3E67318(a1) > 0;
}

uint64_t sub_1A3E674D8(uint64_t a1)
{
  v3 = sub_1A5249234();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52486A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v24 = *(a1 + 76);
  sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], &v22 - v10);
  (*(v6 + 104))(v8, *MEMORY[0x1E697E6C8], v5);
  sub_1A3E76368(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v12 = sub_1A524C534();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  v14 = v1 + *(a1 + 60);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v27 = *v14;
  }

  else
  {

    v16 = sub_1A524D254();
    v17 = sub_1A524A014();
    v23 = v3;
    v18 = a1;
    v19 = v17;
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a1 = v18;
    v20 = v25;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v15, 0);
    (*(v26 + 8))(v20, v23);
    LOBYTE(v15) = v27;
  }

  if (v15 - 2 < 2)
  {
    sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v11);
    v12 = sub_1A5248684();
    v13(v11, v5);
  }

  else if (v15 - 5 >= 2)
  {
    if (v15 == 4)
    {
      v12 &= sub_1A3E67CB4(a1, MEMORY[0x1E69C2200]);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1A3E678A8@<X0>(uint64_t (*a1)(void, double)@<X0>, void (*a2)(uint64_t, char *, double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  a2(v8, &v23 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

void *sub_1A3E67AA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4187D30();
  *a1 = v3;
  return result;
}

void *sub_1A3E67B18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4187F14();
  *a1 = v3;
  return result;
}

void sub_1A3E67B8C(void *a1@<X8>)
{
  sub_1A5248CF4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1A3E67BE8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosShelfCollapsedState.getter();
  *a1 = result;
  return result;
}

void *sub_1A3E67C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4418F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3E67CB4(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A3E678A8(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], &v13 - v8);
  (*(v4 + 104))(v6, *a2, v3);
  v10 = sub_1A5242D04();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  return v10 & 1;
}

uint64_t sub_1A3E67E38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v157 = a2;
  v121 = sub_1A5249234();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243334();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v160 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71B60(0);
  v139 = v7;
  v136 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73904(0);
  v133 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E739EC(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v163 = *(a1 + 24);
  v164 = v14;
  v16 = type metadata accessor for LemonadeShelfHeaderHeightReporterModifier(255, v14, v163, v15);
  v137 = v12;
  v17 = sub_1A5248804();
  v151 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v119 - v18;
  sub_1A3E75CCC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  v19 = sub_1A5248804();
  v154 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v119 - v20;
  sub_1A3E73A2C(255);
  v21 = sub_1A5248804();
  v22 = sub_1A3E73C5C();
  v132 = v16;
  WitnessTable = swift_getWitnessTable();
  v131 = v22;
  v175 = v22;
  v176 = WitnessTable;
  v153 = v17;
  v24 = swift_getWitnessTable();
  v25 = sub_1A3E73DE0();
  v140 = v24;
  v173 = v24;
  v174 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1A3E76368(&qword_1EB128040, sub_1A3E73A2C, MEMORY[0x1E697EC18]);
  v171 = v26;
  v172 = v27;
  v28 = swift_getWitnessTable();
  v155 = v19;
  v167 = v19;
  v168 = v21;
  v147 = v21;
  v146 = v26;
  v169 = v26;
  v170 = v28;
  v141 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v142 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v161 = &v119 - v30;
  sub_1A5249F54();
  v144 = OpaqueTypeMetadata2;
  v149 = sub_1A5248804();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v119 - v33;
  v34 = sub_1A5246E54();
  v159 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v130 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v128 = &v119 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v119 - v42;
  v129 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v119 - v46;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1, v51);
  v52 = sub_1A5246E94();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v156 = v52;
  v55 = v54(v50, 1);
  v162 = v2;
  if (v55 == 1)
  {
    sub_1A3E75FA8(v50, sub_1A3E73E5C);
  }

  else
  {
    v127 = v34;
    v56 = *(v158 + 16);
    v56(v47, v2, a1);
    v56(v43, v2, a1);
    v57 = v36;
    sub_1A5246E44();
    v58 = sub_1A5246E84();
    v59 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v60 = swift_slowAlloc();
      v125 = v57;
      v61 = v60;
      v126 = swift_slowAlloc();
      v167 = v126;
      *v61 = 136446466;
      sub_1A3C41990(v164, v163);
      v124 = v59;
      v123 = *(v158 + 8);
      v123(v47, a1);
      sub_1A3C66768();
      v62 = sub_1A524EA44();
      sub_1A3C2EF94(v62, v63, &v167);
    }

    v64 = *(v158 + 8);
    v64(v47, a1);

    v159[1](v57, v127);
    v64(v43, a1);
    (*(v53 + 8))(v50, v156);
    v2 = v162;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v159 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A3E691B0(v2, v164, v163);
  if (!sub_1A3E673E0(a1))
  {
    if (!*(v2 + *(a1 + 44) + 8))
    {
      sub_1A3E69438(a1);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v163 + 48))(v164);
  v125 = sub_1A3E69C64(a1);
  v124 = v65;
  v66 = sub_1A3E674D8(a1);
  v127 = 0;
  v126 = 0;
  LODWORD(v156) = (v66 & 1) != 0 && !sub_1A3E6AA18(a1) && sub_1A3E6A930(a1) && sub_1A40B1BE4(*(v2 + *(a1 + 36)), 0);
  v67 = v158;
  v122 = *(v158 + 16);
  v68 = v128;
  v122(v128, v2, a1);
  v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v70 = swift_allocObject();
  v123 = v70;
  v71 = a1;
  v72 = v163;
  *(v70 + 16) = v164;
  *(v70 + 24) = v72;
  v73 = *(v67 + 32);
  v73(v70 + v69, v68, v71);
  v74 = v130;
  v122(v130, v2, v71);
  v75 = swift_allocObject();
  *(v75 + 16) = v164;
  *(v75 + 24) = v72;
  v73(v75 + v69, v74, v71);
  sub_1A3E71C4C(0);
  sub_1A3E727D4(0);
  sub_1A3E750A8(&qword_1EB122870, sub_1A3E71C4C, sub_1A3E7364C);
  sub_1A3E750A8(&qword_1EB1225B0, sub_1A3E727D4, sub_1A3E737E0);
  v76 = v135;
  sub_1A52423E4();
  sub_1A524B3D4();
  v77 = sub_1A524B474();

  v78 = sub_1A524A064();
  v79 = v134;
  (*(v136 + 32))(v134, v76, v139);
  v80 = v79 + *(v133 + 36);
  *v80 = v77;
  *(v80 + 8) = v78;
  KeyPath = swift_getKeyPath();
  v82 = v138;
  sub_1A3E75588(v79, v138, sub_1A3E73904);
  v83 = v137;
  v84 = v82 + *(v137 + 36);
  *v84 = KeyPath;
  *(v84 + 8) = 0;
  v85 = swift_getKeyPath();
  v167 = v85;
  LOBYTE(v168) = 0;
  v86 = v150;
  MEMORY[0x1A5906490](&v167, v83, v132, v131);
  j__swift_release(v85);
  sub_1A3E76070(v82, sub_1A3E739EC);
  swift_getKeyPath();
  v87 = v162 + *(v71 + 72);
  v89 = *v87;
  v88 = *(v87 + 8);
  v91 = *(v87 + 16);
  v90 = *(v87 + 24);
  if (*(v87 + 32) != 1)
  {

    v92 = sub_1A524D254();
    v93 = sub_1A524A014();
    sub_1A5246DF4(v92, &dword_1A3C1C000, v93, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v94 = v119;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v89, v88, v91, v90, 0);
    (*(v120 + 8))(v94, v121);
  }

  PXDisplayCollectionDetailedCountsMake();
  v167 = v95;
  v168 = v96;
  v169 = v97;
  v170 = v98;
  v99 = v152;
  v100 = v153;
  sub_1A524A964();

  (*(v151 + 8))(v86, v100);
  v101 = [v159 enableShelfDrawBorders];
  MEMORY[0x1EEE9AC00](v101);
  v103 = v163;
  v102 = v164;
  v104 = swift_checkMetadataState();
  v105 = v155;
  v106 = v146;
  v107 = v141;
  sub_1A524A584();
  (*(v154 + 8))(v99, v105);
  sub_1A3C41990(v102, v103);
  static LemonadeShelfUtilities.detailsDisclosureButtonAccessibilityIdentifier(shelfIdentifier:)();
  v167 = v105;
  v168 = v104;
  v169 = v106;
  v170 = v107;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v143;
  v110 = v144;
  v111 = v161;
  sub_1A524AA94();

  (*(v142 + 8))(v111, v110);
  v112 = sub_1A3E76368(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v165 = OpaqueTypeConformance2;
  v166 = v112;
  v113 = v149;
  swift_getWitnessTable();
  v114 = v148;
  v115 = *(v148 + 16);
  v116 = v145;
  v115(v145, v109, v113);
  v117 = *(v114 + 8);
  v117(v109, v113);
  v115(v157, v116, v113);
  return (v117)(v116, v113);
}

double sub_1A3E691B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelfHeader(0, a2, a3, v10);
  v12 = a1 + *(v11 + 84);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v27 = v13 & 1;
  }

  else
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v13, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v13) = v27;
  }

  v26 = v13 & 1;
  v25 = 0;
  if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v26, &v25))
  {
    v16 = (a1 + *(v11 + 80));
    v17 = *v16;
    v18 = *(v16 + 8);

    if ((v18 & 1) == 0)
    {
      v20 = sub_1A524D254();
      v21 = sub_1A524A014();
      sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();

      v19 = (*(v7 + 8))(v9, v6);
      v17 = v24;
    }

    v22 = (*(*v17 + 136))(v19);

    if ((v22 & 1) == 0)
    {
      return 0.0;
    }
  }

  sub_1A5247BA4();
  return result;
}

uint64_t sub_1A3E69438(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = (*(v16 + 24))(v15, v16, v12);
  v61 = v18;
  v62 = (*(v16 + 32))(v15, v16);
  v56 = *(a1 + 76);
  sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v14);
  v19 = sub_1A5248684();
  v48 = v9;
  v20 = *(v9 + 8);
  v53 = v14;
  v54 = v8;
  v57 = v20;
  v20(v14, v8);
  if (v19)
  {
    v21 = v2 + *(a1 + 60);
    v22 = *v21;
    v23 = *(v21 + 8);
    v55 = v17;
    if (v23 == 1)
    {
      v68 = v22;
    }

    else
    {

      v24 = sub_1A524D254();
      v25 = sub_1A524A014();
      sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v26 = v58;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v22, 0);
      (*(v59 + 8))(v26, v60);
      LOBYTE(v22) = v68;
    }

    v67 = v22;
    v66 = 2;
    if (static LemonadeHorizontalSizeClass.== infix(_:_:)(&v67, &v66))
    {
      goto LABEL_19;
    }

    v27 = *v21;
    if (*(v21 + 8) == 1)
    {
      v65 = *v21;
    }

    else
    {

      v28 = sub_1A524D254();
      v29 = sub_1A524A014();
      sub_1A5246DF4(v28, &dword_1A3C1C000, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v30 = v58;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v27, 0);
      (*(v59 + 8))(v30, v60);
      LOBYTE(v27) = v65;
    }

    v17 = v55;
    v64 = v27;
    v63 = 3;
    if (static LemonadeHorizontalSizeClass.== infix(_:_:)(&v64, &v63))
    {
      goto LABEL_19;
    }
  }

  v71 = *(v2 + *(a1 + 36));
  v70 = 2;
  sub_1A3E760D0();
  v31 = sub_1A524C594();
  if (v31)
  {
    v55 = v17;
    MEMORY[0x1EEE9AC00](v31);
    *(&v47 - 4) = v15;
    *(&v47 - 3) = v16;
    *(&v47 - 2) = v2;
    v32 = v50;
    sub_1A3E678A8(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v50);
    v33 = v53;
    sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v53);
    v34 = sub_1A41875F0(sub_1A3E76124, (&v47 - 6), v32, v33);
    v35 = v54;
    v57(v33, v54);
    (*(v51 + 8))(v32, v52);
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }

    v36 = v2 + *(a1 + 60);
    v37 = *v36;
    if (*(v36 + 8) == 1)
    {
      v69 = *v36;
    }

    else
    {

      v38 = sub_1A524D254();
      v39 = sub_1A524A014();
      sub_1A5246DF4(v38, &dword_1A3C1C000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v40 = v58;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v37, 0);
      (*(v59 + 8))(v40, v60);
      LOBYTE(v37) = v69;
    }

    switch(v37)
    {
      case 6u:
        sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v33);
        v42 = MEMORY[0x1E697E708];
        break;
      case 5u:
        sub_1A3E678A8(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v33);
        v42 = MEMORY[0x1E697E6E8];
        break;
      case 4u:
LABEL_19:

        return v62;
      default:
LABEL_20:

        return v55;
    }

    v43 = v49;
    (*(v48 + 104))(v49, *v42, v35);
    sub_1A3E76368(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
    v44 = sub_1A524C534();
    v45 = v57;
    v57(v43, v35);
    v45(v33, v35);
    v46 = v62;
    if ((v44 & 1) == 0)
    {
      v46 = v55;
    }

    v62 = v46;
    goto LABEL_19;
  }

  return v17;
}

BOOL sub_1A3E69C64(uint64_t a1)
{
  result = 0;
  if (!shouldUseNewCollectionsLayout()())
  {
    sub_1A3E760D0();
    if ((sub_1A524C594() & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A3E69CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3E71DB0(0);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E71CDC(0);
  v67 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75980(0, &qword_1EB122C60, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F948]);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75980(0, &qword_1EB122880, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F960]);
  v18 = v17;
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v58 - v19;
  if (sub_1A3E673E0(a1))
  {
    v60 = v20;
    v61 = v18;
    v62 = a2;
    v21 = sub_1A3E67CB4(a1, MEMORY[0x1E69C2210]);
    if (v21)
    {
      LODWORD(v64) = sub_1A3E6AA18(a1);
      v22 = *(v2 + *(a1 + 40));

      v23 = sub_1A3E69438(a1);
      v25 = v24;
      (*(v13 + 16))(v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
      v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = *(a1 + 16);
      (*(v13 + 32))(v27 + v26, v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      *v12 = v64 & 1;
      *(v12 + 1) = v22;
      *(v12 + 2) = v23;
      *(v12 + 3) = v25;
      *(v12 + 4) = sub_1A3E763D0;
      *(v12 + 5) = v27;
      swift_storeEnumTagMultiPayload();
      sub_1A3E7378C();
      sub_1A3E7261C(255);
      v29 = v28;
      v30 = sub_1A3E76368(&qword_1EB1253E0, sub_1A3E71DB0, &unk_1A535BA5C);
      v31 = sub_1A3E726A8();
      v69 = v66;
      v70 = v29;
      v71 = v30;
      v72 = v31;
      swift_getOpaqueTypeConformance2();
      v32 = v60;
      sub_1A5249744();
    }

    else
    {
      v59 = v58;
      v58[0] = *(v2 + *(a1 + 40));
      v35 = MEMORY[0x1EEE9AC00](v21);
      v58[1] = &v58[-6];
      v37 = *(a1 + 16);
      v36 = *(a1 + 24);
      v58[-4] = v37;
      v58[-3] = v36;
      v57 = v2;
      (*(v13 + 16))(v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v35);
      v38 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      *(v39 + 24) = v36;
      (*(v13 + 32))(v39 + v38, v16, a1);
      sub_1A3E71E54(0);
      v41 = v40;
      sub_1A3E71ED8(255);
      v43 = v42;
      v44 = sub_1A3E7253C();
      v45 = v58[0];

      v69 = v43;
      v70 = v44;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_1A472916C(v45, sub_1A3E759EC, 0, 0, sub_1A3E759F8, v39, v41, v7, OpaqueTypeConformance2);
      v47 = shouldUseNewCollectionsLayout()();
      v59 = v58;
      MEMORY[0x1EEE9AC00](v47);
      v58[-4] = v37;
      v58[-3] = v36;
      v57 = v2;
      sub_1A3E7261C(0);
      v49 = v48;
      v50 = sub_1A3E76368(&qword_1EB1253E0, sub_1A3E71DB0, &unk_1A535BA5C);
      v51 = sub_1A3E726A8();
      v52 = v63;
      v53 = v66;
      sub_1A524A584();
      sub_1A3E76070(v7, sub_1A3E71DB0);
      v54 = v64;
      v55 = v67;
      (*(v64 + 16))(v12, v52, v67);
      swift_storeEnumTagMultiPayload();
      sub_1A3E7378C();
      v69 = v53;
      v70 = v49;
      v71 = v50;
      v72 = v51;
      swift_getOpaqueTypeConformance2();
      v32 = v60;
      sub_1A5249744();
      (*(v54 + 8))(v52, v55);
    }

    v56 = v62;
    sub_1A3CC3E00(v32, v62);
    return (*(v68 + 56))(v56, 0, 1, v61);
  }

  else
  {
    v33 = *(v68 + 56);

    return v33(a2, 1, 1, v18);
  }
}

uint64_t sub_1A3E6A474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1A3E72D5C(0, a3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75EBC(0, &qword_1EB122BA8, sub_1A3E72810, sub_1A3E72D5C, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  sub_1A3E72810(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (shouldUseNewCollectionsLayout()())
  {
    *v14 = sub_1A524BC94();
    v14[1] = v15;
    sub_1A3E75DB8(0, &qword_1EB124418, sub_1A3E728A4, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A3E6B95C(v3, *(a1 + 16), *(a1 + 24), v14 + *(v16 + 44));
    sub_1A3E76008(v14, v11, sub_1A3E72810);
    swift_storeEnumTagMultiPayload();
    sub_1A3E76368(&qword_1EB121548, sub_1A3E72810, MEMORY[0x1E6981880]);
    sub_1A3E750A8(&qword_1EB127D90, sub_1A3E72D5C, sub_1A3E72F3C);
    sub_1A5249744();
    v17 = sub_1A3E72810;
    v18 = v14;
LABEL_5:
    sub_1A3E76070(v18, v17);
    sub_1A3E75EBC(0, &qword_1EB1225C0, sub_1A3E72810, sub_1A3E72D5C, MEMORY[0x1E697F960]);
    return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  if (sub_1A3E67318(a1) >= 1)
  {
    sub_1A3E6C928(a1, v8, v19);
    sub_1A3E76008(v8, v11, sub_1A3E72D5C);
    swift_storeEnumTagMultiPayload();
    sub_1A3E76368(&qword_1EB121548, sub_1A3E72810, MEMORY[0x1E6981880]);
    sub_1A3E750A8(&qword_1EB127D90, sub_1A3E72D5C, sub_1A3E72F3C);
    sub_1A5249744();
    v17 = sub_1A3E72D5C;
    v18 = v8;
    goto LABEL_5;
  }

  sub_1A3E75EBC(0, &qword_1EB1225C0, sub_1A3E72810, sub_1A3E72D5C, MEMORY[0x1E697F960]);
  v23 = *(*(v22 - 8) + 56);

  return v23(a2, 1, 1, v22);
}

BOOL sub_1A3E6A930(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E66F5C(a1, v4);
  v5 = (*(*(a1 + 24) + 192))(v4, *(a1 + 16));
  v7 = v6;
  v9 = v8;
  sub_1A3E75FA8(v4, type metadata accessor for LemonadeShelfDisclosureOptions);
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
  {
    sub_1A3E75670(v5, v7, v9);
  }

  return (v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL;
}

BOOL sub_1A3E6AA18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 80));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    v11 = (*(v5 + 8))(v7, v4);
    v9 = v22;
  }

  v14 = (*(*v9 + 136))(v11);

  if (v14)
  {
    return 1;
  }

  else
  {
    v16 = v2 + *(a1 + 84);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      HIBYTE(v21) = v17 & 1;
    }

    else
    {

      v18 = sub_1A524D254();
      v19 = sub_1A524A014();
      sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v17, 0);
      (*(v5 + 8))(v7, v4);
      LOBYTE(v17) = HIBYTE(v21);
    }

    BYTE6(v21) = v17 & 1;
    BYTE5(v21) = 1;
    return static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v21 + 6, &v21 + 5);
  }
}

uint64_t sub_1A3E6AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LemonadeShelfHeader(0, a2, a3, v12);
  v14 = a1 + *(result + 60);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    *a4 = v15;
  }

  else
  {

    v16 = sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v15, 0);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1A3E6ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_1A52437F4();
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1A3E73158(0);
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v14);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  (*(v9 + 32))(v18 + v17, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v30 = v20;
  v31 = v19;
  v32 = v3;
  sub_1A3E75EBC(0, &qword_1EB123328, sub_1A3E73200, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1A3E732C0();
  sub_1A524B704();
  sub_1A5247D94();
  sub_1A3E76368(&qword_1EB121AE8, sub_1A3E73158, MEMORY[0x1E697D680]);
  sub_1A3E76368(&qword_1EB124D58, MEMORY[0x1E69C2660], MEMORY[0x1E69C2658]);
  v21 = v25;
  v22 = v27;
  sub_1A524A944();
  (*(v28 + 8))(v8, v22);
  return (*(v26 + 8))(v16, v21);
}

uint64_t sub_1A3E6B168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = a3;
  v11 = type metadata accessor for LemonadeShelfHeader(0, a2, a3, v10);
  v12 = (a1 + *(v11 + 80));
  v13 = *v12;
  LOBYTE(a3) = *(v12 + 8);

  if ((a3 & 1) == 0)
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    v14 = (*(v7 + 8))(v9, v6);
    v13 = v32;
  }

  v17 = (*(*v13 + 136))(v14);

  if (v17)
  {
    v18 = 1;
    sub_1A3EFDE1C();
  }

  else
  {
    v18 = 2;
    sub_1A3EFDE38();
  }

  type metadata accessor for LemonadeAnalyticsCustomization();
  v19 = sub_1A47E502C();
  LOBYTE(v32) = v18;
  LemonadeCustomizationAction.rawValue.getter();
  v20 = sub_1A524CFC4();
  sub_1A3C41990(*(v11 + 16), *(v11 + 24));
  sub_1A3DD1890(&v34);
  LemonadeCustomizationAnalyticsName.rawValue.getter();
  v21 = sub_1A524CFC4();
  v33 = 0;
  LemonadeCustomizationContentType.rawValue.getter();
  v22 = sub_1A524CFC4();
  v23 = sub_1A3C5A374();
  v24 = MEMORY[0x1E69E7CC0];
  (*(*v19 + 136))(v20, v23 & 1, v21, v22, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);

  v25 = objc_opt_self();
  v26 = sub_1A524C634();
  sub_1A3E75770(v24);
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v27 = sub_1A524C3D4();

  [v25 sendEvent:v26 withPayload:v27];

  MEMORY[0x1EEE9AC00](v28);
  v29 = v31[0];
  v31[-4] = a2;
  v31[-3] = v29;
  v31[-2] = a1;
  LOBYTE(v31[-1]) = (v17 & 1) == 0;

  sub_1A52483D4();
}

double sub_1A3E6B514(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for LemonadeShelfHeader(0, a3, a4, v12) + 80));
  v14 = *v13;
  LOBYTE(a3) = *(v13 + 8);

  if ((a3 & 1) == 0)
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = v18[1];
  }

  (*(*v14 + 144))(a2 & 1);

  return result;
}

uint64_t sub_1A3E6B6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for LemonadeShelfHeader(0, a2, a3, v10) + 80);
  v12 = *v11;
  LOBYTE(a3) = *(v11 + 8);

  if ((a3 & 1) == 0)
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    v13 = (*(v7 + 8))(v9, v6);
    v12 = v26;
  }

  v16 = 0xD000000000000024;
  v17 = (*(*v12 + 136))(v13);

  if (v17)
  {
    v18 = 0;
    v19 = sub_1A3EFDE1C();
  }

  else
  {
    v19 = sub_1A3EFDE38();
    v16 = 0xD000000000000028;
    v18 = 0x3FF921FB54442D18;
  }

  v20 = sub_1A524B544();
  sub_1A524BE94();
  v26 = v20;
  v27 = v18;
  v28 = v21;
  v29 = v22;
  v30 = v19;
  v31 = v17 & 1;

  v25[0] = sub_1A3C38BD4(v16);
  v25[1] = v23;
  sub_1A3E73200(0);
  sub_1A3E733B4();
  sub_1A3D5F9DC();
  sub_1A524AC94();
}

uint64_t sub_1A3E6B95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  sub_1A3E735B8(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E73590(0);
  v10 = v9;
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v66 - v13;
  sub_1A3E7355C(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v20 = sub_1A5249234();
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E729B8(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7292C(0);
  v73 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v76 = &v66 - v32;
  *v25 = sub_1A5249314();
  *(v25 + 1) = 0x4020000000000000;
  v25[16] = 0;
  sub_1A3E75DB8(0, &qword_1EB1244D8, sub_1A3E72A4C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A3E6C0E0(a1, a2, a3, &v25[*(v33 + 44)], v34);
  v36 = type metadata accessor for LemonadeShelfHeader(0, a2, a3, v35);
  v71 = v20;
  v72 = v36;
  v37 = *(v36 + 84);
  v74 = a1;
  v38 = a1 + v37;
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    v84 = v39 & 1;
  }

  else
  {

    v40 = v10;
    v41 = v19;
    v42 = v16;
    v43 = sub_1A524D254();
    v44 = sub_1A524A014();
    v45 = v43;
    v16 = v42;
    v19 = v41;
    v10 = v40;
    sub_1A5246DF4(v45, &dword_1A3C1C000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v39, 0);
    (*(v70 + 8))(v22, v71);
    LOBYTE(v39) = v84;
  }

  v46 = v22;
  v83 = v39 & 1;
  v82 = 0;
  if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v83, &v82))
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  sub_1A3E75588(v25, v30, sub_1A3E729B8);
  *&v30[*(v73 + 36)] = v47;
  v48 = v76;
  sub_1A3E75588(v30, v76, sub_1A3E7292C);
  v49 = 1;
  if (*(v74 + *(v72 + 52)) == 1)
  {
    v50 = sub_1A5249314();
    v51 = v69;
    *v69 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    sub_1A3E75DB8(0, &qword_1EB124558, MEMORY[0x1E69C2148], MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A5242BC4();
    v52 = *v38;
    if (*(v38 + 8) == 1)
    {
      v81 = v52 & 1;
    }

    else
    {

      v53 = v10;
      v54 = sub_1A524D254();
      v55 = v16;
      v56 = sub_1A524A014();
      v57 = v54;
      v10 = v53;
      sub_1A5246DF4(v57, &dword_1A3C1C000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v16 = v55;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v52, 0);
      (*(v70 + 8))(v46, v71);
      LOBYTE(v52) = v81;
    }

    v80 = v52 & 1;
    v79 = 0;
    if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v80, &v79))
    {
      v58 = 0.0;
    }

    else
    {
      v58 = 1.0;
    }

    v59 = v68;
    sub_1A3E75608(v51, v68, sub_1A3E735B8);
    *(v59 + *(v10 + 36)) = v58;
    v60 = v59;
    v61 = v67;
    sub_1A3E75608(v60, v67, sub_1A3E73590);
    sub_1A3E75608(v61, v19, sub_1A3E73590);
    v49 = 0;
  }

  (*(v78 + 56))(v19, v49, 1, v10);
  v62 = v77;
  sub_1A3E76008(v48, v77, sub_1A3E7292C);
  sub_1A3E75F40(v19, v16, sub_1A3E7355C);
  v63 = v75;
  sub_1A3E76008(v62, v75, sub_1A3E7292C);
  sub_1A3E72AD4(0, &qword_1EB123B60, sub_1A3E7292C, sub_1A3E7355C);
  sub_1A3E75F40(v16, v63 + *(v64 + 48), sub_1A3E7355C);
  sub_1A3E75FA8(v19, sub_1A3E7355C);
  sub_1A3E76070(v48, sub_1A3E7292C);
  sub_1A3E75FA8(v16, sub_1A3E7355C);
  return sub_1A3E76070(v62, sub_1A3E7292C);
}

uint64_t sub_1A3E6C0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v77 = a4;
  sub_1A3E73054(0, a5);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73020(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = v62 - v13;
  sub_1A3E72C00(0, &qword_1EB1212C8, &qword_1EB121EF0, sub_1A3E72C58);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = v62 - v15;
  v16 = sub_1A5243064();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E72D5C(0, v17);
  v62[1] = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E72C58(0, v21);
  v67 = v24;
  v65 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v66 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v69 = v62 - v27;
  sub_1A3E72B84(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E72B50(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v62 - v37;
  v40 = type metadata accessor for LemonadeShelfHeader(0, a2, a3, v39);
  if (sub_1A3E6AA18(v40))
  {
    v41 = a1;
    (*(v30 + 56))(v38, 1, 1, v29);
    v42 = v73;
  }

  else
  {
    v62[0] = v29;
    if (sub_1A3E67318(v40) >= 1 && sub_1A3E6A930(v40))
    {
      sub_1A3E6C928(v40, v23, v43);
      sub_1A5247D64();
      sub_1A3E750A8(&qword_1EB127D90, sub_1A3E72D5C, sub_1A3E72F3C);
      sub_1A3E76368(&qword_1EB124DE0, MEMORY[0x1E69C2380], MEMORY[0x1E69C2378]);
      v44 = v64;
      sub_1A524A944();
      (*(v63 + 1))(v19, v44);
      sub_1A3E76070(v23, sub_1A3E72D5C);
      v41 = a1;
      v45 = sub_1A3E674D8(v40);
      LODWORD(v64) = v45 & 1;
      v46 = v65;
      v63 = v32;
      v47 = *(v65 + 16);
      (v47)(v66, v69, v67);
      v78 = (v45 & 1) == 0;
      v48 = v68;
      v49 = v67;
      v47();
      v32 = v63;
      sub_1A3E722B4(0, &qword_1EB121EF0, sub_1A3E72C58);
      v51 = v48 + *(v50 + 48);
      v52 = v78;
      *v51 = 0;
      *(v51 + 8) = v64;
      *(v51 + 9) = v52;
      v53 = *(v46 + 8);
      v53(v69, v49);
      v53(v66, v49);
      sub_1A3CC3CF8(v68, v32);
      (*(v70 + 56))(v32, 0, 1, v71);
    }

    else
    {
      v41 = a1;
      (*(v70 + 56))(v32, 1, 1, v71);
    }

    v42 = v73;
    sub_1A3E75588(v32, v38, sub_1A3E72B84);
    (*(v30 + 56))(v38, 0, 1, v62[0]);
  }

  v54 = v75;
  if (*(v41 + *(v40 + 52)) == 1)
  {
    v55 = v72;
    sub_1A3E6ADEC(v40, v72);
    v56 = v74;
    (*(v74 + 32))(v42, v55, v54);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v74;
  }

  (*(v56 + 56))(v42, v57, 1, v54);
  sub_1A3E76008(v38, v35, sub_1A3E72B50);
  v58 = v76;
  sub_1A3E76008(v42, v76, sub_1A3E73020);
  v59 = v77;
  sub_1A3E76008(v35, v77, sub_1A3E72B50);
  sub_1A3E72AD4(0, &qword_1EB1212B0, sub_1A3E72B50, sub_1A3E73020);
  sub_1A3E76008(v58, v59 + *(v60 + 48), sub_1A3E73020);
  sub_1A3E76070(v42, sub_1A3E73020);
  sub_1A3E76070(v38, sub_1A3E72B50);
  sub_1A3E76070(v58, sub_1A3E73020);
  return sub_1A3E76070(v35, sub_1A3E72B50);
}