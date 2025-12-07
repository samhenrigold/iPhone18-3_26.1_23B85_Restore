uint64_t sub_1C45F4D00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_1C456902C(a2, a3);
  result = sub_1C4EFAF88();
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C45F4D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a1;
  v40 = a3;
  v4 = sub_1C4EFDAB8();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BehaviorPopularity(0);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v49 = a2;
  v45[3] = sub_1C4EFBD38();
  v45[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v45);
  sub_1C4EFBD48();
  v46[3] = sub_1C4EFB298();
  v46[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v46);
  sub_1C456902C(&qword_1EC0B9B70, &unk_1C4F37490);
  sub_1C4401CBC(&qword_1EC0B9B78, &qword_1EC0B9B70, &unk_1C4F37490, MEMORY[0x1E69E6508]);
  sub_1C4F01458();
  sub_1C440962C(v45);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  sub_1C4EFAE28();
  sub_1C440962C(v46);
  sub_1C4401CBC(&qword_1EC0B9B80, &qword_1EC0B9B68, &qword_1C4F11190, MEMORY[0x1E699FF60]);
  sub_1C45F583C(&qword_1EC0B9B88, type metadata accessor for BehaviorPopularity, &unk_1C4F11364);
  v12 = v43;
  v13 = sub_1C4EFAFE8();
  result = (*(v41 + 8))(v11, v9);
  if (!v12)
  {
    v37[1] = 0;
    v15 = v38;
    v16 = v40;
    v17 = v39;
    v18 = v13;
    v19 = *(v13 + 16);
    if (v19)
    {
      v43 = v6;
      v46[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D238(0, v19, 0);
      v20 = v46[0];
      v21 = v15;
      v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v37[0] = v18;
      v23 = v18 + v22;
      v24 = *(v21 + 72);
      v41 = v17 + 16;
      v42 = v24;
      v25 = v8;
      do
      {
        sub_1C45F5940(v23, v25, type metadata accessor for BehaviorPopularity);
        v26 = v44;
        v27 = v4;
        (*v41)(v44, v8, v4);
        v28 = &v8[*(v43 + 20)];
        v29 = *v28;
        v30 = v28[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v31 = v26;
        v25 = v8;
        sub_1C45D29E0(v31, v29, v30, &v47);
        sub_1C45F58A0(v8, type metadata accessor for BehaviorPopularity);
        v46[0] = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1C459D238(v32 > 1, v33 + 1, 1);
          v20 = v46[0];
        }

        *(v20 + 16) = v33 + 1;
        v34 = (v20 + 48 * v33);
        v35 = v47;
        v36 = v48[0];
        *(v34 + 57) = *(v48 + 9);
        v34[2] = v35;
        v34[3] = v36;
        v23 += v42;
        --v19;
        v4 = v27;
      }

      while (v19);

      v16 = v40;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *v16 = v20;
  }

  return result;
}

void sub_1C45F52A4()
{
  sub_1C43FE96C();
  sub_1C4F008B8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  sub_1C4F008F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v3 = sub_1C440F2DC();
  v4(v3);
  sub_1C4F008D8();
  sub_1C4F00898();
  v5 = swift_slowAlloc();
  *v5 = 0;
  v6 = sub_1C4F008D8();
  v7 = sub_1C4F01E28();
  v8 = sub_1C4F008A8();
  sub_1C4412CB4(&dword_1C43F8000, v9, v7, v8, "BehaviorDatabase.removeAllBehaviors", "");
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (v0)
  {
  }

  else
  {
    v10 = sub_1C4F01E18();
    v11 = sub_1C4F008A8();
    sub_1C4412CB4(&dword_1C43F8000, v12, v10, v11, "BehaviorDatabase.removeAllBehaviors", "");

    MEMORY[0x1C6942830](v5, -1, -1);
  }

  v13 = sub_1C43FEBB4();
  v14(v13);
  v15 = sub_1C440BB4C();
  v16(v15);
  sub_1C43FBC80();
}

uint64_t sub_1C45F54E4(uint64_t a1)
{
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  return sub_1C4EFAE88();
}

uint64_t sub_1C45F5568()
{
  sub_1C442C4E4();
  sub_1C45F58A0(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter;
  sub_1C4F008F8();
  sub_1C43FBCE0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1C45F5604()
{
  sub_1C45F5568();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45F5684(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4F008F8();
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

uint64_t sub_1C45F578C()
{
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C45F583C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45F58A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C45F5940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C45F5AC4(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C45F5C24()
{
  result = qword_1EC0B9BE8;
  if (!qword_1EC0B9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9BE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BehaviorPopularity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45F5D58()
{
  result = qword_1EC0B9C10;
  if (!qword_1EC0B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9C10);
  }

  return result;
}

unint64_t sub_1C45F5DB0()
{
  result = qword_1EC0B9C18;
  if (!qword_1EC0B9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9C18);
  }

  return result;
}

unint64_t sub_1C45F5E08()
{
  result = qword_1EC0B9C20[0];
  if (!qword_1EC0B9C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0B9C20);
  }

  return result;
}

uint64_t sub_1C45F5E7C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void sub_1C45F5F10(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFD4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C45F7C94(v6);
  *a1 = v3;
}

void sub_1C45F5FC4()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v9 = sub_1C44109B4();
  v10 = type metadata accessor for BehaviorDigestTaskIdentifier(v9);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&qword_1EC0B9D10, &qword_1C4F11678);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v20 = &v35 + *(v19 + 56) - v17;
  sub_1C45FB2DC(v4, &v35 - v17);
  sub_1C45FB2DC(v2, v20);
  v21 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  v22 = sub_1C44157D4(v18, 2, v21);
  if (v22)
  {
    if (v22 == 1)
    {
      if (sub_1C442FB80() != 1)
      {
        goto LABEL_9;
      }

LABEL_19:
      sub_1C4411840();
      goto LABEL_10;
    }

    if (sub_1C442FB80() == 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C45FB2DC(v18, v14);
    v23 = *(v21 + 48);
    v25 = *(v14 + v23);
    v24 = *(v14 + v23 + 8);
    if (!sub_1C442FB80())
    {
      v26 = *&v20[v23 + 8];
      v35 = *&v20[v23];
      v36 = v26;
      (*(v7 + 32))(v0, v20, v5);
      sub_1C440A65C();
      sub_1C4498E28(v27, v28, MEMORY[0x1E69A9498]);
      sub_1C4F01578();
      sub_1C4F01578();
      v30 = v37;
      v29 = v38;
      v31 = *(v7 + 8);
      v31(v14, v5);
      if (v29 == v30)
      {
        if (v25 != v35 || v24 != v36)
        {
          sub_1C4F02938();
        }

        v33 = sub_1C4405814();
        (v31)(v33);
      }

      else
      {
        v34 = sub_1C4405814();
        (v31)(v34);
      }

      goto LABEL_19;
    }

    (*(v7 + 8))(v14, v5);
  }

LABEL_9:
  sub_1C4420C3C(v18, &qword_1EC0B9D10, &qword_1C4F11678);
LABEL_10:
  sub_1C43FE9F0();
}

uint64_t sub_1C45F62F0()
{
  v2 = v0;
  sub_1C4403FC0();
  v3 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v7 = sub_1C44109B4();
  v8 = type metadata accessor for BehaviorDigestTaskIdentifier(v7);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C45FB2DC(v2, v11 - v10);
  v13 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  v14 = sub_1C44157D4(v12, 2, v13);
  if (v14)
  {
    return MEMORY[0x1C69417F0](v14 != 1);
  }

  (*(v5 + 32))(v1, v12, v3);
  MEMORY[0x1C69417F0](2);
  sub_1C440A65C();
  sub_1C4498E28(v15, v16, MEMORY[0x1E69A9488]);
  sub_1C4F00FE8();
  sub_1C4F01298();

  v17 = sub_1C4405814();
  return v18(v17);
}

uint64_t sub_1C45F64B4()
{
  sub_1C4F02AF8();
  sub_1C45F62F0();
  return sub_1C4F02B68();
}

uint64_t sub_1C45F64FC()
{
  sub_1C4F02AF8();
  sub_1C45F62F0();
  return sub_1C4F02B68();
}

uint64_t sub_1C45F653C()
{
  sub_1C43FBCD4();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v0[2] = v4;
  v0[6] = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C45F6608, 0, 0);
}

uint64_t sub_1C45F6608()
{
  result = sub_1C46AAB48(*(v0 + 40), *(v0 + 16));
  *(v0 + 64) = result;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(result + 16);
  *(v0 + 72) = v4;
  *(v0 + 80) = 0;
  if (v4)
  {
    v18 = v3;
    if (*(result + 16))
    {
      sub_1C4460050(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), *(v0 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);
      ObjectType = swift_getObjectType();
      sub_1C440F2F4(ObjectType, v6, v7, v8, v9, v10, v11, v12, v17, v18);
      v13 = swift_task_alloc();
      *(v0 + 88) = v13;
      *v13 = v0;
      v14 = sub_1C441F4C0(v13);

      return v15(v14);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1C43FBDA0();

    return v16();
  }

  return result;
}

uint64_t sub_1C45F67A8()
{
  sub_1C43FBCD4();
  v2 = *v1;
  *(*v1 + 96) = v0;

  sub_1C4420C3C(*(v2 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);
  if (v0)
  {

    v3 = sub_1C45F6A74;
  }

  else
  {
    v3 = sub_1C45F68F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C45F68F0()
{
  v1 = v0[9];
  v2 = v0[10] + 1;
  v0[10] = v2;
  result = v0[8];
  if (v2 == v1)
  {

    sub_1C43FBDA0();

    return v4();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v17 = v0[4];
    sub_1C4460050(result + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v2, v0[7], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    ObjectType = swift_getObjectType();
    sub_1C440F2F4(ObjectType, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v14 = sub_1C441F4C0(v13);

    return v15(v14);
  }

  return result;
}

uint64_t sub_1C45F6A74()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C45F6B40()
{
  sub_1C45F6AD0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45F6BF8(uint64_t a1)
{
  sub_1C45F6C50(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C45F6C50(uint64_t a1)
{
  if (!qword_1EC0B9CC0)
  {
    sub_1C4EFDAB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0B9CC0);
    }
  }
}

void sub_1C45F6D04(uint64_t a1)
{
  sub_1C45F6D88(319);
  if (v1 <= 0x3F)
  {
    sub_1C45F6E1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C45F6D88(uint64_t a1)
{
  if (!qword_1EDDDBD70)
  {
    sub_1C4EF9CD8();
    sub_1C4498E28(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1C4F010A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDDBD70);
    }
  }
}

void sub_1C45F6E1C(uint64_t a1)
{
  if (!qword_1EC0B9CD8)
  {
    sub_1C4572308(&qword_1EC0B88A8, &qword_1C4F115E0);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0B9CD8);
    }
  }
}

void sub_1C45F6EC8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v87 = v2;
  v94 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v83 - v4);
  v6 = sub_1C456902C(&qword_1EC0B9CF0, &qword_1C4F11658);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v95 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v16 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v88 = v20 - v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v83 - v23;
  v24 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  sub_1C43FBD08();
  v93 = v26 - v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v96 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  *&v99 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v103 = v0[1];
  v35 = *(v103 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v101 = v18;
  v102 = v16;
  v92 = v1;
  v97 = v10;
  if (v35)
  {
    v90 = v15;
    v91 = v5;
    v104 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C459CF78();
    v37 = v103;
    v38 = 0;
    v39 = *(v103 + 16);
    v36 = v104;
    v40 = *v1;
    v100 = v18 + 16;
    v41 = v40 + 48;
    do
    {
      if (v39 == v38)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);

        __break(1u);
        return;
      }

      if (v38 >= *(v37 + 16))
      {
        goto LABEL_51;
      }

      if (v38 >= *(v40 + 16))
      {
        goto LABEL_52;
      }

      v42 = *(v37 + 8 * v38 + 32);
      if (v42 >= *(*v41 + 16))
      {
        v43 = 1;
      }

      else
      {
        if (v42 < 0)
        {
          goto LABEL_53;
        }

        (*(v101 + 16))(v34, *v41 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v42, v16);
        v43 = 0;
      }

      sub_1C440BAA8(v34, v43, 1, v16);
      v104 = v36;
      v44 = *(v36 + 16);
      if (v44 >= *(v36 + 24) >> 1)
      {
        sub_1C459CF78();
        v36 = v104;
      }

      ++v38;
      *(v36 + 16) = v44 + 1;
      sub_1C44CD9E0(v34, v36 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v25[9] * v44, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v41 += 24;
      v16 = v102;
      v37 = v103;
    }

    while (v35 != v38);

    v15 = v90;
    v5 = v91;
    v10 = v97;
  }

  sub_1C45FA95C(v36);
  v46 = v45;

  v104 = v46;
  sub_1C45F5F10(&v104);
  v47 = v104;
  sub_1C4868010(v104, v15);
  v100 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v48 = sub_1C44157D4(v15, 1, v100);
  v49 = v101;
  if (v48 == 1)
  {

    sub_1C4420C3C(v15, &qword_1EC0B9CF0, &qword_1C4F11658);
    v50 = v99;
    sub_1C440BAA8(v99, 1, 1, v16);
LABEL_19:
    v51 = v87;
    sub_1C4420C3C(v50, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v52 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
    v53 = v51;
    v54 = 1;
    goto LABEL_49;
  }

  v89 = v47;
  v50 = v99;
  sub_1C44CD9E0(&v15[*(v100 + 48)], v99, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v50);
  if (v68)
  {

    goto LABEL_19;
  }

  v56 = *(v49 + 32);
  v55 = v49 + 32;
  v86 = v56;
  v56(v98, v50, v16);
  v57 = 0;
  v85 = v100 - 8;
  v58 = MEMORY[0x1E69E7CC0];
  v91 = (v55 - 16);
  v59 = *(v89 + 16);
  v101 = v55;
  v84 = (v55 - 24);
  v25 = qword_1C4F0D2D0;
  v60 = v96;
  v90 = v59;
  while (1)
  {
    if (v57 == v59)
    {
      v61 = 1;
      v57 = v59;
    }

    else
    {
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v57 >= *(v89 + 16))
      {
        goto LABEL_59;
      }

      sub_1C4460050(v89 + ((*(*v85 + 80) + 32) & ~*(*v85 + 80)) + *(*v85 + 72) * v57, v10, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      v61 = 0;
      ++v57;
    }

    sub_1C440BAA8(v10, v61, 1, v100);
    v62 = v95;
    sub_1C44CD9E0(v10, v95, &qword_1EC0B9CF0, &qword_1C4F11658);
    sub_1C440582C(v62);
    if (v68)
    {
LABEL_45:

      v80 = v87;
      goto LABEL_48;
    }

    v63 = *v62;
    v64 = *(v100 + 48);
    v65 = v102;
    (*v91)(v60, v98, v102);
    sub_1C440BAA8(v60, 0, 1, v65);
    v66 = *(v94 + 48);
    sub_1C44CD9E0(v62 + v64, v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4460050(v60, v5 + v66, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C440582C(v5);
    if (!v68)
    {
      break;
    }

    sub_1C4420C3C(v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C440582C(v5 + v66);
    if (!v68)
    {

      goto LABEL_47;
    }

    sub_1C4420C3C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v97;
      v71 = v103;
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_1C48347BC();
      v10 = v97;
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    if (v63 >= *(v71 + 16))
    {
      goto LABEL_55;
    }

    v72 = *(v71 + 32 + 8 * v63);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_56;
    }

    *(v71 + 32 + 8 * v63) = v74;
    v75 = v92;
    v92[1] = v71;
    v76 = *v75;
    if (v63 >= *(v76 + 16))
    {
      goto LABEL_57;
    }

    v103 = v71;
    v99 = *(v76 + 24 * v63 + 32);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A3C0();
      v58 = v78;
    }

    v59 = v90;
    v77 = *(v58 + 16);
    if (v77 >= *(v58 + 24) >> 1)
    {
      sub_1C458A3C0();
      v58 = v79;
    }

    *(v58 + 16) = v77 + 1;
    *(v58 + 16 * v77 + 32) = v99;
  }

  v67 = v93;
  sub_1C4460050(v5, v93, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v5 + v66);
  if (!v68)
  {
    v69 = v88;
    v86(v88, v5 + v66, v65);
    sub_1C4498E28(&qword_1EC0B9D00, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    LODWORD(v99) = sub_1C4F010B8();
    v70 = *v84;
    (*v84)(v69, v65);
    sub_1C4420C3C(v96, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v60 = v96;
    v70(v93, v65);
    sub_1C4420C3C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v99 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  sub_1C4420C3C(v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*v84)(v67, v65);
LABEL_47:
  v80 = v87;
  sub_1C4420C3C(v5, &qword_1EC0B9CE8, &qword_1C4F11650);
LABEL_48:
  v81 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  v82 = *(v81 + 48);
  v86(v80, v98, v102);
  *(v80 + v82) = v58;
  v53 = v80;
  v54 = 0;
  v52 = v81;
LABEL_49:
  sub_1C440BAA8(v53, v54, 1, v52);
  sub_1C43FE9F0();
}

uint64_t sub_1C45F78F8(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1C4460050(a1, v8, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v16 = *(v3 + 48);
  if (sub_1C44157D4(&v8[v16], 1, v9) == 1)
  {
    sub_1C4420C3C(&v8[v16], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v17 = 0;
  }

  else
  {
    v18 = &v8[v16];
    v19 = *(v10 + 32);
    v19(v15, v18, v9);
    sub_1C4460050(v24, v5, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v20 = *(v3 + 48);
    if (sub_1C44157D4(&v5[v20], 1, v9) == 1)
    {
      (*(v10 + 8))(v15, v9);
      sub_1C4420C3C(&v5[v20], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v17 = 1;
    }

    else
    {
      v19(v12, &v5[v20], v9);
      v17 = sub_1C4EF9C18();
      v21 = *(v10 + 8);
      v21(v12, v9);
      v21(v15, v9);
    }
  }

  return v17 & 1;
}

uint64_t sub_1C45F7BA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v2)
  {
    v3 = sub_1C4F01728();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 8 * v2);
  }

  return a1;
}

uint64_t sub_1C45F7C10@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C45F7BA4(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

void sub_1C45F7C94(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C45F82F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C45F7DDC(0, v2, 1, a1);
  }
}

void sub_1C45F7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v70 = sub_1C4EF9CD8();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v55 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v48[-v11];
  v68 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  MEMORY[0x1EEE9AC00](v68);
  v58 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v48[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v48[-v23];
  v50 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v60 = (v8 + 8);
    v61 = (v8 + 32);
    v26 = v24 + v25 * (a3 - 1);
    v56 = -v25;
    v57 = v24;
    v27 = a1 - a3;
    v49 = v25;
    v28 = v24 + v25 * a3;
    v62 = v17;
    v59 = v20;
    while (2)
    {
      v53 = v26;
      v54 = a3;
      v51 = v28;
      v52 = v27;
      v29 = v27;
      while (1)
      {
        v30 = v69;
        sub_1C4460050(v28, v69, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v26, v20, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v30, v17, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v31 = v68;
        v32 = *(v68 + 48);
        if (sub_1C44157D4(&v17[v32], 1, v70) == 1)
        {
          break;
        }

        v65 = v28;
        v66 = v29;
        v33 = v70;
        v64 = *v61;
        v64(v67, &v17[v32], v70);
        v34 = v63;
        sub_1C4460050(v20, v63, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v35 = *(v31 + 48);
        if (sub_1C44157D4(&v34[v35], 1, v33) == 1)
        {
          (*v60)(v67, v70);
          sub_1C4420C3C(&v34[v35], &unk_1EC0B84E0, qword_1C4F0D2D0);
          v20 = v59;
          sub_1C4420C3C(v59, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          sub_1C4420C3C(v69, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v17 = v62;
          v37 = v65;
          v36 = v66;
        }

        else
        {
          v38 = &v34[v35];
          v39 = v67;
          v40 = v55;
          v64(v55, v38, v70);
          v41 = sub_1C4EF9C18();
          v42 = *v60;
          v43 = v40;
          v44 = v39;
          v45 = v70;
          (*v60)(v43, v70);
          v42(v44, v45);
          v20 = v59;
          sub_1C4420C3C(v59, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          sub_1C4420C3C(v69, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v17 = v62;
          v37 = v65;
          v36 = v66;
          if ((v41 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (!v57)
        {
          __break(1u);
          return;
        }

        v46 = v58;
        sub_1C44CD9E0(v37, v58, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C44CD9E0(v46, v26, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v26 += v56;
        v28 = v37 + v56;
        v47 = __CFADD__(v36, 1);
        v29 = v36 + 1;
        if (v47)
        {
          goto LABEL_13;
        }
      }

      sub_1C4420C3C(&v17[v32], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v20, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      sub_1C4420C3C(v69, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
LABEL_13:
      a3 = v54 + 1;
      v26 = v53 + v49;
      v27 = v52 - 1;
      v28 = v51 + v49;
      if (v54 + 1 != v50)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C45F82F0(int64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v164 = a1;
  v190 = sub_1C4EF9CD8();
  v6 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v181 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v159 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v165 = &v159 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v159 - v13;
  v196 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  v176 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v170 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v186 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v159 - v19;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v194 = &v159 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v159 - v25;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v159 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v159 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v159 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v161 = &v159 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v159 - v36;
  v177 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v150 = v42;
    v42 = *v164;
    if (!*v164)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_115;
    }

    goto LABEL_149;
  }

  v160 = a4;
  v41 = 0;
  v188 = (v6 + 8);
  v189 = (v6 + 32);
  v42 = MEMORY[0x1E69E7CC0];
  v43 = &qword_1C4F0E9F8;
  v175 = v14;
  v183 = v20;
  v187 = v37;
  v169 = v38;
  v44 = v179;
  v163 = &v159 - v36;
  while (1)
  {
    v45 = v41;
    v46 = v41 + 1;
    v166 = v41;
    if (v41 + 1 < v40)
    {
      v185 = v40;
      v162 = v42;
      v47 = *v177;
      v42 = *(v176 + 72);
      v182 = v41 + 1;
      v48 = v47 + v42 * v46;
      sub_1C4460050(v48, v39, &unk_1EC0BE4E0, v43);
      v192 = v47;
      v49 = v47 + v42 * v45;
      v50 = v161;
      sub_1C4460050(v49, v161, &unk_1EC0BE4E0, v43);
      v51 = v180;
      LODWORD(v184) = sub_1C45F78F8(v39, v50);
      v180 = v51;
      v52 = v45;
      v53 = v171;
      if (v51)
      {
        sub_1C4420C3C(v50, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4420C3C(v163, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
LABEL_123:

        return;
      }

      sub_1C4420C3C(v50, &unk_1EC0BE4E0, v43);
      sub_1C4420C3C(v163, &unk_1EC0BE4E0, v43);
      v54 = v52 + 2;
      v55 = v192 + v42 * (v52 + 2);
      v56 = v182;
      v57 = v42;
      v191 = v42;
      v58 = v185;
      while (1)
      {
        v59 = v54;
        v182 = v56;
        if (v56 + 1 >= v58)
        {
          break;
        }

        v192 = v54;
        v60 = v178;
        sub_1C4460050(v55, v178, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v48, v44, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4460050(v60, v53, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v61 = v44;
        v62 = *(v196 + 48);
        v63 = v190;
        if (sub_1C44157D4(v53 + v62, 1, v190) == 1)
        {
          sub_1C4420C3C(v53 + v62, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v64 = 0;
        }

        else
        {
          v174 = *v189;
          v174(v175, v53 + v62, v63);
          v65 = v61;
          v66 = v169;
          sub_1C4460050(v65, v169, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
          v67 = *(v196 + 48);
          if (sub_1C44157D4(v66 + v67, 1, v63) == 1)
          {
            (*v188)(v175, v63);
            sub_1C4420C3C(v66 + v67, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v64 = 1;
          }

          else
          {
            v68 = v66 + v67;
            v69 = v165;
            v174(v165, v68, v63);
            v70 = v175;
            v64 = sub_1C4EF9C18();
            v71 = *v188;
            (*v188)(v69, v63);
            v71(v70, v63);
          }

          v53 = v171;
        }

        v44 = v179;
        v42 = &unk_1EC0BE4E0;
        sub_1C4420C3C(v179, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        sub_1C4420C3C(v178, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
        v57 = v191;
        v59 = v192;
        v55 += v191;
        v48 += v191;
        v56 = v182 + 1;
        v54 = v192 + 1;
        v58 = v185;
        if ((v184 & 1) != (v64 & 1))
        {
          goto LABEL_16;
        }
      }

      v56 = v58;
LABEL_16:
      v182 = v56;
      if (v184)
      {
        v46 = v182;
        v45 = v166;
        v43 = &qword_1C4F0E9F8;
        if (v182 < v166)
        {
          goto LABEL_148;
        }

        if (v166 >= v182)
        {
          v42 = v162;
          goto LABEL_39;
        }

        if (v58 >= v59)
        {
          v72 = v59;
        }

        else
        {
          v72 = v58;
        }

        v73 = v57 * (v72 - 1);
        v74 = v166;
        v75 = v57 * v72;
        v76 = v166 * v57;
        do
        {
          if (v74 != --v46)
          {
            v77 = *v177;
            if (!*v177)
            {
              goto LABEL_153;
            }

            sub_1C44CD9E0(v77 + v76, v170, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
            v78 = v76 < v73 || v77 + v76 >= (v77 + v75);
            if (v78)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C44CD9E0(v170, v77 + v73, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
            v57 = v191;
          }

          ++v74;
          v73 -= v57;
          v75 -= v57;
          v76 += v57;
        }

        while (v74 < v46);
        v42 = v162;
        v44 = v179;
        v46 = v182;
      }

      else
      {
        v42 = v162;
        v46 = v182;
        v43 = &qword_1C4F0E9F8;
      }

      v45 = v166;
    }

LABEL_39:
    v79 = v177[1];
    if (v46 < v79)
    {
      if (__OFSUB__(v46, v45))
      {
        goto LABEL_145;
      }

      if (v46 - v45 < v160)
      {
        break;
      }
    }

LABEL_60:
    if (v46 < v45)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A358();
      v42 = v148;
    }

    v103 = *(v42 + 16);
    v104 = v103 + 1;
    if (v103 >= *(v42 + 24) >> 1)
    {
      sub_1C458A358();
      v42 = v149;
    }

    *(v42 + 16) = v104;
    v105 = v42 + 32;
    v106 = (v42 + 32 + 16 * v103);
    v107 = v182;
    *v106 = v166;
    v106[1] = v107;
    v192 = *v164;
    if (!v192)
    {
      goto LABEL_154;
    }

    if (v103)
    {
      while (1)
      {
        v108 = v104 - 1;
        v109 = (v105 + 16 * (v104 - 1));
        v110 = (v42 + 16 * v104);
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v111 = *(v42 + 32);
          v112 = *(v42 + 40);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_80:
          if (v114)
          {
            goto LABEL_131;
          }

          v126 = *v110;
          v125 = v110[1];
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_134;
          }

          v130 = v109[1];
          v131 = v130 - *v109;
          if (__OFSUB__(v130, *v109))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v128, v131))
          {
            goto LABEL_139;
          }

          if (v128 + v131 >= v113)
          {
            if (v113 < v131)
            {
              v108 = v104 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v104 < 2)
        {
          goto LABEL_133;
        }

        v133 = *v110;
        v132 = v110[1];
        v121 = __OFSUB__(v132, v133);
        v128 = v132 - v133;
        v129 = v121;
LABEL_95:
        if (v129)
        {
          goto LABEL_136;
        }

        v135 = *v109;
        v134 = v109[1];
        v121 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v121)
        {
          goto LABEL_138;
        }

        if (v136 < v128)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v108 - 1 >= v104)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
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
          goto LABEL_147;
        }

        if (!*v177)
        {
          goto LABEL_151;
        }

        v140 = (v105 + 16 * (v108 - 1));
        v141 = *v140;
        v142 = v105;
        v143 = v105 + 16 * v108;
        v144 = *(v143 + 8);
        v145 = v180;
        sub_1C45F9254((*v177 + *(v176 + 72) * *v140), (*v177 + *(v176 + 72) * *v143), (*v177 + *(v176 + 72) * v144), v192);
        v180 = v145;
        if (v145)
        {
          goto LABEL_123;
        }

        if (v144 < v141)
        {
          goto LABEL_126;
        }

        v146 = v42;
        v42 = *(v42 + 16);
        if (v108 > v42)
        {
          goto LABEL_127;
        }

        *v140 = v141;
        v140[1] = v144;
        if (v108 >= v42)
        {
          goto LABEL_128;
        }

        v104 = v42 - 1;
        sub_1C461950C((v143 + 16), v42 - 1 - v108, v143);
        *(v146 + 16) = v42 - 1;
        v147 = v42 > 2;
        v42 = v146;
        v20 = v183;
        v44 = v179;
        v105 = v142;
        if (!v147)
        {
          goto LABEL_109;
        }
      }

      v115 = v105 + 16 * v104;
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_129;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_130;
      }

      v122 = v110[1];
      v123 = v122 - *v110;
      if (__OFSUB__(v122, *v110))
      {
        goto LABEL_132;
      }

      v121 = __OFADD__(v113, v123);
      v124 = v113 + v123;
      if (v121)
      {
        goto LABEL_135;
      }

      if (v124 >= v118)
      {
        v138 = *v109;
        v137 = v109[1];
        v121 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v121)
        {
          goto LABEL_143;
        }

        if (v113 < v139)
        {
          v108 = v104 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v40 = v177[1];
    v41 = v182;
    v39 = v163;
    if (v182 >= v40)
    {
      goto LABEL_113;
    }
  }

  v80 = v45 + v160;
  if (__OFADD__(v45, v160))
  {
    goto LABEL_146;
  }

  if (v80 >= v79)
  {
    v80 = v177[1];
  }

  if (v80 < v45)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v150 = sub_1C46194F4();
LABEL_115:
    v151 = (v150 + 16);
    for (i = *(v150 + 2); i >= 2; *v151 = i)
    {
      if (!*v177)
      {
        goto LABEL_152;
      }

      v153 = &v150[16 * i];
      v154 = *v153;
      v155 = &v151[2 * i];
      v156 = *(v155 + 1);
      v157 = v180;
      sub_1C45F9254((*v177 + *(v176 + 72) * *v153), (*v177 + *(v176 + 72) * *v155), (*v177 + *(v176 + 72) * v156), v42);
      v180 = v157;
      if (v157)
      {
        break;
      }

      if (v156 < v154)
      {
        goto LABEL_140;
      }

      if (i - 2 >= *v151)
      {
        goto LABEL_141;
      }

      *v153 = v154;
      *(v153 + 1) = v156;
      v158 = *v151 - i;
      if (*v151 < i)
      {
        goto LABEL_142;
      }

      i = *v151 - 1;
      sub_1C461950C(v155 + 16, v158, v155);
    }

    goto LABEL_123;
  }

  if (v46 == v80)
  {
    goto LABEL_60;
  }

  v162 = v42;
  v81 = *v177;
  v82 = *(v176 + 72);
  v83 = *v177 + v82 * (v46 - 1);
  v184 = -v82;
  v185 = v81;
  v84 = v45 - v46;
  v167 = v82;
  v85 = v81 + v46 * v82;
  v86 = v194;
  v168 = v80;
LABEL_48:
  v182 = v46;
  v172 = v85;
  v87 = v85;
  v173 = v84;
  v88 = v84;
  v174 = v83;
  while (1)
  {
    v89 = v195;
    sub_1C4460050(v87, v195, &unk_1EC0BE4E0, v43);
    sub_1C4460050(v83, v86, &unk_1EC0BE4E0, v43);
    v90 = v43;
    v91 = v187;
    sub_1C4460050(v89, v187, &unk_1EC0BE4E0, v90);
    v92 = *(v196 + 48);
    v93 = v190;
    if (sub_1C44157D4(v91 + v92, 1, v190) == 1)
    {
      sub_1C4420C3C(v91 + v92, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v86 = v194;
      sub_1C4420C3C(v194, &unk_1EC0BE4E0, v90);
      sub_1C4420C3C(v195, &unk_1EC0BE4E0, v90);
      v43 = v90;
LABEL_58:
      v46 = v182 + 1;
      v83 = v174 + v167;
      v84 = v173 - 1;
      v85 = v172 + v167;
      if (v182 + 1 == v168)
      {
        v46 = v168;
        v42 = v162;
        v44 = v179;
        v45 = v166;
        goto LABEL_60;
      }

      goto LABEL_48;
    }

    v192 = v88;
    v191 = *v189;
    (v191)(v193, v91 + v92, v93);
    sub_1C4460050(v194, v20, &unk_1EC0BE4E0, v90);
    v94 = *(v196 + 48);
    v95 = v93;
    if (sub_1C44157D4(&v20[v94], 1, v93) == 1)
    {
      (*v188)(v193, v93);
      sub_1C4420C3C(&v20[v94], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v86 = v194;
      sub_1C4420C3C(v194, &unk_1EC0BE4E0, v90);
      sub_1C4420C3C(v195, &unk_1EC0BE4E0, v90);
      v43 = v90;
    }

    else
    {
      v96 = &v20[v94];
      v97 = v193;
      v98 = v181;
      (v191)(v181, v96, v95);
      LODWORD(v191) = sub_1C4EF9C18();
      v99 = *v188;
      (*v188)(v98, v95);
      v20 = v183;
      v99(v97, v95);
      v86 = v194;
      sub_1C4420C3C(v194, &unk_1EC0BE4E0, v90);
      sub_1C4420C3C(v195, &unk_1EC0BE4E0, v90);
      v43 = v90;
      if ((v191 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v100 = v192;
    if (!v185)
    {
      break;
    }

    v101 = v186;
    sub_1C44CD9E0(v87, v186, &unk_1EC0BE4E0, v43);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CD9E0(v101, v83, &unk_1EC0BE4E0, v43);
    v83 += v184;
    v87 += v184;
    v78 = __CFADD__(v100, 1);
    v88 = v100 + 1;
    if (v78)
    {
      goto LABEL_58;
    }
  }

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
}

void sub_1C45F9254(char *a1, char *a2, char *a3, unint64_t a4)
{
  v108 = a4;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v88 - v16;
  v106 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  MEMORY[0x1EEE9AC00](v106);
  v90 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v88 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v96 = &v88 - v31;
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_70;
  }

  v35 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_71;
  }

  v104 = v7;
  v37 = (a2 - a1) / v33;
  v111 = a1;
  v110 = v108;
  v97 = (v8 + 8);
  v98 = (v8 + 32);
  v38 = v35 / v33;
  if (v37 < v35 / v33)
  {
    v39 = v108;
    sub_1C459C374(a1, (a2 - a1) / v33, v108);
    v99 = a3;
    v100 = v39 + v37 * v33;
    v109 = v100;
    v40 = &unk_1EC0BE4E0;
    v41 = v33;
    v42 = v102;
    v43 = v105;
    v44 = v96;
    v93 = v41;
    while (1)
    {
      if (v108 >= v100 || a2 >= a3)
      {
        goto LABEL_68;
      }

      v107 = a2;
      sub_1C4460050(a2, v44, v40, &qword_1C4F0E9F8);
      sub_1C4460050(v108, v43, v40, &qword_1C4F0E9F8);
      sub_1C4460050(v44, v42, v40, &qword_1C4F0E9F8);
      v46 = v44;
      v47 = v106;
      v48 = *(v106 + 48);
      v49 = v40;
      v50 = v104;
      if (sub_1C44157D4(v42 + v48, 1, v104) == 1)
      {
        break;
      }

      v103 = a1;
      v53 = v42;
      v54 = *v98;
      v55 = v101;
      (*v98)(v101, v53 + v48, v50);
      v56 = v94;
      sub_1C4460050(v105, v94, v49, &qword_1C4F0E9F8);
      v57 = *(v47 + 48);
      if (sub_1C44157D4(v56 + v57, 1, v50) == 1)
      {
        (*v97)(v55, v50);
        sub_1C4420C3C(v56 + v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v43 = v105;
        sub_1C4420C3C(v105, v49, &qword_1C4F0E9F8);
        v44 = v96;
        sub_1C4420C3C(v96, v49, &qword_1C4F0E9F8);
        a1 = v103;
        v41 = v93;
        v40 = v49;
      }

      else
      {
        v58 = v56 + v57;
        v59 = v91;
        v54(v91, v58, v50);
        v60 = sub_1C4EF9C18();
        v61 = *v97;
        (*v97)(v59, v50);
        v61(v101, v50);
        v43 = v105;
        sub_1C4420C3C(v105, v49, &qword_1C4F0E9F8);
        v44 = v96;
        sub_1C4420C3C(v96, v49, &qword_1C4F0E9F8);
        a1 = v103;
        v41 = v93;
        v40 = v49;
        if ((v60 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      a2 = (v107 + v41);
      if (a1 < v107 || a1 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v99;
      }

      else
      {
        a3 = v99;
        if (a1 != v107)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

LABEL_38:
      a1 += v41;
      v111 = a1;
      v42 = v102;
    }

    sub_1C4420C3C(v42 + v48, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = v105;
    sub_1C4420C3C(v105, v49, &qword_1C4F0E9F8);
    sub_1C4420C3C(v46, v49, &qword_1C4F0E9F8);
    v44 = v46;
    v40 = v49;
LABEL_18:
    a2 = v107;
    v51 = v108 + v41;
    if (a1 < v108 || a1 >= v51)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v99;
    }

    else
    {
      a3 = v99;
      if (a1 != v108)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v110 = v51;
    v108 = v51;
    goto LABEL_38;
  }

  v96 = v12;
  v63 = v108;
  sub_1C459C374(a2, v35 / v33, v108);
  v64 = v63 + v38 * v33;
  v65 = -v33;
  v66 = v64;
  v67 = v106;
  v68 = v95;
  v102 = -v33;
  v103 = a1;
LABEL_40:
  v107 = a2;
  v69 = &a2[v65];
  v105 = a3;
  v91 = v66;
  v70 = v92;
  v99 = v69;
  while (1)
  {
    if (v64 <= v108)
    {
      v111 = v107;
      v109 = v66;
      goto LABEL_68;
    }

    if (v107 <= a1)
    {
      break;
    }

    v94 = v66;
    v101 = v64;
    v71 = v64 + v65;
    v72 = v100;
    sub_1C4460050(v64 + v65, v100, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4460050(v69, v68, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4460050(v72, v70, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v73 = v68;
    v74 = *(v67 + 48);
    v75 = v67;
    v76 = v104;
    if (sub_1C44157D4(v70 + v74, 1, v104) == 1)
    {
      sub_1C4420C3C(v70 + v74, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v77 = 0;
    }

    else
    {
      v93 = *v98;
      v93(v96, v70 + v74, v76);
      v78 = v90;
      sub_1C4460050(v73, v90, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
      v79 = *(v75 + 48);
      if (sub_1C44157D4(v78 + v79, 1, v76) == 1)
      {
        (*v97)(v96, v76);
        sub_1C4420C3C(v78 + v79, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v77 = 1;
      }

      else
      {
        v80 = v89;
        v93(v89, v78 + v79, v76);
        v81 = v96;
        v77 = sub_1C4EF9C18();
        v82 = *v97;
        (*v97)(v80, v76);
        v82(v81, v76);
      }

      a1 = v103;
      v70 = v92;
    }

    v83 = v105;
    a3 = (v105 + v102);
    v68 = v95;
    sub_1C4420C3C(v95, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    sub_1C4420C3C(v100, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v67 = v106;
    if (v77)
    {
      if (v83 < v107 || a3 >= v107)
      {
        a2 = v99;
        swift_arrayInitWithTakeFrontToBack();
        v66 = v94;
        v64 = v101;
        v65 = v102;
      }

      else
      {
        v66 = v94;
        v86 = v99;
        a2 = v99;
        v64 = v101;
        v65 = v102;
        if (v83 != v107)
        {
          v87 = v94;
          swift_arrayInitWithTakeBackToFront();
          v64 = v101;
          a2 = v86;
          v66 = v87;
        }
      }

      goto LABEL_40;
    }

    if (v83 < v101 || a3 >= v101)
    {
      swift_arrayInitWithTakeFrontToBack();
      v105 = a3;
      v64 = v71;
      v66 = v71;
      v65 = v102;
      v69 = v99;
    }

    else
    {
      v66 = v71;
      v105 = a3;
      v64 = v71;
      v65 = v102;
      v69 = v99;
      if (v101 != v83)
      {
        swift_arrayInitWithTakeBackToFront();
        v105 = a3;
        v64 = v71;
        v66 = v71;
      }
    }
  }

  v111 = v107;
  v109 = v91;
LABEL_68:
  sub_1C4BEB3C0(&v111, &v110, &v109);
}

void sub_1C45F9C18()
{
  sub_1C43FBD3C();
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(v1);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v4 = v0;
  sub_1C4EF97F8();
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0] + 32;
  v8 = off_1E81EC5C8;
  v9 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    sub_1C4EF97D8(v21);
    if (!v21[3])
    {
      sub_1C4420C3C(v21, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_18:
      sub_1C45FB340();
      v17 = v6[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v5);
        v19 = v18 - v5;
        if (v16)
        {
          goto LABEL_24;
        }

        v6[2] = v19;
      }

      sub_1C43FE9F0();
      return;
    }

    v10 = sub_1C4461BB8(0, &qword_1EDDF0578, v8);
    if ((sub_1C43FBF98(v10) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (!v5)
    {
      sub_1C4431F7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v8 = v9;
      sub_1C4412CD0();
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v12 = sub_1C44182F4();
      v13 = j__malloc_size(v12);
      sub_1C4402C54(v13);
      if (v14)
      {
        if (v12 != v6 || &v6[v7 + 4] == 0)
        {
          memmove(0, v6 + 4, 8 * v7);
        }

        v6[2] = 0;
      }

      sub_1C4404BD8();
      sub_1C44040B4();
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      break;
    }

    *v7 = v20;
    v7 += 8;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1C45F9DD0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44109B4();
  v6 = type metadata accessor for Source(v5);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v47 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v49 = v15;
  v50 = &v44 - v14;
  v52 = 0;
  v45 = *(v15 + 80);
  v46 = (v45 + 32) & ~v45;
  v53 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0] + v46;
  v16 = 1;
  while (1)
  {
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v16)
      {
        v41 = v53[3];
        if (v41 >= 2)
        {
          v42 = v41 >> 1;
          v17 = __OFSUB__(v42, v52);
          v43 = v42 - v52;
          if (v17)
          {
            goto LABEL_50;
          }

          v53[2] = v43;
        }

        sub_1C43FE9F0();
        return;
      }

      sub_1C449E530(v16, v0);
      if (sub_1C44157D4(v0, 1, v6) != 1)
      {
        break;
      }

      sub_1C4420C3C(v0, &unk_1EC0C0760, &qword_1C4F170D0);
      v17 = __OFADD__(v16++, 1);
      if (v17)
      {
        goto LABEL_48;
      }
    }

    sub_1C448B210(v0, v10);
    v18 = v16 - 1;
    if (__OFSUB__(v16, 1))
    {
      break;
    }

    v17 = __OFADD__(v16++, 1);
    if (v17)
    {
      goto LABEL_49;
    }

    v19 = v18 > 0x40;
    if (v18 >= 0x40)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1 << v18;
    }

    if (v19)
    {
      v20 = 0;
    }

    if ((v20 & v2) >= 1)
    {
      v21 = v47;
      sub_1C448B210(v10, v47);
      sub_1C448B210(v21, v50);
      v22 = v52;
      if (v52)
      {
        v23 = v53;
        goto LABEL_41;
      }

      sub_1C4431F7C();
      if (v24)
      {
        goto LABEL_52;
      }

      sub_1C4412CD0();
      if (v24 ^ v17 | v31)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
      v27 = *(v49 + 72);
      v52 = v26;
      v48 = swift_allocObject();
      v28 = j__malloc_size(v48);
      if (!v27)
      {
        goto LABEL_53;
      }

      v29 = v46;
      v30 = v28 - v46;
      v31 = v28 - v46 == 0x8000000000000000 && v27 == -1;
      if (v31)
      {
        goto LABEL_54;
      }

      v32 = v30 / v27;
      v33 = v48;
      v34 = v53;
      *(v48 + 2) = v52;
      v33[3] = 2 * (v30 / v27);
      v35 = v33 + v29;
      v36 = v34[3];
      v37 = (v36 >> 1) * v27;
      if (v34[2])
      {
        if (v33 >= v34 && v35 < v34 + v46 + v37)
        {
          if (v33 != v34)
          {
            sub_1C4433124();
            swift_arrayInitWithTakeBackToFront();
LABEL_38:
            v37 = v44;
            v35 = v51;
            v36 = v52;
            v32 = v27;
          }

          v53[2] = 0;
          goto LABEL_40;
        }

        sub_1C4433124();
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_38;
      }

LABEL_40:
      v51 = v35 + v37;
      v22 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - (v36 >> 1);

      v23 = v48;
LABEL_41:
      v17 = __OFSUB__(v22, 1);
      v39 = v22 - 1;
      if (v17)
      {
        goto LABEL_51;
      }

      v52 = v39;
      v40 = v51;
      v48 = v23;
      sub_1C448B210(v50, v51);
      v51 = v40 + *(v49 + 72);
      v53 = v48;
    }

    else
    {
      sub_1C45FB340();
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1C45FA1A8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - v4;
  v6 = &qword_1EC0B9CF8;
  v7 = &unk_1C4F11660;
  sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  v42 = v11;
  v40 = *(v11 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v41 = (v40 + 32) & ~v40;
  v13 = MEMORY[0x1E69E7CC0] + v41;
  v14 = *(v1 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4A72854(0, v14);
  v16 = 0;
  v38[1] = v1;
  v39 = v5;
  v43 = v1;
  v44 = v15;
  while (1)
  {
    sub_1C45F6EC8();
    sub_1C440582C(v5);
    if (v29)
    {

      sub_1C4420C3C(v5, &qword_1EC0B9D20, &qword_1C4F117D0);
      v35 = v12[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v23 = __OFSUB__(v36, v16);
        v37 = v36 - v16;
        if (v23)
        {
          goto LABEL_35;
        }

        v12[2] = v37;
      }

      sub_1C43FE9F0();
      return;
    }

    sub_1C44CD9E0(v5, v10, v6, v7);
    if (v16)
    {
      v17 = v12;
    }

    else
    {
      sub_1C4431F7C();
      if (v18)
      {
        goto LABEL_32;
      }

      v19 = v10;
      v20 = v7;
      v21 = v6;
      sub_1C4412CD0();
      if (v18 ^ v23 | v29)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22;
      }

      sub_1C456902C(&qword_1EC0B9D28, qword_1C4F117D8);
      v25 = v41;
      v26 = *(v42 + 72);
      v17 = swift_allocObject();
      v27 = j__malloc_size(v17);
      if (!v26)
      {
        goto LABEL_33;
      }

      v28 = v27 - v25;
      v29 = v27 - v25 == 0x8000000000000000 && v26 == -1;
      if (v29)
      {
        goto LABEL_34;
      }

      v30 = v28 / v26;
      v17[2] = v24;
      v17[3] = 2 * (v28 / v26);
      v31 = v17 + v25;
      v32 = v12[3];
      v33 = (v32 >> 1) * v26;
      if (v12[2])
      {
        if (v17 < v12 || v31 >= v12 + v41 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v31[v33];
      v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - (v32 >> 1);

      v6 = v21;
      v7 = v20;
      v10 = v19;
      v5 = v39;
    }

    v23 = __OFSUB__(v16--, 1);
    if (v23)
    {
      break;
    }

    sub_1C44CD9E0(v10, v13, v6, v7);
    v13 += *(v42 + 72);
    v12 = v17;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1C45FA498()
{
  sub_1C43FBD3C();
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v3 = sub_1C4D295BC();
    if (!v3)
    {
      v16 = v1[3];
      if (v16 >= 2)
      {
        v17 = v16 >> 1;
        v8 = __OFSUB__(v17, v0);
        v18 = v17 - v0;
        if (v8)
        {
          goto LABEL_25;
        }

        v1[2] = v18;
      }

      sub_1C43FE9F0();
      return;
    }

    v4 = v3;
    if (!v0)
    {
      sub_1C4431F7C();
      if (v5)
      {
        goto LABEL_24;
      }

      sub_1C4412CD0();
      if (v5 ^ v8 | v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v10 = sub_1C44182F4();
      v11 = (j__malloc_size(v10) - 32) / 8;
      v10[2] = v9;
      v10[3] = (2 * v11) | 1;
      v12 = (v10 + 4);
      v13 = v1[3];
      v14 = v13 >> 1;
      if (v1[2])
      {
        if (v10 != v1 || v12 >= &v1[v14 + 4])
        {
          memmove(v10 + 4, v1 + 4, 8 * v14);
        }

        v1[2] = 0;
      }

      i = (v12 + 8 * v14);
      v0 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - (v13 >> 1);

      v1 = v10;
    }

    v8 = __OFSUB__(v0--, 1);
    if (v8)
    {
      break;
    }

    *i = v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C45FA5C0()
{
  sub_1C43FBD3C();
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for PhotosMetadataSequence.Iterator(v1);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v4 = v0;
  sub_1C4EFFAB8();
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0] + 32;
  v8 = 0x1E6978630;
  v9 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    sub_1C4EFFA98();
    if (!v21[3])
    {
      sub_1C4420C3C(v21, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_18:
      sub_1C45FB340();
      v17 = v6[3];
      if (v17 >= 2)
      {
        v18 = v17 >> 1;
        v16 = __OFSUB__(v18, v5);
        v19 = v18 - v5;
        if (v16)
        {
          goto LABEL_24;
        }

        v6[2] = v19;
      }

      sub_1C43FE9F0();
      return;
    }

    v10 = sub_1C4461BB8(0, &qword_1EDDDB860, v8);
    if ((sub_1C43FBF98(v10) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (!v5)
    {
      sub_1C4431F7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v8 = v9;
      sub_1C4412CD0();
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v12 = sub_1C44182F4();
      v13 = j__malloc_size(v12);
      sub_1C4402C54(v13);
      if (v14)
      {
        if (v12 != v6 || &v6[v7 + 4] == 0)
        {
          memmove(0, v6 + 4, 8 * v7);
        }

        v6[2] = 0;
      }

      sub_1C4404BD8();
      sub_1C44040B4();
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      break;
    }

    *v7 = v20;
    v7 += 8;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1C45FA778(uint64_t a1, uint64_t a2)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v3 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v2);
  v4 = 0;
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = (v3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = (MEMORY[0x1E69E7CC0] + 32);
  while (v6 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = *(v7 - 1);
    v10 = *v7;
    if (v4)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v8;
    }

    else
    {
      sub_1C4431F7C();
      if (v13)
      {
        goto LABEL_28;
      }

      sub_1C4412CD0();
      if (v13 ^ v16 | v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v12 = sub_1C44182F4();
      v18 = (j__malloc_size(v12) - 32) / 16;
      v12[2] = v17;
      v12[3] = 2 * v18;
      v19 = v12 + 4;
      v20 = v8[3] >> 1;
      v9 = &v12[2 * v20 + 4];
      v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
      if (v8[2])
      {
        if (v12 != v8 || v19 >= &v8[2 * v20 + 4])
        {
          memmove(v19, v8 + 4, 16 * v20);
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v8[2] = 0;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    v16 = __OFSUB__(v4--, 1);
    if (v16)
    {
      goto LABEL_27;
    }

    *v9 = v11;
    v9[1] = v10;
    v9 += 2;
    v7 += 2;
    ++v5;
    v8 = v12;
  }

  v22 = v8[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v16 = __OFSUB__(v23, v4);
  v24 = v23 - v4;
  if (!v16)
  {
    v8[2] = v24;
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1C45FA95C(uint64_t a1)
{
  v37 = sub_1C456902C(&unk_1EC0BE4E0, &qword_1C4F0E9F8);
  MEMORY[0x1EEE9AC00](v37);
  v3 = (&v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = 0;
  v8 = 0;
  v38 = v9;
  v33 = *(v9 + 80);
  v10 = MEMORY[0x1E69E7CC0];
  v34 = (v33 + 32) & ~v33;
  v35 = a1;
  v11 = MEMORY[0x1E69E7CC0] + v34;
  v36 = *(a1 + 16);
  while (v36 != v8)
  {
    v12 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
    v13 = v35 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
    v14 = *(v37 + 48);
    *v3 = v8;
    sub_1C4460050(v13, v3 + v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C44CD9E0(v3, v6, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    if (v7)
    {
      v15 = v10;
    }

    else
    {
      v16 = v10[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      sub_1C456902C(&qword_1EC0B8F30, &qword_1C4F0EA00);
      v19 = *(v38 + 72);
      v20 = v34;
      v15 = swift_allocObject();
      v21 = j__malloc_size(v15);
      if (!v19)
      {
        goto LABEL_33;
      }

      v22 = v21 - v20;
      if (v21 - v20 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_34;
      }

      v24 = v22 / v19;
      v15[2] = v18;
      v15[3] = 2 * (v22 / v19);
      v25 = v15 + v20;
      v26 = v10[3];
      v27 = (v26 >> 1) * v19;
      if (v10[2])
      {
        if (v15 < v10 || v25 >= v10 + v34 + v27)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v15 != v10)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v10[2] = 0;
      }

      v11 = &v25[v27];
      v7 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);
    }

    v29 = __OFSUB__(v7--, 1);
    if (v29)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1C44CD9E0(v6, v11, &unk_1EC0BE4E0, &qword_1C4F0E9F8);
    v11 += *(v38 + 72);
    ++v8;
    v10 = v15;
  }

  v30 = v10[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v29 = __OFSUB__(v31, v7);
  v32 = v31 - v7;
  if (!v29)
  {
    v10[2] = v32;
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1C45FAC9C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = (v3 + 40 * v2);
      v13 = v12[5];
      v14 = v12[7];
      v33 = v12[6];
      v34 = v12[4];
      v15 = v12[8];
      v36 = v15;
      v37 = v13;
      v35 = v14;
      if (v4)
      {
        v16 = v15;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v17 = v16;
        v18 = v7;
      }

      else
      {
        sub_1C4431F7C();
        if (v19)
        {
          goto LABEL_34;
        }

        sub_1C4412CD0();
        if (v19 ^ v22 | v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = v20;
        }

        sub_1C456902C(&qword_1EC0B9D08, &qword_1C4F11670);
        v18 = swift_allocObject();
        v24 = (j__malloc_size(v18) - 32) / 40;
        v18[2] = v23;
        v18[3] = 2 * v24;
        v25 = v18 + 4;
        v26 = v7[3] >> 1;
        v8 = &v18[5 * v26 + 4];
        v4 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
        if (v7[2])
        {
          if (v18 != v7 || v25 >= &v7[5 * v26 + 4])
          {
            memmove(v25, v7 + 4, 40 * v26);
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v28 = v36;
          v7[2] = 0;
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v29 = v36;
        }
      }

      v22 = __OFSUB__(v4--, 1);
      if (v22)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v34;
      v8[1] = v37;
      v8[2] = v33;
      v8[3] = v35;
      v8[4] = v36;
      v8 += 5;
      v7 = v18;
    }

    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = *(v6 + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  v30 = v7[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v22 = __OFSUB__(v31, v4);
  v32 = v31 - v4;
  if (!v22)
  {
    v7[2] = v32;
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1C45FAED4(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; v3; i += 48)
  {
LABEL_3:
    v9 = *(v3 + 16);
    if (v2 == v9)
    {
      break;
    }

    if (v2 >= v9)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v13 = v3 + 48 * v2;
    v32 = *(v13 + 48);
    v33 = *(v13 + 40);
    v30 = *(v13 + 64);
    v31 = *(v13 + 56);
    v29 = *(v13 + 72);
    if (v4)
    {
      v14 = *(v13 + 32);
      sub_1C45D7F78(v14, *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72));
      v15 = v7;
      goto LABEL_27;
    }

    sub_1C4431F7C();
    if (v17)
    {
      goto LABEL_37;
    }

    v14 = v16;
    sub_1C4412CD0();
    if (v17 ^ v20 | v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    sub_1C456902C(&qword_1EC0B88D8, &qword_1C4F139F0);
    v15 = swift_allocObject();
    v22 = (j__malloc_size(v15) - 32) / 48;
    v15[2] = v21;
    v15[3] = 2 * v22;
    v23 = v7[3];
    v4 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v23 >> 1);
    i = &v15[6 * (v23 >> 1) + 4];
    if (v7[2])
    {
      v28 = 48 * (v23 >> 1);
      if (v15 >= v7 && v15 + 4 < &v7[6 * (v23 >> 1) + 4])
      {
        sub_1C45D7F78(v14, v33, v32, v31, v30, v29);
        if (v15 != v7)
        {
LABEL_24:
          memmove(v15 + 4, v7 + 4, v28);
        }

        v7[2] = 0;
        goto LABEL_26;
      }

      sub_1C45D7F78(v14, v33, v32, v31, v30, v29);
      goto LABEL_24;
    }

    sub_1C45D7F78(v14, v33, v32, v31, v30, v29);
LABEL_26:

LABEL_27:
    v20 = __OFSUB__(v4--, 1);
    if (v20)
    {
      goto LABEL_35;
    }

    ++v2;
    *i = v14;
    *(i + 8) = v33;
    *(i + 16) = v32;
    *(i + 24) = v31;
    *(i + 32) = v30;
    *(i + 40) = v29;
    v7 = v15;
  }

  while (1)
  {
    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
      goto LABEL_34;
    }

    v11 = v5 + 1;
    v12 = *(v6 + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v2 = 0;
    v3 = v12;
    v5 = v11;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v25 = v7[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v20 = __OFSUB__(v26, v4);
  v27 = v26 - v4;
  if (!v20)
  {
    v7[2] = v27;
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C45FB124(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1C4428DA0(a1);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v3 & 0xFFFFFFFFFFFFFF8;
  v27 = v3 & 0xFFFFFFFFFFFFFF8;
  v28 = v3;
  while (v4 != a2)
  {
    if (v6)
    {
      v10 = MEMORY[0x1C6940F90](a2, v3);
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a2 >= *(v9 + 16))
      {
        goto LABEL_31;
      }

      v10 = *(v3 + 8 * a2 + 32);
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_30;
    }

    if (!v5)
    {
      sub_1C4431F7C();
      if (v11)
      {
        goto LABEL_33;
      }

      v12 = v4;
      v13 = v6;
      sub_1C4412CD0();
      if (v11 ^ v16 | v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v18 = sub_1C44182F4();
      v19 = (j__malloc_size(v18) - 32) / 8;
      v18[2] = v17;
      v18[3] = (2 * v19) | 1;
      v20 = (v18 + 4);
      v21 = v7[3];
      v22 = v21 >> 1;
      if (v7[2])
      {
        if (v18 != v7 || v20 >= &v7[v22 + 4])
        {
          memmove(v18 + 4, v7 + 4, 8 * v22);
        }

        v7[2] = 0;
      }

      v8 = (v20 + 8 * v22);
      v5 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v7 = v18;
      v6 = v13;
      v4 = v12;
      v9 = v27;
      v3 = v28;
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      goto LABEL_32;
    }

    *v8++ = v10;
    ++a2;
  }

  v24 = v7[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v16 = __OFSUB__(v25, v5);
  v26 = v25 - v5;
  if (!v16)
  {
    v7[2] = v26;
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1C45FB2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorDigestTaskIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45FB340()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C45FB3A0(uint64_t *a1, int a2)
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

uint64_t sub_1C45FB3E0(uint64_t result, int a2, int a3)
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

unint64_t sub_1C45FB444()
{
  result = qword_1EC0B9D18;
  if (!qword_1EC0B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D18);
  }

  return result;
}

uint64_t sub_1C45FB4A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C45FB4E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1C45FB538()
{
  v0 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HashGenerator();
  swift_allocObject();
  sub_1C4886F04();
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v6 = sub_1C45FBEF0(0xD000000000000037, 0x80000001C4F8D720);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = sub_1C45FC9DC(0xD000000000000016, 0x80000001C4F8D760, 1701409396, 0xE400000000000000, v6);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v7;
  v10 = v8;
  sub_1C45FC9DC(0xD00000000000001DLL, 0x80000001C4F8D780, 0x7473696C70, 0xE500000000000000, v6);
  if (!v11)
  {

LABEL_7:
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DDE0);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v16))
    {
      *swift_slowAlloc() = 0;
      sub_1C4410910(&dword_1C43F8000, v17, v18, "Unable to get path of resources in IntelligencePlatformCore");
      sub_1C43FBE2C();
    }

    goto LABEL_11;
  }

  sub_1C4461BB8(0, &qword_1EC0B9D30, off_1E81EC588);
  v12 = sub_1C45FBF54(v9, v10);
  if (!v12)
  {

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DDE0);
    v15 = sub_1C4F00968();
    v21 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v21))
    {
      *swift_slowAlloc() = 0;
      sub_1C4410910(&dword_1C43F8000, v22, v23, "Unable to create bundle ID trie for filtering");
      sub_1C43FBE2C();

      return 0;
    }

LABEL_11:

    return 0;
  }

  v13 = v12;
  sub_1C4EF9838();

  v24 = sub_1C4EF9938();
  v26 = v25;
  (*(v2 + 8))(v5, v0);
  sub_1C4EF96B8();
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C45FCA98();
  sub_1C4EF9698();

  sub_1C4434000(v24, v26);

  return v13;
}

BOOL sub_1C45FBA6C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1C4F01108();
  LODWORD(a4) = [a4 payloadForString_];

  v12 = a4 != 0;
  if (a4 && (a3 & 1) != 0)
  {
    return !sub_1C4499AD0(a1, a2, a6);
  }

  return v12;
}

uint64_t sub_1C45FBAF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C4F8D7A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C4F8D7C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C45FBBCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C45FBC00(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9D40, &qword_1C4F11B48);
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1C4409678(a1, a1[3]);
  sub_1C45FCB0C();
  sub_1C4F02BC8();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v11 = 0;
  sub_1C45A2840();
  sub_1C440676C();
  v9 = v12;
  v11 = 1;
  sub_1C440676C();
  (*(v4 + 8))(v7, v2);
  sub_1C440962C(a1);
  return v9;
}

uint64_t sub_1C45FBDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FBAF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45FBDE4(uint64_t a1)
{
  v2 = sub_1C45FCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FBE20(uint64_t a1)
{
  v2 = sub_1C45FCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45FBE5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C45FBC00(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double sub_1C45FBE94@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v7[2] = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  sub_1C45FBE88(&v6);
  v4 = v7[0];
  *a1 = v6;
  a1[1] = v4;
  result = *(v7 + 9);
  *(a1 + 25) = *(v7 + 9);
  return result;
}

id sub_1C45FBEF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F01108();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

id sub_1C45FBF54(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4F01108();

  v4 = [v2 initWithPath_];

  return v4;
}

void sub_1C45FBFC8(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v115 = a7;
  v116 = a8;
  v108 = a6;
  v109 = a5;
  v113 = a11;
  v114 = a10;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 24);
  v111 = *(a1 + 16);
  v112 = v15;
  v110 = v17;
  v117 = *(a1 + 32);
  v118 = a9;
  v18 = *(a1 + 40);
  v19 = sub_1C4EFDAB8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v107 - v26;
  switch(v18)
  {
    case 0:
      v28 = a2 & 1;
      v29 = v112;
      if (sub_1C45FBA6C(v16, v112, v28, a4, v24, v109))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        LOBYTE(v18) = 0;
        v31 = v115;
        v30 = v116;
        goto LABEL_81;
      }

      v76 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v76);
      v77 = sub_1C4886564(v16, v29, v27);
      v79 = v78;
      sub_1C44686E4(v27);
      v37 = 0;
      v117 = 0;
      LOBYTE(v18) = 0;
      if (v79)
      {
        v16 = v77;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v79)
      {
        v29 = v79;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      goto LABEL_104;
    case 1:
      v36 = v110;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v42 = a2 & 1;
      v29 = v112;
      if (sub_1C45FBA6C(v16, v112, v42, a4, v43, v109))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        LOBYTE(v18) = 1;
        goto LABEL_22;
      }

      v80 = v36;
      v81 = v111;
      if (!sub_1C4499AD0(v111, v80, v108))
      {
        v82 = sub_1C4EF9CD8();
        sub_1C440BAA8(v27, 1, 1, v82);
        v83 = sub_1C4886564(v81, v80, v27);
        v85 = v84;
        sub_1C44686E4(v27);

        if (v85)
        {
          v86 = v83;
        }

        else
        {
          v86 = 0;
        }

        v87 = 0xE000000000000000;
        if (v85)
        {
          v87 = v85;
        }

        v110 = v87;
        v111 = v86;
        v29 = v112;
      }

      v31 = v115;
      v30 = v116;
      v88 = sub_1C4EF9CD8();
      LOBYTE(v18) = 1;
      sub_1C440BAA8(v27, 1, 1, v88);
      v16 = sub_1C4886564(v16, v29, v27);
      v90 = v89;
      sub_1C44686E4(v27);
      v117 = 0;
      if (v90)
      {
        v29 = v90;
      }

      else
      {
        v16 = 0;
        v29 = 0xE000000000000000;
      }

LABEL_81:
      v36 = v110;
      v37 = v111;
      break;
    case 4:
      v32 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v32);
      v33 = sub_1C4886564(v16, v112, v27);
      v35 = v34;
      sub_1C44686E4(v27);
      v117 = 0;
      if (v35)
      {
        v16 = v33;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v35)
      {
        v29 = v35;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v37 = v111 & 0x1FFFFFFFFLL;
      LOBYTE(v18) = 4;
      goto LABEL_104;
    case 7:
      v50 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v50);
      v51 = sub_1C4886564(v16, v112, v27);
      v53 = v52;
      sub_1C44686E4(v27);
      v117 = 0;
      if (v53)
      {
        v16 = v51;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v53)
      {
        v29 = v53;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v37 = v111 & 1;
      LOBYTE(v18) = 7;
      goto LABEL_104;
    case 9:
      v54 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v54);
      v55 = sub_1C4886564(v16, v112, v27);
      v57 = v56;
      sub_1C44686E4(v27);
      v117 = 0;
      if (v57)
      {
        v16 = v55;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v57)
      {
        v29 = v57;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v37 = v111 & 1;
      LOBYTE(v18) = 9;
      goto LABEL_104;
    case 10:
      v38 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v38);
      v39 = sub_1C4886564(v16, v112, v27);
      v41 = v40;
      sub_1C44686E4(v27);
      v117 = 0;
      if (v41)
      {
        v16 = v39;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v41)
      {
        v29 = v41;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v37 = v111 & 1;
      LOBYTE(v18) = 10;
      goto LABEL_104;
    case 12:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v44 = a2 & 1;
      v29 = v112;
      if (!sub_1C45FBA6C(v16, v112, v44, a4, v45, v109))
      {
        v91 = sub_1C4EF9CD8();
        sub_1C440BAA8(v27, 1, 1, v91);
        v92 = sub_1C4886564(v16, v29, v27);
        v94 = v93;
        sub_1C44686E4(v27);
        if (v94)
        {
          v16 = v92;
        }

        else
        {
          v16 = 0;
        }

        if (!v94)
        {
          v94 = 0xE000000000000000;
        }

        sub_1C440BAA8(v27, 1, 1, v91);
        v95 = sub_1C4886564(v111, v110, v27);
        v97 = v96;
        sub_1C44686E4(v27);
        if (v97)
        {
          v37 = v95;
        }

        else
        {
          v37 = 0;
        }

        if (v97)
        {
          v36 = v97;
        }

        else
        {
          v36 = 0xE000000000000000;
        }

        v29 = v94;
        LOBYTE(v18) = 12;
        goto LABEL_104;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v36 = v110;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      LOBYTE(v18) = 12;
LABEL_22:
      v31 = v115;
      v30 = v116;
      v37 = v111;
      break;
    case 13:
      v46 = sub_1C4EF9CD8();
      sub_1C440BAA8(v27, 1, 1, v46);
      v47 = sub_1C4886564(v16, v112, v27);
      v49 = v48;
      sub_1C44686E4(v27);
      v37 = 0;
      v117 = 0;
      if (v49)
      {
        v16 = v47;
      }

      else
      {
        v16 = 0;
      }

      v36 = 0;
      if (v49)
      {
        v29 = v49;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      LOBYTE(v18) = 13;
      goto LABEL_104;
    case 14:
      v36 = v112;
      if (v112)
      {
        v72 = sub_1C4EF9CD8();
        sub_1C440BAA8(v27, 1, 1, v72);
        v73 = sub_1C4886564(v16, v36, v27);
        v75 = v74;
        sub_1C44686E4(v27);
        v117 = 0;
        if (v75)
        {
          v16 = v73;
        }

        else
        {
          v16 = 0;
        }

        v36 = 0;
        if (v75)
        {
          v29 = v75;
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        v37 = v111 & 0x1FFFFFFFFLL;
        LOBYTE(v18) = 14;
LABEL_104:
        v31 = v115;
        v30 = v116;
      }

      else
      {
        v29 = 0;
        v117 = 0;
        v37 = v111 & 0x1FFFFFFFFLL;
        LOBYTE(v18) = 14;
        v31 = v115;
        v30 = v116;
      }

      break;
    case 15:
      if (a3)
      {
        v58 = *(v16 + 16);
        if (v58)
        {
          v119 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v58, 0);
          v59 = (v16 + 40);
          v16 = v119;
          do
          {
            v60 = *v59;
            v120 = *(v59 - 1);
            v121 = v60;
            swift_bridgeObjectRetain_n();
            v61 = sub_1C4F01438();
            v63 = v62;
            v64 = sub_1C4EF9CD8();
            sub_1C440BAA8(v27, 1, 1, v64);
            v65 = sub_1C4886564(v61, v63, v27);
            v67 = v66;
            sub_1C44686E4(v27);

            if (v67)
            {
              v68 = v65;
            }

            else
            {
              v68 = 0;
            }

            if (!v67)
            {
              v67 = 0xE000000000000000;
            }

            v119 = v16;
            v70 = *(v16 + 16);
            v69 = *(v16 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_1C44CD9C0(v69 > 1, v70 + 1, 1);
              v16 = v119;
            }

            *(v16 + 16) = v70 + 1;
            v71 = v16 + 16 * v70;
            *(v71 + 32) = v68;
            *(v71 + 40) = v67;
            v59 += 2;
            --v58;
          }

          while (v58);
        }

        else
        {
          v16 = MEMORY[0x1E69E7CC0];
        }

        v29 = 0;
        v37 = 0;
        v36 = 0;
        v117 = 0;
        LOBYTE(v18) = 15;
      }

      else
      {
        (*(v20 + 104))(v22, *MEMORY[0x1E69A9420], v19, v25);
        v98 = sub_1C45D2400();
        v100 = v99;
        v101 = sub_1C4EF9CD8();
        sub_1C440BAA8(v27, 1, 1, v101);
        v102 = sub_1C4886564(v98, v100, v27);
        v104 = v103;
        sub_1C44686E4(v27);

        if (v104)
        {
          v105 = v102;
        }

        else
        {
          v105 = 0;
        }

        if (v104)
        {
          v106 = v104;
        }

        else
        {
          v106 = 0xE000000000000000;
        }

        sub_1C45D29E0(v22, v105, v106, &v120);
        v16 = v120;
        v29 = v121;
        v37 = v122;
        v36 = v123;
        v117 = v124;
        LOBYTE(v18) = v125;
      }

      goto LABEL_104;
    default:
      sub_1C45A2358(a1, &v120);
      v31 = v115;
      v30 = v116;
      v37 = v111;
      v29 = v112;
      v36 = v110;
      break;
  }

  *v30 = v16;
  *(v30 + 8) = v29;
  *(v30 + 16) = v37;
  *(v30 + 24) = v36;
  *(v30 + 32) = v117;
  *(v30 + 40) = v18;
}

double sub_1C45FC8DC@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v15 = a4;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45FBFC8(a1, a2, a3, v15, a6, a7, v15, &v18, a5, a6, a7);
  v16 = v19[0];
  *a8 = v18;
  a8[1] = v16;
  result = *(v19 + 9);
  *(a8 + 25) = *(v19 + 9);
  return result;
}

double sub_1C45FC994@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1C45FC8DC(a1, a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), &v8);
  v6 = v9[0];
  *a4 = v8;
  a4[1] = v6;
  result = *(v9 + 9);
  *(a4 + 25) = *(v9 + 9);
  return result;
}

uint64_t sub_1C45FC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();

  v7 = sub_1C4F01108();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1C4F01138();

  return v9;
}

unint64_t sub_1C45FCA98()
{
  result = qword_1EC0B9D38;
  if (!qword_1EC0B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D38);
  }

  return result;
}

unint64_t sub_1C45FCB0C()
{
  result = qword_1EC0B9D48;
  if (!qword_1EC0B9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BehaviorPostProcessingSettings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45FCC40()
{
  result = qword_1EC0B9D50;
  if (!qword_1EC0B9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D50);
  }

  return result;
}

unint64_t sub_1C45FCC98()
{
  result = qword_1EC0B9D58;
  if (!qword_1EC0B9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D58);
  }

  return result;
}

unint64_t sub_1C45FCCF0()
{
  result = qword_1EC0B9D60;
  if (!qword_1EC0B9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D60);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PoiCategoryContent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C45FCD58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45FCD78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C45FCDA8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45FCDC4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_1C45FCDF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void sub_1C45FCEC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v30 = *(a1 + 16);
    sub_1C44CD9C0(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = v30;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_39;
        }

        ++v7;
        v10 = v5 & 0x3F;
        v11 = 0xE900000000000079;
        v12 = 0x6144664F656D6974;
        switch(*(*(a1 + 48) + v5))
        {
          case 1:
            v12 = 0x6144664F74726170;
            break;
          case 2:
            v12 = 0x6954657372616F63;
            v11 = 0xEF796144664F656DLL;
            break;
          case 3:
            v11 = 0xE90000000000006BLL;
            v12 = 0x656557664F796164;
            break;
          case 4:
            v11 = 0xEA00000000006B65;
            v12 = 0x6557664F74726170;
            break;
          case 5:
            v11 = 0xE300000000000000;
            v12 = 6909804;
            break;
          case 6:
            v12 = 0x636F4C6F7263696DLL;
            v13 = 0x6E6F697461;
            goto LABEL_19;
          case 7:
            v12 = 0x6369666963657073;
            v11 = 0xEF687361486F6547;
            break;
          case 8:
            v12 = 0x6547657372616F63;
            v13 = 0x687361486FLL;
LABEL_19:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v12 = 0x6F6547656772616CLL;
            v11 = 0xEC00000068736148;
            break;
          case 0xA:
            v11 = 0xE400000000000000;
            v12 = 1768319351;
            break;
          case 0xB:
            v11 = 0xE900000000000065;
            v12 = 0x646F4D7375636F66;
            break;
          case 0xC:
            v12 = 0x74536E6F69746F6DLL;
            v11 = 0xEB00000000657461;
            break;
          default:
            break;
        }

        v15 = *(v31 + 16);
        v14 = *(v31 + 24);
        if (v15 >= v14 >> 1)
        {
          v28 = v3;
          v29 = v7;
          v27 = v4;
          sub_1C44CD9C0(v14 > 1, v15 + 1, 1);
          v10 = v5 & 0x3F;
          v4 = v27;
          v3 = v28;
          v7 = v29;
          v8 = a1 + 56;
          v6 = v30;
        }

        *(v31 + 16) = v15 + 1;
        v16 = v31 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v11;
        if (v4)
        {
          goto LABEL_43;
        }

        v17 = 1 << *(a1 + 32);
        if (v5 >= v17)
        {
          goto LABEL_40;
        }

        v18 = *(v8 + 8 * v9);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_42;
        }

        v19 = v18 & (-2 << v10);
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (a1 + 64 + 8 * v9);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              v25 = v7;
              sub_1C440951C(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v30;
              v7 = v25;
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_33;
            }
          }

          v26 = v7;
          sub_1C440951C(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v30;
          v7 = v26;
        }

LABEL_33:
        if (v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1C45FD2E4()
{
  sub_1C4D50A90(&unk_1F43D2940);
  v7 = v0;
  v8 = 0;
  *v330 = xmmword_1C4F0D130;
  do
  {
    v9 = *(&unk_1F43D2910 + v8 + 32);
    sub_1C440BB58(v0, v1, v2, v3, v4, v5, v6);
    MEMORY[0x1C69417F0](11);
    v10 = sub_1C46001A8(v9);
    v12 = v11;
    sub_1C44364A0(v10, v11, v13, v14, v15, v16, v17, v18, v312, v8, v330[0], v330[1], v346, v355, v364, __src);
    sub_1C4F01298();

    v19 = sub_1C4F02B68();
    v20 = -1 << *(v7 + 32);
    v21 = v19 & ~v20;
    if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_39:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v9, 0, v21);
      v7 = __src;
      goto LABEL_40;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = (*(v7 + 48) + 16 * v21);
      if (!v23[8])
      {
        break;
      }

LABEL_38:
      v21 = (v21 + 1) & v22;
      if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v24 = 0xE900000000000079;
    v25 = 0x6144664F656D6974;
    switch(*v23)
    {
      case 1:
        v25 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        v25 = sub_1C440679C();
        break;
      case 3:
        sub_1C44040F0();
        v24 = v27 - 14;
        v25 = sub_1C441C7F8();
        break;
      case 4:
        v25 = sub_1C4431F88();
        break;
      case 5:
        v25 = sub_1C440215C();
        break;
      case 6:
        v25 = sub_1C440D0A4();
        goto LABEL_18;
      case 7:
        v25 = sub_1C43FEBC8();
        break;
      case 8:
        v25 = sub_1C441F4F8();
LABEL_18:
        v24 = 0xED00000000000079;
        break;
      case 9:
        v25 = sub_1C43FFDEC();
        break;
      case 0xA:
        v25 = sub_1C4415F60();
        break;
      case 0xB:
        sub_1C44040F0();
        v24 = v26 - 20;
        v25 = sub_1C443313C();
        break;
      case 0xC:
        v25 = sub_1C440584C();
        break;
      default:
        break;
    }

    v28 = 0x6144664F656D6974;
    v29 = 0xE900000000000079;
    switch(v9)
    {
      case 1:
        sub_1C440F310();
        v28 = v30 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        sub_1C440DEDC();
        v28 = v33 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v29 = 0xEF796144664F656DLL;
        break;
      case 3:
        sub_1C44040F0();
        v29 = v34 - 14;
        sub_1C4409A64();
        break;
      case 4:
        sub_1C440F310();
        v28 = v32 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        v29 = 0xEA00000000006B65;
        break;
      case 5:
        v29 = 0xE300000000000000;
        v28 = 6909804;
        break;
      case 6:
        sub_1C4404BF8();
        v35 = 0x6E6F697461;
        goto LABEL_32;
      case 7:
        sub_1C44148EC();
        v29 = 0xEF687361486F6547;
        break;
      case 8:
        sub_1C440DEDC();
        v28 = v36 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
        v35 = 0x687361486FLL;
LABEL_32:
        v29 = v35 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        sub_1C4413E94();
        v29 = 0xEC00000068736148;
        break;
      case 10:
        v29 = 0xE400000000000000;
        v28 = 1768319351;
        break;
      case 11:
        sub_1C44040F0();
        v29 = v31 - 20;
        sub_1C4423A90();
        break;
      case 12:
        sub_1C440EF3C();
        v29 = 0xEB00000000657461;
        break;
      default:
        break;
    }

    v37 = v25 == v28 && v24 == v29;
    if (!v37)
    {
      v38 = sub_1C4F02938();

      if (v38)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

LABEL_40:
    sub_1C440BB58(v39, v40, v41, v42, v43, v44, v45);
    v46 = MEMORY[0x1C69417F0](12);
    sub_1C44364A0(v46, v47, v48, v49, v50, v51, v52, v53, v313, v321, v331, v339, v347, v356, v364, __src);
    sub_1C4F01298();

    sub_1C4F02B68();
    sub_1C440CAC8();
    sub_1C4434E04();
    if (((*(v7 + 56 + v55) >> v12) & 1) == 0)
    {
LABEL_77:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v9, 1, v12);
      v7 = __src;
      goto LABEL_78;
    }

    v56 = ~v54;
    while (2)
    {
      v57 = (*(v7 + 48) + 16 * v12);
      if (v57[8] != 1)
      {
LABEL_76:
        v12 = (v12 + 1) & v56;
        sub_1C444FC38();
        if (((*(v7 + 56 + v73) >> v12) & 1) == 0)
        {
          goto LABEL_77;
        }

        continue;
      }

      break;
    }

    v58 = 0xE900000000000079;
    v59 = 0x6144664F656D6974;
    switch(*v57)
    {
      case 1:
        v59 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        v59 = sub_1C440679C();
        break;
      case 3:
        sub_1C44040F0();
        v58 = v61 - 14;
        v59 = sub_1C441C7F8();
        break;
      case 4:
        v59 = sub_1C4431F88();
        break;
      case 5:
        v59 = sub_1C440215C();
        break;
      case 6:
        v59 = sub_1C440D0A4();
        goto LABEL_56;
      case 7:
        v59 = sub_1C43FEBC8();
        break;
      case 8:
        v59 = sub_1C441F4F8();
LABEL_56:
        v58 = 0xED00000000000079;
        break;
      case 9:
        v59 = sub_1C43FFDEC();
        break;
      case 0xA:
        v59 = sub_1C4415F60();
        break;
      case 0xB:
        sub_1C44040F0();
        v58 = v60 - 20;
        v59 = sub_1C443313C();
        break;
      case 0xC:
        v59 = sub_1C440584C();
        break;
      default:
        break;
    }

    v62 = 0x6144664F656D6974;
    v63 = 0xE900000000000079;
    switch(v9)
    {
      case 1:
        sub_1C440F310();
        v62 = v64 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        sub_1C440DEDC();
        v62 = v67 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v63 = 0xEF796144664F656DLL;
        break;
      case 3:
        sub_1C44040F0();
        v63 = v68 - 14;
        sub_1C4409A64();
        break;
      case 4:
        sub_1C440F310();
        v62 = v66 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        v63 = 0xEA00000000006B65;
        break;
      case 5:
        v63 = 0xE300000000000000;
        v62 = 6909804;
        break;
      case 6:
        sub_1C4404BF8();
        v69 = 0x6E6F697461;
        goto LABEL_70;
      case 7:
        sub_1C44148EC();
        v63 = 0xEF687361486F6547;
        break;
      case 8:
        sub_1C440DEDC();
        v62 = v70 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
        v69 = 0x687361486FLL;
LABEL_70:
        v63 = v69 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        sub_1C4413E94();
        v63 = 0xEC00000068736148;
        break;
      case 10:
        v63 = 0xE400000000000000;
        v62 = 1768319351;
        break;
      case 11:
        sub_1C44040F0();
        v63 = v65 - 20;
        sub_1C4423A90();
        break;
      case 12:
        sub_1C440EF3C();
        v63 = 0xEB00000000657461;
        break;
      default:
        break;
    }

    if (v59 != v62 || v58 != v63)
    {
      v72 = sub_1C4F02938();

      if (v72)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

LABEL_78:
    v357 = sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
    v74 = swift_allocObject();
    *(v74 + 16) = *v332;
    *(v74 + 32) = v9;
    sub_1C4D50668();
    v76 = v75;
    sub_1C440BB58(v75, v77, v78, v79, v80, v81, v82);
    sub_1C444B010();
    v91 = sub_1C44364A0(v83, v84, v85, v86, v87, v88, v89, v90, v314, v322, v332[0], v332[1], v348, v357, v364, __src);
    sub_1C4851148(v91, v92);
    sub_1C4F02B68();
    sub_1C4434E04();
    v95 = v323;
    if (((*(v7 + 56 + v94) >> v12) & 1) == 0)
    {
LABEL_84:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v364 = v7;
      v102 = *(v7 + 16);
      v103 = *(v7 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v103 <= v102)
      {
        v111 = v102 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1C483EFEC(v111, v104, v105, v106, v107, v108, v109, v110, v312, v323, v330[0], v330[1], v346, v355, v364, __src, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
        }

        else
        {
          sub_1C484C074(v111, v104, v105, v106, v107, v108, v109, v110, v312, v323, v330[0], v330[1], v346, v355, v364, __src, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
        }

        v7 = v364;
        sub_1C440BB58(v112, v113, v114, v115, v116, v117, v118);
        sub_1C444B010();
        v127 = sub_1C44364A0(v119, v120, v121, v122, v123, v124, v125, v126, v315, v324, v333, v340, v349, v358, v364, __src);
        sub_1C4851148(v127, v128);
        sub_1C4F02B68();
        sub_1C4434E04();
        if (((*(v7 + 56 + v130) >> v12) & 1) == 0)
        {
          goto LABEL_96;
        }

        v131 = ~v129;
        while (1)
        {
          sub_1C43FEBEC();
          if (v37)
          {
            v132 = sub_1C443F0E0();
            sub_1C4839AB4(v132, v76);
            v134 = v133;
            sub_1C44189CC();
            if (v134)
            {
              break;
            }
          }

          LOBYTE(v12) = (v12 + 1) & v131;
          sub_1C444FC38();
          if (((*(v7 + 56 + v135) >> v12) & 1) == 0)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C4849A60();
          v7 = v364;
        }

LABEL_96:
        sub_1C440586C();
        *v136 = v76;
        sub_1C4433BD4(v136);
        if (!v138)
        {
          *(v7 + 16) = v137;
          goto LABEL_98;
        }

        __break(1u);
LABEL_167:
        __break(1u);
      }

LABEL_168:
      result = sub_1C4F029E8();
      __break(1u);
      return result;
    }

    v96 = ~v93;
    while (1)
    {
      sub_1C43FEBEC();
      if (v37)
      {
        v97 = sub_1C443F0E0();
        sub_1C4839AB4(v97, v76);
        v99 = v98;
        sub_1C44189CC();
        if (v99)
        {
          break;
        }
      }

      LOBYTE(v12) = (v12 + 1) & v96;
      sub_1C444FC38();
      if (((*(v7 + 56 + v100) >> v12) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

LABEL_98:

    v8 = v95 + 1;
    v139 = swift_allocObject();
    *(v139 + 16) = *v330;
    *(v139 + 32) = v9;
    sub_1C4D50668();
    v141 = v140;
    sub_1C440BB58(v140, v142, v143, v144, v145, v146, v147);
    MEMORY[0x1C69417F0](14);
    sub_1C4851148(&__src, v141);
    v148 = sub_1C4F02B68();
    v149 = v7 + 56;
    v150 = -1 << *(v7 + 32);
    v151 = v148 & ~v150;
    if ((*(v7 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151))
    {
      v152 = ~v150;
      while (1)
      {
        if (*(*(v7 + 48) + 16 * v151 + 8) == 3)
        {
          v153 = sub_1C443F0E0();
          sub_1C4839AB4(v153, v141);
          v155 = v154;
          sub_1C442F0D8();
          if (v155)
          {
            break;
          }
        }

        v151 = (v151 + 1) & v152;
        if (((*(v149 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
        {
          goto LABEL_103;
        }
      }
    }

    else
    {
LABEL_103:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v141, 3, v151);
      v7 = __src;
    }
  }

  while (v8 != 13);
  sub_1C4D50668();
  v157 = v156;
  sub_1C440BB58(v156, v158, v159, v160, v161, v162, v163);
  sub_1C444B010();
  v164 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440216C(v164, v165, v166, v167, v168, v169, v170, v171, v312, v323, v330[0], v330[1], v346, v355, v364);
  sub_1C4F02B68();
  v172 = v7 + 56;
  sub_1C440CAC8();
  sub_1C4434E04();
  if (((*(v172 + v174) >> v149) & 1) == 0)
  {
LABEL_115:
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v364 = v7;
    v178 = *(v7 + 16);
    v172 = *(v7 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v172 <= v178)
    {
      v188 = v178 + 1;
      if (v180)
      {
        sub_1C483EFEC(v188, v181, v182, v183, v184, v185, v186, v187, v316, v325, v334, v341, v350, v359, v364, __src, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
      }

      else
      {
        sub_1C484C074(v188, v181, v182, v183, v184, v185, v186, v187, v316, v325, v334, v341, v350, v359, v364, __src, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
      }

      v7 = v364;
      sub_1C440BB58(v189, v190, v191, v192, v193, v194, v195);
      sub_1C444B010();
      sub_1C440216C(v196, v197, v198, v199, v200, v201, v202, v203, v317, v326, v335, v342, v351, v360, v364);
      sub_1C4F02B68();
      v172 = v7 + 56;
      sub_1C440CAC8();
      sub_1C4434E04();
      if ((*(v7 + 56 + v205) >> v149))
      {
        v206 = ~v204;
        do
        {
          sub_1C43FEBEC();
          if (v37)
          {
            v207 = sub_1C443F0E0();
            sub_1C4839AB4(v207, v157);
            v178 = v208;
            sub_1C44189CC();
            if (v178)
            {
              goto LABEL_168;
            }
          }

          LOBYTE(v149) = (v149 + 1) & v206;
          sub_1C444FC38();
        }

        while (((*(v172 + v209) >> v149) & 1) != 0);
      }
    }

    else if ((v180 & 1) == 0)
    {
      sub_1C4849A60();
      v7 = v364;
    }

    sub_1C440586C();
    *v210 = v157;
    sub_1C4433BD4(v210);
    if (!v138)
    {
      *(v7 + 16) = v211;
      goto LABEL_129;
    }

    goto LABEL_167;
  }

  v175 = ~v173;
  while (1)
  {
    sub_1C43FEBEC();
    if (v37)
    {
      v176 = sub_1C443F0E0();
      sub_1C4839AB4(v176, v157);
      v178 = v177;
      sub_1C44189CC();
      if (v178)
      {
        break;
      }
    }

    LOBYTE(v149) = (v149 + 1) & v175;
    sub_1C444FC38();
    if (((*(v172 + v179) >> v149) & 1) == 0)
    {
      goto LABEL_115;
    }
  }

LABEL_129:

  sub_1C440BB58(v212, v213, v214, v215, v216, v217, v218);
  v219 = MEMORY[0x1C69417F0](14);
  sub_1C440216C(v219, v220, v221, v222, v223, v224, v225, v226, v316, v325, v334, v341, v350, v359, v364);
  sub_1C4F02B68();
  sub_1C43FD1DC();
  if (v227)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v228 == 3)
      {
        v229 = sub_1C443F0E0();
        sub_1C4839AB4(v229, v157);
        v172 = v230;
        sub_1C442F0D8();
        if (v172)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v231 & 1) == 0)
      {
        goto LABEL_133;
      }
    }
  }

  else
  {
LABEL_133:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v157, 3, v178);
    v7 = __src;
  }

  sub_1C4D50668();
  v233 = v232;
  sub_1C440BB58(v232, v234, v235, v236, v237, v238, v239);
  sub_1C444B010();
  v240 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440216C(v240, v241, v242, v243, v244, v245, v246, v247, v318, v327, v336, v343, v352, v361, v364);
  sub_1C4F02B68();
  sub_1C43FD1DC();
  if (v248)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v249 == 2)
      {
        v250 = sub_1C443F0E0();
        sub_1C4839AB4(v250, v233);
        v172 = v251;
        sub_1C44189CC();
        if (v172)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v252 & 1) == 0)
      {
        goto LABEL_139;
      }
    }
  }

  else
  {
LABEL_139:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v233, 2, v178);
    v7 = __src;
  }

  sub_1C440BB58(v253, v254, v255, v256, v257, v258, v259);
  v260 = MEMORY[0x1C69417F0](14);
  sub_1C440216C(v260, v261, v262, v263, v264, v265, v266, v267, v319, v328, v337, v344, v353, v362, v364);
  sub_1C4F02B68();
  sub_1C43FD1DC();
  if (v268)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v269 == 3)
      {
        v270 = sub_1C443F0E0();
        sub_1C4839AB4(v270, v233);
        v172 = v271;
        sub_1C442F0D8();
        if (v172)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v272 & 1) == 0)
      {
        goto LABEL_145;
      }
    }
  }

  else
  {
LABEL_145:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v233, 3, v178);
    v7 = __src;
  }

  v273 = 0;
  do
  {
    v274 = 0;
    v275 = *(&unk_1F43D2A40 + v273 + 32);
    v338 = v273 + 1;
    do
    {
      v276 = byte_1F43D2A68[v274 + 32];
      v277 = swift_allocObject();
      *(v277 + 32) = v275;
      *(v277 + 33) = v276;
      v278 = sub_1C45A2528();
      __src = MEMORY[0x1C69407C0](2, &unk_1F43E2CD0, v278);
      for (i = 32; i != 34; ++i)
      {
        sub_1C483A62C(&v364, *(v277 + i), v279, v280, v281, v282, v283, v284, v320, v329, v338, v345, v354, v363, v364, __src, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
      }

      swift_setDeallocating();
      v286 = swift_deallocClassInstance();
      v287 = __src;
      sub_1C440BB58(v286, v288, v289, v290, v291, v292, v293);
      sub_1C444B010();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851148(&__src, v287);
      sub_1C4F02B68();
      sub_1C44101C8();
      if (v294)
      {
        while (1)
        {
          if (*(*(v7 + 48) + 16 * v172 + 8) == 2)
          {
            v295 = sub_1C443F0E0();
            sub_1C4839AB4(v295, v287);
            v297 = v296;
            sub_1C44189CC();
            if (v297)
            {
              break;
            }
          }

          sub_1C441C0BC();
          if ((v298 & 1) == 0)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
LABEL_155:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4402C7C();
        sub_1C4844AB4(v287, 2, v172);
        v7 = __src;
      }

      ++v274;
      sub_1C440BB58(v299, v300, v301, v302, v303, v304, v305);
      sub_1C45FE448(&__src, v287, 3);
      sub_1C4F02B68();
      sub_1C44101C8();
      if (v306)
      {
        while (1)
        {
          if (*(*(v7 + 48) + 16 * v172 + 8) == 3)
          {
            v307 = sub_1C443F0E0();
            sub_1C4839AB4(v307, v287);
            v309 = v308;
            sub_1C442F0D8();
            if (v309)
            {
              break;
            }
          }

          sub_1C441C0BC();
          if ((v310 & 1) == 0)
          {
            goto LABEL_161;
          }
        }
      }

      else
      {
LABEL_161:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4402C7C();
        sub_1C4844AB4(v287, 3, v172);
        v7 = __src;
      }
    }

    while (v274 != 6);
    v273 = v338;
  }

  while (v338 != 3);
  return v7;
}

void sub_1C45FE034(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        sub_1C44040C8();
        v8 = v6;
        switch(v11)
        {
          case 1:
            v8 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v8 = sub_1C440679C();
            break;
          case 3:
            v8 = sub_1C441C7F8();
            v5 = v4 - 14;
            break;
          case 4:
            v8 = sub_1C4431F88();
            break;
          case 5:
            v8 = sub_1C440215C();
            break;
          case 6:
            v8 = sub_1C440D0A4();
            goto LABEL_27;
          case 7:
            v8 = sub_1C43FEBC8();
            break;
          case 8:
            v8 = sub_1C441F4F8();
LABEL_27:
            v5 = v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v8 = sub_1C43FFDEC();
            break;
          case 10:
            v8 = sub_1C4415F60();
            break;
          case 11:
            v8 = sub_1C443313C();
            v5 = v4 - 20;
            break;
          case 12:
            v8 = sub_1C440584C();
            break;
          default:
            break;
        }

        switch(v10)
        {
          case 1:
            goto LABEL_42;
          case 2:
            goto LABEL_47;
          case 3:
            goto LABEL_48;
          case 4:
            goto LABEL_44;
          case 5:
            goto LABEL_50;
          case 6:
            goto LABEL_51;
          case 7:
            goto LABEL_49;
          case 8:
            goto LABEL_53;
          case 9:
            goto LABEL_46;
          case 10:
            goto LABEL_52;
          case 11:
            goto LABEL_43;
          case 12:
            goto LABEL_45;
          default:
            goto LABEL_55;
        }

        goto LABEL_55;
      }

      break;
    case 2:
      if (a4 == 2)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      if (a4 == 3)
      {
LABEL_9:

        sub_1C4839AB4(a1, a3);
      }

      break;
    case 4:
      sub_1C442B950();
      break;
    default:
      if (!a4)
      {
        sub_1C44040C8();
        v8 = v6;
        switch(v9)
        {
          case 1:
            v8 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v8 = sub_1C440679C();
            break;
          case 3:
            v8 = sub_1C441C7F8();
            v5 = v4 - 14;
            break;
          case 4:
            v8 = sub_1C4431F88();
            break;
          case 5:
            v8 = sub_1C440215C();
            break;
          case 6:
            v8 = sub_1C440D0A4();
            goto LABEL_40;
          case 7:
            v8 = sub_1C43FEBC8();
            break;
          case 8:
            v8 = sub_1C441F4F8();
LABEL_40:
            v5 = v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v8 = sub_1C43FFDEC();
            break;
          case 10:
            v8 = sub_1C4415F60();
            break;
          case 11:
            v8 = sub_1C443313C();
            v5 = v4 - 20;
            break;
          case 12:
            v8 = sub_1C440584C();
            break;
          default:
            break;
        }

        switch(v7)
        {
          case 1:
LABEL_42:
            sub_1C440F310();
            v6 = v12 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
LABEL_47:
            sub_1C440DEDC();
            v6 = v14 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
            v4 = 0xEF796144664F656DLL;
            break;
          case 3:
LABEL_48:
            sub_1C4409A64();
            v4 -= 14;
            break;
          case 4:
LABEL_44:
            sub_1C440F310();
            v6 = v13 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            v4 = 0xEA00000000006B65;
            break;
          case 5:
LABEL_50:
            v4 = 0xE300000000000000;
            v6 = 6909804;
            break;
          case 6:
LABEL_51:
            sub_1C4404BF8();
            v15 = 0x6E6F697461;
            goto LABEL_54;
          case 7:
LABEL_49:
            sub_1C44148EC();
            v4 = 0xEF687361486F6547;
            break;
          case 8:
LABEL_53:
            sub_1C440DEDC();
            v6 = v16 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
            v15 = 0x687361486FLL;
LABEL_54:
            v4 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
LABEL_46:
            sub_1C4413E94();
            v4 = 0xEC00000068736148;
            break;
          case 10:
LABEL_52:
            v4 = 0xE400000000000000;
            v6 = 1768319351;
            break;
          case 11:
LABEL_43:
            sub_1C4423A90();
            v4 -= 20;
            break;
          case 12:
LABEL_45:
            sub_1C440EF3C();
            v4 = 0xEB00000000657461;
            break;
          default:
            break;
        }

LABEL_55:
        if (v8 != v6 || v5 != v4)
        {
          sub_1C4F02938();
        }
      }

      break;
  }
}

uint64_t sub_1C45FE448(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v5 = 12;
      goto LABEL_11;
    case 2:
      v7 = 13;
      goto LABEL_7;
    case 3:
      v7 = 14;
LABEL_7:
      MEMORY[0x1C69417F0](v7);

      result = sub_1C4851148(a1, a2);
      break;
    case 4:
      switch(a2)
      {
        case 1:
          v6 = 1;
          break;
        case 2:
          v6 = 2;
          break;
        case 3:
          v6 = 3;
          break;
        case 4:
          v6 = 4;
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
        default:
          v6 = 0;
          break;
      }

      result = MEMORY[0x1C69417F0](v6);
      break;
    default:
      v5 = 11;
LABEL_11:
      MEMORY[0x1C69417F0](v5);
      sub_1C46001A8(a2);
      sub_1C4F01298();

      break;
  }

  return result;
}

uint64_t sub_1C45FE590(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  sub_1C45FE448(v5, a1, a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C45FE5F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4F02AF8();
  sub_1C45FE448(v4, v1, v2);
  return sub_1C4F02B68();
}

void sub_1C45FE65C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C442DD6C();
      v3 = sub_1C45FE854(a1);
      goto LABEL_5;
    case 4:
      sub_1C4440FA0();
      switch(a1)
      {
        case 8:
          return;
        case 9:
        case 10:
          sub_1C43FE984();
          break;
        default:
          sub_1C4412CDC();
          break;
      }

      break;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C442DD6C();
      v3 = sub_1C46001A8(a1);
LABEL_5:
      MEMORY[0x1C6940010](v3);

      break;
  }
}

uint64_t sub_1C45FE854(uint64_t a1)
{
  sub_1C45FCEC8(a1);
  v4 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v4);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v2 = sub_1C4F01048();

  return v2;
}

void sub_1C45FE940(uint64_t a1, uint64_t a2)
{
  sub_1C43FE984();
  if (v3 == 0xD000000000000010 && v4 == a2)
  {
    goto LABEL_6;
  }

  v6 = v3;
  if (sub_1C43FEC00(0xD000000000000010, v4))
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v8 = v6 == 0xD000000000000022 && v7 == a2;
  if (v8 || (sub_1C43FEC00(0xD000000000000022, v7) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v10 = v6 == 0xD000000000000010 && v9 == a2;
  if (v10 || (sub_1C43FEC00(0xD000000000000010, v9) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v12 = v6 == 0xD000000000000010 && v11 == a2;
  if (v12 || (sub_1C43FEC00(0xD000000000000010, v11) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v14 = v6 == 0xD000000000000012 && v13 == a2;
  if (v14 || (sub_1C43FEC00(0xD000000000000012, v13) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v16 = v6 == 0xD00000000000001BLL && v15 == a2;
  if (v16 || (sub_1C43FEC00(0xD00000000000001BLL, v15) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v18 = v6 == 0xD00000000000001ALL && v17 == a2;
  if (v18 || (sub_1C43FEC00(0xD00000000000001ALL, v17) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v20 = v6 == 0xD00000000000001FLL && v19 == a2;
  if (v20 || (sub_1C43FEC00(0xD00000000000001FLL, v19) & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v22 = v6 == 0xD00000000000001FLL && v21 == a2;
  if (v22 || (sub_1C43FEC00(0xD00000000000001FLL, v21) & 1) != 0)
  {
    goto LABEL_6;
  }

  v23 = sub_1C4440FA0();
  if (v6 == v23 && a2 == v24)
  {
    goto LABEL_6;
  }

  if (sub_1C43FEC00(v23, 0xEA0000000000746ELL))
  {
    goto LABEL_6;
  }

  sub_1C4415EA8();
  v26 = sub_1C4F02058();

  if (v26[2] != 2)
  {
    goto LABEL_6;
  }

  v27 = v26[8];
  v28 = v26[9];
  v29 = v26[10];
  v30 = v26[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v27, v28, v29, v30);

  sub_1C45FEDB8();
  if (!v31)
  {
    goto LABEL_6;
  }

  if (!v26[2])
  {
    __break(1u);
    return;
  }

  v32 = v31;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (sub_1C44109C4(0xD000000000000020, "overallPopularity"))
  {

    return;
  }

  if (sub_1C44109C4(0xD00000000000001ELL, "lityGivenContext"))
  {

    if (*(v32 + 16) == 1)
    {
LABEL_70:
      sub_1C48680F0(v32);

      return;
    }

LABEL_6:

    return;
  }

  if (sub_1C44109C4(0xD00000000000001ELL, "contextPopularityGivenBehavior"))
  {

    if (*(v32 + 16) == 1)
    {
      goto LABEL_70;
    }

    goto LABEL_6;
  }

  v33 = sub_1C44109C4(0xD00000000000001CLL, "behaviorPopularityGivenContext");

  if ((v33 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1C45FEDB8()
{
  sub_1C4415EA8();
  v0 = sub_1C4F02058();

  v1 = 0;
  v2 = *(v0 + 16);
  v3 = (v0 + 56);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v1)
    {

      sub_1C45979B8(v4);
      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v8 = *(v3 - 3);
    v7 = *(v3 - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = MEMORY[0x1C693FEF0](v8, v7, v6, v5);
    v11 = v10;

    v12 = sub_1C4600350(v9, v11);
    if (v12 == 13)
    {

      return;
    }

    v13 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B190(0, *(v4 + 16) + 1, 1, v4);
      v4 = v16;
    }

    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1C458B190(v14 > 1, v15 + 1, 1, v4);
      v4 = v17;
    }

    *(v4 + 16) = v15 + 1;
    *(v4 + v15 + 32) = v13;
    v3 += 4;
    ++v1;
  }

  __break(1u);
}

uint64_t sub_1C45FEF50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = objc_autoreleasePoolPush();
  if (a4)
  {
    (*(v7 + 104))(v11, *MEMORY[0x1E6969AB0], v5);
    v20 = sub_1C4EF9F78();
    (*(v7 + 8))(v11, v5);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (!v21)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  sub_1C4EF9E78();
  sub_1C4EF9B78();
  v24 = v23;
  result = (*(v14 + 8))(v18, v12);
  v26 = v24 / (86400.0 / a3);
  if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 9.22337204e18)
  {
    v22 = v26;
LABEL_9:
    objc_autoreleasePoolPop(v19);
    return v22;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C45FF178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v33 = a5;
  v36 = a3;
  v37 = a1;
  v38 = a2;
  sub_1C4EF9F68();
  sub_1C43FCDF8();
  v34 = v7;
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C4EF9F58();
  if (a4)
  {
    v28 = v21;
    v29 = sub_1C45FEF50(v38, v27, v36, 1);
    result = (*(v34 + 104))(v10, *MEMORY[0x1E6969A48], v35);
    if (__OFSUB__(v37, v29))
    {
      __break(1u);
    }

    else
    {
      v31 = v37;
      sub_1C4EF9F28();
      (*(v34 + 8))(v10, v35);
      if (sub_1C44157D4(v13, 1, v14) == 1)
      {
        sub_1C44686E4(v13);
        sub_1C4600F60();
        swift_allocError();
        *v32 = v31;
        swift_willThrow();
        return (*(v23 + 8))(v27, v28);
      }

      else
      {
        (*(v23 + 8))(v27, v28);
        return (*(v16 + 32))(v33, v13, v14);
      }
    }
  }

  else
  {
    sub_1C4EF9E78();
    sub_1C4EF9BE8();
    (*(v16 + 8))(v20, v14);
    return (*(v23 + 8))(v27, v21);
  }

  return result;
}

BOOL sub_1C45FF4E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_1C45FF50C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144664F656D6974 && a2 == 0xE900000000000079;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C45FF5E0(char a1)
{
  if (a1)
  {
    return 0x656557664F796164;
  }

  else
  {
    return 0x6144664F656D6974;
  }
}

uint64_t sub_1C45FF61C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x664F7265626D756ELL && a2 == 0xEC000000736E6942)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C45FF6B8(void *a1, uint64_t a2, int a3)
{
  v25 = a2;
  v26 = a3;
  sub_1C456902C(&qword_1EC0B9D98, &qword_1C4F11EC8);
  sub_1C43FCDF8();
  v23 = v5;
  v24 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1C456902C(&qword_1EC0B9DA0, &qword_1C4F11ED0);
  sub_1C43FCDF8();
  v22 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = sub_1C456902C(&qword_1EC0B9DA8, &qword_1C4F11ED8);
  sub_1C43FCDF8();
  v16 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v21 - v18;
  sub_1C4409678(a1, a1[3]);
  sub_1C4600E10();
  sub_1C4F02BF8();
  if (v26)
  {
    v28 = 1;
    sub_1C4600E64();
    sub_1C4F02718();
    (*(v23 + 8))(v8, v24);
  }

  else
  {
    v27 = 0;
    sub_1C4600EB8();
    sub_1C4F02718();
    sub_1C4F027D8();
    (*(v22 + 8))(v13, v9);
  }

  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_1C45FF974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1C69417F0](0);
  }

  return MEMORY[0x1C69417F0](v3, a2);
}

uint64_t sub_1C45FF9B4(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  if (a2)
  {
    a1 = 1;
  }

  else
  {
    MEMORY[0x1C69417F0](0);
  }

  MEMORY[0x1C69417F0](a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C45FFA18(void *a1)
{
  v43 = sub_1C456902C(&qword_1EC0B9D80, &qword_1C4F11EA8);
  sub_1C43FCDF8();
  v45 = v2;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9D88, &qword_1C4F11EB0);
  sub_1C43FCDF8();
  v44 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9D90, &unk_1C4F11EB8);
  sub_1C43FCDF8();
  v46 = v12;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = sub_1C4409678(a1, a1[3]);
  sub_1C4600E10();
  v17 = v47;
  sub_1C4F02BC8();
  if (v17)
  {
    goto LABEL_9;
  }

  v47 = v10;
  v42 = v6;
  v18 = v15;
  sub_1C4F026E8();
  result = sub_1C4570934();
  if (v21 == v22 >> 1)
  {
    goto LABEL_8;
  }

  v41 = 0;
  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_1C4570928(v21 + 1, v22 >> 1, result, v20);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      v48 = v23;
      if (v23)
      {
        v50 = 1;
        sub_1C4600E64();
        v28 = v41;
        sub_1C4F025E8();
        v29 = v46;
        if (v28)
        {
          v16 = v46 + 8;
          (*(v46 + 8))(v18, v11);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          (*(v45 + 8))(v5, v43);
          (*(v29 + 8))(v18, v11);
          v16 = 0;
        }
      }

      else
      {
        v49 = 0;
        sub_1C4600EB8();
        v16 = v18;
        v33 = v41;
        sub_1C4F025E8();
        if (v33)
        {
          v34 = sub_1C445E78C();
          v35(v34);
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = sub_1C4F026B8();
          swift_unknownObjectRelease();
          v36 = sub_1C4422234();
          v37(v36);
          v38 = sub_1C445E78C();
          v39(v38);
        }
      }

      goto LABEL_9;
    }

LABEL_8:
    v30 = sub_1C4F022E8();
    swift_allocError();
    v32 = v31;
    sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90);
    *v32 = &unk_1F43E2C40;
    v16 = v18;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v18, v11);
LABEL_9:
    sub_1C440962C(a1);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45FFF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FF50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45FFF3C(uint64_t a1)
{
  v2 = sub_1C4600E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FFF78(uint64_t a1)
{
  v2 = sub_1C4600E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45FFFB4(uint64_t a1)
{
  v2 = sub_1C4600E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FFFF0(uint64_t a1)
{
  v2 = sub_1C4600E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4600030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FF61C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C460005C(uint64_t a1)
{
  v2 = sub_1C4600EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4600098(uint64_t a1)
{
  v2 = sub_1C4600EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46000D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C45FFA18(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1C4600140()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4F02AF8();
  sub_1C45FF974(v4, v1, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C46001A8(char a1)
{
  result = 0x6144664F656D6974;
  switch(a1)
  {
    case 1:
      result = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 2:
      result = 0x6954657372616F63;
      break;
    case 3:
      result = sub_1C441C7F8();
      break;
    case 4:
      result = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
      break;
    case 5:
      result = 6909804;
      break;
    case 6:
      result = 0x636F4C6F7263696DLL;
      break;
    case 7:
      result = 0x6369666963657073;
      break;
    case 8:
      result = 0x6547657372616F63;
      break;
    case 9:
      result = 0x6F6547656772616CLL;
      break;
    case 10:
      result = 1768319351;
      break;
    case 11:
      result = sub_1C443313C();
      break;
    case 12:
      result = 0x74536E6F69746F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4600350(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C46003C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4600350(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C46003F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46001A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4600524()
{
  result = qword_1EDDF4598;
  if (!qword_1EDDF4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4598);
  }

  return result;
}

unint64_t sub_1C460057C()
{
  result = qword_1EC0B9D78;
  if (!qword_1EC0B9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D78);
  }

  return result;
}

uint64_t sub_1C46005D0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02838() & 1;
  }
}

void sub_1C4600638(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C4F02938();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C4F02938()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1C4F02938() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4600C6C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1C4600B40(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1C4600B40(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C4600C6C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C4600C6C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C4461B98(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1C4461B98(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C4F02938() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_1C4600E10()
{
  result = qword_1EDDFAF78;
  if (!qword_1EDDFAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF78);
  }

  return result;
}

unint64_t sub_1C4600E64()
{
  result = qword_1EDDFAF60;
  if (!qword_1EDDFAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF60);
  }

  return result;
}

unint64_t sub_1C4600EB8()
{
  result = qword_1EDDFAF90;
  if (!qword_1EDDFAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF90);
  }

  return result;
}

unint64_t sub_1C4600F0C()
{
  result = qword_1EDDFB0E8;
  if (!qword_1EDDFB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0E8);
  }

  return result;
}

unint64_t sub_1C4600F60()
{
  result = qword_1EC0B9DB0;
  if (!qword_1EC0B9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeBasedContextAspect.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeBasedContextAspect.TimeOfDayCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4601158(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C4601174(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46011B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1C46011F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C4601220()
{
  result = qword_1EC0B9DB8;
  if (!qword_1EC0B9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DB8);
  }

  return result;
}

unint64_t sub_1C4601278()
{
  result = qword_1EC0B9DC0;
  if (!qword_1EC0B9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DC0);
  }

  return result;
}

unint64_t sub_1C46012D0()
{
  result = qword_1EDDFAF80;
  if (!qword_1EDDFAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF80);
  }

  return result;
}

unint64_t sub_1C4601328()
{
  result = qword_1EDDFAF88;
  if (!qword_1EDDFAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF88);
  }

  return result;
}

unint64_t sub_1C4601380()
{
  result = qword_1EDDFAF50;
  if (!qword_1EDDFAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF50);
  }

  return result;
}

unint64_t sub_1C46013D8()
{
  result = qword_1EDDFAF58;
  if (!qword_1EDDFAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF58);
  }

  return result;
}

unint64_t sub_1C4601430()
{
  result = qword_1EDDFAF68;
  if (!qword_1EDDFAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF68);
  }

  return result;
}

unint64_t sub_1C4601488()
{
  result = qword_1EDDFAF70;
  if (!qword_1EDDFAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF70);
  }

  return result;
}

unint64_t sub_1C46014E0()
{
  result = qword_1EDDF6800;
  if (!qword_1EDDF6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6800);
  }

  return result;
}

void *sub_1C4601538(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDE2CE60;
  sub_1C4ABF81C();
  if (v3)
  {
    sub_1C440962C(a2);
    sub_1C4467948(a1);
  }

  else
  {
    sub_1C44098F0(a1, v11);
    type metadata accessor for KeyValueStore(0);
    swift_allocObject();
    v33 = KeyValueStore.init(config:domain:)(v11, 1413829954, 0xE400000000000000);
    sub_1C448BD48(a2, v38);
    v31 = sub_1C45EDEF8();

    sub_1C45EA370(a2, v35);
    v14 = v39;
    v32 = v40;
    sub_1C4418280(v38, v39);
    v34 = &v27;
    v29 = v14;
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v15);
    sub_1C43FBCC4();
    v18 = (v17 - v16);
    (*(v19 + 16))(v17 - v16);
    v20 = v36;
    v28 = v37;
    sub_1C4418280(v35, v36);
    v30 = &v27;
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v21);
    sub_1C43FBCC4();
    v24 = v23 - v22;
    (*(v25 + 16))(v23 - v22);
    v41 = v31;
    v26 = type metadata accessor for BehaviorDatabaseEventTracker();
    v12 = sub_1C460784C(v18, &v41, v24, v33, v4, v29, v20, v26, v32, v28, &off_1F43E2390);

    sub_1C440962C(a2);
    sub_1C4467948(a1);
    sub_1C440962C(v35);
    sub_1C440962C(v38);
  }

  return v12;
}

void sub_1C4601D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v23;
  a22 = v24;
  v136 = v22;
  v137 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *(v28 + 8);
  v133[3] = *v28;
  v133[4] = v32;
  v33 = *(v28 + 24);
  v133[5] = *(v28 + 16);
  v34 = *(v28 + 32);
  v133[6] = v33;
  v133[7] = v34;
  LODWORD(v134) = *(v28 + 40);
  v35 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v36 = sub_1C43FBD18(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v133[2] = v37 - v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  v133[1] = v133 - v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v133[0] = v133 - v42;
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBD08();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v133 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v133 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v133 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = v133 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v133 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v66 = v133 - v65;
  v135 = v31;
  switch(v31)
  {
    case 1:
      v88 = v63;
      v89 = v64;
      sub_1C45D5A24(v46);
      sub_1C4605420(v137, v46);
      (*(v89 + 8))(v46, v88);
      swift_getObjectType();
      sub_1C460ABD4();
      goto LABEL_13;
    case 2:
      v69 = v136;
      sub_1C4409678(v136 + 21, v136[24]);
      v70 = sub_1C442FB9C();
      v72 = v71(v70);
      if (v27)
      {
        goto LABEL_36;
      }

      v73 = v72;
      sub_1C4409678(v69 + 7, v69[10]);
      sub_1C45E0D68(v29, v73, &v66[OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date], 1814400.0);

      break;
    case 3:
      v74 = v136;
      sub_1C4409678(v136 + 21, v136[24]);
      v75 = sub_1C442FB9C();
      v77 = v76(v75);
      if (v27)
      {
LABEL_36:
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406728(&qword_1EDDFA668);
        }

        v119 = sub_1C4F00978();
        sub_1C442B738(v119, qword_1EDE2DDE0);
        v120 = v135;
        sub_1C45A24AC(v61, v135);
        v121 = v27;
        v122 = sub_1C4F00968();
        v123 = sub_1C4F01CD8();
        sub_1C45A24C0(v61, v120);

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v138[0] = swift_slowAlloc();
          *v124 = 136315394;
          sub_1C45FE65C(v61, v120);
          v127 = sub_1C441D828(v125, v126, v138);

          *(v124 + 4) = v127;
          *(v124 + 12) = 2080;
          swift_getErrorValue();
          v128 = sub_1C4F02A38();
          v130 = sub_1C441D828(v128, v129, v138);

          *(v124 + 14) = v130;
          _os_log_impl(&dword_1C43F8000, v122, v123, "BehaviorFeaturizer: Returning zero for feature %s due to error %s", v124, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }
      }

      else
      {
        v78 = v77;
        v134 = v66;
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406728(&qword_1EDDFA668);
        }

        v79 = sub_1C4F00978();
        sub_1C442B738(v79, qword_1EDE2DDE0);
        swift_bridgeObjectRetain_n();
        sub_1C45A24AC(v61, 3);
        v80 = sub_1C4F00968();
        v81 = sub_1C4F01CF8();
        sub_1C45A24C0(v61, 3);
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v139[0] = v83;
          *v82 = 136315394;
          sub_1C45A2528();
          v84 = sub_1C4F01AC8();
          v86 = sub_1C441D828(v84, v85, v139);

          *(v82 + 4) = v86;
          v74 = v136;
          *(v82 + 12) = 2048;
          v87 = *(v78 + 16);

          *(v82 + 14) = v87;

          _os_log_impl(&dword_1C43F8000, v80, v81, "Computing posterior probability for %s using %ld intervals.", v82, 0x16u);
          sub_1C440962C(v83);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_1C4409678(v74 + 7, v74[10]);
        sub_1C45E0930(v29, v78, &v134[OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date], 1814400.0);
      }

      break;
    case 4:
      switch(v137)
      {
        case 1uLL:
          v99 = sub_1C4434E14();
          sub_1C45E0904(v99);
          if (v27)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        case 2uLL:
        case 3uLL:
          sub_1C4409678(v136 + 7, v136[10]);
          sub_1C45E3BFC();
          goto LABEL_41;
        case 4uLL:
          v90 = v63;
          v91 = v64;
          v92 = sub_1C43FD204();
          type metadata accessor for TrendingBehaviorHistogram(v92);
          sub_1C45D5A24(v66);
          sub_1C4409A78();
          sub_1C43FE990();
          sub_1C440DEEC();
          v93();
          if (v27)
          {
            (*(v91 + 8))(v66, v90);
            goto LABEL_35;
          }

          (*(v91 + 8))(v66, v90);
          v114 = sub_1C440A674();
          sub_1C4408694(v114, &a15);
          sub_1C440D0C4();
          goto LABEL_43;
        case 5uLL:
          v100 = v63;
          v101 = v64;
          v102 = sub_1C43FD204();
          type metadata accessor for ShortTermTrendingBehaviorHistogram(v102);
          sub_1C45D5A24(v61);
          sub_1C4409A78();
          sub_1C440DEEC();
          v103();
          if (v27)
          {
            (*(v101 + 8))(v61, v100);
            goto LABEL_35;
          }

          (*(v101 + 8))(v61, v100);
          v117 = sub_1C440A674();
          sub_1C4408694(v117, &a16);
          sub_1C440D0C4();
          sub_1C46050E8(v139, v46, v118);
          goto LABEL_44;
        case 6uLL:
          v104 = v63;
          v105 = v64;
          v106 = sub_1C43FD204();
          type metadata accessor for LongTermTrendingBehaviorHistogram(v106);
          sub_1C45D5A24(v58);
          sub_1C4409A78();
          sub_1C440DEEC();
          v107();
          if (v27)
          {
            (*(v105 + 8))(v58, v104);
            goto LABEL_35;
          }

          (*(v105 + 8))(v58, v104);
          v131 = sub_1C440A674();
          sub_1C4408694(v131, &a17);
          sub_1C440D0C4();
LABEL_43:
          sub_1C46050E8(v139, v46, v115);
LABEL_44:
          sub_1C4607CD4(v46, &unk_1EC0B84E0, qword_1C4F0D2D0);
          goto LABEL_45;
        case 7uLL:
          v98 = sub_1C4434E14();
          sub_1C45E0F64(v98);
          if (!v27)
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        case 8uLL:
          v113 = sub_1C4434E14();
          sub_1C45E100C(v113);
          if (!v27)
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        case 9uLL:
          v94 = v63;
          v95 = v64;
          v96 = sub_1C43FD204();
          type metadata accessor for PreviousBehaviorHistogram(v96);
          sub_1C45D5A24(v55);
          sub_1C4409A78();
          sub_1C440DEEC();
          v97();
          if (v27)
          {
            (*(v95 + 8))(v55, v94);
LABEL_35:
            v61 = v137;
            goto LABEL_36;
          }

          (*(v95 + 8))(v55, v94);
          sub_1C442F0F0();
          sub_1C4605238(0, v29, v116);
LABEL_45:

          break;
        case 0xAuLL:
          v108 = v63;
          v109 = v64;
          v110 = v136[15];
          v111 = v136[16];
          sub_1C4409678(v136 + 12, v110);
          v112 = type metadata accessor for PreviousBehaviorHistogram(0);
          sub_1C45D5A24(v52);
          (*(v111 + 8))(v112, v52, v112, &off_1F43E3808, v110, v111);
          (*(v109 + 8))(v52, v108);
          sub_1C442F0F0();
          sub_1C460532C(v29, v27, v132);
          goto LABEL_45;
        default:
          sub_1C4604EE4(v29, v27);
          goto LABEL_41;
      }

      break;
    default:
      v67 = v63;
      v68 = v64;
      sub_1C45D5A24(v49);
      sub_1C4605420(v137, v49);
      (*(v68 + 8))(v49, v67);
      swift_getObjectType();
      sub_1C460A8F4();
LABEL_13:
      swift_unknownObjectRelease();
      break;
  }

LABEL_41:
  sub_1C440C378();
  sub_1C44086C4();
}

uint64_t sub_1C460299C(char *a1)
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C4EF9C38();
  sub_1C4602A70(a1, v1);
  v4 = sub_1C43FD024();
  return v5(v4);
}

uint64_t sub_1C4602A70(char *a1, uint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1C4415864();
  v18 = v39;
  result = sub_1C446FB00();
  if (!v18)
  {
    v39 = 0;
    v31 = v14;
    v32 = v11;
    v33 = v2;
    v34 = v17;
    v20 = v36;
    sub_1C446BE1C(v3);
    v21 = v6;
    if (v22)
    {
      v24 = v34;
      (*(v37 + 16))(v34, v35, v21);
      v23 = sub_1C44157D4(v3, 1, v21);
      v25 = v33;
      if (v23 != 1)
      {
        sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v24 = v34;
      (*(v37 + 32))(v34, v3, v21);
      v25 = v33;
    }

    if (sub_1C4EF9C08())
    {
      sub_1C4415864();
      v26 = v39;
      sub_1C448EE10();
      v39 = v26;
      if (v26)
      {
        return (*(v37 + 8))(v24, v21);
      }

      sub_1C448BD48(v25 + 16, v38);
      v27 = v37;
      v28 = *(v37 + 16);
      v29 = v31;
      v28(v31, v24, v21);
      v30 = v32;
      v28(v32, v20, v21);
      type metadata accessor for CachedContextProvider(0);
      swift_allocObject();
      sub_1C466C344(v38, v29, v30);
      sub_1C4602D6C();
    }

    else
    {
      v27 = v37;
    }

    return (*(v27 + 8))(v24, v21);
  }

  return result;
}

void sub_1C4602D6C()
{
  sub_1C43FEC28();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v44 = (v14 - v15);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4402CA8();
  v45 = v12;
  v42 = *(v12 + 16);
  v43 = v10;
  v47 = v19;
  v42(v1, v10);
  sub_1C440F1BC();
  swift_beginAccess();
  while ((sub_1C4EF9C18() & 1) != 0)
  {
    v20 = objc_autoreleasePoolPush();
    sub_1C4603368(v8, v1, v4, v2, v6, 172800.0);
    objc_autoreleasePoolPop(v20);
  }

  sub_1C4409678(v2 + 7, v2[10]);
  sub_1C45E025C();
  v21 = v46;
  v22 = v47;
  v23 = v44;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDE2DDE0);
  v25 = v42;
  (v42)(v21, v43, v22);
  v26 = sub_1C4415864();
  v25(v26);
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v29 = 136315394;
    sub_1C4607804(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v30 = sub_1C4F02858();
    v31 = v21;
    v33 = v32;
    LODWORD(v46) = v28;
    v34 = *(v45 + 8);
    v34(v31, v22);
    v35 = sub_1C441D828(v30, v33, v48);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = sub_1C4F02858();
    v38 = v37;
    v34(v23, v22);
    v39 = sub_1C441D828(v36, v38, v48);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_1C43F8000, v27, v46, "BehaviorFeaturizer: Digested behavior history from %s to %s", v29, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v34(v1, v22);
  }

  else
  {

    v40 = *(v45 + 8);
    v40(v23, v22);
    v40(v21, v22);
    v40(v1, v22);
  }

  sub_1C44086C4();
}

uint64_t sub_1C4603280()
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  sub_1C4EF9C38();
  sub_1C4602D6C();
  v1 = sub_1C43FE990();
  return v2(v1);
}

uint64_t sub_1C4603368(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v83 = a5;
  v84 = a4;
  v86 = a3;
  v82 = a1;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v69[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69[-v19];
  swift_beginAccess();
  v22 = v8 + 16;
  v21 = *(v8 + 16);
  v85 = a2;
  v21(v14, a2, v7);
  sub_1C4EF9BE8();
  v78 = v8;
  v25 = *(v8 + 8);
  v24 = v8 + 8;
  v23 = v25;
  v25(v14, v7);
  sub_1C4607804(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1C4F01068())
  {
    (*(v78 + 32))(v20, v17, v7);
  }

  else
  {
    v23(v17, v7);
    v21(v20, v82, v7);
  }

  v26 = v21;
  v27 = v20;
  v28 = v85;
  swift_beginAccess();
  v26(v14, v28, v7);
  sub_1C466A824(v14, v27);
  v77 = v14;
  v23(v14, v7);
  v29 = v23;
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v30 = sub_1C4F00978();
  v31 = sub_1C442B738(v30, qword_1EDE2DDE0);
  v32 = v74;
  v82 = v27;
  v26(v74, v27, v7);
  v73 = v31;
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CC8();
  v35 = os_log_type_enabled(v33, v34);
  v81 = v22;
  v80 = v26;
  v79 = v24;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88[0] = v72;
    *v36 = 136315394;
    swift_beginAccess();
    v71 = v33;
    v37 = v77;
    v80(v77, v28, v7);
    sub_1C4607804(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v38 = v7;
    v39 = v29;
    v40 = sub_1C4F02858();
    v70 = v34;
    v42 = v41;
    v39(v37, v38);
    v43 = v40;
    v29 = v39;
    v7 = v38;
    v44 = sub_1C441D828(v43, v42, v88);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    v45 = sub_1C4F02858();
    v47 = v46;
    v29(v32, v38);
    v28 = v85;
    v48 = sub_1C441D828(v45, v47, v88);

    *(v36 + 14) = v48;
    v49 = v71;
    _os_log_impl(&dword_1C43F8000, v71, v70, "BehaviorFeaturizer: Starting histogram batched digest from %s to %s", v36, 0x16u);
    v50 = v72;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v50, -1, -1);
    v51 = v36;
    v26 = v80;
    MEMORY[0x1C6942830](v51, -1, -1);
  }

  else
  {

    v29(v32, v7);
  }

  v52 = v75;
  v53 = v84[10];
  v54 = v84[11];
  sub_1C4409678(v84 + 7, v53);
  swift_beginAccess();
  v26(v52, v28, v7);
  v55 = v76;
  (*(*(v54 + 8) + 8))(v52, v82, v83, v86, v53);
  if (v55)
  {
    v75 = v7;
    v29(v52, v7);
    v56 = v55;
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CE8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v87[0] = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = sub_1C4F02A38();
      v63 = sub_1C441D828(v61, v62, v87);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1C43F8000, v57, v58, "BehaviorFeaturizer: Error updating eventTracker - %s", v59, 0xCu);
      sub_1C440962C(v60);
      MEMORY[0x1C6942830](v60, -1, -1);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    else
    {
    }

    v76 = 0;
    v26 = v80;
    v64 = v29;
    v7 = v75;
  }

  else
  {
    v29(v52, v7);
    v76 = 0;
    v64 = v29;
  }

  v65 = v85;
  swift_beginAccess();
  v66 = v77;
  v26(v77, v65, v7);
  v67 = v82;
  sub_1C4603C54(v66, v82, v83, v86);
  v64(v66, v7);
  swift_beginAccess();
  return (*(v78 + 40))(v65, v67, v7);
}

uint64_t sub_1C4603C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v108 = a3;
  v107 = a2;
  v106 = a1;
  v4 = 0;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v121 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v99 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v99 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  result = sub_1C4EFDA58();
  v21 = result;
  v22 = *(result + 16);
  v124 = v6 + 16;
  LODWORD(v115) = *MEMORY[0x1E69A9418];
  v113 = v6;
  v114 = v6 + 104;
  v23 = (v6 + 8);
  v110 = (v6 + 32);
  v111 = MEMORY[0x1E69E7CC0];
  v125 = v5;
  v126 = 0;
  v123 = (v6 + 8);
  v104 = result;
  v103 = v22;
  while (v4 != v22)
  {
    if (v4 >= *(v21 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    v24 = v113;
    v116 = ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v119 = *(v113 + 72);
    v118 = *(v113 + 16);
    v118(v19, &v116[v21 + v119 * v4], v5);
    v117 = v4 + 1;
    (*(v24 + 104))(v16, v115, v5);
    sub_1C4607804(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
    v25 = sub_1C4F010B8();
    v26 = *(v24 + 8);
    v26(v16, v5);
    if (v25)
    {
LABEL_10:
      result = (v26)(v19, v5);
      v4 = v117;
    }

    else
    {
      v27 = v19;
      v28 = sub_1C4EFDA68();
      if (*(v28 + 16))
      {
        sub_1C4607804(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
        v29 = sub_1C4F00FD8();
        v30 = ~(-1 << *(v28 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v28 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = v125;
          v118(v16, (*(v28 + 48) + v31 * v119), v125);
          v33 = sub_1C4F010B8();
          v26(v16, v32);
          v29 = v31 + 1;
          if (v33)
          {

            v5 = v125;
            v23 = v123;
            v19 = v27;
            v21 = v104;
            v22 = v103;
            goto LABEL_10;
          }
        }
      }

      v34 = *v110;
      v19 = v27;
      v5 = v125;
      (*v110)(v112, v27, v125);
      v35 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v35;
      v127[0] = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459D1E0();
        v37 = v127[0];
      }

      v23 = v123;
      v38 = *(v37 + 16);
      if (v38 >= *(v37 + 24) >> 1)
      {
        sub_1C459D1E0();
        v37 = v127[0];
      }

      *(v37 + 16) = v38 + 1;
      v111 = v37;
      result = v34(&v116[v37 + v38 * v119], v112, v5);
      v21 = v104;
      v22 = v103;
      v4 = v117;
    }
  }

  v39 = 0;
  result = v111;
  v110 = *(v111 + 16);
  v104 = 0x80000001C4F8D9E0;
  v103 = 0x80000001C4F8DA00;
  v102 = 0x80000001C4F8DA20;
  v101 = 0x80000001C4F8DA40;
  v100 = 0x80000001C4F8DA60;
  *&v40 = 136315650;
  v115 = v40;
  *&v40 = 136315394;
  v99 = v40;
  while (v39 != v110)
  {
    if (v39 >= *(result + 16))
    {
      goto LABEL_57;
    }

    v41 = result + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v42 = *(v113 + 72);
    v112 = v39;
    v43 = v120;
    v119 = *(v113 + 16);
    v44 = v119(v120, v41 + v42 * v39, v5);
    MEMORY[0x1EEE9AC00](v44);
    *(&v99 - 2) = v122;
    *(&v99 - 1) = v43;
    v45 = v126;
    v46 = sub_1C49BFB70();
    v47 = objc_autoreleasePoolPush();
    sub_1C4609AC8();
    v114 = v46;
    if (v45)
    {
      v48 = v105;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v126 = 0;
      v49 = sub_1C4F00978();
      sub_1C442B738(v49, qword_1EDE2DDE0);
      v119(v48, v120, v5);
      v50 = v45;
      v51 = sub_1C4F00968();
      v52 = sub_1C4F01CE8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v118 = v47;
        v54 = v48;
        v55 = v53;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v127[0] = v57;
        *v55 = v99;
        sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
        v58 = sub_1C4F02858();
        v60 = v59;
        v61 = v54;
        v47 = v118;
        (*v123)(v61, v5);
        v62 = sub_1C441D828(v58, v60, v127);

        *(v55 + 4) = v62;
        *(v55 + 12) = 2112;
        v63 = v45;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v64;
        *v56 = v64;
        _os_log_impl(&dword_1C43F8000, v51, v52, "BehaviorFeaturizer: Error updating histograms for %s behaviors - %@", v55, 0x16u);
        sub_1C4607CD4(v56, &qword_1EC0BDA00, &qword_1C4F10D30);
        v65 = v56;
        v46 = v114;
        MEMORY[0x1C6942830](v65, -1, -1);
        sub_1C440962C(v57);
        MEMORY[0x1C6942830](v57, -1, -1);
        MEMORY[0x1C6942830](v55, -1, -1);
      }

      else
      {

        (*v23)(v48, v5);
      }
    }

    else
    {
      v126 = 0;
    }

    objc_autoreleasePoolPop(v47);
    v66 = *(v46 + 16);
    if (v66)
    {
      v67 = (v46 + 40);
      do
      {
        v68 = *v67;
        v69 = v122[15];
        v70 = v122[16];
        sub_1C4409678(v122 + 12, v69);
        ObjectType = swift_getObjectType();
        v72 = *(v70 + 16);
        v73 = swift_unknownObjectRetain();
        v74 = ObjectType;
        v75 = v126;
        v72(v73, v74, v68, v69, v70);
        if (v75)
        {
          v76 = v121;
          if (qword_1EDDFA668 != -1)
          {
            swift_once();
          }

          v126 = 0;
          v77 = sub_1C4F00978();
          sub_1C442B738(v77, qword_1EDE2DDE0);
          v78 = v125;
          v119(v76, v120, v125);
          swift_unknownObjectRetain();
          v79 = v75;
          v80 = sub_1C4F00968();
          v81 = sub_1C4F01CE8();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v80, v81))
          {
            LODWORD(v118) = v81;
            v82 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v127[0] = v117;
            *v82 = v115;
            swift_getObjectType();
            v83 = (*(v68 + 24))();
            v84 = 0xE900000000000079;
            v85 = 0x6144664F656D6954;
            switch(v83)
            {
              case 1:
                v84 = 0xE90000000000006BLL;
                v85 = 0x656557664F796144;
                break;
              case 2:
                v85 = 0xD000000000000011;
                v86 = &v128;
                goto LABEL_49;
              case 3:
                v85 = 0xD00000000000001ALL;
                v86 = &v129;
                goto LABEL_49;
              case 4:
                v85 = 0xD000000000000019;
                v86 = &v130;
                goto LABEL_49;
              case 5:
                v85 = 0xD000000000000011;
                v86 = &v131;
                goto LABEL_49;
              case 6:
                v85 = 0x636F4C6F7263694DLL;
                v87 = 0x6E6F697461;
                goto LABEL_51;
              case 7:
                v85 = 0x6369666963657053;
                v84 = 0xEF687361486F6547;
                break;
              case 8:
                v85 = 0x6547657372616F43;
                v87 = 0x687361486FLL;
LABEL_51:
                v84 = v87 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v85 = 0x6F6547656772614CLL;
                v84 = 0xEC00000068736148;
                break;
              case 10:
                v85 = 0xD000000000000012;
                v86 = &v132;
LABEL_49:
                v84 = *(v86 - 32);
                break;
              case 11:
                v84 = 0xE400000000000000;
                v85 = 1766222167;
                break;
              case 12:
                v84 = 0xE900000000000065;
                v85 = 0x646F4D7375636F46;
                break;
              case 13:
                v85 = 0x74536E6F69746F4DLL;
                v84 = 0xEB00000000657461;
                break;
              case 14:
                v85 = 0x6144664F74726150;
                break;
              case 15:
                v84 = 0xEA00000000006B65;
                v85 = 0x6557664F74726150;
                break;
              default:
                break;
            }

            v88 = sub_1C441D828(v85, v84, v127);

            *(v82 + 4) = v88;
            *(v82 + 12) = 2080;
            sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
            v89 = v121;
            v90 = v125;
            v91 = sub_1C4F02858();
            v93 = v92;
            (*v123)(v89, v90);
            v94 = sub_1C441D828(v91, v93, v127);

            *(v82 + 14) = v94;
            *(v82 + 22) = 2112;
            v95 = v75;
            v96 = _swift_stdlib_bridgeErrorToNSError();
            *(v82 + 24) = v96;
            v97 = v116;
            *v116 = v96;
            _os_log_impl(&dword_1C43F8000, v80, v118, "BehaviorFeaturizer: Error updating %s for %s behaviors - %@", v82, 0x20u);
            sub_1C4607CD4(v97, &qword_1EC0BDA00, &qword_1C4F10D30);
            MEMORY[0x1C6942830](v97, -1, -1);
            v98 = v117;
            swift_arrayDestroy();
            MEMORY[0x1C6942830](v98, -1, -1);
            MEMORY[0x1C6942830](v82, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();

            (*v123)(v76, v78);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v126 = 0;
        }

        v67 += 2;
        --v66;
      }

      while (v66);
    }

    v39 = (v112 + 1);

    v23 = v123;
    v5 = v125;
    (*v123)(v120, v125);
    result = v111;
  }
}

uint64_t sub_1C4604A6C()
{
  v2 = v0;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1C4409678((v2 + 56), v4);
  result = (*(*(v3 + 8) + 16))(v4);
  if (!v1)
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    sub_1C4409678((v2 + 96), v6);
    (*(v7 + 24))(v6, v7);
    return KeyValueStore.delete(key:)(*(v2 + 152));
  }

  return result;
}

void sub_1C4604B30(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = sub_1C4EFDAB8();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v12 = a2[15];
  v13 = a2[16];
  sub_1C4409678(a2 + 12, v12);
  v41 = a1;
  v14 = sub_1C4609954(a1);
  v16 = v15;
  v17 = (*(v13 + 8))(v14, a3, v14, v15, v12, v13);
  if (v4)
  {
    v40 = a4;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DDE0);
    v19 = a3;
    v20 = v42;
    (*(v9 + 16))(v11, v19, v42);
    v21 = v4;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CE8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v24 = 136315650;
      v25 = sub_1C460AEA8(v41);
      v27 = sub_1C441D828(v25, v26, &v43);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
      v28 = sub_1C4F02858();
      v30 = v29;
      (*(v9 + 8))(v11, v20);
      v31 = sub_1C441D828(v28, v30, &v43);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2112;
      v32 = v4;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v33;
      v34 = v38;
      *v38 = v33;
      _os_log_impl(&dword_1C43F8000, v22, v23, "BehaviorFeaturizer: Error updating %s for %s behaviors - %@", v24, 0x20u);
      sub_1C4607CD4(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v34, -1, -1);
      v35 = v39;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v35, -1, -1);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v20);
    }

    v36 = v40;
    *v40 = 0;
    v36[1] = 0;
  }

  else
  {
    *a4 = v17;
    a4[1] = v16;
  }
}

uint64_t sub_1C4604EE4(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678((v2 + 56), *(v2 + 80));
  sub_1C45E0884(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, a1);
  if (v3)
  {

    sub_1C440BAA8(v8, 1, 1, v9);
LABEL_4:
    sub_1C4607CD4(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 0;
  }

  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1C4EF9B78();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  return v15;
}

void sub_1C46050E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C46059D4();
  if (!v3 && v4 != 0.0)
  {
    sub_1C46059D4();
  }
}

void sub_1C460519C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = -1;
  v6 = HIDWORD(a3) & 1;
  v7 = a3;
  sub_1C4605810(v9, a2, a3 | (v6 << 32));
  if (!v3 && v8 != 0.0)
  {
    sub_1C4605810(a1, a2, v7 | (v6 << 32));
  }
}

double sub_1C4605238(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v10 = *a2;
  v11 = a2[1];
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  sub_1C45D72D0(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
  if (v12[40] == 255)
  {
    return 0.0;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v5;
  v15 = v6;
  sub_1C4605764(v12, v13, a3 | ((HIDWORD(a3) & 1) << 32));
  v8 = v7;
  sub_1C4607CD4(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  return v8;
}

double sub_1C460532C(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v10 = *a1;
  v11 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  sub_1C45D72D0(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
  if (v12[40] == 255)
  {
    return 0.0;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v5;
  v15 = v6;
  sub_1C460519C(v13, v12, a3 | ((HIDWORD(a3) & 1) << 32));
  v8 = v7;
  sub_1C4607CD4(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  return v8;
}

uint64_t sub_1C4605420(char a1, uint64_t a2)
{
  v6 = v2[15];
  v5 = v2[16];
  sub_1C4409678(v2 + 12, v6);
  switch(a1)
  {
    case 1:
      v15 = type metadata accessor for PartOfDayBehaviorHistogram(0);
      result = (*(v5 + 8))(v15, a2, v15, &off_1F43E3C88, v6, v5);
      break;
    case 3:
      v13 = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      result = (*(v5 + 8))(v13, a2, v13, &off_1F43E3BC8, v6, v5);
      break;
    case 4:
      v10 = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      result = (*(v5 + 8))(v10, a2, v10, &off_1F43E3B08, v6, v5);
      break;
    case 5:
      v16 = type metadata accessor for LocationOfInterestBehaviorHistogram(0);
      result = (*(v5 + 8))(v16, a2, v16, &off_1F43E3248, v6, v5);
      break;
    case 6:
      v17 = type metadata accessor for MicroLocationBehaviorHistogram(0);
      result = (*(v5 + 8))(v17, a2, v17, &off_1F43E3648, v6, v5);
      break;
    case 7:
      v14 = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v14, a2, v14, &off_1F43E3548, v6, v5);
      break;
    case 8:
      v19 = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v19, a2, v19, &off_1F43E3448, v6, v5);
      break;
    case 9:
      v12 = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v12, a2, v12, &off_1F43E3348, v6, v5);
      break;
    case 10:
      v18 = type metadata accessor for WiFiBehaviorHistogram(0);
      result = (*(v5 + 8))(v18, a2, v18, &off_1F43E3148, v6, v5);
      break;
    case 11:
      v9 = type metadata accessor for FocusModeBehaviorHistogram(0);
      result = (*(v5 + 8))(v9, a2, v9, &off_1F43E3048, v6, v5);
      break;
    case 12:
      v11 = type metadata accessor for MotionStateBehaviorHistogram(0);
      result = (*(v5 + 8))(v11, a2, v11, &off_1F43E3748, v6, v5);
      break;
    default:
      v7 = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      result = (*(v5 + 8))(v7, a2, v7, &off_1F43E3D48, v6, v5);
      break;
  }

  return result;
}