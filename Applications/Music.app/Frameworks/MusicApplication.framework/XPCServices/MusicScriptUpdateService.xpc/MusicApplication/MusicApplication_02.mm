uint64_t sub_10002CCB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_10002CCF8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v67 = type metadata accessor for ActionMenuView(0);
  __chkstk_darwin();
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = sub_100003ABC(&qword_100601918, &qword_1004C8FE8);
  __chkstk_darwin();
  v10 = &v58[-v9];
  v11 = sub_1004B8C94();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v68 = *a1;
  v69 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v70 = a1[2];
  v71 = v18;
  v63 = v16;
  v64 = v17;
  v72 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = sub_1004BD9C4();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_10002F25C(v14);
    v22 = sub_1004B8C84();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v68;
    if ((v68 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_10002F4C4(v24, v69, v70, v63, v71, v64, v72);
    sub_10002F518(v25, v26);
    type metadata accessor for ActionMenuView.Excluding(0, v27, v28);
    sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");
    *(v8 + 4) = sub_1004B8F04();
    *(v8 + 5) = v29;
    v30 = *(v67 + 32);
    *&v8[v30] = swift_getKeyPath();
    sub_100003ABC(&qword_100601878, &qword_1004C8FA8);
    swift_storeEnumTagMultiPayload();
    sub_10002EBD8(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_10002EF54();
    sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
    sub_1004B9514();
    return sub_10002F550(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v68;
  if (v68 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v61 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v32 = a2[2];
  v33 = a2[3];
  v62 = v32;
  sub_10002F518(v32, v33);

  v69(v91, v34);
  v35 = v92;
  v36 = v93;
  sub_100009178(v91, v92);
  v89 = (*(v36 + 8))(v35, v36);
  v90[0] = v37;
  v38 = v92;
  v39 = v93;
  sub_100009178(v91, v92);
  v40 = (*(v39 + 24))(v38, v39);
  v41 = 0;
  v90[1] = v40;
  v90[2] = v42;
  v43 = _swiftEmptyArrayStorage;
LABEL_16:
  v44 = &v90[2 * v41];
  while (++v41 != 3)
  {
    v45 = v44 + 2;
    v46 = *v44;
    v44 += 2;
    if (v46)
    {
      v60 = v10;
      v59 = v23;
      v47 = *(v45 - 3);

      v48 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_100017CC8(0, *(v43 + 2) + 1, 1, v43);
      }

      v50 = *(v43 + 2);
      v49 = *(v43 + 3);
      if (v50 >= v49 >> 1)
      {
        v43 = sub_100017CC8((v49 > 1), v50 + 1, 1, v43);
      }

      *(v43 + 2) = v50 + 1;
      v51 = &v43[16 * v50];
      *(v51 + 4) = v47;
      *(v51 + 5) = v46;
      v33 = v48;
      v23 = v59;
      v10 = v60;
      goto LABEL_16;
    }
  }

  sub_100003ABC(&unk_100606160, &qword_1004CAC60);
  swift_arrayDestroy();
  v80[0] = v43;
  sub_100003ABC(&unk_100603590, &unk_1004C8150);
  sub_1000206D4(&qword_100604020, &unk_100603590, &unk_1004C8150, &protocol conformance descriptor for [A]);
  v52 = sub_1004BBD34();
  v54 = v53;

  sub_100004C6C(v91);
  LOBYTE(v74) = v68;
  *(&v74 + 1) = v96[0];
  DWORD1(v74) = *(v96 + 3);
  *(&v74 + 1) = v69;
  *&v75 = v70;
  *(&v75 + 1) = v63;
  *&v76 = v71;
  *(&v76 + 1) = v64;
  *&v77 = v72;
  BYTE8(v77) = v61;
  BYTE9(v77) = v23 & 1;
  *(&v77 + 10) = v94;
  HIWORD(v77) = v95;
  *&v78 = v62;
  *(&v78 + 1) = v33;
  *&v79 = v52;
  *(&v79 + 1) = v54;
  LOBYTE(v80[0]) = v68;
  HIDWORD(v80[0]) = *(v96 + 3);
  *(v80 + 1) = v96[0];
  v80[1] = v69;
  v80[2] = v70;
  v80[3] = v63;
  v80[4] = v71;
  v80[5] = v64;
  v80[6] = v72;
  v81 = v61;
  v82 = v23 & 1;
  v83 = v94;
  v84 = v95;
  v85 = v62;
  v86 = v33;
  v87 = v52;
  v88 = v54;
  sub_10002F5AC(&v74, &v73);
  sub_10002F5E4(v80);
  v55 = v77;
  v10[2] = v76;
  v10[3] = v55;
  v56 = v79;
  v10[4] = v78;
  v10[5] = v56;
  v57 = v75;
  *v10 = v74;
  v10[1] = v57;
  swift_storeEnumTagMultiPayload();
  sub_10002EF54();
  sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
  return sub_1004B9514();
}

uint64_t sub_10002D3EC(uint64_t *a1)
{
  v2 = sub_100003ABC(&qword_1006018C0, &qword_1004C8FC8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  sub_100003ABC(&qword_100601910, &qword_1004C8FE0);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    sub_1004BA3A4();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1000206D4(&qword_1006018B8, &qword_1006018C0, &qword_1004C8FC8, &protocol conformance descriptor for Label<A, B>);
    sub_1004B9514();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    sub_10000E7F4();
    *v7 = sub_1004B9D84();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1000206D4(&qword_1006018B8, &qword_1006018C0, &qword_1004C8FC8, &protocol conformance descriptor for Label<A, B>);
    return sub_1004B9514();
  }
}

uint64_t sub_10002D700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_10000E7F4();
  result = sub_1004B9D84();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10002D760()
{
  v1 = v0;
  sub_100003ABC(&qword_100601930, &qword_1004C90E8);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  sub_100009178(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    sub_1004B8684();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1004B86B4();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  sub_10002F5AC(v1, v15);
  sub_100003ABC(&qword_100601938, &qword_1004C90F0);
  sub_1000206D4(&qword_100601940, &qword_100601938, &qword_1004C90F0, &protocol conformance descriptor for Label<A, B>);
  sub_1004BA464();
  return sub_100004C6C(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1004B8684();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1004B86B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10002DA0C(uint64_t *a1)
{
  sub_100003B68(&qword_100601658, &qword_1004C8E40);
  sub_10002A4EC();
  swift_getOpaqueTypeMetadata2();
  sub_1004B9524();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002DAE4(uint64_t *a1)
{
  sub_100003B68(&qword_100601658, &qword_1004C8E40);
  sub_10002A4EC();
  swift_getOpaqueTypeMetadata2();
  sub_1004B9524();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002DBD0(uint64_t *a1)
{
  sub_100003B68(&qword_100601690, &qword_1004C8E58);
  sub_10002B884();
  sub_1004B9B94();
  sub_100003B68(&qword_100601688, &qword_1004C8E50);
  sub_1004B8D64();
  swift_getWitnessTable();
  sub_1000206D4(&qword_100601680, &qword_100601688, &qword_1004C8E50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002DD08(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_100601760, &qword_1004C8E88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10002DDD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100601760, &qword_1004C8E88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenu(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_10002DF44(319);
    if (v4 <= 0x3F)
    {
      sub_10002DFA8(319, v4, v5);
      if (v6 <= 0x3F)
      {
        sub_10002E03C(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002DF44(uint64_t a1)
{
  if (!qword_1006017D0)
  {
    sub_100003B68(&qword_100601250, &qword_1004C8070);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006017D0);
    }
  }
}

void sub_10002DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1006017D8)
  {
    type metadata accessor for ActionMenuView.Excluding(255, a2, a3);
    sub_10002F904(&qword_1006016A0, type metadata accessor for ActionMenuView.Excluding, "Au\r");
    v3 = sub_1004B8F14();
    if (!v4)
    {
      atomic_store(v3, &qword_1006017D8);
    }
  }
}

void sub_10002E03C(uint64_t a1)
{
  if (!qword_1006017E0)
  {
    sub_1004B8C94();
    v1 = sub_1004B8804();
    if (!v2)
    {
      atomic_store(v1, &qword_1006017E0);
    }
  }
}

uint64_t sub_10002E0BC(_OWORD *a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = sub_1004BC4B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1004BC474();
  sub_10002F5AC(a1, v11);
  v5 = sub_1004BC464();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  sub_1001FA838(0, 0, v3, &unk_1004C9120, v6);
}

uint64_t sub_10002E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004BC474();
  v4[4] = sub_1004BC464();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_10002E308;

  return v8();
}

uint64_t sub_10002E308()
{
  *(*v1 + 48) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10002E4E4;
  }

  else
  {
    v4 = sub_10002E464;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002E464()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002E4E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E548()
{
  sub_100003ABC(&qword_100601948, &qword_1004C90F8);
  sub_100003ABC(&qword_100601950, &qword_1004C9100);
  sub_10002F81C();
  sub_10002F94C();
  return sub_1004BA3A4();
}

uint64_t sub_10002E604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601968, &qword_1004C9108);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_100003ABC(&qword_100601980, &qword_1004C9110);
  sub_1000206D4(&qword_100601988, &qword_100601980, &qword_1004C9110, &protocol conformance descriptor for TupleView<A>);
  sub_1004B86D4();
  v12 = *(a1 + 80);
  sub_1000206D4(&qword_100601960, &qword_100601968, &qword_1004C9108, &protocol conformance descriptor for LabelGroup<A>);
  sub_10000E7F4();
  sub_1004B9F94();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002E7C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_100009178(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_100009178(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_10000E7F4();
  v9 = sub_1004B9D84();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_100009178(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_1004B9D84();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_10002FA14(v9, v11, v13 & 1);

  sub_10002FA14(v18, v20, v16);

  sub_10002FA24(v18, v20, v16);

  sub_10002FA24(v9, v11, v13 & 1);
}

uint64_t (*sub_10002E99C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>))(uint64_t)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_100009178(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_100009178(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v12 = result;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (!result)
  {
    v21 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v21 = v12(v20);
  sub_10002F9C8(v12, v13, v14, v15);

LABEL_8:
  *a3 = v21;
  return result;
}

uint64_t sub_10002EB08(uint64_t a1)
{
  sub_1004B8C94();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004B8FA4();
}

uint64_t sub_10002EBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EC3C()
{
  v1 = type metadata accessor for ActionMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  sub_100003ABC(&qword_100601878, &qword_1004C8FA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B8C94();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002ED88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EDEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10002CCF8(a1, (v2 + v6), v7, a2);
}

unint64_t sub_10002EE98()
{
  result = qword_100601898;
  if (!qword_100601898)
  {
    sub_100003B68(&qword_100601888, &qword_1004C8FB8);
    sub_10002EF54();
    sub_10002F904(&qword_100601678, type metadata accessor for ActionMenuView, &unk_1004C8ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601898);
  }

  return result;
}

unint64_t sub_10002EF54()
{
  result = qword_1006018A0;
  if (!qword_1006018A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006018A0);
  }

  return result;
}

unint64_t sub_10002EFB0()
{
  result = qword_1006018B0;
  if (!qword_1006018B0)
  {
    sub_100003B68(&qword_1006018A8, &qword_1004C8FC0);
    sub_1000206D4(&qword_1006018B8, &qword_1006018C0, &qword_1004C8FC8, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006018B0);
  }

  return result;
}

unint64_t sub_10002F068()
{
  result = qword_1006018C8;
  if (!qword_1006018C8)
  {
    sub_100003B68(&qword_100601868, &qword_1004C8F70);
    sub_10002F0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006018C8);
  }

  return result;
}

unint64_t sub_10002F0F4()
{
  result = qword_1006018D0;
  if (!qword_1006018D0)
  {
    sub_100003B68(&qword_1006018D8, &qword_1004C8FD0);
    sub_10002EE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006018D0);
  }

  return result;
}

unint64_t sub_10002F178()
{
  result = qword_1006018F0;
  if (!qword_1006018F0)
  {
    sub_100003B68(&qword_100601860, &qword_1004C8F68);
    sub_1000206D4(&qword_1006018E0, &qword_100601830, &qword_1004C8F38, &protocol conformance descriptor for TupleView<A>);
    sub_1000206D4(&qword_1006018E8, &qword_100601820, &qword_1004C8F28, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006018F0);
  }

  return result;
}

uint64_t sub_10002F25C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004B9184();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601878, &qword_1004C8FA8);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_10000F778(v2, &v14 - v8, &qword_100601878, &qword_1004C8FA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004B8C94();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10002F494@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1004BA314();
  *a1 = result;
  return result;
}

uint64_t sub_10002F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_10002F518(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002F550(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10002F624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10002F640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002F688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002F6F4()
{
  result = qword_100601920;
  if (!qword_100601920)
  {
    sub_100003B68(&qword_100601928, &qword_1004C9090);
    sub_10002F178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601920);
  }

  return result;
}

uint64_t sub_10002F79C()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10002F81C()
{
  result = qword_100601958;
  if (!qword_100601958)
  {
    sub_100003B68(&qword_100601948, &qword_1004C90F8);
    sub_1000206D4(&qword_100601960, &qword_100601968, &qword_1004C9108, &protocol conformance descriptor for LabelGroup<A>);
    sub_10002F904(&qword_100601970, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601958);
  }

  return result;
}

uint64_t sub_10002F904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002F94C()
{
  result = qword_100601978;
  if (!qword_100601978)
  {
    sub_100003B68(&qword_100601950, &qword_1004C9100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601978);
  }

  return result;
}

uint64_t sub_10002F9C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FA14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002FA24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002FA34()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002FA9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_10002E1FC(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 2);
  if (v9)
  {
    v36 = v6;
    v39 = _swiftEmptyArrayStorage;
    sub_1004BD524();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *&v8[v10];
      v13 = *&v8[v10 + 16];
      v14 = *&v8[v10 + 32];
      v41 = *&v8[v10 + 48];
      v40[1] = v13;
      v40[2] = v14;
      v40[0] = v12;
      sub_100030EE4(v40, v38);
      v15._rawValue = excluding._rawValue;
      sub_10002FF38(v4, v9, v15, includeUnsupported);
      sub_100030F40(v40);
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v39;
    v6 = v36;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v38[0] = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004BD6A4())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      v37 = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = sub_1004BD6A4();
      }

      else
      {
        v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = sub_1004BD9C4();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      sub_100009130(0, &qword_100601398, UIMenu_ptr);
      v44._countAndFlagsBits = v37;
      v44._object = v24;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v43.value.super.isa = v25;
      v43.is_nil = 0;
      v31.value = v26;
      v32.super.super.isa = sub_1004BCE54(v44, v45, v43, v31, v30, v7, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      sub_1004BC274();
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v7 = v38[0];
    }
  }

  v6(v21);
  v17 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id sub_10002FF38(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_1004BD404(20);

      v87 = 0xD000000000000012;
      v88 = 0x80000001004FC700;
      sub_1004BC024(v14[1]);
      if (qword_100600148 != -1)
      {
        swift_once();
      }

      v87 = qword_1006091F0;
      v88 = *algn_1006091F8;

      v91._countAndFlagsBits = 46;
      v91._object = 0xE100000000000000;
      sub_1004BC024(v91);

      v92._countAndFlagsBits = 0xD000000000000012;
      v92._object = 0x80000001004FC700;
      sub_1004BC024(v92);

      v18 = sub_1004BBE24();

      [v17 setAccessibilityIdentifier:v18];
    }

    return v16;
  }

  v80 = v4[5];
  v81 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v78 = v4[1];
  v79 = v4[2];
  v78(&v87, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v85 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v21 = 0;
LABEL_17:
      v22 = v89;
      v23 = v90;
      sub_100009178(&v87, v89);
      v24 = (*(v23 + 32))(v22, v23);
      v83 = v25;
      v27 = v26;
      v84 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1004BD9C4();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_1004BCCB4();
  if (v19)
  {
    goto LABEL_16;
  }

  v39 = v89;
  v40 = v90;
  sub_100009178(&v87, v89);
  v41 = (*(v40 + 40))(v39, v40);
  v84 = v44;
  if (!v41)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v24 = v41;
  v27 = v43;
  v83 = v42;
  v21 = 1;
LABEL_18:
  v29 = v10();
  if (v30 == 1)
  {
    v31 = 0;
  }

  else
  {
    sub_1000130F8(v29, v30);
    v31 = 1;
  }

  v32 = v89;
  v33 = v90;
  sub_100009178(&v87, v89);
  v34 = (*(v33 + 48))(v32, v33);
  v35 = v31 | 2;
  if ((v34 & 1) == 0)
  {
    v35 = v31;
  }

  v77 = v35;
  if (a2 <= 2)
  {
    v21 = 0;
  }

  v36 = v89;
  v37 = v90;
  sub_100009178(&v87, v89);
  if (v21 != 1)
  {
    goto LABEL_31;
  }

  (*(v37 + 16))(v36, v37);
  if (!v38)
  {
    v36 = v89;
    v37 = v90;
    sub_100009178(&v87, v89);
LABEL_31:
    (*(v37 + 8))(v36, v37);
  }

  v45 = v10;
  v46 = v89;
  v47 = v90;
  sub_100009178(&v87, v89);
  (*(v47 + 24))(v46, v47);
  v82 = v27;
  v48 = v9;
  if (v24)
  {

    v27(v49);
  }

  sub_100009130(0, &qword_100601380, UIAction_ptr);
  v50 = v89;
  v51 = v90;
  sub_100009178(&v87, v89);
  v52 = (*(v51 + 56))(v50, v51);
  v53 = swift_allocObject();
  v53[2] = v85;
  v53[3] = v78;
  v53[4] = v79;
  v53[5] = v45;
  v53[6] = v48;
  v53[7] = v80;
  v53[8] = v81;

  v76 = v53;
  v75 = v52;
  v54 = sub_1004BCFD4();
  v55 = v89;
  v56 = v90;
  sub_100009178(&v87, v89);
  v57 = *(v56 + 8);
  v16 = v54;
  v57(v55, v56);
  v86[0] = v58;
  v59 = v89;
  v60 = v90;
  sub_100009178(&v87, v89);
  v61 = (*(v60 + 24))(v59, v60);
  v62 = 0;
  v86[1] = v61;
  v86[2] = v63;
  v64 = _swiftEmptyArrayStorage;
LABEL_35:
  v65 = &v86[2 * v62];
  while (++v62 != 3)
  {
    v66 = v65 + 2;
    v67 = *v65;
    v65 += 2;
    if (v67)
    {
      v68 = *(v66 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_100017CC8(0, *(v64 + 2) + 1, 1, v64);
      }

      v70 = *(v64 + 2);
      v69 = *(v64 + 3);
      if (v70 >= v69 >> 1)
      {
        v64 = sub_100017CC8((v69 > 1), v70 + 1, 1, v64);
      }

      *(v64 + 2) = v70 + 1;
      v71 = &v64[16 * v70];
      *(v71 + 4) = v68;
      *(v71 + 5) = v67;
      goto LABEL_35;
    }
  }

  sub_100003ABC(&unk_100606160, &qword_1004CAC60);
  swift_arrayDestroy();
  sub_100003ABC(&unk_100603590, &unk_1004C8150);
  sub_100030FE4();
  sub_1004BBD34();

  v72 = sub_1004BBE24();

  [v16 setAccessibilityLabel:{v72, 0, v77, v75, sub_100030FDC, v76}];

  sub_1004BD404(20);

  v93._countAndFlagsBits = ActionType.rawValue.getter(v85);
  sub_1004BC024(v93);

  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v94._countAndFlagsBits = 46;
  v94._object = 0xE100000000000000;
  sub_1004BC024(v94);

  v95._countAndFlagsBits = 0xD000000000000012;
  v95._object = 0x80000001004FC700;
  sub_1004BC024(v95);

  v73 = sub_1004BBE24();

  [v16 setAccessibilityIdentifier:v73];
  sub_10002F9C8(v24, v83, v82, v84);

  sub_100004C6C(&v87);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 2);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v39 = v6;
    v42 = _swiftEmptyArrayStorage;
    sub_1004BD524();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *&v7[v11];
      v14 = *&v7[v11 + 16];
      v15 = *&v7[v11 + 32];
      v44 = *&v7[v11 + 48];
      v43[1] = v14;
      v43[2] = v15;
      v43[0] = v13;
      sub_100030EE4(v43, v41);
      v16._rawValue = excluding._rawValue;
      sub_10002FF38(v2, v9, v16, includeUnsupported);
      sub_100030F40(v43);
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v42;
    v8 = v39;
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v41[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004BD6A4())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v40 = sub_1004BD6A4();
        }

        else
        {
          v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = sub_1004BD9C4();

        if (v32)
        {
LABEL_23:
          if (v40 > 1)
          {
            v33 = 1;
LABEL_26:
            sub_100009130(0, &qword_100601398, UIMenu_ptr);
            v47._countAndFlagsBits = v24;
            v47._object = v26;
            v48.value._countAndFlagsBits = v28;
            v48.value._object = v27;
            v46.value.super.isa = v29;
            v46.is_nil = 0;
            v34.value = v30;
            v35.super.super.isa = sub_1004BCE54(v47, v48, v46, v34, v33, v10, v38).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_1004BC274();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v10 = v41[0];
    }
  }

  v8(v22);
  v18 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v35.super.super.isa = 0;
LABEL_30:
  isa = v35.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v36;
  return result;
}

uint64_t sub_100030ABC(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004BC474();

  v6 = sub_1004BC464();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  sub_1001FA838(0, 0, v4, &unk_1004C9138, v7);
}

uint64_t sub_100030C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1004BC474();
  v4[3] = sub_1004BC464();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100030D24;

  return v8();
}

uint64_t sub_100030D24()
{
  *(*v1 + 40) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_100030E80;
  }

  else
  {
    v4 = sub_1000110C8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100030E80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030F94()
{

  return swift_deallocObject();
}

unint64_t sub_100030FE4()
{
  result = qword_100604020;
  if (!qword_100604020)
  {
    sub_100003B68(&unk_100603590, &unk_1004C8150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604020);
  }

  return result;
}

uint64_t sub_100031048()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_100030C1C(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v143 = sub_1004B6D14();
  v6 = *(v143 - 8);
  __chkstk_darwin();
  v142 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = 0;
  v146 = 0xE000000000000000;
  v148._countAndFlagsBits = 8254;
  v148._object = 0xE200000000000000;
  sub_1004BC024(v148);
  v8 = v2[1];
  v147[0] = *v2;
  v147[1] = v8;
  v147[2] = v2[2];
  sub_1004BD5C4();
  v9 = v145;
  v10 = v146;
  v11 = sub_100017CC8(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_10003C1A4(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_10003C9C0(1, 1, 0xD00000000000001CLL, 0x80000001004FC720);
    }

    v124 = v15;
    *&v147[0] = v19;
    v123 = v19;

    sub_10003B278(v147);
    v122[1] = 0;
    v13 = 0x654D6E6F69746341;
    v127 = *&v147[0];
    sub_100003ABC(&qword_1006019B8, &qword_1004C9140);
    inited = swift_initStackObject();
    v137 = xmmword_1004C50A0;
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v142;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_1004B6CE4();
    v23 = v22;
    v24 = v6[1];
    v141 = v6 + 1;
    v139 = v24;
    v25 = (v24)(v9, v143);
    v138 = type metadata accessor for ActionMenu(v25, v26, v27);
    v28 = swift_allocObject();
    *(v28 + 88) = 0;
    *(v28 + 96) = 0;
    *(v28 + 16) = v14;
    *(v28 + 24) = v23;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    strcpy(v147, "ActionMenu: ");
    BYTE13(v147[0]) = 0;
    HIWORD(v147[0]) = -5120;

    v11 = v147;
    v140 = v21;
    v149._countAndFlagsBits = v21;
    v149._object = v15;
    sub_1004BC024(v149);

    v29 = *(&v147[0] + 1);
    *(v28 + 56) = *&v147[0];
    *(v28 + 64) = v29;
    *(v28 + 80) = _swiftEmptyArrayStorage;
    *(v28 + 72) = 1;
    *(inited + 40) = v28;
    v6 = sub_10003CA9C(inited);
    swift_setDeallocating();
    a1 = v127;
    sub_10003CB90(inited + 32);
    v126 = *(a1 + 16);
    if (!v126)
    {
      break;
    }

    v3 = 0;
    v125 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v30 = (v125 + 56 * v3);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v10 = v30[3];
      v9 = v30[4];
      v34 = v30[5];
      v13 = v30[6];
      if (*v30 < 0)
      {
        v35 = *((v31 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v35 - 1) >= 0xA)
        {
          if (!*((v31 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v35 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_1004C95EA[v31];
      }

      v14 = v6[2];
      v134 = v31;
      v135 = v32;
      v136 = v33;
      v36 = v34;
      sub_10002F4C4(v31, v32, v33, v10, v9, v34, v13);
      v37 = v36;
      v133 = v13;
      if (!v14 || (v14 = v11, v38 = sub_1000346EC(v11), v37 = v36, (v39 & 1) == 0))
      {
        v130 = v3;
        v132 = v9;
        v131 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v45 = v37;
            v46 = v10;
            v48 = 0;
            if (v11 == 11)
            {
              v47 = 4;
            }

            else
            {
              v47 = 6;
            }

            goto LABEL_24;
          }

          sub_10003CBF8(v134, v135, v136, v10, v9, v37, v13);
          goto LABEL_8;
        }

        v45 = v37;
        v46 = v10;
        v47 = 0;
        v48 = 1;
LABEL_24:
        v49 = sub_100003ABC(&unk_100601470, &unk_1004C81B0);
        v50 = swift_allocObject();
        *(v50 + 16) = v137;
        v51 = v135;
        *(v50 + 32) = v134;
        *(v50 + 40) = v51;
        *(v50 + 48) = v136;
        *(v50 + 56) = v46;
        v52 = v132;
        *(v50 + 64) = v132;
        *(v50 + 72) = v45;
        v53 = v133;
        *(v50 + 80) = v133;

        v128 = v46;
        v54 = v46;
        v13 = v53;
        v129 = v45;
        sub_10002F4C4(v134, v135, v136, v54, v52, v45, v53);
        v55 = v142;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v56 = sub_1004B6CE4();
        v58 = v57;
        v139(v55, v143);
        v59 = swift_allocObject();
        *(v59 + 88) = 0;
        *(v59 + 96) = 0;
        *(v59 + 16) = v56;
        *(v59 + 24) = v58;
        v60 = v131;
        *(v59 + 32) = v131;
        *(v59 + 40) = 0;
        *(v59 + 48) = 0;
        strcpy(v147, "ActionMenu: ");
        BYTE13(v147[0]) = 0;
        HIWORD(v147[0]) = -5120;
        v150._countAndFlagsBits = v140;
        v150._object = v15;
        sub_1004BC024(v150);

        v61 = *(&v147[0] + 1);
        *(v59 + 56) = *&v147[0];
        *(v59 + 64) = v61;
        *(v59 + 80) = v50;
        *(v59 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v147[0] = v6;
        sub_1000382D0(v59, v60, isUniquelyReferenced_nonNull_native);
        v6 = *&v147[0];
        if (*(*&v147[0] + 16))
        {
          v63 = sub_1000346EC(v47);
          if (v64)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v63);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v127;
            v10 = v128;
            if ((v84 & 1) == 0)
            {
              v14 = sub_100017DD4(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v85 = *(v14 + 24);
            if (v9 >= v85 >> 1)
            {
              v14 = sub_100017DD4((v85 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v86 = v14 + 56 * v9;
            *(v86 + 32) = v59 | 0x8000000000000000;
            *(v86 + 40) = 0u;
            *(v86 + 56) = 0u;
            *(v86 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_10003CBF8(v134, v135, v136, v10, v132, v129, v13);

            v3 = v130;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v65 = swift_allocObject();
            *(v65 + 16) = v137;
            *(v65 + 32) = v59 | 0x8000000000000000;
            *(v65 + 40) = 0u;
            *(v65 + 56) = 0u;
            *(v65 + 72) = 0u;

            v66 = v142;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v67 = sub_1004B6CE4();
            v69 = v68;
            v139(v66, v143);
            v59 = swift_allocObject();
            *(v59 + 88) = 0;
            *(v59 + 96) = 0;
            *(v59 + 16) = v67;
            *(v59 + 24) = v69;
            *(v59 + 32) = v47;
            *(v59 + 40) = 0;
            *(v59 + 48) = 0;
            strcpy(v147, "ActionMenu: ");
            BYTE13(v147[0]) = 0;
            HIWORD(v147[0]) = -5120;
            v151._countAndFlagsBits = v140;
            v151._object = v15;
            sub_1004BC024(v151);

            v70 = *(&v147[0] + 1);
            *(v59 + 56) = *&v147[0];
            *(v59 + 64) = v70;
            *(v59 + 80) = v65;
            *(v59 + 72) = 1;

            v71 = swift_isUniquelyReferenced_nonNull_native();
            *&v147[0] = v6;
            v72 = sub_1000346EC(v47);
            v74 = v6[2];
            v75 = (v73 & 1) == 0;
            v76 = __OFADD__(v74, v75);
            v77 = v74 + v75;
            if (v76)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v93 = sub_1000346EC(0);
                if (v94)
                {
                  v10 = *(v6[7] + 8 * v93);
                  v95 = *(v49 + 80);

                  v96 = v142;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v97 = sub_1004B6CE4();
                  v99 = v98;
                  v139(v96, v143);
                  v100 = swift_allocObject();
                  *(v100 + 88) = 0;
                  *(v100 + 96) = 0;
                  *(v100 + 16) = v97;
                  *(v100 + 24) = v99;
                  *(v100 + 32) = 6;
                  *(v100 + 40) = 0;
                  *(v100 + 48) = 0;
                  strcpy(v147, "ActionMenu: ");
                  BYTE13(v147[0]) = 0;
                  HIWORD(v147[0]) = -5120;

                  v152._countAndFlagsBits = v140;
                  v152._object = v15;
                  sub_1004BC024(v152);

                  v101 = *(&v147[0] + 1);
                  *(v100 + 56) = *&v147[0];
                  *(v100 + 64) = v101;
                  *(v100 + 80) = v95;
                  *(v100 + 72) = 1;
                  v19 = v100 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v102 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v102)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v78 = v73;
            if (v6[3] < v77)
            {
              sub_1000357A8(v77, v71);
              v72 = sub_1000346EC(v47);
              if ((v78 & 1) != (v79 & 1))
              {
                sub_1004BDAA4();
                __break(1u);

                __break(1u);
                JUMPOUT(0x100032350);
              }

              goto LABEL_31;
            }

            if (v71)
            {
LABEL_31:
              v6 = *&v147[0];
              if (v78)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v80 = v72;
              sub_1000397FC();
              v72 = v80;
              v6 = *&v147[0];
              if (v78)
              {
LABEL_32:
                *(v6[7] + 8 * v72) = v59;

                if (v48)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v63 = sub_1000346EC(0);
                  if (v83)
                  {
                    v13 = v133;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v72 >> 6) + 8] |= 1 << v72;
          *(v6[6] + v72) = v47;
          *(v6[7] + 8 * v72) = v59;
          v81 = v6[2];
          v76 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v76)
          {
            goto LABEL_60;
          }

          v6[2] = v82;
          if ((v48 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v38);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v40 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v40 & 1) == 0)
      {
        v14 = sub_100017DD4(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v41 = *(v14 + 24);
      v42 = v136;
      v43 = v135;
      if (v9 >= v41 >> 1)
      {
        v87 = sub_100017DD4((v41 > 1), v9 + 1, 1, v14);
        v43 = v135;
        v42 = v136;
        v14 = v87;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v44 = (v14 + 56 * v9);
      v44[4] = v134;
      v44[5] = v43;
      v44[6] = v42;
      v44[7] = v13;
      v44[8] = v10;
      v44[9] = v36;
      v44[10] = v133;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v127;
LABEL_9:
      if (++v3 == v126)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_100017CC8((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v88 = sub_1000346EC(12);
  if (v89)
  {
    v49 = *(v6[7] + 8 * v88);
    swift_beginAccess();
    if (*(*(v49 + 80) + 16) <= 2uLL)
    {
      v90 = v6[2];

      if (v90)
      {
        sub_1000346EC(6);
        if ((v91 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_100022B9C(v92);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v106 = sub_1000346EC(6);
          if ((v107 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v106);
          swift_beginAccess();
          v108 = *(v17 + 10);
          v19 = *(v108 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v109 = 32;
          while (v10 < *(v108 + 16))
          {
            v111 = *(v108 + v109);
            if (v111 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*((v111 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v110 = sub_1004BD9C4();

                  if ((v110 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_1000346EC(6);
                    if (v112)
                    {
                      swift_beginAccess();

                      sub_100032BD0(v10, v147);
                      swift_endAccess();
                      sub_100030F40(v147);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v109 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_100017DD4(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v104 = *(v17 + 2);
          v103 = *(v17 + 3);
          if (v104 >= v103 >> 1)
          {
            v17 = sub_100017DD4((v103 > 1), v104 + 1, 1, v17);
          }

          *(v17 + 2) = v104 + 1;
          v105 = &v17[56 * v104];
          *(v105 + 4) = v19;
          *(v105 + 40) = 0u;
          *(v105 + 56) = 0u;
          *(v105 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v113 = sub_1000346EC(0), (v114 & 1) != 0))
  {
    v115 = *(v6[7] + 8 * v113);
  }

  else
  {
LABEL_97:
    v116 = v142;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v117 = sub_1004B6CE4();
    v119 = v118;
    v139(v116, v143);
    v115 = swift_allocObject();
    *(v115 + 88) = 0;
    *(v115 + 96) = 0;
    *(v115 + 16) = v117;
    *(v115 + 24) = v119;
    *(v115 + 32) = 0;
    *(v115 + 40) = 0;
    *(v115 + 48) = 0;
    strcpy(v144, "ActionMenu: ");
    BYTE5(v144[1]) = 0;
    HIWORD(v144[1]) = -5120;
    v153._countAndFlagsBits = v140;
    v153._object = v15;
    sub_1004BC024(v153);

    v120 = v144[1];
    *(v115 + 56) = v144[0];
    *(v115 + 64) = v120;
    *(v115 + 80) = v123;
    *(v115 + 72) = 1;
  }

  return v115;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v17._countAndFlagsBits = a3;
  v17._object = v12;
  sub_1004BC024(v17);

  v14 = v16[0];
  v15 = v16[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = v15;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_100032438@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_1000134E4();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_100013490();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_1004BD404(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004BC024(v56);

      v57._object = 0x80000001004FC820;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_1004BC024(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_100017CC8((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_100191FD0(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004BC024(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_100017CC8(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100017CC8((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_1004BC024(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_1004BC024(v54);
        if (!v27)
        {
          sub_1000130F8(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_1004BC024(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_100017CC8((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_1004BD404(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004BC024(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x80000001004FC7F0;
      sub_1004BC024(v51);
      if (!v27)
      {
        sub_1000130F8(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_1004BC024(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_100017CC8(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_100017CC8((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_1004BD404(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_1004BC024(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_1004BC024(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_1004BC024(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_100032BD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003B174(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_100032CA4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003B214(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100032D30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003B228(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_10003E278(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100032DE0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_100032E6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_1004BC024(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_1004BC024(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v20._countAndFlagsBits = a6;
  v20._object = v13;
  sub_1004BC024(v20);

  v15 = v19[1];
  *(v11 + 56) = v19[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  v17 = *(v11 + 96);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_10003CC4C(v16, v17);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

char *ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v54 = 0;
  v55 = 0xE000000000000000;
  v64._countAndFlagsBits = 8254;
  v64._object = 0xE200000000000000;
  sub_1004BC024(v64);
  v63 = v2;
  type metadata accessor for ActionMenu(v4, v5, v6);
  sub_1004BD5C4();
  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_100017CC8(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = (v11 + 1);
  if (v11 >= v10 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v13 = swift_allocObject();
    *(v9 + 2) = v12;
    v14 = &v9[16 * v11];
    *(v14 + 4) = v7;
    *(v14 + 5) = v8;
    *(v13 + 16) = v9;
    v50 = (v13 + 16);
    v15 = *(v3 + 88);
    if (v15)
    {
      v16 = *(v3 + 96);

      v18 = v15(v17);
      sub_10003CC4C(v15, v16);
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v46 = v3;
    v54 = v18;

    sub_100022B9C(v19);
    v11 = v54;
    v62 = &_swiftEmptySetSingleton;
    v20 = *(v54 + 2);

    v49 = v20;
    if (!v20)
    {
      break;
    }

    v21 = 0;
    v7 = 0;
    v9 = (v11 + 40);
    v12 = _swiftEmptyArrayStorage;
    v48 = v11;
    while (1)
    {
      v10 = *(v11 + 16);
      if (v21 >= v10)
      {
        break;
      }

      v53 = v21;
      v23 = *(v9 - 1);
      v22 = *v9;
      v8 = *(v9 + 1);
      v3 = *(v9 + 2);
      v24 = *(v9 + 3);
      v25 = *(v9 + 4);
      v26 = *(v9 + 5);
      v54 = v23;
      v55 = v22;
      v56 = v8;
      v57 = v3;
      v58 = v24;
      v59 = v25;
      v60 = v26;
      sub_10002F4C4(v23, v22, v8, v3, v24, v25, v26);
      if (sub_1000335EC(&v54, v50, a1, a2 & 1, &v62))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v12;
        v47 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100015040(0, *(v12 + 2) + 1, 1);
          v12 = v61;
        }

        v28 = v8;
        v29 = v22;
        v30 = v3;
        v31 = v24;
        v32 = v25;
        v33 = v26;
        v34 = v23;
        v36 = *(v12 + 2);
        v35 = *(v12 + 3);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_100015040((v35 > 1), v36 + 1, 1);
          v37 = v36 + 1;
          v34 = v23;
          v33 = v26;
          v32 = v25;
          v31 = v24;
          v30 = v3;
          v29 = v22;
          v28 = v8;
          v12 = v61;
        }

        *(v12 + 2) = v37;
        v38 = &v12[56 * v36];
        *(v38 + 4) = v34;
        *(v38 + 5) = v29;
        *(v38 + 6) = v28;
        *(v38 + 7) = v30;
        *(v38 + 8) = v31;
        *(v38 + 9) = v32;
        *(v38 + 10) = v33;
        v7 = v47;
      }

      else
      {
        sub_10003CBF8(v23, v22, v8, v3, v24, v25, v26);
      }

      v21 = v53 + 1;
      v9 += 56;
      v11 = v48;
      if (v49 == v53 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v9 = sub_100017CC8((v10 > 1), v12, 1, v9);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_17:
  v39 = v12;

  if (a2)
  {
    v41 = v12;
    v42 = v50;
    v43 = sub_10003C6D0(v41, v50, &v62);

    v39 = v43;
    v44 = v46;
    if (*(v39 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v44 = v46;
    v42 = v50;
    if (*(v39 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v42 + 2))
  {
    __break(1u);
    return result;
  }

  sub_10003C9C0(1, 1, 0xD00000000000001CLL, 0x80000001004FC720);
LABEL_23:
  if (*(v44 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_10003B174(v39);
    }

    v45 = *(v39 + 2);
    v54 = v39 + 32;
    v55 = v45;
    sub_10003B30C(&v54, sub_10003E4D4, sub_10003E490);
  }

  return v39;
}

uint64_t sub_1000335EC(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_100191FD0(v5, a3);
    if (v10)
    {
      sub_1004BD404(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004BC024(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == 1)
    {
      if (a4)
      {
        v22 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_100033BC4(v22);
        sub_1001293D4(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004BC024(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_1000FE2DC(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_1004BC024(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_1004BC024(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_1000130F8(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_1004BC024(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_100017CC8((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      v35 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_100033BC4(v35);
      sub_1004BD404(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004BC024(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x80000001004FC7F0;
      sub_1004BC024(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_1000130F8(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_1004BC024(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_100017CC8((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_1000134E4();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_100013490();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004BD404(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_1004BC024(v46);

    v11._object = 0x80000001004FC820;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_1004BC024(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

uint64_t sub_100033BC4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100199324(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100033CA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);

  if (!v8)
  {
  }

  v11 = 0;
  v25 = (v4 + 16);
  v12 = (v4 + 8);
  v13 = (v7 + 40);
  *&v10 = 136446210;
  v22 = v10;
  v23 = v12;
  v24 = v8;
  while (v11 < *(v7 + 16))
  {
    v14 = *v13;
    v26 = *(v13 - 1);
    if (qword_1005FFD48 != -1)
    {
      swift_once();
    }

    v15 = sub_100007084(v3, qword_1006019A0);
    (*v25)(v6, v15, v3);

    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v3;
      v20 = v7;
      v21 = swift_slowAlloc();
      v27 = v21;
      *v18 = v22;
      *(v18 + 4) = sub_100012018(v26, v14, &v27);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s", v18, 0xCu);
      sub_100004C6C(v21);
      v7 = v20;
      v3 = v19;
      v8 = v24;

      v12 = v23;
    }

    result = (*v12)(v6, v3);
    ++v11;
    v13 += 2;
    if (v8 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100017DD4(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_100017DD4((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  *(v7 + 10) = *(a1 + 6);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_100030EE4(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_100022B9C(v1);
  swift_endAccess();
}

void *ActionMenu.deinit()
{

  sub_10003CC4C(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_10003CC4C(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_100034110@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_100034120()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_10003CCB0;
}

uint64_t sub_1000342C8(uint64_t a1, uint64_t a2)
{

  return sub_1004BA324();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_10003CD4C;
}

uint64_t sub_1000343A8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return sub_1004BA314();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100034488(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BBE24();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  if (v3)
  {
    return sub_1004BA314();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000344EC(uint64_t a1, uint64_t a2)
{

  return sub_1004BA344();
}

id sub_10003453C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1004BBE24();
  v5 = [objc_opt_self() *a3];

  return v5;
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_1004BDBA4();
  sub_1004BDBB4(a1 & 1);
  return sub_1004BDBF4();
}

uint64_t sub_10003462C(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4();
  }
}

uint64_t sub_100034658(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006019A0);
  sub_100007084(v2, qword_1006019A0);
  return sub_1004B80A4();
}

unint64_t sub_1000346EC(uint64_t a1)
{
  sub_1004BDBA4();
  MenuType.rawValue.getter(a1);
  sub_1004BBF84();

  v2 = sub_1004BDBF4();

  return sub_100034B78(a1, v2);
}

unint64_t sub_100034774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BD384(*(v2 + 40));

  return sub_100034FBC(a1, v4);
}

unint64_t sub_1000347B8(uint64_t a1)
{
  v1 = a1;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  v2 = sub_1004BDBF4();
  return sub_100035478(v1, v2);
}

unint64_t sub_100034820(uint64_t a1)
{
  sub_1004B6D14();
  sub_10003D0E4(&qword_100601B38, &protocol conformance descriptor for UUID);
  v2 = sub_1004BBCD4();

  return sub_100035084(a1, v2);
}

unint64_t sub_1000348A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BCF94(*(v2 + 40));
  return sub_100035230(a1, v4, &qword_100604610, UIView_ptr);
}

unint64_t sub_1000348F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BCF94(*(v2 + 40));
  return sub_100035230(a1, v4, &qword_100601B28, MPCPlayerPath_ptr);
}

unint64_t sub_100034944(Swift::UInt a1, Swift::UInt a2)
{
  sub_1004BDBA4();
  sub_1004BDBB4(a1);
  sub_1004BDBB4(a2);
  v4 = sub_1004BDBF4();

  return sub_1000352FC(a1, a2, v4);
}

unint64_t sub_1000349C4(uint64_t a1)
{
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v2 = sub_1004BDBF4();

  return sub_100035374(a1, v2);
}

unint64_t sub_100034A54(uint64_t a1)
{
  v1 = a1;
  sub_1004BDBA4();
  sub_1004BDBB4(v1 + 1);
  v2 = sub_1004BDBF4();
  return sub_100035478(v1, v2);
}

unint64_t sub_100034AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1004BD9C4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100034B78(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_1004BD9C4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100034FBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003D034(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1004BD394();
      sub_10003D090(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100035084(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1004B6D14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_10003D0E4(&qword_100601B40, &protocol conformance descriptor for UUID);
      v16 = sub_1004BBD84();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100035230(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100009130(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1004BCFA4();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000352FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100035374(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1004BBE64();
      v8 = v7;
      if (v6 == sub_1004BBE64() && v8 == v9)
      {
        break;
      }

      v11 = sub_1004BD9C4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100035478(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000354E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601C10, &qword_1004C95C8);
  v37 = v4;
  result = sub_1004BD6D4();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1004BDBA4();
      sub_1004BBF84();
      result = sub_1004BDBF4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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
  return result;
}

uint64_t sub_1000357A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601C38, &qword_1004C95E0);
  v32 = v4;
  v6 = sub_1004BD6D4();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

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
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    sub_1004BDBA4();
    sub_1004BBF84();

    v15 = sub_1004BDBF4();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x100035BA0);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100035BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601C18, &qword_1004C95D0);
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10003E13C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10003D034(v23, &v36);
        sub_100004DE4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1004BD384(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10003E13C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100035E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601C00, &qword_1004C95B8);
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1004BDBA4();
      sub_1004BDBB4(v20);
      result = sub_1004BDBF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_10003610C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601BF8, &qword_1004C95B0);
  v34 = v4;
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004BDBA4();
      sub_1004BBF84();
      result = sub_1004BDBF4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000363B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100003ABC(&qword_100600D18, &qword_1004C66C8);
  v39 = v4;
  result = sub_1004BD6D4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10003D0E4(&qword_100601B38, &protocol conformance descriptor for UUID);
      result = sub_1004BBCD4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10003677C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&unk_100601BE0, &unk_1004C9598);
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_10003E13C(v21, v32);
      }

      else
      {
        sub_100004DE4(v21, v32);
        v22 = v20;
      }

      result = sub_1004BCF94(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_10003E13C(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000369F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B6D14();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100003ABC(&qword_100601BC8, &qword_1004C9588);
  v42 = v4;
  result = sub_1004BD6D4();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v7 + 16);
    v39 = v7;
    v43 = (v7 + 32);
    v18 = result + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v44 = *(v7 + 72);
      v25 = v24 + v44 * v23;
      if (v42)
      {
        (*v43)(v45, v25, v6);
        v26 = *(v9 + 56);
        v27 = *(v41 + 72);
        sub_10003E14C(v26 + v27 * v23, v46);
      }

      else
      {
        (*v38)(v45, v25, v6);
        v28 = *(v9 + 56);
        v27 = *(v41 + 72);
        sub_10003E214(v28 + v27 * v23, v46);
      }

      sub_10003D0E4(&qword_100601B38, &protocol conformance descriptor for UUID);
      result = sub_1004BBCD4();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v11 + 48) + v44 * v19), v45, v6);
      result = sub_10003E14C(v46, *(v11 + 56) + v27 * v19);
      ++*(v11 + 16);
      v7 = v39;
      v9 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100036E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601BB8, &qword_1004D9240);
  v33 = v4;
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10003E13C(v24, v34);
      }

      else
      {
        sub_100004DE4(v24, v34);
      }

      sub_1004BDBA4();
      sub_1004BBF84();
      result = sub_1004BDBF4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10003E13C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000370FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601BA0, &qword_1004C9560);
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_1004BDBA4();
      sub_1004BDBB4(v23);
      sub_1004BDBB4(v22);
      result = sub_1004BDBF4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_100037394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601B30, &unk_1004C9500);
  result = sub_1004BD6D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = result + 64;
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
        swift_unknownObjectRetain();
      }

      result = sub_1004BCF94(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100037604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_100003ABC(&qword_100601B90, &qword_1004C9550);
  v5 = *(v52 - 8);
  __chkstk_darwin();
  v51 = &v40 - v6;
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100003ABC(&qword_100601B98, &qword_1004C9558);
  v47 = v4;
  result = sub_1004BD6D4();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10003D0E4(&qword_100601B38, &protocol conformance descriptor for UUID);
      result = sub_1004BBCD4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100037AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_100601B68, &qword_1004C9528);
  v46 = v4;
  v6 = sub_1004BD6D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      sub_1004BDBA4();
      sub_1004BDBB4(v49 + 1);
      result = sub_1004BDBF4();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100037DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1004B7B14();
  v5 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100003ABC(&qword_100601B20, &unk_1004C94F0);
  v42 = v4;
  result = sub_1004BD6D4();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1004BDBA4();
      sub_1004BBF84();
      result = sub_1004BDBF4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100038120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10003BED8(a3, a4, sub_100034AC0);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000354E8(v18, a5 & 1);
      v13 = sub_10003BED8(a3, a4, sub_100034AC0);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1004BDAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100039684();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1000382D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000346EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000357A8(v14, a3 & 1);
      result = sub_1000346EC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004BDAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000397FC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_10003841C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100034774(a2);
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
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100039958();
      goto LABEL_7;
    }

    sub_100035BD4(v13, a3 & 1);
    v19 = sub_100034774(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10003D034(a2, v21);
      return sub_1000392A0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1004BDAA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100004C6C(v17);

  return sub_10003E13C(a1, v17);
}

uint64_t sub_100038568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003BED8(a2, a3, sub_100034AC0);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003610C(v16, a4 & 1);
      v11 = sub_10003BED8(a2, a3, sub_100034AC0);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1004BDAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100039C48();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_10003870C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004B6D14();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100034820(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100039DB8();
      goto LABEL_7;
    }

    sub_1000363B4(v17, a3 & 1);
    v23 = sub_100034820(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10003931C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1004BDAA4();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_1000388D8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000348A4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10003A02C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10003677C(v13, a3 & 1);
    v8 = sub_1000348A4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100009130(0, &qword_100604610, UIView_ptr);
      result = sub_1004BDAA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100004C6C(v19);

    return sub_10003E13C(a1, v19);
  }

  else
  {
    sub_1000393D4(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100038A28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004B6D14();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100034820(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10003A1AC();
      goto LABEL_7;
    }

    sub_1000369F4(v17, a3 & 1);
    v24 = sub_100034820(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10003943C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1004BDAA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8) + 72) * v14;

  return sub_10003E1B0(a1, v22);
}

_OWORD *sub_100038C10(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003BED8(a2, a3, sub_100034AC0);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003A4B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100036E44(v16, a4 & 1);
    v11 = sub_10003BED8(a2, a3, sub_100034AC0);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1004BDAA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100004C6C(v22);

    return sub_10003E13C(a1, v22);
  }

  else
  {
    sub_100039518(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_100038D88(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100034944(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_10003A654();
    result = v19;
    goto LABEL_8;
  }

  sub_1000370FC(v16, a4 & 1);
  result = sub_100034944(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = sub_1004BDAA4();
  __break(1u);
  return result;
}

id sub_100038EC4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000348F4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100037394(v13, a3 & 1);
      v8 = sub_1000348F4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009130(0, &qword_100601B28, MPCPlayerPath_ptr);
        result = sub_1004BDAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10003A7A4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_100039040(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004B6D14();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100034820(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10003A908();
      goto LABEL_7;
    }

    sub_100037604(v17, a3 & 1);
    v28 = sub_100034820(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100039584(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1004BDAA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_100003ABC(&qword_100601B90, &qword_1004C9550);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_100039250(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1000392A0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10003E13C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10003931C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004B6D14();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000393D4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10003E13C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10003943C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004B6D14();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  result = sub_10003E14C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_100039518(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10003E13C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100039584(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1004B6D14();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100003ABC(&qword_100601B90, &qword_1004C9550);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_100039684()
{
  v1 = v0;
  sub_100003ABC(&qword_100601C10, &qword_1004C95C8);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

void *sub_1000397FC()
{
  v1 = v0;
  sub_100003ABC(&qword_100601C38, &qword_1004C95E0);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

  return result;
}

void *sub_100039958()
{
  v1 = v0;
  sub_100003ABC(&qword_100601C18, &qword_1004C95D0);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_10003D034(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100004DE4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10003E13C(v22, (*(v4 + 56) + v17));
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

  return result;
}

void *sub_100039AFC()
{
  v1 = v0;
  sub_100003ABC(&qword_100601C00, &qword_1004C95B8);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void *sub_100039C48()
{
  v1 = v0;
  sub_100003ABC(&qword_100601BF8, &qword_1004C95B0);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

  return result;
}

char *sub_100039DB8()
{
  v1 = v0;
  v31 = sub_1004B6D14();
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600D18, &qword_1004C66C8);
  v3 = *v0;
  v4 = sub_1004BD6C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10003A02C()
{
  v1 = v0;
  sub_100003ABC(&unk_100601BE0, &unk_1004C9598);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_100004DE4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10003E13C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

char *sub_10003A1AC()
{
  v1 = v0;
  v35 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1004B6D14();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601BC8, &qword_1004C9588);
  v4 = *v0;
  v5 = sub_1004BD6C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_10003E214(*(v4 + 56) + v25, v34);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        result = sub_10003E14C(v24, *(v26 + 56) + v25);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10003A4B0()
{
  v1 = v0;
  sub_100003ABC(&qword_100601BB8, &qword_1004D9240);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100004DE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10003E13C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10003A654()
{
  v1 = v0;
  sub_100003ABC(&qword_100601BA0, &qword_1004C9560);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void *sub_10003A7A4()
{
  v1 = v0;
  sub_100003ABC(&qword_100601B30, &unk_1004C9500);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        result = swift_unknownObjectRetain();
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

  return result;
}

char *sub_10003A908()
{
  v1 = v0;
  v41 = sub_100003ABC(&qword_100601B90, &qword_1004C9550);
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v30 - v2;
  v39 = sub_1004B6D14();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601B98, &qword_1004C9558);
  v4 = *v0;
  v5 = sub_1004BD6C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_10003AC64()
{
  sub_100003ABC(&qword_100601B68, &qword_1004C9528);
  v29 = v0;
  v1 = *v0;
  v30 = sub_1004BD6C4();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

char *sub_10003AE20()
{
  v1 = v0;
  v35 = sub_1004B7B14();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601B20, &unk_1004C94F0);
  v3 = *v0;
  v4 = sub_1004BD6C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_10003B0A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = *(*v3 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFSUB__(1, v6);
  v8 = 1 - v6;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v4 + 3) >> 1)
  {
    if (v5 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100018840(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v3 = v4;
  }

  result = sub_100133234();
  *v3 = v4;
  return result;
}

uint64_t sub_10003B19C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1004BD6A4();
  }

  return sub_1004BD494();
}

Swift::Int sub_10003B278(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024DB94(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10003B30C(v5, sub_10003E4D4, sub_10003E490);
  *a1 = v2;
  return result;
}

Swift::Int sub_10003B30C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1004BD8B4(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = sub_1004BC314();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t *sub_10003B414(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_1004C9620 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_1004C97C0 + 8 * *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      v10 = result + 7;
      v11 = *result;
      if (*result < 0)
      {
        v12 = &unk_1004C97C0 + 8 * *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      else
      {
        v12 = &unk_1004C9620 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 4);
      v14 = *(result + 5);
      v15 = *(result + 6);
      v16 = *(result + 1);
      *v10 = *result;
      *(result + 9) = v16;
      *(result + 11) = *(result + 2);
      v17 = result[6];
      *result = v7;
      *(result + 1) = v13;
      *(result + 3) = v14;
      *(result + 5) = v15;
      result -= 7;
      v10[6] = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10003B4FC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_10003BBD0((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10024DB80(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          result = sub_10024DAF4(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_10024DB80(v10);
    v10 = result;
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_1004C97C0 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v14 = &unk_1004C9620 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_1004C97C0 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v16 = &unk_1004C9620 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_1004C97C0 + 8 * *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_1004C9620 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_1004C9620 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_1004C97C0 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_1004C9620 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_1004C97C0 + 8 * *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = (&unk_1004C97C0 + 8 * *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x20));
    }

    else
    {
      v50 = (&unk_1004C9620 + 8 * v48);
    }

    result = *v50;
    if (*v47 >= result)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100018024(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          result = sub_100018024((v57 > 1), v5 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *v107;
        if (!*v107)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
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
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_10003BBD0((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10024DB80(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          result = sub_10024DAF4(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_10003BBD0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_42;
    }

LABEL_26:
    v22 = v6 - 56;
    v5 -= 56;
    v23 = v12;
    while (1)
    {
      v25 = *(v23 - 56);
      v23 -= 56;
      v24 = v25;
      if (v25 < 0)
      {
        v26 = &unk_1004C97C0 + 8 * *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
LABEL_32:
          v28 = &unk_1004C97C0 + 8 * *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          goto LABEL_33;
        }
      }

      else
      {
        v26 = &unk_1004C9620 + 8 * v24;
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

      v28 = &unk_1004C9620 + 8 * v27;
LABEL_33:
      if (*v26 < *v28)
      {
        if ((v5 + 56) != v6)
        {
          v32 = *v22;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        if (v12 <= v4 || (v6 -= 56, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_26;
      }

      if ((v5 + 56) != v12)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
      }

      v5 -= 56;
      v12 = v23;
      if (v23 <= v4)
      {
        v12 = v23;
        goto LABEL_42;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    do
    {
      v13 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v14 = &unk_1004C97C0 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v16 = &unk_1004C9620 + 8 * v15;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = &unk_1004C9620 + 8 * v13;
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = &unk_1004C97C0 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_12:
      if (*v14 >= *v16)
      {
        v17 = v4;
        v18 = v7 == v4;
        v4 += 56;
        if (v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        *(v7 + 6) = *(v17 + 6);
        *(v7 + 1) = v20;
        *(v7 + 2) = v21;
        *v7 = v19;
        goto LABEL_18;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 56;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_42:
  v35 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v36])
  {
    memmove(v6, v4, 56 * v36);
  }

  return 1;
}

uint64_t sub_10003BED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1004BDBA4();
  sub_1004BBF84();
  v5 = sub_1004BDBF4();

  return a3(a1, a2, v5);
}

uint64_t sub_10003BF5C(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  sub_100009178(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  sub_100009178(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_1004BD9C4();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  sub_100009178(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  sub_100009178(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1004BD9C4();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  sub_100004C6C(v26);
  sub_100004C6C(v29);
  return v15 & 1;
}

uint64_t sub_10003C16C()
{

  return swift_deallocObject();
}

char *sub_10003C1A4(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_100032438(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100017DD4(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_100017DD4((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_10003C3A4(char *result, uint64_t a2)
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

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
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

    v4 = sub_100018840(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10013248C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_10003C464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601C10, &qword_1004C95C8);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003BED8(v5, v6, sub_100034AC0);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003C58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100601BB8, &qword_1004D9240);
    v3 = sub_1004BD6F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F778(v4, &v13, &qword_100601C08, &qword_1004C95C0);
      v5 = v13;
      v6 = v14;
      result = sub_10003BED8(v13, v14, sub_100034AC0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10003E13C(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003C6D0(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 40;
  v6 = _swiftEmptyArrayStorage;
  v24 = *(result + 16);
  v22 = result + 40;
  do
  {
    v23 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v9 = *(v7 - 1);
      v32 = v7[4];
      v10 = v7[5];
      v30 = v7[2];
      v31 = v7[3];
      v28 = *v7;
      v29 = v7[1];
      if (v9 < 0)
      {
        break;
      }

      v27 = v10;

      sub_1004BD404(49);

      v33._countAndFlagsBits = ActionType.rawValue.getter(v9);
      sub_1004BC024(v33);

      v34._object = 0x80000001004FC7C0;
      v34._countAndFlagsBits = 0xD00000000000002BLL;
      sub_1004BC024(v34);
      v11 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v11;
      v13 = i + 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_100017CC8(0, *(v11 + 2) + 1, 1, v11);
        *a2 = v11;
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_100017CC8((v14 > 1), v15 + 1, 1, v11);
        *a2 = v11;
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = 544743456;
      *(v16 + 5) = 0xE400000000000000;
      v17 = *a3;

      v18 = sub_1000FE2DC(v9, v17);

      v3 = v24;
      v4 = i + 1;
      v10 = v27;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      result = sub_10003CBF8(v9, v28, v29, v30, v31, v32, v27);
      v7 += 7;
      if (v13 == v24)
      {
        return v23;
      }
    }

LABEL_15:
    v6 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100015040(0, v23[2] + 1, 1);
      v6 = v23;
    }

    v5 = v22;
    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_100015040((v19 > 1), v20 + 1, 1);
      v6 = v23;
    }

    v6[2] = v20 + 1;
    v21 = &v6[7 * v20];
    v21[4] = v9;
    v21[5] = v28;
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v21[9] = v32;
    v21[10] = v10;
  }

  while (v4 != v3);
  return v6;
}