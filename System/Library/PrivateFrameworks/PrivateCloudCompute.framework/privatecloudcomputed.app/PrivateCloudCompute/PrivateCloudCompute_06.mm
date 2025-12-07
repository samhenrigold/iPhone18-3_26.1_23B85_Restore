uint64_t sub_10008EFB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000130E0;

  return sub_10008BD78(a1, a2, a3 & 1, a4);
}

uint64_t sub_10008F074(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *v5 = v2;
  v5[1] = sub_100014D90;

  return (sub_10008FBC4)(a1, v6, v7);
}

uint64_t sub_10008F128(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000593F8;

  return v5();
}

uint64_t sub_10008F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000903D8(a3, v22 - v9);
  v11 = sub_1001D1BA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100011F00(v10, &qword_100229350, &unk_1001D6BA0);
  }

  else
  {
    sub_1001D1B90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1001D1A70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1001D1840() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10008F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v5 + 32) = 1;
  v7 = sub_1001D20F0();
  v8 = sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  v9 = swift_task_alloc();
  *(v5 + 40) = v9;
  *v9 = v5;
  v9[1] = sub_10008F5C0;

  return dispatch thunk of Clock.sleep(until:tolerance:)(a5, v5 + 16, v7, v8);
}

uint64_t sub_10008F5C0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100090490, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10008F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v5 + 32) = 1;
  v7 = sub_1001D20F0();
  v8 = sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  v9 = swift_task_alloc();
  *(v5 + 40) = v9;
  *v9 = v5;
  v9[1] = sub_10008F808;

  return dispatch thunk of Clock.sleep(until:tolerance:)(a5, v5 + 16, v7, v8);
}

uint64_t sub_10008F808()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008F93C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10008F954(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1001CFBB0();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008FA8C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10008FA8C(v4, v5);
  }

  return sub_1001CFBB0();
}

