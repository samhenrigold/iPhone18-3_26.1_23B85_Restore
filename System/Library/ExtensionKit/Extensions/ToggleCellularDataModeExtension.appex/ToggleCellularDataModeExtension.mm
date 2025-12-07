uint64_t sub_100001544()
{
  v0 = sub_1000016F0(&qword_10000C168, &unk_100003900);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_100001738();
  sub_1000035A4();
  sub_10000178C();
  sub_100003574();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001670();
  sub_100003554();
  return 0;
}

unint64_t sub_100001670()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000016F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001738()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_10000178C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    sub_1000017F0(&qword_10000C168, &unk_100003900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

uint64_t sub_1000017F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001838()
{
  sub_1000017F0(&qword_10000C168, &unk_100003900);
  sub_10000178C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000018A0()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

unint64_t sub_1000018F8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_10000194C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_100003544();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin();
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000016F0(&qword_10000C2C8, &qword_100003B98);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  __chkstk_darwin();
  v7 = v38 - v6;
  v8 = sub_1000016F0(&qword_10000C2D0, &qword_100003BA0);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  __chkstk_darwin();
  v11 = v38 - v10;
  v12 = sub_1000016F0(&qword_10000C2D8, &qword_100003BA8);
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  __chkstk_darwin();
  v39 = v38 - v14;
  v15 = sub_1000016F0(&qword_10000C2E0, &qword_100003BB0);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  __chkstk_darwin();
  v40 = v38 - v17;
  v38[1] = qword_10000C180;
  type metadata accessor for ToggleCellularDataStateProvider();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;

  v19 = sub_100003634();
  v20 = _CTServerConnectionCreateWithIdentifier();

  *(v18 + 16) = v20;
  v54 = v18;
  sub_1000016F0(&qword_10000C2E8, &qword_100003BB8);
  v21 = sub_1000017F0(&qword_10000C2F0, &qword_100003BC0);
  v22 = sub_1000017F0(&qword_10000C2F8, &qword_100003BC8);
  v23 = sub_100003240(&qword_10000C300, &qword_10000C2F8, &qword_100003BC8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v52 = v22;
  v53 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v21;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000031EC();
  sub_100003624();
  sub_100003534();
  v25 = sub_100003240(&qword_10000C310, &qword_10000C2C8, &qword_100003B98, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v26 = v41;
  sub_1000035C4();
  v27 = v48;
  v28 = *(v47 + 8);
  v28(v3, v48);
  (*(v42 + 8))(v7, v26);
  sub_100003534();
  v52 = v26;
  v53 = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  v31 = v43;
  sub_1000035B4();
  v28(v3, v27);
  (*(v44 + 8))(v11, v31);
  v52 = v31;
  v53 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v40;
  v34 = v45;
  sub_1000035D4();
  (*(v46 + 8))(v30, v34);
  v35 = sub_100003634();
  MGGetBoolAnswer();

  v52 = v34;
  v53 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v49;
  sub_1000035E4();
  return (*(v50 + 8))(v33, v36);
}

uint64_t sub_100001FBC@<X0>(uint64_t a2@<X8>)
{
  v13[1] = a2;
  v2 = sub_1000016F0(&qword_10000C2F8, &qword_100003BC8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v13 - v4;
  v13[0] = sub_1000016F0(&qword_10000C2F0, &qword_100003BC0);
  v6 = *(v13[0] - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  v14 = sub_100002D90();
  v15 = v9;
  sub_1000016F0(&qword_10000C318, &unk_100003BD0);
  sub_100003240(&qword_10000C320, &qword_10000C318, &unk_100003BD0, &protocol conformance descriptor for Label<A, B>);
  sub_100003288();
  sub_100003614();
  sub_1000035F4();
  v10 = sub_100003240(&qword_10000C300, &qword_10000C2F8, &qword_100003BC8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_100003584();

  (*(v3 + 8))(v5, v2);
  v14 = v2;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = v13[0];
  sub_100003594();
  return (*(v6 + 8))(v8, v11);
}

uint64_t sub_100002270()
{
  v0 = sub_100003564();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_1000022E4()
{
  if (*(v0 + 16))
  {
    _CTServerConnectionGetCellularDataIsEnabled();
    if (*(v0 + 16))
    {
      _CTServerConnectionGetCellularDataSettings();
    }

    return 256;
  }

  else
  {
    return 0;
  }
}

id sub_1000024A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000022E4();
  *a1 = result & 1;
  a1[1] = result > 0xFFu;
  return result;
}

uint64_t sub_1000024E4(_BYTE *a1)
{
  v3 = sub_1000022E4();
  *a1 = v3 & 1;
  a1[1] = v3 > 0xFFu;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_100002564()
{
  v0 = sub_100003544();
  sub_10000315C(v0, qword_10000C750);
  sub_100003124(v0, qword_10000C750);
  return sub_100003534();
}

uint64_t sub_1000025D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000025F8, 0, 0);
}

uint64_t sub_1000025F8()
{
  if (*(v0 + 32))
  {
    sub_1000034F4();
    _CTServerConnectionSetCellularDataIsEnabled();
    sub_1000016F0(&qword_10000C2C0, &unk_100003B30);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100003910;
    sub_100003664(28);

    sub_1000034F4();
    if (*(v0 + 40))
    {
      v2._countAndFlagsBits = 1702195828;
    }

    else
    {
      v2._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 40))
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    v2._object = v3;
    sub_100003644(v2);

    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0xD00000000000001ALL;
    *(v1 + 40) = 0x8000000100004380;
    sub_100003674();
  }

  sub_1000034D4();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002770@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000034F4();
  *a2 = v4;
  return result;
}

uint64_t (*sub_1000027E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000034E4();
  return sub_100002858;
}

void sub_100002858(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000028A8()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

unint64_t sub_100002900()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_1000029C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C158 != -1)
  {
    swift_once();
  }

  v2 = sub_100003544();
  v3 = sub_100003124(v2, qword_10000C750);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002A84(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002B30;

  return sub_1000025D4(a1, v5, v4);
}

uint64_t sub_100002B30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002C24@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100002D90();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100002C4C(uint64_t a1)
{
  v2 = sub_1000018A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100002CAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100002D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002D90()
{
  v0 = sub_100003524();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000016F0(&qword_10000C2A0, &qword_100003B08);
  __chkstk_darwin();
  v5 = &v17[-v4];
  sub_1000016F0(&qword_10000C2A8, &qword_100003B10);
  __chkstk_darwin();
  v7 = &v17[-v6];
  sub_1000016F0(&qword_10000C2B0, &qword_100003B18);
  __chkstk_darwin();
  v9 = &v17[-v8];
  v10 = sub_100003544();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  sub_1000016F0(&qword_10000C2B8, &qword_100003B20);
  sub_100003534();
  (*(v11 + 56))(v9, 1, 1, v10);
  v17[15] = 2;
  v12 = sub_100003654();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_1000034C4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  v14 = sub_100003514();
  v15 = sub_100003634();
  _CTServerConnectionCreateWithIdentifier();

  return v14;
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000315C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000031EC()
{
  result = qword_10000C308;
  if (!qword_10000C308)
  {
    type metadata accessor for ToggleCellularDataStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C308);
  }

  return result;
}

uint64_t sub_100003240(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000017F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003288()
{
  result = qword_10000C328;
  if (!qword_10000C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C328);
  }

  return result;
}

uint64_t sub_1000032DC()
{
  sub_1000017F0(&qword_10000C2E0, &qword_100003BB0);
  sub_1000017F0(&qword_10000C2D8, &qword_100003BA8);
  sub_1000017F0(&qword_10000C2D0, &qword_100003BA0);
  sub_1000017F0(&qword_10000C2C8, &qword_100003B98);
  sub_100003240(&qword_10000C310, &qword_10000C2C8, &qword_100003B98, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}