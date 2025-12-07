uint64_t sub_23448@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v36 = 0;
  v35 = 0;
  v15 = 0;
  v27 = sub_24884();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v13 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v26 = (&v13 - v13);
  v23 = type metadata accessor for RequirementRow(v1);
  v14 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v2 = &v13 - v14;
  v28 = &v13 - v14;
  v30 = sub_46E8(&qword_35BB0, &qword_2A9A8);
  v16 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v15);
  v32 = &v13 - v16;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v33 = &v13 - v17;
  v36 = &v13 - v17;
  v6 = type metadata accessor for Requirement(v5);
  v18 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v22 = &v13 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v18);
  v34 = &v13 - v19;
  v35 = &v13 - v19;
  v20 = sub_24DB4("failed description", 0x12uLL, 1);
  v21 = v8;
  v9 = sub_134D0();
  sub_134D8(0, v20, v21, v9, v34);
  sub_6890(v34, v22);
  sub_163B0(v22, v2);
  v10 = v24;
  v11 = v26;
  *v26 = 0x4072C00000000000;
  v11[1] = 0x4051800000000000;
  (*(v10 + 104))();
  sub_2018C();
  sub_24AE4();
  (*(v24 + 8))(v26, v27);
  sub_697C(v28);
  v31 = sub_23838();
  sub_15ED8(v32, v30, v33);
  sub_23968(v32);
  sub_23A48(v33, v32);
  sub_15ED8(v32, v30, v29);
  sub_23968(v32);
  sub_23968(v33);
  return sub_697C(v34);
}

uint64_t type metadata accessor for RequirementRow(uint64_t a1)
{
  v2 = qword_369A0;
  if (!qword_369A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_23838()
{
  v2 = qword_35BB8;
  if (!qword_35BB8)
  {
    sub_4A94(&qword_35BB0, &qword_2A9A8);
    sub_2018C();
    sub_238E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_238E0()
{
  v2 = qword_35BC0;
  if (!qword_35BC0)
  {
    sub_4A94(&qword_35BC8, &qword_2A9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_23968(uint64_t a1)
{
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for Requirement(0);

  v4 = *(sub_46E8(&qword_35BB0, &qword_2A9A8) + 36);
  v2 = sub_24884();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_23A48(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = type metadata accessor for Requirement(0);
  *(a2 + v8[5]) = *(a1 + v8[5]);
  v3 = (a1 + v8[6]);
  v6 = (a2 + v8[6]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  *(a2 + v8[7]) = *(a1 + v8[7]);
  v9 = *(sub_46E8(&qword_35BB0, &qword_2A9A8) + 36);
  v4 = sub_24884();
  (*(*(v4 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_23BFC()
{
  v2 = qword_35BD0;
  if (!qword_35BD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_23D30()
{
  v2 = qword_35BD8;
  if (!qword_35BD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for StateGlyph(uint64_t a1)
{
  v2 = qword_36990;
  if (!qword_36990)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_240D8()
{
  v2 = qword_35CE0;
  if (!qword_35CE0)
  {
    type metadata accessor for StateGlyph(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_24160()
{
  v2 = qword_35CF0;
  if (!qword_35CF0)
  {
    sub_4A94(&qword_35CE8, &qword_2ABE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_241E8()
{
  v2 = qword_35CF8;
  if (!qword_35CF8)
  {
    sub_4A94(&qword_35BA8, &qword_2A9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_24278()
{
  v2 = qword_35D08;
  if (!qword_35D08)
  {
    sub_4A94(&qword_35D00, &qword_2ABF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24300(uint64_t a1)
{
  sub_154D4(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 80))
  {
    sub_154D4(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

uint64_t sub_24380(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_16C20(v7, v8, v9 & 1);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v12 = *(a1 + 48);

  *(a2 + 48) = v12;
  if (*(a1 + 80))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    sub_16C20(v3, v4, v5 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5 & 1;
    v6 = *(a1 + 80);

    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
  }

  return a2;
}

uint64_t sub_244B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_16C20(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_2450C()
{
  v2 = qword_35D18;
  if (!qword_35D18)
  {
    sub_4A94(&qword_35D10, &qword_2ABF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35D18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_245A0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_154D4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

void sub_245F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"CPSDeveloperSettingsController.m" lineNumber:30 description:{@"Invalid specifier: %@", *a1}];
}