uint64_t sub_10034C540()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100003ABC(&qword_10060DE10, &qword_1004DA108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B87C4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10034C67C(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

double sub_10034C67C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10034C6F4()
{
  result = qword_10060DE20;
  if (!qword_10060DE20)
  {
    sub_100003B68(&qword_10060DE18, &qword_1004E1310);
    sub_10034C780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE20);
  }

  return result;
}

unint64_t sub_10034C780()
{
  result = qword_10060DE28;
  if (!qword_10060DE28)
  {
    sub_100003B68(&qword_10060DE30, &qword_1004E1318);
    sub_10034C80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE28);
  }

  return result;
}

unint64_t sub_10034C80C()
{
  result = qword_10060DE38;
  if (!qword_10060DE38)
  {
    sub_100003B68(&qword_10060DE40, &qword_1004E1320);
    sub_1000206D4(&qword_10060DE48, &qword_10060DE50, &qword_1004E1328, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_1000206D4(&qword_10060DE58, &qword_10060DE60, &qword_1004E1330, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE38);
  }

  return result;
}

unint64_t sub_10034C900()
{
  result = qword_10060DE98;
  if (!qword_10060DE98)
  {
    sub_100003B68(&qword_10060DE90, &unk_1004E13C0);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE98);
  }

  return result;
}

uint64_t sub_10034C9B8()
{
  v1 = sub_1004BB7D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034CA84(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001384C;

  return sub_100331728(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10034CB90(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_100331E3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10034CC88()
{
  v1 = sub_1004BB7D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034CD54(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_100330EF0(a1, v6, v7, v8, v1 + v5);
}

double sub_10034CFDC(uint64_t a1)
{
  v2 = sub_1004B9664();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060D3F0, &qword_1004E0A98) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_10000F778(a1, v8, &qword_10060A208, &qword_1004E0AA0);
  sub_10000F778(v13, &v8[v14], &qword_10060A208, &qword_1004E0AA0);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_100007214(v8, &qword_10060A208, &qword_1004E0AA0);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_10000F778(v8, v10, &qword_10060A208, &qword_1004E0AA0);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_100007214(v8, &unk_10060D3F0, &qword_1004E0A98);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_1004BBD84();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
  v18(v10, v2);
  sub_100007214(v8, &qword_10060A208, &qword_1004E0AA0);
  result = -9.0;
  if ((v17 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10034D420()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_100003ABC(&qword_10060D3D0, &qword_1004D9FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004B9664();
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

uint64_t sub_10034D59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_10034568C(a1, a2, v7, a3);
}

uint64_t sub_10034D628()
{

  return swift_deallocObject();
}

uint64_t sub_10034D660(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100003ABC(&qword_10060E028, &qword_1004E16D0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_10034D6C8()
{
  result = qword_10060DFB8;
  if (!qword_10060DFB8)
  {
    sub_100003B68(&qword_10060DFA8, &qword_1004E16A0);
    sub_10034D780();
    sub_1000206D4(&qword_10060E018, &qword_10060E020, &qword_1004E16C8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFB8);
  }

  return result;
}

unint64_t sub_10034D780()
{
  result = qword_10060DFC0;
  if (!qword_10060DFC0)
  {
    sub_100003B68(&qword_10060DFC8, &qword_1004E16A8);
    sub_10034D80C();
    sub_1002F0A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFC0);
  }

  return result;
}

unint64_t sub_10034D80C()
{
  result = qword_10060DFD0;
  if (!qword_10060DFD0)
  {
    sub_100003B68(&qword_10060DFD8, &qword_1004E16B0);
    sub_10034D898();
    sub_1002F09B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFD0);
  }

  return result;
}

unint64_t sub_10034D898()
{
  result = qword_10060DFE0;
  if (!qword_10060DFE0)
  {
    sub_100003B68(&qword_10060DFE8, &qword_1004E16B8);
    sub_10034D924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFE0);
  }

  return result;
}

unint64_t sub_10034D924()
{
  result = qword_10060DFF0;
  if (!qword_10060DFF0)
  {
    sub_100003B68(&qword_10060DFF8, &qword_1004E16C0);
    sub_100003B68(&qword_10060C998, &qword_1004DF240);
    sub_1003169C4();
    swift_getOpaqueTypeConformance2();
    sub_10034A084(&unk_10060E000, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFF0);
  }

  return result;
}

double sub_10034DA1C(uint64_t a1)
{
  v2 = sub_1004B9664();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060D3F0, &qword_1004E0A98) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_10000F778(a1, v8, &qword_10060A208, &qword_1004E0AA0);
  sub_10000F778(v13, &v8[v14], &qword_10060A208, &qword_1004E0AA0);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_100007214(v8, &qword_10060A208, &qword_1004E0AA0);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_10000F778(v8, v10, &qword_10060A208, &qword_1004E0AA0);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_100007214(v8, &unk_10060D3F0, &qword_1004E0A98);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_1004BBD84();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_100007214(v13, &qword_10060A208, &qword_1004E0AA0);
  v18(v10, v2);
  sub_100007214(v8, &qword_10060A208, &qword_1004E0AA0);
  result = 25.0;
  if ((v17 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_10034DDFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034DE80()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B8A24();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1004B8C94();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100003ABC(&unk_100609E90, &qword_1004D9FA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004B8AB4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10034E114()
{
  result = qword_10060E0E8;
  if (!qword_10060E0E8)
  {
    sub_100003B68(&qword_10060E0D8, &qword_1004E17C0);
    sub_1000206D4(&qword_10060E0F0, &qword_10060E0F8, &qword_1004E17D0, &protocol conformance descriptor for VStack<A>);
    sub_1000206D4(&qword_10060E100, &qword_10060E108, &qword_1004E17D8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E0E8);
  }

  return result;
}

uint64_t sub_10034E1F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034E274()
{
  result = qword_10060E118;
  if (!qword_10060E118)
  {
    sub_100003B68(&qword_10060E120, &qword_1004E17E0);
    sub_10034E32C();
    sub_1000206D4(&qword_10060E138, &qword_10060E140, &qword_1004E17F0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E118);
  }

  return result;
}

unint64_t sub_10034E32C()
{
  result = qword_10060E128;
  if (!qword_10060E128)
  {
    sub_100003B68(&qword_10060E130, &qword_1004E17E8);
    sub_10034BAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E128);
  }

  return result;
}

unint64_t sub_10034E3B8()
{
  result = qword_10060E148;
  if (!qword_10060E148)
  {
    sub_100003B68(&qword_10060E0D0, &qword_1004E17B8);
    sub_1000206D4(&qword_10060E150, &qword_10060E158, &qword_1004E17F8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E148);
  }

  return result;
}

unint64_t sub_10034E468()
{
  result = qword_10060E160;
  if (!qword_10060E160)
  {
    sub_100003B68(&qword_10060E0C0, &qword_1004E17A8);
    sub_100003B68(&qword_10060E0D8, &qword_1004E17C0);
    sub_100003B68(&qword_10060E0E0, &qword_1004E17C8);
    sub_10034E114();
    sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &qword_1004E17C8, sub_10034E274);
    swift_getOpaqueTypeConformance2();
    sub_10034E3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E160);
  }

  return result;
}

unint64_t sub_10034E5C8()
{
  result = qword_10060E1B0;
  if (!qword_10060E1B0)
  {
    sub_100003B68(&qword_10060E1A8, &qword_1004E1820);
    sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_1004E10F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1B0);
  }

  return result;
}

unint64_t sub_10034E6B0()
{
  result = qword_10060E1F0;
  if (!qword_10060E1F0)
  {
    sub_100003B68(&qword_10060E1E8, &qword_1004E1848);
    sub_10034E768();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1F0);
  }

  return result;
}

unint64_t sub_10034E768()
{
  result = qword_10060E1F8;
  if (!qword_10060E1F8)
  {
    sub_100003B68(&qword_10060E200, &qword_1004E1850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1F8);
  }

  return result;
}

uint64_t sub_10034E81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100330034(a1, v4, v5, v6);
}

void sub_10034E8D8(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_10033C4AC(a1);
}

uint64_t sub_10034E94C()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004B8A24();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1004B8C94();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100003ABC(&unk_100609E90, &qword_1004D9FA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004B8AB4();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_10034EBB4(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10033C534(a1, v4, v5, v6);
}

uint64_t sub_10034EC30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10032FC38(a1, v4, v5, v6, v7);
}

uint64_t sub_10034ECF4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10033A7FC(a1);
}

uint64_t sub_10034ED64(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100309A2C(a1, a2, v2 + v6, v7);
}

uint64_t sub_10034EE30(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10033A690(a1, v4);
}

unint64_t sub_10034EEB0()
{
  result = qword_10060E300;
  if (!qword_10060E300)
  {
    sub_100003B68(&qword_10060E2D0, &qword_1004E1930);
    sub_10034EF68();
    sub_1000206D4(&qword_10060E318, &qword_10060E2F0, &qword_1004E1950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E300);
  }

  return result;
}

unint64_t sub_10034EF68()
{
  result = qword_10060E308;
  if (!qword_10060E308)
  {
    sub_100003B68(&qword_10060E310, &qword_1004E1958);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E308);
  }

  return result;
}

uint64_t sub_10034F020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100330594(a1, v4, v5, v6);
}

uint64_t sub_10034F130@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100339920(a1);
}

unint64_t sub_10034F1A0()
{
  result = qword_10060E358;
  if (!qword_10060E358)
  {
    sub_100003B68(&qword_10060E340, &qword_1004E1990);
    sub_10034A084(&qword_10060E360, _s10ManagementO4ViewV5ShareO6ButtonVMa, &unk_1004E0DE0);
    sub_1000206D4(&qword_10060E368, &qword_10060E370, &qword_1004E20E0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E358);
  }

  return result;
}

unint64_t sub_10034F2B4()
{
  result = qword_10060E3B0;
  if (!qword_10060E3B0)
  {
    sub_100003B68(&qword_10060E388, &qword_1004E1A48);
    sub_10034F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3B0);
  }

  return result;
}

unint64_t sub_10034F340()
{
  result = qword_10060E3B8;
  if (!qword_10060E3B8)
  {
    sub_100003B68(&qword_10060E3A8, &qword_1004E1A68);
    sub_10034F3F8();
    sub_1000206D4(&qword_10060E100, &qword_10060E108, &qword_1004E17D8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3B8);
  }

  return result;
}

unint64_t sub_10034F3F8()
{
  result = qword_10060E3C0;
  if (!qword_10060E3C0)
  {
    sub_100003B68(&qword_10060E3A0, &qword_1004E1A60);
    sub_1000206D4(&qword_10060E3C8, &qword_10060E3D0, &qword_1004E1A70, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3C0);
  }

  return result;
}

uint64_t sub_10034F578(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10034F5F4()
{
  result = qword_10060E440;
  if (!qword_10060E440)
  {
    sub_100003B68(&qword_10060E3E8, &qword_1004E1A88);
    sub_1000206D4(&qword_10060DCB8, &unk_10060DCC0, &qword_1004E1188, &protocol conformance descriptor for Button<A>);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E440);
  }

  return result;
}

unint64_t sub_10034F6D8()
{
  result = qword_10060E470;
  if (!qword_10060E470)
  {
    sub_100003B68(&qword_10060E3F0, &qword_1004E1A90);
    sub_10034F790();
    sub_1000206D4(&qword_10060E4A8, &qword_10060E468, &unk_1004E1B30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E470);
  }

  return result;
}

unint64_t sub_10034F790()
{
  result = qword_10060E478;
  if (!qword_10060E478)
  {
    sub_100003B68(&qword_10060E460, &qword_1004E1B28);
    sub_10034F848();
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0, &qword_1004E25E0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E478);
  }

  return result;
}

unint64_t sub_10034F848()
{
  result = qword_10060E480;
  if (!qword_10060E480)
  {
    sub_100003B68(&qword_10060E458, &qword_1004E1B20);
    sub_10034F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E480);
  }

  return result;
}

unint64_t sub_10034F8D4()
{
  result = qword_10060E488;
  if (!qword_10060E488)
  {
    sub_100003B68(&qword_10060E450, &qword_1004E1B18);
    sub_10034F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E488);
  }

  return result;
}

unint64_t sub_10034F960()
{
  result = qword_10060E490;
  if (!qword_10060E490)
  {
    sub_100003B68(&qword_10060E448, &qword_1004E1B10);
    sub_100003B68(&qword_10060E3E8, &qword_1004E1A88);
    sub_10034F5F4();
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E490);
  }

  return result;
}

uint64_t sub_10034FAF4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10034FB40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10034FB80()
{
  v1 = sub_1004BBA84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034FC58(uint64_t a1)
{
  v4 = *(sub_1004BBA84() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_10032A90C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034FD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100009178(a1, a1[3]);
  result = sub_1004BB254();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10034FDC0()
{
  result = qword_10060E500;
  if (!qword_10060E500)
  {
    sub_100009130(255, &qword_10060E4F0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E500);
  }

  return result;
}

unint64_t sub_10034FE78()
{
  result = qword_10060E558;
  if (!qword_10060E558)
  {
    sub_100003B68(&qword_10060E560, qword_1004E1C40);
    sub_100003B68(&qword_10060DC58, &qword_1004E1150);
    sub_100003B68(&qword_10060DC50, &qword_1004E1148);
    sub_100003B68(&qword_10060DC48, &qword_1004E1140);
    sub_100003B68(&qword_10060DC70, &qword_1004E1168);
    sub_10034BB98();
    sub_10034E1F8(&unk_10060DCA0, &qword_10060DC70, &qword_1004E1168, sub_10034BC7C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10034A084(&qword_10060E568, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E558);
  }

  return result;
}

unint64_t sub_100350054()
{
  result = qword_10060E570;
  if (!qword_10060E570)
  {
    sub_100003B68(&qword_10060DE68, &qword_1004E1368);
    sub_10035010C();
    sub_1000206D4(&qword_10060E590, &qword_10060DE70, &qword_1004E1370, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E570);
  }

  return result;
}

unint64_t sub_10035010C()
{
  result = qword_10060E578;
  if (!qword_10060E578)
  {
    sub_100003B68(&qword_10060DE08, &unk_1004E1300);
    sub_1003501C4();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E578);
  }

  return result;
}

unint64_t sub_1003501C4()
{
  result = qword_10060E580;
  if (!qword_10060E580)
  {
    sub_100003B68(&qword_10060DE00, &qword_1004E12F8);
    sub_1000206D4(&qword_10060E588, &qword_10060DDF8, &qword_1004E12F0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E580);
  }

  return result;
}

unint64_t sub_10035029C()
{
  result = qword_10060E598;
  if (!qword_10060E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E598);
  }

  return result;
}

uint64_t sub_1003502F0()
{

  return swift_deallocObject();
}

unint64_t sub_100350340()
{
  result = qword_10060E5B8;
  if (!qword_10060E5B8)
  {
    sub_100003B68(&qword_10060E5B0, &qword_1004E1D10);
    sub_1003503F8();
    sub_1000206D4(&unk_10060E5F0, &qword_10060EF90, &qword_1004E1D30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5B8);
  }

  return result;
}

unint64_t sub_1003503F8()
{
  result = qword_10060E5C0;
  if (!qword_10060E5C0)
  {
    sub_100003B68(&qword_10060E5C8, &qword_1004E1D18);
    sub_1003504B0();
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0, &qword_1004E25E0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5C0);
  }

  return result;
}

unint64_t sub_1003504B0()
{
  result = qword_10060E5D0;
  if (!qword_10060E5D0)
  {
    sub_100003B68(&qword_10060E5D8, &qword_1004E1D20);
    sub_10035053C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5D0);
  }

  return result;
}

