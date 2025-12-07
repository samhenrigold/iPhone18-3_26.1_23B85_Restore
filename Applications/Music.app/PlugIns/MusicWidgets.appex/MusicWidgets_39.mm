uint64_t sub_1004004C8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009DCC(&unk_1006F26F0, &unk_10059DF28);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100009DCC(&qword_1006F2700, &qword_10059DF38);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_100400658(uint64_t a1)
{
  sub_100400818(319);
  if (v1 <= 0x3F)
  {
    sub_100401850(319, &qword_1006F2778, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100401850(319, &qword_1006F2780, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100401850(319, &qword_1006F2788, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1004014E4(319, qword_1006F2790, &qword_1006F2280, &qword_10059DC90, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_1004018B4(319, &unk_1006F10B8, &type metadata accessor for State);
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

void sub_100400818(uint64_t a1)
{
  if (!qword_1006F2770)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_1003FFF94(&qword_1006F2288, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
    v1 = sub_10056EAA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F2770);
    }
  }
}

uint64_t sub_100400918(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&unk_1006F3B10, &unk_100599150);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004009E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006F3B10, &unk_100599150);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100400A98(uint64_t a1)
{
  sub_100401850(319, &qword_1006F28A0, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100400B58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006F28D0, &qword_10059DF60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100400C28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F28D0, &qword_10059DF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100400CD8(uint64_t a1)
{
  sub_1004014E4(319, &unk_1006F2940, &qword_1006EF138, &qword_10059DD90, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100400E0C()
{
  sub_100010324(&qword_1006F2290, &qword_10059DC98);
  sub_100010BC0(&unk_1006F22F0, &qword_1006F2290, &qword_10059DC98, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100400EB8()
{
  sub_100010324(&qword_1006F2308, &qword_10059DD60);
  sub_100010BC0(&qword_1006F2318, &qword_1006F2308, &qword_10059DD60, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100400F64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100571FD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100009DCC(&qword_1006F29E8, &qword_10059DFA8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_100009DCC(&qword_1006F2700, &qword_10059DF38);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100401158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100571FD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100009DCC(&qword_1006F29E8, &qword_10059DFA8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006F2700, &qword_10059DF38);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100401358(uint64_t a1)
{
  sub_100571FD8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v2 <= 0x3F)
    {
      sub_1004018B4(319, &unk_1006F10B8, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1004014E4(319, &qword_1006F2A58, &unk_1006F2A60, &qword_10059A450, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100401850(319, &qword_1006F2780, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100401850(319, &qword_1006F2788, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void sub_1004014E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100401558(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1004015B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F2AA0, &qword_10059E0C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100401688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F2AA0, &qword_10059E0C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100401758(uint64_t a1)
{
  sub_1003CC840();
  if (v1 <= 0x3F)
  {
    sub_100401850(319, &qword_1006F2B18, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1004018B4(319, &qword_1006F2B20, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100401850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1004018B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100401928()
{
  result = qword_1006F2B58;
  if (!qword_1006F2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2B58);
  }

  return result;
}

unint64_t sub_100401980()
{
  result = qword_1006F2B60;
  if (!qword_1006F2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2B60);
  }

  return result;
}

unint64_t sub_1004019D8()
{
  result = qword_1006F2B68;
  if (!qword_1006F2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2B68);
  }

  return result;
}

unint64_t sub_100401A30()
{
  result = qword_1006F2B70;
  if (!qword_1006F2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2B70);
  }

  return result;
}

unint64_t sub_100401AA8()
{
  result = qword_1006F2BA8;
  if (!qword_1006F2BA8)
  {
    sub_100010324(&qword_1006F2B78, &qword_10059E430);
    sub_100010BC0(&qword_1006F2BB0, &qword_1006F2BB8, &qword_10059E460, &protocol conformance descriptor for HStack<A>);
    sub_100010BC0(&qword_1006F2BC0, &qword_1006F2BC8, &qword_10059E468, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2BA8);
  }

  return result;
}

unint64_t sub_100401B8C()
{
  result = qword_1006F3EE0;
  if (!qword_1006F3EE0)
  {
    sub_100010324(&qword_1006F2BE0, &qword_10059E470);
    sub_100010BC0(&qword_1006F2BE8, &unk_1006F2BF0, &qword_10059E478, &protocol conformance descriptor for Button<A>);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3EE0);
  }

  return result;
}

uint64_t sub_100401C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401D80()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_100571FD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_100009DCC(&qword_1006F29E8, &qword_10059DFA8);

  v7 = v1[8];
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10056EBD8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_100009DCC(&unk_1006EEDC0, &qword_100597298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056E9B8();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100402110()
{
  result = qword_1006F2CE8;
  if (!qword_1006F2CE8)
  {
    sub_100010324(&qword_1006F2C28, &qword_10059E518);
    sub_100010BC0(&qword_1006F2CF0, &qword_1006F2CF8, &qword_10059E5D8, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2CE8);
  }

  return result;
}

uint64_t sub_1004021C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100402228(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100402240(result, a2, a3, a4);
  }

  return v5;
}

double sub_100402240(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10002AAC4(a1, a2, a3 & 1);

  return result;
}

double sub_10040227C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1003BD904(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_100402294()
{
  result = qword_1006F2D10;
  if (!qword_1006F2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D10);
  }

  return result;
}

unint64_t sub_100402320()
{
  result = qword_1006F2D18;
  if (!qword_1006F2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D18);
  }

  return result;
}

unint64_t sub_100402374()
{
  result = qword_1006F2D20;
  if (!qword_1006F2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D20);
  }

  return result;
}

uint64_t sub_1004023C8()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100009DCC(&qword_1006F2D40, &qword_1005973F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056E698();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100053068(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

unint64_t sub_100402570()
{
  result = qword_1006F2D50;
  if (!qword_1006F2D50)
  {
    sub_100010324(&qword_1006F2D48, &qword_10059E600);
    sub_1004025FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D50);
  }

  return result;
}

unint64_t sub_1004025FC()
{
  result = qword_1006F2D58;
  if (!qword_1006F2D58)
  {
    sub_100010324(&qword_1006F2D60, &qword_10059E608);
    sub_100402688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D58);
  }

  return result;
}

unint64_t sub_100402688()
{
  result = qword_1006F2D68;
  if (!qword_1006F2D68)
  {
    sub_100010324(&qword_1006F2D70, &qword_10059E610);
    sub_100010BC0(&qword_1006F2D78, &qword_1006F2D80, &qword_10059E618, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100010BC0(&qword_1006F2D88, &qword_1006F2D90, &qword_10059E620, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D68);
  }

  return result;
}

unint64_t sub_10040277C()
{
  result = qword_1006F2DC8;
  if (!qword_1006F2DC8)
  {
    sub_100010324(&qword_1006F2DC0, &unk_10059E6B0);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2DC8);
  }

  return result;
}

uint64_t sub_100402834()
{
  v1 = sub_100571FD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100402900(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_1003E7638(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100402A0C(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E7D4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100402B04()
{
  v1 = sub_100571FD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100402BD0(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E6E00(a1, v6, v7, v8, v1 + v5);
}

double sub_100402E58(uint64_t a1)
{
  v2 = sub_10056F708();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&unk_1006F2320, &qword_10059DD88) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_10000CC8C(a1, v8, &qword_1006EF138, &qword_10059DD90);
  sub_10000CC8C(v13, &v8[v14], &qword_1006EF138, &qword_10059DD90);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_10001036C(v8, &qword_1006EF138, &qword_10059DD90);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v8, v10, &qword_1006EF138, &qword_10059DD90);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_10001036C(v8, &unk_1006F2320, &qword_10059DD88);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_1005727E8();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
  v18(v10, v2);
  sub_10001036C(v8, &qword_1006EF138, &qword_10059DD90);
  result = -9.0;
  if ((v17 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10040329C()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_100009DCC(&qword_1006F2300, &qword_1005972D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10056F708();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100403418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_1003FB59C(a1, a2, v7, a3);
}

uint64_t sub_1004034A4()
{

  return swift_deallocObject();
}

uint64_t sub_1004034DC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100009DCC(&qword_1006F2F58, &qword_10059E9C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100403544()
{
  result = qword_1006F2EE8;
  if (!qword_1006F2EE8)
  {
    sub_100010324(&qword_1006F2ED8, &qword_10059E990);
    sub_1004035FC();
    sub_100010BC0(&qword_1006F2F48, &qword_1006F2F50, &qword_10059E9B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2EE8);
  }

  return result;
}

unint64_t sub_1004035FC()
{
  result = qword_1006F2EF0;
  if (!qword_1006F2EF0)
  {
    sub_100010324(&qword_1006F2EF8, &qword_10059E998);
    sub_100403688();
    sub_1003A6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2EF0);
  }

  return result;
}

unint64_t sub_100403688()
{
  result = qword_1006F2F00;
  if (!qword_1006F2F00)
  {
    sub_100010324(&qword_1006F2F08, &qword_10059E9A0);
    sub_100403714();
    sub_1003A69FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F00);
  }

  return result;
}

unint64_t sub_100403714()
{
  result = qword_1006F2F10;
  if (!qword_1006F2F10)
  {
    sub_100010324(&qword_1006F2F18, &qword_10059E9A8);
    sub_1004037A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F10);
  }

  return result;
}

unint64_t sub_1004037A0()
{
  result = qword_1006F2F20;
  if (!qword_1006F2F20)
  {
    sub_100010324(&qword_1006F2F28, &qword_10059E9B0);
    sub_100010324(&qword_1006F18C8, &qword_10059C530);
    sub_1003CC8F4();
    swift_getOpaqueTypeConformance2();
    sub_1003FFF94(&unk_1006F2F30, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F20);
  }

  return result;
}

double sub_100403898(uint64_t a1)
{
  v2 = sub_10056F708();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&unk_1006F2320, &qword_10059DD88) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_10000CC8C(a1, v8, &qword_1006EF138, &qword_10059DD90);
  sub_10000CC8C(v13, &v8[v14], &qword_1006EF138, &qword_10059DD90);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_10001036C(v8, &qword_1006EF138, &qword_10059DD90);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v8, v10, &qword_1006EF138, &qword_10059DD90);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_10001036C(v8, &unk_1006F2320, &qword_10059DD88);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_1005727E8();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_10001036C(v13, &qword_1006EF138, &qword_10059DD90);
  v18(v10, v2);
  sub_10001036C(v8, &qword_1006EF138, &qword_10059DD90);
  result = 25.0;
  if ((v17 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_100403C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100403CFC()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100009DCC(&unk_1006EEDB0, &qword_1005A02C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056E918();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10056EBD8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100009DCC(&unk_1006EEDC0, &qword_100597298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10056E9B8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100403F90()
{
  result = qword_1006F3018;
  if (!qword_1006F3018)
  {
    sub_100010324(&qword_1006F3008, &qword_10059EAB0);
    sub_100010BC0(&qword_1006F3020, &qword_1006F3028, &qword_10059EAC0, &protocol conformance descriptor for VStack<A>);
    sub_100010BC0(&qword_1006F3030, &qword_1006F3038, &qword_10059EAC8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3018);
  }

  return result;
}

uint64_t sub_100404074(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004040F0()
{
  result = qword_1006F3048;
  if (!qword_1006F3048)
  {
    sub_100010324(&qword_1006F3050, &qword_10059EAD0);
    sub_1004041A8();
    sub_100010BC0(&qword_1006F3068, &qword_1006F3070, &qword_10059EAE0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3048);
  }

  return result;
}

unint64_t sub_1004041A8()
{
  result = qword_1006F3058;
  if (!qword_1006F3058)
  {
    sub_100010324(&qword_1006F3060, &qword_10059EAD8);
    sub_1004019D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3058);
  }

  return result;
}

unint64_t sub_100404234()
{
  result = qword_1006F3078;
  if (!qword_1006F3078)
  {
    sub_100010324(&qword_1006F3000, &qword_10059EAA8);
    sub_100010BC0(&qword_1006F3080, &qword_1006F3088, &qword_10059EAE8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3078);
  }

  return result;
}

unint64_t sub_1004042E4()
{
  result = qword_1006F3090;
  if (!qword_1006F3090)
  {
    sub_100010324(&qword_1006F2FF0, &qword_10059EA98);
    sub_100010324(&qword_1006F3008, &qword_10059EAB0);
    sub_100010324(&qword_1006F3010, &qword_10059EAB8);
    sub_100403F90();
    sub_100404074(&qword_1006F3040, &qword_1006F3010, &qword_10059EAB8, sub_1004040F0);
    swift_getOpaqueTypeConformance2();
    sub_100404234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3090);
  }

  return result;
}

unint64_t sub_100404444()
{
  result = qword_1006F30E0;
  if (!qword_1006F30E0)
  {
    sub_100010324(&qword_1006F30D8, &qword_10059EB10);
    sub_1003FFF94(&qword_1006F30D0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10059E3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F30E0);
  }

  return result;
}

unint64_t sub_10040452C()
{
  result = qword_1006F3120;
  if (!qword_1006F3120)
  {
    sub_100010324(&qword_1006F3118, &qword_10059EB38);
    sub_1004045E4();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3120);
  }

  return result;
}

unint64_t sub_1004045E4()
{
  result = qword_1006F3128;
  if (!qword_1006F3128)
  {
    sub_100010324(&qword_1006F3130, &qword_10059EB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3128);
  }

  return result;
}

uint64_t sub_100404698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1003E5F44(a1, v4, v5, v6);
}

void sub_100404754(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_1003F23BC(a1);
}

uint64_t sub_1004047C8()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_100009DCC(&unk_1006EEDB0, &qword_1005A02C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10056E918();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10056EBD8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100009DCC(&unk_1006EEDC0, &qword_100597298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10056E9B8();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_100404A30(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1003F2444(a1, v4, v5, v6);
}

uint64_t sub_100404AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1003E5B48(a1, v4, v5, v6, v7);
}

uint64_t sub_100404B70@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_1003F070C(a1);
}

uint64_t sub_100404BE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1003BF95C(a1, a2, v2 + v6, v7);
}

uint64_t sub_100404CAC(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F05A0(a1, v4);
}

unint64_t sub_100404D2C()
{
  result = qword_1006F3230;
  if (!qword_1006F3230)
  {
    sub_100010324(&qword_1006F3200, &qword_10059EC20);
    sub_100404DE4();
    sub_100010BC0(&qword_1006F3248, &qword_1006F3220, &qword_10059EC40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3230);
  }

  return result;
}

unint64_t sub_100404DE4()
{
  result = qword_1006F3238;
  if (!qword_1006F3238)
  {
    sub_100010324(&qword_1006F3240, &qword_10059EC48);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3238);
  }

  return result;
}

uint64_t sub_100404E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1003E64A4(a1, v4, v5, v6);
}

uint64_t sub_100404FA4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_1003EF830(a1);
}

unint64_t sub_100405014()
{
  result = qword_1006F3288;
  if (!qword_1006F3288)
  {
    sub_100010324(&qword_1006F3270, &qword_10059EC80);
    sub_1003FFF94(&qword_1006F3290, _s10ManagementO4ViewV5ShareO6ButtonVMa, &unk_10059E0D0);
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0, &qword_10059F3D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3288);
  }

  return result;
}

unint64_t sub_100405128()
{
  result = qword_1006F32E0;
  if (!qword_1006F32E0)
  {
    sub_100010324(&qword_1006F32B8, &qword_10059ED38);
    sub_1004051B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32E0);
  }

  return result;
}

unint64_t sub_1004051B4()
{
  result = qword_1006F32E8;
  if (!qword_1006F32E8)
  {
    sub_100010324(&qword_1006F32D8, &qword_10059ED58);
    sub_10040526C();
    sub_100010BC0(&qword_1006F3030, &qword_1006F3038, &qword_10059EAC8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32E8);
  }

  return result;
}

unint64_t sub_10040526C()
{
  result = qword_1006F32F0;
  if (!qword_1006F32F0)
  {
    sub_100010324(&qword_1006F32D0, &qword_10059ED50);
    sub_100010BC0(&qword_1006F32F8, &qword_1006F3300, &qword_10059ED60, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32F0);
  }

  return result;
}

uint64_t sub_1004053EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_100405468()
{
  result = qword_1006F3370;
  if (!qword_1006F3370)
  {
    sub_100010324(&qword_1006F3318, &qword_10059ED78);
    sub_100010BC0(&qword_1006F2BE8, &unk_1006F2BF0, &qword_10059E478, &protocol conformance descriptor for Button<A>);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3370);
  }

  return result;
}

unint64_t sub_10040554C()
{
  result = qword_1006F33A0;
  if (!qword_1006F33A0)
  {
    sub_100010324(&qword_1006F3320, &qword_10059ED80);
    sub_100405604();
    sub_100010BC0(&qword_1006F33D8, &qword_1006F3398, &unk_10059EE20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33A0);
  }

  return result;
}

unint64_t sub_100405604()
{
  result = qword_1006F33A8;
  if (!qword_1006F33A8)
  {
    sub_100010324(&qword_1006F3390, &qword_10059EE18);
    sub_1004056BC();
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0, &qword_10059F8D0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33A8);
  }

  return result;
}

unint64_t sub_1004056BC()
{
  result = qword_1006F33B0;
  if (!qword_1006F33B0)
  {
    sub_100010324(&qword_1006F3388, &qword_10059EE10);
    sub_100405748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33B0);
  }

  return result;
}

unint64_t sub_100405748()
{
  result = qword_1006F33B8;
  if (!qword_1006F33B8)
  {
    sub_100010324(&qword_1006F3380, &qword_10059EE08);
    sub_1004057D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33B8);
  }

  return result;
}

unint64_t sub_1004057D4()
{
  result = qword_1006F33C0;
  if (!qword_1006F33C0)
  {
    sub_100010324(&qword_1006F3378, &qword_10059EE00);
    sub_100010324(&qword_1006F3318, &qword_10059ED78);
    sub_100405468();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33C0);
  }

  return result;
}

uint64_t sub_100405968(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004059B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004059F4()
{
  v1 = sub_1005722D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100405ACC(uint64_t a1)
{
  v4 = *(sub_1005722D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E081C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100405BEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_100571928();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100405C34()
{
  result = qword_1006F3430;
  if (!qword_1006F3430)
  {
    sub_1000D3B98(255, &qword_1006F3420, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3430);
  }

  return result;
}

unint64_t sub_100405CEC()
{
  result = qword_1006F3488;
  if (!qword_1006F3488)
  {
    sub_100010324(&qword_1006F3490, qword_10059EF30);
    sub_100010324(&qword_1006F2B88, &qword_10059E440);
    sub_100010324(&qword_1006F2B80, &qword_10059E438);
    sub_100010324(&qword_1006F2B78, &qword_10059E430);
    sub_100010324(&qword_1006F2BA0, &qword_10059E458);
    sub_100401AA8();
    sub_100404074(&unk_1006F2BD0, &qword_1006F2BA0, &qword_10059E458, sub_100401B8C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1003FFF94(&qword_1006F3498, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3488);
  }

  return result;
}

unint64_t sub_100405EC8()
{
  result = qword_1006F34A0;
  if (!qword_1006F34A0)
  {
    sub_100010324(&qword_1006F2D98, &qword_10059E658);
    sub_100405F80();
    sub_100010BC0(&qword_1006F34C0, &qword_1006F2DA0, &qword_10059E660, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34A0);
  }

  return result;
}

unint64_t sub_100405F80()
{
  result = qword_1006F34A8;
  if (!qword_1006F34A8)
  {
    sub_100010324(&qword_1006F2D38, &unk_10059E5F0);
    sub_100406038();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34A8);
  }

  return result;
}

unint64_t sub_100406038()
{
  result = qword_1006F34B0;
  if (!qword_1006F34B0)
  {
    sub_100010324(&qword_1006F2D30, &qword_10059E5E8);
    sub_100010BC0(&qword_1006F34B8, &qword_1006F2D28, &qword_10059E5E0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34B0);
  }

  return result;
}

unint64_t sub_100406110()
{
  result = qword_1006F34C8;
  if (!qword_1006F34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34C8);
  }

  return result;
}

uint64_t sub_100406164()
{

  return swift_deallocObject();
}

unint64_t sub_1004061B4()
{
  result = qword_1006F34E8;
  if (!qword_1006F34E8)
  {
    sub_100010324(&qword_1006F34E0, &qword_10059F000);
    sub_10040626C();
    sub_100010BC0(&unk_1006F3520, &qword_1006F3EC0, &qword_10059F020, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34E8);
  }

  return result;
}

unint64_t sub_10040626C()
{
  result = qword_1006F34F0;
  if (!qword_1006F34F0)
  {
    sub_100010324(&qword_1006F34F8, &qword_10059F008);
    sub_100406324();
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0, &qword_10059F8D0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34F0);
  }

  return result;
}

unint64_t sub_100406324()
{
  result = qword_1006F3500;
  if (!qword_1006F3500)
  {
    sub_100010324(&qword_1006F3508, &qword_10059F010);
    sub_1004063B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3500);
  }

  return result;
}

unint64_t sub_1004063B0()
{
  result = qword_1006F3510;
  if (!qword_1006F3510)
  {
    sub_100010324(&qword_1006F3518, &qword_10059F018);
    sub_10040277C();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3510);
  }

  return result;
}

unint64_t sub_100406500()
{
  result = qword_1006F3548;
  if (!qword_1006F3548)
  {
    sub_100010324(&qword_1006F3538, &qword_10059F028);
    sub_100010324(&qword_1006F34D0, &qword_10059EFF0);
    sub_10056F638();
    sub_100010BC0(&qword_1006F3530, &qword_1006F34D0, &qword_10059EFF0, &protocol conformance descriptor for Button<A>);
    sub_1003FFF94(&qword_1006F3110, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F3550, &qword_1006F3540, &qword_10059F030, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3548);
  }

  return result;
}

void sub_100406710(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006F3AC8, &qword_10059F6E8);
    v2 = sub_1005741C8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1000F40D4(*(a1 + 48) + 40 * v11, v33);
        sub_100081F38(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000F40D4(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_10001036C(v30, &qword_1006F3968, &qword_10059F518);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_100081F38(v31 + 8, v23);
        sub_10001036C(v30, &qword_1006F3968, &qword_10059F518);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_100429D94(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_100415860(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_10001036C(&v24, &qword_1006F3AD0, &qword_10059F6F0);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100406A3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006F3960, &qword_10059F510);
    v2 = sub_1005741C8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_1000F40D4(*(a1 + 48) + 40 * v11, v27);
    sub_100081F38(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_1000F40D4(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100081F38(v25 + 8, v20);
    sub_10001036C(v24, &qword_1006F3968, &qword_10059F518);
    v21 = v18;
    sub_1000F51DC(v20, v22);
    v12 = v21;
    sub_1000F51DC(v22, v23);
    sub_1000F51DC(v23, &v21);
    v13 = sub_100429D94(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_100010474(v9);
      sub_1000F51DC(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1000F51DC(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_10001036C(v24, &qword_1006F3968, &qword_10059F518);
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_100571E58();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100406DFC(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100406DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100406DFC(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v31[0] = sub_100571FD8();
  v2 = *(v31[0] - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  type metadata accessor for Collaboration.Flow(0);
  v11 = __chkstk_darwin();
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100413998(v1, v13, v11, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v2;
      v16 = *(v2 + 32);
      v17 = v31[0];
      v16(v4, v13, v31[0]);
      sub_100572818();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v18 = qword_1006FDF00;
      sub_10056CBC8();
      sub_100572948();
      (*(v6 + 8))(v10, v5);
      sub_100009DCC(&qword_1006F3598, &qword_10059F068);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057B510;
      v20 = sub_100571F78();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_1004123C4();
      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = v22;
      }

      *(v19 + 32) = v23;
      *(v19 + 40) = v24;
      v25 = sub_1005728A8();

      (*(v15 + 8))(v4, v17);
    }

    else
    {
      sub_100572818();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v27 = qword_1006FDF00;
      sub_10056CBC8();
      v25 = sub_100572948();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v26 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    sub_100572818();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v28 = qword_1006FDF00;
    sub_10056CBC8();
    v25 = sub_100572948();
    (*(v6 + 8))(v10, v5);
    v29 = sub_10056C8A8();
    (*(*(v29 - 8) + 8))(&v13[v26], v29);
    sub_10001036C(v13, &qword_1006F35B0, &qword_10059F078);
  }

  return v25;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v78 = hasProfileEdit;
  sub_100572868();
  __chkstk_darwin();
  v2 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v77 = *(v2 - 8);
  __chkstk_darwin();
  v4 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v73 - v5);
  sub_100009DCC(&qword_1006F35B8, &qword_10059F080);
  __chkstk_darwin();
  v8 = &v73 - v7;
  sub_100009DCC(&qword_1006F35B0, &qword_10059F078);
  __chkstk_darwin();
  v10 = &v73 - v9;
  sub_10056CC38();
  __chkstk_darwin();
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100572888();
  v79 = *(v82 - 8);
  __chkstk_darwin();
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v73 - v13;
  type metadata accessor for Collaboration.Flow(0);
  v15 = __chkstk_darwin();
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100413998(v1, v17, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100572818();
      v19 = v79;
      v20 = v82;
      (*(v79 + 16))(v81, v14, v82);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v21 = qword_1006FDF00;
      sub_10056CBC8();
      v22 = sub_100572948();
      v24 = v23;
      (*(v19 + 8))(v14, v20);
      sub_100412418(v17, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v33 = v79;
      v34 = (v79 + 16);
      v35 = v14;
      v36 = v81;
      v37 = v82;
      sub_100572818();
      (*v34)(v36, v35, v37);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v40 = qword_1006FDF00;
      sub_10056CBC8();
      v22 = sub_100572948();
      v24 = v41;
      (*(v33 + 8))(v35, v37);
    }

    goto LABEL_33;
  }

  v25 = sub_100009DCC(&qword_1006F35A8, &qword_10059F070);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = v17;
  v29 = v17[v27];
  v75 = v26;
  v76 = v28;
  sub_100019B40(v28, v10, &qword_1006F35B0, &qword_10059F078);
  v74 = v10;
  sub_10000CC8C(v10, v8, &qword_1006F35B0, &qword_10059F078);
  if ((*(v77 + 48))(v8, 1, v2) == 1)
  {
    v30 = v79;
    v31 = (v79 + 16);
    v32 = v14;
    sub_100572818();
    v42 = v82;
    (*v31)(v81, v32, v82);
    v43 = v74;
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v44 = qword_1006FDF00;
    sub_10056CBC8();
    v22 = sub_100572948();
    v24 = v45;
    (*(v30 + 8))(v32, v42);
    sub_10001036C(v43, &qword_1006F35B0, &qword_10059F078);
    v46 = sub_10056C8A8();
    (*(*(v46 - 8) + 8))(v76 + v75, v46);
    goto LABEL_33;
  }

  v38 = v14;
  if (v29)
  {
    v39 = v6;
    sub_100412498(v8, v6, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v78)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v6[1]._countAndFlagsBits;
    object = v6[1]._object;
    v55 = v76;
    if (object)
    {
      sub_100572858();
      v83._countAndFlagsBits = 0x100000000000002ELL;
      v83._object = 0x80000001005B9860;
      sub_100572848(v83);
      sub_100572838(*v6);
      v84._countAndFlagsBits = 4204576;
      v84._object = 0xE300000000000000;
      sub_100572848(v84);
      v85._countAndFlagsBits = countAndFlagsBits;
      v85._object = object;
      sub_100572838(v85);
      v86._countAndFlagsBits = 0xD000000000000031;
      v86._object = 0x80000001005B9890;
      sub_100572848(v86);
LABEL_26:
      sub_100572878();
      v58 = v79;
      v59 = v82;
      (*(v79 + 16))(v81, v38, v82);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v60 = qword_1006FDF00;
      sub_10056CBC8();
      v22 = sub_100572948();
      v24 = v61;
      (*(v58 + 8))(v38, v59);
LABEL_32:
      sub_10001036C(v74, &qword_1006F35B0, &qword_10059F078);
      sub_100412418(v39, type metadata accessor for Collaboration.Flow.Collaborator);
      v69 = sub_10056C8A8();
      (*(*(v69 - 8) + 8))(v55 + v75, v69);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v39 = v4;
  sub_100412498(v8, v4, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v78)
  {
    v56 = v4[1]._countAndFlagsBits;
    v57 = v4[1]._object;
    v55 = v76;
    if (v57)
    {
      sub_100572858();
      v87._countAndFlagsBits = 0x100000000000002ALL;
      v87._object = 0x80000001005B9770;
      sub_100572848(v87);
      sub_100572838(*v4);
      v88._countAndFlagsBits = 4204576;
      v88._object = 0xE300000000000000;
      sub_100572848(v88);
      v89._countAndFlagsBits = v56;
      v89._object = v57;
      sub_100572838(v89);
      v90._countAndFlagsBits = 0xD000000000000048;
      v90._object = 0x80000001005B97A0;
      sub_100572848(v90);
      goto LABEL_26;
    }

LABEL_29:
    sub_100572818();
    v62 = v79;
    v63 = v82;
    (*(v79 + 16))(v81, v38, v82);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v64 = qword_1006FDF00;
    sub_10056CBC8();
    sub_100572948();
    (*(v62 + 8))(v38, v63);
    sub_100009DCC(&qword_1006F3598, &qword_10059F068);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10057B510;
    v66 = v39->_countAndFlagsBits;
    v67 = v39->_object;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_1004123C4();
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;

    v22 = sub_1005728A8();
    v24 = v68;

    goto LABEL_32;
  }

LABEL_19:
  sub_100572818();
  v47 = v79;
  v48 = v82;
  (*(v79 + 16))(v81, v38, v82);
  v49 = v76;
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v50 = qword_1006FDF00;
  sub_10056CBC8();
  v22 = sub_100572948();
  v24 = v51;
  (*(v47 + 8))(v38, v48);
  sub_10001036C(v74, &qword_1006F35B0, &qword_10059F078);
  sub_100412418(v39, type metadata accessor for Collaboration.Flow.Collaborator);
  v52 = sub_10056C8A8();
  (*(*(v52 - 8) + 8))(v49 + v75, v52);
LABEL_33:
  v70 = v22;
  v71 = v24;
  result._object = v71;
  result._countAndFlagsBits = v70;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v18[-v6];
  type metadata accessor for Collaboration.Flow(0);
  v8 = __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100413998(v1, v10, v8, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100412418(v10, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_100572818();
      (*(v3 + 16))(v5, v7, v2);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v14 = qword_1006FDF00;
      sub_10056CBC8();
      v12 = sub_100572948();
      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    v13 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    sub_100572818();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v15 = qword_1006FDF00;
    sub_10056CBC8();
    v12 = sub_100572948();
    (*(v3 + 8))(v7, v2);
    v16 = sub_10056C8A8();
    (*(*(v16 - 8) + 8))(&v10[v13], v16);
    sub_10001036C(v10, &qword_1006F35B0, &qword_10059F078);
  }

  return v12;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_100570668();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_100570668();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_10040F4B8;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_100412498(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_1005722D8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_10056F368();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100009DCC(&qword_1006F35C0, &qword_10059F088);
  return sub_100408828(v2, a2 + *(v4 + 44));
}

uint64_t sub_100408828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v466 = a1;
  v440 = a2;
  v439 = sub_100009DCC(&qword_1006F3980, &qword_10059F530);
  __chkstk_darwin();
  v403 = &v375 - v2;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v378 = &v375 - v3;
  v379 = sub_100571DC8();
  v396 = *(v379 - 8);
  __chkstk_darwin();
  v395 = &v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v389 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v388 = &v375 - v6;
  v7 = sub_10056DC68();
  v397 = *(v7 - 8);
  v398 = v7;
  __chkstk_darwin();
  v411 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v377 = &v375 - v9;
  __chkstk_darwin();
  v394 = &v375 - v10;
  __chkstk_darwin();
  v413 = &v375 - v11;
  v414 = sub_10056DBD8();
  v412 = *(v414 - 8);
  __chkstk_darwin();
  v425 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v387 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v375 - v14;
  __chkstk_darwin();
  v424 = (&v375 - v15);
  v391 = sub_100009DCC(&qword_1006F3988, &qword_10059F538);
  __chkstk_darwin();
  v393 = &v375 - v16;
  v392 = sub_100009DCC(&qword_1006F3E70, &qword_10059F540);
  __chkstk_darwin();
  v402 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v375 - v18;
  __chkstk_darwin();
  v434 = &v375 - v19;
  v447 = sub_100571FD8();
  v433 = *(v447 - 8);
  __chkstk_darwin();
  v415 = v20;
  v416 = &v375 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = &v375 - v21;
  v22 = sub_10056C8A8();
  v409 = *(v22 - 8);
  v410 = v22;
  __chkstk_darwin();
  v384 = v23;
  v385 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v408 = &v375 - v24;
  v436 = sub_100009DCC(&qword_1006F3990, &qword_10059F548);
  __chkstk_darwin();
  v438 = &v375 - v25;
  v418 = sub_100009DCC(&qword_1006F3998, &qword_10059F550);
  __chkstk_darwin();
  v420 = (&v375 - v26);
  v437 = sub_100009DCC(&qword_1006F39A0, &qword_10059F558);
  __chkstk_darwin();
  v421 = &v375 - v27;
  v419 = sub_100009DCC(&qword_1006F39A8, &qword_10059F560);
  __chkstk_darwin();
  v401 = &v375 - v28;
  v29 = type metadata accessor for Collaboration.Flow.View(0);
  v432 = *(v29 - 8);
  v30 = *(v432 + 64);
  __chkstk_darwin();
  v448 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_100009DCC(&qword_1006F39B0, &qword_10059F568);
  v444 = *(v428 - 1);
  __chkstk_darwin();
  v400 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v417 = &v375 - v32;
  sub_10056CC38();
  __chkstk_darwin();
  v429 = &v375 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_100572888();
  v445 = *(v431 - 8);
  __chkstk_darwin();
  v427 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v430 = &v375 - v35;
  v380 = sub_100009DCC(&qword_1006F39B8, &qword_10059F570);
  __chkstk_darwin();
  v382 = &v375 - v36;
  v381 = sub_100009DCC(&qword_1006F39C0, &qword_10059F578);
  __chkstk_darwin();
  v399 = &v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v383 = &v375 - v38;
  __chkstk_darwin();
  v426 = (&v375 - v39);
  sub_100009DCC(&qword_1006F39C8, &qword_10059F580);
  __chkstk_darwin();
  v464 = &v375 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v375 - v41;
  v43 = sub_100009DCC(&qword_1006F39D0, &qword_10059F588);
  v422 = *(v43 - 8);
  v423 = v43;
  __chkstk_darwin();
  v376 = (&v375 - v44);
  sub_100009DCC(&qword_1006F39D8, &qword_10059F590);
  __chkstk_darwin();
  v462 = &v375 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v469 = &v375 - v46;
  v457 = sub_100009DCC(&qword_1006F39E0, &qword_10059F598);
  __chkstk_darwin();
  v460 = &v375 - v47;
  v459 = sub_100009DCC(&qword_1006F39E8, &qword_10059F5A0);
  __chkstk_darwin();
  v463 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v458 = &v375 - v49;
  __chkstk_darwin();
  v467 = &v375 - v50;
  v51 = sub_100009DCC(&qword_1006F39F0, &qword_10059F5A8);
  v52 = *(v51 - 8);
  __chkstk_darwin();
  v54 = &v375 - v53;
  v55 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v443 = (&v375 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v456 = &v375 - v57;
  __chkstk_darwin();
  v59 = &v375 - v58;
  sub_100009DCC(&qword_1006F39F8, &qword_10059F5B0);
  __chkstk_darwin();
  v461 = &v375 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin();
  v63 = &v375 - v62;
  v441 = v29;
  v470 = *(v29 + 24);
  sub_100413998(v466 + v470, v59, v61, type metadata accessor for Collaboration.Flow);
  v449 = v55;
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  sub_100412418(v59, type metadata accessor for Collaboration.Flow);
  v468 = v42;
  v465 = v63;
  if (v29 == 1)
  {
    v64 = 1;
  }

  else
  {
    if (qword_1006EEC10 != -1)
    {
      swift_once();
    }

    v65 = qword_1006F3588;
    *v478 = swift_getKeyPath();
    *&v478[8] = v65;

    v66 = sub_100009DCC(&qword_1006F3A00, &unk_10059F5B8);
    v67 = sub_100413704();
    sub_100570258();

    *v478 = v66;
    *&v478[8] = v67;
    swift_getOpaqueTypeConformance2();
    v63 = v465;
    sub_1005701D8();
    (*(v52 + 8))(v54, v51);
    v64 = 0;
  }

  v435 = v30;
  v68 = sub_100009DCC(&qword_1006F3A18, &qword_10059F5C8);
  (*(*(v68 - 8) + 56))(v63, v64, 1, v68);
  v69 = v466;
  *v478 = Collaboration.Flow.title.getter();
  *&v478[8] = v70;
  v442 = sub_10037AD68();
  v71 = sub_10056FF28();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (qword_1006EEC08 != -1)
  {
    swift_once();
  }

  v78 = qword_1006F3580;
  KeyPath = swift_getKeyPath();
  LOBYTE(v477[0]) = v75 & 1;
  *v478 = v71;
  *&v478[8] = v73;
  v478[16] = v75 & 1;
  *&v478[24] = v77;
  *&v478[32] = 256;
  *&v478[40] = KeyPath;
  *&v478[48] = v78;

  sub_100009DCC(&qword_1006F3A20, &qword_10059F5D0);
  sub_100413810();
  v80 = v460;
  sub_100570258();
  v523[0] = *v478;
  v523[1] = *&v478[16];
  v523[2] = *&v478[32];
  v524 = *&v478[48];
  sub_10001036C(v523, &qword_1006F3A20, &qword_10059F5D0);
  v81 = swift_getKeyPath();
  v82 = v80 + *(v457 + 36);
  *v82 = v81;
  *(v82 + 8) = 1;
  v83 = sub_10056FA48();
  v84 = v456;
  sub_100413998(v69 + v470, v456, v85, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_100412418(v84, type metadata accessor for Collaboration.Flow);
  sub_10056E598();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v458;
  sub_100019B40(v80, v458, &qword_1006F39E0, &qword_10059F598);
  v95 = v94 + *(v459 + 36);
  *v95 = v83;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_100019B40(v94, v467, &qword_1006F39E8, &qword_10059F5A0);
  v96 = v441;
  v97 = v441[9];
  v98 = *(v69 + v97);
  *v478 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v69 + v97));
  v457 = sub_10056FF28();
  v456 = v99;
  v101 = v100;
  v458 = v102;
  v459 = swift_getKeyPath();
  v453 = v101 & 1;
  v478[0] = v101 & 1;
  v103 = swift_getKeyPath();
  v460 = v78;

  v104 = sub_100570508();
  v105 = swift_getKeyPath();
  v450 = sub_10056FA48();
  sub_10056E598();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v478[0] = 0;
  v451 = sub_10056FA58();
  if (qword_1006EEC00 != -1)
  {
    swift_once();
  }

  v452 = v105;
  sub_10056E598();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  if (v98)
  {
    v122 = v470;
    if (*(v69 + v96[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context(0);
      sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
      v123 = sub_10056E708();
      v124 = _s4FlowO18ProfileEditingViewVMa(0);
      v125 = v376;
      sub_100413998(v69 + v122, v376 + *(v124 + 20), v126, type metadata accessor for Collaboration.Flow);
      *v125 = v123;
      LOBYTE(v123) = sub_10056FA58();
      sub_10056E598();
      v127 = v423;
      v128 = v125 + *(v423 + 36);
      *v128 = v123;
      *(v128 + 1) = v129;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 4) = v132;
      v128[40] = 0;
      sub_100019B40(v125, v469, &qword_1006F39D0, &qword_10059F588);
      v133 = v127;
      v134 = 0;
      goto LABEL_16;
    }

    v134 = 1;
  }

  else
  {
    v134 = 1;
    v122 = v470;
  }

  v133 = v423;
LABEL_16:
  (*(v422 + 56))(v469, v134, 1, v133);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
  sub_10056E708();
  v135 = InlineProfileEditingView.Context.canValidate.getter();

  v136 = !v135;
  v137 = v443;
  sub_100413998(v69 + v122, v443, v138, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v455 = v103;
  v454 = v104;
  if (EnumCaseMultiPayload)
  {
    v406 = v117;
    v407 = v115;
    v404 = v121;
    v405 = v119;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v449) = v136;
      v175 = *(v69 + 8);
      LOBYTE(v477[0]) = *v69;
      v174 = v477[0];
      *(&v477[0] + 1) = v175;
      v176 = sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
      sub_100570698();
      v177 = v382;
      sub_1005707A8();
      v178 = sub_10056FA38();
      sub_10056E598();
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;
      v187 = v177 + *(sub_100009DCC(&qword_1006F3A90, &qword_10059F640) + 36);
      *v187 = v178;
      *(v187 + 8) = v180;
      *(v187 + 16) = v182;
      *(v187 + 24) = v184;
      *(v187 + 32) = v186;
      *(v187 + 40) = 0;
      v188 = sub_10056FA38();
      *(v177 + *(sub_100009DCC(&qword_1006F3A98, &qword_10059F648) + 36)) = v188;
      v189 = (v177 + *(v380 + 36));
      v190 = *(sub_10056EDD8() + 20);
      v191 = enum case for RoundedCornerStyle.continuous(_:);
      v192 = sub_10056F2E8();
      (*(*(v192 - 8) + 104))(&v189[v190], v191, v192);
      __asm { FMOV            V0.2D, #16.0 }

      *v189 = _Q0;
      *&v189[*(sub_100009DCC(&unk_1006F3BA0, &qword_10059F650) + 36)] = 256;
      sub_1005709E8();
      sub_10056EDF8();
      v198 = v383;
      sub_100019B40(v177, v383, &qword_1006F39B8, &qword_10059F570);
      v199 = (v198 + *(v381 + 36));
      v200 = v505;
      v199[4] = v504;
      v199[5] = v200;
      v199[6] = v506;
      v201 = v501;
      *v199 = v500;
      v199[1] = v201;
      v202 = v503;
      v199[2] = v502;
      v199[3] = v202;
      sub_100019B40(v198, v426, &qword_1006F39C0, &qword_10059F578);
      v478[0] = v174;
      *&v478[8] = v175;
      v434 = v176;
      sub_100570678();
      v203 = v445;
      v204 = (v445 + 16);
      v205 = v430;
      sub_100572818();
      v215 = v431;
      (*v204)(v427, v205, v431);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v216 = qword_1006FDF00;
      sub_10056CBC8();
      v217 = sub_100572948();
      v219 = v218;
      v441 = v113;
      v443 = v111;
      v446 = v109;
      v447 = v107;
      (*(v203 + 8))(v205, v215);
      *v478 = v217;
      *&v478[8] = v219;
      v445 = sub_10056FF28();
      v442 = v220;
      LOBYTE(v217) = v221;
      v433 = v222;
      sub_1005709F8();
      sub_10056EDF8();
      *&v479[54] = v511;
      *&v479[70] = v512;
      *&v479[86] = v513;
      *&v479[102] = v514;
      *&v479[6] = v508;
      *&v479[22] = v509;
      v223 = v217 & 1;
      v480 = v217 & 1;
      *&v479[38] = v510;
      v431 = swift_getKeyPath();
      v224 = sub_10056F6F8();
      v225 = sub_10056FC48();
      v226 = swift_getKeyPath();
      v227 = sub_10056FA28();
      sub_10056E598();
      v229 = v228;
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v481 = 0;
      v236 = sub_10056FA48();
      if (qword_1006EEC18 != -1)
      {
        swift_once();
      }

      sub_10056E598();
      v238 = v237;
      v240 = v239;
      v242 = v241;
      v244 = v243;
      v482 = 0;
      v245 = sub_10056FA58();
      sub_10056E598();
      *&v472[98] = *&v479[64];
      *&v472[114] = *&v479[80];
      *&v472[130] = *&v479[96];
      *&v472[34] = *v479;
      *&v472[50] = *&v479[16];
      *&v472[66] = *&v479[32];
      v483 = 0;
      *v472 = v445;
      *&v472[8] = v442;
      v472[16] = v223;
      *&v472[24] = v433;
      *&v472[32] = 256;
      *&v472[82] = *&v479[48];
      *&v472[144] = *&v479[110];
      *&v472[152] = v431;
      v472[160] = 0;
      *&v472[164] = v224;
      *&v472[168] = v226;
      *&v472[176] = v225;
      v472[184] = v227;
      *&v472[192] = v229;
      *&v472[200] = v231;
      *&v472[208] = v233;
      *&v472[216] = v235;
      v472[224] = 0;
      v472[232] = v236;
      *&v472[240] = v238;
      *&v472[248] = v240;
      *&v472[256] = v242;
      *&v472[264] = v244;
      v472[272] = 0;
      *&v472[273] = v484;
      *&v472[276] = *(&v484 + 3);
      v472[280] = v245;
      *&v472[281] = v525;
      *&v472[284] = *(&v525 + 3);
      *&v472[288] = v246;
      *&v472[296] = v247;
      *&v472[304] = v248;
      *&v472[312] = v249;
      v472[320] = 0;
      v250 = v466;
      v251 = Collaboration.Flow.buttonActionTitle.getter();
      v253 = v252;
      v254 = v448;
      sub_100413998(v250, v448, v255, type metadata accessor for Collaboration.Flow.View);
      v256 = (*(v432 + 80) + 16) & ~*(v432 + 80);
      v257 = swift_allocObject();
      sub_100412498(v254, v257 + v256, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v477[0]) = 0;
      sub_100570668();
      v258 = v478[0];
      v259 = *&v478[8];
      v260 = swift_getKeyPath();
      v473 = 0;
      v261 = swift_getKeyPath();
      v262 = swift_allocObject();
      *(v262 + 16) = v449 & 1;
      *v478 = v251;
      *&v478[8] = v253;
      v478[16] = 0;
      *&v478[17] = v476[0];
      *&v478[20] = *(v476 + 3);
      *&v478[24] = sub_10041443C;
      *&v478[32] = v257;
      v478[40] = v258;
      *&v478[41] = v475[0];
      *&v478[44] = *(v475 + 3);
      *&v478[48] = v259;
      *&v478[56] = v260;
      v478[64] = v473;
      *&v478[65] = *v474;
      *&v478[68] = *&v474[3];
      *&v478[72] = v261;
      *&v478[80] = sub_100415B74;
      *&v478[88] = v262;
      v263 = *(v250 + 24);
      LOBYTE(v471[0]) = *(v250 + 16);
      *(&v471[0] + 1) = v263;
      sub_100570698();
      v449 = &v375;
      LODWORD(v448) = LOBYTE(v477[1]);
      __chkstk_darwin();
      v466 = sub_100009DCC(&qword_1006F3A68, &qword_10059F628);
      v470 = sub_100413F9C();
      v264 = v417;
      sub_100570278();

      v494 = *&v478[32];
      v495 = *&v478[48];
      v496 = *&v478[64];
      v497 = *&v478[80];
      v492 = *v478;
      v493 = *&v478[16];
      sub_10001036C(&v492, &qword_1006F3A68, &qword_10059F628);
      v265 = v399;
      sub_10000CC8C(v426, v399, &qword_1006F39C0, &qword_10059F578);
      memcpy(v471, v472, 0x141uLL);
      v266 = *(v444 + 16);
      v267 = v400;
      v266(v400, v264, v428);
      v268 = v401;
      sub_10000CC8C(v265, v401, &qword_1006F39C0, &qword_10059F578);
      v269 = sub_100009DCC(&qword_1006F3AA0, &qword_10059F658);
      v270 = *(v269 + 48);
      memcpy(v477, v471, 0x141uLL);
      memcpy((v268 + v270), v471, 0x141uLL);
      v271 = v428;
      v266((v268 + *(v269 + 64)), v267, v428);
      sub_10000CC8C(v472, v478, &qword_1006F3AA8, &qword_10059F660);
      sub_10000CC8C(v477, v478, &qword_1006F3AA8, &qword_10059F660);
      v449 = *(v444 + 8);
      v444 += 8;
      (v449)(v267, v271);
      memcpy(v478, v471, sizeof(v478));
      sub_10001036C(v478, &qword_1006F3AA8, &qword_10059F660);
      sub_10001036C(v265, &qword_1006F39C0, &qword_10059F578);
      sub_10000CC8C(v268, v420, &qword_1006F39A8, &qword_10059F560);
      swift_storeEnumTagMultiPayload();
      sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8, &qword_10059F560, &protocol conformance descriptor for TupleView<A>);
      v272 = v421;
      sub_10056F5B8();
      sub_10000CC8C(v272, v438, &qword_1006F39A0, &qword_10059F558);
      swift_storeEnumTagMultiPayload();
      sub_100413EE4();
      sub_100010BC0(&qword_1006F3A78, &qword_1006F3980, &qword_10059F530, &protocol conformance descriptor for TupleView<A>);
      sub_10056F5B8();
      sub_10001036C(v472, &qword_1006F3AA8, &qword_10059F660);
      sub_10001036C(v272, &qword_1006F39A0, &qword_10059F558);
      sub_10001036C(v268, &qword_1006F39A8, &qword_10059F560);
      (v449)(v417, v428);
      sub_10001036C(v426, &qword_1006F39C0, &qword_10059F578);
      v107 = v447;
      v109 = v446;
      v111 = v443;
      v113 = v441;
      goto LABEL_41;
    }

    v140 = *(v433 + 32);
    v470 = v433 + 32;
    v449 = v140;
    (v140)(v446, v137, v447);
    v141 = v424;
    sub_1003F59B0(v424);
    v142 = sub_100571F78();
    v144 = v143;
    if (qword_1006EEBF8 != -1)
    {
      swift_once();
    }

    (*(v412 + 104))(v425, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v414);
    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    v146 = v386;
    sub_10000CC8C(v141, v386, &qword_1006F3E50, &qword_1005971F0);
    v147 = type metadata accessor for ArtworkImage.ViewModel(0);
    v443 = *(*(v147 - 8) + 48);
    v148 = (v443)(v146, 1, v147);
    v149 = v396;
    v150 = v388;
    v444 = v145;
    if (v148 == 1)
    {
      sub_10001036C(v146, &qword_1006F3E50, &qword_1005971F0);
      v151 = sub_100571E58();
      (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
    }

    else
    {
      v206 = sub_100571E58();
      v207 = *(v206 - 8);
      (*(v207 + 16))(v150, v146, v206);
      sub_100412418(v146, type metadata accessor for ArtworkImage.ViewModel);
      (*(v207 + 56))(v150, 0, 1, v206);
    }

    sub_10000CC8C(v150, v389, &unk_1006F3B10, &unk_100599150);
    sub_10056DC28();
    sub_10001036C(v150, &unk_1006F3B10, &unk_100599150);
    sub_10056DC08();
    v208 = v387;
    sub_10000CC8C(v424, v387, &qword_1006F3E50, &qword_1005971F0);
    if ((v443)(v208, 1, v147) == 1)
    {
      sub_10001036C(v208, &qword_1006F3E50, &qword_1005971F0);
      v209 = v378;
      v210 = v379;
      (*(v149 + 56))(v378, 1, 1, v379);
      v211 = v377;
    }

    else
    {
      v209 = v378;
      sub_10000CC8C(v208 + *(v147 + 20), v378, &qword_1006F2C40, &qword_10059C100);
      sub_100412418(v208, type metadata accessor for ArtworkImage.ViewModel);
      v210 = v379;
      v212 = (*(v149 + 48))(v209, 1, v379);
      v211 = v377;
      if (v212 != 1)
      {
        v214 = v395;
        (*(v149 + 32))(v395, v209, v210);
LABEL_38:
        v273 = v411;
        sub_10056DBE8();
        (*(v149 + 8))(v214, v210);
        v274 = v398;
        v275 = *(v397 + 8);
        v275(v273, v398);
        v276 = v394;
        sub_10056DC18();
        v275(v211, v274);
        sub_1003CCBB0();
        v277 = v393;
        sub_10056DBF8();

        v275(v276, v274);
        v275(v413, v274);
        (*(v412 + 8))(v425, v414);
        sub_10001036C(v424, &qword_1006F3E50, &qword_1005971F0);
        sub_1005709E8();
        sub_10056E888();
        v278 = (v277 + *(sub_100009DCC(&unk_1006F3E60, &qword_10059F5E0) + 36));
        v279 = v526;
        *v278 = v525;
        v278[1] = v279;
        v278[2] = v527;
        *(v277 + *(v391 + 36)) = 256;
        LOBYTE(v273) = sub_10056FA48();
        sub_10056E598();
        v281 = v280;
        v283 = v282;
        v285 = v284;
        v287 = v286;
        v288 = v390;
        sub_100019B40(v277, v390, &qword_1006F3988, &qword_10059F538);
        v289 = v288 + *(v392 + 36);
        *v289 = v273;
        *(v289 + 8) = v281;
        *(v289 + 16) = v283;
        *(v289 + 24) = v285;
        *(v289 + 32) = v287;
        *(v289 + 40) = 0;
        sub_100019B40(v288, v434, &qword_1006F3E70, &qword_10059F540);
        v290 = v430;
        sub_100572818();
        v291 = v445;
        v292 = *(v445 + 16);
        v293 = v431;
        v444 = v445 + 16;
        v443 = v292;
        v292();
        if (qword_1006EE950 != -1)
        {
          swift_once();
        }

        v294 = qword_1006FDF00;
        v295 = qword_1006FDF00;
        v442 = v294;
        v296 = v295;
        sub_10056CBC8();
        v297 = v296;
        v298 = sub_100572948();
        v421 = v299;
        v422 = v298;
        v300 = *(v291 + 8);
        v445 = v291 + 8;
        v441 = v300;
        v301.n128_f64[0] = (v300)(v290, v293);
        v428 = type metadata accessor for Collaboration.Flow.View;
        v302 = v448;
        sub_100413998(v69, v448, v301, type metadata accessor for Collaboration.Flow.View);
        v303 = v433;
        v304 = *(v433 + 16);
        v425 = (v433 + 16);
        v426 = v304;
        v305 = v416;
        v306 = v447;
        v304(v416, v446, v447);
        v307 = *(v432 + 80);
        v308 = *(v303 + 80);
        v309 = (v307 + 16) & ~v307;
        v432 = v309;
        v310 = (v435 + v308 + v309) & ~v308;
        v435 = v307 | v308;
        v311 = v310;
        v423 = v310;
        v312 = swift_allocObject();
        v424 = type metadata accessor for Collaboration.Flow.View;
        sub_100412498(v302, v312 + v309, type metadata accessor for Collaboration.Flow.View);
        (v449)(v312 + v311, v305, v306);
        LOBYTE(v477[0]) = 0;
        sub_100570668();
        LOBYTE(v305) = v478[0];
        v313 = *&v478[8];
        v314 = swift_getKeyPath();
        LOBYTE(v475[0]) = 0;
        v315 = sub_10056FA48();
        v316 = v427;
        v317 = v315;
        sub_10056E598();
        v472[0] = 0;
        *&v500 = v422;
        *(&v500 + 1) = v421;
        LOBYTE(v501) = 0;
        *(&v501 + 1) = sub_100413A0C;
        *&v502 = v312;
        BYTE8(v502) = v305;
        *&v503 = v313;
        *(&v503 + 1) = v314;
        LOBYTE(v504) = v475[0];
        *(&v504 + 1) = *v478;
        DWORD1(v504) = *&v478[3];
        BYTE8(v504) = v317;
        HIDWORD(v504) = *(v477 + 3);
        *(&v504 + 9) = v477[0];
        *&v505 = v318;
        *(&v505 + 1) = v319;
        *&v506 = v320;
        *(&v506 + 1) = v321;
        v507 = 0;
        v322 = v430;
        sub_100572818();
        v323 = v431;
        (v443)(v316, v322, v431);
        sub_10056CBC8();
        v444 = sub_100572948();
        v443 = v324;
        v325.n128_f64[0] = (v441)(v322, v323);
        v326 = v448;
        sub_100413998(v466, v448, v325, v428);
        v327 = v416;
        v328 = v447;
        v426(v416, v446, v447);
        v329 = v423;
        v330 = swift_allocObject();
        sub_100412498(v326, v330 + v432, v424);
        (v449)(v330 + v329, v327, v328);
        LOBYTE(v477[0]) = 0;
        sub_100570668();
        LOBYTE(v327) = v478[0];
        v331 = *&v478[8];
        v332 = swift_getKeyPath();
        LOBYTE(v476[0]) = 0;
        LOBYTE(v326) = sub_10056FA48();
        sub_10056E598();
        v472[0] = 0;
        *&v508 = v444;
        *(&v508 + 1) = v443;
        LOBYTE(v509) = 1;
        *(&v509 + 1) = sub_100413DA4;
        *&v510 = v330;
        BYTE8(v510) = v327;
        *&v511 = v331;
        *(&v511 + 1) = v332;
        LOBYTE(v512) = v476[0];
        *(&v512 + 1) = *v478;
        DWORD1(v512) = *&v478[3];
        BYTE8(v512) = v326;
        HIDWORD(v512) = *(v477 + 3);
        *(&v512 + 9) = v477[0];
        *&v513 = v333;
        *(&v513 + 1) = v334;
        *&v514 = v335;
        *(&v514 + 1) = v336;
        v515 = 0;
        v337 = v402;
        sub_10000CC8C(v434, v402, &qword_1006F3E70, &qword_10059F540);
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v492 = v500;
        v493 = v501;
        v494 = v502;
        v495 = v503;
        v488 = v512;
        v489 = v513;
        v490 = v514;
        v484 = v508;
        v485 = v509;
        v486 = v510;
        v499 = v507;
        v491 = v515;
        v487 = v511;
        v338 = v403;
        sub_10000CC8C(v337, v403, &qword_1006F3E70, &qword_10059F540);
        v339 = sub_100009DCC(&qword_1006F3A40, &qword_10059F618);
        v340 = v338 + *(v339 + 48);
        v341 = v499;
        LOBYTE(v471[7]) = v499;
        v343 = v497;
        v471[4] = v496;
        v342 = v496;
        v471[5] = v497;
        v471[6] = v498;
        v344 = v498;
        v346 = v493;
        v471[0] = v492;
        v345 = v492;
        v471[1] = v493;
        v347 = v495;
        v471[2] = v494;
        v471[3] = v495;
        *(v340 + 32) = v494;
        *(v340 + 48) = v347;
        *v340 = v345;
        *(v340 + 16) = v346;
        *(v340 + 112) = v341;
        *(v340 + 80) = v343;
        *(v340 + 96) = v344;
        *(v340 + 64) = v342;
        v348 = v338 + *(v339 + 64);
        *&v472[32] = v486;
        *&v472[48] = v487;
        *v472 = v484;
        *&v472[16] = v485;
        *&v472[64] = v488;
        *&v472[80] = v489;
        *&v472[96] = v490;
        v472[112] = v491;
        v349 = v488;
        v350 = v489;
        *(v348 + 64) = v488;
        *(v348 + 80) = v350;
        v351 = v490;
        *(v348 + 96) = v490;
        v352 = v491;
        *(v348 + 112) = v491;
        v353 = v484;
        v354 = v485;
        *v348 = v484;
        *(v348 + 16) = v354;
        v355 = v486;
        v356 = v487;
        *(v348 + 32) = v486;
        *(v348 + 48) = v356;
        v477[0] = v353;
        v477[1] = v354;
        v477[2] = v355;
        v477[3] = v356;
        v477[4] = v349;
        v477[5] = v350;
        v477[6] = v351;
        LOBYTE(v477[7]) = v352;
        sub_10000CC8C(&v500, v478, &qword_1006F3A48, &qword_10059F620);
        sub_10000CC8C(&v508, v478, &qword_1006F3A48, &qword_10059F620);
        sub_10000CC8C(v471, v478, &qword_1006F3A48, &qword_10059F620);
        sub_10000CC8C(v472, v478, &qword_1006F3A48, &qword_10059F620);
        sub_10001036C(v477, &qword_1006F3A48, &qword_10059F620);
        *&v478[64] = v496;
        *&v478[80] = v497;
        *&v478[96] = v498;
        v478[112] = v499;
        *v478 = v492;
        *&v478[16] = v493;
        *&v478[32] = v494;
        *&v478[48] = v495;
        sub_10001036C(v478, &qword_1006F3A48, &qword_10059F620);
        sub_10001036C(v337, &qword_1006F3E70, &qword_10059F540);
        sub_10000CC8C(v338, v438, &qword_1006F3980, &qword_10059F530);
        swift_storeEnumTagMultiPayload();
        sub_100413EE4();
        sub_100010BC0(&qword_1006F3A78, &qword_1006F3980, &qword_10059F530, &protocol conformance descriptor for TupleView<A>);
        sub_10056F5B8();
        sub_10001036C(&v508, &qword_1006F3A48, &qword_10059F620);
        sub_10001036C(&v500, &qword_1006F3A48, &qword_10059F620);
        sub_10001036C(v338, &qword_1006F3980, &qword_10059F530);
        sub_10001036C(v434, &qword_1006F3E70, &qword_10059F540);
        (*(v433 + 8))(v446, v447);
LABEL_41:
        v117 = v406;
        v115 = v407;
        v121 = v404;
        v119 = v405;
        goto LABEL_42;
      }
    }

    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v213 = sub_10000C49C(v210, static Artwork.CropStyle.fallback);
    v214 = v395;
    (*(v149 + 16))(v395, v213, v210);
    if ((*(v149 + 48))(v209, 1, v210) != 1)
    {
      sub_10001036C(v209, &qword_1006F2C40, &qword_10059C100);
    }

    goto LABEL_38;
  }

  v152 = sub_100009DCC(&qword_1006F35A8, &qword_10059F070);
  v153 = v408;
  v154 = v409;
  v155 = *(v409 + 32);
  v156 = v410;
  v155(v408, v137 + *(v152 + 48), v410);
  LODWORD(v449) = v136;
  v470 = Collaboration.Flow.buttonActionTitle.getter();
  v447 = v157;
  v158 = v448;
  sub_100413998(v69, v448, v159, type metadata accessor for Collaboration.Flow.View);
  v160 = v385;
  v161 = v156;
  (*(v154 + 16))(v385, v153, v156);
  v162 = (*(v432 + 80) + 16) & ~*(v432 + 80);
  v163 = (v435 + *(v154 + 80) + v162) & ~*(v154 + 80);
  v164 = swift_allocObject();
  sub_100412498(v158, v164 + v162, type metadata accessor for Collaboration.Flow.View);
  v155((v164 + v163), v160, v161);
  LOBYTE(v477[0]) = 0;
  sub_100570668();
  LOBYTE(v162) = v478[0];
  v165 = *&v478[8];
  v166 = swift_getKeyPath();
  v472[0] = 0;
  v167 = swift_getKeyPath();
  v168 = swift_allocObject();
  *(v168 + 16) = v449 & 1;
  *v478 = v470;
  *&v478[8] = v447;
  v478[16] = 0;
  *&v478[24] = sub_1004143F0;
  *&v478[32] = v164;
  v478[40] = v162;
  *&v478[48] = v165;
  *&v478[56] = v166;
  v478[64] = v472[0];
  *&v478[65] = v477[0];
  *&v478[68] = *(v477 + 3);
  *&v478[72] = v167;
  *&v478[80] = sub_100415B74;
  *&v478[88] = v168;
  v169 = *&v478[48];
  v170 = v420;
  v420[2] = *&v478[32];
  v170[3] = v169;
  v171 = *&v478[80];
  v170[4] = *&v478[64];
  v170[5] = v171;
  v172 = *&v478[16];
  *v170 = *v478;
  v170[1] = v172;
  swift_storeEnumTagMultiPayload();
  sub_10000CC8C(v478, v477, &qword_1006F3A68, &qword_10059F628);
  sub_100009DCC(&qword_1006F3A68, &qword_10059F628);
  sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8, &qword_10059F560, &protocol conformance descriptor for TupleView<A>);
  sub_100413F9C();
  v173 = v421;
  sub_10056F5B8();
  sub_10000CC8C(v173, v438, &qword_1006F39A0, &qword_10059F558);
  swift_storeEnumTagMultiPayload();
  sub_100413EE4();
  sub_100010BC0(&qword_1006F3A78, &qword_1006F3980, &qword_10059F530, &protocol conformance descriptor for TupleView<A>);
  sub_10056F5B8();
  sub_10001036C(v478, &qword_1006F3A68, &qword_10059F628);
  sub_10001036C(v173, &qword_1006F39A0, &qword_10059F558);
  (*(v409 + 8))(v408, v410);
  sub_10001036C(v443, &qword_1006F35B0, &qword_10059F078);
LABEL_42:
  v357 = v461;
  sub_10000CC8C(v465, v461, &qword_1006F39F8, &qword_10059F5B0);
  v358 = v463;
  sub_10000CC8C(v467, v463, &qword_1006F39E8, &qword_10059F5A0);
  sub_10000CC8C(v469, v462, &qword_1006F39D8, &qword_10059F590);
  sub_10000CC8C(v468, v464, &qword_1006F39C8, &qword_10059F580);
  v359 = v357;
  v360 = v440;
  sub_10000CC8C(v359, v440, &qword_1006F39F8, &qword_10059F5B0);
  v361 = sub_100009DCC(&qword_1006F3A80, &qword_10059F630);
  sub_10000CC8C(v358, v360 + v361[12], &qword_1006F39E8, &qword_10059F5A0);
  v362 = v360 + v361[16];
  *&v477[0] = v457;
  *(&v477[0] + 1) = v456;
  LOBYTE(v477[1]) = v453;
  *(&v477[1] + 1) = *v520;
  DWORD1(v477[1]) = *&v520[3];
  *(&v477[1] + 1) = v458;
  LOWORD(v477[2]) = 256;
  *(&v477[2] + 2) = v518;
  WORD3(v477[2]) = v519;
  *(&v477[2] + 1) = v459;
  *&v477[3] = v460;
  *(&v477[3] + 1) = v455;
  LOBYTE(v477[4]) = 1;
  *(&v477[4] + 1) = *v517;
  DWORD1(v477[4]) = *&v517[3];
  *(&v477[4] + 1) = v452;
  *&v477[5] = v454;
  BYTE8(v477[5]) = v450;
  *(&v477[5] + 9) = *v516;
  HIDWORD(v477[5]) = *&v516[3];
  *&v477[6] = v107;
  *(&v477[6] + 1) = v109;
  *&v477[7] = v111;
  *(&v477[7] + 1) = v113;
  LOBYTE(v477[8]) = 0;
  DWORD1(v477[8]) = *&v522[3];
  *(&v477[8] + 1) = *v522;
  BYTE8(v477[8]) = v451;
  HIDWORD(v477[8]) = *&v521[3];
  *(&v477[8] + 9) = *v521;
  *&v477[9] = v115;
  *(&v477[9] + 1) = v117;
  *&v477[10] = v119;
  *(&v477[10] + 1) = v121;
  LOBYTE(v477[11]) = 0;
  v363 = v477[8];
  v364 = v477[9];
  v365 = v477[10];
  *(v362 + 176) = 0;
  *(v362 + 144) = v364;
  *(v362 + 160) = v365;
  v366 = v477[0];
  v367 = v477[1];
  v368 = v477[3];
  *(v362 + 32) = v477[2];
  *(v362 + 48) = v368;
  *v362 = v366;
  *(v362 + 16) = v367;
  v369 = v477[4];
  v370 = v477[5];
  v371 = v477[6];
  *(v362 + 112) = v477[7];
  *(v362 + 128) = v363;
  *(v362 + 80) = v370;
  *(v362 + 96) = v371;
  *(v362 + 64) = v369;
  v372 = v462;
  sub_10000CC8C(v462, v360 + v361[20], &qword_1006F39D8, &qword_10059F590);
  v373 = v464;
  sub_10000CC8C(v464, v360 + v361[24], &qword_1006F39C8, &qword_10059F580);
  sub_10000CC8C(v477, v478, &qword_1006F3A88, &qword_10059F638);
  sub_10001036C(v468, &qword_1006F39C8, &qword_10059F580);
  sub_10001036C(v469, &qword_1006F39D8, &qword_10059F590);
  sub_10001036C(v467, &qword_1006F39E8, &qword_10059F5A0);
  sub_10001036C(v465, &qword_1006F39F8, &qword_10059F5B0);
  sub_10001036C(v373, &qword_1006F39C8, &qword_10059F580);
  sub_10001036C(v372, &qword_1006F39D8, &qword_10059F590);
  *v478 = v457;
  *&v478[8] = v456;
  v478[16] = v453;
  *&v478[17] = *v520;
  *&v478[20] = *&v520[3];
  *&v478[24] = v458;
  *&v478[32] = 256;
  *&v478[34] = v518;
  *&v478[38] = v519;
  *&v478[40] = v459;
  *&v478[48] = v460;
  *&v478[56] = v455;
  v478[64] = 1;
  *&v478[68] = *&v517[3];
  *&v478[65] = *v517;
  *&v478[72] = v452;
  *&v478[80] = v454;
  v478[88] = v450;
  *&v478[92] = *&v516[3];
  *&v478[89] = *v516;
  *&v478[96] = v107;
  *&v478[104] = v109;
  *&v478[112] = v111;
  *&v478[120] = v113;
  v478[128] = 0;
  *&v478[129] = *v522;
  *&v478[132] = *&v522[3];
  v478[136] = v451;
  *&v478[140] = *&v521[3];
  *&v478[137] = *v521;
  *&v478[144] = v115;
  *&v478[152] = v117;
  *&v478[160] = v119;
  *&v478[168] = v121;
  v478[176] = 0;
  sub_10001036C(v478, &qword_1006F3A88, &qword_10059F638);
  sub_10001036C(v463, &qword_1006F39E8, &qword_10059F5A0);
  return sub_10001036C(v461, &qword_1006F39F8, &qword_10059F5B0);
}

uint64_t sub_10040BE98@<X0>(uint64_t a1@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_10037AD68();
  result = sub_10056FF28();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_10040C0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = sub_100572F48();
  v9.n128_f64[0] = (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100413998(a2, v5, v9, type metadata accessor for Collaboration.Flow.View);
  sub_100572F08();
  v10 = sub_100572EF8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100412498(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_100396F38(0, 0, v7, &unk_10059F6A0, v12);

  return result;
}

uint64_t sub_10040C288()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E56C;

  return sub_10040C338(0);
}

uint64_t sub_10040C338(char a1)
{
  v2[10] = v1;
  v2[11] = sub_100009DCC(&qword_1006F3AB0, &qword_10059F668);
  v2[12] = swift_task_alloc();
  v4 = sub_1005722D8();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_100572F08();
  v2[17] = sub_100572EF8();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_10040C510;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_10040C8D0;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_10040C510()
{
  *(*v1 + 152) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_10040D310;
  }

  else
  {
    v4 = sub_10040C668;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10040C668()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_10056E708();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_10040CE3C;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
    sub_100570678();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_10040D080;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_10040C8D0(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_100572E78();

  return _swift_task_switch(sub_10040CA14, v3, v2);
}

uint64_t sub_10040CA14()
{
  if (*(v0 + 35) == 1)
  {

    sub_100414814();
    v1 = swift_allocError();
    *v2 = xmmword_100596F20;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
        sub_100570688();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_100414958(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_10001036C(v19, &qword_1006F3AB0, &qword_10059F668);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v11 = sub_10056E708();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_10040CE3C;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
    sub_100570678();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_10040D080;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_10040CE3C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100572E78();
    v4 = v3;
    v5 = sub_10040D4C0;
  }

  else
  {

    v2 = sub_100572E78();
    v4 = v6;
    v5 = sub_10040CF8C;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_10040CF8C()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10040D080;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_10040D080()
{
  *(*v1 + 208) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_10040D67C;
  }

  else
  {
    v4 = sub_10040D1D8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10040D1D8()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_10001036C(v5, &qword_1006F3AB0, &qword_10059F668);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10040D310()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0, &qword_10059F668);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D4C0()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0, &qword_10059F668);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D67C()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0, &qword_10059F668);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v62 = a2;
  v58 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  __chkstk_darwin();
  v59 = v2;
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570438();
  __chkstk_darwin();
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v46 - v4;
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  sub_100572818();
  v49 = *(v6 + 16);
  v48 = v6 + 16;
  v49(v8, v10, v5);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v11 = qword_1006FDF00;
  v12 = qword_1006FDF00;
  v63 = v11;
  v13 = v12;
  sub_10056CBC8();
  v14 = v13;
  v15 = sub_100572948();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v47 = v18;
  v66 = v15;
  v67 = v17;
  v46 = sub_10037AD68();
  v19 = sub_10056FF28();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v55 = v22;
  sub_100572818();
  v23 = v49;
  v49(v8, v10, v5);
  sub_10056CBC8();
  v24 = sub_100572948();
  v26 = v25;
  v18(v10, v5);
  v66 = v24;
  v67 = v26;
  v27 = sub_10056FF28();
  v52 = v28;
  v53 = v27;
  v50 = v29 & 1;
  v51 = v30;
  sub_100572818();
  v23(v8, v10, v5);
  sub_10056CBC8();
  v31 = sub_100572948();
  v33 = v32;
  v47(v10, v5);
  v66 = v31;
  v67 = v33;
  v34 = sub_10056FF28();
  v36 = v35;
  v38 = v37;
  v63 = type metadata accessor for Collaboration.Flow.View;
  v39 = v61;
  sub_100413998(v65, v61, v40, type metadata accessor for Collaboration.Flow.View);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  sub_100412498(v39, v42 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_100570428();
  sub_10001B5A4(v34, v36, v38 & 1);

  sub_100413998(v65, v39, v43, v63);
  v44 = swift_allocObject();
  sub_100412498(v39, v44 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_100570418();

  return sub_1005703F8();
}

double sub_10040DE20(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = sub_100572F48();
  v8.n128_f64[0] = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100413998(a1, v4, v8, type metadata accessor for Collaboration.Flow.View);
  sub_100572F08();
  v9 = sub_100572EF8();
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_100412498(v4, v11 + v10, type metadata accessor for Collaboration.Flow.View);
  sub_100396F38(0, 0, v6, &unk_10059F680, v11);

  return result;
}

uint64_t sub_10040E000()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E380;

  return sub_10040C338(1);
}

uint64_t sub_10040E0B0(uint64_t a1)
{
  sub_100009DCC(&qword_1006F3AB0, &qword_10059F668);
  __chkstk_darwin();
  v3 = (&v8 - v2);
  v4 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_100414814();
  v5 = swift_allocError();
  *v6 = xmmword_100596F20;
  *(v6 + 16) = 3;
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v3);
  return sub_10001036C(v3, &qword_1006F3AB0, &qword_10059F668);
}

uint64_t sub_10040E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0, &qword_10059F668);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040E288, v7, v6);
}

uint64_t sub_10040E288()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_10056E708();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10040E4B0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10040E680;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10040E4B0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10040E8B8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10040E5CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10040E5CC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10040E680;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10040E680()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10040E99C;
  }

  else
  {
    v5 = sub_10040E7BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10040E7BC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1005722D8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_10001036C(v2, &qword_1006F3AB0, &qword_10059F668);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040E8B8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0, &qword_10059F668);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040E99C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0, &qword_10059F668);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0, &qword_10059F668);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040EB4C, v7, v6);
}

uint64_t sub_10040EB4C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10040EC08;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_10040EC08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10040ED44;
  }

  else
  {
    v5 = sub_100415B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10040ED44()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0, &qword_10059F668);

  v6 = v0[1];

  return v6();
}

double sub_10040EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = sub_100572F48();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_100413998(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_100572F08();
  v19 = sub_100572EF8();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_100412498(v14, v22 + v20, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v22 + v21, v11, v8);
  sub_100396F38(0, 0, v16, v25, v22);

  return result;
}

uint64_t sub_10040F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0, &qword_10059F668);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040F1A8, v7, v6);
}

uint64_t sub_10040F1A8()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10040F264;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_10040F264()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100415B6C;
  }

  else
  {
    v5 = sub_100415B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_1004157CC();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_10056C728();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_10040F4B8()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_10040F51C@<X0>(uint64_t *a1@<X8>)
{
  sub_100009DCC(&qword_1006F33E8, &qword_10059EE40);
  __chkstk_darwin();
  v3 = &v8 - v2;
  sub_100570548();
  sub_10056F398();
  v4 = sub_10056F3A8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_100570588();

  sub_10001036C(v3, &qword_1006F33E8, &qword_10059EE40);
  v6 = sub_100570458();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t sub_10040F658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v2 = sub_10056FBF8();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin();
  v129 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100572888();
  v128 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v112 - v9;
  v115 = sub_100009DCC(&qword_1006F3918, &qword_10059F430);
  __chkstk_darwin();
  v12 = &v112 - v11;
  v116 = sub_100009DCC(&qword_1006F3920, &qword_10059F438);
  __chkstk_darwin();
  v119 = &v112 - v13;
  v14 = sub_100009DCC(&qword_1006F3928, &qword_10059F440);
  v126 = *(v14 - 8);
  v127 = v14;
  __chkstk_darwin();
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v112 - v16;
  v17 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3930, &qword_10059F448);
  __chkstk_darwin();
  v133 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v112 - v21;
  v23 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v125 = v17;
  swift_storeEnumTagMultiPayload();
  v124 = v23;
  LOBYTE(v23) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v135 + v23), v19);
  sub_100412418(v19, type metadata accessor for Collaboration.Flow);
  v132 = v22;
  v122 = v5;
  v123 = v6;
  v120 = v8;
  v121 = v10;
  if (v23)
  {
    v24 = 1;
    v25 = v127;
  }

  else
  {
    sub_100572818();
    v26 = v128;
    (*(v128 + 16))(v8, v10, v6);
    v27 = v26;
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v28 = qword_1006FDF00;
    sub_10056CBC8();
    v29 = sub_100572948();
    v31 = v30;
    (*(v27 + 8))(v10, v6);
    *&v158 = v29;
    *(&v158 + 1) = v31;
    sub_10037AD68();
    v32 = sub_10056FF28();
    v113 = v33;
    v114 = v34;
    v36 = v35;
    v37 = &v12[*(sub_100009DCC(&qword_1006F3938, &qword_10059F450) + 36)];
    v38 = *(sub_100009DCC(&qword_1006F3940, &qword_10059F458) + 28);
    v39 = enum case for Text.Case.uppercase(_:);
    v40 = sub_10056FE68();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    v42 = v113;
    *v12 = v32;
    *(v12 + 1) = v42;
    v12[16] = v36 & 1;
    *(v12 + 3) = v114;
    v43 = sub_10056FC48();
    KeyPath = swift_getKeyPath();
    v45 = &v12[*(sub_100009DCC(&qword_1006F3948, &qword_10059F4C0) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = sub_100570508();
    v47 = swift_getKeyPath();
    v48 = &v12[*(v115 + 36)];
    *v48 = v47;
    v48[1] = v46;
    sub_1005709F8();
    sub_10056EDF8();
    v49 = v119;
    sub_100019B40(v12, v119, &qword_1006F3918, &qword_10059F430);
    v50 = (v49 + *(v116 + 36));
    v51 = v172;
    v50[4] = v171;
    v50[5] = v51;
    v50[6] = v173;
    v52 = v168;
    *v50 = v167;
    v50[1] = v52;
    v53 = v170;
    v50[2] = v169;
    v50[3] = v53;
    LOBYTE(v46) = sub_10056FA28();
    sub_10056E598();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v117;
    sub_100019B40(v49, v117, &qword_1006F3920, &qword_10059F438);
    v25 = v127;
    v63 = v62 + *(v127 + 36);
    *v63 = v46;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = v62;
    v65 = v118;
    sub_100019B40(v64, v118, &qword_1006F3928, &qword_10059F440);
    v22 = v132;
    sub_100019B40(v65, v132, &qword_1006F3928, &qword_10059F440);
    v24 = 0;
  }

  v67 = v130;
  v66 = v131;
  v68 = v129;
  (*(v126 + 56))(v22, v24, 1, v25);
  v69 = v135;

  sub_10041B674(&v174);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v69 + v124), v19);
  sub_100412418(v19, type metadata accessor for Collaboration.Flow);
  if (v69)
  {
    sub_1004136E8(&v158);
  }

  else
  {
    v70 = v121;
    sub_100572818();
    v71 = v128;
    v72 = v123;
    (*(v128 + 16))(v120, v70, v123);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v73 = qword_1006FDF00;
    sub_10056CBC8();
    v74 = sub_100572948();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    *&v158 = v74;
    *(&v158 + 1) = v76;
    sub_10037AD68();
    v135 = sub_10056FF28();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = swift_getKeyPath();
    LOBYTE(v74) = v80 & 1;
    LOBYTE(v158) = v80 & 1;
    sub_10056FC48();
    (*(v67 + 104))(v68, enum case for Font.Leading.tight(_:), v66);
    v84 = sub_10056FC28();

    (*(v67 + 8))(v68, v66);
    v85 = swift_getKeyPath();
    v86 = sub_100570508();
    v87 = swift_getKeyPath();
    v88 = sub_10056FA28();
    sub_10056E598();
    LOBYTE(v158) = 0;
    *&v149 = v135;
    *(&v149 + 1) = v78;
    LOBYTE(v150) = v74;
    *(&v150 + 1) = v82;
    LOWORD(v151) = 256;
    *(&v151 + 1) = v83;
    LOBYTE(v152) = 1;
    *(&v152 + 1) = v85;
    *&v153 = v84;
    *(&v153 + 1) = v87;
    *&v154 = v86;
    BYTE8(v154) = v88;
    *&v155 = v89;
    *(&v155 + 1) = v90;
    *&v156 = v91;
    *(&v156 + 1) = v92;
    v157 = 0;
    v93.location = &v149;
    CFRange.init(_:)(v93);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v163 = v154;
    v158 = v149;
    v159 = v150;
    v22 = v132;
  }

  v94 = v133;
  sub_10000CC8C(v22, v133, &qword_1006F3930, &qword_10059F448);
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v138 = v160;
  v139 = v161;
  v140 = v162;
  v141 = v163;
  v136 = v158;
  v137 = v159;
  v95 = v134;
  sub_10000CC8C(v94, v134, &qword_1006F3930, &qword_10059F448);
  v96 = sub_100009DCC(&qword_1006F3950, &qword_10059F4F8);
  v97 = (v95 + *(v96 + 48));
  v98 = v178;
  v99 = v177;
  v145[3] = v177;
  v145[4] = v178;
  v100 = v175;
  v101 = v174;
  v145[1] = v175;
  v145[2] = v176;
  v145[0] = v174;
  v97[2] = v176;
  v97[3] = v99;
  v97[4] = v98;
  *v97 = v101;
  v97[1] = v100;
  v102 = *(v96 + 64);
  v103 = v143;
  v146[6] = v142;
  v146[7] = v143;
  v105 = v140;
  v104 = v141;
  v146[4] = v140;
  v146[5] = v141;
  v106 = v138;
  v107 = v139;
  v146[2] = v138;
  v146[3] = v139;
  v109 = v136;
  v108 = v137;
  v146[0] = v136;
  v146[1] = v137;
  v110 = v95 + v102;
  *(v110 + 96) = v142;
  *(v110 + 112) = v103;
  v147 = v144;
  *(v110 + 128) = v144;
  *(v110 + 32) = v106;
  *(v110 + 48) = v107;
  *(v110 + 64) = v105;
  *(v110 + 80) = v104;
  *v110 = v109;
  *(v110 + 16) = v108;
  sub_100413638(v145, &v149);
  sub_10000CC8C(v146, &v149, &qword_1006F3958, &unk_10059F500);
  sub_10001036C(v22, &qword_1006F3930, &qword_10059F448);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v149 = v136;
  v150 = v137;
  sub_10001036C(&v149, &qword_1006F3958, &unk_10059F500);
  v148[2] = v176;
  v148[3] = v177;
  v148[4] = v178;
  v148[0] = v174;
  v148[1] = v175;
  sub_100413694(v148);
  return sub_10001036C(v94, &qword_1006F3930, &qword_10059F448);
}

uint64_t sub_1004102D4@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_10056F368();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  sub_100009DCC(a3, a4);
  return a5(v6);
}

uint64_t sub_100410340@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_10056F198();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin();
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10056EDD8();
  __chkstk_darwin();
  v74 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_100009DCC(&qword_1006F3870, &qword_10059F318);
  __chkstk_darwin();
  v75 = &v63 - v6;
  v7 = sub_100009DCC(&qword_1006F3878, &qword_10059F320) - 8;
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = sub_100009DCC(&qword_1006F3880, &qword_10059F328) - 8;
  __chkstk_darwin();
  v12 = &v63 - v11;
  v67 = sub_100009DCC(&qword_1006F3888, &qword_10059F330);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v68 = sub_100009DCC(&qword_1006F3890, &qword_10059F338);
  __chkstk_darwin();
  v16 = &v63 - v15;
  v17 = sub_100009DCC(&qword_1006F3898, &qword_10059F340);
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin();
  v70 = &v63 - v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  v77 = v1;
  sub_1004130F8(v1, v87);
  sub_100009DCC(&qword_1006F38A0, &qword_10059F348);
  sub_100413130();
  sub_1005706D8();
  v90 = *(v1 + 40);
  v87[0] = *(v1 + 40);
  v63 = sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  v22 = v80;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_1000AD63C;
  v25[2] = v24;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v9, v12, &qword_1006F3878, &qword_10059F320);
  v26 = &v12[*(v10 + 44)];
  v27 = v85;
  *(v26 + 4) = v84;
  *(v26 + 5) = v27;
  *(v26 + 6) = v86;
  v28 = v81;
  *v26 = v80;
  *(v26 + 1) = v28;
  v29 = v83;
  *(v26 + 2) = v82;
  *(v26 + 3) = v29;
  v30 = *(v2 + 16);
  if (v30)
  {
    v31 = sub_100570458();
  }

  else
  {
    v31 = sub_1005704D8();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  sub_100019B40(v12, v14, &qword_1006F3880, &qword_10059F328);
  v34 = &v14[*(v67 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v70;
  if (qword_1006EEBE8 != -1)
  {
    swift_once();
  }

  v36 = *&qword_1006F3560;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v14, v16, &qword_1006F3888, &qword_10059F330);
  v37 = &v16[*(v68 + 36)];
  v38 = v87[5];
  *(v37 + 4) = v87[4];
  *(v37 + 5) = v38;
  *(v37 + 6) = v87[6];
  v39 = v87[1];
  *v37 = v87[0];
  *(v37 + 1) = v39;
  v40 = v87[3];
  *(v37 + 2) = v87[2];
  *(v37 + 3) = v40;
  sub_100413414(&qword_1006F38C0, &qword_1006F3890, &qword_10059F338, sub_100413330);
  sub_100570258();
  sub_10001036C(v16, &qword_1006F3890, &qword_10059F338);
  v41 = v36 * 0.5;
  v42 = *(v69 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_10056F2E8();
  v45 = v74;
  (*(*(v44 - 8) + 104))(v74 + v42, v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v46 = *(v2 + 56);
  v88 = v46;
  v89 = *(v2 + 64);
  if (v89 == 1)
  {
    if (v46)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v47 = sub_100573438();
    v48 = sub_10056F9D8();
    sub_10056DE58(v47, &_mh_execute_header, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v64;
    sub_10056F188();
    swift_getAtKeyPath();
    sub_10001036C(&v88, &qword_1006F38F0, &qword_10059F3D8);
    (*(v65 + 8))(v49, v66);
    if (v79)
    {
      goto LABEL_11;
    }
  }

  v79 = v90;
  sub_100570678();
  if (v78 != 1)
  {
    v51 = [objc_opt_self() systemFillColor];
    v50 = sub_100570528();
    goto LABEL_15;
  }

LABEL_11:
  if (v30)
  {
    v50 = sub_1005704B8();
  }

  else
  {
    v50 = sub_100570458();
  }

LABEL_15:
  v52 = v50;
  v53 = v75;
  sub_100412498(v45, v75, &type metadata accessor for RoundedRectangle);
  v54 = v73;
  *(v53 + *(v73 + 52)) = v52;
  *(v53 + *(v54 + 56)) = 256;
  v55 = sub_1005709E8();
  v57 = v56;
  v58 = sub_100009DCC(&qword_1006F38F8, &qword_10059F3E0);
  v59 = v76;
  v60 = v76 + *(v58 + 36);
  sub_100019B40(v53, v60, &qword_1006F3870, &qword_10059F318);
  v61 = (v60 + *(sub_100009DCC(&qword_1006F3900, &qword_10059F3E8) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v71 + 32))(v59, v35, v72);
}

uint64_t sub_100410C4C(uint64_t a1)
{
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  return (*(a1 + 24))(a1);
}

uint64_t sub_100410CB8(uint64_t a1)
{
  sub_100009DCC(&qword_1006F3908, &qword_10059F3F0);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = sub_100009DCC(&qword_1006F38B8, &unk_10059F350);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  if (v23 == 1)
  {
    sub_10056E7E8();
    v7 = sub_1005704D8();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    sub_10000CC8C(v6, v3, &qword_1006F38B8, &unk_10059F350);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F3130, &qword_10059EB40);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130, &qword_10059EB40);
    sub_10056F5B8();
    return sub_10001036C(v6, &qword_1006F38B8, &unk_10059F350);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    sub_10037AD68();

    v12 = sub_10056FF28();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_1005709E8();
    sub_10056EDF8();
    LOBYTE(v23) = v16 & 1;
    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = v16 & 1;
    *(v3 + 3) = v18;
    v19 = v22[5];
    *(v3 + 6) = v22[4];
    *(v3 + 7) = v19;
    *(v3 + 8) = v22[6];
    v20 = v22[1];
    *(v3 + 2) = v22[0];
    *(v3 + 3) = v20;
    v21 = v22[3];
    *(v3 + 4) = v22[2];
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F3130, &qword_10059EB40);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130, &qword_10059EB40);
    return sub_10056F5B8();
  }
}

void sub_100410FDC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_1006F3560 = *&v2;
}

void sub_100411094()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1006F3568 = v1 == 6;
}

uint64_t sub_1004110F8()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_1006F3568)
  {
    v0 = 140.0;
  }

  qword_1006F3570 = *&v0;
  return result;
}