uint64_t sub_10008FA8C(uint64_t a1, uint64_t a2)
{
  result = sub_1001CF870();
  if (!result || (result = sub_1001CF8A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001CF890();
      return sub_1001CFBB0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008FB20(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1001CF8C0();
      swift_allocObject();
      sub_1001CF8B0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001CFB80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10008FBC4(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1001CFFB0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10008FC84, 0, 0);
}

uint64_t sub_10008FC84()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v3 = 5913;
    *(v3 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v4 = *(v1 + 16);
    sub_100012038(v4, *(v1 + 24));
    sub_100012038(v4, v2);
    sub_1001CFFA0();
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001CFF80();
    sub_10002683C(v4, v2);
    (*(v8 + 8))(v7, v9);
    v10 = v0[2];
    v11 = v0[3];

    v12 = v0[1];

    return v12(v10, v11);
  }
}

uint64_t sub_10008FE64()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10008FFB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001D20F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D20D0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000130E0;

  return sub_10008F4AC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100090104()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009013C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090174()
{
  v0 = sub_1001D0030();
  v2 = v0;
  v3 = v1;
  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(v0) - v0;
  if (__OFSUB__(HIDWORD(v0), v0))
  {
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (__OFADD__(v5, 9))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v17[0] = sub_10008FB20(v5 + 9);
  v17[1] = v9;
  v15 = sub_100011AC0(&qword_100229598, &qword_1001D6900);
  v16 = sub_100090374();
  LOBYTE(v14[0]) = 0;
  sub_100024DC8(v14, v15);
  sub_1001CFB90();
  sub_100011CF0(v14);
  sub_1001CFBB0();
  v15 = &type metadata for Data;
  v16 = &protocol witness table for Data;
  v14[0] = v2;
  v14[1] = v3;
  v10 = sub_100024DC8(v14, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  sub_100012038(v2, v3);
  sub_10008F954(v11, v12, v17);
  sub_100011CF0(v14);
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_100011E48(v2, v3);
  return v17[0];
}

unint64_t sub_100090374()
{
  result = qword_1002295A0;
  if (!qword_1002295A0)
  {
    sub_100011DF4(&qword_100229598, &qword_1001D6900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295A0);
  }

  return result;
}

uint64_t sub_1000903D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100090448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000904A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100090568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedProxiedAttestation(uint64_t a1)
{
  result = qword_100229728;
  if (!qword_100229728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090658(uint64_t a1)
{
  sub_1001CFD60();
  if (v1 <= 0x3F)
  {
    sub_1000906F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000906F4()
{
  if (!qword_100229738)
  {
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, &qword_100229738);
    }
  }
}

__n128 sub_100090744(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100090750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100090798(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_1000907E8()
{
  sub_1001D2580();
  sub_1001D1880();
  sub_1001CFC10();
  return sub_1001D25C0();
}

uint64_t sub_100090850(uint64_t a1)
{
  sub_1001D1880();

  return sub_1001CFC10();
}

Swift::Int sub_1000908A0()
{
  sub_1001D2580();
  sub_1001D1880();
  sub_1001CFC10();
  return sub_1001D25C0();
}

BOOL sub_100090904(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  return sub_1000A1A5C(v2, v3, v4, v5);
}

unint64_t sub_100090994()
{
  result = qword_100229778;
  if (!qword_100229778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229778);
  }

  return result;
}

void sub_1000909E8(uint64_t a1)
{
  sub_1001D1880();
  sub_1001CFC10();
  sub_1001CFC10();
  v2 = type metadata accessor for ValidatedProxiedAttestation(0);
  sub_1001CFD60();
  sub_100090C14(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1740();
  if (*(v1 + *(v2 + 28) + 8))
  {
    sub_1001D25A0(1u);
    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }

  if (*(v1 + *(v2 + 32) + 8))
  {
    sub_1001D25A0(1u);

    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }
}

Swift::Int sub_100090B48()
{
  sub_1001D2580();
  sub_1000909E8(v1);
  return sub_1001D25C0();
}

Swift::Int sub_100090B8C()
{
  sub_1001D2580();
  sub_1000909E8(v1);
  return sub_1001D25C0();
}

uint64_t sub_100090C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100090C5C(uint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1000A1A5C(v4, v5, v6, v7))
  {
    return 0;
  }

  if (!sub_1000A1A5C(a1[4], a1[5], a2[4], a2[5]))
  {
    return 0;
  }

  v9 = type metadata accessor for ValidatedProxiedAttestation(0);
  if ((sub_1001CFD30() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v9 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = *(v9 + 32);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20 && (*v17 == *v19 && v18 == v20 || (sub_1001D2470() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100090D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001CFD60();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v30 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  swift_getKeyPath();
  sub_100091ABC(&qword_100228A68, _s8SchemaV2O4NodeCMa, &unk_1001D5D0C);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100091ABC(&qword_1002289D8, _s8SchemaV2O4NodeCMa, &unk_1001D5D28);
  sub_1001D15B0();

  v31 = v36;
  v32 = v35;
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v28 = v36;
  v29 = v35;
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v26 = v36;
  v27 = v35;
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003C6D0();
  sub_1001D15B0();

  v24 = v36;
  v25 = v35;
  v23 = sub_100045EC0();
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003C7CC();
  sub_1001D15B0();

  v21 = v36;
  v22 = v35;
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100091ABC(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6 = v30;
  sub_1001D15B0();

  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v19 = v36;
  v20 = v35;
  v35 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v7 = v35;
  v8 = v36;
  v9 = v31;
  *a2 = v32;
  *(a2 + 8) = v9;
  *(a2 + 16) = xmmword_1001D6800;
  v10 = v28;
  *(a2 + 32) = v29;
  *(a2 + 40) = v10;
  v11 = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v11;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = v24;
  *(a2 + 80) = v25;
  *(a2 + 88) = v12;
  *(a2 + 96) = v23 & 1;
  v13 = v21;
  *(a2 + 104) = v22;
  *(a2 + 112) = v13;
  v14 = type metadata accessor for ValidatedAttestation(0);
  (*(v33 + 32))(a2 + v14[7], v6, v34);
  v15 = (a2 + v14[8]);
  v16 = v19;
  *v15 = v20;
  v15[1] = v16;
  v17 = (a2 + v14[9]);
  *v17 = v7;
  v17[1] = v8;
  return (*(*(v14 - 1) + 56))(a2, 0, 1, v14);
}

Swift::Int sub_100091328()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1);
  return sub_1001D25C0();
}

Swift::Int sub_10009139C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1);
  return sub_1001D25C0();
}

uint64_t sub_1000913E0()
{
  if (*v0)
  {
    return 0x79786F7270;
  }

  else
  {
    return 0x746365726964;
  }
}

uint64_t type metadata accessor for ValidatedAttestation(uint64_t a1)
{
  result = qword_1002297E8;
  if (!qword_1002297E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000914B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100091574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100091618(uint64_t a1)
{
  sub_1001CFD60();
  if (v1 <= 0x3F)
  {
    sub_1000906F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for NodeKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NodeKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100091824()
{
  result = qword_100229830;
  if (!qword_100229830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229830);
  }

  return result;
}

void sub_100091878(uint64_t a1)
{
  sub_10008A894(a1);
  sub_1001D2590(*(v1 + 96));
  sub_1001CFC10();
  v2 = type metadata accessor for ValidatedAttestation(0);
  sub_1001CFD60();
  sub_100091ABC(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1740();
  if (*(v1 + *(v2 + 32) + 8))
  {
    sub_1001D25A0(1u);
    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }

  if (*(v1 + *(v2 + 36) + 8))
  {
    sub_1001D25A0(1u);

    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }
}

Swift::Int sub_1000919F0()
{
  sub_1001D2580();
  sub_100091878(v1);
  return sub_1001D25C0();
}

Swift::Int sub_100091A34()
{
  sub_1001D2580();
  sub_100091878(v1);
  return sub_1001D25C0();
}

uint64_t sub_100091ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100091B04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v4;
  v5 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v5;
  v6 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v6;
  v7 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v7;
  v8 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v8;
  v9 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v9;
  if (!sub_10008AA70(v22, v23))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  if (!sub_1000A1A5C(*(a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112)))
  {
    return 0;
  }

  v10 = type metadata accessor for ValidatedAttestation(0);
  if ((sub_1001CFD30() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v10 + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15 || (*v12 != *v14 || v13 != v15) && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(v10 + 36);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (v20 && (*v17 == *v19 && v18 == v20 || (sub_1001D2470() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100091C50()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242D78);
  v4 = sub_10003A37C(v3, qword_100242D78);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100091D80()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242D90);
  v4 = sub_10003A37C(v3, qword_100242D90);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100091EDC()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242DC0);
  v4 = sub_10003A37C(v3, qword_100242DC0);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1001D1380();
  sub_10003B610(v8, a2);
  v9 = sub_10003A37C(v8, a2);
  sub_1001D1390();
  v10 = *(v8 - 8);
  result = (*(v10 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 32))(v9, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000921B4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E20);
  v4 = sub_10003A37C(v3, qword_100242E20);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000922E4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E38);
  v4 = sub_10003A37C(v3, qword_100242E38);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092414()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E50);
  v4 = sub_10003A37C(v3, qword_100242E50);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092544()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E68);
  v4 = sub_10003A37C(v3, qword_100242E68);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092674()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E80);
  v4 = sub_10003A37C(v3, qword_100242E80);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000927A4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242E98);
  v4 = sub_10003A37C(v3, qword_100242E98);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000928D4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242EB0);
  v4 = sub_10003A37C(v3, qword_100242EB0);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092A04()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242EC8);
  v4 = sub_10003A37C(v3, qword_100242EC8);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092B34()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242EE0);
  v4 = sub_10003A37C(v3, qword_100242EE0);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092C64()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242EF8);
  v4 = sub_10003A37C(v3, qword_100242EF8);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092D94()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1001D1380();
  sub_10003B610(v3, qword_100242F10);
  v4 = sub_10003A37C(v3, qword_100242F10);
  sub_1001D1390();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_100092EC4(uint64_t a1)
{
  sub_100093124(319);
  if (v1 <= 0x3F)
  {
    sub_1001CFE40();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t *sub_100092FE4()
{
  v1 = *v0;
  sub_10009317C(v0 + qword_100229848);
  sub_10009317C(v0 + qword_100229850);

  v2 = qword_100242F30;
  v3 = sub_1001CFE40();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000930E0()
{
  sub_100092FE4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100093124(uint64_t a1)
{
  if (!qword_1002298D8)
  {
    sub_1001CFD60();
    v1 = sub_1001D1F00();
    if (!v2)
    {
      atomic_store(v1, &qword_1002298D8);
    }
  }
}

uint64_t sub_10009317C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000931F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1001CFD60();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  sub_100096820(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10009317C(v6);
    v14 = sub_1001D17A0();
    v15 = [a1 integerForKey:v14];

    if (!v15)
    {
      v20 = 1;
      return (*(v8 + 56))(a2, v20, 1, v7);
    }

    sub_1001CFC70();
    isa = sub_1001CFCB0().super.isa;
    v17 = sub_1001D17A0();
    [a1 setObject:isa forKey:v17];

    v18 = sub_1001D17A0();
    [a1 removeObjectForKey:v18];

    (*(v8 + 32))(a2, v11, v7);
  }

  else
  {
    v19 = *(v8 + 32);
    v19(v13, v6, v7);
    v19(a2, v13, v7);
  }

  v20 = 0;
  return (*(v8 + 56))(a2, v20, 1, v7);
}

void Configuration.environment(systemInfo:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1001D02E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0170();
  sub_1001D1840();

  v12 = os_variant_allows_internal_security_policies();

  if (v12)
  {
    Configuration.internalEnvironment(systemInfo:)(a1, a2, a3, a4);
  }

  else
  {
    Configuration.customerEnvironment.getter(a4);
  }

  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v13 = sub_1001D0E60();
  sub_10003A37C(v13, qword_1002298E0);
  (*(v9 + 16))(v11, a4, v8);
  v14 = sub_1001D0E50();
  v15 = sub_1001D1E00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_1001D02B0();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_1000954E0(v18, v20, &v23);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "current environment=%{public}s", v16, 0xCu);
    sub_100011CF0(v17);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100093738()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001D0E60();
  sub_10003B610(v4, qword_1002298E0);
  sub_10003A37C(v4, qword_1002298E0);
  (*(v1 + 104))(v3, enum case for TC2LogCategory.configuration(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Configuration.internalEnvironment(systemInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  sub_1001D0170();
  sub_1001D1840();

  v11 = os_variant_allows_internal_security_policies();

  if (v11)
  {
    Configuration.configuredEnvironment.getter(v10);
    v13 = sub_1001D02E0();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v10, 1, v13) == 1)
    {
      sub_100094228(a1, a2, a3, a4);
      result = v15(v10, 1, v13);
      if (result != 1)
      {
        return sub_100095994(v10);
      }
    }

    else
    {
      return (*(v14 + 32))(a4, v10, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Configuration.customerEnvironment.getter(uint64_t a1@<X8>)
{
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(a1, enum case for TC2Environment.production(_:), v2);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v6 = sub_1001D0E60();
  sub_10003A37C(v6, qword_1002298E0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1001D02B0();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1000954E0(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration selected environment=%{public}s", v9, 0xCu);
    sub_100011CF0(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t Configuration.configuredEnvironment.getter@<X0>(char *a3@<X8>)
{
  v38 = a3;
  v3 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v39 = sub_1001D02E0();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  sub_1001D0170();
  sub_1001D1840();

  v12 = os_variant_allows_internal_security_policies();

  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0310();
  sub_10005956C();
  sub_1001D0210();
  (*(v9 + 8))(v11, v8);
  v13 = v41;
  if (!v41)
  {
    v8 = v39;
    if (qword_100227738 == -1)
    {
LABEL_9:
      v21 = sub_1001D0E60();
      sub_10003A37C(v21, qword_1002298E0);
      v16 = sub_1001D0E50();
      v22 = sub_1001D1DD0();
      if (!os_log_type_enabled(v16, v22))
      {
LABEL_17:

        v32 = 1;
        v33 = v38;
        return (*(v6 + 56))(v33, v32, 1, v8);
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v22, "Configuration defaults absent, no environment configured", v23, 2u);
LABEL_11:

      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  v14 = v40;

  sub_1001D02A0();
  v8 = v39;
  if ((*(v6 + 48))(v5, 1, v39) == 1)
  {
    sub_100095994(v5);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v15 = sub_1001D0E60();
    sub_10003A37C(v15, qword_1002298E0);

    v16 = sub_1001D0E50();
    v17 = sub_1001D1DD0();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136446210;
    v20 = sub_1000954E0(v14, v13, &v40);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Configuration defaults=%{public}s unrecognized, no environment configured", v18, 0xCu);
    sub_100011CF0(v19);

    goto LABEL_11;
  }

  v24 = *(v6 + 32);
  v25 = v37;
  v24(v37, v5, v8);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v26 = sub_1001D0E60();
  sub_10003A37C(v26, qword_1002298E0);

  v27 = sub_1001D0E50();
  v28 = sub_1001D1DC0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136446210;
    v31 = sub_1000954E0(v14, v13, &v40);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Configuration selected configured environment=%{public}s from defaults", v29, 0xCu);
    sub_100011CF0(v30);
    v8 = v39;
  }

  else
  {
  }

  v34 = v38;
  v24(v38, v25, v8);
  v33 = v34;
  v32 = 0;
  return (*(v6 + 56))(v33, v32, 1, v8);
}

uint64_t sub_100094228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v141 = a3;
  v144 = a2;
  v6 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v7 = __chkstk_darwin(v6 - 8);
  v138 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v128 - v9;
  v142 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v11 = *(v142 - 8);
  v12 = __chkstk_darwin(v142);
  v14 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (v128 - v15);
  v143 = sub_1001D02E0();
  v145 = *(v143 - 8);
  v17 = __chkstk_darwin(v143);
  v139 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v140 = v128 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = v128 - v22;
  v23 = __chkstk_darwin(v21);
  v133 = v128 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = v128 - v26;
  __chkstk_darwin(v25);
  v29 = v128 - v28;
  sub_1001D0170();
  sub_1001D1840();

  v30 = os_variant_allows_internal_security_policies();

  if (!v30)
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_1001D0170();
  sub_1001D1840();

  has_internal_content = os_variant_has_internal_content();

  if ((has_internal_content & 1) == 0)
  {
    v16 = v145;
    v10 = v143;
    v145[13](v29, enum case for TC2Environment.production(_:), v143);
    if (qword_100227738 == -1)
    {
LABEL_14:
      v51 = sub_1001D0E60();
      sub_10003A37C(v51, qword_1002298E0);
      v16[2](v27, v29, v10);
      v52 = sub_1001D0E50();
      v53 = sub_1001D1DC0();
      v54 = a4;
      if (os_log_type_enabled(v52, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v146 = v56;
        *v55 = 136446210;
        v57 = sub_1001D02B0();
        v59 = v58;
        (v145[1])(v27, v10);
        v60 = sub_1000954E0(v57, v59, &v146);
        v16 = v145;

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v52, v53, "Configuration selected environment=%{public}s", v55, 0xCu);
        sub_100011CF0(v56);
      }

      else
      {

        (v16[1])(v27, v10);
      }

      return (v16[4])(v54, v29, v10);
    }

LABEL_66:
    swift_once();
    goto LABEL_14;
  }

  v32 = a1[3];
  v33 = a1[4];
  sub_100024DC8(a1, v32);
  v136 = (*(v33 + 24))(v32, v33);
  v137 = v34;
  v35 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0450();
  v131 = sub_10005956C();
  v132 = v35;
  sub_1001D0210();
  v130 = *(v11 + 8);
  v36 = v130(v16, v142);
  v37 = v147;
  v134 = a4;
  if (v147)
  {
    v38 = v146;
    v146 = 44;
    v147 = 0xE100000000000000;
    __chkstk_darwin(v36);
    v128[-2] = &v146;

    v40 = sub_1001C74B0(1, 1, sub_100095BB8, &v128[-4], v38, v37, v39);
    if (v40[2] == 2)
    {
      v128[1] = v11 + 8;

      if (v40[2])
      {
        v41 = v40[5];

        v42 = sub_1001D1850();
        v44 = v43;

        if (v40[2] < 2uLL)
        {
          __break(1u);
        }

        else
        {

          v129 = sub_1001D1850();
          v41 = v45;

          if (qword_100227738 == -1)
          {
            goto LABEL_8;
          }
        }

        swift_once();
LABEL_8:
        v46 = sub_1001D0E60();
        sub_10003A37C(v46, qword_1002298E0);

        v47 = sub_1001D0E50();
        v48 = sub_1001D1DD0();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          *v49 = 136315394;
          *(v49 + 4) = sub_1000954E0(v42, v44, &v146);
          *(v49 + 12) = 2082;
          *(v49 + 14) = sub_1000954E0(v129, v41, &v146);
          _os_log_impl(&_mh_execute_header, v47, v48, "Configuration saw bootFixedLiveOnEnvironment with id=%s, environment=%{public}s", v49, 0x16u);
          swift_arrayDestroy();
        }

        v50 = v134;
        if (v42 == v136 && v44 == v137)
        {
        }

        else
        {
          v77 = sub_1001D2470();

          if ((v77 & 1) == 0)
          {

            v90 = sub_1001D0E50();
            v91 = sub_1001D1DD0();
            v92 = os_log_type_enabled(v90, v91);
            v67 = v145;
            if (v92)
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&_mh_execute_header, v90, v91, "Configuration saw bootFixedLiveOnEnvironment from previous boot, ignoring", v93, 2u);
            }

            v66 = v143;
LABEL_38:
            v68 = v140;
            goto LABEL_39;
          }
        }

        sub_1001D02A0();
        v78 = v145;
        v79 = v143;
        if ((v145[6])(v10, 1, v143) != 1)
        {

          v83 = v78[4];
          v84 = v133;
          v83(v133, v10, v79);

          v85 = sub_1001D0E50();
          v86 = sub_1001D1DC0();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v146 = v88;
            *v87 = 136446210;
            v89 = sub_1000954E0(v129, v41, &v146);

            *(v87 + 4) = v89;
            _os_log_impl(&_mh_execute_header, v85, v86, "Configuration agrees with current boot's selection, environment=%{public}s", v87, 0xCu);
            sub_100011CF0(v88);
            v84 = v133;

            v50 = v134;
          }

          else
          {
          }

          return (v83)(v50, v84, v79);
        }

        sub_100095994(v10);
        v80 = sub_1001D0E50();
        v81 = sub_1001D1DE0();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Configuration saw bootFixedLiveOnEnvironment with invalid environment, ignoring", v82, 2u);
        }

        v66 = v143;
        v67 = v145;
        goto LABEL_38;
      }

      __break(1u);
    }

    else
    {

      if (qword_100227738 == -1)
      {
LABEL_24:
        v70 = sub_1001D0E60();
        sub_10003A37C(v70, qword_1002298E0);

        v71 = sub_1001D0E50();
        v72 = sub_1001D1DE0();

        v73 = os_log_type_enabled(v71, v72);
        v66 = v143;
        v68 = v140;
        if (v73)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v146 = v75;
          *v74 = 136315138;
          v76 = sub_1000954E0(v38, v37, &v146);

          *(v74 + 4) = v76;
          _os_log_impl(&_mh_execute_header, v71, v72, "Configuration saw invalid bootFixedLiveOnEnvironment=%s", v74, 0xCu);
          sub_100011CF0(v75);
        }

        else
        {
        }

        v50 = v134;
        v67 = v145;
        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  v50 = a4;
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v62 = sub_1001D0E60();
  sub_10003A37C(v62, qword_1002298E0);
  v63 = sub_1001D0E50();
  v64 = sub_1001D1DD0();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v143;
  v67 = v145;
  v68 = v140;
  if (v65)
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Configuration does not see bootFixedLiveOnEnvironment", v69, 2u);
  }

LABEL_39:
  v94 = v130;
  sub_1001D0420();
  sub_1001D0210();
  v94(v14, v142);
  v95 = v147;
  if (!v147)
  {
    v104 = v139;
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v105 = sub_1001D0E60();
    sub_10003A37C(v105, qword_1002298E0);
    v106 = sub_1001D0E50();
    v107 = sub_1001D1DD0();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Configuration does not see proposedEnvironment", v108, 2u);
    }

    goto LABEL_57;
  }

  v96 = v146;

  v97 = v138;
  sub_1001D02A0();
  if ((v67[6])(v97, 1, v66) == 1)
  {
    sub_100095994(v97);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v98 = sub_1001D0E60();
    sub_10003A37C(v98, qword_1002298E0);

    v99 = sub_1001D0E50();
    v100 = sub_1001D1DE0();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v146 = v102;
      *v101 = 136446210;
      v103 = sub_1000954E0(v96, v95, &v146);

      *(v101 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v99, v100, "Configuration saw invalid proposed environment=%{public}s, ignoring", v101, 0xCu);
      sub_100011CF0(v102);

      v50 = v134;
    }

    else
    {
    }

    v104 = v139;
LABEL_57:
    v67[13](v68, enum case for TC2Environment.carry(_:), v66);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v116 = sub_1001D0E60();
    sub_10003A37C(v116, qword_1002298E0);
    v67[2](v104, v68, v66);
    v117 = sub_1001D0E50();
    v118 = sub_1001D1DC0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v146 = v120;
      *v119 = 136446210;
      v121 = sub_1001D02B0();
      v122 = v104;
      v124 = v123;
      (v67[1])(v122, v66);
      v125 = sub_1000954E0(v121, v124, &v146);

      *(v119 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v117, v118, "Configuration selected environment=%{public}s", v119, 0xCu);
      sub_100011CF0(v120);
      v50 = v134;
    }

    else
    {

      (v67[1])(v104, v66);
    }

    v126 = sub_1001D02B0();
    sub_1000959FC(v136, v137, v126, v127);

    return (v67[4])(v50, v68, v66);
  }

  v109 = v67[4];
  v110 = v135;
  v109(v135, v97, v66);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v111 = sub_1001D0E60();
  sub_10003A37C(v111, qword_1002298E0);

  v112 = sub_1001D0E50();
  v113 = sub_1001D1DC0();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v146 = v115;
    *v114 = 136446210;
    *(v114 + 4) = sub_1000954E0(v96, v95, &v146);
    _os_log_impl(&_mh_execute_header, v112, v113, "Configuration moving to proposed environment=%{public}s", v114, 0xCu);
    sub_100011CF0(v115);

    v50 = v134;
  }

  sub_1000959FC(v136, v137, v96, v95);

  return (v109)(v50, v110, v66);
}

unint64_t sub_1000954E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000955AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100089F9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100011CF0(v11);
  return v7;
}

unint64_t sub_1000955AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000956B8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1001D2060();
    a6 = v11;
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

void *sub_1000956B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100095704(a1, a2);
  sub_100095834(&off_10021B940);
  return v3;
}

void *sub_100095704(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100095920(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1001D2060();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1001D18D0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100095920(v10, 0);
        result = sub_1001D2010();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_100095834(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_100009294(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100095920(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100011AC0(&qword_100227B80, &qword_1001D3728);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100095994(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000959FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  sub_1001D0170();
  sub_1001D1840();

  v12 = os_variant_allows_internal_security_policies();

  if (v12)
  {
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0450();
    v19[0] = a1;
    v19[1] = a2;

    v20._countAndFlagsBits = 44;
    v20._object = 0xE100000000000000;
    sub_1001D18B0(v20);
    v21._countAndFlagsBits = a3;
    v21._object = a4;
    sub_1001D18B0(v21);
    v14 = sub_1001D0570();
    v16 = v15;
    v23._countAndFlagsBits = sub_1001D0560();
    v18 = v17;
    v22._countAndFlagsBits = v14;
    v22._object = v16;
    v23._object = v18;
    sub_1001D1870(v22, v23);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100095BD8()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001D0E60();
  sub_10003B610(v4, qword_1002298F8);
  sub_10003A37C(v4, qword_1002298F8);
  (*(v1 + 104))(v3, enum case for TC2LogCategory.configuration(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v3, v0);
}

void *sub_100095D28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  a3(&type metadata for String);
  sub_1001D0210();
  (*(v5 + 8))(v7, v4);
  v8 = sub_100095E6C(v10[0], v10[1]);

  return v8;
}

void *sub_100095E6C(void *a1, uint64_t a2)
{
  sub_1001D0170();
  sub_1001D1840();

  v4 = os_variant_allows_internal_security_policies();

  if (!v4)
  {
LABEL_10:

    return a1;
  }

  sub_1001D0C80();
  if ((sub_1001D0C70() & 1) == 0)
  {
    if (qword_100227740 != -1)
    {
      swift_once();
    }

    v6 = sub_1001D0E60();
    sub_10003A37C(v6, qword_1002298F8);
    v7 = sub_1001D0E50();
    v8 = sub_1001D1E00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "not appending csf bypass because no eligibility bypass", v9, 2u);
    }

    goto LABEL_10;
  }

  sub_100011EAC();
  v18 = a1;
  v19 = a2;
  if (sub_1001D1F40())
  {

    v5._countAndFlagsBits = 44;
  }

  else
  {

    v5._countAndFlagsBits = 59;
  }

  v5._object = 0xE100000000000000;
  sub_1001D18B0(v5);

  v20._object = 0x80000001001E3DD0;
  v20._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v20);

  a1 = v18;
  v10 = v19;
  v11 = qword_100227740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002298F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000954E0(a1, v10, &v18);
    _os_log_impl(&_mh_execute_header, v13, v14, "appended bypass: %s", v15, 0xCu);
    sub_100011CF0(v16);
  }

  return a1;
}

uint64_t sub_100096168(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (v2 >= 0xA)
  {
    if (v2 >= 0x64)
    {
      if (v2 >= 0x3E8)
      {
        if (v2 >> 4 >= 0x271)
        {
          if (v2 >> 5 >= 0xC35)
          {
            v3 = 1000000;
            if (v2 >= 0xF4240)
            {
              if (v2 >= 0x989680)
              {
                v3 = 10000000;
                if (v2 >= 0x5F5E100)
                {
                  v3 = 100000000;
                  if (v2 >= 0x3B9ACA00)
                  {
                    v3 = 1000000000;
                    if (v2 >= 0x2540BE400)
                    {
                      v3 = 10000000000;
                      if (v2 >= 0x174876E800)
                      {
                        v3 = 100000000000;
                        if (v2 >= 0xE8D4A51000)
                        {
                          v4 = 1000000000000000000;
                          if (v2 < 0xDE0B6B3A7640000)
                          {
                            v4 = 100000000000000000;
                          }

                          if (v2 >= 0x16345785D8A0000)
                          {
                            v5 = v4;
                          }

                          else
                          {
                            v5 = 10000000000000000;
                          }

                          if (v2 >= 0x2386F26FC10000)
                          {
                            v6 = v5;
                          }

                          else
                          {
                            v6 = 1000000000000000;
                          }

                          if (v2 >= 0x38D7EA4C68000)
                          {
                            v7 = v6;
                          }

                          else
                          {
                            v7 = 100000000000000;
                          }

                          if (v2 >= 0x5AF3107A4000)
                          {
                            v8 = v7;
                          }

                          else
                          {
                            v8 = 10000000000000;
                          }

                          if (v2 >= 0x9184E72A000)
                          {
                            v3 = v8;
                          }

                          else
                          {
                            v3 = 1000000000000;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v3 = 100000;
            }
          }

          else
          {
            v3 = 10000;
          }
        }

        else
        {
          v3 = 1000;
        }
      }

      else
      {
        v3 = 100;
      }
    }

    else
    {
      v3 = 10;
    }
  }

  else
  {
    v3 = 1;
  }

  v9 = result - 1;
  if (result != 1)
  {
LABEL_47:
    while (v3 != 1)
    {
      v12 = v3;
      v3 /= 0xAuLL;
      if (!--v9)
      {
        if (v12 >= 0xA)
        {
          break;
        }

        __break(1u);
        goto LABEL_51;
      }
    }
  }

  v10 = v2 % v3;
  v11 = v2 >= v2 % v3;
  v2 -= v2 % v3;
  v9 = !v11;
  if (v3 <= 2 * v10)
  {
LABEL_51:
    if (v9)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v11 = __CFADD__(v2, v3);
    v2 += v3;
    if (v11)
    {
LABEL_62:
      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v13 = (a2 > 0) | (a2 >> 63);
    result = v2 * v13;
    if ((v2 * v13) >> 64 == (v2 * v13) >> 63)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (a2 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0x8000000000000000;
  }
}

id sub_100096398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(NSPPrivateAccessTokenChallenge);
  v5 = sub_1001D17A0();
  v6 = [v4 initRSABlindSignatureChallengeWithIssuerName:v5 redemptionNonce:0 originNames:0];

  v7 = objc_allocWithZone(NSPPrivateAccessTokenChallenge);
  v8 = sub_1001D17A0();
  v9 = [v7 initRSABlindSignatureChallengeWithIssuerName:v8 redemptionNonce:0 originNames:0];

  result = [v6 challengeData];
  if (result)
  {
    v11 = result;
    v12 = sub_1001CFC00();
    v14 = v13;

    v15.super.isa = sub_1001CFBE0().super.isa;
    sub_100011E48(v12, v14);
    result = [v9 challengeData];
    if (result)
    {
      v16 = result;

      v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v18 = sub_1001CFC00();
      v20 = v19;

      isa = sub_1001CFBE0().super.isa;
      sub_100011E48(v18, v20);
      v22 = [v17 initForKnownIssuerWithLongLivedTokenChallenge:v15.super.isa oneTimeTokenChallenge:isa];

      [v22 setSystemClient:1];
      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100096568(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1001D02F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D0E60();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for TC2LogCategory.network(_:), v7);
  sub_1001D08B0();
  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRetain();
  v15 = sub_1001D0E50();
  v16 = sub_1001D1DE0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[1] = a4;
    v19 = a3;
    v20 = v18;
    v26 = v18;
    *v17 = 136315138;
    swift_getObjectType();
    v25[2] = a1;
    swift_unknownObjectRetain();
    v21 = sub_1001D1820();
    v23 = sub_1000954E0(v21, v22, &v26);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "not verifying certificate %s", v17, 0xCu);
    sub_100011CF0(v20);
    a3 = v19;
  }

  a3(1);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100096820@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1001D17A0();
  v6 = [v3 valueForKey:v5];

  if (v6)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v7 = sub_1001CFD60();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a3, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_100096954(v13);
    v10 = sub_1001CFD60();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_100096954(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_1002300E0, &qword_1001E1140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000969BC(uint64_t a1)
{
  v1 = sub_1001D0890();
  if (*(sub_1001D0870() + 16))
  {
    sub_100006028(0x636E657265666E69, 0xEC00000064692D65);
    if (v2)
    {
    }
  }

  return v1;
}

uint64_t sub_100096A60@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1001D0870();
  if (*(v3 + 16) && (v4 = sub_100006028(0x636E657265666E69, 0xEC00000064692D65), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    sub_1001D0890();
    sub_100011AC0(&qword_100229910, &qword_1001D7150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D39F0;
    *(inited + 32) = 0x636E657265666E69;
    v10 = inited + 32;
    *(inited + 40) = 0xEC00000064692D65;
    *(inited + 48) = v8;
    *(inited + 56) = v7;
    sub_1000D65D4(inited);
    swift_setDeallocating();
    sub_100096C30(v10);
    sub_1001D0880();
    v11 = sub_1001D08A0();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {

    v13 = sub_1001D08A0();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_100096C30(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100229918, &qword_1001D7158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.applicationPayload.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229920, &qword_1001D7190);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      goto LABEL_12;
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  v11 = xmmword_1001D3A00;
LABEL_12:
  *v5 = v11;
  return sub_100096F2C;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.authToken.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_100229920, &qword_1001D7190);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100097550(v6, a1, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    }

    sub_100097390(v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_AuthToken.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.authToken.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
LABEL_15:
    *v10 = xmmword_1001D3A00;
    v10[1] = xmmword_1001D3A00;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_100097360;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  return sub_100097360;
}

uint64_t sub_100097390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.finalMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_100229920, &qword_1001D7190);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100097550(v6, a1, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    }

    sub_100097390(v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_100097550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000975F4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_100011F00(v3, &qword_100229920, &qword_1001D7190);
  sub_100097550(a1, v3, a2);
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.finalMessage.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000978B4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
  return sub_1000978B4;
}

void sub_1000978E4(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C((*a1)[3], v9, a3);
    sub_100011F00(v12, &qword_100229920, &qword_1001D7190);
    sub_100097550(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_100097390(v10, a5);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229920, &qword_1001D7190);
    sub_100097550(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t sub_100097A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static Proto_PrivateCloudCompute_AuthToken.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_1000A1A5C(*a1, a1[1], *a2, a2[1]) || !sub_1000A1A5C(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_PrivateCloudCompute_FinalMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.tokenGrantingToken.getter()
{
  v1 = *v0;
  sub_100012038(*v0, *(v0 + 8));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.tokenGrantingToken.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.ottSalt.getter()
{
  v1 = *(v0 + 16);
  sub_100012038(v1, *(v0 + 24));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.ottSalt.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_PrivateCloudCompute_AuthToken.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_PrivateCloudCompute_FinalMessage.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001D0940();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Proto_PrivateCloudCompute_FinalMessage.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1001D0940();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100098054(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_100011AC0(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  sub_10001208C(v9, &v15 - v11, a1, a2);
  v13 = a3(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_100011F00(v12, a1, a2);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v12;
    }

    sub_100097390(v12, a4);
  }

  return 0;
}

uint64_t sub_1000981A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  sub_100011F00(v6, a3, a4);
  *v6 = a1;
  v6[1] = a2;
  v10 = a5(0);
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(v6, 0, 1, v10);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseUuid.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      goto LABEL_12;
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  v11 = xmmword_1001D3A00;
LABEL_12:
  *v5 = v11;
  return sub_1000983E4;
}

void sub_1000983FC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v9 = **a1;
  v8 = (*a1)[1];
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v13 = (*a1)[2];
  v12 = (*a1)[3];
  if (a2)
  {
    sub_100012038(**a1, v8);
    sub_100011F00(v13, a3, a4);
    *v13 = v9;
    v13[1] = v8;
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v13, 0, 1, v10);
    sub_100011E48(*v7, v7[1]);
  }

  else
  {
    sub_100011F00((*a1)[2], a3, a4);
    *v13 = v9;
    v13[1] = v8;
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v13, 0, 1, v10);
  }

  free(v12);

  free(v7);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responsePayload.getter()
{
  v1 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  sub_10001208C(v0, &v6 - v2, &qword_100229930, &qword_1001D7198);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_100011F00(v3, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v3;
    }

    sub_100097390(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  return 0;
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responsePayload.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_12:
    v11 = xmmword_1001D3A00;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_100098808;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseSummary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10001208C(v2, &v12 - v5, &qword_100229930, &qword_1001D7198);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100097550(v6, a1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    }

    sub_100097390(v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_100098A90(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_100011F00(v3, &qword_100229930, &qword_1001D7198);
  sub_100097550(a1, v3, a2);
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseSummary.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_100229930, &qword_1001D7198);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v15 = *(v9 + 24);
    v16 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return sub_100098DB8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v8, v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  return sub_100098DB8;
}

void sub_100098DE8(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C((*a1)[3], v9, a3);
    sub_100011F00(v12, &qword_100229930, &qword_1001D7198);
    sub_100097550(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_100097390(v10, a5);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229930, &qword_1001D7198);
    sub_100097550(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.requestExecutionLogEntry.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10001208C(v2, &v12 - v5, &qword_100229930, &qword_1001D7198);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_100097550(v6, a1, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    }

    sub_100097390(v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  *a1 = 0;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  *&a1[*(v9 + 24)] = xmmword_1001D6800;
  v10 = *(v9 + 28);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  *&a1[*(v2 + 24)] = xmmword_1001D6800;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.requestExecutionLogEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_100229930, &qword_1001D7198);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_15:
    *v12 = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    *&v12[*(v9 + 24)] = xmmword_1001D6800;
    v15 = *(v9 + 28);
    v16 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    return sub_100099438;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v8, v12, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  return sub_100099438;
}

uint64_t sub_100099480@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009951C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void sub_10009963C(uint64_t a1@<X8>)
{
  sub_1000A36F0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100099688(uint64_t a2@<X8>)
{
  sub_1000A36F0();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

Swift::Int sub_1000996CC(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_100099738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A374C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100099784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(v1 + *(v6 + 24), v5, &qword_100229938, &unk_1001D71A0);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100097550(v5, a1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  }

  *a1 = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_100229938, &unk_1001D71A0);
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  sub_100011F00(v1 + v3, &qword_100229938, &unk_1001D71A0);
  sub_100097550(a1, v1 + v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229938, &unk_1001D71A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_100229938, &unk_1001D71A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_100229938, &unk_1001D71A0);
    }
  }

  else
  {
    sub_100097550(v7, v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  }

  return sub_100099C60;
}

BOOL Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.hasPostResponseActions.getter()
{
  v1 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(v0 + *(v4 + 24), v3, &qword_100229938, &unk_1001D71A0);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_100229938, &unk_1001D71A0);
  return v6;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.clearPostResponseActions()()
{
  v1 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  sub_100011F00(v0 + v1, &qword_100229938, &unk_1001D71A0);
  v2 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.parseType.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100099F64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_100089C38(*v1, v2);
  return v3;
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  result = sub_10002683C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_100089C38(v5, v6);
  return sub_10009A0F4;
}

uint64_t sub_10009A0F4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_100012038(*a1, v2);
    sub_10002683C(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_100011E48(v4, v2);
  }

  else
  {
    result = sub_10002683C(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_RequestExecutionLogEntry.clearAttestation()()
{
  v1 = v0 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  sub_10002683C(*v1, *(v1 + 8));
  *v1 = xmmword_1001D6800;
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(v1 + *(v6 + 28), v5, &qword_100229940, &qword_1001E19D0);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_100097550(v5, a1, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1001D7160;
  *(a1 + 32) = 0xC000000000000000;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_100229940, &qword_1001E19D0);
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1001D7160;
  *(a1 + 32) = 0xC000000000000000;
  type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  sub_100011F00(v1 + v3, &qword_100229940, &qword_1001E19D0);
  sub_100097550(a1, v1 + v3, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229940, &qword_1001E19D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_100229940, &qword_1001E19D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = xmmword_1001D7160;
    *(v13 + 32) = 0xC000000000000000;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_100229940, &qword_1001E19D0);
    }
  }

  else
  {
    sub_100097550(v7, v13, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  }

  return sub_10009A6A0;
}

void sub_10009A6DC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C(v12, v11, a5);
    sub_100011F00(v15 + v10, a3, a4);
    sub_100097550(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_100097390(v12, a6);
  }

  else
  {
    sub_100011F00(v15 + v10, a3, a4);
    sub_100097550(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Proto_PrivateCloudCompute_RequestExecutionLogEntry.hasResponseContext.getter()
{
  v1 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(v0 + *(v4 + 28), v3, &qword_100229940, &qword_1001E19D0);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_100229940, &qword_1001E19D0);
  return v6;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_RequestExecutionLogEntry.clearResponseContext()()
{
  v1 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  sub_100011F00(v0 + v1, &qword_100229940, &qword_1001E19D0);
  v2 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadKey.getter()
{
  v1 = *(v0 + 8);
  sub_100012038(v1, *(v0 + 16));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadNonce.getter()
{
  v1 = *(v0 + 24);
  sub_100012038(v1, *(v0 + 32));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadNonce.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10009ACD0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "application_payload";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "auth_token";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "final_message";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 4:
          sub_10009B5E4(v5, a1, a2, a3);
          break;
        case 3:
          sub_10009B028(v5, a1, a2, a3);
          break;
        case 1:
          sub_10009D340(a1, v5, a2, a3, &qword_100229920, &qword_1001D7190, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type, 0);
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022A100, &qword_1001D8060);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229920, &qword_1001D7190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229920, &qword_1001D7190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_100097550(v12, v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    sub_100097550(v19, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v24, &qword_10022A100, &qword_1001D8060);
      v31 = v40;
      sub_100097550(v17, v40, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
      sub_100097550(v31, v24, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_100097390(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022A100, &qword_1001D8060);
  }

  sub_10001208C(v24, v32, &qword_10022A100, &qword_1001D8060);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022A100, &qword_1001D8060);
    return sub_100011F00(v32, &qword_10022A100, &qword_1001D8060);
  }

  else
  {
    v35 = v39;
    sub_100097550(v32, v39, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022A100, &qword_1001D8060);
    v36 = v38;
    sub_100011F00(v38, &qword_100229920, &qword_1001D7190);
    sub_100097550(v35, v36, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_10009B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022A108, &qword_1001D8068);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229920, &qword_1001D7190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229920, &qword_1001D7190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_100097550(v12, v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    sub_100097550(v19, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v24, &qword_10022A108, &qword_1001D8068);
      v31 = v40;
      sub_100097550(v17, v40, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
      sub_100097550(v31, v24, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_100097390(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage, &protocol conformance descriptor for Proto_PrivateCloudCompute_FinalMessage);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022A108, &qword_1001D8068);
  }

  sub_10001208C(v24, v32, &qword_10022A108, &qword_1001D8068);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022A108, &qword_1001D8068);
    return sub_100011F00(v32, &qword_10022A108, &qword_1001D8068);
  }

  else
  {
    v35 = v39;
    sub_100097550(v32, v39, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022A108, &qword_1001D8068);
    v36 = v38;
    sub_100011F00(v38, &qword_100229920, &qword_1001D7190);
    sub_100097550(v35, v36, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_10001208C(v3, &v14 - v9, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    result = sub_10009E320(v3, a1, a2, a3, &qword_100229920, &qword_1001D7190, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10009BD9C(v3, a1, a2, a3);
  }

  else
  {
    sub_10009BFD4(v3, a1, a2, a3);
  }

  result = sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  if (!v4)
  {
LABEL_9:
    type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);
    sub_1001D0C20();
    return sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  }

  result = sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage, &protocol conformance descriptor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1001D0C20();
    return sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
  }

  result = sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009C2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0C8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009C378(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C3E8(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return sub_1001D0B40();
}

uint64_t sub_10009C490()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_AuthToken._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_AuthToken._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token_granting_token";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ott_salt";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_AuthToken.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1001D0BC0();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  return sub_1001D0920();
}

uint64_t sub_10009C87C@<X0>(_OWORD *a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  a2[1] = xmmword_1001D3A00;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_10009C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009C91C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10009C9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0C0, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009CA84(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CAF0(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);

  return sub_1001D0B40();
}

uint64_t sub_10009CB6C(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_1000A1A5C(*a1, a1[1], *a2, a2[1]) || !sub_1000A1A5C(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_10009CC50()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_FinalMessage._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_FinalMessage._protobuf_nameMap);
  return sub_1001D0C50();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1001D09E0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_10009CDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0B8, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage, &protocol conformance descriptor for Proto_PrivateCloudCompute_FinalMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009CE58(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage, &protocol conformance descriptor for Proto_PrivateCloudCompute_FinalMessage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CEC4(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage, &protocol conformance descriptor for Proto_PrivateCloudCompute_FinalMessage);

  return sub_1001D0B40();
}

uint64_t sub_10009CF68()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "response_uuid";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_payload";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_summary";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_execution_log_entry";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_10009D568(v5, a1, a2, a3);
        }

        else if (result == 4)
        {
          sub_10009DB24(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 1;
        }

        sub_10009D340(v11, v12, v13, v14, &qword_100229930, &qword_1001D7198, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type, v15);
      }

LABEL_5:
      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009D340(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v30 = a8;
  v28 = a7;
  v14 = sub_100011AC0(a5, a6);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v29 = xmmword_1001D6800;
  sub_1001D0A40();
  v17 = *(&v29 + 1);
  if (v8)
  {
    return sub_10002683C(v29, *(&v29 + 1));
  }

  v25 = a3;
  v26 = a4;
  v27 = a2;
  if (*(&v29 + 1) >> 60 == 15)
  {
    return sub_10002683C(v29, *(&v29 + 1));
  }

  v18 = v29;
  sub_10001208C(v27, v16, a5, a6);
  v19 = v28(0);
  v23 = *(v19 - 8);
  v24 = v19;
  LODWORD(v28) = (*(v23 + 48))(v16, 1);
  sub_100012038(v18, v17);
  sub_100011F00(v16, a5, a6);
  if (v28 != 1)
  {
    sub_1001D09F0();
  }

  sub_10002683C(v18, v17);
  v21 = v27;
  sub_100011F00(v27, a5, a6);
  *v21 = v18;
  v21[1] = v17;
  v22 = v24;
  swift_storeEnumTagMultiPayload();
  return (*(v23 + 56))(v21, 0, 1, v22);
}

uint64_t sub_10009D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022A0E8, &qword_1001D8048);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229930, &qword_1001D7198);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229930, &qword_1001D7198);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_100097550(v12, v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    sub_100097550(v19, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v24, &qword_10022A0E8, &qword_1001D8048);
      v31 = v40;
      sub_100097550(v17, v40, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_100097550(v31, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_100097390(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022A0E8, &qword_1001D8048);
  }

  sub_10001208C(v24, v32, &qword_10022A0E8, &qword_1001D8048);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022A0E8, &qword_1001D8048);
    return sub_100011F00(v32, &qword_10022A0E8, &qword_1001D8048);
  }

  else
  {
    v35 = v39;
    sub_100097550(v32, v39, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022A0E8, &qword_1001D8048);
    v36 = v38;
    sub_100011F00(v38, &qword_100229930, &qword_1001D7198);
    sub_100097550(v35, v36, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_10009DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022A0F0, &qword_1001D8050);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229930, &qword_1001D7198);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229930, &qword_1001D7198);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_100097550(v12, v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    sub_100097550(v19, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100011F00(v24, &qword_10022A0F0, &qword_1001D8050);
      v31 = v40;
      sub_100097550(v17, v40, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      sub_100097550(v31, v24, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_100097390(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022A0F0, &qword_1001D8050);
  }

  sub_10001208C(v24, v32, &qword_10022A0F0, &qword_1001D8050);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022A0F0, &qword_1001D8050);
    return sub_100011F00(v32, &qword_10022A0F0, &qword_1001D8050);
  }

  else
  {
    v35 = v39;
    sub_100097550(v32, v39, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022A0F0, &qword_1001D8050);
    v36 = v38;
    sub_100011F00(v38, &qword_100229930, &qword_1001D7198);
    sub_100097550(v35, v36, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_10001208C(v3, &v14 - v9, &qword_100229930, &qword_1001D7198);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      result = sub_10009E490(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      result = sub_10009E320(v3, a1, a2, a3, &qword_100229930, &qword_1001D7198, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10009E610(v3, a1, a2, a3);
  }

  else
  {
    sub_10009E848(v3, a1, a2, a3);
  }

  result = sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  if (!v4)
  {
LABEL_12:
    type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009E320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = sub_100011AC0(a5, a6);
  __chkstk_darwin(v12 - 8);
  v14 = (&v19 - v13);
  sub_10001208C(a1, &v19 - v13, a5, a6);
  v15 = a7(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_100011F00(v14, a5, a6);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v16 = *v14;
    v17 = v14[1];
    sub_1001D0BC0();
    return sub_100011E48(v16, v17);
  }

  result = sub_100097390(v14, v20);
  __break(1u);
  return result;
}

uint64_t sub_10009E490(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v2 - 8);
  v4 = (&v9 - v3);
  sub_10001208C(a1, &v9 - v3, &qword_100229930, &qword_1001D7198);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_100011F00(v4, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v4;
    v6 = v4[1];
    sub_1001D0BC0();
    return sub_100011E48(v7, v6);
  }

  result = sub_100097390(v4, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229930, &qword_1001D7198);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    sub_1001D0C20();
    return sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  }

  result = sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229930, &qword_1001D7198);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1001D0C20();
    return sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  }

  result = sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009EAE4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_10009EB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0B0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009EC28(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009EC94(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return sub_1001D0B40();
}

uint64_t sub_10009ED10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseStatus._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseStatus._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D3AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OK";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAUTHENTICATED";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTERNAL_ERROR";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INVALID_REQUEST";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PROXY_FIND_WORKER_ERROR";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PROXY_WORKER_VALIDATION_ERROR";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  return sub_1001D0C40();
}

void sub_10009F040()
{
  v0._object = 0x80000001001E42E0;
  v0._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v0);
  static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName = 0xD000000000000040;
  *algn_100242FB8 = 0x80000001001E4150;
}

uint64_t *Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227770 != -1)
  {
    swift_once();
  }

  return &static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName;
}

uint64_t sub_10009F12C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "post_response_actions";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "response_status";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 2)
      {
        sub_10009F3FC(a1, v5, a2, a3);
      }

      else if (result == 3)
      {
        sub_1000A374C();
        sub_1001D0A30();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009F3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  return sub_1001D0AE0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009F57C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1000A374C();
      sub_1001D0BB0();
    }

    type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009F57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(a1 + *(v12 + 24), v7, &qword_100229938, &unk_1001D71A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_100229938, &unk_1001D71A0);
  }

  sub_100097550(v7, v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  sub_1001D0C20();
  return sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
}

uint64_t sub_10009F7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_10009F8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0A8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009F964(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F9D0(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return sub_1001D0B40();
}

void sub_10009FA4C()
{
  v0._object = 0x80000001001E4290;
  v0._countAndFlagsBits = 0xD000000000000014;
  sub_1001D18B0(v0);
  static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName = 0xD000000000000040;
  unk_100242FE0 = 0x80000001001E4150;
}

uint64_t *Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227780 != -1)
  {
    swift_once();
  }

  return &static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName;
}

uint64_t sub_10009FB38(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_10009FB94()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001D39F0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "request_diagnostics";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = sub_1001D0C30();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0A10();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1001D0BA0(), !v4))
  {
    type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_10009FF90(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_1000A0020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0A0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A00C0(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A012C(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return sub_1001D0B40();
}

uint64_t sub_1000A01A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A0274()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_RequestExecutionLogEntry._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_RequestExecutionLogEntry._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attestation";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_context";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "final";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1001D0A10();
        break;
      case 2:
        sub_1000A05A4(a1, v5, a2, a3);
        break;
      case 1:
        type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
        sub_1001D0A40();
        break;
    }
  }

  return result;
}

uint64_t sub_1000A05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext, &protocol conformance descriptor for Proto_PrivateCloudCompute_ResponseContext);
  return sub_1001D0AE0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A0714(v3);
  if (!v4)
  {
    sub_1000A07B4(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_1001D0BA0();
    }

    type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000A0714(uint64_t a1)
{
  result = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_100012038(*v3, *(v3 + 8));
    sub_1001D0BC0();
    return sub_10002683C(v5, v4);
  }

  return result;
}

uint64_t sub_1000A07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(a1 + *(v12 + 28), v7, &qword_100229940, &qword_1001E19D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_100229940, &qword_1001E19D0);
  }

  sub_100097550(v7, v11, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext, &protocol conformance descriptor for Proto_PrivateCloudCompute_ResponseContext);
  sub_1001D0C20();
  return sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
}

uint64_t sub_1000A0A18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  *&a2[v4] = xmmword_1001D6800;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000A0AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A0B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000A0BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A098, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A0C60(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A0CCC(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return sub_1001D0B40();
}

uint64_t sub_1000A0D74()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_ResponseContext._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_ResponseContext._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "context_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aead_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "aead_key";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "aead_nonce";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000A0FE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1001D0C60();

  return sub_10003A37C(v4, a2);
}

uint64_t sub_1000A1058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1001D0C60();
  v7 = sub_10003A37C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_1001D0A50();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_1001D0C00(), !v4))
    {
      v6 = *(v3 + 8);
      v7 = *(v3 + 16);
      v8 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v8 != 2)
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
      }

      else
      {
        if (!v8)
        {
          if ((v7 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v9 = v6;
        v10 = v6 >> 32;
      }

      if (v9 == v10)
      {
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

LABEL_14:
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_23;
        }

        v14 = *(v11 + 16);
        v15 = *(v11 + 24);
      }

      else
      {
        if (!v13)
        {
          if ((v12 & 0xFF000000000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_22:
          result = sub_1001D0BC0();
          if (v4)
          {
            return result;
          }

          goto LABEL_23;
        }

        v14 = v11;
        v15 = v11 >> 32;
      }

      if (v14 != v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
      return sub_1001D0920();
    }
  }

  return result;
}

Swift::Int sub_1000A1344(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1001D2580();
  a1(0);
  sub_1000A3704(a2, a3, a4);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A13CC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1001D7160;
  *(a2 + 32) = 0xC000000000000000;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A1404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A1478(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000A1540(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A090, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext, &protocol conformance descriptor for Proto_PrivateCloudCompute_ResponseContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A15E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1001D0C60();
  v7 = sub_10003A37C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000A167C(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext, &protocol conformance descriptor for Proto_PrivateCloudCompute_ResponseContext);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A16E8(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A1740(uint64_t a1, uint64_t a2)
{
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext, &protocol conformance descriptor for Proto_PrivateCloudCompute_ResponseContext);

  return sub_1001D0B40();
}

Swift::Int sub_1000A17BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A1814(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000A19A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100011E48(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000AFA3C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100011E48(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000A19A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1001CF870();
  v11 = result;
  if (result)
  {
    result = sub_1001CF8A0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1001CF890();
  sub_1000AFA3C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1000A1A5C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100012038(a3, a4);
          return sub_1000A1814(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022A0E0, &qword_1001D8040);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_100229930, &qword_1001D7198);
  sub_10001208C(a2, &v14[v15], &qword_100229930, &qword_1001D7198);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_100229930, &qword_1001D7198);
LABEL_9:
      type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      sub_1001D0940();
      sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_100229930, &qword_1001D7198);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022A0E0, &qword_1001D8040);
    goto LABEL_7;
  }

  sub_100097550(&v14[v15], v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  v18 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100011F00(v14, &qword_100229930, &qword_1001D7198);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed41Proto_PrivateCloudCompute_ResponseContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || !sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) || !sub_1000A1A5C(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed50Proto_PrivateCloudCompute_RequestExecutionLogEntryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  __chkstk_darwin(v7 - 8);
  v34 = &v32 - v8;
  v9 = sub_100011AC0(&qword_10022A110, &qword_1001D8070);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v13 = *(v12 + 24);
  v14 = a1;
  v16 = *&a1[v13];
  v15 = *&a1[v13 + 8];
  v17 = a2;
  v18 = &a2[v13];
  v20 = *v18;
  v19 = v18[1];
  if (v15 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      v32 = v6;
      v33 = v12;
      sub_100089C38(v16, v15);
      sub_100089C38(v20, v19);
      sub_10002683C(v16, v15);
      goto LABEL_7;
    }

LABEL_5:
    sub_100089C38(v16, v15);
    sub_100089C38(v20, v19);
    sub_10002683C(v16, v15);
    sub_10002683C(v20, v19);
    goto LABEL_15;
  }

  if (v19 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v32 = v6;
  v33 = v12;
  sub_100089C38(v16, v15);
  sub_100089C38(v20, v19);
  v21 = sub_1000A1A5C(v16, v15, v20, v19);
  sub_10002683C(v20, v19);
  sub_10002683C(v16, v15);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_7:
  v22 = *(v33 + 28);
  v23 = *(v9 + 48);
  v24 = v14;
  sub_10001208C(&v14[v22], v11, &qword_100229940, &qword_1001E19D0);
  sub_10001208C(&v17[v22], &v11[v23], &qword_100229940, &qword_1001E19D0);
  v25 = *(v35 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v26 = v34;
    sub_10001208C(v11, v34, &qword_100229940, &qword_1001E19D0);
    if (v25(&v11[v23], 1, v4) != 1)
    {
      v27 = &v11[v23];
      v28 = v32;
      sub_100097550(v27, v32, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      v29 = _s20privatecloudcomputed41Proto_PrivateCloudCompute_ResponseContextV2eeoiySbAC_ACtFZ_0(v26, v28);
      sub_100097390(v28, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_100097390(v26, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_100011F00(v11, &qword_100229940, &qword_1001E19D0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_100097390(v26, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
LABEL_12:
    sub_100011F00(v11, &qword_10022A110, &qword_1001D8070);
    goto LABEL_15;
  }

  if (v25(&v11[v23], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_100011F00(v11, &qword_100229940, &qword_1001E19D0);
LABEL_14:
  if (*v24 == *v17)
  {
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v30 = sub_1001D1790();
    return v30 & 1;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  __chkstk_darwin(v3 - 8);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v43 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v43 - v16);
  __chkstk_darwin(v15);
  v19 = (&v43 - v18);
  v20 = sub_100011AC0(&qword_10022A120, &qword_1001D8080);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v43 - v22;
  v24 = (&v43 + *(v21 + 56) - v22);
  sub_100097A3C(a1, &v43 - v22, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100097A3C(v44, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100097A3C(v23, v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100097550(v24, v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v28 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV0F7SummaryV2eeoiySbAE_AEtFZ_0(v14, v7);
        v29 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
        sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v30 = v14;
LABEL_12:
        sub_100097390(v30, v29);
LABEL_20:
        sub_100097390(v23, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
        return v28 & 1;
      }

      v38 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
      v39 = v14;
    }

    else
    {
      sub_100097A3C(v23, v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v37 = v43;
        sub_100097550(v24, v43, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v28 = _s20privatecloudcomputed50Proto_PrivateCloudCompute_RequestExecutionLogEntryV2eeoiySbAC_ACtFZ_0(v11, v37);
        v29 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
        sub_100097390(v37, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v30 = v11;
        goto LABEL_12;
      }

      v38 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
      v39 = v11;
    }

    sub_100097390(v39, v38);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100097A3C(v23, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v31 = *v17;
    v32 = v17[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100011E48(v31, v32);
      goto LABEL_17;
    }

    v34 = *v24;
    v33 = v24[1];
    v28 = sub_1000A1A5C(v31, v32, v34, v33);
    sub_100011E48(v34, v33);
    v35 = v31;
    v36 = v32;
    goto LABEL_19;
  }

  sub_100097A3C(v23, v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  v27 = *v19;
  v26 = v19[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v41 = *v24;
    v40 = v24[1];
    v28 = sub_1000A1A5C(v27, v26, v41, v40);
    sub_100011E48(v41, v40);
    v35 = v27;
    v36 = v26;
LABEL_19:
    sub_100011E48(v35, v36);
    goto LABEL_20;
  }

  sub_100011E48(v27, v26);
LABEL_17:
  sub_100011F00(v23, &qword_10022A120, &qword_1001D8080);
  v28 = 0;
  return v28 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV0F7SummaryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_100011AC0(&qword_10022A118, &qword_1001D8078);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v25 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_10001208C(a1 + v14, v13, &qword_100229938, &unk_1001D71A0);
  v28 = a2;
  sub_10001208C(a2 + v14, &v13[v15], &qword_100229938, &unk_1001D71A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10001208C(v13, v9, &qword_100229938, &unk_1001D71A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v23 = v26;
      sub_100097550(&v13[v15], v26, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      if (*v9 == *v23)
      {
        sub_1001D0940();
        sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v24 = sub_1001D1790();
        sub_100097390(v23, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
        sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
        sub_100011F00(v13, &qword_100229938, &unk_1001D71A0);
        if ((v24 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }

      sub_100097390(v23, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      v19 = &qword_100229938;
      v20 = &unk_1001D71A0;
LABEL_13:
      sub_100011F00(v13, v19, v20);
      goto LABEL_14;
    }

    sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
LABEL_12:
    v19 = &qword_10022A118;
    v20 = &qword_1001D8078;
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_100011F00(v13, &qword_100229938, &unk_1001D71A0);
LABEL_4:
  v17 = *v27;
  v18 = *v28;
  if (*(v28 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 == 3)
        {
          goto LABEL_19;
        }
      }

      else if (v18 == 4)
      {
        if (v17 == 4)
        {
          goto LABEL_19;
        }
      }

      else if (v17 == 5)
      {
        goto LABEL_19;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 == 1)
        {
          goto LABEL_19;
        }
      }

      else if (v17 == 2)
      {
        goto LABEL_19;
      }
    }

    else if (!v17)
    {
      goto LABEL_19;
    }
  }

  else if (v17 == v18)
  {
LABEL_19:
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v21 = sub_1001D1790();
    return v21 & 1;
  }

LABEL_14:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022A0F8, &qword_1001D8058);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_100229920, &qword_1001D7190);
  sub_10001208C(a2, &v14[v15], &qword_100229920, &qword_1001D7190);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_100229920, &qword_1001D7190);
LABEL_9:
      type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
      sub_1001D0940();
      sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_100229920, &qword_1001D7190);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022A0F8, &qword_1001D8058);
    goto LABEL_7;
  }

  sub_100097550(&v14[v15], v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  v18 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100097390(v10, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100011F00(v14, &qword_100229920, &qword_1001D7190);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  __chkstk_darwin(v4 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  __chkstk_darwin(v32);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = (&v32 - v15);
  v17 = sub_100011AC0(&qword_10022A128, &qword_1001D8088);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v32 - v19;
  v21 = (&v32 + *(v18 + 56) - v19);
  sub_100097A3C(a1, &v32 - v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100097A3C(a2, v21, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100097A3C(v20, v16, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v24 = *v16;
    v25 = v16[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100011E48(v24, v25);
LABEL_15:
      sub_100011F00(v20, &qword_10022A128, &qword_1001D8088);
LABEL_17:
      v23 = 0;
      return v23 & 1;
    }

    v29 = *v21;
    v30 = v21[1];
    v23 = sub_1000A1A5C(v24, v25, *v21, v30);
    sub_100011E48(v29, v30);
    sub_100011E48(v24, v25);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100097A3C(v20, v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage;
      v28 = v11;
      goto LABEL_14;
    }

    v26 = v33;
    sub_100097550(v21, v33, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v23 = sub_1001D1790();
    sub_100097390(v26, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
LABEL_19:
    sub_100097390(v20, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    return v23 & 1;
  }

  sub_100097A3C(v20, v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken;
    v28 = v14;
LABEL_14:
    sub_100097390(v28, v27);
    goto LABEL_15;
  }

  sub_100097550(v21, v7, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  if (!sub_1000A1A5C(*v14, *(v14 + 1), *v7, *(v7 + 1)) || !sub_1000A1A5C(*(v14 + 2), *(v14 + 3), *(v7 + 2), *(v7 + 3)) || (sub_1001D0940(), sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage), (sub_1001D1790() & 1) == 0))
  {
    sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_100097390(v20, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_17;
  }

  sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  sub_100097390(v20, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1000A3704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A374C()
{
  result = qword_100229968;
  if (!qword_100229968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229968);
  }

  return result;
}

unint64_t sub_1000A37A4()
{
  result = qword_100229990;
  if (!qword_100229990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229990);
  }

  return result;
}

unint64_t sub_1000A37FC()
{
  result = qword_100229998;
  if (!qword_100229998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229998);
  }

  return result;
}

unint64_t sub_1000A3854()
{
  result = qword_1002299A0;
  if (!qword_1002299A0)
  {
    sub_100011DF4(&qword_1002299A8, &qword_1001D7248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002299A0);
  }

  return result;
}

unint64_t sub_1000A38BC()
{
  result = qword_1002299B0;
  if (!qword_1002299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002299B0);
  }

  return result;
}

uint64_t sub_1000A4288(uint64_t a1)
{
  result = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A431C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A43E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4494(uint64_t a1)
{
  result = sub_1001D0940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4524(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A45A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A4614(uint64_t a1)
{
  result = sub_1001D0940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100011AC0(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_1001D0940();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A47C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = sub_100011AC0(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_1001D0940();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1000A48E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1000A4970(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1001D0940();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A4970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001D1F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A4A14(uint64_t a1)
{
  result = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A4AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A4BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001D0940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1000A4CD8(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000A4970(319, &unk_100229E80, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A4D9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000A4E5C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4EFC(uint64_t a1)
{
  result = sub_1001D0940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4F8C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000A50D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A51FC(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000A52C4();
    if (v2 <= 0x3F)
    {
      sub_1000A4970(319, &unk_100229FB8, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A52C4()
{
  if (!qword_100229FB0)
  {
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, &qword_100229FB0);
    }
  }
}

uint64_t sub_1000A5328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A53F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A54A0(uint64_t a1)
{
  result = sub_1001D0940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Proto_Ropes_Common_Attestation.cloudosReleaseType.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_Attestation.cellID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_Attestation.ensembleID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000A56A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0880();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_TenantInfo.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.bundleID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearBundleID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.bundleVersion.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

uint64_t Proto_Ropes_Common_TenantInfo.featureID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.featureID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearFeatureID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_TenantInfo.clientInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.clientInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.clientInfo.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000A5CF0;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearClientInfo()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1000A5D74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.automatedDeviceGroup.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

int *Proto_Ropes_Common_TenantInfo.init()@<X0>(uint64_t a2@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + result[9]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.nodeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyResponseBypassOhttpContexts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A6064@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A6120(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000A6218@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = _swiftEmptyArrayStorage;
  a1(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_DecryptionKey.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  type metadata accessor for Proto_Ropes_Common_DecryptionKey(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_Chunk.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  type metadata accessor for Proto_Ropes_Common_Chunk(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Proto_Ropes_Common_Attestation.ohttpContext.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Ropes_Common_Attestation.ohttpContext.setter(int a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.ohttpContext.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000A6568;
}

uint64_t sub_1000A6568(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearOhttpContext()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Ropes_Common_Attestation.expirationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(v1 + *(v6 + 32), v5, &qword_10022A130, &qword_1001D80A0);
  v7 = sub_1001D08D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1001D08C0();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022A130, &qword_1001D80A0);
  }

  return result;
}

uint64_t Proto_Ropes_Common_Attestation.expirationTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  sub_100011F00(v1 + v3, &qword_10022A130, &qword_1001D80A0);
  v4 = sub_1001D08D0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_Common_Attestation.expirationTime.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022A130, &qword_1001D80A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001D08D0();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022A130, &qword_1001D80A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001D08C0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022A130, &qword_1001D80A0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000A6A2C;
}

void sub_1000A6A2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_100011F00(v9 + v3, &qword_10022A130, &qword_1001D80A0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022A130, &qword_1001D80A0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_Common_Attestation.hasExpirationTime.getter()
{
  v1 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(v0 + *(v4 + 32), v3, &qword_10022A130, &qword_1001D80A0);
  v5 = sub_1001D08D0();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022A130, &qword_1001D80A0);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearExpirationTime()()
{
  v1 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  sub_100011F00(v0 + v1, &qword_10022A130, &qword_1001D80A0);
  v2 = sub_1001D08D0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000A6D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cloudosVersion.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

uint64_t sub_1000A6E70(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Proto_Ropes_Common_Attestation.cloudosReleaseType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cloudosReleaseType.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearCloudosReleaseType()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.cellID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cellID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearCellID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.ensembleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.ensembleID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearEnsembleID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = a1 + v2[7];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[8];
  v5 = sub_1001D08D0();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v2[11]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[12]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.nodeIdentifier.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Proto_Ropes_Common_Capabilities.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_Common_Capabilities.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_Common_Capabilities.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_AttestationList.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A7940(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000A79D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_ClientTerminate.reason.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_ClientTerminate(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

void sub_1000A7AD0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t sub_1000A7BA0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1000A7BF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A7C94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t sub_1000A7D88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1000A7DB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000A7DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B08D4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_ClientTerminate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.denyReason.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20));
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.denyReason.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*Proto_Ropes_Common_DiagnosticInformation.denyReason.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_1000A7F90;
}

uint64_t sub_1000A7F90(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall Proto_Ropes_Common_DiagnosticInformation.clearDenyReason()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 256;
}

void sub_1000A8050(uint64_t a1@<X8>)
{
  sub_1000B0824();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1000A8094(uint64_t a2@<X8>)
{
  sub_1000B0824();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1000A80CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B3194();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.init()@<X0>(uint64_t a2@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v4 = a2 + *(result + 20);
  *v4 = 0;
  *(v4 + 8) = 256;
  return result;
}

uint64_t sub_1000A8174()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_CompressionAlgorithm._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_CompressionAlgorithm._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BROTLI";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ZSTD";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000A8418()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_TenantInfo._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_TenantInfo._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundle_version";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feature_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client_info";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "automated_device_group";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_TenantInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
          sub_1001D0A90();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_TenantInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A88DC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000AD1D0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_TenantInfo);
    sub_1000A8954(v3, a1, a2, a3);
    sub_1000A89CC(v3, a1, a2, a3);
    sub_1000AB4A0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_TenantInfo);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000A88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A8A90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1000A8B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA48, type metadata accessor for Proto_Ropes_Common_TenantInfo, &protocol conformance descriptor for Proto_Ropes_Common_TenantInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A8BBC(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A230, type metadata accessor for Proto_Ropes_Common_TenantInfo, &protocol conformance descriptor for Proto_Ropes_Common_TenantInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A8C28(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A230, type metadata accessor for Proto_Ropes_Common_TenantInfo, &protocol conformance descriptor for Proto_Ropes_Common_TenantInfo);

  return sub_1001D0B40();
}

uint64_t sub_1000A8CCC()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Workload._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Workload._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "param";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Workload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1001D0AA0();
      }

      else if (result == 3)
      {
        type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0);
        sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter, &protocol conformance descriptor for Proto_Ropes_Common_Workload.Parameter);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Workload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1001D0BF0(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0), sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter, &protocol conformance descriptor for Proto_Ropes_Common_Workload.Parameter), result = sub_1001D0C10(), !v4))
    {
      type metadata accessor for Proto_Ropes_Common_Workload(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000A91A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA40, type metadata accessor for Proto_Ropes_Common_Workload, &protocol conformance descriptor for Proto_Ropes_Common_Workload);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A9240(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A248, type metadata accessor for Proto_Ropes_Common_Workload, &protocol conformance descriptor for Proto_Ropes_Common_Workload);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A92AC(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A248, type metadata accessor for Proto_Ropes_Common_Workload, &protocol conformance descriptor for Proto_Ropes_Common_Workload);

  return sub_1001D0B40();
}

void sub_1000A9340()
{
  v0._countAndFlagsBits = 0x74656D617261502ELL;
  v0._object = 0xEA00000000007265;
  sub_1001D18B0(v0);
  static Proto_Ropes_Common_Workload.Parameter.protoMessageName = 0xD000000000000022;
  unk_100243080 = 0x80000001001E4460;
}

uint64_t *Proto_Ropes_Common_Workload.Parameter.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002277B8 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_Common_Workload.Parameter.protoMessageName;
}

uint64_t static Proto_Ropes_Common_Workload.Parameter.protoMessageName.getter()
{
  if (qword_1002277B8 != -1)
  {
    swift_once();
  }

  v0 = static Proto_Ropes_Common_Workload.Parameter.protoMessageName;

  return v0;
}

uint64_t sub_1000A9468()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Workload.Parameter._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Workload.Parameter._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Workload.Parameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AA0();
    }

    else if (result == 2)
    {
      sub_1001D0A60();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Workload.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1001D0BF0(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1001D0BD0(), !v4))
    {
      type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000A97E8(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1001D2470() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A9910@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = _swiftEmptyArrayStorage;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A9974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA38, type metadata accessor for Proto_Ropes_Common_Workload.Parameter, &protocol conformance descriptor for Proto_Ropes_Common_Workload.Parameter);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A9A14(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter, &protocol conformance descriptor for Proto_Ropes_Common_Workload.Parameter);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A9A80(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter, &protocol conformance descriptor for Proto_Ropes_Common_Workload.Parameter);

  return sub_1001D0B40();
}

uint64_t sub_1000A9B14(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1001D2470() & 1) == 0 || (a5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A9C10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_DecryptionKey._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_DecryptionKey._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted_payload";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "key_id";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_DecryptionKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 3)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_DecryptionKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1001D0BC0();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for Proto_Ropes_Common_DecryptionKey(0);
  return sub_1001D0920();
}