unint64_t sub_10035053C()
{
  result = qword_10060E5E0;
  if (!qword_10060E5E0)
  {
    sub_100003B68(&qword_10060E5E8, &qword_1004E1D28);
    sub_10034C900();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5E0);
  }

  return result;
}

unint64_t sub_10035068C()
{
  result = qword_10060E618;
  if (!qword_10060E618)
  {
    sub_100003B68(&qword_10060E608, &qword_1004E1D38);
    sub_100003B68(&qword_10060E5A0, &qword_1004E1D00);
    sub_1004B9594();
    sub_1000206D4(&qword_10060E600, &qword_10060E5A0, &qword_1004E1D00, &protocol conformance descriptor for Button<A>);
    sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060E620, &qword_10060E610, &qword_1004E1D40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E618);
  }

  return result;
}

void sub_10035089C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_10060EB98, &qword_1004E23F8);
    v2 = sub_1004BD6F4();
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
        sub_10003D034(*(a1 + 48) + 40 * v11, v33);
        sub_100004DE4(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_10003D034(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_100007214(v30, &qword_10060EA38, &qword_1004E2228);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_100004DE4(v31 + 8, v23);
        sub_100007214(v30, &qword_10060EA38, &qword_1004E2228);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_1003740CC(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_10035FAC4(&v24, v2[7] + 40 * v9);
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
      sub_100007214(&v24, &qword_10060EBA0, &qword_1004E2400);
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

void sub_100350BC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_10060EA30, &qword_1004E2220);
    v2 = sub_1004BD6F4();
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
    sub_10003D034(*(a1 + 48) + 40 * v11, v27);
    sub_100004DE4(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_10003D034(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100004DE4(v25 + 8, v20);
    sub_100007214(v24, &qword_10060EA38, &qword_1004E2228);
    v21 = v18;
    sub_10003E13C(v20, v22);
    v12 = v21;
    sub_10003E13C(v22, v23);
    sub_10003E13C(v23, &v21);
    v13 = sub_1003740CC(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_100004C6C(v9);
      sub_10003E13C(&v21, v9);
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
      sub_10003E13C(&v21, (v2[7] + 32 * v13));
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

  sub_100007214(v24, &qword_10060EA38, &qword_1004E2228);
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_1004BB6C4();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100350F88(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100350F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100350F88(a1, v3);
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
  v31[0] = sub_1004BB7D4();
  v2 = *(v31[0] - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  type metadata accessor for Collaboration.Flow(0);
  v11 = __chkstk_darwin();
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035DBFC(v1, v13, v11, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v2;
      v16 = *(v2 + 32);
      v17 = v31[0];
      v16(v4, v13, v31[0]);
      sub_1004BBDA4();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v18 = qword_100618C60;
      sub_1004B6DF4();
      sub_1004BBED4();
      (*(v6 + 8))(v10, v5);
      sub_100003ABC(&qword_10060E668, &qword_1004E1D78);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1004C50A0;
      v20 = sub_1004BB774();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_10035C610();
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
      v25 = sub_1004BBE34();

      (*(v15 + 8))(v4, v17);
    }

    else
    {
      sub_1004BBDA4();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v27 = qword_100618C60;
      sub_1004B6DF4();
      v25 = sub_1004BBED4();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v26 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    sub_1004BBDA4();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v28 = qword_100618C60;
    sub_1004B6DF4();
    v25 = sub_1004BBED4();
    (*(v6 + 8))(v10, v5);
    v29 = sub_1004B6B04();
    (*(*(v29 - 8) + 8))(&v13[v26], v29);
    sub_100007214(v13, &qword_10060E680, &qword_1004E1D88);
  }

  return v25;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v78 = hasProfileEdit;
  sub_1004BBDF4();
  __chkstk_darwin();
  v2 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v77 = *(v2 - 8);
  __chkstk_darwin();
  v4 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v73 - v5);
  sub_100003ABC(&qword_10060E688, &qword_1004E1D90);
  __chkstk_darwin();
  v8 = &v73 - v7;
  sub_100003ABC(&qword_10060E680, &qword_1004E1D88);
  __chkstk_darwin();
  v10 = &v73 - v9;
  sub_1004B6E64();
  __chkstk_darwin();
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1004BBE14();
  v79 = *(v82 - 8);
  __chkstk_darwin();
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v73 - v13;
  type metadata accessor for Collaboration.Flow(0);
  v15 = __chkstk_darwin();
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035DBFC(v1, v17, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1004BBDA4();
      v19 = v79;
      v20 = v82;
      (*(v79 + 16))(v81, v14, v82);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v21 = qword_100618C60;
      sub_1004B6DF4();
      v22 = sub_1004BBED4();
      v24 = v23;
      (*(v19 + 8))(v14, v20);
      sub_10035C664(v17, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v33 = v79;
      v34 = (v79 + 16);
      v35 = v14;
      v36 = v81;
      v37 = v82;
      sub_1004BBDA4();
      (*v34)(v36, v35, v37);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v40 = qword_100618C60;
      sub_1004B6DF4();
      v22 = sub_1004BBED4();
      v24 = v41;
      (*(v33 + 8))(v35, v37);
    }

    goto LABEL_33;
  }

  v25 = sub_100003ABC(&qword_10060E678, &qword_1004E1D80);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = v17;
  v29 = v17[v27];
  v75 = v26;
  v76 = v28;
  sub_100025B04(v28, v10, &qword_10060E680, &qword_1004E1D88);
  v74 = v10;
  sub_10000F778(v10, v8, &qword_10060E680, &qword_1004E1D88);
  if ((*(v77 + 48))(v8, 1, v2) == 1)
  {
    v30 = v79;
    v31 = (v79 + 16);
    v32 = v14;
    sub_1004BBDA4();
    v42 = v82;
    (*v31)(v81, v32, v82);
    v43 = v74;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v44 = qword_100618C60;
    sub_1004B6DF4();
    v22 = sub_1004BBED4();
    v24 = v45;
    (*(v30 + 8))(v32, v42);
    sub_100007214(v43, &qword_10060E680, &qword_1004E1D88);
    v46 = sub_1004B6B04();
    (*(*(v46 - 8) + 8))(v76 + v75, v46);
    goto LABEL_33;
  }

  v38 = v14;
  if (v29)
  {
    v39 = v6;
    sub_10035C6E4(v8, v6, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v78)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v6[1]._countAndFlagsBits;
    object = v6[1]._object;
    v55 = v76;
    if (object)
    {
      sub_1004BBDE4();
      v83._countAndFlagsBits = 0x100000000000002ELL;
      v83._object = 0x8000000100509500;
      sub_1004BBDD4(v83);
      sub_1004BBDC4(*v6);
      v84._countAndFlagsBits = 4204576;
      v84._object = 0xE300000000000000;
      sub_1004BBDD4(v84);
      v85._countAndFlagsBits = countAndFlagsBits;
      v85._object = object;
      sub_1004BBDC4(v85);
      v86._countAndFlagsBits = 0xD000000000000031;
      v86._object = 0x8000000100509530;
      sub_1004BBDD4(v86);
LABEL_26:
      sub_1004BBE04();
      v58 = v79;
      v59 = v82;
      (*(v79 + 16))(v81, v38, v82);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v60 = qword_100618C60;
      sub_1004B6DF4();
      v22 = sub_1004BBED4();
      v24 = v61;
      (*(v58 + 8))(v38, v59);
LABEL_32:
      sub_100007214(v74, &qword_10060E680, &qword_1004E1D88);
      sub_10035C664(v39, type metadata accessor for Collaboration.Flow.Collaborator);
      v69 = sub_1004B6B04();
      (*(*(v69 - 8) + 8))(v55 + v75, v69);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v39 = v4;
  sub_10035C6E4(v8, v4, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v78)
  {
    v56 = v4[1]._countAndFlagsBits;
    v57 = v4[1]._object;
    v55 = v76;
    if (v57)
    {
      sub_1004BBDE4();
      v87._countAndFlagsBits = 0x100000000000002ALL;
      v87._object = 0x8000000100509410;
      sub_1004BBDD4(v87);
      sub_1004BBDC4(*v4);
      v88._countAndFlagsBits = 4204576;
      v88._object = 0xE300000000000000;
      sub_1004BBDD4(v88);
      v89._countAndFlagsBits = v56;
      v89._object = v57;
      sub_1004BBDC4(v89);
      v90._countAndFlagsBits = 0xD000000000000048;
      v90._object = 0x8000000100509440;
      sub_1004BBDD4(v90);
      goto LABEL_26;
    }

LABEL_29:
    sub_1004BBDA4();
    v62 = v79;
    v63 = v82;
    (*(v79 + 16))(v81, v38, v82);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v64 = qword_100618C60;
    sub_1004B6DF4();
    sub_1004BBED4();
    (*(v62 + 8))(v38, v63);
    sub_100003ABC(&qword_10060E668, &qword_1004E1D78);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1004C50A0;
    v66 = v39->_countAndFlagsBits;
    v67 = v39->_object;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_10035C610();
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;

    v22 = sub_1004BBE34();
    v24 = v68;

    goto LABEL_32;
  }

LABEL_19:
  sub_1004BBDA4();
  v47 = v79;
  v48 = v82;
  (*(v79 + 16))(v81, v38, v82);
  v49 = v76;
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v50 = qword_100618C60;
  sub_1004B6DF4();
  v22 = sub_1004BBED4();
  v24 = v51;
  (*(v47 + 8))(v38, v48);
  sub_100007214(v74, &qword_10060E680, &qword_1004E1D88);
  sub_10035C664(v39, type metadata accessor for Collaboration.Flow.Collaborator);
  v52 = sub_1004B6B04();
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
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v18[-v6];
  type metadata accessor for Collaboration.Flow(0);
  v8 = __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10035DBFC(v1, v10, v8, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10035C664(v10, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_1004BBDA4();
      (*(v3 + 16))(v5, v7, v2);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v14 = qword_100618C60;
      sub_1004B6DF4();
      v12 = sub_1004BBED4();
      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    v13 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    sub_1004BBDA4();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v15 = qword_100618C60;
    sub_1004B6DF4();
    v12 = sub_1004BBED4();
    (*(v3 + 8))(v7, v2);
    v16 = sub_1004B6B04();
    (*(*(v16 - 8) + 8))(&v10[v13], v16);
    sub_100007214(v10, &qword_10060E680, &qword_1004E1D88);
  }

  return v12;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0(a1, a2);
  sub_1004BA414();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_1004BA414();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_100359644;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_10035C6E4(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_1004BBA84();
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
  *a2 = sub_1004B9344();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100003ABC(&qword_10060E690, &qword_1004E1D98);
  return sub_1003529B4(v2, a2 + *(v4 + 44));
}

uint64_t sub_1003529B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v466 = a1;
  v440 = a2;
  v439 = sub_100003ABC(&qword_10060EA50, &qword_1004E2240);
  __chkstk_darwin();
  v403 = &v375 - v2;
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v378 = &v375 - v3;
  v379 = sub_1004BB634();
  v396 = *(v379 - 8);
  __chkstk_darwin();
  v395 = &v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v389 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v388 = &v375 - v6;
  v7 = sub_1004B7D94();
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
  v414 = sub_1004B7D04();
  v412 = *(v414 - 8);
  __chkstk_darwin();
  v425 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v387 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v375 - v14;
  __chkstk_darwin();
  v424 = (&v375 - v15);
  v391 = sub_100003ABC(&qword_10060EA58, &qword_1004E2248);
  __chkstk_darwin();
  v393 = &v375 - v16;
  v392 = sub_100003ABC(&qword_10060EF40, &qword_1004E2250);
  __chkstk_darwin();
  v402 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v375 - v18;
  __chkstk_darwin();
  v434 = &v375 - v19;
  v447 = sub_1004BB7D4();
  v433 = *(v447 - 8);
  __chkstk_darwin();
  v415 = v20;
  v416 = &v375 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = &v375 - v21;
  v22 = sub_1004B6B04();
  v409 = *(v22 - 8);
  v410 = v22;
  __chkstk_darwin();
  v384 = v23;
  v385 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v408 = &v375 - v24;
  v436 = sub_100003ABC(&qword_10060EA60, &qword_1004E2258);
  __chkstk_darwin();
  v438 = &v375 - v25;
  v418 = sub_100003ABC(&qword_10060EA68, &qword_1004E2260);
  __chkstk_darwin();
  v420 = (&v375 - v26);
  v437 = sub_100003ABC(&qword_10060EA70, &qword_1004E2268);
  __chkstk_darwin();
  v421 = &v375 - v27;
  v419 = sub_100003ABC(&qword_10060EA78, &qword_1004E2270);
  __chkstk_darwin();
  v401 = &v375 - v28;
  v29 = type metadata accessor for Collaboration.Flow.View(0);
  v432 = *(v29 - 8);
  v30 = *(v432 + 64);
  __chkstk_darwin();
  v448 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_100003ABC(&qword_10060EA80, &qword_1004E2278);
  v444 = *(v428 - 1);
  __chkstk_darwin();
  v400 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v417 = &v375 - v32;
  sub_1004B6E64();
  __chkstk_darwin();
  v429 = &v375 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_1004BBE14();
  v445 = *(v431 - 8);
  __chkstk_darwin();
  v427 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v430 = &v375 - v35;
  v380 = sub_100003ABC(&qword_10060EA88, &qword_1004E2280);
  __chkstk_darwin();
  v382 = &v375 - v36;
  v381 = sub_100003ABC(&qword_10060EA90, &qword_1004E2288);
  __chkstk_darwin();
  v399 = &v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v383 = &v375 - v38;
  __chkstk_darwin();
  v426 = (&v375 - v39);
  sub_100003ABC(&qword_10060EA98, &qword_1004E2290);
  __chkstk_darwin();
  v464 = &v375 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v375 - v41;
  v43 = sub_100003ABC(&qword_10060EAA0, &qword_1004E2298);
  v422 = *(v43 - 8);
  v423 = v43;
  __chkstk_darwin();
  v376 = (&v375 - v44);
  sub_100003ABC(&qword_10060EAA8, &qword_1004E22A0);
  __chkstk_darwin();
  v462 = &v375 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v469 = &v375 - v46;
  v457 = sub_100003ABC(&qword_10060EAB0, &qword_1004E22A8);
  __chkstk_darwin();
  v460 = &v375 - v47;
  v459 = sub_100003ABC(&qword_10060EAB8, &qword_1004E22B0);
  __chkstk_darwin();
  v463 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v458 = &v375 - v49;
  __chkstk_darwin();
  v467 = &v375 - v50;
  v51 = sub_100003ABC(&qword_10060EAC0, &qword_1004E22B8);
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
  sub_100003ABC(&qword_10060EAC8, &qword_1004E22C0);
  __chkstk_darwin();
  v461 = &v375 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin();
  v63 = &v375 - v62;
  v441 = v29;
  v470 = *(v29 + 24);
  sub_10035DBFC(v466 + v470, v59, v61, type metadata accessor for Collaboration.Flow);
  v449 = v55;
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  sub_10035C664(v59, type metadata accessor for Collaboration.Flow);
  v468 = v42;
  v465 = v63;
  if (v29 == 1)
  {
    v64 = 1;
  }

  else
  {
    if (qword_100609CE0 != -1)
    {
      swift_once();
    }

    v65 = qword_10060E658;
    *v478 = swift_getKeyPath();
    *&v478[8] = v65;

    v66 = sub_100003ABC(&qword_10060EAD0, &unk_1004E22C8);
    v67 = sub_10035D968();
    sub_1004BA054();

    *v478 = v66;
    *&v478[8] = v67;
    swift_getOpaqueTypeConformance2();
    v63 = v465;
    sub_1004B9FE4();
    (*(v52 + 8))(v54, v51);
    v64 = 0;
  }

  v435 = v30;
  v68 = sub_100003ABC(&qword_10060EAE8, &qword_1004E22D8);
  (*(*(v68 - 8) + 56))(v63, v64, 1, v68);
  v69 = v466;
  *v478 = Collaboration.Flow.title.getter();
  *&v478[8] = v70;
  v442 = sub_1002C4D1C();
  v71 = sub_1004B9D84();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (qword_100609CD8 != -1)
  {
    swift_once();
  }

  v78 = qword_10060E650;
  KeyPath = swift_getKeyPath();
  LOBYTE(v477[0]) = v75 & 1;
  *v478 = v71;
  *&v478[8] = v73;
  v478[16] = v75 & 1;
  *&v478[24] = v77;
  *&v478[32] = 256;
  *&v478[40] = KeyPath;
  *&v478[48] = v78;

  sub_100003ABC(&qword_10060EAF0, &qword_1004E22E0);
  sub_10035DA74();
  v80 = v460;
  sub_1004BA054();
  v523[0] = *v478;
  v523[1] = *&v478[16];
  v523[2] = *&v478[32];
  v524 = *&v478[48];
  sub_100007214(v523, &qword_10060EAF0, &qword_1004E22E0);
  v81 = swift_getKeyPath();
  v82 = v80 + *(v457 + 36);
  *v82 = v81;
  *(v82 + 8) = 1;
  v83 = sub_1004B9974();
  v84 = v456;
  sub_10035DBFC(v69 + v470, v456, v85, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_10035C664(v84, type metadata accessor for Collaboration.Flow);
  sub_1004B86C4();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v458;
  sub_100025B04(v80, v458, &qword_10060EAB0, &qword_1004E22A8);
  v95 = v94 + *(v459 + 36);
  *v95 = v83;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_100025B04(v94, v467, &qword_10060EAB8, &qword_1004E22B0);
  v96 = v441;
  v97 = v441[9];
  v98 = *(v69 + v97);
  *v478 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v69 + v97));
  v457 = sub_1004B9D84();
  v456 = v99;
  v101 = v100;
  v458 = v102;
  v459 = swift_getKeyPath();
  v453 = v101 & 1;
  v478[0] = v101 & 1;
  v103 = swift_getKeyPath();
  v460 = v78;

  v104 = sub_1004BA2E4();
  v105 = swift_getKeyPath();
  v450 = sub_1004B9974();
  sub_1004B86C4();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v478[0] = 0;
  v451 = sub_1004B9984();
  if (qword_100609CD0 != -1)
  {
    swift_once();
  }

  v452 = v105;
  sub_1004B86C4();
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
      sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
      v123 = sub_1004B8834();
      v124 = _s4FlowO18ProfileEditingViewVMa(0);
      v125 = v376;
      sub_10035DBFC(v69 + v122, v376 + *(v124 + 20), v126, type metadata accessor for Collaboration.Flow);
      *v125 = v123;
      LOBYTE(v123) = sub_1004B9984();
      sub_1004B86C4();
      v127 = v423;
      v128 = v125 + *(v423 + 36);
      *v128 = v123;
      *(v128 + 1) = v129;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 4) = v132;
      v128[40] = 0;
      sub_100025B04(v125, v469, &qword_10060EAA0, &qword_1004E2298);
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
  sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
  sub_1004B8834();
  v135 = InlineProfileEditingView.Context.canValidate.getter();

  v136 = !v135;
  v137 = v443;
  sub_10035DBFC(v69 + v122, v443, v138, type metadata accessor for Collaboration.Flow);
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
      v176 = sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
      sub_1004BA444();
      v177 = v382;
      sub_1004BA544();
      v178 = sub_1004B9964();
      sub_1004B86C4();
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;
      v187 = v177 + *(sub_100003ABC(&qword_10060EB60, &qword_1004E2350) + 36);
      *v187 = v178;
      *(v187 + 8) = v180;
      *(v187 + 16) = v182;
      *(v187 + 24) = v184;
      *(v187 + 32) = v186;
      *(v187 + 40) = 0;
      v188 = sub_1004B9964();
      *(v177 + *(sub_100003ABC(&qword_10060EB68, &qword_1004E2358) + 36)) = v188;
      v189 = (v177 + *(v380 + 36));
      v190 = *(sub_1004B8E74() + 20);
      v191 = enum case for RoundedCornerStyle.continuous(_:);
      v192 = sub_1004B92C4();
      (*(*(v192 - 8) + 104))(&v189[v190], v191, v192);
      __asm { FMOV            V0.2D, #16.0 }

      *v189 = _Q0;
      *&v189[*(sub_100003ABC(&unk_10060EC70, &qword_1004E2360) + 36)] = 256;
      sub_1004BA754();
      sub_1004B8E94();
      v198 = v383;
      sub_100025B04(v177, v383, &qword_10060EA88, &qword_1004E2280);
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
      sub_100025B04(v198, v426, &qword_10060EA90, &qword_1004E2288);
      v478[0] = v174;
      *&v478[8] = v175;
      v434 = v176;
      sub_1004BA424();
      v203 = v445;
      v204 = (v445 + 16);
      v205 = v430;
      sub_1004BBDA4();
      v215 = v431;
      (*v204)(v427, v205, v431);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v216 = qword_100618C60;
      sub_1004B6DF4();
      v217 = sub_1004BBED4();
      v219 = v218;
      v441 = v113;
      v443 = v111;
      v446 = v109;
      v447 = v107;
      (*(v203 + 8))(v205, v215);
      *v478 = v217;
      *&v478[8] = v219;
      v445 = sub_1004B9D84();
      v442 = v220;
      LOBYTE(v217) = v221;
      v433 = v222;
      sub_1004BA764();
      sub_1004B8E94();
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
      v224 = sub_1004B9654();
      v225 = sub_1004B9B44();
      v226 = swift_getKeyPath();
      v227 = sub_1004B9954();
      sub_1004B86C4();
      v229 = v228;
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v481 = 0;
      v236 = sub_1004B9974();
      if (qword_100609CE8 != -1)
      {
        swift_once();
      }

      sub_1004B86C4();
      v238 = v237;
      v240 = v239;
      v242 = v241;
      v244 = v243;
      v482 = 0;
      v245 = sub_1004B9984();
      sub_1004B86C4();
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
      sub_10035DBFC(v250, v448, v255, type metadata accessor for Collaboration.Flow.View);
      v256 = (*(v432 + 80) + 16) & ~*(v432 + 80);
      v257 = swift_allocObject();
      sub_10035C6E4(v254, v257 + v256, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v477[0]) = 0;
      sub_1004BA414();
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
      *&v478[24] = sub_10035E6A0;
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
      *&v478[80] = sub_10035FDD8;
      *&v478[88] = v262;
      v263 = *(v250 + 24);
      LOBYTE(v471[0]) = *(v250 + 16);
      *(&v471[0] + 1) = v263;
      sub_1004BA444();
      v449 = &v375;
      LODWORD(v448) = LOBYTE(v477[1]);
      __chkstk_darwin();
      v466 = sub_100003ABC(&qword_10060EB38, &qword_1004E2338);
      v470 = sub_10035E200();
      v264 = v417;
      sub_1004BA074();

      v494 = *&v478[32];
      v495 = *&v478[48];
      v496 = *&v478[64];
      v497 = *&v478[80];
      v492 = *v478;
      v493 = *&v478[16];
      sub_100007214(&v492, &qword_10060EB38, &qword_1004E2338);
      v265 = v399;
      sub_10000F778(v426, v399, &qword_10060EA90, &qword_1004E2288);
      memcpy(v471, v472, 0x141uLL);
      v266 = *(v444 + 16);
      v267 = v400;
      v266(v400, v264, v428);
      v268 = v401;
      sub_10000F778(v265, v401, &qword_10060EA90, &qword_1004E2288);
      v269 = sub_100003ABC(&qword_10060EB70, &qword_1004E2368);
      v270 = *(v269 + 48);
      memcpy(v477, v471, 0x141uLL);
      memcpy((v268 + v270), v471, 0x141uLL);
      v271 = v428;
      v266((v268 + *(v269 + 64)), v267, v428);
      sub_10000F778(v472, v478, &qword_10060EB78, &qword_1004E2370);
      sub_10000F778(v477, v478, &qword_10060EB78, &qword_1004E2370);
      v449 = *(v444 + 8);
      v444 += 8;
      (v449)(v267, v271);
      memcpy(v478, v471, sizeof(v478));
      sub_100007214(v478, &qword_10060EB78, &qword_1004E2370);
      sub_100007214(v265, &qword_10060EA90, &qword_1004E2288);
      sub_10000F778(v268, v420, &qword_10060EA78, &qword_1004E2270);
      swift_storeEnumTagMultiPayload();
      sub_1000206D4(&qword_10060EB28, &qword_10060EA78, &qword_1004E2270, &protocol conformance descriptor for TupleView<A>);
      v272 = v421;
      sub_1004B9514();
      sub_10000F778(v272, v438, &qword_10060EA70, &qword_1004E2268);
      swift_storeEnumTagMultiPayload();
      sub_10035E148();
      sub_1000206D4(&qword_10060EB48, &qword_10060EA50, &qword_1004E2240, &protocol conformance descriptor for TupleView<A>);
      sub_1004B9514();
      sub_100007214(v472, &qword_10060EB78, &qword_1004E2370);
      sub_100007214(v272, &qword_10060EA70, &qword_1004E2268);
      sub_100007214(v268, &qword_10060EA78, &qword_1004E2270);
      (v449)(v417, v428);
      sub_100007214(v426, &qword_10060EA90, &qword_1004E2288);
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
    sub_10033FAA0(v424);
    v142 = sub_1004BB774();
    v144 = v143;
    if (qword_100609CC8 != -1)
    {
      swift_once();
    }

    (*(v412 + 104))(v425, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v414);
    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    v146 = v386;
    sub_10000F778(v141, v386, &qword_10060EF20, &qword_1004D9F00);
    v147 = type metadata accessor for ArtworkImage.ViewModel(0);
    v443 = *(*(v147 - 8) + 48);
    v148 = (v443)(v146, 1, v147);
    v149 = v396;
    v150 = v388;
    v444 = v145;
    if (v148 == 1)
    {
      sub_100007214(v146, &qword_10060EF20, &qword_1004D9F00);
      v151 = sub_1004BB6C4();
      (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
    }

    else
    {
      v206 = sub_1004BB6C4();
      v207 = *(v206 - 8);
      (*(v207 + 16))(v150, v146, v206);
      sub_10035C664(v146, type metadata accessor for ArtworkImage.ViewModel);
      (*(v207 + 56))(v150, 0, 1, v206);
    }

    sub_10000F778(v150, v389, &unk_10060EBE0, &unk_1004DBE60);
    sub_1004B7D54();
    sub_100007214(v150, &unk_10060EBE0, &unk_1004DBE60);
    sub_1004B7D34();
    v208 = v387;
    sub_10000F778(v424, v387, &qword_10060EF20, &qword_1004D9F00);
    if ((v443)(v208, 1, v147) == 1)
    {
      sub_100007214(v208, &qword_10060EF20, &qword_1004D9F00);
      v209 = v378;
      v210 = v379;
      (*(v149 + 56))(v378, 1, 1, v379);
      v211 = v377;
    }

    else
    {
      v209 = v378;
      sub_10000F778(v208 + *(v147 + 20), v378, &qword_10060DD10, &qword_1004DEE10);
      sub_10035C664(v208, type metadata accessor for ArtworkImage.ViewModel);
      v210 = v379;
      v212 = (*(v149 + 48))(v209, 1, v379);
      v211 = v377;
      if (v212 != 1)
      {
        v214 = v395;
        (*(v149 + 32))(v395, v209, v210);
LABEL_38:
        v273 = v411;
        sub_1004B7D14();
        (*(v149 + 8))(v214, v210);
        v274 = v398;
        v275 = *(v397 + 8);
        v275(v273, v398);
        v276 = v394;
        sub_1004B7D44();
        v275(v211, v274);
        sub_100316C80();
        v277 = v393;
        sub_1004B7D24();

        v275(v276, v274);
        v275(v413, v274);
        (*(v412 + 8))(v425, v414);
        sub_100007214(v424, &qword_10060EF20, &qword_1004D9F00);
        sub_1004BA754();
        sub_1004B8994();
        v278 = (v277 + *(sub_100003ABC(&unk_10060EF30, &qword_1004E22F0) + 36));
        v279 = v526;
        *v278 = v525;
        v278[1] = v279;
        v278[2] = v527;
        *(v277 + *(v391 + 36)) = 256;
        LOBYTE(v273) = sub_1004B9974();
        sub_1004B86C4();
        v281 = v280;
        v283 = v282;
        v285 = v284;
        v287 = v286;
        v288 = v390;
        sub_100025B04(v277, v390, &qword_10060EA58, &qword_1004E2248);
        v289 = v288 + *(v392 + 36);
        *v289 = v273;
        *(v289 + 8) = v281;
        *(v289 + 16) = v283;
        *(v289 + 24) = v285;
        *(v289 + 32) = v287;
        *(v289 + 40) = 0;
        sub_100025B04(v288, v434, &qword_10060EF40, &qword_1004E2250);
        v290 = v430;
        sub_1004BBDA4();
        v291 = v445;
        v292 = *(v445 + 16);
        v293 = v431;
        v444 = v445 + 16;
        v443 = v292;
        v292();
        if (qword_100609A20 != -1)
        {
          swift_once();
        }

        v294 = qword_100618C60;
        v295 = qword_100618C60;
        v442 = v294;
        v296 = v295;
        sub_1004B6DF4();
        v297 = v296;
        v298 = sub_1004BBED4();
        v421 = v299;
        v422 = v298;
        v300 = *(v291 + 8);
        v445 = v291 + 8;
        v441 = v300;
        v301.n128_f64[0] = (v300)(v290, v293);
        v428 = type metadata accessor for Collaboration.Flow.View;
        v302 = v448;
        sub_10035DBFC(v69, v448, v301, type metadata accessor for Collaboration.Flow.View);
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
        sub_10035C6E4(v302, v312 + v309, type metadata accessor for Collaboration.Flow.View);
        (v449)(v312 + v311, v305, v306);
        LOBYTE(v477[0]) = 0;
        sub_1004BA414();
        LOBYTE(v305) = v478[0];
        v313 = *&v478[8];
        v314 = swift_getKeyPath();
        LOBYTE(v475[0]) = 0;
        v315 = sub_1004B9974();
        v316 = v427;
        v317 = v315;
        sub_1004B86C4();
        v472[0] = 0;
        *&v500 = v422;
        *(&v500 + 1) = v421;
        LOBYTE(v501) = 0;
        *(&v501 + 1) = sub_10035DC70;
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
        sub_1004BBDA4();
        v323 = v431;
        (v443)(v316, v322, v431);
        sub_1004B6DF4();
        v444 = sub_1004BBED4();
        v443 = v324;
        v325.n128_f64[0] = (v441)(v322, v323);
        v326 = v448;
        sub_10035DBFC(v466, v448, v325, v428);
        v327 = v416;
        v328 = v447;
        v426(v416, v446, v447);
        v329 = v423;
        v330 = swift_allocObject();
        sub_10035C6E4(v326, v330 + v432, v424);
        (v449)(v330 + v329, v327, v328);
        LOBYTE(v477[0]) = 0;
        sub_1004BA414();
        LOBYTE(v327) = v478[0];
        v331 = *&v478[8];
        v332 = swift_getKeyPath();
        LOBYTE(v476[0]) = 0;
        LOBYTE(v326) = sub_1004B9974();
        sub_1004B86C4();
        v472[0] = 0;
        *&v508 = v444;
        *(&v508 + 1) = v443;
        LOBYTE(v509) = 1;
        *(&v509 + 1) = sub_10035E008;
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
        sub_10000F778(v434, v402, &qword_10060EF40, &qword_1004E2250);
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
        sub_10000F778(v337, v403, &qword_10060EF40, &qword_1004E2250);
        v339 = sub_100003ABC(&qword_10060EB10, &qword_1004E2328);
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
        sub_10000F778(&v500, v478, &qword_10060EB18, &qword_1004E2330);
        sub_10000F778(&v508, v478, &qword_10060EB18, &qword_1004E2330);
        sub_10000F778(v471, v478, &qword_10060EB18, &qword_1004E2330);
        sub_10000F778(v472, v478, &qword_10060EB18, &qword_1004E2330);
        sub_100007214(v477, &qword_10060EB18, &qword_1004E2330);
        *&v478[64] = v496;
        *&v478[80] = v497;
        *&v478[96] = v498;
        v478[112] = v499;
        *v478 = v492;
        *&v478[16] = v493;
        *&v478[32] = v494;
        *&v478[48] = v495;
        sub_100007214(v478, &qword_10060EB18, &qword_1004E2330);
        sub_100007214(v337, &qword_10060EF40, &qword_1004E2250);
        sub_10000F778(v338, v438, &qword_10060EA50, &qword_1004E2240);
        swift_storeEnumTagMultiPayload();
        sub_10035E148();
        sub_1000206D4(&qword_10060EB48, &qword_10060EA50, &qword_1004E2240, &protocol conformance descriptor for TupleView<A>);
        sub_1004B9514();
        sub_100007214(&v508, &qword_10060EB18, &qword_1004E2330);
        sub_100007214(&v500, &qword_10060EB18, &qword_1004E2330);
        sub_100007214(v338, &qword_10060EA50, &qword_1004E2240);
        sub_100007214(v434, &qword_10060EF40, &qword_1004E2250);
        (*(v433 + 8))(v446, v447);
LABEL_41:
        v117 = v406;
        v115 = v407;
        v121 = v404;
        v119 = v405;
        goto LABEL_42;
      }
    }

    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v213 = sub_100007084(v210, static Artwork.CropStyle.fallback);
    v214 = v395;
    (*(v149 + 16))(v395, v213, v210);
    if ((*(v149 + 48))(v209, 1, v210) != 1)
    {
      sub_100007214(v209, &qword_10060DD10, &qword_1004DEE10);
    }

    goto LABEL_38;
  }

  v152 = sub_100003ABC(&qword_10060E678, &qword_1004E1D80);
  v153 = v408;
  v154 = v409;
  v155 = *(v409 + 32);
  v156 = v410;
  v155(v408, v137 + *(v152 + 48), v410);
  LODWORD(v449) = v136;
  v470 = Collaboration.Flow.buttonActionTitle.getter();
  v447 = v157;
  v158 = v448;
  sub_10035DBFC(v69, v448, v159, type metadata accessor for Collaboration.Flow.View);
  v160 = v385;
  v161 = v156;
  (*(v154 + 16))(v385, v153, v156);
  v162 = (*(v432 + 80) + 16) & ~*(v432 + 80);
  v163 = (v435 + *(v154 + 80) + v162) & ~*(v154 + 80);
  v164 = swift_allocObject();
  sub_10035C6E4(v158, v164 + v162, type metadata accessor for Collaboration.Flow.View);
  v155((v164 + v163), v160, v161);
  LOBYTE(v477[0]) = 0;
  sub_1004BA414();
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
  *&v478[24] = sub_10035E654;
  *&v478[32] = v164;
  v478[40] = v162;
  *&v478[48] = v165;
  *&v478[56] = v166;
  v478[64] = v472[0];
  *&v478[65] = v477[0];
  *&v478[68] = *(v477 + 3);
  *&v478[72] = v167;
  *&v478[80] = sub_10035FDD8;
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
  sub_10000F778(v478, v477, &qword_10060EB38, &qword_1004E2338);
  sub_100003ABC(&qword_10060EB38, &qword_1004E2338);
  sub_1000206D4(&qword_10060EB28, &qword_10060EA78, &qword_1004E2270, &protocol conformance descriptor for TupleView<A>);
  sub_10035E200();
  v173 = v421;
  sub_1004B9514();
  sub_10000F778(v173, v438, &qword_10060EA70, &qword_1004E2268);
  swift_storeEnumTagMultiPayload();
  sub_10035E148();
  sub_1000206D4(&qword_10060EB48, &qword_10060EA50, &qword_1004E2240, &protocol conformance descriptor for TupleView<A>);
  sub_1004B9514();
  sub_100007214(v478, &qword_10060EB38, &qword_1004E2338);
  sub_100007214(v173, &qword_10060EA70, &qword_1004E2268);
  (*(v409 + 8))(v408, v410);
  sub_100007214(v443, &qword_10060E680, &qword_1004E1D88);
LABEL_42:
  v357 = v461;
  sub_10000F778(v465, v461, &qword_10060EAC8, &qword_1004E22C0);
  v358 = v463;
  sub_10000F778(v467, v463, &qword_10060EAB8, &qword_1004E22B0);
  sub_10000F778(v469, v462, &qword_10060EAA8, &qword_1004E22A0);
  sub_10000F778(v468, v464, &qword_10060EA98, &qword_1004E2290);
  v359 = v357;
  v360 = v440;
  sub_10000F778(v359, v440, &qword_10060EAC8, &qword_1004E22C0);
  v361 = sub_100003ABC(&qword_10060EB50, &qword_1004E2340);
  sub_10000F778(v358, v360 + v361[12], &qword_10060EAB8, &qword_1004E22B0);
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
  sub_10000F778(v462, v360 + v361[20], &qword_10060EAA8, &qword_1004E22A0);
  v373 = v464;
  sub_10000F778(v464, v360 + v361[24], &qword_10060EA98, &qword_1004E2290);
  sub_10000F778(v477, v478, &qword_10060EB58, &qword_1004E2348);
  sub_100007214(v468, &qword_10060EA98, &qword_1004E2290);
  sub_100007214(v469, &qword_10060EAA8, &qword_1004E22A0);
  sub_100007214(v467, &qword_10060EAB8, &qword_1004E22B0);
  sub_100007214(v465, &qword_10060EAC8, &qword_1004E22C0);
  sub_100007214(v373, &qword_10060EA98, &qword_1004E2290);
  sub_100007214(v372, &qword_10060EAA8, &qword_1004E22A0);
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
  sub_100007214(v478, &qword_10060EB58, &qword_1004E2348);
  sub_100007214(v463, &qword_10060EAB8, &qword_1004E22B0);
  return sub_100007214(v461, &qword_10060EAC8, &qword_1004E22C0);
}

uint64_t sub_100356024@<X0>(uint64_t a1@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_100356234(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = sub_1004BC4B4();
  v9.n128_f64[0] = (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10035DBFC(a2, v5, v9, type metadata accessor for Collaboration.Flow.View);
  sub_1004BC474();
  v10 = sub_1004BC464();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_1002E0EEC(0, 0, v7, &unk_1004E23B0, v12);

  return result;
}

uint64_t sub_100356414()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002681F4;

  return sub_1003564C4(0);
}

uint64_t sub_1003564C4(char a1)
{
  v2[10] = v1;
  v2[11] = sub_100003ABC(&qword_10060EB80, &qword_1004E2378);
  v2[12] = swift_task_alloc();
  v4 = sub_1004BBA84();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_1004BC474();
  v2[17] = sub_1004BC464();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_10035669C;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_100356A5C;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_10035669C()
{
  *(*v1 + 152) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10035749C;
  }

  else
  {
    v4 = sub_1003567F4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003567F4()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_1004B8834();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100356FC8;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
    sub_1004BA424();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_10035720C;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_100356A5C(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100356BA0, v3, v2);
}

uint64_t sub_100356BA0()
{
  if (*(v0 + 35) == 1)
  {

    sub_10035EA78();
    v1 = swift_allocError();
    *v2 = xmmword_1004D9C10;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
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
        sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
        sub_1004BA434();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_10035EBBC(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_100007214(v19, &qword_10060EB80, &qword_1004E2378);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v11 = sub_1004B8834();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100356FC8;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
    sub_1004BA424();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_10035720C;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_100356FC8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004BC3E4();
    v4 = v3;
    v5 = sub_10035764C;
  }

  else
  {

    v2 = sub_1004BC3E4();
    v4 = v6;
    v5 = sub_100357118;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100357118()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10035720C;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_10035720C()
{
  *(*v1 + 208) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_100357808;
  }

  else
  {
    v4 = sub_100357364;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100357364()
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
  sub_100007214(v5, &qword_10060EB80, &qword_1004E2378);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10035749C()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
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
      sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80, &qword_1004E2378);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10035764C()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
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
      sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80, &qword_1004E2378);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100357808()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
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
      sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80, &qword_1004E2378);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003579B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v62 = a2;
  v58 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  __chkstk_darwin();
  v59 = v2;
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA214();
  __chkstk_darwin();
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v46 - v4;
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  sub_1004BBDA4();
  v49 = *(v6 + 16);
  v48 = v6 + 16;
  v49(v8, v10, v5);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v11 = qword_100618C60;
  v12 = qword_100618C60;
  v63 = v11;
  v13 = v12;
  sub_1004B6DF4();
  v14 = v13;
  v15 = sub_1004BBED4();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v47 = v18;
  v66 = v15;
  v67 = v17;
  v46 = sub_1002C4D1C();
  v19 = sub_1004B9D84();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v55 = v22;
  sub_1004BBDA4();
  v23 = v49;
  v49(v8, v10, v5);
  sub_1004B6DF4();
  v24 = sub_1004BBED4();
  v26 = v25;
  v18(v10, v5);
  v66 = v24;
  v67 = v26;
  v27 = sub_1004B9D84();
  v52 = v28;
  v53 = v27;
  v50 = v29 & 1;
  v51 = v30;
  sub_1004BBDA4();
  v23(v8, v10, v5);
  sub_1004B6DF4();
  v31 = sub_1004BBED4();
  v33 = v32;
  v47(v10, v5);
  v66 = v31;
  v67 = v33;
  v34 = sub_1004B9D84();
  v36 = v35;
  v38 = v37;
  v63 = type metadata accessor for Collaboration.Flow.View;
  v39 = v61;
  sub_10035DBFC(v65, v61, v40, type metadata accessor for Collaboration.Flow.View);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  sub_10035C6E4(v39, v42 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_1004BA204();
  sub_10002FA24(v34, v36, v38 & 1);

  sub_10035DBFC(v65, v39, v43, v63);
  v44 = swift_allocObject();
  sub_10035C6E4(v39, v44 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_1004BA1F4();

  return sub_1004BA1D4();
}

double sub_100357FAC(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = sub_1004BC4B4();
  v8.n128_f64[0] = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_10035DBFC(a1, v4, v8, type metadata accessor for Collaboration.Flow.View);
  sub_1004BC474();
  v9 = sub_1004BC464();
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v4, v11 + v10, type metadata accessor for Collaboration.Flow.View);
  sub_1002E0EEC(0, 0, v6, &unk_1004E2390, v11);

  return result;
}

uint64_t sub_10035818C()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100268008;

  return sub_1003564C4(1);
}

uint64_t sub_10035823C(uint64_t a1)
{
  sub_100003ABC(&qword_10060EB80, &qword_1004E2378);
  __chkstk_darwin();
  v3 = (&v8 - v2);
  v4 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_10035EA78();
  v5 = swift_allocError();
  *v6 = xmmword_1004D9C10;
  *(v6 + 16) = 3;
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v3);
  return sub_100007214(v3, &qword_10060EB80, &qword_1004E2378);
}

uint64_t sub_100358340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80, &qword_1004E2378);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100358414, v7, v6);
}

uint64_t sub_100358414()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_1004B8834();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10035863C;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10035880C;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10035863C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100358A44;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100358758;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100358758()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10035880C;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10035880C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100358B28;
  }

  else
  {
    v5 = sub_100358948;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358948()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1004BBA84();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_100007214(v2, &qword_10060EB80, &qword_1004E2378);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358A44()
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

  sub_100007214(v3, &qword_10060EB80, &qword_1004E2378);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358B28()
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

  sub_100007214(v3, &qword_10060EB80, &qword_1004E2378);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80, &qword_1004E2378);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100358CD8, v7, v6);
}

uint64_t sub_100358CD8()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100358D94;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_100358D94()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100358ED0;
  }

  else
  {
    v5 = sub_10035FDD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358ED0()
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

  sub_100007214(v3, &qword_10060EB80, &qword_1004E2378);

  v6 = v0[1];

  return v6();
}

double sub_100358FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
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
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = sub_1004BC4B4();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_10035DBFC(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_1004BC474();
  v19 = sub_1004BC464();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v14, v22 + v20, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v22 + v21, v11, v8);
  sub_1002E0EEC(0, 0, v16, v25, v22);

  return result;
}