uint64_t sub_100411170()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_1006F3568)
  {
    v0 = 16.0;
  }

  qword_1006F3578 = *&v0;
  return result;
}

uint64_t sub_1004111D8()
{
  v0 = sub_10056FBF8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006EEBF0 != -1)
  {
    swift_once();
  }

  if (byte_1006F3568 == 1)
  {
    result = sub_10056FB08();
    v5 = result;
  }

  else
  {
    sub_10056FB18();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_10056FC28();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_1006F3580 = v5;
  return result;
}

uint64_t sub_100411334()
{
  sub_100009DCC(&qword_1006F2E90, &qword_10059D000);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (qword_1006EEBF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10056FB38();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_10056FBA8();
  result = sub_10001036C(v1, &qword_1006F2E90, &qword_10059D000);
  qword_1006F3588 = v3;
  return result;
}

uint64_t sub_100411470()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_1006F3568)
  {
    v0 = 9.0;
  }

  qword_1006F3590 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  v31 = *(v9 + 56);
  v32 = v8;
  v30[1] = v9 + 56;
  v31(v7, 1, 1);
  v10 = [v2 artworkInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 responseDictionary];

    if (v12)
    {
      v13 = sub_1005726A8();

      sub_100406A3C(v13);
      v15 = v14;

      if (v15)
      {
        sub_100571DD8();
        sub_10001036C(v7, &unk_1006F3B10, &unk_100599150);
        sub_100019B40(v5, v7, &unk_1006F3B10, &unk_100599150);
      }
    }
  }

  v16 = [v2 name];
  v17 = sub_1005728D8();
  v19 = v18;

  v20 = [v2 handle];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1005728D8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_10000CC8C(v7, v5, &unk_1006F3B10, &unk_100599150);
  v25 = [v2 collaborationAllowed];
  sub_10001036C(v7, &unk_1006F3B10, &unk_100599150);
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v27 = *(v26 + 24);
  (v31)(a1 + v27, 1, 1, v32);
  v28 = *(v26 + 28);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = v22;
  a1[3] = v24;
  result = sub_100406DFC(v5, a1 + v27);
  *(a1 + v28) = v25;
  return result;
}