uint64_t sub_100359260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80, &qword_1004E2378);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100359334, v7, v6);
}

uint64_t sub_100359334()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1003593F0;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_1003593F0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10035FDD0;
  }

  else
  {
    v5 = sub_10035FDD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultIdentityStore];
  sub_10035FA30(0, v3);
  v4 = static ICUserIdentity.active.getter();
  v10 = 0;
  v5 = [v2 getPropertiesForUserIdentity:v4 error:&v10];

  if (v5)
  {
    v6 = v10;
    v7 = [v5 isU18MinorAccount];
  }

  else
  {
    v8 = v10;
    sub_1004B69B4();

    swift_willThrow();

    return 0;
  }

  return v7;
}

uint64_t sub_100359644()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_1003596A8@<X0>(uint64_t *a1@<X8>)
{
  sub_100003ABC(&qword_10060E4B8, &qword_1004E1B50);
  __chkstk_darwin();
  v3 = &v8 - v2;
  sub_1004BA324();
  sub_1004B9374();
  v4 = sub_1004B9384();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_1004BA354();

  sub_100007214(v3, &qword_10060E4B8, &qword_1004E1B50);
  v6 = sub_1004BA234();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t sub_1003597E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v2 = sub_1004B9B04();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin();
  v129 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BBE14();
  v128 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v112 - v9;
  v115 = sub_100003ABC(&qword_10060E9E8, &qword_1004E2140);
  __chkstk_darwin();
  v12 = &v112 - v11;
  v116 = sub_100003ABC(&qword_10060E9F0, &qword_1004E2148);
  __chkstk_darwin();
  v119 = &v112 - v13;
  v14 = sub_100003ABC(&qword_10060E9F8, &qword_1004E2150);
  v126 = *(v14 - 8);
  v127 = v14;
  __chkstk_darwin();
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v112 - v16;
  v17 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060EA00, &qword_1004E2158);
  __chkstk_darwin();
  v133 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v112 - v21;
  v23 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v125 = v17;
  swift_storeEnumTagMultiPayload();
  v124 = v23;
  LOBYTE(v23) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v135 + v23), v19);
  sub_10035C664(v19, type metadata accessor for Collaboration.Flow);
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
    sub_1004BBDA4();
    v26 = v128;
    (*(v128 + 16))(v8, v10, v6);
    v27 = v26;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v28 = qword_100618C60;
    sub_1004B6DF4();
    v29 = sub_1004BBED4();
    v31 = v30;
    (*(v27 + 8))(v10, v6);
    *&v158 = v29;
    *(&v158 + 1) = v31;
    sub_1002C4D1C();
    v32 = sub_1004B9D84();
    v113 = v33;
    v114 = v34;
    v36 = v35;
    v37 = &v12[*(sub_100003ABC(&qword_10060EA08, &qword_1004E2160) + 36)];
    v38 = *(sub_100003ABC(&qword_10060EA10, &qword_1004E2168) + 28);
    v39 = enum case for Text.Case.uppercase(_:);
    v40 = sub_1004B9CC4();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    v42 = v113;
    *v12 = v32;
    *(v12 + 1) = v42;
    v12[16] = v36 & 1;
    *(v12 + 3) = v114;
    v43 = sub_1004B9B44();
    KeyPath = swift_getKeyPath();
    v45 = &v12[*(sub_100003ABC(&qword_10060EA18, &qword_1004E21D0) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = sub_1004BA2E4();
    v47 = swift_getKeyPath();
    v48 = &v12[*(v115 + 36)];
    *v48 = v47;
    v48[1] = v46;
    sub_1004BA764();
    sub_1004B8E94();
    v49 = v119;
    sub_100025B04(v12, v119, &qword_10060E9E8, &qword_1004E2140);
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
    LOBYTE(v46) = sub_1004B9954();
    sub_1004B86C4();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v117;
    sub_100025B04(v49, v117, &qword_10060E9F0, &qword_1004E2148);
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
    sub_100025B04(v64, v118, &qword_10060E9F8, &qword_1004E2150);
    v22 = v132;
    sub_100025B04(v65, v132, &qword_10060E9F8, &qword_1004E2150);
    v24 = 0;
  }

  v67 = v130;
  v66 = v131;
  v68 = v129;
  (*(v126 + 56))(v22, v24, 1, v25);
  v69 = v135;

  sub_1003658D8(&v174);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v69 + v124), v19);
  sub_10035C664(v19, type metadata accessor for Collaboration.Flow);
  if (v69)
  {
    sub_10035D94C(&v158);
  }

  else
  {
    v70 = v121;
    sub_1004BBDA4();
    v71 = v128;
    v72 = v123;
    (*(v128 + 16))(v120, v70, v123);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v73 = qword_100618C60;
    sub_1004B6DF4();
    v74 = sub_1004BBED4();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    *&v158 = v74;
    *(&v158 + 1) = v76;
    sub_1002C4D1C();
    v135 = sub_1004B9D84();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = swift_getKeyPath();
    LOBYTE(v74) = v80 & 1;
    LOBYTE(v158) = v80 & 1;
    sub_1004B9B44();
    (*(v67 + 104))(v68, enum case for Font.Leading.tight(_:), v66);
    v84 = sub_1004B9B34();

    (*(v67 + 8))(v68, v66);
    v85 = swift_getKeyPath();
    v86 = sub_1004BA2E4();
    v87 = swift_getKeyPath();
    v88 = sub_1004B9954();
    sub_1004B86C4();
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
  sub_10000F778(v22, v133, &qword_10060EA00, &qword_1004E2158);
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
  sub_10000F778(v94, v134, &qword_10060EA00, &qword_1004E2158);
  v96 = sub_100003ABC(&qword_10060EA20, &qword_1004E2208);
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
  sub_10035D89C(v145, &v149);
  sub_10000F778(v146, &v149, &qword_10060EA28, &unk_1004E2210);
  sub_100007214(v22, &qword_10060EA00, &qword_1004E2158);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v149 = v136;
  v150 = v137;
  sub_100007214(&v149, &qword_10060EA28, &unk_1004E2210);
  v148[2] = v176;
  v148[3] = v177;
  v148[4] = v178;
  v148[0] = v174;
  v148[1] = v175;
  sub_10035D8F8(v148);
  return sub_100007214(v94, &qword_10060EA00, &qword_1004E2158);
}

uint64_t sub_10035A460@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_1004B9344();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  sub_100003ABC(a3, a4);
  return a5(v6);
}

uint64_t sub_10035A4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_1004B9184();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin();
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1004B8E74();
  __chkstk_darwin();
  v74 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_100003ABC(&qword_10060E940, &qword_1004E2028);
  __chkstk_darwin();
  v75 = &v63 - v6;
  v7 = sub_100003ABC(&qword_10060E948, &qword_1004E2030) - 8;
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = sub_100003ABC(&qword_10060E950, &qword_1004E2038) - 8;
  __chkstk_darwin();
  v12 = &v63 - v11;
  v67 = sub_100003ABC(&qword_10060E958, &qword_1004E2040);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v68 = sub_100003ABC(&qword_10060E960, &qword_1004E2048);
  __chkstk_darwin();
  v16 = &v63 - v15;
  v17 = sub_100003ABC(&qword_10060E968, &qword_1004E2050);
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
  sub_10035D344(v1, v87);
  sub_100003ABC(&qword_10060E970, &qword_1004E2058);
  sub_10035D37C();
  sub_1004BA474();
  v90 = *(v1 + 40);
  v87[0] = *(v1 + 40);
  v63 = sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  v22 = v80;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_10035D574;
  v25[2] = v24;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v9, v12, &qword_10060E948, &qword_1004E2030);
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
    v31 = sub_1004BA234();
  }

  else
  {
    v31 = sub_1004BA2B4();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  sub_100025B04(v12, v14, &qword_10060E950, &qword_1004E2038);
  v34 = &v14[*(v67 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v70;
  if (qword_100609CB8 != -1)
  {
    swift_once();
  }

  v36 = *&qword_10060E630;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v14, v16, &qword_10060E958, &qword_1004E2040);
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
  sub_10035D678(&qword_10060E990, &qword_10060E960, &qword_1004E2048, sub_10035D594);
  sub_1004BA054();
  sub_100007214(v16, &qword_10060E960, &qword_1004E2048);
  v41 = v36 * 0.5;
  v42 = *(v69 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_1004B92C4();
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

    v47 = sub_1004BC994();
    v48 = sub_1004B9904();
    sub_1004B7F84(v47, &_mh_execute_header, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v64;
    sub_1004B9174();
    swift_getAtKeyPath();
    sub_100007214(&v88, &qword_10060E9C0, &qword_1004E20E8);
    (*(v65 + 8))(v49, v66);
    if (v79)
    {
      goto LABEL_11;
    }
  }

  v79 = v90;
  sub_1004BA424();
  if (v78 != 1)
  {
    v51 = [objc_opt_self() systemFillColor];
    v50 = sub_1004BA304();
    goto LABEL_15;
  }

LABEL_11:
  if (v30)
  {
    v50 = sub_1004BA294();
  }

  else
  {
    v50 = sub_1004BA234();
  }

LABEL_15:
  v52 = v50;
  v53 = v75;
  sub_10035C6E4(v45, v75, &type metadata accessor for RoundedRectangle);
  v54 = v73;
  *(v53 + *(v73 + 52)) = v52;
  *(v53 + *(v54 + 56)) = 256;
  v55 = sub_1004BA754();
  v57 = v56;
  v58 = sub_100003ABC(&qword_10060E9C8, &qword_1004E20F0);
  v59 = v76;
  v60 = v76 + *(v58 + 36);
  sub_100025B04(v53, v60, &qword_10060E940, &qword_1004E2028);
  v61 = (v60 + *(sub_100003ABC(&qword_10060E9D0, &qword_1004E20F8) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v71 + 32))(v59, v35, v72);
}

uint64_t sub_10035ADD8(uint64_t a1)
{
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA434();
  return (*(a1 + 24))(a1);
}

uint64_t sub_10035AE44(uint64_t a1)
{
  sub_100003ABC(&qword_10060E9D8, &qword_1004E2100);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = sub_100003ABC(&qword_10060E988, &unk_1004E2060);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  if (v23 == 1)
  {
    sub_1004B8904();
    v7 = sub_1004BA2B4();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    sub_10000F778(v6, v3, &qword_10060E988, &unk_1004E2060);
    swift_storeEnumTagMultiPayload();
    sub_100003ABC(&qword_10060E200, &qword_1004E1850);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200, &qword_1004E1850);
    sub_1004B9514();
    return sub_100007214(v6, &qword_10060E988, &unk_1004E2060);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    sub_1002C4D1C();

    v12 = sub_1004B9D84();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_1004BA754();
    sub_1004B8E94();
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
    sub_100003ABC(&qword_10060E200, &qword_1004E1850);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200, &qword_1004E1850);
    return sub_1004B9514();
  }
}