uint64_t sub_1004117A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F168();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = sub_100571FD8();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006F35B0, &qword_10059F078);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = sub_100009DCC(&qword_1006F3970, &qword_10059F520);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = sub_10056C8A8();
  v65 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  sub_100009DCC(&qword_1006F3978, &qword_10059F528);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  sub_100413998(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  sub_100413998(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    sub_100413998(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = sub_100009DCC(&qword_1006F35A8, &qword_10059F070);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      sub_10001036C(v17, &qword_1006F35B0, &qword_10059F078);
LABEL_10:
      sub_10001036C(v20, &qword_1006F3978, &qword_10059F528);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    LODWORD(v62) = v37;
    v39 = v22[v36];
    v40 = *(v65 + 32);
    v40(v67, &v17[v35], v33);
    v40(v66, &v22[v35], v33);
    v41 = *(v32 + 48);
    v42 = v63;
    sub_100019B40(v17, v63, &qword_1006F35B0, &qword_10059F078);
    sub_100019B40(v22, v42 + v41, &qword_1006F35B0, &qword_10059F078);
    v43 = v60;
    v44 = *(v59 + 48);
    if (v44(v42, 1, v60) == 1)
    {
      v45 = v44(v42 + v41, 1, v43);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v45 == 1)
      {
        sub_10001036C(v42, &qword_1006F35B0, &qword_10059F078);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      sub_10000CC8C(v42, v58, &qword_1006F35B0, &qword_10059F078);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        sub_100412498(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v49, v51);
        sub_100412418(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100412418(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10001036C(v42, &qword_1006F35B0, &qword_10059F078);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = sub_10056C828();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            sub_100412418(v20, type metadata accessor for Collaboration.Flow);
            v30 = v55 ^ 1;
            return v30 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v50 = *(v46 + 8);
        v50(v47, v33);
        v50(v48, v33);
LABEL_23:
        sub_100412418(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_100412418(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    sub_10001036C(v42, &qword_1006F3970, &qword_10059F520);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100412418(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_100413998(v20, v15, v25, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v15, v63);
    goto LABEL_10;
  }

  v27 = v61;
  v26 = v62;
  v28 = v22;
  v29 = v63;
  (*(v62 + 32))(v61, v28, v63);
  v30 = sub_100571F58();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  sub_100412418(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_100571E58();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_100009DCC(&qword_1006F2F78, &qword_10059F6E0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (sub_100574498() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (sub_100574498() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v25 + 24);
  v16 = *(v10 + 48);
  sub_10000CC8C(a1 + v15, v12, &unk_1006F3B10, &unk_100599150);
  sub_10000CC8C(a2 + v15, &v12[v16], &unk_1006F3B10, &unk_100599150);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  sub_10000CC8C(v12, v9, &unk_1006F3B10, &unk_100599150);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    sub_10001036C(v12, &qword_1006F2F78, &qword_10059F6E0);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_100415818(&qword_1006F2F80, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = sub_1005727E8();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1004123C4()
{
  result = qword_1006F35A0;
  if (!qword_1006F35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F35A0);
  }

  return result;
}

uint64_t sub_100412418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100412498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10041251C(uint64_t a1)
{
  sub_100412590(319);
  if (v1 <= 0x3F)
  {
    sub_100571FD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100412590(uint64_t a1)
{
  if (!qword_1006F3648)
  {
    sub_100010324(&qword_1006F35B0, &qword_10059F078);
    sub_10056C8A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006F3648);
    }
  }
}

uint64_t sub_100412628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&unk_1006F3B10, &unk_100599150);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004126F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006F3B10, &unk_100599150);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004127A8(uint64_t a1)
{
  sub_100412C10(319, &unk_1006F36E0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100412860(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100412860(uint64_t a1)
{
  if (!qword_1006F28A0)
  {
    sub_100571E58();
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F28A0);
    }
  }
}

uint64_t sub_1004128CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1005722D8();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1004129E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1005722D8();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100412AEC(uint64_t a1)
{
  sub_100412C10(319, &unk_1006F10B8, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      sub_1005722D8();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v4 <= 0x3F)
        {
          sub_1003DB87C(319);
          if (v5 <= 0x3F)
          {
            sub_1003CC840();
            if (v6 <= 0x3F)
            {
              sub_100412C60(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100412C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100412C60(uint64_t a1)
{
  if (!qword_1006F3780)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = sub_10056E718();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F3780);
    }
  }
}

__n128 sub_100412D44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100412D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100412DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100412E28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100412EE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100412FAC(uint64_t a1)
{
  result = type metadata accessor for InlineProfileEditingView.Context(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100413094()
{

  sub_100053068(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_100413130()
{
  result = qword_1006F38A8;
  if (!qword_1006F38A8)
  {
    sub_100010324(&qword_1006F38A0, &qword_10059F348);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130, &qword_10059EB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38A8);
  }

  return result;
}

unint64_t sub_1004131DC()
{
  result = qword_1006F38B0;
  if (!qword_1006F38B0)
  {
    sub_100010324(&qword_1006F38B8, &unk_10059F350);
    sub_100010BC0(&qword_1006F2CF0, &qword_1006F2CF8, &qword_10059E5D8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38B0);
  }

  return result;
}

uint64_t sub_1004132C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F128();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100413330()
{
  result = qword_1006F38C8;
  if (!qword_1006F38C8)
  {
    sub_100010324(&qword_1006F3888, &qword_10059F330);
    sub_100413414(&qword_1006F38D0, &qword_1006F3880, &qword_10059F328, sub_100413498);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38C8);
  }

  return result;
}

uint64_t sub_100413414(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100413498()
{
  result = qword_1006F38D8;
  if (!qword_1006F38D8)
  {
    sub_100010324(&qword_1006F3878, &qword_10059F320);
    sub_100010BC0(&qword_1006F38E0, &qword_1006F38E8, &qword_10059F3C8, &protocol conformance descriptor for Button<A>);
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0, &qword_10059F3D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38D8);
  }

  return result;
}

uint64_t sub_10041357C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F168();
  *a1 = result;
  return result;
}

uint64_t sub_1004135E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

double sub_1004136E8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100413704()
{
  result = qword_1006F3A08;
  if (!qword_1006F3A08)
  {
    sub_100010324(&qword_1006F3A00, &unk_10059F5B8);
    sub_1004137BC();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A08);
  }

  return result;
}

unint64_t sub_1004137BC()
{
  result = qword_1006F3A10;
  if (!qword_1006F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A10);
  }

  return result;
}

unint64_t sub_100413810()
{
  result = qword_1006F3A28;
  if (!qword_1006F3A28)
  {
    sub_100010324(&qword_1006F3A20, &qword_10059F5D0);
    sub_1004138E8(&qword_1006F3A30, &qword_1006F3A38, &qword_10059F5D8);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A28);
  }

  return result;
}

uint64_t sub_1004138E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100413958()
{

  return swift_deallocObject();
}

uint64_t sub_100413998(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100413A5C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_100571FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    v16 = sub_10056C8A8();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_100413A04(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_100413DEC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_10040EE20(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_100413EE4()
{
  result = qword_1006F3A50;
  if (!qword_1006F3A50)
  {
    sub_100010324(&qword_1006F39A0, &qword_10059F558);
    sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8, &qword_10059F560, &protocol conformance descriptor for TupleView<A>);
    sub_100413F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A50);
  }

  return result;
}

unint64_t sub_100413F9C()
{
  result = qword_1006F3A60;
  if (!qword_1006F3A60)
  {
    sub_100010324(&qword_1006F3A68, &qword_10059F628);
    sub_100414054();
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0, &qword_10059F3D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A60);
  }

  return result;
}

unint64_t sub_100414054()
{
  result = qword_1006F3A70;
  if (!qword_1006F3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A70);
  }

  return result;
}

uint64_t sub_1004140A8()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_100571FD8();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100009DCC(&qword_1006F35A8, &qword_10059F070);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_100413A04(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_10041443C(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10040C0A8(a1, v4);
}

uint64_t sub_1004144B4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_100571FD8();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_100571E58();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    v10 = sub_10056C8A8();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1005722D8();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_100413A04(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_1004147A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100414814()
{
  result = qword_1006F3AB8;
  if (!qword_1006F3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AB8);
  }

  return result;
}

uint64_t sub_100414868()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_10040E000();
}

double sub_100414958(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100414984()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_100571FD8();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_100571E58();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1005722D8();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_100413A04(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_100414C48()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10040C288();
}

uint64_t sub_100414D38()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_100571FD8();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100009DCC(&qword_1006F35A8, &qword_10059F070);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_100413A04(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_100415088(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10056C8A8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040E1B4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1004151DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100571FD8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040F0D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10041532C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_100571FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100009DCC(&qword_1006F35A8, &qword_10059F070) + 48);
    v16 = sub_10056C8A8();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_100413A04(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_10041567C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100571FD8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040EA78(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1004157CC()
{
  result = qword_1006F3AC0;
  if (!qword_1006F3AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F3AC0);
  }

  return result;
}

uint64_t sub_100415818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004158D0()
{
  result = qword_1006F3AD8;
  if (!qword_1006F3AD8)
  {
    sub_100010324(&qword_1006F38F8, &qword_10059F3E0);
    sub_100010324(&qword_1006F3890, &qword_10059F338);
    sub_100413414(&qword_1006F38C0, &qword_1006F3890, &qword_10059F338, sub_100413330);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006F3AE0, &qword_1006F3900, &qword_10059F3E8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AD8);
  }

  return result;
}

unint64_t sub_100415A40()
{
  result = qword_1006F3AF8;
  if (!qword_1006F3AF8)
  {
    sub_100010324(&qword_1006F3B00, qword_10059F708);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AF8);
  }

  return result;
}

unint64_t sub_100415AFC()
{
  result = qword_1006F3B08;
  if (!qword_1006F3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3B08);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a2@<X8>)
{
  sub_10041B674(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000CC8C(a1, &v7 - v4, &unk_1006F3B10, &unk_100599150);
  sub_10000CC8C(v5, v3, &unk_1006F3B10, &unk_100599150);
  sub_10056E438();
  sub_10001036C(a1, &unk_1006F3B10, &unk_100599150);
  return sub_10001036C(v5, &unk_1006F3B10, &unk_100599150);
}

uint64_t sub_100415D10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_100415DD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

void sub_100415E48(void *a1)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  sub_10056E488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = sub_100571E58();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000CC8C(v6, v4, &unk_1006F3B10, &unk_100599150);

    sub_10056E488();

    sub_10001036C(v6, &unk_1006F3B10, &unk_100599150);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  v75 = *(v0 - 8);
  v76 = v0;
  __chkstk_darwin();
  v74 = &v68 - v1;
  v73 = sub_100009DCC(&qword_1006F3B28, &qword_10059F788);
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v4 = sub_100009DCC(&qword_1006F3B30, &qword_10059F790);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v68 - v6;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v68 - v9;
  __chkstk_darwin();
  v11 = &v68 - v10;
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = sub_100571E58();
  v77 = *(v15 - 8);
  v78 = v15;
  (*(v77 + 56))(v13, 1, 1);
  sub_10000CC8C(v13, v11, &unk_1006F3B10, &unk_100599150);
  v68 = v11;
  sub_10056E438();
  v16 = v13;
  sub_10001036C(v13, &unk_1006F3B10, &unk_100599150);
  v17 = v72;
  (*(v5 + 32))(v72 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_10056E438();
  (*(v71 + 32))(v17 + v18, v3, v73);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v80 = 0;
  sub_100009DCC(&qword_1006EF6A0, &qword_100598E18);
  v20 = v74;
  sub_10056E438();
  (*(v75 + 32))(v17 + v19, v20, v76);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = sub_1005728D8();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v26;
    v81 = v28;

    sub_10056E488();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = sub_1005726A8();

        sub_100406A3C(v32);
        v34 = v33;

        if (v34)
        {
          sub_100571DD8();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10000CC8C(v16, v68, &unk_1006F3B10, &unk_100599150);

          sub_10056E488();
          sub_10001036C(v16, &unk_1006F3B10, &unk_100599150);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v36 = v80;
  v35 = v81;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v77;
  v38 = v78;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v70;
    sub_10056E478();

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {

LABEL_25:
      sub_10001036C(v40, &unk_1006F3B10, &unk_100599150);
      return v17;
    }

    sub_10001036C(v40, &unk_1006F3B10, &unk_100599150);
  }

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10057B4F0;
  *(v41 + 32) = CNContactThumbnailImageDataKey;
  v79 = v41;
  v42 = objc_opt_self();
  v43 = CNContactThumbnailImageDataKey;
  v44 = [v42 descriptorForRequiredKeysForStyle:0];
  sub_100572CE8();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  v45 = [objc_allocWithZone(CNContactStore) init];
  sub_100009DCC(&qword_1006F3B58, &qword_10059F838);
  isa = sub_100572D08().super.isa;

  v80 = 0;
  v47 = [v45 _ios_meContactWithKeysToFetch:isa error:&v80];

  v48 = v80;
  if (!v47)
  {
    v66 = v80;
    sub_10056C728();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  sub_10056E478();

  v51 = v80;
  v50 = v81;

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    v53 = [v42 stringFromContact:v47 style:0];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1005728D8();
      v57 = v56;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v55;
      v81 = v57;

      sub_10056E488();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v69;
  sub_10056E478();

  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {

    goto LABEL_25;
  }

  sub_10001036C(v40, &unk_1006F3B10, &unk_100599150);
  v58 = [v47 thumbnailImageData];
  if (v58)
  {
    v59 = v58;
    v60 = sub_10056C918();
    v62 = v61;

    v63 = objc_allocWithZone(UIImage);
    sub_1000F54C8(v60, v62);
    v64 = sub_10056C908().super.isa;
    v65 = [v63 initWithData:v64];

    sub_10008246C(v60, v62);
    sub_100415E48(v65);

    sub_10008246C(v60, v62);
  }

  else
  {
  }

  return v17;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100416D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v4 = sub_100571E58();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_10001036C(v2, &unk_1006F3B10, &unk_100599150);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100009DCC(&qword_1006F3B30, &qword_10059F790);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100009DCC(&qword_1006F3B28, &qword_10059F788);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100009DCC(&qword_1006F3B30, &qword_10059F790);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100009DCC(&qword_1006F3B28, &qword_10059F788);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1004171A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context(uint64_t a1)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_10041B814();

  return sub_10056EA78();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_10056CC38();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100572888();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = sub_100009DCC(&qword_1006F3B68, &qword_10059F888) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_100009DCC(&qword_1006F3B70, &qword_10059F890) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = sub_100009DCC(&qword_1006F3B78, &qword_10059F898) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = sub_100009DCC(&qword_1006F3B80, &qword_10059F8A0);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = sub_100009DCC(&qword_1006F3B88, &qword_10059F8A8);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = sub_100009DCC(&qword_1006F3B90, &qword_10059F8B0);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = sub_10056F218();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = sub_100009DCC(&qword_1006F3B98, &qword_10059F8B8);
  sub_100417BCC(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = sub_100570528();
  v24 = sub_10056FA38();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v9, v12, &qword_1006F3B68, &qword_10059F888);
  v26 = &v12[*(v10 + 44)];
  v27 = v91;
  *(v26 + 4) = v90;
  *(v26 + 5) = v27;
  *(v26 + 6) = v92;
  v28 = v87;
  *v26 = v86;
  *(v26 + 1) = v28;
  v29 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v29;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v12, v15, &qword_1006F3B70, &qword_10059F890);
  v30 = &v15[*(v13 + 44)];
  v31 = v98;
  *(v30 + 4) = v97;
  *(v30 + 5) = v31;
  *(v30 + 6) = v99;
  v32 = v94;
  *v30 = v93;
  *(v30 + 1) = v32;
  v33 = v96;
  *(v30 + 2) = v95;
  *(v30 + 3) = v33;
  v34 = *(v16 + 36);
  v35 = v79;
  v36 = &v79[v34];
  v37 = *(sub_10056EDD8() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_10056F2E8();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(sub_100009DCC(&unk_1006F3BA0, &qword_10059F650) + 36)] = 256;
  sub_100019B40(v15, v35, &qword_1006F3B78, &qword_10059F898);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  v66[1] = v66;
  v82 = v45;
  sub_100009DCC(&qword_1006F3BB0, &qword_10059F8C0);
  sub_10041B874();
  v46 = sub_10037AD68();
  sub_100010BC0(&qword_1006F3BE8, &qword_1006F3BB0, &qword_10059F8C0, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  sub_1005701A8();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  sub_10001036C(v48, &qword_1006F3B80, &qword_10059F8A0);
  v53 = sub_1005709E8();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  sub_10041A4B0(v50, v57);
  v58 = (v57 + *(sub_100009DCC(&qword_1006F3BF0, &qword_10059F8D8) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  sub_100572818();
  (*(v52 + 16))(v51, v49, v59);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v60 = qword_1006FDF00;
  sub_10056CBC8();
  v61 = sub_100572948();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  sub_100570698();
  v79 = v66;
  __chkstk_darwin();
  sub_100009DCC(&qword_1006F3BF8, &qword_10059F8E0);
  sub_10041BAF8();
  sub_100010BC0(&qword_1006F3C10, &qword_1006F3BF8, &qword_10059F8E0, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  sub_100570298();

  return sub_10001036C(v64, &qword_1006F3B90, &qword_10059F8B0);
}

uint64_t sub_100417BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = sub_100009DCC(&qword_1006F3E18, &qword_10059FAB8);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  sub_100009DCC(&unk_1006F3E20, &unk_10059FAC0);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  sub_10056CC38();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_100572888();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = sub_100009DCC(&qword_1006F2BE0, &qword_10059E470);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = sub_100009DCC(&qword_1006F3E30, &qword_10059FAD0);
  __chkstk_darwin();
  v224 = (v188 - v11);
  sub_100009DCC(&qword_1006F3E38, &qword_10059FAD8);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = sub_100570558();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_100009DCC(&unk_1006F3E40, &qword_10059FAE0);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = sub_100571DC8();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056DC68();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin();
  v213 = v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = v188 - v20;
  __chkstk_darwin();
  v205 = v188 - v21;
  __chkstk_darwin();
  v215 = v188 - v22;
  v216 = sub_10056DBD8();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = v188 - v28;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = sub_100009DCC(&qword_1006F3E58, &unk_10059FAE8);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = sub_100009DCC(&unk_1006F3E60, &qword_10059F5E0);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = sub_100009DCC(&qword_1006F3988, &qword_10059F538);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = sub_100009DCC(&qword_1006F3E70, &qword_10059F540);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  sub_100009DCC(&qword_1006F3E78, &qword_10059FAF8);
  __chkstk_darwin();
  v223 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = v188 - v45;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v229 = a1;
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    sub_100570538();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = sub_1005705D8();

    (*(v47 + 8))(v48, v49);
    sub_1005709E8();
    sub_10056E888();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = sub_10056FA38();
    sub_10056E598();
    v244 = 0;
    v245._countAndFlagsBits = v237;
    v245._object = v50;
    LOBYTE(v246._countAndFlagsBits) = v51;
    v246._object = v52;
    LOBYTE(v247._countAndFlagsBits) = v53;
    v247._object = v55;
    v248._countAndFlagsBits = v54;
    LOWORD(v248._object) = 256;
    *(&v248._object + 2) = v251;
    HIWORD(v248._object) = WORD2(v251);
    LOBYTE(v249._countAndFlagsBits) = v47;
    HIDWORD(v249._countAndFlagsBits) = *(v243 + 3);
    *(&v249._countAndFlagsBits + 1) = v243[0];
    v249._object = v56;
    *&v250[0] = v57;
    *(&v250[0] + 1) = v58;
    *&v250[1] = v59;
    BYTE8(v250[1]) = 0;
    v60 = v248;
    v61 = v250[0];
    v62 = v220;
    v220[4] = v249;
    v62[5] = v61;
    *(v62 + 89) = *(v250 + 9);
    v63 = v246;
    v64 = v247;
    *v62 = v245;
    v62[1] = v63;
    v62[2] = v64;
    v62[3] = v60;
    swift_storeEnumTagMultiPayload();
    sub_10000CC8C(&v245, v243, &qword_1006F3E88, &qword_10059FB00);
    sub_100009DCC(&qword_1006F3E88, &qword_10059FB00);
    sub_10041C10C();
    sub_10041C2F8();
    v65 = v221;
    sub_10056F5B8();

    sub_10001036C(&v245, &qword_1006F3E88, &qword_10059FB00);
    v66 = v239;
    goto LABEL_18;
  }

  v190 = v37;
  v191 = v41;
  v192 = v34;
  v209 = v36;
  v210 = v39;
  v211 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v193;
  sub_10056E478();

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = sub_100571E58();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    sub_10001036C(v68, &qword_1006F2C40, &qword_10059C100);
    sub_10001036C(v67, &unk_1006F3B10, &unk_100599150);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100019B40(v68, v73 + *(v72 + 20), &qword_1006F2C40, &qword_10059C100);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  sub_10000CC8C(v73, v195, &qword_1006F3E50, &qword_1005971F0);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_10001036C(v76, &qword_1006F3E50, &qword_1005971F0);
    v78 = 1;
    v79 = v196;
    v80 = v197;
    v81 = v189;
  }

  else
  {
    v79 = v196;
    v81 = v189;
    (*(v70 + 16))(v196, v76, v189);
    sub_10041C584(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  sub_10000CC8C(v79, v80, &unk_1006F3B10, &unk_100599150);
  sub_10056DC58();
  sub_10001036C(v79, &unk_1006F3B10, &unk_100599150);
  sub_10056DC08();
  v82 = v198;
  sub_10000CC8C(v237, v198, &qword_1006F3E50, &qword_1005971F0);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    sub_10001036C(v82, &qword_1006F3E50, &qword_1005971F0);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = sub_10000C49C(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      sub_10001036C(v93, &qword_1006F2C40, &qword_10059C100);
    }

    goto LABEL_17;
  }

  v85 = v199;
  sub_10000CC8C(v82 + *(v72 + 20), v199, &qword_1006F2C40, &qword_10059C100);
  sub_10041C584(v82, type metadata accessor for ArtworkImage.ViewModel);
  v87 = v217;
  v88 = v236;
  v89 = (*(v217 + 48))(v85, 1, v236);
  v66 = v239;
  v86 = v206;
  if (v89 == 1)
  {
    goto LABEL_12;
  }

  v96 = v85;
  v94 = v204;
  (*(v87 + 32))(v204, v96, v88);
  v95 = v87;
LABEL_17:
  v97 = v203;
  v98 = v213;
  sub_10056DBE8();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  sub_10056DC18();
  v99(v97, v84);
  sub_1003CCBB0();
  v101 = v200;
  sub_10056DBF8();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  sub_10001036C(v237, &qword_1006F3E50, &qword_1005971F0);
  sub_1005709E8();
  sub_10056E888();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  sub_100019B40(v102, v210, &unk_1006F3E60, &qword_10059F5E0);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = sub_10056FA38();
  sub_10056E598();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  sub_100019B40(v105, v191, &qword_1006F3988, &qword_10059F538);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  sub_100019B40(v114, v211, &qword_1006F3E70, &qword_10059F540);
  sub_10000CC8C(v116, v220, &qword_1006F3E70, &qword_10059F540);
  swift_storeEnumTagMultiPayload();
  sub_100009DCC(&qword_1006F3E88, &qword_10059FB00);
  sub_10041C10C();
  sub_10041C2F8();
  v65 = v221;
  sub_10056F5B8();
  sub_10001036C(v116, &qword_1006F3E70, &qword_10059F540);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &static AccessibilityIdentifier.containerDetailHeaderTitle;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v120 = String.trim()();

    v245 = v120;
    sub_10037AD68();
    v121 = sub_10056FF28();
    v123 = v122;
    v125 = v124;
    v126 = sub_10056FE78();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    sub_10001B5A4(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &static AccessibilityIdentifier.containerDetailHeaderTitle;
    swift_storeEnumTagMultiPayload();
    sub_100401B8C();
    sub_10056F5B8();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    sub_100572818();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v139 = qword_1006FDF00;
    sub_10056CBC8();
    v140 = sub_100572948();
    v142 = v141;
    (*(v138 + 8))(v240, v136);
    v251 = v140;
    v252 = v142;
    v143 = swift_allocObject();
    v144 = v229;
    v145 = *(v229 + 48);
    v143[3] = *(v229 + 32);
    v143[4] = v145;
    v143[5] = v144[4];
    v146 = v144[1];
    v143[1] = *v144;
    v143[2] = v146;
    sub_100413638(v144, &v245);
    sub_10037AD68();
    v147 = v208;
    sub_100570708();
    v148 = sub_100570508();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    sub_10000CC8C(v147, v150, &qword_1006F2BE0, &qword_10059E470);
    swift_storeEnumTagMultiPayload();
    sub_100401B8C();
    sub_10056F5B8();
    sub_10001036C(v147, &qword_1006F2BE0, &qword_10059E470);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    sub_100572818();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v156 = v119[480];
    sub_10056CBC8();
    v157 = sub_100572948();
    v159 = v158;
    (*(v155 + 8))(v240, v136);
    v251 = v157;
    v252 = v159;
    v160 = swift_allocObject();
    v161 = v229;
    v162 = *(v229 + 48);
    v160[3] = *(v229 + 32);
    v160[4] = v162;
    v160[5] = v161[4];
    v163 = v161[1];
    v160[1] = *v161;
    v160[2] = v163;
    sub_100413638(v161, &v245);
    sub_10037AD68();
    v164 = v212;
    sub_100570708();
    LOBYTE(v160) = sub_10056FA88();
    sub_10056E598();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(sub_100009DCC(&qword_1006F3F00, &qword_10059FB18) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(sub_100009DCC(&qword_1006F3F08, &qword_10059FB50) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    sub_100019B40(v164, v176, &qword_1006F3E18, &qword_10059FAB8);
    v178 = 0;
  }

  else
  {
    v178 = 1;
    v177 = v232;
    v176 = v233;
  }

  (*(v231 + 56))(v176, v178, 1, v177);
  v179 = v223;
  v180 = v65;
  sub_10000CC8C(v65, v223, &qword_1006F3E78, &qword_10059FAF8);
  v181 = v241;
  v182 = v230;
  sub_10000CC8C(v241, v230, &qword_1006F3E38, &qword_10059FAD8);
  v183 = v234;
  sub_10000CC8C(v176, v234, &unk_1006F3E20, &unk_10059FAC0);
  v184 = v235;
  sub_10000CC8C(v179, v235, &qword_1006F3E78, &qword_10059FAF8);
  v185 = sub_100009DCC(&unk_1006F3F10, &qword_10059FB58);
  sub_10000CC8C(v182, v184 + v185[12], &qword_1006F3E38, &qword_10059FAD8);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  sub_10000CC8C(v183, v184 + v185[20], &unk_1006F3E20, &unk_10059FAC0);
  sub_10001036C(v176, &unk_1006F3E20, &unk_10059FAC0);
  sub_10001036C(v181, &qword_1006F3E38, &qword_10059FAD8);
  sub_10001036C(v180, &qword_1006F3E78, &qword_10059FAF8);
  sub_10001036C(v183, &unk_1006F3E20, &unk_10059FAC0);
  sub_10001036C(v182, &qword_1006F3E38, &qword_10059FAD8);
  return sub_10001036C(v179, &qword_1006F3E78, &qword_10059FAF8);
}

uint64_t sub_100419820@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  sub_100009DCC(&qword_1006F3E08, &qword_10059FAA8);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = sub_100009DCC(&unk_1006F2BF0, &qword_10059E478);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v72 - v12;
  __chkstk_darwin();
  v85 = &v72 - v13;
  __chkstk_darwin();
  v80 = &v72 - v14;
  __chkstk_darwin();
  v88 = &v72 - v15;
  __chkstk_darwin();
  v91 = &v72 - v16;
  sub_100572818();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v17 = qword_1006FDF00;
  v18 = qword_1006FDF00;
  sub_10056CBC8();
  v83 = v18;
  v19 = sub_100572948();
  v84 = v8;
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v90;
  v22(v10, v90);
  v94 = v19;
  v95 = v21;
  v24 = swift_allocObject();
  v25 = v6 + 8;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  v24[5] = a1[4];
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  sub_100413638(a1, v93);
  v28 = sub_10037AD68();
  sub_100570708();
  sub_100572818();
  v89(v84, v10, v23);
  sub_10056CBC8();
  v79 = v17;
  v29 = v22;
  v30 = sub_100572948();
  v32 = v31;
  v78 = v25;
  v22(v10, v23);
  v94 = v30;
  v95 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  sub_100413638(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  sub_100570708();
  v38 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v39 = v83;
    v73 = v29;
    v40 = v89;
    v41 = v90;
    v42 = [objc_opt_self() currentTraitCollection];
    v43 = [v42 userInterfaceIdiom];

    if (v43 == 6)
    {
      v38 = 1;
      v36 = v88;
      v29 = v73;
    }

    else
    {
      sub_100572818();
      v40(v37, v10, v41);
      v44 = v39;
      sub_10056CBC8();
      v45 = sub_100572948();
      v47 = v46;
      v29 = v73;
      v73(v10, v41);
      v94 = v45;
      v95 = v47;
      v48 = swift_allocObject();
      v49 = a1[3];
      v48[3] = a1[2];
      v48[4] = v49;
      v48[5] = a1[4];
      v50 = a1[1];
      v48[1] = *a1;
      v48[2] = v50;
      sub_100413638(a1, v93);
      v51 = v80;
      sub_100570708();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  sub_100572818();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  sub_10056CBC8();
  v56 = sub_100572948();
  v58 = v57;
  v29(v10, v54);
  v94 = v56;
  v95 = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v59[5] = a1[4];
  v61 = a1[1];
  v59[1] = *a1;
  v59[2] = v61;
  sub_100413638(a1, v93);
  v62 = v80;
  sub_100570708();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  sub_10000CC8C(v92, v76, &qword_1006F3E08, &qword_10059FAA8);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = sub_100009DCC(&qword_1006F3E10, &qword_10059FAB0);
  v63(&v68[v69[12]], v65, v53);
  sub_10000CC8C(v66, &v68[v69[16]], &qword_1006F3E08, &qword_10059FAA8);
  v63(&v68[v69[20]], v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  sub_10001036C(v92, &qword_1006F3E08, &qword_10059FAA8);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  sub_10001036C(v66, &qword_1006F3E08, &qword_10059FAA8);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t sub_10041A29C(uint64_t a1, char a2)
{
  sub_100009DCC(&unk_1006F3DF0, &qword_10059FA60);
  sub_100570688();
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  return sub_100570688();
}

uint64_t sub_10041A328(uint64_t a1)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(a1 + 8);
  sub_100415E48(0);
  v7 = sub_100571E58();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(v5, v3, &unk_1006F3B10, &unk_100599150);

  sub_10056E488();
  sub_10001036C(v5, &unk_1006F3B10, &unk_100599150);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v6 + v8) = 1;
  return result;
}

uint64_t sub_10041A4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_10041B814();
  sub_10056EA88();
  swift_getKeyPath();
  sub_10056EA98();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  sub_100009DCC(&unk_1006F3DF0, &qword_10059FA60);
  sub_100570698();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_1006EEC20 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDB0, &qword_1005A02C0);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_1005709E8();
  sub_10056E888();
  v19 = v25;
  sub_10041C024(v5, v25);
  v20 = (v19 + *(sub_100009DCC(&qword_1006F3E00, &qword_10059FAA0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_10041C584(v5, type metadata accessor for ImagePicker);
}

void sub_10041A750(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

uint64_t sub_10041A7D0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  sub_100009DCC(&unk_1006F3DC0, &qword_10059E490);
  __chkstk_darwin();
  v80 = &v68 - v3;
  v4 = sub_100009DCC(&unk_1006F2BF0, &qword_10059E478);
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin();
  v82 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v68 - v6;
  __chkstk_darwin();
  v77 = &v68 - v7;
  v76 = sub_100009DCC(&qword_1006F3DD0, &qword_10059FA10);
  __chkstk_darwin();
  v90 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v68 - v9;
  __chkstk_darwin();
  v89 = &v68 - v10;
  sub_10056CC38();
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100572888();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  v79 = sub_100009DCC(&qword_1006F3DD8, &qword_10059FA18);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v88 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v68 - v20;
  v81 = a1;
  v21 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v21;
  sub_10056E478();

  v74 = v95;
  v73 = v96;
  sub_100572818();
  v22 = *(v14 + 16);
  v87 = v14 + 16;
  v86 = v22;
  v22(v16, v18, v13);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v23 = qword_1006FDF00;
  v24 = qword_1006FDF00;
  v68 = v12;
  sub_10056CBC8();
  v25 = v24;
  v69 = v16;
  v71 = v23;
  v26 = sub_100572948();
  v28 = v27;
  v85 = *(v14 + 8);
  v85(v18, v13);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_10041B814();
  sub_10056EA88();
  swift_getKeyPath();
  sub_10056EA98();

  v97 = v26;
  v98 = v28;
  v72 = sub_10037AD68();
  sub_100570AB8();
  sub_100572818();
  v29 = v69;
  v70 = v13;
  v86(v69, v18, v13);
  sub_10056CBC8();
  v30 = sub_100572948();
  v32 = v31;
  v85(v18, v13);
  v95 = v30;
  v96 = v32;
  v33 = v77;
  sub_100570708();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v34 = String.trim()();

  v35 = (v34._object >> 56) & 0xF;
  if ((v34._object & 0x2000000000000000) == 0)
  {
    v35 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v36 = v35 == 0;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v92;
  v40 = v75;
  (*(v92 + 32))(v75, v33, v93);
  v41 = (v40 + *(v76 + 36));
  *v41 = KeyPath;
  v41[1] = sub_100034F8C;
  v41[2] = v38;
  v42 = v89;
  sub_100019B40(v40, v89, &qword_1006F3DD0, &qword_10059FA10);
  sub_100572818();
  v43 = v70;
  v86(v29, v18, v70);
  sub_10056CBC8();
  v44 = sub_100572948();
  v46 = v45;
  v85(v18, v43);
  v97 = v44;
  v98 = v46;
  v47 = v80;
  sub_10056E578();
  v48 = sub_10056E588();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = swift_allocObject();
  v50 = v81;
  v51 = *(v81 + 3);
  *(v49 + 48) = *(v81 + 2);
  *(v49 + 64) = v51;
  *(v49 + 80) = v50[4];
  v52 = v50[1];
  *(v49 + 16) = *v50;
  *(v49 + 32) = v52;
  v53 = v73;
  *(v49 + 96) = v74;
  *(v49 + 104) = v53;
  sub_100413638(v50, &v95);
  v54 = v91;
  sub_1005706F8();
  v55 = v78;
  v56 = *(v78 + 16);
  v57 = v88;
  v58 = v79;
  v56(v88, v94, v79);
  sub_10000CC8C(v42, v90, &qword_1006F3DD0, &qword_10059FA10);
  v59 = *(v39 + 16);
  v60 = v82;
  v61 = v93;
  v59(v82, v54, v93);
  v62 = v83;
  v56(v83, v57, v58);
  v63 = sub_100009DCC(&qword_1006F3DE0, &qword_10059FA50);
  v64 = v90;
  sub_10000CC8C(v90, &v62[*(v63 + 48)], &qword_1006F3DD0, &qword_10059FA10);
  v59(&v62[*(v63 + 64)], v60, v61);
  v65 = *(v92 + 8);
  v65(v91, v61);
  sub_10001036C(v89, &qword_1006F3DD0, &qword_10059FA10);
  v66 = *(v55 + 8);
  v66(v94, v58);
  v65(v60, v61);
  sub_10001036C(v64, &qword_1006F3DD0, &qword_10059FA10);
  return (v66)(v88, v58);
}

void sub_10041B2DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_10041B35C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_10041B3E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_10000CC8C(&v7, v6, &qword_1006F3DE8, &qword_10059FA58);

  return sub_10056E488();
}

double sub_10041B4C8(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return result;
}

uint64_t sub_10041B544(uint64_t a1, uint64_t *a2)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_10000CC8C(a1, &v8 - v5, &unk_1006F3B10, &unk_100599150);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(v6, v4, &unk_1006F3B10, &unk_100599150);

  sub_10056E488();
  return sub_10001036C(v6, &unk_1006F3B10, &unk_100599150);
}

uint64_t sub_10041B674@<X0>(uint64_t a2@<X8>)
{
  sub_100570668();
  sub_100570668();
  sub_100570668();
  sub_100570668();
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_10041B814();
  result = sub_10056EA78();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

void sub_10041B798(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100415E48(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context(uint64_t a1)
{
  result = qword_1006F3C40;
  if (!qword_1006F3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10041B814()
{
  result = qword_1006F3B60;
  if (!qword_1006F3B60)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3B60);
  }

  return result;
}

unint64_t sub_10041B874()
{
  result = qword_1006F3BB8;
  if (!qword_1006F3BB8)
  {
    sub_100010324(&qword_1006F3B80, &qword_10059F8A0);
    sub_10041B988(&qword_1006F3BC0, &qword_1006F3B78, &qword_10059F898, sub_10041B958);
    sub_100010BC0(&qword_1006F0788, &unk_1006F3BA0, &qword_10059F650, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3BB8);
  }

  return result;
}

uint64_t sub_10041B988(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10041BA0C()
{
  result = qword_1006F3BD0;
  if (!qword_1006F3BD0)
  {
    sub_100010324(&qword_1006F3B68, &qword_10059F888);
    sub_100010BC0(&qword_1006F3BD8, &qword_1006F3BE0, &qword_10059F8C8, &protocol conformance descriptor for HStack<A>);
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0, &qword_10059F8D0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3BD0);
  }

  return result;
}

unint64_t sub_10041BAF8()
{
  result = qword_1006F3C00;
  if (!qword_1006F3C00)
  {
    sub_100010324(&qword_1006F3B90, &qword_10059F8B0);
    sub_100010324(&qword_1006F3B80, &qword_10059F8A0);
    sub_100010324(&qword_1006F3BB0, &qword_10059F8C0);
    sub_10041B874();
    sub_10037AD68();
    sub_100010BC0(&qword_1006F3BE8, &qword_1006F3BB0, &qword_10059F8C0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006F3C08, &qword_1006F3BF0, &qword_10059F8D8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3C00);
  }

  return result;
}

uint64_t sub_10041BC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10041BCCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10041BD38(uint64_t a1)
{
  sub_1002CA904(319, &qword_1006F3C50, &unk_1006F3B10, &unk_100599150);
  if (v1 <= 0x3F)
  {
    sub_10041BE74();
    if (v2 <= 0x3F)
    {
      sub_1002CA904(319, &unk_1006F3C60, &qword_1006EF6A0, &qword_100598E18);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10041BE74()
{
  if (!qword_1006F3C58)
  {
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F3C58);
    }
  }
}

uint64_t sub_10041BEC4()
{
  sub_100010324(&qword_1006F3B90, &qword_10059F8B0);
  sub_100010324(&qword_1006F3BF8, &qword_10059F8E0);
  sub_10041BAF8();
  sub_10037AD68();
  sub_100010BC0(&qword_1006F3C10, &qword_1006F3BF8, &qword_10059F8E0, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10041BFB4()
{

  return swift_deallocObject();
}

uint64_t sub_10041C024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041C0D4()
{

  return swift_deallocObject();
}

unint64_t sub_10041C10C()
{
  result = qword_1006F3E90;
  if (!qword_1006F3E90)
  {
    sub_100010324(&qword_1006F3E88, &qword_10059FB00);
    sub_10041C1C4(&qword_1006F3E98, &qword_1006F3EA0, &qword_10059FB08, sub_10041C274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3E90);
  }

  return result;
}

uint64_t sub_10041C1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    sub_100010BC0(&unk_1006F3520, &qword_1006F3EC0, &qword_10059F020, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10041C274()
{
  result = qword_1006F3EA8;
  if (!qword_1006F3EA8)
  {
    sub_100010324(&unk_1006F3EB0, &qword_10059FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3EA8);
  }

  return result;
}

unint64_t sub_10041C2F8()
{
  result = qword_1006F3EC8;
  if (!qword_1006F3EC8)
  {
    sub_100010324(&qword_1006F3E70, &qword_10059F540);
    sub_10041C1C4(&qword_1006F3ED0, &qword_1006F3988, &qword_10059F538, sub_10041C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3EC8);
  }

  return result;
}

unint64_t sub_10041C3B0()
{
  result = qword_1006F3ED8;
  if (!qword_1006F3ED8)
  {
    sub_100010324(&unk_1006F3E60, &qword_10059F5E0);
    sub_1003CCBB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3ED8);
  }

  return result;
}

uint64_t sub_10041C4C8()
{

  return swift_deallocObject();
}

uint64_t sub_10041C584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  a3();
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a8;
  v18[3] = a9;
  v15 = type metadata accessor for HeightLimitedButtonTextView(0, v18);
  result = a4();
  v17 = (a7 + *(v15 + 56));
  *v17 = a1;
  v17[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_100010324(&qword_1006F3F20, &qword_10059FB90);
  v31 = a1 + 5;
  v3 = a1[2];
  sub_10056ECA8();
  sub_10056ECA8();
  v29 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _CompositingGroupEffect;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v40 = sub_100570718();
  v41 = sub_10056ED78();
  v42 = swift_getWitnessTable();
  v43 = sub_10041CC58();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  v24[3] = swift_getWitnessTable();
  v24[0] = sub_10056E868();
  v27 = *(v24[0] - 8);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = sub_10056ECA8();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v24[1] = swift_getWitnessTable();
  v24[2] = sub_10056EE08();
  v9 = sub_10056ECA8();
  v25 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = a1[4];
  v15 = v30;
  sub_1005702C8();
  sub_10056FA08();
  *&v16 = v14;
  *(&v16 + 1) = *v31;
  *&v17 = v3;
  *(&v17 + 1) = v29;
  v33 = v17;
  v34 = v16;
  v35 = v15;
  sub_10056E858();
  sub_1005709E8();
  v18 = sub_10041DA2C();
  v38 = v14;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24[0];
  sub_100570308();
  (*(v27 + 8))(v5, v20);
  (*(v26 + 8))(v8, v6);
  v21 = swift_getWitnessTable();
  v36 = v19;
  v37 = v21;
  swift_getWitnessTable();
  sub_1003CE294();
  v22 = *(v25 + 8);
  v22(v11, v9);
  sub_1003CE294();
  return (v22)(v13, v9);
}

unint64_t sub_10041CC58()
{
  result = qword_1006F3F28;
  if (!qword_1006F3F28)
  {
    sub_10056ED78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3F28);
  }

  return result;
}

uint64_t sub_10041CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a3;
  v50 = a1;
  v72 = a6;
  v8 = sub_10056ED78();
  v60 = v8;
  v71 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  v10 = sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _CompositingGroupEffect;
  v54 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v66 = v10;
  v65 = swift_getWitnessTable();
  v11 = sub_100570718();
  v61 = v11;
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v48 - v12;
  v13 = swift_getWitnessTable();
  v59 = v13;
  v58 = sub_10041CC58();
  v82 = v11;
  v83 = v8;
  v84 = v13;
  v85 = v58;
  v62 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v15;
  sub_100010324(&qword_1006F3F20, &qword_10059FB90);
  v49 = a2;
  v16 = sub_10056ECA8();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - v18;
  v20 = sub_10056ECA8();
  v73 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v48 - v23;
  sub_1005703B8();
  v25 = sub_10041E248();
  v81[4] = a4;
  v81[5] = v25;
  v26 = a4;
  v27 = swift_getWitnessTable();
  sub_100570398();
  (*(v17 + 8))(v19, v16);
  v81[2] = v27;
  v81[3] = &protocol witness table for _FixedSizeLayout;
  v52 = swift_getWitnessTable();
  v28 = v24;
  v51 = v22;
  sub_1003CE294();
  v53 = *(v73 + 8);
  v54 = (v73 + 8);
  v53(v22, v20);
  v29 = v49;
  v30 = v68;
  v82 = v49;
  v83 = v68;
  v31 = v69;
  v84 = v26;
  v85 = v69;
  type metadata accessor for HeightLimitedButtonTextView(0, &v82);
  v74 = v29;
  v75 = v30;
  v76 = v26;
  v77 = v31;
  v78 = v50;

  v32 = v56;
  sub_1005706D8();
  v33 = v70;
  sub_10056ED68();
  v34 = v55;
  v35 = v61;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  sub_10056FFE8();
  (*(v71 + 8))(v33, v36);
  (*(v67 + 8))(v32, v35);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = OpaqueTypeMetadata2;
  sub_1003CE294();
  v42 = v63;
  v43 = *(v63 + 8);
  v44 = v34;
  v43(v34, v41);
  v45 = v51;
  (*(v73 + 16))(v51, v28, v20);
  v82 = v45;
  (*(v42 + 16))(v44, v40, v41);
  v83 = v44;
  v81[0] = v20;
  v81[1] = v41;
  v79 = v52;
  v80 = OpaqueTypeConformance2;
  sub_10042FBC4(&v82, 2uLL, v81);
  v43(v40, v41);
  v46 = v53;
  v53(v28, v20);
  v43(v44, v41);
  return v46(v45, v20);
}

uint64_t sub_10041D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v24 = a6;
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  v6 = sub_1005707E8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = sub_10056ECA8();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_10056F388();
  sub_10056F1E8();
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  sub_1005707D8();
  WitnessTable = swift_getWitnessTable();
  sub_100570118();
  (*(v7 + 8))(v9, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_1003CE294();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_1003CE294();
  return (v17)(v15, v10);
}

uint64_t sub_10041D7B4@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a6;
  v9 = *(a3 - 1);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  v26 = v20;
  sub_1003CE294();
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v21 = v27;
  v35 = v27;
  type metadata accessor for HeightLimitedButtonTextView(0, &v32);
  sub_1003CE294();
  (*(v15 + 16))(v17, v19, a2);
  v32 = v17;
  (*(v9 + 16))(v11, v13, a3);
  v33 = v11;
  v31[0] = a2;
  v31[1] = a3;
  v29 = v26;
  v30 = v21;
  sub_10042FBC4(&v32, 2uLL, v31);
  v22 = *(v9 + 8);
  v22(v13, a3);
  v23 = *(v15 + 8);
  v23(v19, a2);
  v22(v11, a3);
  return (v23)(v17, a2);
}

unint64_t sub_10041DA2C()
{
  result = qword_1006F3F30[0];
  if (!qword_1006F3F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F3F30);
  }

  return result;
}

unint64_t sub_10041DAD0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1003CC840();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10041DB74(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_10041DD44(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_10041DFA8(void *a1)
{
  sub_10056ECA8();
  sub_100010324(&qword_1006F3F20, &qword_10059FB90);
  sub_10056ECA8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100570718();
  sub_10056ED78();
  swift_getWitnessTable();
  sub_10041CC58();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_10056E868();
  swift_getWitnessTable();
  sub_10056EE08();
  sub_10056ECA8();
  sub_10041DA2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10041E248()
{
  result = qword_1006F3FB8;
  if (!qword_1006F3FB8)
  {
    sub_100010324(&qword_1006F3F20, &qword_10059FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FB8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEE30, &unk_10059CFF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel(uint64_t a1)
{
  result = qword_1006F4078;
  if (!qword_1006F4078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_10056FEF8();
  v80 = *(v1 - 8);
  v81 = v1;
  __chkstk_darwin();
  v79 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056F198();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin();
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006F3938, &qword_10059F450);
  v76 = v5;
  __chkstk_darwin();
  v7 = &v71 - v6;
  v8 = sub_100009DCC(&qword_1006F3FC0, &qword_10059FC90);
  __chkstk_darwin();
  v77 = &v71 - v9;
  Int.seconds.getter(44);
  sub_10056F2A8();
  v10 = sub_10056FF08();
  v12 = v11;
  v74 = v13;
  v75 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100009DCC(&qword_1006F3940, &qword_10059F458) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_10056FE68();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v77;
  v22 = v78;
  v7[16] = v74 & 1;
  *(v7 + 3) = v75;
  sub_10056FB88();
  sub_10041EEC4();
  sub_10056FFA8();
  sub_10001036C(v7, &qword_1006F3938, &qword_10059F450);
  v24 = sub_10056FC48();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100009DCC(&qword_1006F3FD8, &qword_10059FCF8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel(0) + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    LOBYTE(v99) = v31 & 1;
  }

  else
  {

    sub_10041F02C(v31, 0);
    v32 = sub_100573438();
    v33 = sub_10056F9D8();
    sub_10056DE58(v32, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v34 = v71;
    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v31, 0);
    (*(v72 + 8))(v34, v73);
  }

  v35 = v79;
  sub_10056FEE8();
  sub_10041F038();
  v36 = v82;
  sub_1005703E8();
  (*(v80 + 8))(v35, v81);
  sub_10041F1E4(v23);
  v37 = sub_10056FA68();
  sub_10056E598();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v36 + *(sub_100009DCC(&qword_1006F3FF0, &qword_10059FD30) + 36);
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  v47 = sub_10056FA48();
  sub_10056E598();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v36 + *(sub_100009DCC(&qword_1006F3FF8, &qword_10059FD38) + 36);
  *v56 = v47;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51;
  *(v56 + 24) = v53;
  *(v56 + 32) = v55;
  *(v56 + 40) = 0;
  v57 = sub_10056F218();
  v91 = 0;
  sub_10041EAD4(&v84);
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v92 = v84;
  v93 = v85;
  v98[2] = v86;
  v98[3] = v87;
  v98[4] = v88;
  v98[5] = v89;
  v98[0] = v84;
  v98[1] = v85;
  sub_10000CC8C(&v92, &v83, &qword_1006F4000, &qword_10059FD40);
  sub_10001036C(v98, &qword_1006F4000, &qword_10059FD40);
  *&v90[39] = v94;
  *&v90[55] = v95;
  *&v90[71] = v96;
  *&v90[87] = v97;
  *&v90[7] = v92;
  *&v90[23] = v93;
  v58 = v91;
  v59 = v36 + *(sub_100009DCC(&qword_1006F4008, &qword_10059FD48) + 36);
  v60 = *(sub_100009DCC(&qword_1006F4010, &qword_10059FD50) + 36);
  v61 = enum case for BlendMode.destinationOut(_:);
  v62 = sub_100570A78();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  v63 = *&v90[32];
  *(v59 + 65) = *&v90[48];
  v64 = *&v90[80];
  *(v59 + 81) = *&v90[64];
  *(v59 + 97) = v64;
  v65 = *&v90[16];
  *(v59 + 17) = *v90;
  *(v59 + 33) = v65;
  *v59 = v57;
  *(v59 + 8) = 0;
  *(v59 + 16) = v58;
  *(v59 + 112) = *&v90[95];
  *(v59 + 49) = v63;
  v66 = sub_1005709E8();
  v68 = v67;
  result = sub_100009DCC(&qword_1006F4018, &qword_10059FD58);
  v70 = (v59 + *(result + 36));
  *v70 = v66;
  v70[1] = v68;
  return result;
}

uint64_t sub_10041EAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056EC88();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v20 - v7;
  type metadata accessor for MoreLabel(0);
  sub_1003BE998(v8);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v9 = sub_10056EC78();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  sub_100009DCC(&qword_1006F03D0, &unk_10059A710);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057B500;
  if (v9)
  {
    *(v11 + 32) = sub_1005704A8();
    v12 = sub_1005704B8();
  }

  else
  {
    *(v11 + 32) = sub_1005704B8();
    v12 = sub_1005704A8();
  }

  *(v11 + 40) = v12;
  sub_100570968();
  sub_100570B58();
  sub_100570B68();
  sub_10056EA68();
  sub_1005709E8();
  sub_10056E888();
  v13 = sub_1005704A8();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_10000CC8C(v20, v22, &qword_1006F0890, &qword_10059B3F8);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_10001036C(v22, &qword_1006F0890, &qword_10059B3F8);
}

uint64_t sub_10041ED90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10041EDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10041EE18(uint64_t a1)
{
  sub_100009DCC(&qword_1006F40D8, &qword_10059FDD0);
  __chkstk_darwin();
  sub_10000CC8C(a1, &v4 - v2, &qword_1006F40D8, &qword_10059FDD0);
  return sub_10056F0D8();
}

unint64_t sub_10041EEC4()
{
  result = qword_1006F3FC8;
  if (!qword_1006F3FC8)
  {
    sub_100010324(&qword_1006F3938, &qword_10059F450);
    sub_100010BC0(&qword_1006F3FD0, &qword_1006F3940, &qword_10059F458, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FC8);
  }

  return result;
}

uint64_t sub_10041EF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_10041EFD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_10041F02C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10041F038()
{
  result = qword_1006F3FE0;
  if (!qword_1006F3FE0)
  {
    sub_100010324(&qword_1006F3FC0, &qword_10059FC90);
    sub_10041F0F0();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00, &unk_10059E480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FE0);
  }

  return result;
}

unint64_t sub_10041F0F0()
{
  result = qword_1006F3FE8;
  if (!qword_1006F3FE8)
  {
    sub_100010324(&qword_1006F3FD8, &qword_10059FCF8);
    sub_100010324(&qword_1006F3938, &qword_10059F450);
    sub_10041EEC4();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FE8);
  }

  return result;
}

uint64_t sub_10041F1E4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F3FC0, &qword_10059FC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041F27C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006F1110, &qword_10059BDF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}