void sub_10035B168(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = 50.0;
  if (v3 == 6)
  {
    v4 = 44.0;
  }

  qword_10060E630 = *&v4;
}

void sub_10035B220(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  byte_10060E638 = v3 == 6;
}

uint64_t sub_10035B284()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_10060E638)
  {
    v0 = 140.0;
  }

  qword_10060E640 = *&v0;
  return result;
}

uint64_t sub_10035B2FC()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_10060E638)
  {
    v0 = 16.0;
  }

  qword_10060E648 = *&v0;
  return result;
}

uint64_t sub_10035B364()
{
  v0 = sub_1004B9B04();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100609CC0 != -1)
  {
    swift_once();
  }

  if (byte_10060E638 == 1)
  {
    result = sub_1004B9A34();
    v5 = result;
  }

  else
  {
    sub_1004B9A44();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_1004B9B34();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_10060E650 = v5;
  return result;
}

uint64_t sub_10035B4C0()
{
  sub_100003ABC(&qword_10060DF60, &qword_1004DFD10);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (qword_100609CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B9A64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_1004B9AB4();
  result = sub_100007214(v1, &qword_10060DF60, &qword_1004DFD10);
  qword_10060E658 = v3;
  return result;
}

uint64_t sub_10035B5FC()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_10060E638)
  {
    v0 = 9.0;
  }

  qword_10060E660 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = sub_1004BB6C4();
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
      v13 = sub_1004BBC44();

      sub_100350BC8(v13);
      v15 = v14;

      if (v15)
      {
        sub_1004BB644();
        sub_100007214(v7, &unk_10060EBE0, &unk_1004DBE60);
        sub_100025B04(v5, v7, &unk_10060EBE0, &unk_1004DBE60);
      }
    }
  }

  v16 = [v2 name];
  v17 = sub_1004BBE64();
  v19 = v18;

  v20 = [v2 handle];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1004BBE64();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_10000F778(v7, v5, &unk_10060EBE0, &unk_1004DBE60);
  v25 = [v2 collaborationAllowed];
  sub_100007214(v7, &unk_10060EBE0, &unk_1004DBE60);
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v27 = *(v26 + 24);
  (v31)(a1 + v27, 1, 1, v32);
  v28 = *(v26 + 28);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = v22;
  a1[3] = v24;
  result = sub_100350F88(v5, a1 + v27);
  *(a1 + v28) = v25;
  return result;
}

uint64_t sub_10035B92C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9114();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10035B998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9154();
  *a1 = result;
  return result;
}

uint64_t sub_10035B9F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9054();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = sub_1004BB7D4();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_10060E680, &qword_1004E1D88);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = sub_100003ABC(&qword_10060EA40, &qword_1004E2230);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = sub_1004B6B04();
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
  sub_100003ABC(&qword_10060EA48, &qword_1004E2238);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  sub_10035DBFC(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  sub_10035DBFC(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    sub_10035DBFC(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = sub_100003ABC(&qword_10060E678, &qword_1004E1D80);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      sub_100007214(v17, &qword_10060E680, &qword_1004E1D88);
LABEL_10:
      sub_100007214(v20, &qword_10060EA48, &qword_1004E2238);
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
    sub_100025B04(v17, v63, &qword_10060E680, &qword_1004E1D88);
    sub_100025B04(v22, v42 + v41, &qword_10060E680, &qword_1004E1D88);
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
        sub_100007214(v42, &qword_10060E680, &qword_1004E1D88);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      sub_10000F778(v42, v58, &qword_10060E680, &qword_1004E1D88);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        sub_10035C6E4(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v49, v51);
        sub_10035C664(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10035C664(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100007214(v42, &qword_10060E680, &qword_1004E1D88);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = sub_1004B6A84();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            sub_10035C664(v20, type metadata accessor for Collaboration.Flow);
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
        sub_10035C664(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_10035C664(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    sub_100007214(v42, &qword_10060EA40, &qword_1004E2230);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10035C664(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_10035DBFC(v20, v15, v25, type metadata accessor for Collaboration.Flow);
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
  v30 = sub_1004BB754();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  sub_10035C664(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_100003ABC(&qword_10060E048, &qword_1004E23F0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (sub_1004BD9C4() & 1) == 0)
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
  sub_10000F778(a1 + v15, v12, &unk_10060EBE0, &unk_1004DBE60);
  sub_10000F778(a2 + v15, &v12[v16], &unk_10060EBE0, &unk_1004DBE60);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  sub_10000F778(v12, v9, &unk_10060EBE0, &unk_1004DBE60);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    sub_100007214(v12, &qword_10060E048, &qword_1004E23F0);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_10035FA7C(&qword_10060E050, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = sub_1004BBD84();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_10035C610()
{
  result = qword_10060E670;
  if (!qword_10060E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E670);
  }

  return result;
}

uint64_t sub_10035C664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10035C6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10035C768(uint64_t a1)
{
  sub_10035C7DC(319);
  if (v1 <= 0x3F)
  {
    sub_1004BB7D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10035C7DC(uint64_t a1)
{
  if (!qword_10060E718)
  {
    sub_100003B68(&qword_10060E680, &qword_1004E1D88);
    sub_1004B6B04();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10060E718);
    }
  }
}

uint64_t sub_10035C874(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10035C944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10035C9F4(uint64_t a1)
{
  sub_10035CE5C(319, &unk_10060E7B0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10035CAAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10035CAAC(uint64_t a1)
{
  if (!qword_10060D970)
  {
    sub_1004BB6C4();
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_10060D970);
    }
  }
}

uint64_t sub_10035CB18(uint64_t a1, uint64_t a2, int *a3)
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

  v10 = sub_1004BBA84();
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

uint64_t sub_10035CC34(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    result = sub_1004BBA84();
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

void sub_10035CD38(uint64_t a1)
{
  sub_10035CE5C(319, &unk_10060C188, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      sub_1004BBA84();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager(319, v3);
        if (v4 <= 0x3F)
        {
          sub_10032596C(319);
          if (v5 <= 0x3F)
          {
            sub_100316910();
            if (v6 <= 0x3F)
            {
              sub_10035CEAC(319);
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

void sub_10035CE5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10035CEAC(uint64_t a1)
{
  if (!qword_10060E850)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = sub_1004B8844();
    if (!v2)
    {
      atomic_store(v1, &qword_10060E850);
    }
  }
}

__n128 sub_10035CF90(uint64_t a1, uint64_t a2)
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

uint64_t sub_10035CFB4(uint64_t a1, int a2)
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

uint64_t sub_10035CFFC(uint64_t result, int a2, int a3)
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

uint64_t sub_10035D074(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_10035D134(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10035D1F8(uint64_t a1)
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

uint64_t sub_10035D2E0()
{

  sub_10034C67C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10035D37C()
{
  result = qword_10060E978;
  if (!qword_10060E978)
  {
    sub_100003B68(&qword_10060E970, &qword_1004E2058);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200, &qword_1004E1850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E978);
  }

  return result;
}

unint64_t sub_10035D428()
{
  result = qword_10060E980;
  if (!qword_10060E980)
  {
    sub_100003B68(&qword_10060E988, &unk_1004E2060);
    sub_1000206D4(&qword_10060DDC0, &qword_10060DDC8, &qword_1004E12E8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E980);
  }

  return result;
}

uint64_t sub_10035D50C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9114();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10035D594()
{
  result = qword_10060E998;
  if (!qword_10060E998)
  {
    sub_100003B68(&qword_10060E958, &qword_1004E2040);
    sub_10035D678(&qword_10060E9A0, &qword_10060E950, &qword_1004E2038, sub_10035D6FC);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E998);
  }

  return result;
}

uint64_t sub_10035D678(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10035D6FC()
{
  result = qword_10060E9A8;
  if (!qword_10060E9A8)
  {
    sub_100003B68(&qword_10060E948, &qword_1004E2030);
    sub_1000206D4(&qword_10060E9B0, &qword_10060E9B8, &qword_1004E20D8, &protocol conformance descriptor for Button<A>);
    sub_1000206D4(&qword_10060E368, &qword_10060E370, &qword_1004E20E0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E9A8);
  }

  return result;
}

uint64_t sub_10035D7E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9154();
  *a1 = result;
  return result;
}

uint64_t sub_10035D848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9054();
  *a1 = result;
  return result;
}

double sub_10035D94C(uint64_t a1)
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

unint64_t sub_10035D968()
{
  result = qword_10060EAD8;
  if (!qword_10060EAD8)
  {
    sub_100003B68(&qword_10060EAD0, &unk_1004E22C8);
    sub_10035DA20();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAD8);
  }

  return result;
}

unint64_t sub_10035DA20()
{
  result = qword_10060EAE0;
  if (!qword_10060EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAE0);
  }

  return result;
}

unint64_t sub_10035DA74()
{
  result = qword_10060EAF8;
  if (!qword_10060EAF8)
  {
    sub_100003B68(&qword_10060EAF0, &qword_1004E22E0);
    sub_10035DB4C(&qword_10060EB00, &qword_10060EB08, &qword_1004E22E8);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAF8);
  }

  return result;
}

uint64_t sub_10035DB4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10035DBBC()
{

  return swift_deallocObject();
}

uint64_t sub_10035DBFC(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10035DCC0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004BB7D4();
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
      v12 = sub_1004BB6C4();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    v16 = sub_1004B6B04();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10035DC68(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_10035E050(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_100358FAC(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_10035E148()
{
  result = qword_10060EB20;
  if (!qword_10060EB20)
  {
    sub_100003B68(&qword_10060EA70, &qword_1004E2268);
    sub_1000206D4(&qword_10060EB28, &qword_10060EA78, &qword_1004E2270, &protocol conformance descriptor for TupleView<A>);
    sub_10035E200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB20);
  }

  return result;
}

unint64_t sub_10035E200()
{
  result = qword_10060EB30;
  if (!qword_10060EB30)
  {
    sub_100003B68(&qword_10060EB38, &qword_1004E2338);
    sub_10035E2B8();
    sub_1000206D4(&qword_10060E368, &qword_10060E370, &qword_1004E20E0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB30);
  }

  return result;
}

unint64_t sub_10035E2B8()
{
  result = qword_10060EB40;
  if (!qword_10060EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB40);
  }

  return result;
}

uint64_t sub_10035E30C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004BB7D4();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100003ABC(&qword_10060E678, &qword_1004E1D80);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10035DC68(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_10035E6A0(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100356234(a1, v4);
}

uint64_t sub_10035E718()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_1004BB7D4();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004BB6C4();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    v10 = sub_1004B6B04();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1004BBA84();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_10035DC68(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_10035EA04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10035EA78()
{
  result = qword_10060EB88;
  if (!qword_10060EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB88);
  }

  return result;
}

uint64_t sub_10035EACC()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_10035818C();
}

double sub_10035EBBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10035EBE8()
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
    v12 = sub_1004BB7D4();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_1004BB6C4();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    v11 = sub_1004B6B04();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1004BBA84();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_10035DC68(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_10035EEAC()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100356414();
}

uint64_t sub_10035EF9C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004BB7D4();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = sub_100003ABC(&qword_10060E678, &qword_1004E1D80);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10035DC68(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_10035F2EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004B6B04() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100358340(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10035F440(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004BB7D4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100359260(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10035F590()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004BB7D4();
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
      v12 = sub_1004BB6C4();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(sub_100003ABC(&qword_10060E678, &qword_1004E1D80) + 48);
    v16 = sub_1004B6B04();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_10035DC68(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_10035F8E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004BB7D4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100358C04(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_10035FA30(uint64_t a1, uint64_t a2)
{
  result = qword_10060EB90;
  if (!qword_10060EB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060EB90);
  }

  return result;
}

uint64_t sub_10035FA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10035FB34()
{
  result = qword_10060EBA8;
  if (!qword_10060EBA8)
  {
    sub_100003B68(&qword_10060E9C8, &qword_1004E20F0);
    sub_100003B68(&qword_10060E960, &qword_1004E2048);
    sub_10035D678(&qword_10060E990, &qword_10060E960, &qword_1004E2048, sub_10035D594);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&qword_10060EBB0, &qword_10060E9D0, &qword_1004E20F8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBA8);
  }

  return result;
}

unint64_t sub_10035FCA4()
{
  result = qword_10060EBC8;
  if (!qword_10060EBC8)
  {
    sub_100003B68(&qword_10060EBD0, qword_1004E2418);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBC8);
  }

  return result;
}

unint64_t sub_10035FD60()
{
  result = qword_10060EBD8;
  if (!qword_10060EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBD8);
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
  sub_1003658D8(v5);
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
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000F778(a1, &v7 - v4, &unk_10060EBE0, &unk_1004DBE60);
  sub_10000F778(v5, v3, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004B8564();
  sub_100007214(a1, &unk_10060EBE0, &unk_1004DBE60);
  return sub_100007214(v5, &unk_10060EBE0, &unk_1004DBE60);
}

uint64_t sub_10035FF74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_100360038()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_1003600AC(void *a1)
{
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  sub_1004B85B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = sub_1004BB6C4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000F778(v6, v4, &unk_10060EBE0, &unk_1004DBE60);

    sub_1004B85B4();

    sub_100007214(v6, &unk_10060EBE0, &unk_1004DBE60);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  v75 = *(v0 - 8);
  v76 = v0;
  __chkstk_darwin();
  v74 = &v68 - v1;
  v73 = sub_100003ABC(&qword_10060EBF8, &qword_1004E2498);
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v4 = sub_100003ABC(&qword_10060EC00, &qword_1004E24A0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v68 - v6;
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v68 - v9;
  __chkstk_darwin();
  v11 = &v68 - v10;
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = sub_1004BB6C4();
  v77 = *(v15 - 8);
  v78 = v15;
  (*(v77 + 56))(v13, 1, 1);
  sub_10000F778(v13, v11, &unk_10060EBE0, &unk_1004DBE60);
  v68 = v11;
  sub_1004B8564();
  v16 = v13;
  sub_100007214(v13, &unk_10060EBE0, &unk_1004DBE60);
  v17 = v72;
  (*(v5 + 32))(v72 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1004B8564();
  (*(v71 + 32))(v17 + v18, v3, v73);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v80 = 0;
  sub_100003ABC(&qword_10060A770, &qword_1004DBB28);
  v20 = v74;
  sub_1004B8564();
  (*(v75 + 32))(v17 + v19, v20, v76);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = sub_1004BBE64();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v26;
    v81 = v28;

    sub_1004B85B4();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = sub_1004BBC44();

        sub_100350BC8(v32);
        v34 = v33;

        if (v34)
        {
          sub_1004BB644();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10000F778(v16, v68, &unk_10060EBE0, &unk_1004DBE60);

          sub_1004B85B4();
          sub_100007214(v16, &unk_10060EBE0, &unk_1004DBE60);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

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
    sub_1004B85A4();

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {

LABEL_25:
      sub_100007214(v40, &unk_10060EBE0, &unk_1004DBE60);
      return v17;
    }

    sub_100007214(v40, &unk_10060EBE0, &unk_1004DBE60);
  }

  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1004C4D40;
  *(v41 + 32) = CNContactThumbnailImageDataKey;
  v79 = v41;
  v42 = objc_opt_self();
  v43 = CNContactThumbnailImageDataKey;
  v44 = [v42 descriptorForRequiredKeysForStyle:0];
  sub_1004BC274();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  v45 = [objc_allocWithZone(CNContactStore) init];
  sub_100003ABC(&qword_10060EC28, &qword_1004E2548);
  isa = sub_1004BC284().super.isa;

  v80 = 0;
  v47 = [v45 _ios_meContactWithKeysToFetch:isa error:&v80];

  v48 = v80;
  if (!v47)
  {
    v66 = v80;
    sub_1004B69B4();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  sub_1004B85A4();

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
      v55 = sub_1004BBE64();
      v57 = v56;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v55;
      v81 = v57;

      sub_1004B85B4();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v69;
  sub_1004B85A4();

  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {

    goto LABEL_25;
  }

  sub_100007214(v40, &unk_10060EBE0, &unk_1004DBE60);
  v58 = [v47 thumbnailImageData];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1004B6B74();
    v62 = v61;

    v63 = objc_allocWithZone(UIImage);
    sub_10003E428(v60, v62);
    v64 = sub_1004B6B64().super.isa;
    v65 = [v63 initWithData:v64];

    sub_100004D90(v60, v62);
    sub_1003600AC(v65);

    sub_100004D90(v60, v62);
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
  sub_1004B85A4();

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
  sub_1004B85A4();

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

double sub_100360FC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
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
  sub_1004B85A4();

  v4 = sub_1004BB6C4();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_100007214(v2, &unk_10060EBE0, &unk_1004DBE60);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100003ABC(&qword_10060EC00, &qword_1004E24A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100003ABC(&qword_10060EBF8, &qword_1004E2498);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100003ABC(&qword_10060EC00, &qword_1004E24A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100003ABC(&qword_10060EBF8, &qword_1004E2498);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_10036140C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context(uint64_t a1)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100365A78();

  return sub_1004B8B74();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_1004B6E64();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BBE14();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = sub_100003ABC(&qword_10060EC38, &qword_1004E2598) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_100003ABC(&qword_10060EC40, &qword_1004E25A0) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = sub_100003ABC(&qword_10060EC48, &qword_1004E25A8) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = sub_100003ABC(&qword_10060EC50, &qword_1004E25B0);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = sub_100003ABC(&qword_10060EC58, &qword_1004E25B8);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = sub_100003ABC(&qword_10060EC60, &qword_1004E25C0);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = sub_1004B9204();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = sub_100003ABC(&qword_10060EC68, &qword_1004E25C8);
  sub_100361E30(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = sub_1004BA304();
  v24 = sub_1004B9964();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v9, v12, &qword_10060EC38, &qword_1004E2598);
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
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v12, v15, &qword_10060EC40, &qword_1004E25A0);
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
  v37 = *(sub_1004B8E74() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_1004B92C4();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(sub_100003ABC(&unk_10060EC70, &qword_1004E2360) + 36)] = 256;
  sub_100025B04(v15, v35, &qword_10060EC48, &qword_1004E25A8);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  v66[1] = v66;
  v82 = v45;
  sub_100003ABC(&qword_10060EC80, &qword_1004E25D0);
  sub_100365AD8();
  v46 = sub_1002C4D1C();
  sub_1000206D4(&qword_10060ECB8, &qword_10060EC80, &qword_1004E25D0, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  sub_1004B9FB4();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  sub_100007214(v48, &qword_10060EC50, &qword_1004E25B0);
  v53 = sub_1004BA754();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  sub_100364714(v50, v57);
  v58 = (v57 + *(sub_100003ABC(&qword_10060ECC0, &qword_1004E25E8) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  sub_1004BBDA4();
  (*(v52 + 16))(v51, v49, v59);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v60 = qword_100618C60;
  sub_1004B6DF4();
  v61 = sub_1004BBED4();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  sub_1004BA444();
  v79 = v66;
  __chkstk_darwin();
  sub_100003ABC(&qword_10060ECC8, &qword_1004E25F0);
  sub_100365D5C();
  sub_1000206D4(&qword_10060ECE0, &qword_10060ECC8, &qword_1004E25F0, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  sub_1004BA094();

  return sub_100007214(v64, &qword_10060EC60, &qword_1004E25C0);
}

uint64_t sub_100361E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = sub_100003ABC(&qword_10060EEE8, &qword_1004E27C8);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  sub_100003ABC(&unk_10060EEF0, &unk_1004E27D0);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  sub_1004B6E64();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1004BBE14();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = sub_100003ABC(&qword_10060DCB0, &qword_1004E1180);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = sub_100003ABC(&qword_10060EF00, &qword_1004E27E0);
  __chkstk_darwin();
  v224 = (v188 - v11);
  sub_100003ABC(&qword_10060EF08, &qword_1004E27E8);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = sub_1004BA334();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_100003ABC(&unk_10060EF10, &qword_1004E27F0);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = sub_1004BB634();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004B7D94();
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
  v216 = sub_1004B7D04();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = v188 - v28;
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = sub_100003ABC(&qword_10060EF28, &unk_1004E27F8);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = sub_100003ABC(&unk_10060EF30, &qword_1004E22F0);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = sub_100003ABC(&qword_10060EA58, &qword_1004E2248);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = sub_100003ABC(&qword_10060EF40, &qword_1004E2250);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  sub_100003ABC(&qword_10060EF48, &qword_1004E2808);
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
  sub_1004B85A4();

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    sub_1004BA314();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = sub_1004BA384();

    (*(v47 + 8))(v48, v49);
    sub_1004BA754();
    sub_1004B8994();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = sub_1004B9964();
    sub_1004B86C4();
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
    sub_10000F778(&v245, v243, &qword_10060EF58, &qword_1004E2810);
    sub_100003ABC(&qword_10060EF58, &qword_1004E2810);
    sub_100366370();
    sub_10036655C();
    v65 = v221;
    sub_1004B9514();

    sub_100007214(&v245, &qword_10060EF58, &qword_1004E2810);
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
  sub_1004B85A4();

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = sub_1004BB6C4();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    sub_100007214(v68, &qword_10060DD10, &qword_1004DEE10);
    sub_100007214(v67, &unk_10060EBE0, &unk_1004DBE60);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(v68, v73 + *(v72 + 20), &qword_10060DD10, &qword_1004DEE10);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  sub_10000F778(v73, v195, &qword_10060EF20, &qword_1004D9F00);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_100007214(v76, &qword_10060EF20, &qword_1004D9F00);
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
    sub_1003667E8(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  sub_10000F778(v79, v80, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004B7D84();
  sub_100007214(v79, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004B7D34();
  v82 = v198;
  sub_10000F778(v237, v198, &qword_10060EF20, &qword_1004D9F00);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    sub_100007214(v82, &qword_10060EF20, &qword_1004D9F00);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = sub_100007084(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      sub_100007214(v93, &qword_10060DD10, &qword_1004DEE10);
    }

    goto LABEL_17;
  }

  v85 = v199;
  sub_10000F778(v82 + *(v72 + 20), v199, &qword_10060DD10, &qword_1004DEE10);
  sub_1003667E8(v82, type metadata accessor for ArtworkImage.ViewModel);
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
  sub_1004B7D14();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  sub_1004B7D44();
  v99(v97, v84);
  sub_100316C80();
  v101 = v200;
  sub_1004B7D24();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  sub_100007214(v237, &qword_10060EF20, &qword_1004D9F00);
  sub_1004BA754();
  sub_1004B8994();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  sub_100025B04(v102, v210, &unk_10060EF30, &qword_1004E22F0);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = sub_1004B9964();
  sub_1004B86C4();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  sub_100025B04(v105, v191, &qword_10060EA58, &qword_1004E2248);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  sub_100025B04(v114, v211, &qword_10060EF40, &qword_1004E2250);
  sub_10000F778(v116, v220, &qword_10060EF40, &qword_1004E2250);
  swift_storeEnumTagMultiPayload();
  sub_100003ABC(&qword_10060EF58, &qword_1004E2810);
  sub_100366370();
  sub_10036655C();
  v65 = v221;
  sub_1004B9514();
  sub_100007214(v116, &qword_10060EF40, &qword_1004E2250);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &static AccessibilityIdentifier.libraryGridCellArtwork;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v120 = String.trim()();

    v245 = v120;
    sub_1002C4D1C();
    v121 = sub_1004B9D84();
    v123 = v122;
    v125 = v124;
    v126 = sub_1004B9CD4();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    sub_10002FA24(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &static AccessibilityIdentifier.libraryGridCellArtwork;
    swift_storeEnumTagMultiPayload();
    sub_10034BC7C();
    sub_1004B9514();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    sub_1004BBDA4();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v139 = qword_100618C60;
    sub_1004B6DF4();
    v140 = sub_1004BBED4();
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
    sub_10035D89C(v144, &v245);
    sub_1002C4D1C();
    v147 = v208;
    sub_1004BA4A4();
    v148 = sub_1004BA2E4();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    sub_10000F778(v147, v150, &qword_10060DCB0, &qword_1004E1180);
    swift_storeEnumTagMultiPayload();
    sub_10034BC7C();
    sub_1004B9514();
    sub_100007214(v147, &qword_10060DCB0, &qword_1004E1180);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    sub_1004BBDA4();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v156 = v119[396];
    sub_1004B6DF4();
    v157 = sub_1004BBED4();
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
    sub_10035D89C(v161, &v245);
    sub_1002C4D1C();
    v164 = v212;
    sub_1004BA4A4();
    LOBYTE(v160) = sub_1004B99B4();
    sub_1004B86C4();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(sub_100003ABC(&qword_10060EFD0, &qword_1004E2828) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(sub_100003ABC(&qword_10060EFD8, &qword_1004E2860) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    sub_100025B04(v164, v176, &qword_10060EEE8, &qword_1004E27C8);
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
  sub_10000F778(v65, v223, &qword_10060EF48, &qword_1004E2808);
  v181 = v241;
  v182 = v230;
  sub_10000F778(v241, v230, &qword_10060EF08, &qword_1004E27E8);
  v183 = v234;
  sub_10000F778(v176, v234, &unk_10060EEF0, &unk_1004E27D0);
  v184 = v235;
  sub_10000F778(v179, v235, &qword_10060EF48, &qword_1004E2808);
  v185 = sub_100003ABC(&unk_10060EFE0, &qword_1004E2868);
  sub_10000F778(v182, v184 + v185[12], &qword_10060EF08, &qword_1004E27E8);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  sub_10000F778(v183, v184 + v185[20], &unk_10060EEF0, &unk_1004E27D0);
  sub_100007214(v176, &unk_10060EEF0, &unk_1004E27D0);
  sub_100007214(v181, &qword_10060EF08, &qword_1004E27E8);
  sub_100007214(v180, &qword_10060EF48, &qword_1004E2808);
  sub_100007214(v183, &unk_10060EEF0, &unk_1004E27D0);
  sub_100007214(v182, &qword_10060EF08, &qword_1004E27E8);
  return sub_100007214(v179, &qword_10060EF48, &qword_1004E2808);
}

uint64_t sub_100363A84@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  sub_100003ABC(&qword_10060EED8, &qword_1004E27B8);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = sub_100003ABC(&unk_10060DCC0, &qword_1004E1188);
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
  sub_1004BBDA4();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v17 = qword_100618C60;
  v18 = qword_100618C60;
  sub_1004B6DF4();
  v83 = v18;
  v19 = sub_1004BBED4();
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
  sub_10035D89C(a1, v93);
  v28 = sub_1002C4D1C();
  sub_1004BA4A4();
  sub_1004BBDA4();
  v89(v84, v10, v23);
  sub_1004B6DF4();
  v79 = v17;
  v29 = v22;
  v30 = sub_1004BBED4();
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
  sub_10035D89C(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  sub_1004BA4A4();
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
      sub_1004BBDA4();
      v40(v37, v10, v41);
      v44 = v39;
      sub_1004B6DF4();
      v45 = sub_1004BBED4();
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
      sub_10035D89C(a1, v93);
      v51 = v80;
      sub_1004BA4A4();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  sub_1004BBDA4();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  sub_1004B6DF4();
  v56 = sub_1004BBED4();
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
  sub_10035D89C(a1, v93);
  v62 = v80;
  sub_1004BA4A4();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  sub_10000F778(v92, v76, &qword_10060EED8, &qword_1004E27B8);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = sub_100003ABC(&qword_10060EEE0, &qword_1004E27C0);
  v63(&v68[v69[12]], v65, v53);
  sub_10000F778(v66, &v68[v69[16]], &qword_10060EED8, &qword_1004E27B8);
  v63(&v68[v69[20]], v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  sub_100007214(v92, &qword_10060EED8, &qword_1004E27B8);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  sub_100007214(v66, &qword_10060EED8, &qword_1004E27B8);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t sub_100364500(uint64_t a1, char a2)
{
  sub_100003ABC(&unk_10060EEC0, &qword_1004E2770);
  sub_1004BA434();
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  return sub_1004BA434();
}

uint64_t sub_10036458C(uint64_t a1)
{
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(a1 + 8);
  sub_1003600AC(0);
  v7 = sub_1004BB6C4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(v5, v3, &unk_10060EBE0, &unk_1004DBE60);

  sub_1004B85B4();
  sub_100007214(v5, &unk_10060EBE0, &unk_1004DBE60);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v6 + v8) = 1;
  return result;
}

uint64_t sub_100364714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100365A78();
  sub_1004B8B84();
  swift_getKeyPath();
  sub_1004B8B94();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  sub_100003ABC(&unk_10060EEC0, &qword_1004E2770);
  sub_1004BA444();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_100609CF0 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
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

  sub_1004BA754();
  sub_1004B8994();
  v19 = v25;
  sub_100366288(v5, v25);
  v20 = (v19 + *(sub_100003ABC(&qword_10060EED0, &qword_1004E27B0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_1003667E8(v5, type metadata accessor for ImagePicker);
}

void sub_1003649B4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

uint64_t sub_100364A34@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  sub_100003ABC(&unk_10060EE90, &qword_1004E11A0);
  __chkstk_darwin();
  v80 = &v68 - v3;
  v4 = sub_100003ABC(&unk_10060DCC0, &qword_1004E1188);
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin();
  v82 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v68 - v6;
  __chkstk_darwin();
  v77 = &v68 - v7;
  v76 = sub_100003ABC(&qword_10060EEA0, &qword_1004E2720);
  __chkstk_darwin();
  v90 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v68 - v9;
  __chkstk_darwin();
  v89 = &v68 - v10;
  sub_1004B6E64();
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BBE14();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  v79 = sub_100003ABC(&qword_10060EEA8, &qword_1004E2728);
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
  sub_1004B85A4();

  v74 = v95;
  v73 = v96;
  sub_1004BBDA4();
  v22 = *(v14 + 16);
  v87 = v14 + 16;
  v86 = v22;
  v22(v16, v18, v13);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v23 = qword_100618C60;
  v24 = qword_100618C60;
  v68 = v12;
  sub_1004B6DF4();
  v25 = v24;
  v69 = v16;
  v71 = v23;
  v26 = sub_1004BBED4();
  v28 = v27;
  v85 = *(v14 + 8);
  v85(v18, v13);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100365A78();
  sub_1004B8B84();
  swift_getKeyPath();
  sub_1004B8B94();

  v97 = v26;
  v98 = v28;
  v72 = sub_1002C4D1C();
  sub_1004BA824();
  sub_1004BBDA4();
  v29 = v69;
  v70 = v13;
  v86(v69, v18, v13);
  sub_1004B6DF4();
  v30 = sub_1004BBED4();
  v32 = v31;
  v85(v18, v13);
  v95 = v30;
  v96 = v32;
  v33 = v77;
  sub_1004BA4A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

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
  v41[1] = sub_10034F128;
  v41[2] = v38;
  v42 = v89;
  sub_100025B04(v40, v89, &qword_10060EEA0, &qword_1004E2720);
  sub_1004BBDA4();
  v43 = v70;
  v86(v29, v18, v70);
  sub_1004B6DF4();
  v44 = sub_1004BBED4();
  v46 = v45;
  v85(v18, v43);
  v97 = v44;
  v98 = v46;
  v47 = v80;
  sub_1004B86A4();
  v48 = sub_1004B86B4();
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
  sub_10035D89C(v50, &v95);
  v54 = v91;
  sub_1004BA494();
  v55 = v78;
  v56 = *(v78 + 16);
  v57 = v88;
  v58 = v79;
  v56(v88, v94, v79);
  sub_10000F778(v42, v90, &qword_10060EEA0, &qword_1004E2720);
  v59 = *(v39 + 16);
  v60 = v82;
  v61 = v93;
  v59(v82, v54, v93);
  v62 = v83;
  v56(v83, v57, v58);
  v63 = sub_100003ABC(&qword_10060EEB0, &qword_1004E2760);
  v64 = v90;
  sub_10000F778(v90, &v62[*(v63 + 48)], &qword_10060EEA0, &qword_1004E2720);
  v59(&v62[*(v63 + 64)], v60, v61);
  v65 = *(v92 + 8);
  v65(v91, v61);
  sub_100007214(v89, &qword_10060EEA0, &qword_1004E2720);
  v66 = *(v55 + 8);
  v66(v94, v58);
  v65(v60, v61);
  sub_100007214(v64, &qword_10060EEA0, &qword_1004E2720);
  return (v66)(v88, v58);
}

void sub_100365540(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1003655C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_100365644(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_10000F778(&v7, v6, &qword_10060EEB8, &qword_1004E2768);

  return sub_1004B85B4();
}

double sub_10036572C(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

uint64_t sub_1003657A8(uint64_t a1, uint64_t *a2)
{
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_10000F778(a1, &v8 - v5, &unk_10060EBE0, &unk_1004DBE60);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(v6, v4, &unk_10060EBE0, &unk_1004DBE60);

  sub_1004B85B4();
  return sub_100007214(v6, &unk_10060EBE0, &unk_1004DBE60);
}

uint64_t sub_1003658D8@<X0>(uint64_t a2@<X8>)
{
  sub_1004BA414();
  sub_1004BA414();
  sub_1004BA414();
  sub_1004BA414();
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_100365A78();
  result = sub_1004B8B74();
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

void sub_1003659FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003600AC(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context(uint64_t a1)
{
  result = qword_10060ED10;
  if (!qword_10060ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100365A78()
{
  result = qword_10060EC30;
  if (!qword_10060EC30)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EC30);
  }

  return result;
}

unint64_t sub_100365AD8()
{
  result = qword_10060EC88;
  if (!qword_10060EC88)
  {
    sub_100003B68(&qword_10060EC50, &qword_1004E25B0);
    sub_100365BEC(&qword_10060EC90, &qword_10060EC48, &qword_1004E25A8, sub_100365BBC);
    sub_1000206D4(&qword_10060B858, &unk_10060EC70, &qword_1004E2360, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EC88);
  }

  return result;
}

uint64_t sub_100365BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100365C70()
{
  result = qword_10060ECA0;
  if (!qword_10060ECA0)
  {
    sub_100003B68(&qword_10060EC38, &qword_1004E2598);
    sub_1000206D4(&qword_10060ECA8, &qword_10060ECB0, &qword_1004E25D8, &protocol conformance descriptor for HStack<A>);
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0, &qword_1004E25E0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ECA0);
  }

  return result;
}

unint64_t sub_100365D5C()
{
  result = qword_10060ECD0;
  if (!qword_10060ECD0)
  {
    sub_100003B68(&qword_10060EC60, &qword_1004E25C0);
    sub_100003B68(&qword_10060EC50, &qword_1004E25B0);
    sub_100003B68(&qword_10060EC80, &qword_1004E25D0);
    sub_100365AD8();
    sub_1002C4D1C();
    sub_1000206D4(&qword_10060ECB8, &qword_10060EC80, &qword_1004E25D0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&qword_10060ECD8, &qword_10060ECC0, &qword_1004E25E8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ECD0);
  }

  return result;
}

uint64_t sub_100365EE8(uint64_t a1, int a2)
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

uint64_t sub_100365F30(uint64_t result, int a2, int a3)
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

void sub_100365F9C(uint64_t a1)
{
  sub_100214418(319, &qword_10060ED20, &unk_10060EBE0, &unk_1004DBE60);
  if (v1 <= 0x3F)
  {
    sub_1003660D8();
    if (v2 <= 0x3F)
    {
      sub_100214418(319, &unk_10060ED30, &qword_10060A770, &qword_1004DBB28);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003660D8()
{
  if (!qword_10060ED28)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_10060ED28);
    }
  }
}

uint64_t sub_100366128()
{
  sub_100003B68(&qword_10060EC60, &qword_1004E25C0);
  sub_100003B68(&qword_10060ECC8, &qword_1004E25F0);
  sub_100365D5C();
  sub_1002C4D1C();
  sub_1000206D4(&qword_10060ECE0, &qword_10060ECC8, &qword_1004E25F0, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100366218()
{

  return swift_deallocObject();
}

uint64_t sub_100366288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100366338()
{

  return swift_deallocObject();
}

unint64_t sub_100366370()
{
  result = qword_10060EF60;
  if (!qword_10060EF60)
  {
    sub_100003B68(&qword_10060EF58, &qword_1004E2810);
    sub_100366428(&qword_10060EF68, &qword_10060EF70, &qword_1004E2818, sub_1003664D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF60);
  }

  return result;
}

uint64_t sub_100366428(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    a4();
    sub_1000206D4(&unk_10060E5F0, &qword_10060EF90, &qword_1004E1D30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003664D8()
{
  result = qword_10060EF78;
  if (!qword_10060EF78)
  {
    sub_100003B68(&unk_10060EF80, &qword_1004E2820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF78);
  }

  return result;
}

unint64_t sub_10036655C()
{
  result = qword_10060EF98;
  if (!qword_10060EF98)
  {
    sub_100003B68(&qword_10060EF40, &qword_1004E2250);
    sub_100366428(&qword_10060EFA0, &qword_10060EA58, &qword_1004E2248, sub_100366614);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF98);
  }

  return result;
}

unint64_t sub_100366614()
{
  result = qword_10060EFA8;
  if (!qword_10060EFA8)
  {
    sub_100003B68(&unk_10060EF30, &qword_1004E22F0);
    sub_100316C80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFA8);
  }

  return result;
}

uint64_t sub_10036672C()
{

  return swift_deallocObject();
}

uint64_t sub_1003667E8(uint64_t a1, uint64_t (*a2)(void))
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
  sub_100003B68(&qword_10060EFF0, &qword_1004E28A0);
  v31 = a1 + 5;
  v3 = a1[2];
  sub_1004B8D64();
  sub_1004B8D64();
  v29 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _CompositingGroupEffect;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v40 = sub_1004BA4B4();
  v41 = sub_1004B8E34();
  v42 = swift_getWitnessTable();
  v43 = sub_100366EBC();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  v24[3] = swift_getWitnessTable();
  v24[0] = sub_1004B8984();
  v27 = *(v24[0] - 8);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = sub_1004B8D64();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v24[1] = swift_getWitnessTable();
  v24[2] = sub_1004B8EA4();
  v9 = sub_1004B8D64();
  v25 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = a1[4];
  v15 = v30;
  sub_1004BA0C4();
  sub_1004B9934();
  *&v16 = v14;
  *(&v16 + 1) = *v31;
  *&v17 = v3;
  *(&v17 + 1) = v29;
  v33 = v17;
  v34 = v16;
  v35 = v15;
  sub_1004B8974();
  sub_1004BA754();
  v18 = sub_100367C90();
  v38 = v14;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24[0];
  sub_1004BA104();
  (*(v27 + 8))(v5, v20);
  (*(v26 + 8))(v8, v6);
  v21 = swift_getWitnessTable();
  v36 = v19;
  v37 = v21;
  swift_getWitnessTable();
  sub_100318364();
  v22 = *(v25 + 8);
  v22(v11, v9);
  sub_100318364();
  return (v22)(v13, v9);
}

unint64_t sub_100366EBC()
{
  result = qword_10060EFF8;
  if (!qword_10060EFF8)
  {
    sub_1004B8E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFF8);
  }

  return result;
}

uint64_t sub_100366F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a3;
  v50 = a1;
  v72 = a6;
  v8 = sub_1004B8E34();
  v60 = v8;
  v71 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  v10 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _CompositingGroupEffect;
  v54 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v66 = v10;
  v65 = swift_getWitnessTable();
  v11 = sub_1004BA4B4();
  v61 = v11;
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v48 - v12;
  v13 = swift_getWitnessTable();
  v59 = v13;
  v58 = sub_100366EBC();
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
  sub_100003B68(&qword_10060EFF0, &qword_1004E28A0);
  v49 = a2;
  v16 = sub_1004B8D64();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - v18;
  v20 = sub_1004B8D64();
  v73 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v48 - v23;
  sub_1004BA194();
  v25 = sub_1003684AC();
  v81[4] = a4;
  v81[5] = v25;
  v26 = a4;
  v27 = swift_getWitnessTable();
  sub_1004BA184();
  (*(v17 + 8))(v19, v16);
  v81[2] = v27;
  v81[3] = &protocol witness table for _FixedSizeLayout;
  v52 = swift_getWitnessTable();
  v28 = v24;
  v51 = v22;
  sub_100318364();
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
  sub_1004BA474();
  v33 = v70;
  sub_1004B8E24();
  v34 = v55;
  v35 = v61;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  sub_1004B9E14();
  (*(v71 + 8))(v33, v36);
  (*(v67 + 8))(v32, v35);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = OpaqueTypeMetadata2;
  sub_100318364();
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
  sub_100379EFC(&v82, 2uLL, v81);
  v43(v40, v41);
  v46 = v53;
  v53(v28, v20);
  v43(v44, v41);
  return v46(v45, v20);
}

uint64_t sub_100367744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v24 = a6;
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  v6 = sub_1004BA584();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = sub_1004B8D64();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_1004B9364();
  sub_1004B91D4();
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  sub_1004BA574();
  WitnessTable = swift_getWitnessTable();
  sub_1004B9F24();
  (*(v7 + 8))(v9, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_100318364();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_100318364();
  return (v17)(v15, v10);
}

uint64_t sub_100367A18@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  sub_100318364();
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v21 = v27;
  v35 = v27;
  type metadata accessor for HeightLimitedButtonTextView(0, &v32);
  sub_100318364();
  (*(v15 + 16))(v17, v19, a2);
  v32 = v17;
  (*(v9 + 16))(v11, v13, a3);
  v33 = v11;
  v31[0] = a2;
  v31[1] = a3;
  v29 = v26;
  v30 = v21;
  sub_100379EFC(&v32, 2uLL, v31);
  v22 = *(v9 + 8);
  v22(v13, a3);
  v23 = *(v15 + 8);
  v23(v19, a2);
  v22(v11, a3);
  return (v23)(v17, a2);
}

unint64_t sub_100367C90()
{
  result = qword_10060F000[0];
  if (!qword_10060F000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10060F000);
  }

  return result;
}

unint64_t sub_100367D34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_100316910();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100367DD8(int *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_100367FA8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_10036820C(void *a1)
{
  sub_1004B8D64();
  sub_100003B68(&qword_10060EFF0, &qword_1004E28A0);
  sub_1004B8D64();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004BA4B4();
  sub_1004B8E34();
  swift_getWitnessTable();
  sub_100366EBC();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004B8984();
  swift_getWitnessTable();
  sub_1004B8EA4();
  sub_1004B8D64();
  sub_100367C90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1003684AC()
{
  result = qword_10060F088;
  if (!qword_10060F088)
  {
    sub_100003B68(&qword_10060EFF0, &qword_1004E28A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F088);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100003ABC(&unk_100609F00, &unk_1004DFD00);
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
  result = qword_10060F148;
  if (!qword_10060F148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_1004B9D54();
  v81 = *(v1 - 8);
  v82 = v1;
  __chkstk_darwin();
  v80 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B9184();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin();
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060EA08, &qword_1004E2160);
  v77 = v5;
  __chkstk_darwin();
  v7 = &v72 - v6;
  v8 = sub_100003ABC(&qword_10060F090, &qword_1004E29A0);
  __chkstk_darwin();
  v78 = &v72 - v9;
  Int.seconds.getter(44);
  sub_1004B9284();
  v10 = sub_1004B9D64();
  v12 = v11;
  v75 = v13;
  v76 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100003ABC(&qword_10060EA10, &qword_1004E2168) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_1004B9CC4();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v78;
  v22 = v79;
  v7[16] = v75 & 1;
  *(v7 + 3) = v76;
  sub_1004B9AA4();
  sub_1003691FC();
  sub_1004B9DE4();
  sub_100007214(v7, &qword_10060EA08, &qword_1004E2160);
  v24 = sub_1004B9B44();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100003ABC(&qword_10060F0A8, &qword_1004E2A08) + 36));
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
    v100 = v31 & 1;
  }

  else
  {

    sub_100369364(v31, 0);
    v32 = sub_1004BC994();
    v33 = sub_1004B9904();
    sub_1004B7F84(v32, &_mh_execute_header, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v34 = v72;
    sub_1004B9174();
    swift_getAtKeyPath();
    v35 = sub_10034C67C(v31, 0);
    (*(v73 + 8))(v34, v74, v35);
  }

  v36 = v80;
  sub_1004B9D44();
  sub_100369370();
  v37 = v83;
  sub_1004BA1C4();
  (*(v81 + 8))(v36, v82);
  sub_10036951C(v23);
  v38 = sub_1004B9994();
  sub_1004B86C4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37 + *(sub_100003ABC(&qword_10060F0C0, &qword_1004E2A40) + 36);
  *v47 = v38;
  *(v47 + 8) = v40;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v48 = sub_1004B9974();
  sub_1004B86C4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v37 + *(sub_100003ABC(&qword_10060F0C8, &qword_1004E2A48) + 36);
  *v57 = v48;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = sub_1004B9204();
  v92 = 0;
  sub_100368D38(&v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  v99[2] = v87;
  v99[3] = v88;
  v99[4] = v89;
  v99[5] = v90;
  v99[0] = v85;
  v99[1] = v86;
  sub_10000F778(&v93, &v84, &qword_10060F0D0, &qword_1004E2A50);
  sub_100007214(v99, &qword_10060F0D0, &qword_1004E2A50);
  *&v91[39] = v95;
  *&v91[55] = v96;
  *&v91[71] = v97;
  *&v91[87] = v98;
  *&v91[7] = v93;
  *&v91[23] = v94;
  v59 = v92;
  v60 = v37 + *(sub_100003ABC(&qword_10060F0D8, &qword_1004E2A58) + 36);
  v61 = *(sub_100003ABC(&qword_10060F0E0, &qword_1004E2A60) + 36);
  v62 = enum case for BlendMode.destinationOut(_:);
  v63 = sub_1004BA7E4();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  v64 = *&v91[32];
  *(v60 + 65) = *&v91[48];
  v65 = *&v91[80];
  *(v60 + 81) = *&v91[64];
  *(v60 + 97) = v65;
  v66 = *&v91[16];
  *(v60 + 17) = *v91;
  *(v60 + 33) = v66;
  *v60 = v58;
  *(v60 + 8) = 0;
  *(v60 + 16) = v59;
  *(v60 + 112) = *&v91[95];
  *(v60 + 49) = v64;
  v67 = sub_1004BA754();
  v69 = v68;
  result = sub_100003ABC(&qword_10060F0E8, &qword_1004E2A68);
  v71 = (v60 + *(result + 36));
  *v71 = v67;
  v71[1] = v69;
  return result;
}

uint64_t sub_100368D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B8D44();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v20 - v7;
  type metadata accessor for MoreLabel(0);
  sub_100308A68(v8);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v9 = sub_1004B8D34();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  sub_100003ABC(&qword_10060B4A0, &unk_1004DD420);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C50C0;
  if (v9)
  {
    *(v11 + 32) = sub_1004BA284();
    v12 = sub_1004BA294();
  }

  else
  {
    *(v11 + 32) = sub_1004BA294();
    v12 = sub_1004BA284();
  }

  *(v11 + 40) = v12;
  sub_1004BA6F4();
  sub_1004BA8C4();
  sub_1004BA8D4();
  sub_1004B8B64();
  sub_1004BA754();
  sub_1004B8994();
  v13 = sub_1004BA284();
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
  sub_10000F778(v20, v22, &qword_10060B960, &qword_1004DE108);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_100007214(v22, &qword_10060B960, &qword_1004DE108);
}

uint64_t sub_100368FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B90A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100369024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B90A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100369058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B90B4();
  *a1 = result;
  return result;
}

uint64_t sub_1003690B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B8FB4();
  *a1 = result;
  return result;
}

uint64_t sub_100369150(uint64_t a1)
{
  sub_100003ABC(&qword_10060F1A8, &qword_1004E2AE0);
  __chkstk_darwin();
  sub_10000F778(a1, &v4 - v2, &qword_10060F1A8, &qword_1004E2AE0);
  return sub_1004B9104();
}

unint64_t sub_1003691FC()
{
  result = qword_10060F098;
  if (!qword_10060F098)
  {
    sub_100003B68(&qword_10060EA08, &qword_1004E2160);
    sub_1000206D4(&qword_10060F0A0, &qword_10060EA10, &qword_1004E2168, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F098);
  }

  return result;
}

uint64_t sub_1003692B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B90B4();
  *a1 = result;
  return result;
}

uint64_t sub_10036930C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B8FB4();
  *a1 = result;
  return result;
}

uint64_t sub_100369364(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100369370()
{
  result = qword_10060F0B0;
  if (!qword_10060F0B0)
  {
    sub_100003B68(&qword_10060F090, &qword_1004E29A0);
    sub_100369428();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F0B0);
  }

  return result;
}

unint64_t sub_100369428()
{
  result = qword_10060F0B8;
  if (!qword_10060F0B8)
  {
    sub_100003B68(&qword_10060F0A8, &qword_1004E2A08);
    sub_100003B68(&qword_10060EA08, &qword_1004E2160);
    sub_1003691FC();
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F0B8);
  }

  return result;
}

uint64_t sub_10036951C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F090, &qword_1004E29A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003695B4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060C1E0, &qword_1004DEB08);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100369684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C1E0, &qword_1004DEB08);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100369734(uint64_t a1)
{
  sub_1003697C8(319);
  if (v1 <= 0x3F)
  {
    sub_100369820();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003697C8(uint64_t a1)
{
  if (!qword_10060C260)
  {
    sub_1004B8D44();
    v1 = sub_1004B8804();
    if (!v2)
    {
      atomic_store(v1, &qword_10060C260);
    }
  }
}

void sub_100369820()
{
  if (!qword_10060DBF0)
  {
    v0 = sub_1004B8804();
    if (!v1)
    {
      atomic_store(v0, &qword_10060DBF0);
    }
  }
}

unint64_t sub_100369874()
{
  result = qword_10060F188;
  if (!qword_10060F188)
  {
    sub_100003B68(&qword_10060F0D8, &qword_1004E2A58);
    sub_10036992C();
    sub_1000206D4(&qword_10060F1A0, &qword_10060F0E8, &qword_1004E2A68, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F188);
  }

  return result;
}

unint64_t sub_10036992C()
{
  result = qword_10060F190;
  if (!qword_10060F190)
  {
    sub_100003B68(&qword_10060F0C8, &qword_1004E2A48);
    sub_1003699B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F190);
  }

  return result;
}

unint64_t sub_1003699B8()
{
  result = qword_10060F198;
  if (!qword_10060F198)
  {
    sub_100003B68(&qword_10060F0C0, &qword_1004E2A40);
    sub_100003B68(&qword_10060F090, &qword_1004E29A0);
    sub_100369370();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F198);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_100369B0C(&v14, &v13);
  sub_100369B44(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_100369B74(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_1002F18BC(v4);
    sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
    v5.super.isa = sub_1004BC284().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_100009130(0, &qword_10060DF38, CAMediaTimingFunction_ptr);
    isa = sub_1004BC284().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_1004BD6A4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_1004BC284().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_1003BF7A8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004BD484();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003BF7A8((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_10003E13C(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

__int128 *Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_100369B0C(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v11);

  sub_100369B44(a1);
  return v9;
}

_OWORD *Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_100369B0C(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v10);

  sub_100369B44(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_100369B0C(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_100369B0C(v19, v18);
  sub_100369B0C(a1, v18);
  sub_100369B44(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_100369B0C(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_100369B44(v18);
  if (v10)
  {
    sub_100369B44(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_100369B0C(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_100369B74(v14);
    sub_100369B44(v19);
    sub_100369B44(a1);

    a1 = v17;
  }

  return sub_100369B44(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_100369B0C(v4, (v4 + 16));
  return sub_10036A390;
}

void sub_10036A390(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_100369B0C((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_100369B44((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

_OWORD *sub_10036A4B8(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_100369B0C(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v11);

  sub_100369B44(v15);
  return v9;
}

uint64_t sub_10036A5B4@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_100369B0C(v9, v8);
}

uint64_t sub_10036A620(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_10036A654(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_100369B0C(v4, (v4 + 16));
  return sub_10036A390;
}

uint64_t sub_10036A710@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_10036B108();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_100369B0C(v10, v9);
}

uint64_t sub_10036A7B4(void *a1)
{
  sub_10001342C(a1, v7);
  sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return sub_100004C6C(a1);
}

void (*sub_10036A848(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_10036B108();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_100369B0C(v4, v4 + 192);
  return sub_10036A934;
}

void sub_10036A934(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C(v2 + 256, v2 + 296);
    sub_10001342C(v2 + 296, v2 + 336);
    sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
    swift_dynamicCast();
    v3 = *(v2 + 208);
    *(v2 + 64) = *(v2 + 192);
    *(v2 + 80) = v3;
    v4 = *(v2 + 240);
    *(v2 + 96) = *(v2 + 224);
    *(v2 + 112) = v4;
    Gradient.View.typedConfiguration.setter((v2 + 64));
    sub_100004C6C((v2 + 296));
  }

  else
  {
    sub_10001342C(v2 + 256, v2 + 296);
    sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
    swift_dynamicCast();
    v5 = *(v2 + 208);
    *(v2 + 128) = *(v2 + 192);
    *(v2 + 144) = v5;
    v6 = *(v2 + 240);
    *(v2 + 160) = *(v2 + 224);
    *(v2 + 176) = v6;
    Gradient.View.typedConfiguration.setter((v2 + 128));
  }

  sub_100004C6C((v2 + 256));

  free(v2);
}

id sub_10036AA40(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v17 = *v2;
  v18 = v3;
  v4 = v2[3];
  v19 = v2[2];
  v20 = v4;
  v5 = type metadata accessor for Gradient.View(a1, a2);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v8 = v20;
  v10 = v17;
  v9 = v18;
  *(v7 + 2) = v19;
  *(v7 + 3) = v8;
  *v7 = v10;
  *(v7 + 1) = v9;
  sub_100369B0C(&v17, v16);
  sub_100369B0C(&v17, v16);
  v15.receiver = v6;
  v15.super_class = v5;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = [v11 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v13);

  sub_100369B44(&v17);
  sub_10036B044(&qword_10060F208, &protocol conformance descriptor for Gradient.View);
  return v11;
}