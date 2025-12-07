uint64_t sub_422D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_42374;

  return sub_425B4(a2, a3);
}

uint64_t sub_42374()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_42470()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  sub_49130();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_490EC(v2);

  return sub_422D4(v3, v4, v5);
}

uint64_t sub_425B4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_A40F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_A2EA4();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v2[15] = *(v5 + 64);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_426D8, 0, 0);
}

uint64_t sub_426D8()
{
  sub_49170();
  sub_40178();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  (*(v4 + 16))(v1, v0[8], v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[17] = v8;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v5;
  v9 = v5;
  v10 = swift_task_alloc();
  v0[18] = v10;
  sub_4BF0(&qword_DD4F8, &qword_A9330);
  *v10 = v0;
  v10[1] = sub_4282C;
  sub_49104();

  return withTimeout<A>(seconds:operation:)(v11);
}

uint64_t sub_4282C()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    v7 = sub_429A0;
  }

  else
  {

    v7 = sub_42934;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_42934()
{
  sub_5950();
  v1 = *(v0 + 40);

  sub_49144();

  return v2(v1);
}

uint64_t sub_429A0()
{
  sub_40178();
  v1 = v0[19];

  v0[6] = v1;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if (swift_dynamicCast())
  {

    if (qword_DA8D0 != -1)
    {
      sub_49044(&qword_DA8D0);
    }

    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    v5 = sub_A43D4();
    sub_48A4(v5, qword_DD4D0);
    sub_4911C();
    sub_81094(v6, v7, v8, v9, v10, v11);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    if (qword_DA8D0 != -1)
    {
      sub_49044(&qword_DA8D0);
    }

    v12 = sub_A43D4();
    sub_48A4(v12, qword_DD4D0);
    sub_A4B54(39);

    swift_getErrorValue();
    v16._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v16);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    sub_A46D4(v17);
    sub_810AC(0xD000000000000024, 0x80000000000B08E0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000026, 0x80000000000B0910);
  }

  sub_49144();

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_42C28@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v48 = a3;
  v5 = sub_4BF0(&qword_DB960, &unk_A6C00);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = sub_4BF0(&qword_DD220, qword_A9B20);
  __chkstk_darwin(v20 - 8);
  v22 = &v46 - v21;
  v23 = sub_A2EA4();
  __chkstk_darwin(v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  if (*a2 && *(a1 + 16))
  {
    v28 = a2[2];
    v29 = *(a2 + 40);
    if ((v29 & 1) == 0)
    {
      v28 = a2[4];
    }

    v46 = v28;
    v47 = v24;
    if (v29)
    {
      sub_589D0(v27, v19);
      v30 = type metadata accessor for CalendarEvent(0);
      if (sub_CF2C(v19, 1, v30) == 1)
      {
        v17 = v19;
LABEL_12:
        sub_11E34(v17, &qword_DB960, &unk_A6C00);
        sub_A924(v22, 1, 1, v23);
LABEL_15:
        sub_11E34(v22, &qword_DD220, qword_A9B20);
        v35 = type metadata accessor for ImportantEventInfo(0);
        return sub_A924(v48, 1, 1, v35);
      }
    }

    else
    {
      sub_589D0(a2[1], v17);
      v30 = type metadata accessor for CalendarEvent(0);
      if (sub_CF2C(v17, 1, v30) == 1)
      {
        goto LABEL_12;
      }

      v19 = v17;
    }

    v34 = v47;
    (*(v47 + 16))(v22, &v19[*(v30 + 20)], v23);
    sub_48E30(v19, type metadata accessor for CalendarEvent);
    sub_A924(v22, 0, 1, v23);
    if (sub_CF2C(v22, 1, v23) == 1)
    {
      goto LABEL_15;
    }

    v36 = (*(v34 + 32))(v26, v22, v23);
    if (v46 < 3)
    {
      v37 = _swiftEmptyArrayStorage;
    }

    else
    {
      __chkstk_darwin(v36);
      *(&v46 - 2) = v26;

      v37 = sub_61A9C(sub_47C94, (&v46 - 4), a1);
    }

    v38 = type metadata accessor for CalendarEvent(0);
    v39 = sub_A924(v14, 1, 1, v38);
    __chkstk_darwin(v39);
    *(&v46 - 2) = v26;
    sub_404AC(sub_47C28, a1, v11);
    sub_11E34(v14, &qword_DB960, &unk_A6C00);
    sub_47C48(v11, v14, &qword_DB960, &unk_A6C00);
    if (!v37[2])
    {
      sub_48F30(v14, v8, &qword_DB960, &unk_A6C00);
      if (sub_CF2C(v8, 1, v38) == 1)
      {

        sub_11E34(v8, &qword_DB960, &unk_A6C00);
        sub_11E34(v14, &qword_DB960, &unk_A6C00);
        v40 = type metadata accessor for ImportantEventInfo(0);
        v41 = v48;
        v42 = 1;
LABEL_28:
        sub_A924(v41, v42, 1, v40);
        return (*(v47 + 8))(v26, v23);
      }

      sub_11E34(v8, &qword_DB960, &unk_A6C00);
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v43 = sub_A43D4();
    sub_48A4(v43, qword_DD4D0);
    sub_810AC(0xD000000000000033, 0x80000000000B0850, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0890);
    if (qword_DAA28 != -1)
    {
      swift_once();
    }

    sub_7A124(0, qword_E0CB8, unk_E0CC0, byte_E0CC8, qword_E0CD0);
    v44 = type metadata accessor for ImportantEventInfo(0);
    v45 = v48;
    sub_47C48(v14, v48 + *(v44 + 20), &qword_DB960, &unk_A6C00);
    *v45 = v37;
    v41 = v45;
    v42 = 0;
    v40 = v44;
    goto LABEL_28;
  }

  v31 = type metadata accessor for ImportantEventInfo(0);
  v32 = v48;

  return sub_A924(v32, 1, 1, v31);
}

uint64_t sub_432E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_43330@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v69 = a2;
  v77 = type metadata accessor for CalendarEvent(0);
  v3 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_A2DB4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = sub_4BF0(&qword_DB960, &unk_A6C00);
  v12 = __chkstk_darwin(v11 - 8);
  v68 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = sub_4BF0(&qword_DD220, qword_A9B20);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = &v59 - v20;
  v21 = sub_A2EA4();
  __chkstk_darwin(v21);
  v66 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v23;
  v63 = *(v23 + 16);
  v64 = v23 + 16;
  v63();
  v24 = *a1;
  v25 = *(*a1 + 16);
  v74 = v21;
  v70 = v19;
  v71 = a1;
  if (v25)
  {
    v62 = v15;
    v79 = _swiftEmptyArrayStorage;
    v26 = v24;
    sub_7AD60(0, v25, 0);
    v27 = v79;
    v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v60 = v26;
    v29 = v26 + v28;
    v72 = v3;
    v30 = *(v3 + 72);
    v75 = v6 + 32;
    v76 = v30;
    v31 = v77;
    do
    {
      v32 = v78;
      sub_106FC(v29, v78);
      (*(v6 + 16))(v10, v32 + *(v31 + 24), v5);
      sub_48E30(v32, type metadata accessor for CalendarEvent);
      v79 = v27;
      v33 = v5;
      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        sub_7AD60((v34 > 1), v35 + 1, 1);
        v31 = v77;
        v27 = v79;
      }

      v27[2] = v35 + 1;
      (*(v6 + 32))(v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v10, v33);
      v29 += v76;
      --v25;
      v5 = v33;
    }

    while (v25);
    v65 = v27;
    v19 = v70;
    a1 = v71;
    v21 = v74;
    v3 = v72;
    v15 = v62;
    v24 = v60;
  }

  else
  {
    v65 = _swiftEmptyArrayStorage;
    v31 = v77;
  }

  sub_589D0(v24, v15);
  if (sub_CF2C(v15, 1, v31) == 1)
  {
    sub_11E34(v15, &qword_DB960, &unk_A6C00);
    v36 = 1;
    v37 = v73;
  }

  else
  {
    v37 = v73;
    (v63)(v73, &v15[*(v31 + 20)], v21);
    sub_48E30(v15, type metadata accessor for CalendarEvent);
    v36 = 0;
  }

  sub_A924(v37, v36, 1, v21);
  LODWORD(v72) = *(a1 + 40);
  if (v72)
  {
    v62 = a1[3];
  }

  else
  {
    v62 = 0;
  }

  v38 = a1[1];
  v39 = *(v38 + 16);
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v79 = _swiftEmptyArrayStorage;
    sub_7AD60(0, v39, 0);
    v40 = v79;
    v41 = v38 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v42 = *(v3 + 72);
    v75 = v6 + 32;
    v76 = v42;
    v43 = v61;
    do
    {
      v44 = v78;
      sub_106FC(v41, v78);
      (*(v6 + 16))(v43, v44 + *(v77 + 24), v5);
      sub_48E30(v44, type metadata accessor for CalendarEvent);
      v79 = v40;
      v45 = v5;
      v47 = v40[2];
      v46 = v40[3];
      if (v47 >= v46 >> 1)
      {
        sub_7AD60((v46 > 1), v47 + 1, 1);
        v40 = v79;
      }

      v40[2] = v47 + 1;
      (*(v6 + 32))(v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v43, v45);
      v41 += v76;
      --v39;
      v5 = v45;
    }

    while (v39);
    v19 = v70;
    a1 = v71;
    v21 = v74;
  }

  v48 = v68;
  sub_589D0(v38, v68);
  v49 = v77;
  if (sub_CF2C(v48, 1, v77) == 1)
  {
    sub_11E34(v48, &qword_DB960, &unk_A6C00);
    v50 = 1;
  }

  else
  {
    (v63)(v19, v48 + *(v49 + 20), v21);
    sub_48E30(v48, type metadata accessor for CalendarEvent);
    v50 = 0;
  }

  sub_A924(v19, v50, 1, v21);
  if (v72)
  {
    v51 = 0;
  }

  else
  {
    v51 = a1[3];
  }

  v52 = a1[2];
  v53 = a1[4];
  v54 = v69;
  (*(v67 + 32))(v69, v66, v74);
  v55 = type metadata accessor for DBCalendarState(0);
  *(v54 + v55[5]) = v65;
  sub_47C48(v73, v54 + v55[6], &qword_DD220, qword_A9B20);
  *(v54 + v55[7]) = v52;
  v56 = v54 + v55[8];
  *v56 = v62;
  LOBYTE(v52) = v72;
  *(v56 + 8) = (v72 & 1) == 0;
  *(v54 + v55[9]) = v53;
  *(v54 + v55[10]) = v40;
  result = sub_47C48(v19, v54 + v55[11], &qword_DD220, qword_A9B20);
  v58 = v54 + v55[12];
  *v58 = v51;
  *(v58 + 8) = v52 & 1;
  return result;
}

uint64_t sub_43AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t sub_43B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_A2EA4();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4F714(a1, v24);
  v28 = _swiftEmptyArrayStorage;
  v6 = sub_1BF68();
  v7 = 0;
  v27 = SACalendarParticipantStatusDECLINEDValue;
  while (1)
  {
    if (v6 == v7)
    {

      v28 = sub_29790(v17);
      sub_48314(&v28);

      v19 = v28;
      __chkstk_darwin(v18);
      v20 = v24;
      *(&v24 - 2) = v24;

      sub_61CC4(sub_48F7C, (&v24 - 4), v19);
      v22 = v21;
      __chkstk_darwin(v21);
      *(&v24 - 2) = v20;
      sub_61CC4(sub_48FB0, (&v24 - 4), v19);
      (*(v25 + 8))(v20, v26);
      return v22;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_A4B74();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if ([v8 allDay])
    {
      goto LABEL_8;
    }

    v10 = sub_48D44(v9, &selRef_selfParticipantStatus);
    v12 = v11;
    v13 = sub_A45F4();
    if (!v12)
    {

LABEL_17:
      sub_A4BB4();
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
      goto LABEL_19;
    }

    if (v10 != v13 || v12 != v14)
    {
      v16 = sub_A4E44();

      if (v16)
      {
LABEL_8:

        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_19:
    ++v7;
  }

  __break(1u);
LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_43E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((sub_79D74(a1) - 6) <= 2u && sub_1BF68())
  {
    v7 = sub_44130(a2);
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v8 = sub_A43D4();
    sub_48A4(v8, qword_DD4D0);
    sub_A4B54(37);

    v9 = v7[2];
    v20._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v20);

    v21._countAndFlagsBits = 0xD00000000000001DLL;
    v21._object = 0x80000000000B0BE0;
    sub_A46D4(v21);
    sub_810AC(0x20646E756F46, 0xE600000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0C80);

    v10 = sub_1BF68();
    v11 = sub_448EC(0, v10, a3);
    v12 = sub_45038(0, v7, a3);
    v13 = 0;
    v14 = 256;
    if (v11)
    {
      v14 = 65792;
    }

    v15 = 0x100000000;
    if (!v12)
    {
      v15 = 0;
    }

    v16 = v15 | v14;
    result = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v18 = sub_A43D4();
    sub_48A4(v18, qword_DD4D0);
    sub_810AC(0xD000000000000025, 0x80000000000B0C50, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0C80);
    sub_24824();
    result = swift_allocError();
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v16 = 0;
    *v19 = 2;
    v13 = 1;
  }

  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = v9;
  *(a4 + 40) = v16;
  *(a4 + 44) = BYTE4(v16);
  *(a4 + 45) = v13;
  return result;
}

void *sub_44130(unint64_t a1)
{
  v56 = sub_A2DB4();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CalendarEvent(0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_A2FE4();
  v6 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_A2EA4();
  v8 = *(v69 - 8);
  v9 = __chkstk_darwin(v69);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v65 = (&v47 - v13);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v64 = sub_A3004();
  v16 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_40:
  v18 = sub_A4C94();
  if (!v18)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  sub_1BF70();
  v63 = a1 & 0xC000000000000001;
  v51 = v11;
  v49 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = sub_A4B74();
  }

  else
  {
    v19 = *(a1 + 32);
  }

  v68 = v19;
  v20 = 0;
  v71[0] = _swiftEmptyArrayStorage;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v62 = (v6 + 13);
  v61 = enum case for Calendar.Component.minute(_:);
  v59 = (v16 + 8);
  v60 = (v6 + 1);
  v48 = v8;
  v57 = a1;
  v58 = (v8 + 8);
  v2 = &unk_D9000;
  while (v18 != v20)
  {
    if (v63)
    {
      v21 = sub_A4B74();
    }

    else
    {
      if (v20 >= *(v50 + 16))
      {
        goto LABEL_38;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_A2FD4();
    result = [v22 *(v2 + 1136)];
    if (!result)
    {
      goto LABEL_45;
    }

    v24 = result;
    v16 = v18;
    sub_A2E74();

    v11 = v2;
    result = [v68 *(v2 + 1136)];
    if (!result)
    {
      goto LABEL_44;
    }

    v25 = result;
    v26 = v65;
    sub_A2E74();

    v28 = v66;
    v27 = v67;
    (*v62)(v66, v61, v67);
    v29 = v70;
    v8 = sub_A2FC4();
    (*v60)(v28, v27);
    (*v59)(v29, v64);
    v6 = v58;
    v30 = *v58;
    v31 = v69;
    (*v58)(v26, v69);
    v30(v15, v31);
    if (v8)
    {
    }

    else
    {
      v6 = v71;
      sub_A4BB4();
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
    }

    v18 = v16;
    ++v20;
    a1 = v57;
    v2 = v11;
  }

  v11 = v71[0];
  v32 = sub_1BF68();
  if (!v32)
  {

    return _swiftEmptyArrayStorage;
  }

  v33 = v32;
  v71[0] = _swiftEmptyArrayStorage;
  v6 = v71;
  result = sub_7AD08(0, v32 & ~(v32 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v34 = v71[0];
    v67 = v11 & 0xC000000000000001;
    v66 = (v48 + 32);
    v65 = (v49 + 32);
    while (1)
    {
      a1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_37;
      }

      if (v67)
      {
        v35 = sub_A4B74();
      }

      else
      {
        if (v2 >= *(v11 + 16))
        {
          goto LABEL_39;
        }

        v35 = *(v11 + 8 * v2 + 32);
      }

      v6 = v35;
      result = sub_48D44(v35, &selRef_title);
      if (!v36)
      {
        goto LABEL_47;
      }

      v37 = result;
      v38 = v36;
      v70 = (v2 + 1);
      result = [v6 startDate];
      if (!result)
      {
        goto LABEL_48;
      }

      v39 = result;
      v40 = v11;
      v8 = v34;
      v41 = v51;
      sub_A2E74();

      result = [v6 calendarPunchoutURI];
      if (!result)
      {
        goto LABEL_46;
      }

      v42 = result;
      v43 = v55;
      sub_A2D74();

      v15 = v52;
      *v52 = v37;
      *(v15 + 1) = v38;
      v44 = v54;
      (*v66)(&v15[*(v54 + 20)], v41, v69);
      (*v65)(&v15[*(v44 + 24)], v43, v56);

      v34 = v8;
      v71[0] = v8;
      v46 = *(v8 + 16);
      v45 = *(v8 + 24);
      v16 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v6 = v71;
        sub_7AD08((v45 > 1), v46 + 1, 1);
        v34 = v71[0];
      }

      *(v34 + 16) = v16;
      sub_48DD4(v15, v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, type metadata accessor for CalendarEvent);
      ++v2;
      v11 = v40;
      if (v70 == v33)
      {

        return v34;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

BOOL sub_448EC(char a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_A3004();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for DBCalendarState(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48F30(a3, v11, &qword_DD4E8, &qword_A9300);
  if (sub_CF2C(v11, 1, v12) == 1)
  {
    sub_11E34(v11, &qword_DD4E8, &qword_A9300);
LABEL_10:
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v19 = sub_A43D4();
    sub_48A4(v19, qword_DD4D0);
    sub_810C4(0xD00000000000003BLL, 0x80000000000B0CD0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
    return 0;
  }

  sub_48DD4(v11, v14, type metadata accessor for DBCalendarState);
  if (!sub_4FAC4(v14))
  {
    sub_48E30(v14, type metadata accessor for DBCalendarState);
    goto LABEL_10;
  }

  sub_A2FD4();
  v15 = (v6 + 8);
  if ((a1 & 1) == 0)
  {
    v22 = sub_A2F54();
    (*v15)(v8, v5);
    if ((v22 & 1) != 0 && (sub_79D74(v14) - 6) <= 2u)
    {
      v23 = &v14[*(v12 + 48)];
      v18 = (v23[8] & 1) == 0 && *v23 == v33;
      v20 = !v18;
      if (qword_DA8D0 != -1)
      {
        swift_once();
      }

      v29 = sub_A43D4();
      sub_48A4(v29, qword_DD4D0);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_A4B54(46);

      v34 = 0xD00000000000002CLL;
      v35 = 0x80000000000B0F00;
      goto LABEL_39;
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v26 = sub_A43D4();
    sub_48A4(v26, qword_DD4D0);
    sub_810C4(0xD00000000000002FLL, 0x80000000000B0ED0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
LABEL_27:
    sub_48E30(v14, type metadata accessor for DBCalendarState);
    return 0;
  }

  v16 = sub_A2F84();
  (*v15)(v8, v5);
  if ((v16 & 1) != 0 && (sub_79D74(v14) - 6) <= 2u)
  {
    v17 = &v14[*(v12 + 48)];
    v18 = (v17[8] & 1) == 0 && *v17 == v33;
    v20 = !v18;
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v28 = sub_A43D4();
    sub_48A4(v28, qword_DD4D0);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_A4B54(67);
    v36._countAndFlagsBits = 0xD000000000000041;
    v36._object = 0x80000000000B0F90;
    sub_A46D4(v36);
LABEL_39:
    if (v18)
    {
      v30._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v30._countAndFlagsBits = 1702195828;
    }

    if (v18)
    {
      v31 = 0xE500000000000000;
    }

    else
    {
      v31 = 0xE400000000000000;
    }

    v30._object = v31;
    sub_A46D4(v30);

    sub_810C4(v34, v35, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);

    sub_48E30(v14, type metadata accessor for DBCalendarState);
    return v20;
  }

  v24 = &v14[*(v12 + 32)];
  if ((v24[8] & 1) == 0 && *v24 == v33)
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v25 = sub_A43D4();
    sub_48A4(v25, qword_DD4D0);
    sub_810AC(0xD00000000000002BLL, 0x80000000000B0F60, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
    goto LABEL_27;
  }

  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v27 = sub_A43D4();
  sub_48A4(v27, qword_DD4D0);
  sub_810C4(0xD000000000000022, 0x80000000000B0F30, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
  sub_48E30(v14, type metadata accessor for DBCalendarState);
  return 1;
}

BOOL sub_45038(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A3004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for DBCalendarState(0);
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v16 = sub_A43D4();
    sub_48A4(v16, qword_DD4D0);
    v17 = " first event(s) for tomorrow.";
    v18 = 0xD000000000000019;
    goto LABEL_18;
  }

  sub_48F30(a3, v12, &qword_DD4E8, &qword_A9300);
  if (sub_CF2C(v12, 1, v13) == 1)
  {
    sub_11E34(v12, &qword_DD4E8, &qword_A9300);
LABEL_15:
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v26 = sub_A43D4();
    sub_48A4(v26, qword_DD4D0);
    v17 = "omorrow:previousCalendarState:)";
    v18 = 0xD00000000000003BLL;
LABEL_18:
    sub_810C4(v18, v17 | 0x8000000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
    return 0;
  }

  sub_48DD4(v12, v15, type metadata accessor for DBCalendarState);
  if (!sub_4FAC4(v15))
  {
    sub_48E30(v15, type metadata accessor for DBCalendarState);
    goto LABEL_15;
  }

  sub_A2FD4();
  v19 = (v7 + 8);
  if ((a1 & 1) == 0)
  {
    v28 = sub_A2F54();
    (*v19)(v9, v6);
    if (v28)
    {
      v29 = sub_79D74(v15);
      if ((v29 - 6) <= 2u)
      {
        __chkstk_darwin(v29);
        *(&v36 - 2) = v15;
        v22 = sub_40650(sub_48E88, (&v36 - 4), a2);
        if (qword_DA8D0 != -1)
        {
          swift_once();
        }

        v30 = sub_A43D4();
        sub_48A4(v30, qword_DD4D0);
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_A4B54(57);
        v24 = "om today evening.";
        v25._countAndFlagsBits = 0xD000000000000037;
        goto LABEL_26;
      }
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v34 = sub_A43D4();
    sub_48A4(v34, qword_DD4D0);
    sub_810C4(0xD000000000000031, 0x80000000000B0D50, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
LABEL_43:
    sub_48E30(v15, type metadata accessor for DBCalendarState);
    return 0;
  }

  v20 = sub_A2F84();
  v21 = (*v19)(v9, v6);
  if (v20)
  {
    v21 = sub_79D74(v15);
    if ((v21 - 6) <= 2u)
    {
      __chkstk_darwin(v21);
      *(&v36 - 2) = v15;
      v22 = sub_40650(sub_48EDC, (&v36 - 4), a2);
      if (qword_DA8D0 != -1)
      {
        swift_once();
      }

      v23 = sub_A43D4();
      sub_48A4(v23, qword_DD4D0);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_A4B54(62);
      v24 = " changed since last invocation";
      v25._countAndFlagsBits = 0xD00000000000003CLL;
LABEL_26:
      v25._object = (v24 | 0x8000000000000000);
      sub_A46D4(v25);
      if (v22)
      {
        v31._countAndFlagsBits = 1702195828;
      }

      else
      {
        v31._countAndFlagsBits = 0x65736C6166;
      }

      if (v22)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      v31._object = v32;
      sub_A46D4(v31);

      sub_810C4(v37, v38, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);

      sub_48E30(v15, type metadata accessor for DBCalendarState);
      return v22;
    }
  }

  __chkstk_darwin(v21);
  *(&v36 - 2) = v15;
  if (!sub_40650(sub_48EBC, (&v36 - 4), a2))
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v35 = sub_A43D4();
    sub_48A4(v35, qword_DD4D0);
    sub_810AC(0xD00000000000003BLL, 0x80000000000B0DD0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
    goto LABEL_43;
  }

  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v33 = sub_A43D4();
  sub_48A4(v33, qword_DD4D0);
  sub_810C4(0xD00000000000003ELL, 0x80000000000B0E10, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
  sub_48E30(v15, type metadata accessor for DBCalendarState);
  return 1;
}

uint64_t sub_4583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_45860, 0, 0);
}

uint64_t sub_45860()
{
  sub_5950();
  if (qword_DA8D0 != -1)
  {
    sub_49044(&qword_DA8D0);
  }

  v1 = sub_A43D4();
  v0[6] = sub_48A4(v1, qword_DD4D0);
  sub_4911C();
  sub_810AC(v2, v3, v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_4596C;
  v10 = v0[4];
  v9 = v0[5];

  return sub_45BB4(v10, v9);
}

uint64_t sub_4596C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_45A58()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_A4B54(28);

  v0[2] = *(v1 + 16);
  v6._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v6);

  v7._object = 0x80000000000B09C0;
  v7._countAndFlagsBits = 0xD000000000000012;
  sub_A46D4(v7);
  sub_810AC(0x2064656863746546, 0xE800000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000026, 0x80000000000B0910);

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_45BB4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_A43A4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_45C74, 0, 0);
}

uint64_t sub_45C74()
{
  sub_40178();
  if (qword_DA998 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_E0AD8;
  v7 = *(v0 + 24);
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v3[2].i64[0] = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = sub_4BF0(&qword_DD4F8, &qword_A9330);
  *v4 = v0;
  v4[1] = sub_45E14;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x80000000000B09E0, sub_47E34, v3, v5);
}

uint64_t sub_45E14()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_45F98;
  }

  else
  {

    v7 = sub_45F1C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_45F1C()
{
  sub_5950();
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);

  sub_49144();

  return v2(v1);
}

uint64_t sub_45F98()
{
  sub_5950();

  if (qword_DA8D0 != -1)
  {
    sub_49044(&qword_DA8D0);
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_DD4D0);
  sub_81094(0xD000000000000015, 0x80000000000B0A20, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);

  (*(v0[6] + 8))(v0[7], v0[5]);

  sub_49144();

  return v2(_swiftEmptyArrayStorage);
}

uint64_t sub_460AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v52 = a1;
  v49 = a3;
  v59 = a2;
  v4 = sub_A4454();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_4BF0(&qword_DD500, &qword_A9358);
  v46 = *(v53 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v53);
  v58 = &v38 - v6;
  v45 = sub_A43A4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v7;
  v57 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A2EA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = v10;
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_A4964();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_A4954();
  __chkstk_darwin(v16 - 8);
  v50 = sub_A44B4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v19 = sub_A43D4();
  sub_48A4(v19, qword_DD4D0);
  sub_810AC(0xD000000000000024, 0x80000000000B0A40, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);
  sub_35BE0();
  v40 = v18;
  sub_A4494();
  sub_A4944();
  (*(v13 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v41 = sub_A4994();
  v20 = v9;
  v21 = *(v9 + 16);
  v39 = v11;
  v22 = v8;
  v21(v11, v49, v8);
  v23 = v43;
  v24 = v45;
  (*(v43 + 16))(v57, v51, v45);
  v25 = v46;
  v26 = v53;
  (*(v46 + 16))(v58, v52, v53);
  v27 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v28 = (v42 + *(v23 + 80) + v27) & ~*(v23 + 80);
  v29 = (v44 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v59;
  (*(v20 + 32))(v30 + v27, v39, v22);
  (*(v23 + 32))(v30 + v28, v57, v24);
  (*(v25 + 32))(v30 + v29, v58, v26);
  aBlock[4] = sub_48004;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7A7E8;
  aBlock[3] = &unk_D1A08;
  v31 = _Block_copy(aBlock);
  v32 = v59;
  v33 = v40;
  sub_A4474();
  v60 = _swiftEmptyArrayStorage;
  sub_48FD0(&qword_DD508, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_4BF0(&qword_DD510, &unk_AAE40);
  sub_48140();
  v34 = v54;
  v35 = v56;
  sub_A4AC4();
  v36 = v41;
  sub_A4984();
  _Block_release(v31);

  (*(v55 + 8))(v34, v35);
  (*(v48 + 8))(v33, v50);
}

uint64_t sub_46804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v5 = sub_A43A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_A2EA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  isa = sub_A2DF4().super.isa;
  if ((sub_79D74(a2) - 6) >= 3u)
  {
    sub_4F714(a2, v11);
  }

  else
  {
    sub_4F704(a2, v11);
  }

  v13 = sub_A2DF4().super.isa;
  (*(v9 + 8))(v11, v8);
  v14 = v29;
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v6 + 32))(v16 + v15, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v36 = sub_48294;
  v37 = v16;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_46F9C;
  v35 = &unk_D1A80;
  v17 = _Block_copy(&aBlock);

  aBlock = 0;
  v18 = isa;
  v19 = [v28 iterEventHighlightsFrom:isa to:v13 options:0 error:&aBlock block:v17];
  _Block_release(v17);

  v20 = aBlock;
  if (v19)
  {
    swift_beginAccess();
    v31 = *(v12 + 16);
    v21 = v20;

    sub_4BF0(&qword_DD500, &qword_A9358);
    sub_A47E4();
  }

  else
  {
    v23 = aBlock;
    v24 = sub_A2D44();

    swift_willThrow();

    if (qword_DA998 != -1)
    {
      swift_once();
    }

    sub_7A58C(v14, 0xD000000000000028, 0x80000000000B0AD0, 0x9000u, qword_E0AC0, *algn_E0AC8, byte_E0AD0, qword_E0AD8);
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v25 = sub_A43D4();
    sub_48A4(v25, qword_DD4D0);
    aBlock = 0;
    v33 = 0xE000000000000000;
    sub_A4B54(44);

    aBlock = 0xD00000000000002ALL;
    v33 = 0x80000000000B0B00;
    v31 = v24;
    swift_errorRetain();
    sub_4BF0(&qword_DBB90, &qword_A7540);
    v38._countAndFlagsBits = sub_A4644();
    sub_A46D4(v38);

    sub_81094(aBlock, v33, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);

    aBlock = v24;
    sub_4BF0(&qword_DD500, &qword_A9358);
    return sub_A47D4();
  }
}

uint64_t sub_46D28(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEvent(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![a1 isExtraordinary] || (v12 = objc_msgSend(a1, "title"), v13 = sub_A45F4(), v15 = v14, v12, v16 = objc_msgSend(a1, "startDate"), sub_A2E74(), v16, v17 = objc_msgSend(a1, "externalURI"), sub_A2D74(), v17, *v11 = v13, v11[1] = v15, swift_beginAccess(), sub_24684(), v18 = *(*(a3 + 16) + 16), sub_246D0(v18), v19 = *(a3 + 16), *(v19 + 16) = v18 + 1, sub_48DD4(v11, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for CalendarEvent), *(a3 + 16) = v19, result = swift_endAccess(), v18 == 1))
  {
    *a2 = 1;
    if (qword_DA998 != -1)
    {
      swift_once();
    }

    v21 = qword_E0AC0;
    v22 = *algn_E0AC8;
    v23 = qword_E0AD8;
    v24 = byte_E0AD0;
    swift_beginAccess();
    return sub_7A58C(a4, *(*(a3 + 16) + 16), 0, 0x4000u, v21, v22, v24, v23);
  }

  return result;
}

void sub_46F9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_47010(id *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v6 = sub_A2EA4();
  sub_591C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 startDate];
  if (result)
  {
    v13 = result;
    sub_A2E74();

    v14 = a3(v11, a2);
    (*(v8 + 8))(v11, v6);
    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_47128(id *a1, uint64_t a2)
{
  v3 = sub_A2EA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 startDate];
  if (result)
  {
    v8 = result;
    sub_A2E74();

    sub_48FD0(&qword_DD530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = sub_A4584();
    (*(v4 + 8))(v6, v3);
    return ((v9 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4727C(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  sub_A2EA4();
  sub_591C();
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  sub_7A14();
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_4BF0(&qword_DD220, qword_A9B20);
  v14 = sub_10A88(v13);
  v15 = __chkstk_darwin(v14);
  v35 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  v19 = type metadata accessor for DBCalendarState(0);
  v20 = a2;
  v21 = *(a2 + *(v19 + 40));
  v22 = type metadata accessor for CalendarEvent(0);
  v39 = a1 + *(v22 + 24);
  if (sub_41254(a3, v38, v21))
  {
    v23 = *(v19 + 44);
    v24 = a1 + *(v22 + 20);
    v25 = v36;
    (*(v37 + 16))(v18, v24, v36);
    sub_A924(v18, 0, 1, v25);
    v26 = *(v9 + 48);
    sub_48F30(v20 + v23, v12, &qword_DD220, qword_A9B20);
    sub_48F30(v18, &v12[v26], &qword_DD220, qword_A9B20);
    sub_49188(v12);
    if (!v29)
    {
      v28 = v35;
      sub_48F30(v12, v35, &qword_DD220, qword_A9B20);
      sub_49188(&v12[v26]);
      if (!v29)
      {
        v30 = v37;
        v31 = v34;
        (*(v37 + 32))(v34, &v12[v26], v25);
        sub_48FD0(&qword_DD528, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LODWORD(v40) = sub_A45B4();
        v32 = *(v30 + 8);
        v32(v31, v25);
        sub_11E34(v18, &qword_DD220, qword_A9B20);
        v32(v28, v25);
        sub_11E34(v12, &qword_DD220, qword_A9B20);
        v27 = v40 ^ 1;
        return v27 & 1;
      }

      sub_11E34(v18, &qword_DD220, qword_A9B20);
      (*(v37 + 8))(v28, v25);
LABEL_11:
      sub_11E34(v12, &qword_DD520, &qword_A9BD0);
      v27 = 1;
      return v27 & 1;
    }

    sub_11E34(v18, &qword_DD220, qword_A9B20);
    sub_49188(&v12[v26]);
    if (!v29)
    {
      goto LABEL_11;
    }

    sub_11E34(v12, &qword_DD220, qword_A9B20);
  }

  v27 = 0;
  return v27 & 1;
}

uint64_t sub_47674(uint64_t a1, uint64_t a2)
{
  v33 = sub_A2EA4();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_4BF0(&qword_DD220, qword_A9B20);
  v10 = __chkstk_darwin(v9 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for DBCalendarState(0);
  v15 = a2;
  v16 = *(a2 + *(v14 + 20));
  v17 = type metadata accessor for CalendarEvent(0);
  v35 = a1 + *(v17 + 24);
  if (!sub_41254(sub_49020, v34, v16))
  {
    v22 = 0;
    return v22 & 1;
  }

  v30 = v2;
  v18 = *(v14 + 24);
  v19 = a1 + *(v17 + 20);
  v20 = v33;
  (*(v36 + 16))(v13, v19, v33);
  sub_A924(v13, 0, 1, v20);
  v21 = *(v6 + 48);
  sub_48F30(v15 + v18, v8, &qword_DD220, qword_A9B20);
  sub_48F30(v13, &v8[v21], &qword_DD220, qword_A9B20);
  if (sub_CF2C(v8, 1, v20) != 1)
  {
    v23 = v32;
    sub_48F30(v8, v32, &qword_DD220, qword_A9B20);
    if (sub_CF2C(&v8[v21], 1, v20) != 1)
    {
      v24 = v20;
      v25 = v36;
      v26 = v31;
      (*(v36 + 32))(v31, &v8[v21], v24);
      sub_48FD0(&qword_DD528, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v27 = sub_A45B4();
      v28 = *(v25 + 8);
      v28(v26, v24);
      sub_11E34(v13, &qword_DD220, qword_A9B20);
      v28(v23, v24);
      sub_11E34(v8, &qword_DD220, qword_A9B20);
      v22 = v27 ^ 1;
      return v22 & 1;
    }

    sub_11E34(v13, &qword_DD220, qword_A9B20);
    (*(v36 + 8))(v23, v20);
    goto LABEL_8;
  }

  sub_11E34(v13, &qword_DD220, qword_A9B20);
  if (sub_CF2C(&v8[v21], 1, v20) != 1)
  {
LABEL_8:
    sub_11E34(v8, &qword_DD520, &qword_A9BD0);
    v22 = 1;
    return v22 & 1;
  }

  sub_11E34(v8, &qword_DD220, qword_A9B20);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_47B0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_A3004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalendarEvent(0);
  if (sub_A2E04())
  {
    sub_A2FD4();
    v6 = sub_A2FB4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_47C48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_49150(a1, a2, a3, a4);
  sub_7A14();
  v5 = sub_2558C();
  v6(v5);
  return v4;
}

uint64_t sub_47CB8()
{
  sub_A2EA4();
  sub_7A14();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_47D4C()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  sub_49130();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_490EC(v2);

  return sub_4583C(v3, v4, v5);
}

uint64_t sub_47E40()
{
  v24 = sub_A2EA4();
  sub_591C();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_A43A4();
  sub_591C();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_4BF0(&qword_DD500, &qword_A9358);
  sub_591C();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v22 = *(v17 + 64);
  v20 = v3 | v9 | v18;

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return _swift_deallocObject(v0, v19 + v22, v20 | 7);
}

uint64_t sub_48004()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_A43A4();
  sub_5940(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_4BF0(&qword_DD500, &qword_A9358);
  sub_10A88(v11);
  v13 = *(v0 + 16);
  v14 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_46804(v13, v0 + v3, v0 + v8, v14);
}

uint64_t sub_48128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_48140()
{
  result = qword_DD518;
  if (!qword_DD518)
  {
    sub_1B4B0(&qword_DD510, &unk_AAE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD518);
  }

  return result;
}

uint64_t sub_481A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_481DC()
{
  v1 = sub_A43A4();
  sub_591C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_48294(void *a1, _BYTE *a2)
{
  v5 = sub_A43A4();
  sub_10A88(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_46D28(a1, a2, v7, v8);
}

uint64_t sub_48314(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29DE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_48390(v6);
  return sub_A4BC4();
}

void sub_48390(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_A4E14(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_273BC(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_4853C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_48470(0, v3, 1, a1);
  }
}

void sub_48470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        v14 = sub_373B8(v13);

        if (v14 != -1)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v15;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_4853C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v97 = v8;
        v105 = v5;
        v10 = v9;
        v11 = (*a3 + 8 * v9);
        v12 = 8 * v10;
        v14 = *v11;
        v13 = v11 + 2;
        v15 = *(*a3 + 8 * v7);
        v16 = v14;
        v101 = sub_373B8(v16);

        v17 = v10 + 2;
        while (1)
        {
          v18 = v17;
          if (++v7 >= v6)
          {
            break;
          }

          v19 = *(v13 - 1);
          v20 = *v13;
          v21 = v19;
          v22 = sub_373B8(v21);

          ++v13;
          v17 = v18 + 1;
          if ((v101 == -1) == (v22 != -1))
          {
            goto LABEL_9;
          }
        }

        v7 = v6;
LABEL_9:
        if (v101 == -1)
        {
          v9 = v10;
          if (v7 < v10)
          {
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
            return;
          }

          if (v10 >= v7)
          {
            v5 = v105;
            v8 = v97;
          }

          else
          {
            if (v6 >= v18)
            {
              v23 = v18;
            }

            else
            {
              v23 = v6;
            }

            v24 = 8 * v23 - 8;
            v25 = v7;
            v26 = v10;
            v5 = v105;
            v8 = v97;
            do
            {
              if (v26 != --v25)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v28 = *(v27 + v12);
                *(v27 + v12) = *(v27 + v24);
                *(v27 + v24) = v28;
              }

              ++v26;
              v24 -= 8;
              v12 += 8;
            }

            while (v26 < v25);
          }
        }

        else
        {
          v5 = v105;
          v8 = v97;
          v9 = v10;
        }
      }

      v29 = a3[1];
      if (v7 < v29)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_123;
        }

        if (v7 - v9 < a4)
        {
          v30 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_124;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v9)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v7 != v30)
          {
            v98 = v8;
            v99 = v9;
            v105 = v5;
            v31 = *a3;
            v32 = *a3 + 8 * v7 - 8;
            v33 = v9 - v7;
            v102 = v30;
            do
            {
              v34 = *(v31 + 8 * v7);
              v35 = v33;
              v36 = v32;
              do
              {
                v37 = *v36;
                v38 = v34;
                v39 = v37;
                v40 = sub_373B8(v39);

                if (v40 != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_128;
                }

                v41 = *v36;
                v34 = *(v36 + 8);
                *v36 = v34;
                *(v36 + 8) = v41;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              ++v7;
              v32 += 8;
              --v33;
            }

            while (v7 != v102);
            v7 = v102;
            v5 = v105;
            v8 = v98;
            v9 = v99;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_551BC();
        v8 = v87;
      }

      v43 = *(v8 + 16);
      v44 = v43 + 1;
      v105 = v5;
      if (v43 >= *(v8 + 24) >> 1)
      {
        sub_551BC();
        v8 = v88;
      }

      *(v8 + 16) = v44;
      v5 = v8 + 32;
      v45 = (v8 + 32 + 16 * v43);
      *v45 = v9;
      v45[1] = v7;
      v103 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          v47 = (v5 + 16 * (v44 - 1));
          v48 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_59:
            if (v52)
            {
              goto LABEL_109;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_112;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_117;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v44 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v44 < 2)
          {
            goto LABEL_111;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_74:
          if (v67)
          {
            goto LABEL_114;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_116;
          }

          if (v74 < v66)
          {
            goto LABEL_88;
          }

LABEL_81:
          if (v46 - 1 >= v44)
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
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v78 = v8;
          v79 = (v5 + 16 * (v46 - 1));
          v80 = *v79;
          v81 = v46;
          v8 = v5 + 16 * v46;
          v82 = *(v8 + 8);
          sub_48B54((*a3 + 8 * *v79), (*a3 + 8 * *v8), (*a3 + 8 * v82), v103);
          if (v105)
          {
            goto LABEL_102;
          }

          if (v82 < v80)
          {
            goto LABEL_104;
          }

          v83 = v7;
          v84 = v5;
          v5 = *(v78 + 16);
          if (v81 > v5)
          {
            goto LABEL_105;
          }

          *v79 = v80;
          v79[1] = v82;
          if (v81 >= v5)
          {
            goto LABEL_106;
          }

          v85 = v81;
          v44 = v5 - 1;
          sub_29664((v8 + 16), v5 - 1 - v85, v8);
          v8 = v78;
          *(v78 + 16) = v5 - 1;
          v86 = v5 > 2;
          v5 = v84;
          v7 = v83;
          if (!v86)
          {
            goto LABEL_88;
          }
        }

        v53 = v5 + 16 * v44;
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_107;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_108;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_110;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_121;
          }

          if (v51 < v77)
          {
            v46 = v44 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_88:
      v6 = a3[1];
      v5 = v105;
      if (v7 >= v6)
      {
        goto LABEL_92;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_92:
  v105 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v8 = sub_29650(v8);
  }

  v90 = (v8 + 16);
  v89 = *(v8 + 16);
  while (v89 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v91 = v8;
    v92 = (v8 + 16 * v89);
    v93 = *v92;
    v94 = &v90[2 * v89];
    v8 = *(v94 + 1);
    sub_48B54((*a3 + 8 * *v92), (*a3 + 8 * *v94), (*a3 + 8 * v8), v105);
    if (v5)
    {
      break;
    }

    if (v8 < v93)
    {
      goto LABEL_118;
    }

    if (v89 - 2 >= *v90)
    {
      goto LABEL_119;
    }

    *v92 = v93;
    v92[1] = v8;
    v95 = *v90 - v89;
    if (*v90 < v89)
    {
      goto LABEL_120;
    }

    v89 = *v90 - 1;
    sub_29664(v94 + 16, v95, v94);
    *v90 = v89;
    v8 = v91;
  }

LABEL_102:
}

uint64_t sub_48B54(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = sub_373B8(v15);

      if (v16 != -1)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6++;
      if (!v18)
      {
        goto LABEL_9;
      }

LABEL_10:
      ++v7;
      v5 = v12;
    }

    v17 = v4;
    v18 = v7 == v4++;
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v7 = *v17;
    goto LABEL_10;
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v31 = v4;
LABEL_15:
  v19 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v21 = v7;
    v22 = v6;
    v6 = v19;
    v23 = *v19;
    v24 = *(v10 - 1);
    v25 = v23;
    v26 = sub_373B8(v25);

    v27 = v5 + 1;
    if (v26 == -1)
    {
      v18 = v27 == v22;
      v7 = v21;
      v4 = v31;
      if (!v18)
      {
        *v5 = *v6;
      }

      goto LABEL_15;
    }

    if (v10 != v27)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v19 = v6;
    v6 = v22;
    v7 = v21;
    v4 = v31;
  }

LABEL_28:
  v28 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, 8 * v28);
  }

  return 1;
}

uint64_t sub_48D44(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_A45F4();
  }

  return sub_2558C();
}

uint64_t sub_48DD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_7A14();
  v4 = sub_2558C();
  v5(v4);
  return a2;
}

uint64_t sub_48E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_7A14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_48F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_49150(a1, a2, a3, a4);
  sub_7A14();
  v5 = sub_2558C();
  v6(v5);
  return v4;
}

uint64_t sub_48FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_49044(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_49150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_4BF0(a3, a4);
}

void sub_491C0()
{
  sub_25714();
  v2 = v1;
  v35 = v3;
  v34[0] = v4;
  v34[1] = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v36 = v12;
  v13 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  sub_10A88(v13);
  sub_11FC0();
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = sub_4BF0(&qword_DD468, &qword_A9068);
  sub_10A88(v17);
  sub_11FC0();
  __chkstk_darwin(v18);
  v20 = v34 - v19;
  v21 = sub_A4434();
  sub_AA64();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_AA54();
  v27 = (v26 - v25);
  v28 = v0;

  v2(v28, v11, v9);
  if (sub_CF2C(v20, 1, v21) == 1)
  {
    sub_11E34(v20, &qword_DD468, &qword_A9068);
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_E0BA0);
    sub_81094(0xD000000000000027, 0x80000000000B1010, 0xD000000000000036, 0x80000000000B1040, 0xD00000000000002FLL, 0x80000000000B1080);
    v30 = 1;
    v31 = v36;
  }

  else
  {
    v32 = *(v23 + 32);
    v32(v27, v20, v21);
    if (v7 && (v35 & 1) == 0)
    {

      sub_A43E4();
      v33 = sub_A43F4();
      sub_A924(v16, 0, 1, v33);
      sub_A4424();
    }

    v31 = v36;
    v32(v36, v27, v21);
    v30 = 0;
  }

  sub_A924(v31, v30, 1, v21);
  sub_2569C();
}

uint64_t sub_49480(unint64_t *a1, unint64_t *a2)
{
  if (sub_1B564(*a1, *a2) & 1) != 0 && (sub_1B564(a1[1], a2[1]) & 1) != 0 && (type metadata accessor for RemindersPreprocessingResult(0), (sub_A2E64()) && (sub_29D54(0, &qword_DD7F0, NSObject_ptr), (sub_A4A04()))
  {
    return sub_A4A04() & 1;
  }

  else
  {
    return 0;
  }
}

void sub_4953C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 1;
}

uint64_t sub_4955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  swift_beginAccess();
  return sub_4C704(a1 + v4, a2, &qword_DD7F8, &qword_A93E8);
}

void sub_495D0()
{
  sub_25714();
  v2 = v1;
  v3 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  v7 = *(v0 + 80);
  sub_4C704(v2, v12 - v5, &qword_DD7F8, &qword_A93E8);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  sub_4C900(v6, v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_4C970;
  *(v10 + 24) = v9;
  v12[4] = sub_253D8;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_50578;
  v12[3] = &unk_D1AF8;
  v11 = _Block_copy(v12);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  sub_11E34(v2, &qword_DD7F8, &qword_A93E8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_2569C();
  }
}

uint64_t sub_497E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  swift_beginAccess();
  sub_4CA04(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_4986C()
{
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v1 = qword_E0798;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_4994C;
  v3 = *(v0 + 16);

  return sub_4BCE4(v1, v3);
}

uint64_t sub_4994C(uint64_t a1, char a2)
{
  v5 = *v2;
  sub_5930();
  *v6 = v5;

  sub_255F0();

  return v7(a1, a2 & 1);
}

void sub_49A44()
{
  sub_25714();
  v1 = v0;
  v36 = v2;
  v3 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v3);
  sub_11FC0();
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_A3744();
  sub_AA64();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_AA54();
  v13 = (v12 - v11);
  sub_4BF0(&qword_DD7F8, &qword_A93E8);
  sub_7A14();
  sub_11FC0();
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for RemindersPreprocessingResult(0);
  sub_7A14();
  __chkstk_darwin(v18);
  sub_AA54();
  v21 = (v20 - v19);
  sub_A4974();
  if (sub_CF2C(v16, 1, v17) == 1)
  {
    v22 = &qword_DD7F8;
    v23 = &qword_A93E8;
    v24 = v16;
LABEL_5:
    sub_11E34(v24, v22, v23);
    v25 = 1;
    v26 = v36;
    goto LABEL_13;
  }

  sub_4B688(v16, v21);
  sub_82D48(v6);
  if (sub_CF2C(v6, 1, v7) == 1)
  {
    sub_4B6EC(v21);
    v22 = &qword_DB5A8;
    v23 = &unk_A67C0;
    v24 = v6;
    goto LABEL_5;
  }

  v27 = *(v9 + 32);
  v27(v13, v6, v7);
  sub_1C450(0);
  sub_A36A4();
  sub_625E0(*(v21 + *(v17 + 28)), *(v21 + *(v17 + 32)));
  sub_A36D4();
  v28 = sub_49D80(*v21);
  v29 = sub_49D80(v21[1]);
  v37 = v28;
  sub_4B85C(v29);
  v30 = v37;
  sub_7584((v1 + 112), *(v1 + 136));
  v31 = sub_A34D4();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 0xD000000000000017;
  }

  else
  {
    v33 = 0xD000000000000013;
  }

  if (v32)
  {
    v34 = "com.apple.NanoCalendar";
  }

  else
  {
    v34 = "com.apple.reminders";
  }

  sub_49EF0(v33, v34 | 0x8000000000000000, v30);

  sub_A3694();
  sub_4B6EC(v21);
  v26 = v36;
  v27(v36, v13, v7);
  v25 = 0;
LABEL_13:
  sub_A924(v26, v25, 1, v7);
  sub_2569C();
}

uint64_t sub_49D80(unint64_t a1)
{

  v2 = sub_1DDB8(3, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_A4E64();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_2:
    sub_94F8C(v2, v4, v6, v8);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

LABEL_10:
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    sub_29D54(0, &qword_DC1C8, INTask_ptr);

    v13 = sub_A4C84();
  }

  else
  {

    sub_A4E54();
    sub_29D54(0, &qword_DC1C8, INTask_ptr);
    v13 = v10;
  }

  return v13;
}

void *sub_49EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v37 = sub_A4434();
  v33 = *(v37 - 8);
  v7 = __chkstk_darwin(v37);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v28 - v9;
  v10 = sub_A2ED4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2EC4();
  sub_A2EB4();
  (*(v11 + 8))(v13, v10);
  result = sub_1BF68();
  v15 = result;
  v16 = 0;
  v17 = a3 & 0xC000000000000001;
  v18 = a3;
  v19 = a3 & 0xFFFFFFFFFFFFFF8;
  v30 = (v33 + 32);
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v15 == v16)
    {

      return v34;
    }

    if (v17)
    {
      result = sub_A4B74();
    }

    else
    {
      if (v16 >= *(v19 + 16))
      {
        goto LABEL_17;
      }

      result = *(v18 + 8 * v16 + 32);
    }

    v20 = result;
    v21 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_491C0();

    if (sub_CF2C(v6, 1, v37) == 1)
    {
      result = sub_11E34(v6, &qword_DD468, &qword_A9068);
      ++v16;
    }

    else
    {
      v22 = *v30;
      (*v30)(v31, v6, v37);
      v29 = v22;
      v22(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_54D2C();
        v34 = v26;
      }

      v23 = v34[2];
      if (v23 >= v34[3] >> 1)
      {
        sub_54D2C();
        v34 = v27;
      }

      v24 = v33;
      v25 = v34;
      v34[2] = v23 + 1;
      result = (v29)(v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v32, v37);
      v16 = v21;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_4A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  sub_25714();
  v55 = v21;
  v56 = v22;
  v24 = v23;
  v26 = v25;
  v54 = v27;
  v52 = v28;
  v53 = v29;
  v31 = v30;
  v32 = swift_allocObject();
  sub_A7C4(a21, a21[3]);
  sub_AA64();
  __chkstk_darwin(v33);
  sub_AA54();
  v36 = (v35 - v34);
  (*(v37 + 16))(v35 - v34);
  v38 = *v36;
  v39 = type metadata accessor for OfflineStateProvider();
  v58[3] = v39;
  v58[4] = &off_D29E8;
  v58[0] = v38;
  v40 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  if (qword_DAA00 != -1)
  {
    swift_once();
  }

  v41 = sub_A43D4();
  v42 = sub_48A4(v41, qword_E0C30);
  (*(*(v41 - 8) + 16))(v32 + v40, v42, v41);
  v43 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  v44 = type metadata accessor for RemindersPreprocessingResult(0);
  sub_A924(v32 + v43, 1, 1, v44);
  sub_A760(v26, v32 + 16);
  sub_A760(v24, v32 + 112);
  sub_A760(v58, v57);
  sub_A7C4(v57, v57[3]);
  sub_AA64();
  __chkstk_darwin(v45);
  sub_AA54();
  v48 = (v47 - v46);
  (*(v49 + 16))(v47 - v46);
  v50 = *v48;
  *(v32 + 192) = v39;
  *(v32 + 200) = &off_D29E8;
  *(v32 + 168) = v50;
  sub_A3584();
  swift_allocObject();
  *(v32 + 56) = sub_A3574();
  sub_2505C();
  v51 = swift_allocError();
  sub_761C(v24);
  sub_761C(v26);
  sub_761C(v58);
  *(v32 + 64) = v51;
  *(v32 + 72) = 1;
  *(v32 + 208) = 0;
  *(v32 + 216) = -256;
  *(v32 + 80) = v31;
  *(v32 + 88) = v52;
  *(v32 + 96) = v53;
  *(v32 + 104) = v54;
  *(v32 + 152) = v55;
  *(v32 + 160) = v56;
  sub_761C(v57);
  sub_761C(a21);
  sub_2569C();
}

uint64_t sub_4A5AC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);
  return sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value, &qword_DD7F8, &qword_A93E8);
}

uint64_t sub_4A620()
{
  v0 = sub_82DF4();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  v2 = sub_A43D4();
  sub_7A14();
  v4 = *(v3 + 8);

  v4(v0 + v1, v2);
  sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value, &qword_DD7F8, &qword_A93E8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_4A728(uint64_t a1)
{
  sub_A43D4();
  if (v1 <= 0x3F)
  {
    sub_4A7F4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_4A7F4(uint64_t a1)
{
  if (!qword_DD580)
  {
    type metadata accessor for RemindersPreprocessingResult(255);
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DD580);
    }
  }
}

uint64_t sub_4A880(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_A2EA4();
    v9 = a1 + *(a3 + 24);

    return sub_CF2C(v9, a2, v8);
  }
}

void *sub_4A91C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_A2EA4();
    v8 = v5 + *(a4 + 24);

    return sub_A924(v8, a2, a2, v7);
  }

  return result;
}

void sub_4A99C(uint64_t a1)
{
  sub_4AA70(319);
  if (v1 <= 0x3F)
  {
    sub_A2EA4();
    if (v2 <= 0x3F)
    {
      sub_29D54(319, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
      if (v3 <= 0x3F)
      {
        sub_29D54(319, &unk_DD7B0, INSearchForNotebookItemsIntentResponse_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4AA70(uint64_t a1)
{
  if (!qword_DD7A0)
  {
    sub_29D54(255, &qword_DC1C8, INTask_ptr);
    v1 = sub_A47B4();
    if (!v2)
    {
      atomic_store(v1, &qword_DD7A0);
    }
  }
}

uint64_t sub_4AAE0@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  if (!sub_4B0BC())
  {

LABEL_7:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v15 = sub_A43D4();
    sub_48A4(v15, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);

    goto LABEL_10;
  }

  sub_4BC80(a1);
  if (!v12)
  {

    goto LABEL_7;
  }

  v13 = sub_A43F4();
  sub_A924(v8, 1, 1, v13);
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  sub_A4404();
  v14 = sub_A4434();
  sub_A924(v11, 0, 1, v14);
  if (!sub_CF2C(v11, 1, v14))
  {
    (*(*(v14 - 8) + 32))(a4, v11, v14);
    v17 = a4;
    v18 = 0;
    v16 = v14;
    return sub_A924(v17, v18, 1, v16);
  }

  sub_11E34(v11, &qword_DD468, &qword_A9068);
LABEL_10:
  v16 = sub_A4434();
  v17 = a4;
  v18 = 1;
  return sub_A924(v17, v18, 1, v16);
}

uint64_t sub_4ADCC@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  if (sub_4B2BC())
  {
    v12 = [a1 uniqueIdentifier];
    sub_A45F4();

    v13 = sub_A43F4();
    sub_A924(v8, 1, 1, v13);
    sub_29D54(0, &qword_DC740, MapsSuggestionsEntry_ptr);
    sub_A4404();
    v14 = sub_A4434();
    sub_A924(v11, 0, 1, v14);
    if (!sub_CF2C(v11, 1, v14))
    {
      (*(*(v14 - 8) + 32))(a4, v11, v14);
      v17 = a4;
      v18 = 0;
      v16 = v14;
      return sub_A924(v17, v18, 1, v16);
    }

    sub_11E34(v11, &qword_DD468, &qword_A9068);
  }

  else
  {

    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v15 = sub_A43D4();
    sub_48A4(v15, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);
  }

  v16 = sub_A4434();
  v17 = a4;
  v18 = 1;
  return sub_A924(v17, v18, 1, v16);
}

uint64_t sub_4B0BC()
{
  if (!INTask.entityBuilder.getter())
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_81094(0xD000000000000037, 0x80000000000B10F0, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v5._countAndFlagsBits = sub_A4644();
    sub_A46D4(v5);

    sub_81094(0xD00000000000001ALL, 0x80000000000B1130, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B2BC()
{
  if (!MapsSuggestionsEntry.entityBuilder.getter())
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_81094(0xD000000000000037, 0x80000000000B10F0, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v5._countAndFlagsBits = sub_A4644();
    sub_A46D4(v5);

    sub_81094(0xD00000000000001ALL, 0x80000000000B1130, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B4BC()
{
  if (!sub_54BC4())
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_4CA90();
    sub_4CA7C();
    sub_81094(v3, v4, v5, v6, v7, v8);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v9 = sub_A43D4();
    sub_48A4(v9, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v17._countAndFlagsBits = sub_A4644();
    sub_A46D4(v17);

    sub_4CA90();
    sub_4CA7C();
    sub_81094(v10, v11, v12, v13, v14, v15);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4B6EC(uint64_t a1)
{
  v2 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4B748(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_4BC08(result, 1, sub_54E08);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for CalendarEvent(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_4B85C(unint64_t a1)
{
  v3 = sub_1BF68();
  v4 = sub_1BF68();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_4BB68(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_29854(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_4B908(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_4BC08(v7 + v6, 1, sub_54FDC);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_95148();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v28;
  if (v9 != v8)
  {
LABEL_7:
    sub_4CA74(v5);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v29;
  v10 = v30;
  v4 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  v14 = (v32 - 1) & v32;
  v15 = __clz(__rbit64(v32)) | (v31 << 6);
  v16 = (v30 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v27 = *(v1 + 24) >> 1;
  if (v27 < v3 + 1)
  {
    sub_54FDC();
    v1 = v26;
    v27 = *(v26 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v27)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_4BB68(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_A4C94();
LABEL_9:
  result = sub_A4B84();
  *v2 = result;
  return result;
}

uint64_t sub_4BC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_4BC80(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A45F4();

  return v3;
}

uint64_t sub_4BCE4(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v2[26] = swift_task_alloc();
  sub_4BF0(&qword_DD7F8, &qword_A93E8);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for RemindersPreprocessingResult(0);
  v2[29] = swift_task_alloc();
  v4 = sub_A2EA4();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = type metadata accessor for AppDetecter(0);
  v2[36] = v5;
  v2[5] = v5;
  v2[6] = &off_D0F20;
  v2[2] = a1;

  return _swift_task_switch(sub_4BEB8, 0, 0);
}

uint64_t sub_4BEB8()
{
  sub_7584(v0 + 2, v0[36]);
  if (qword_DA8F8 != -1)
  {
    swift_once();
  }

  v1._countAndFlagsBits = sub_1F118(qword_E0910);
  v0[37] = v1._object;
  if (v1._object)
  {
    sub_A46D4(v1);
    sub_810AC(0x706120646E756F46, 0xEB00000000203A70, 0xD00000000000002BLL, 0x80000000000B1150, 0xD000000000000016, 0x80000000000B1180);

    sub_A2E94();
    sub_A3904();
    sub_A3454();
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_4C120;

    return sub_61E70();
  }

  else
  {
    sub_24824();
    v4 = sub_4CAC4();
    *v5 = 3;
    sub_82ED4(v4, 256);
    v6 = sub_4CAC4();
    *v7 = 3;
    sub_4CAA4();

    sub_255F0();

    return v8(v6, 1);
  }
}

uint64_t sub_4C120()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v6 = *v0;
  sub_5930();
  *v4 = v6;

  sub_761C((v6 + 96));
  sub_761C((v6 + 56));
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_4C2A4, 0, 0);
}

uint64_t sub_4C2A4()
{
  sub_4C704(v0[35], v0[34], &qword_DD4B8, &qword_A9240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[34];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[35];
    v4 = *v2;
    swift_errorRetain();
    sub_82ED4(v4, 256);
    sub_11E34(v3, &qword_DD4B8, &qword_A9240);
    sub_4CAA4();

    sub_255F0();

    return v5(v4, 1);
  }

  else
  {
    v7 = v0[28];
    v8 = v0[29];
    v9 = v0[27];
    v10 = v0[25];
    sub_4B688(v2, v8);
    sub_4C764(v8, v9);
    sub_A924(v9, 0, 1, v7);
    sub_495D0();
    sub_A3904();
    sub_761C(v0 + 17);
    v11 = *(v10 + 160);
    v0[39] = v11;
    type metadata accessor for RemindersTemplatingService();
    inited = swift_initStackObject();
    v0[40] = inited;
    *(inited + 16) = v11;

    sub_49A44();
    v13 = swift_task_alloc();
    v0[41] = v13;
    *v13 = v0;
    v13[1] = sub_4C4C4;
    v14 = v0[29];
    v15 = v0[26];

    return sub_6DEE4(v14, v15);
  }
}

uint64_t sub_4C4C4()
{
  v1 = *(*v0 + 208);
  v2 = *v0;
  sub_5930();
  *v3 = v2;
  *(v5 + 336) = v4;

  sub_11E34(v1, &qword_DB5A8, &unk_A67C0);

  return _swift_task_switch(sub_4C608, 0, 0);
}

uint64_t sub_4C608()
{
  v1 = v0[35];
  v2 = v0[29];

  sub_82ED4(v3, 1);

  sub_4B6EC(v2);
  sub_11E34(v1, &qword_DD4B8, &qword_A9240);
  sub_761C(v0 + 2);

  sub_255F0();

  return v4(1, 0);
}

uint64_t sub_4C704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_4BF0(a3, a4);
  sub_7A14();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4C764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C7C8()
{
  v1 = *(sub_4BF0(&qword_DD7F8, &qword_A93E8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for RemindersPreprocessingResult(0);
  if (!sub_CF2C(v0 + v3, 1, v6))
  {

    v7 = v6[6];
    sub_A2EA4();
    sub_7A14();
    (*(v8 + 8))(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4C900(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C970()
{
  v1 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  sub_10A88(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_497E8(v3, v4);
}

uint64_t sub_4C9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4CA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_4CAA4()
{

  return sub_761C((v0 + 16));
}

uint64_t sub_4CAC4()
{

  return swift_allocError();
}

uint64_t sub_4CAE4()
{
  v2 = v1;
  v3 = sub_4BF0(&unk_DD800, &unk_A9400);
  __chkstk_darwin(v3 - 8);
  sub_36194();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  sub_A2D04();
  sub_14CB8();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 temporalEventTrigger];
  if (!v15)
  {
    sub_4D234(v9, 1);
LABEL_8:
    sub_AD70(v9, &unk_DD800, &unk_A9400);
    v21 = 0;
    return v21 & 1;
  }

  v16 = v15;
  v17 = [v15 dateComponentsRange];

  v18 = [v17 startDateComponents];
  if (v18)
  {
    sub_A2C54();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_4D234(v6, v19);
  sub_3FAE8(v6, v9, &unk_DD800, &unk_A9400);
  sub_4D214(v9);
  if (v20)
  {
    goto LABEL_8;
  }

  (*(v11 + 32))(v14, v9, v0);
  sub_A2C84();
  if (v22 & 1) != 0 && (sub_A2CB4(), (v23))
  {
    sub_A2CC4();
    v21 = v24;
  }

  else
  {
    v21 = 0;
  }

  (*(v11 + 8))(v14, v0);
  return v21 & 1;
}

uint64_t sub_4CD28(void *a1)
{
  sub_A2EA4();
  sub_14CB8();
  v51 = v4;
  __chkstk_darwin(v5);
  sub_36194();
  v49 = (v6 - v7);
  __chkstk_darwin(v8);
  v50 = &v48 - v9;
  v10 = sub_4BF0(&qword_DD220, qword_A9B20);
  __chkstk_darwin(v10 - 8);
  sub_36194();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v48 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v48 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v48 - v25;
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = [v2 temporalEventTrigger];
  if (v29)
  {
    v30 = v29;
    v48 = v23;
    v31 = a1;
    v32 = [v29 dateComponentsRange];

    v33 = [v32 startDate];
    if (v33)
    {
      sub_A2E74();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    sub_4D234(v26, v34);
    sub_3FAE8(v26, v28, &qword_DD220, qword_A9B20);
    a1 = v31;
    v23 = v48;
  }

  else
  {
    sub_4D234(v28, 1);
  }

  v35 = [a1 temporalEventTrigger];
  v36 = v50;
  if (v35)
  {
    v37 = v35;
    v38 = [v35 dateComponentsRange];

    v39 = [v38 startDate];
    if (v39)
    {
      sub_A2E74();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    sub_4D234(v20, v40);
    sub_3FAE8(v20, v23, &qword_DD220, qword_A9B20);
  }

  else
  {
    sub_4D234(v23, 1);
  }

  sub_4D1A4(v28, v17);
  sub_4D214(v17);
  v41 = v51;
  if (v43)
  {
    v13 = v17;
  }

  else
  {
    v42 = *(v51 + 32);
    v42(v36, v17, v1);
    sub_4D1A4(v23, v13);
    sub_4D214(v13);
    if (!v43)
    {
      v44 = v49;
      v42(v49, v13, v1);
      v45 = sub_A2E84();
      v46 = *(v41 + 8);
      v46(v44, v1);
      v46(v36, v1);
LABEL_24:
      sub_AD70(v28, &qword_DD220, qword_A9B20);
      goto LABEL_25;
    }

    (*(v41 + 8))(v36, v1);
  }

  sub_AD70(v13, &qword_DD220, qword_A9B20);
  sub_4D214(v28);
  if (v43)
  {
    sub_4D214(v23);
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    goto LABEL_24;
  }

  sub_AD70(v28, &qword_DD220, qword_A9B20);
  v45 = -1;
LABEL_25:
  sub_AD70(v23, &qword_DD220, qword_A9B20);
  return v45;
}

uint64_t sub_4D1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D234(uint64_t a1, uint64_t a2)
{

  return sub_A924(a1, a2, 1, v2);
}

id sub_4D24C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setCentered:a4 & 1];
  v9 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_4D340(a3, v9);
  [v8 setAction:v9];

  v10 = [objc_allocWithZone(SAUIDecoratedText) init];
  sub_4D3C0(a1, a2, v10);
  [v8 setDecoratedLabel:v10];

  return v8;
}

void sub_4D340(uint64_t a1, void *a2)
{
  sub_4BF0(&unk_DD870, &qword_A9410);
  isa = sub_A4754().super.isa;

  [a2 setCommands:isa];
}

void sub_4D3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();

  [a3 setText:v4];
}

uint64_t sub_4D424(uint64_t a1)
{
  sub_A33D4();
  sub_7584(v2, v2[3]);
  sub_A33E4();
  return sub_761C(v2);
}

uint64_t sub_4D488(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_4D4B0, 0, 0);
}

uint64_t sub_4D4B0()
{
  sub_4BF0(&qword_DD958, &qword_AAE70);
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = xmmword_A8CD0;
  *(v1 + 32) = 50462976;
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  v0[6] = qword_E0608;

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_4D5C4;

  return sub_44F0(1);
}

uint64_t sub_4D5C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_4D6C4, 0, 0);
}

uint64_t sub_4D6C4()
{
  v1 = sub_4F034(v0[8], v0[9]);

  v2 = sub_4ED80(v1);
  v3 = v0[5];
  if (v2)
  {
    sub_55290();
    v3 = v4;
    *(v4 + 16) = 5;
    *(v4 + 36) = 4;
  }

  v6 = v0[2];
  v5 = v0[3];
  sub_A3444();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;

  v8 = sub_A3434();
  sub_4D424(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_4D81C()
{
  sub_A3444();
  sub_4DD34();
  sub_4DD1C();
  v0 = sub_A3434();
  sub_4D424(v0);
}

uint64_t sub_4D884(char a1)
{
  sub_4BF0(&qword_DD958, &qword_AAE70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_A8CD0;
  *(v2 + 32) = 50462976;
  if (a1)
  {
    sub_55290();
    v2 = v3;
    *(v3 + 16) = 5;
    *(v3 + 36) = 4;
  }

  sub_A3444();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = 0;
  v4[4] = 0xE000000000000000;
  sub_4DD34();
  v5 = sub_A3434();
  sub_4D424(v5);
}

uint64_t sub_4D9A0()
{
  sub_A3444();
  sub_4DD1C();
  v0 = sub_A3434();
  sub_4D424(v0);
}

uint64_t sub_4DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2C330;

  return SiriKitEventSending.sendAsync(_:)(a1, a2, a3);
}

uint64_t sub_4DB38(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v23 = a8;
  v24 = a7;
  v12 = *(a6 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v22[-v16];
  v18 = *(v12 + 16);
  v18(&v22[-v16]);
  v19 = sub_A3444();
  (v18)(v15, v17, a6);

  v25 = 0;
  v20 = sub_4EBF8(v23, v15, a3, a4, a2, v19, a6, v24);
  sub_4D424(v20);

  return (*(v12 + 8))(v17, a6);
}

uint64_t sub_4DCD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4DD48(unsigned __int8 a1)
{
  sub_1C664(a1);
  v1 = sub_A3804();

  return v1;
}

uint64_t sub_4DE18(double a1, double a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  return _swift_task_switch(sub_4DE40, 0, 0);
}

uint64_t sub_4DE40()
{
  v1 = sub_2567C();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_4DED4;
  v2 = sub_4E828();

  return v3(v2);
}

uint64_t sub_4DED4(uint64_t a1)
{
  v4 = *v2;
  sub_25540();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_4DFD0(double a1, double a2)
{
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_4E104;
  v6 = swift_continuation_init();
  v3[17] = sub_4BF0(&qword_DD968, &qword_A9560);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_4E240;
  v3[13] = &unk_D1BF8;
  v3[14] = v6;
  [v2 currentLocationWithAccuracy:v3 + 10 timeout:a1 completion:a2];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_4E104()
{
  sub_25540();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 144);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t *sub_4E240(uint64_t a1, void *a2, void *a3)
{
  result = sub_7584((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_4E2C4(v6, a3);
  }

  if (a2)
  {
    v7 = a2;

    return sub_4E330(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4E2C4(uint64_t a1, uint64_t a2)
{
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_4E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_throwingResume();
}

uint64_t sub_4E394()
{
  v1 = sub_2567C();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_4E424;
  v2 = sub_4E828();

  return v3(v2);
}

uint64_t sub_4E424(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_25540();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_4E530()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_4E64C;
  v2 = swift_continuation_init();
  v1[17] = sub_4BF0(&qword_DD960, &unk_A9548);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_4E788;
  v1[13] = &unk_D1BD0;
  v1[14] = v2;
  [v0 currentAuthorizationStyle:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_4E64C()
{
  sub_25540();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = *(v3 + 8);

    return v9(v7, v8);
  }
}

uint64_t sub_4E788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_7584((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_4E2C4(*v7, a4);
  }

  v9 = *v7;

  return sub_4E350(v9, a2, a3);
}

void sub_4E83C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  sub_A3414();
  v5 = a4[3];
  v6 = a4[4];
  sub_7584(a4, v5);
  (*(v6 + 8))(v5, v6);
  sub_A3424();
  v7 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(FLOWSchemaFLOWBriefingContext) init];
    if (v9)
    {
      v10 = a4[3];
      v11 = a4[4];
      v15 = v9;
      sub_7584(a4, v10);
      [v15 setBriefingAttribute:{(*(v11 + 16))(v10, v11)}];
      [v8 setBriefingContext:v15];
      [v8 setHasBriefingContext:1];
      v12 = v8;
      sub_A3404();

      return;
    }
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v13 = sub_A43D4();
  v14 = sub_48A4(v13, qword_E0BA0);
  sub_4ED60(v14, 0x80000000000B1230, 0xD000000000000038, 0x80000000000B1270, 0xD00000000000003FLL);
}

void sub_4EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(FLOWSchemaFLOWBriefingContext) init];
    if (v7)
    {
      v8 = v7;
      v9 = *(a2 + 16);
      v15 = v7;
      if (v9)
      {
        v10 = (a2 + 32);
        do
        {
          v11 = *v10++;
          [v8 addEnabledFeatures:dword_A9568[v11]];
          v8 = v15;
          --v9;
        }

        while (v9);
      }

      [v6 setBriefingContext:v8];
      [v6 setHasBriefingContext:1];
      v12 = v6;
      sub_A3404();

      sub_A3424();

      return;
    }
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v13 = sub_A43D4();
  v14 = sub_48A4(v13, qword_E0BA0);
  sub_4ED60(v14, 0x80000000000B1230, 0xD000000000000038, 0x80000000000B1270, 0xD000000000000037);
}

uint64_t sub_4EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[3] = a7;
  v17[4] = a8;
  v12 = sub_76B0(v17);
  (*(*(a7 - 8) + 32))(v12, a2, a7);
  sub_A760(v17, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_A814(v16, v13 + 32);
  v14 = sub_A3434();
  sub_761C(v17);
  return v14;
}

uint64_t sub_4ED14()
{

  sub_761C((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_4ED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_81094(0xD000000000000035, a2, a3, a4, a5, v5 | 0x8000000000000000);
}

uint64_t sub_4ED80(char a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_A4E44();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_A4E44();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_4EE58(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_4EF28;

  return sub_39B8();
}

uint64_t sub_4EF28()
{
  sub_5950();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4F034(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  v4 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {
  }

  else
  {
    v7 = sub_A4E44();

    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

uint64_t sub_4F0F8()
{
  sub_5950();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4F184;

  return sub_44F0(3);
}

uint64_t sub_4F184()
{
  sub_5950();
  v1 = *v0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;

  return _swift_task_switch(sub_4F280, 0, 0);
}

uint64_t sub_4F280()
{
  sub_5950();
  v1 = sub_4F034(v0[3], v0[4]);
  v2 = sub_4ED80(v1);
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_4F2E4(char a1)
{
  if (!a1)
  {
    return 1702195796;
  }

  if (a1 == 1)
  {
    return 0x65736C6146;
  }

  return 0x7465736E75;
}

uint64_t sub_4F32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4F2E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_4F358@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v5);
  sub_11FC0();
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_A2F34();
  sub_591C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_AA54();
  sub_504D0();
  v13 = [objc_allocWithZone(NSDateFormatter) init];
  sub_A2EE4();
  isa = sub_A2F14().super.isa;
  (*(v11 + 8))(v3, v9);
  [v13 setLocale:isa];

  sub_50230(0xD000000000000018, 0x80000000000B1330, v13);
  sub_A3024();
  v15 = sub_A3044();
  v16 = 0;
  if (sub_CF2C(v8, 1, v15) != 1)
  {
    v16 = sub_A3034().super.isa;
    (*(*(v15 - 8) + 8))(v8, v15);
  }

  [v13 setTimeZone:v16];

  v17 = sub_A45C4();
  v18 = [v13 dateFromString:v17];

  if (v18)
  {
    sub_A2E74();

    v19 = 0;
    v13 = v18;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_A2EA4();
  return sub_A924(a3, v19, 1, v20);
}

uint64_t sub_4F5E0(uint64_t a1)
{
  v1 = sub_A2EA4();
  sub_591C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_36194();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_A2E94();
  sub_A2DE4();
  v11 = sub_4FBDC(v7, v10);
  v12 = *(v3 + 8);
  v12(v7, v1);
  v12(v10, v1);
  return v11 & 1;
}

uint64_t sub_4F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_504F0(a1, a2, a3);
  sub_591C();
  v43[6] = v4;
  v43[7] = v3;
  __chkstk_darwin(v3);
  sub_AA54();
  v7 = v6 - v5;
  v8 = sub_A3004();
  sub_591C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_36194();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v43 - v16;
  v18 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v18);
  sub_11FC0();
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  v22 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v22);
  sub_11FC0();
  __chkstk_darwin(v23);
  v24 = sub_4BF0(&qword_DD988, &unk_AA310);
  sub_10A88(v24);
  sub_11FC0();
  __chkstk_darwin(v25);
  sub_504D0();
  sub_A2D04();
  sub_591C();
  v43[3] = v27;
  v43[4] = v26;
  __chkstk_darwin(v26);
  sub_AA54();
  sub_504C4();
  sub_A924(v28, v29, v30, v8);
  sub_A3044();
  sub_504C4();
  sub_A924(v31, v32, v33, v34);
  sub_503CC();
  sub_50530();
  sub_A2CD4();
  sub_A2FD4();
  sub_A2FD4();
  sub_A2F44();
  v35 = *(v10 + 8);
  v35(v14, v8);
  sub_5048C();
  v36 = sub_5046C();
  (dword_0)(v36);
  v37 = sub_504DC();
  (v35)(v37);
  if (sub_CF2C(v21, 1, v7) == 1)
  {
    sub_11E34(v21, &qword_DD220, qword_A9B20);
    sub_A2FD4();
    sub_50510();
    v35(v17, v43[5]);
    sub_A2DE4();
    (dword_0)(v21, v7);
    v38 = sub_5045C();
  }

  else
  {
    v41 = sub_5045C();
    v42(v41);
    v38 = sub_504B0();
  }

  return v39(v38);
}

BOOL sub_4FAC4(uint64_t a1)
{
  v3 = sub_A3004();
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_AA54();
  sub_504D0();
  sub_A2FD4();
  v7 = sub_A2F54();
  v8 = *(v5 + 8);
  v8(v1, v3);
  if (v7)
  {
    return 1;
  }

  sub_A2FD4();
  v10 = sub_A2F84();
  v8(v1, v3);
  return (v10 & 1) != 0 && (sub_79D74(a1) - 6) < 3u;
}

uint64_t sub_4FBDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_4BF0(&qword_DD978, &qword_A95C0);
  sub_7A14();
  __chkstk_darwin(v7);
  sub_36194();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_4BF0(&qword_DD980, qword_A95C8);
  sub_7A14();
  sub_11FC0();
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = sub_A2EA4();
  v19 = sub_50294();
  result = sub_A45A4();
  if (result)
  {
    v21 = *(v18 - 8);
    v33 = v3;
    v22 = v21;
    v23 = a1;
    v24 = a2;
    v25 = *(v21 + 16);
    v31 = v14;
    v25(v13, v23, v18);
    v25(&v13[*(v6 + 48)], v24, v18);
    sub_502EC(v13, v10);
    v26 = *(v6 + 48);
    v27 = *(v22 + 32);
    v27(v17, v10, v18);
    v32 = v19;
    v28 = *(v22 + 8);
    v28(v10 + v26, v18);
    sub_5035C(v13, v10);
    v27(&v17[*(v31 + 36)], v10 + *(v6 + 48), v18);
    v28(v10, v18);
    if (sub_A4594())
    {
      v29 = sub_A45A4();
    }

    else
    {
      v29 = 0;
    }

    sub_11E34(v17, &qword_DD980, qword_A95C8);
    return v29 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_504F0(a1, a2, a3);
  sub_591C();
  v43[6] = v4;
  v43[7] = v3;
  __chkstk_darwin(v3);
  sub_AA54();
  v7 = v6 - v5;
  v8 = sub_A3004();
  sub_591C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_36194();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v43 - v16;
  v18 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v18);
  sub_11FC0();
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  v22 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v22);
  sub_11FC0();
  __chkstk_darwin(v23);
  v24 = sub_4BF0(&qword_DD988, &unk_AA310);
  sub_10A88(v24);
  sub_11FC0();
  __chkstk_darwin(v25);
  sub_504D0();
  sub_A2D04();
  sub_591C();
  v43[3] = v27;
  v43[4] = v26;
  __chkstk_darwin(v26);
  sub_AA54();
  sub_504C4();
  sub_A924(v28, v29, v30, v8);
  sub_A3044();
  sub_504C4();
  sub_A924(v31, v32, v33, v34);
  sub_503CC();
  sub_50530();
  sub_A2FD4();
  sub_A2FD4();
  sub_A2F44();
  v35 = *(v10 + 8);
  v35(v14, v8);
  sub_5048C();
  v36 = sub_5046C();
  (dword_0)(v36);
  v37 = sub_504DC();
  (v35)(v37);
  if (sub_CF2C(v21, 1, v7) == 1)
  {
    sub_11E34(v21, &qword_DD220, qword_A9B20);
    sub_A2FD4();
    sub_50510();
    v35(v17, v43[5]);
    sub_A2DE4();
    (dword_0)(v21, v7);
    v38 = sub_5045C();
  }

  else
  {
    v41 = sub_5045C();
    v42(v41);
    v38 = sub_504B0();
  }

  return v39(v38);
}

void sub_50230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();

  [a3 setDateFormat:v4];
}

unint64_t sub_50294()
{
  result = qword_DD530;
  if (!qword_DD530)
  {
    sub_A2EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD530);
  }

  return result;
}

uint64_t sub_502EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD978, &qword_A95C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5035C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD978, &qword_A95C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_503CC()
{

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v0, v1, 0, 1, 0, 1, 0, 1);
}

uint64_t sub_5048C()
{

  return Calendar.date(byAdding:to:wrappingComponents:)(v0, v1, 0);
}

uint64_t sub_504DC()
{
  result = v1;
  *(v3 - 136) = v0;
  *(v3 - 160) = v2;
  return result;
}

uint64_t sub_504F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 136) = a2;
  *(v3 - 112) = a3;
  *(v3 - 104) = a1;

  return sub_A2EA4();
}

uint64_t sub_50510()
{

  return sub_A2F44();
}

uint64_t sub_50530()
{
  v2 = *(v0 - 136);

  return (DateComponents.day.setter)(v2, 0);
}

void sub_505A0(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 2;
}

uint64_t sub_505C0(uint64_t a1)
{
  v3 = sub_4BF0(&qword_DDC50, &unk_A9640);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = aBlock - v5;
  v7 = *(v1 + 80);
  sub_4C704(a1, aBlock - v5, &qword_DDC50, &unk_A9640);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_51E80(v6, v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_51EF0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_51F6C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_50578;
  aBlock[3] = &unk_D1C98;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  sub_11E34(a1, &qword_DDC50, &unk_A9640);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_507E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value;
  swift_beginAccess();
  sub_51FAC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_5084C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v39 = a7;
  v40 = a8;
  v38 = a4;
  v36 = a2;
  v37 = a3;
  v12 = swift_allocObject();
  v13 = sub_A7C4(a9, a9[3]);
  __chkstk_darwin(v13);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for OfflineStateProvider();
  v42[3] = v18;
  v42[4] = &off_D29E8;
  v42[0] = v17;
  v19 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v20 = sub_A43D4();
  v21 = sub_48A4(v20, qword_E0BB8);
  (*(*(v20 - 8) + 16))(v12 + v19, v21, v20);
  v22 = v12 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService;
  *(v22 + 24) = &type metadata for WeatherService;
  *(v22 + 32) = &off_D3148;
  v23 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value;
  v24 = type metadata accessor for WeatherPreprocessingResult(0);
  sub_A924(v12 + v23, 1, 1, v24);
  sub_A760(a5, v12 + 16);
  sub_A760(a6, v12 + 112);
  sub_A760(v42, v41);
  v25 = sub_A7C4(v41, v41[3]);
  __chkstk_darwin(v25);
  v27 = (&v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  *(v12 + 192) = v18;
  *(v12 + 200) = &off_D29E8;
  *(v12 + 168) = v29;
  sub_A3584();
  swift_allocObject();
  *(v12 + 56) = sub_A3574();
  sub_2505C();
  v30 = swift_allocError();
  sub_761C(a6);
  sub_761C(a5);
  sub_761C(v42);
  *(v12 + 64) = v30;
  *(v12 + 72) = 1;
  *(v12 + 208) = 0;
  *(v12 + 216) = -256;
  v32 = v36;
  v31 = v37;
  *(v12 + 80) = a1;
  *(v12 + 88) = v32;
  *(v12 + 96) = v31;
  *(v12 + 104) = v38;
  v33 = v40;
  *(v12 + 152) = v39;
  *(v12 + 160) = v33;
  sub_761C(v41);
  sub_761C(a9);
  return v12;
}

uint64_t sub_50BB4()
{
  v1[11] = v0;
  v2 = sub_4BF0(&qword_DDC50, &unk_A9640);
  sub_10A88(v2);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for WeatherPreprocessingResult(0);
  v1[13] = v3;
  sub_10A88(v3);
  v1[14] = swift_task_alloc();
  v4 = sub_4BF0(&qword_DD4A0, &qword_A9200);
  v1[15] = v4;
  sub_10A88(v4);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_50CB4()
{
  v1 = v0[11];
  v0[18] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  sub_5201C(0xD00000000000001ELL, "weatherForecast_Value");
  sub_7584((v1 + 168), *(v1 + 192));
  if (sub_834E4())
  {
    sub_5201C(0xD000000000000027, "ssing result: succeeded");
    sub_24824();
    v2 = sub_256B4();
    *v3 = 0;
    sub_82ED4(v2, 256);
    v4 = sub_256B4();
    *v5 = 0;

    v6 = v0[1];

    return v6(v4, 1);
  }

  else
  {
    sub_7584((v0[11] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService), *(v0[11] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService + 24));
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_50E9C;

    return sub_95F28();
  }
}

uint64_t sub_50E9C()
{

  v0 = sub_AA8C();

  return _swift_task_switch(v0, v1, v2);
}

id sub_50F90()
{
  sub_4C704(v0[17], v0[16], &qword_DD4A0, &qword_A9200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[17];
    v2 = *v0[16];
    swift_errorRetain();
    sub_82ED4(v2, 256);
    sub_A4B54(44);

    swift_getErrorValue();
    v16._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v16);

    sub_5204C(0xD00000000000002ALL, 0x80000000000B1410, v3, 0x80000000000B13E0);

    sub_11E34(v1, &qword_DD4A0, &qword_A9200);

    v4 = v0[1];

    return v4(v2, 1);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    sub_51B20(v0[16], v6);
    sub_5204C(0xD000000000000027, 0x80000000000B1440, v9, 0x80000000000B13E0);
    sub_51B84(v6, v8);
    sub_A924(v8, 0, 1, v7);
    sub_505C0(v8);
    if (qword_DAA18 != -1)
    {
      swift_once();
    }

    v10 = v0[11];
    sub_7A124(1, qword_E0C78, unk_E0C80, byte_E0C88, qword_E0C90);
    sub_A760(v10 + 112, (v0 + 2));
    v11 = *(v10 + 160);
    type metadata accessor for WeatherTemplatingService(0);
    swift_allocObject();

    v0[20] = sub_56574(v0 + 2, v11);
    result = [objc_opt_self() currentLocale];
    v0[21] = result;
    if (result)
    {
      v12 = result;
      v13 = swift_task_alloc();
      v0[22] = v13;
      *v13 = v0;
      v13[1] = sub_51308;
      v14 = v0[14];

      return sub_55DE4(v14, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_51308(uint64_t a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 184) = a1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_51438()
{
  v1 = v0[17];
  v2 = v0[14];

  sub_82ED4(v3, 1);

  sub_51BE8(v2);
  sub_11E34(v1, &qword_DD4A0, &qword_A9200);

  v4 = v0[1];

  return v4(1, 0);
}

uint64_t sub_51510()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService));
  return sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value, &qword_DDC50, &unk_A9640);
}

uint64_t sub_51594()
{
  v0 = sub_82DF4();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService));
  sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value, &qword_DDC50, &unk_A9640);
  return v0;
}

uint64_t sub_51624()
{
  v0 = sub_51594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_516A0(uint64_t a1)
{
  sub_A43D4();
  if (v1 <= 0x3F)
  {
    sub_51A6C(319, &unk_DD9D8, type metadata accessor for WeatherPreprocessingResult, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_517D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeatherForecast(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_CF2C(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for WeatherState(0);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_518BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CurrentWeatherForecast(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for WeatherState(0);
    v10 = a1 + *(a4 + 28);
  }

  return sub_A924(v10, a2, a2, v9);
}

void sub_51988(uint64_t a1)
{
  type metadata accessor for CurrentWeatherForecast(319);
  if (v1 <= 0x3F)
  {
    sub_51A6C(319, &qword_DDC10, type metadata accessor for WeatherConditionEvent, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_51AD0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WeatherState(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_51A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_51AD0()
{
  if (!qword_DDC18)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DDC18);
    }
  }
}

uint64_t sub_51B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51BE8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C44()
{
  v1 = *(sub_4BF0(&qword_DDC50, &unk_A9640) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for WeatherPreprocessingResult(0);
  if (!sub_CF2C(v0 + v3, 1, v6))
  {
    v18 = v4;
    v7 = sub_4BF0(&qword_DB768, &unk_A9650);
    sub_7A14();
    v9 = *(v8 + 8);
    v9(v0 + v3, v7);
    v10 = type metadata accessor for CurrentWeatherForecast(0);
    v11 = v10[5];
    if (!sub_CF2C(v5 + v11, 1, v7))
    {
      v9(v5 + v11, v7);
    }

    v12 = v10[6];
    if (!sub_CF2C(v5 + v12, 1, v7))
    {
      v9(v5 + v12, v7);
    }

    v13 = v10[8];
    v14 = sub_A2EA4();
    sub_7A14();
    v16 = *(v15 + 8);
    v16(v5 + v13, v14);

    if (*(v5 + *(v6 + 24) + 24))
    {
    }

    v16(v5 + *(v6 + 28), v14);
    type metadata accessor for WeatherState(0);

    v4 = v18;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_51E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDC50, &unk_A9640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51EF0()
{
  v1 = sub_4BF0(&qword_DDC50, &unk_A9640);
  sub_10A88(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_507E8(v3, v4);
}

uint64_t sub_51F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_51FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDC50, &unk_A9640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_5201C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, 0xD000000000000029, v3 | 0x8000000000000000, v2, 0xE900000000000029);
}

void sub_5204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000029, a4, v4, 0xE900000000000029);
}

__n128 sub_52070(uint64_t a1, uint64_t a2)
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

uint64_t sub_5208C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_520CC(uint64_t result, int a2, int a3)
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

uint64_t sub_52128()
{
  sub_5277C();
  sub_A4B54(26);

  sub_52788();
  v7 = v1 | 6;
  if (*v0)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_A46D4(v2);

  sub_52754();
  sub_5277C();
  sub_A4B54(18);

  sub_52770();
  v8._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v8);

  sub_52754();

  v9._countAndFlagsBits = 0x79726F6765746163;
  v9._object = 0xEF203A7865646E49;
  sub_A46D4(v9);

  sub_5277C();
  sub_A4B54(18);

  sub_A46D4(*(v0 + 16));
  sub_52754();

  v10._countAndFlagsBits = 0x79726F6765746163;
  v10._object = 0xEF203A656C616353;
  sub_A46D4(v10);

  sub_5277C();
  sub_A4B54(19);

  sub_52788();
  sub_52770();
  v11._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v11);

  v12._countAndFlagsBits = sub_52770();
  sub_A46D4(v12);

  if (*(v0 + 48))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  v13._countAndFlagsBits = v4;
  v13._object = v5;
  sub_A46D4(v13);

  v14._countAndFlagsBits = 0x72656469766F7270;
  v14._object = 0xEA0000000000203ALL;
  sub_A46D4(v14);

  return v7;
}

uint64_t sub_52400@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4BF0(&qword_DDC58, qword_A96E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29[-v3];
  v31 = sub_A31F4();
  sub_591C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_A3234();
  sub_591C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_A3184() & 1) == 0)
  {
    goto LABEL_4;
  }

  if (qword_DAA20 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    sub_7A124(1, qword_E0C98, unk_E0CA0, byte_E0CA8, qword_E0CB0);
LABEL_4:
    v30 = sub_A3184();
    sub_A31A4();
    v16 = sub_A3224();
    v17 = *(v12 + 8);
    v12 += 8;
    v17(v15, v10);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_A31C4();
    v10 = sub_A31E4();
    v15 = v18;
    v19 = *(v6 + 8);
    v6 += 8;
    v19(v9, v31);
    v20 = sub_A31B4();
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
  }

  v21 = v20;
  sub_A3194();
  v22 = sub_A3214();
  if (sub_CF2C(v4, 1, v22) == 1)
  {
    result = sub_526EC(v4);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_A3204();
    v25 = v26;
    v27 = sub_52770();
    result = v28(v27);
  }

  *a1 = v30 & 1;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10;
  *(a1 + 24) = v15;
  *(a1 + 32) = v21;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  return result;
}

uint64_t sub_526EC(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DDC58, qword_A96E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_52754()
{
  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x52868);
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

unint64_t sub_528B4()
{
  result = qword_DDC60;
  if (!qword_DDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DDC60);
  }

  return result;
}

const char *sub_5291C(char a1)
{
  if (a1)
  {
    return "SiriX";
  }

  else
  {
    return "RF";
  }
}

uint64_t sub_52974(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF64656C6C617473;
  v3 = 0x6E49746F4E707061;
  v4 = a1;
  v5 = 0x6E49746F4E707061;
  v6 = 0xEF64656C6C617473;
  switch(v4)
  {
    case 1:
      v6 = 0x80000000000AD260;
      v5 = 0xD000000000000012;
      break;
    case 2:
      v6 = 0x80000000000AD280;
      v5 = 0xD000000000000015;
      break;
    case 3:
      break;
    default:
      v6 = 0x80000000000AD240;
      v5 = 0xD000000000000014;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000000000AD260;
      v3 = 0xD000000000000012;
      break;
    case 2:
      v2 = 0x80000000000AD280;
      v3 = 0xD000000000000015;
      break;
    case 3:
      break;
    default:
      v2 = 0x80000000000AD240;
      v3 = 0xD000000000000014;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_52AF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF7865646E497974;
  v3 = 0x696C617551726961;
  v4 = a1;
  v5 = 0x696C617551726961;
  v6 = 0xEF7865646E497974;
  switch(v4)
  {
    case 1:
      v7 = "shouldSpeakAirQuality";
      goto LABEL_6;
    case 2:
      v7 = "airQualityCategoryScale";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000017;
      break;
    case 3:
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x72656469766F7270;
      break;
    case 5:
      v6 = 0x80000000000AD490;
      v5 = 0xD000000000000018;
      break;
    default:
      v6 = 0x80000000000AD410;
      v5 = 0xD000000000000015;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "shouldSpeakAirQuality";
      goto LABEL_13;
    case 2:
      v8 = "airQualityCategoryScale";
LABEL_13:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 3:
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x72656469766F7270;
      break;
    case 5:
      v2 = 0x80000000000AD490;
      v3 = 0xD000000000000018;
      break;
    default:
      v2 = 0x80000000000AD410;
      v3 = 0xD000000000000015;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_52CAC(char a1, uint64_t a2)
{
  v2 = 1702195796;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x65736C6146;
    }

    else
    {
      v3 = 0x7465736E75;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1702195796;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65736C6146;
    }

    else
    {
      v2 = 0x7465736E75;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C(v3, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_52D88()
{
  sub_543D0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_543B4();
      break;
    case 2:
      v3 = sub_54408();
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1936744813;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v3 = 0x74736163646F70;
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      sub_543EC();
      break;
    case 2:
      sub_54420();
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1936744813;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v2 = 0x74736163646F70;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_52EBC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE006E6F69746964;
  v3 = 0x6E6F437473726966;
  v4 = a1;
  v5 = 0x6E6F437473726966;
  v6 = 0xEE006E6F69746964;
  switch(v4)
  {
    case 1:
      v5 = 0x6F43646E6F636573;
      v6 = 0xEF6E6F697469646ELL;
      break;
    case 2:
      v5 = 0xD000000000000013;
      v6 = 0x80000000000ACF90;
      break;
    case 3:
      v6 = 0x80000000000ACFB0;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6F43646E6F636573;
      v2 = 0xEF6E6F697469646ELL;
      break;
    case 2:
      v3 = 0xD000000000000013;
      v2 = 0x80000000000ACF90;
      break;
    case 3:
      v2 = 0x80000000000ACFB0;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_53048(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000010;
  v3 = "ted";
  v4 = "ted";
  v5 = a1;
  v6 = 0xD000000000000010;
  switch(v5)
  {
    case 1:
      v4 = "LocationDisabled";
      v6 = 0xD000000000000019;
      break;
    case 2:
      v4 = "LocationDisabledForDevice";
      v6 = 0xD000000000000016;
      break;
    case 3:
      v4 = "PodcastAppNotInstalled";
      v6 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "LocationDisabled";
      v2 = 0xD000000000000019;
      break;
    case 2:
      v3 = "LocationDisabledForDevice";
      v2 = 0xD000000000000016;
      break;
    case 3:
      v3 = "PodcastAppNotInstalled";
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_53184(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF656D614E707041;
  v3 = 0x7374736163646F50;
  v4 = a1;
  v5 = 0x7374736163646F50;
  v6 = 0xEF656D614E707041;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000014;
      v6 = 0x80000000000AD5E0;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x77654E656C617453;
      v6 = 0xEF74706D6F725073;
      break;
    default:
      v6 = 0x80000000000AD5C0;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000014;
      v2 = 0x80000000000AD5E0;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x77654E656C617453;
      v2 = 0xEF74706D6F725073;
      break;
    default:
      v2 = 0x80000000000AD5C0;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_53310(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE00746E65764574;
  v3 = 0x6E6174726F706D49;
  v4 = a1;
  v5 = 0x6E6174726F706D49;
  v6 = 0xEE00746E65764574;
  switch(v4)
  {
    case 1:
      v7 = "ry";
      goto LABEL_5;
    case 2:
      v7 = "UpcomingEventSummary";
      goto LABEL_5;
    case 3:
      v7 = "CalendarEventSummary";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "ry";
      goto LABEL_10;
    case 2:
      v8 = "UpcomingEventSummary";
      goto LABEL_10;
    case 3:
      v8 = "CalendarEventSummary";
LABEL_10:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_53464(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF65736E6F707365;
  v3 = 0x5264696C61766E69;
  v4 = a1;
  v5 = 0x5264696C61766E69;
  v6 = 0xEF65736E6F707365;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0x80000000000AD1A0;
      v5 = 0xD000000000000010;
      break;
    case 3:
      v6 = 0x80000000000AD1C0;
      v5 = 0xD000000000000016;
      break;
    default:
      v6 = 0x80000000000AD170;
      v5 = 0xD000000000000013;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x80000000000AD1A0;
      v3 = 0xD000000000000010;
      break;
    case 3:
      v2 = 0x80000000000AD1C0;
      v3 = 0xD000000000000016;
      break;
    default:
      v2 = 0x80000000000AD170;
      v3 = 0xD000000000000013;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_535E0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000012;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x5264696C61766E69;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3 == 1)
    {
      v5 = 0xEF65736E6F707365;
    }

    else
    {
      v5 = 0x80000000000AD200;
    }
  }

  else
  {
    v5 = 0x80000000000AD1E0;
    v4 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x5264696C61766E69;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a2 == 1)
    {
      v6 = 0xEF65736E6F707365;
    }

    else
    {
      v6 = 0x80000000000AD200;
    }
  }

  else
  {
    v6 = 0x80000000000AD1E0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_536E4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E697465657267;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x676E697465657267;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E696E726177;
      break;
    case 2:
      v5 = 0x6973756C636E6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1702060386;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x6C616974696E69;
      break;
    case 5:
      v5 = 0x6F5474706D6F7270;
      v3 = 0xEE006B636F6C6E55;
      break;
    case 6:
      v5 = 0x766F6D6552646461;
      v3 = 0xED0000776F6C4665;
      break;
    case 7:
      v5 = 0x6F6C466472617567;
      v3 = 0xE900000000000077;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C66666FLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E696E726177;
      break;
    case 2:
      v2 = 0x6973756C636E6F63;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1702060386;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x6C616974696E69;
      break;
    case 5:
      v2 = 0x6F5474706D6F7270;
      v6 = 0xEE006B636F6C6E55;
      break;
    case 6:
      v2 = 0x766F6D6552646461;
      v6 = 0xED0000776F6C4665;
      break;
    case 7:
      v2 = 0x6F6C466472617567;
      v6 = 0xE900000000000077;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C66666FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_5398C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x7961446C6C417369;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702125924;
    }

    else
    {
      v2 = 0x7961446C6C417369;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_53A68(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6665697262;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6665697262;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v6 = 1633972341;
      goto LABEL_6;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 1701602660;
LABEL_6:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x65676E616863;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1684104562;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 2036427888;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v8 = 1633972341;
      goto LABEL_14;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_14:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x65676E616863;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 1684104562;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v2 = 2036427888;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_5437C(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_53C1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x736972616D6D7573;
  v4 = a1;
  v5 = 0x736972616D6D7573;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x6978456B63656863;
      v6 = 0xEE0065636E657473;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
      goto LABEL_6;
    case 3:
      v6 = 0xE600000000000000;
      v7 = 1701602660;
LABEL_6:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 2036427888;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x746165706572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6978456B63656863;
      v2 = 0xEE0065636E657473;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v8 = 1633972341;
      goto LABEL_13;
    case 3:
      v2 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_13:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 2036427888;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x746165706572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_53DDC()
{
  sub_543D0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE400000000000000;
      v3 = 1937204590;
      break;
    case 2:
      v3 = sub_543B4();
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x63696666617274;
      break;
    case 4:
      v3 = sub_54408();
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE400000000000000;
      v2 = 1937204590;
      break;
    case 2:
      sub_543EC();
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x63696666617274;
      break;
    case 4:
      sub_54420();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_53F10(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 0x676E696665697262;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 0x676E696665697262;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_53FA0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_54070(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x6572676F72506E69;
  }

  if (v2)
  {
    v4 = 0xEA00000000007373;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x6572676F72506E69;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEA00000000007373;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_54124(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_5437C(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_5424C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 88))(a1);
  if (v2 == 6)
  {
    return 0;
  }

  v4 = sub_1C878(v2);
  if (v4 == 0x657461647075 && v5 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_54438(v4);

    return v7 & 1;
  }
}

uint64_t sub_542D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 88))(a1);
  if (v2 == 6)
  {
    return 0;
  }

  v4 = sub_1C878(v2);
  if (v4 == 0x6574656C6564 && v5 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_54438(v4);

    return v7 & 1;
  }
}

uint64_t sub_5437C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_A4E44();
}

uint64_t sub_54398(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_A4E44();
}

uint64_t sub_54438(uint64_t a1)
{

  return sub_A4E44();
}

void *sub_54458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v49 = a2;
  v6 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  __chkstk_darwin(v6 - 8);
  v47 = &v41 - v7;
  v8 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_A4434();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v46 = &v41 - v16;
  __chkstk_darwin(v15);
  v42 = &v41 - v17;
  v57 = sub_4BF0(&qword_DDCD8, qword_A9880);
  sub_7A14();
  __chkstk_darwin(v18);
  v61 = (&v41 - v19);
  v20 = 0;
  v21 = *(a5 + 16);
  v58 = a5;
  v59 = v21;
  v43 = v12;
  v54 = "ailed to build RREntity";
  v55 = " ";
  v52 = (v12 + 32);
  v53 = "tEntityProviding.swift";
  v45 = _swiftEmptyArrayStorage;
  while (v59 != v20)
  {
    v22 = *(type metadata accessor for CalendarEvent(0) - 8);
    v23 = v58 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20;
    v24 = *(v57 + 48);
    v25 = v61;
    v60 = v20;
    *v61 = v20;
    sub_106FC(v23, v25 + v24);
    sub_54A28();
    if (v26)
    {
      if (sub_4B4BC())
      {
        v56 = sub_A43F4();
        v27 = v47;
        sub_A924(v47, 1, 1, v56);

        v28 = v46;
        sub_A4414();

        v29 = v60;
        sub_A43E4();
        sub_A924(v27, 0, 1, v56);
        sub_A4424();

        (*v52)(v10, v28, v11);
        v30 = 0;
        goto LABEL_10;
      }
    }

    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v31 = sub_A43D4();
    sub_48A4(v31, qword_E0BA0);
    sub_81094(0xD000000000000033, v55 | 0x8000000000000000, 0xD000000000000036, v54 | 0x8000000000000000, 0xD00000000000002FLL, v53 | 0x8000000000000000);
    v30 = 1;
    v29 = v60;
LABEL_10:
    sub_A924(v10, v30, 1, v11);
    sub_11E34(v61, &qword_DDCD8, qword_A9880);
    if (sub_CF2C(v10, 1, v11) == 1)
    {
      sub_11E34(v10, &qword_DD468, &qword_A9068);
      v20 = v29 + 1;
    }

    else
    {
      v32 = *v52;
      v33 = v42;
      (*v52)(v42, v10, v11);
      v32(v44, v33, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_54D2C();
        v45 = v38;
      }

      v34 = v45[2];
      if (v34 >= v45[3] >> 1)
      {
        sub_54D2C();
        v45 = v39;
      }

      v20 = v29 + 1;
      v45[2] = v34 + 1;
      sub_55D58();
      (v32)(v36 + v35 + *(v37 + 72) * v34);
    }
  }

  return v45;
}

uint64_t sub_54A28()
{
  sub_4BF0(&qword_DDC88, &qword_A9850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_A9830;
  type metadata accessor for CalendarEvent(0);
  *(inited + 32) = sub_A2D84();
  *(inited + 40) = v1;
  v2 = 0;
  *(inited + 48) = sub_A2D94();
  *(inited + 56) = v3;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (inited + 40 + 16 * v2);
  while (++v2 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_54FDC();
        v4 = v11;
      }

      v9 = v4[2];
      if (v9 >= v4[3] >> 1)
      {
        sub_54FDC();
        v4 = v12;
      }

      v4[2] = v9 + 1;
      v10 = &v4[2 * v9];
      v10[4] = v8;
      v10[5] = v7;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_54CCC();
  sub_4BF0(&qword_DC1A8, &qword_A8E50);
  sub_35AE8();
  v13 = sub_A4574();

  return v13;
}

uint64_t sub_54BC4()
{
  sub_A3ED4();
  swift_allocObject();
  v0 = sub_A3EC4();
  sub_A3EB4();
  type metadata accessor for CalendarEvent(0);
  if (sub_600EC())
  {
    sub_55D4C();
    sub_A3F04();
    swift_allocObject();
    sub_A3EF4();

    sub_A3EE4();

    sub_A3EA4();
  }

  return v0;
}

uint64_t sub_54CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_54BC4();
  *a1 = result;
  return result;
}

uint64_t sub_54CCC()
{
  sub_4BF0(&qword_DDC90, &qword_A9858);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_54D2C()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_55DB4(v2, v5, &qword_DD470, &qword_A9070);
  sub_55D4C();
  sub_A4434();
  sub_11F80();
  sub_55D58();
  if (v1)
  {
    v9 = sub_55CB0(v8);
    sub_55AC8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_54E08()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_55DB4(v2, v5, &qword_DDCD0, qword_AAE80);
  v8 = sub_55D4C();
  type metadata accessor for CalendarEvent(v8);
  sub_11F80();
  sub_55D58();
  if (v1)
  {
    v10 = sub_55CB0(v9);
    sub_55AC8(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_54EE4()
{
  sub_55D40();
  if (v4)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  sub_55D04();
  if (v3)
  {
    v7 = sub_4BF0(&qword_DDC98, &qword_A9860);
    v8 = sub_55D94(v7);
    j__malloc_size(v8);
    sub_55D64();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || &v0[6 * v2 + 4] <= v8 + 4)
    {
      v11 = sub_2E7C4();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_4BF0(&qword_DB5E0, &qword_A6818);
    sub_2E7C4();
    swift_arrayInitWithCopy();
  }
}

void sub_54FDC()
{
  sub_55D40();
  if (v4)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  sub_55D04();
  if (v3)
  {
    sub_4BF0(&qword_DBB88, &unk_A6EB0);
    v7 = sub_55DCC();
    j__malloc_size(v7);
    sub_55CE0();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_550B0()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_4BF0(&qword_DBF90, &qword_A7530);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_55D64();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v7 + 4] <= v9 + 4)
    {
      v12 = sub_2E7C4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_4BF0(&qword_DBF98, &qword_A7538);
    sub_2E7C4();
    swift_arrayInitWithCopy();
  }
}

void sub_551BC()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_4BF0(&qword_DC9D0, &qword_A84E8);
    v9 = sub_55DCC();
    j__malloc_size(v9);
    sub_55CE0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_55290()
{
  sub_55D40();
  if (v4)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  sub_55D04();
  if (v3)
  {
    sub_4BF0(&qword_DD958, &qword_AAE70);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_55364()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_55DB4(v2, v5, &qword_DDCC8, &qword_A9878);
  sub_55D4C();
  sub_A32E4();
  sub_11F80();
  sub_55D58();
  if (v1)
  {
    v9 = sub_55CB0(v8);
    sub_55AC8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_55440()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_55DB4(v2, v5, &qword_DDCB0, &qword_A9870);
  sub_55D4C();
  sub_A3784();
  sub_11F80();
  sub_55D58();
  if (v1)
  {
    v9 = sub_55CB0(v8);
    sub_55AC8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_5551C()
{
  sub_55D40();
  if (v4)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  sub_55D04();
  if (v3)
  {
    v7 = sub_4BF0(&qword_DDCB8, &unk_A9930);
    v8 = sub_55D94(v7);
    j__malloc_size(v8);
    sub_55D64();
    *(v8 + 2) = v2;
    *(v8 + 3) = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_555FC()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_557A0(*(v0 + 16), v4);
  sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_11F80();
  sub_55D58();
  if (v1)
  {
    v8 = sub_55CB0(v7);
    sub_55B88(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void *sub_556BC(uint64_t a1, uint64_t a2)
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

  sub_4BF0(&qword_DBB88, &unk_A6EB0);
  v4 = sub_55DCC();
  j__malloc_size(v4);
  sub_55CE0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_55728(uint64_t a1, uint64_t a2)
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

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v4 = sub_55DCC();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_557A0(uint64_t a1, uint64_t a2)
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

  sub_4BF0(&qword_DDCA8, &qword_A9868);
  v4 = *(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_558D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_4BF0(a3, a4);
  v8 = sub_55D4C();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_559F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

char *sub_55A18(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

char *sub_55A50(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_55A78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

void sub_55AC8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_7A14(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_55D80();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_55D80();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

uint64_t sub_55B88(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_4BF0(&qword_DDCA0, &qword_A9AF0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_4BF0(&qword_DDCA0, &qword_A9AF0);

    return _swift_arrayInitWithTakeFrontToBack(a3);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3);
  }

  return result;
}

uint64_t sub_55CC0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_55D94(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_55DB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_558D0(v5, a2, a3, a4, v4);
}

uint64_t sub_55DCC()
{

  return swift_allocObject();
}

uint64_t sub_55DE4(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v3[20] = swift_task_alloc();
  type metadata accessor for CurrentWeatherForecast(0);
  v3[21] = swift_task_alloc();
  v4 = sub_A2F34();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_55F0C, 0, 0);
}

uint64_t sub_55F0C()
{
  v1 = *(v0 + 144);
  v2 = sub_A45C4();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_A4AB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  *(v0 + 88) = v35;
  *(v0 + 72) = v34;
  if (!*(v0 + 96))
  {
    sub_1085C(v0 + 72, &unk_DB870, &qword_A5CB0);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v5 = 0;
    v4 = 0;
    goto LABEL_9;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
LABEL_9:
  sub_A4B54(25);

  *(v0 + 104) = v5;
  *(v0 + 112) = v4;

  sub_4BF0(&qword_DDC90, &qword_A9858);
  v37._countAndFlagsBits = sub_A4644();
  sub_A46D4(v37);

  sub_810AC(0xD000000000000017, 0x80000000000B1590, 0xD000000000000036, 0x80000000000B15B0, 0xD00000000000001FLL, 0x80000000000B15F0);

  if (!v4 || (v6 = sub_A4654(), v8 = v7, , sub_567E8(v6, v8) == 3))
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    sub_A2F24();
    sub_A2F04();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 136);
  v13 = v12 + *(type metadata accessor for WeatherPreprocessingResult(0) + 24);
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = *(v13 + 48);
    v16 = *(v13 + 8);
    v17 = *(v13 + 32);
    *(v0 + 16) = *v13 & 1;
    *(v0 + 24) = v16;
    *(v0 + 40) = v14;
    *(v0 + 48) = v17;
    *(v0 + 64) = v15;
    type metadata accessor for WeatherAirQuality(0);

    sub_8D0FC();
    v19 = v18;
    v12 = *(v0 + 136);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v0 + 168);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v21 = swift_allocObject();
  *(v0 + 200) = v21;
  *(v21 + 16) = xmmword_A6E60;
  strcpy((v21 + 32), "weatherCurrent");
  *(v21 + 47) = -18;
  v22 = type metadata accessor for WeatherCurrent(0);
  sub_56784(v12, v20);
  sub_8D1AC();
  *(v21 + 48) = v23;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0x4572656874616577;
  *(v21 + 88) = 0xEF64657463657078;
  v24 = type metadata accessor for WeatherExpected(0);

  sub_8D488();
  *(v21 + 96) = v25;
  *(v21 + 120) = v24;
  *(v21 + 128) = 0xD000000000000011;
  *(v21 + 136) = 0x80000000000B1610;
  v26 = 0;
  if (v19)
  {
    v26 = type metadata accessor for WeatherAirQuality(0);
  }

  else
  {
    *(v21 + 152) = 0;
    *(v21 + 160) = 0;
  }

  *(v0 + 208) = v19;
  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  *(v21 + 144) = v19;
  *(v21 + 168) = v26;
  v29 = *(v27 + 16);
  v30 = sub_A3744();
  sub_A924(v28, 1, 1, v30);

  v31 = swift_task_alloc();
  *(v0 + 216) = v31;
  *v31 = v0;
  v31[1] = sub_5639C;
  v32 = *(v0 + 160);

  return sub_6E46C(v21, v32, v29);
}

uint64_t sub_5639C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 224) = a1;

  sub_1085C(v2, &qword_DB5A8, &unk_A67C0);

  return _swift_task_switch(sub_564E8, 0, 0);
}

uint64_t sub_564E8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t sub_56574(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0BB8);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_5663C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_56698()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for WeatherTemplatingService(uint64_t a1)
{
  result = qword_DDD10;
  if (!qword_DDD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_56784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherForecast(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_567E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF018;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_56834(char a1)
{
  if (!a1)
  {
    return 0x737569736C6563;
  }

  if (a1 == 1)
  {
    return 0x65686E6572686166;
  }

  return 0x6E69766C656BLL;
}

uint64_t sub_5688C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_58F8();
}

uint64_t sub_568A0()
{
  if (qword_DAA50 != -1)
  {
    swift_once();
  }

  sub_7A124(1, qword_E0D58, unk_E0D60, byte_E0D68, qword_E0D70);
  *(v0 + 40) = &type metadata for PodcastsDialogs;
  *(v0 + 48) = &off_D3350;
  *(v0 + 16) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_569B0;
  v2 = *(v0 + 56);

  return sub_6B4A0(v2, v0 + 16, _swiftEmptyArrayStorage);
}

uint64_t sub_569B0()
{
  v1 = *v0;
  v4 = *v0;

  sub_761C((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_56AC0()
{
  sub_4BF0(&qword_DDCB8, &unk_A9930);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  *(v1 + 16) = xmmword_A6E60;
  *(v1 + 56) = &type metadata for PodcastsDialogs;
  *(v1 + 64) = &off_D3350;
  *(v1 + 32) = 3;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 104) = &type metadata for CommonDialogs;
  *(v1 + 112) = &off_D30C8;
  *(v1 + 80) = 7;
  *(v1 + 120) = _swiftEmptyArrayStorage;
  *(v1 + 152) = &type metadata for CommonDialogs;
  *(v1 + 160) = &off_D30C8;
  *(v1 + 128) = 8;
  *(v1 + 168) = _swiftEmptyArrayStorage;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_56BEC;

  return sub_6BD4C();
}

uint64_t sub_56BEC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_56D28(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) < 2 || a2 == 19)
  {
    v4 = &off_CF868;
LABEL_9:
    v5 = sub_61288(v4);
    v6 = sub_9D698(a1, v5);

    return v6 & 1;
  }

  if (a2 == 3)
  {
    v4 = &off_CF890;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_56DA0(uint64_t a1)
{
  v2 = sub_A3974();
  sub_591C();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A3914();
  v8 = sub_A3A44();
  (*(v4 + 8))(v7, v2);
  if (!v8)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v11 = sub_A43D4();
    sub_48A4(v11, qword_E0BA0);
    sub_58530();
    sub_81094(0xD000000000000035, v12 | 0x8000000000000000, 0xD000000000000035, v13 | 0x8000000000000000, v14, v15);
    sub_A3924();
    sub_5908();
    (*(v16 + 8))(a1);
    return 0;
  }

  type metadata accessor for DailyBriefingNLv4Intent();
  swift_allocObject();
  v9 = sub_57024(v8);
  sub_A3924();
  sub_5908();
  (*(v10 + 8))(a1);
  if (!v9)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_56F80()
{
  v0 = objc_opt_self();
  if (sub_58540(v0))
  {
    return 0;
  }

  v1 = objc_opt_self();
  if (sub_58540(v1))
  {
    return 0;
  }

  v3 = objc_opt_self();
  if (sub_58540(v3))
  {
    return 1;
  }

  v4 = objc_opt_self();
  if (sub_58540(v4))
  {
    return 1;
  }

  v5 = objc_opt_self();
  if (sub_58540(v5))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_57024(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 517;
  *(v1 + 32) = 6;
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  sub_A3C04();
  v3 = sub_1BF68();
  if (!v3)
  {
LABEL_15:
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v9 = sub_A43D4();
    v10 = sub_48A4(v9, qword_E0BA0);
    sub_2BB18();
    sub_A4B54(17);
    v38._countAndFlagsBits = 0x6C61694472657355;
    v38._object = 0xEF203A746341676FLL;
    sub_A46D4(v38);
    sub_4BF0(&unk_DDF90, &qword_A99B8);
    sub_A4C44();
    sub_58520();
    sub_58530();
    sub_810C4(v11, v12, v13, v14, v15, v16);

    if (!v3)
    {

LABEL_38:
      swift_unknownObjectRelease();
      return v2;
    }

    sub_58558();
    if (v10)
    {
      sub_A4B74();
    }

    else
    {
    }

    sub_A3FE4();
    v17 = sub_1D0C8();
    if (v17 == 6)
    {
      v17 = 0;
    }

    *(v1 + 32) = v17;
    if (sub_1C878(v17) != 0x657461647075 || v18 != 0xE600000000000000)
    {
      v20 = sub_A4E44();

      if (v20)
      {
LABEL_37:
        sub_58520();
        sub_58530();
        sub_810C4(v25, v26, v27, v28, v29, v30);
        sub_57578();

        goto LABEL_38;
      }

      v21 = *(v1 + 32);
      if (v21 == 6)
      {
LABEL_28:
        swift_unknownObjectRelease();

        return v2;
      }

      if (sub_1C878(v21) != 0x6574656C6564 || v22 != 0xE600000000000000)
      {
        v24 = sub_A4E44();

        if ((v24 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  sub_58558();
  if (v1)
  {
    sub_A4B74();
  }

  else
  {
  }

  v4 = sub_A3FF4();
  v6 = v5;

  v7 = v4 == 0xD000000000000014 && 0x80000000000B1790 == v6;
  if (v7 || (sub_A4E44() & 1) != 0 || (v4 == 0x6E456F4E5F6F7375 ? (v8 = v6 == 0xEC00000079746974) : (v8 = 0), v8 || (sub_A4E44() & 1) != 0))
  {

    goto LABEL_15;
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v32 = sub_A43D4();
  sub_48A4(v32, qword_E0BA0);
  sub_2BB18();
  sub_A4B54(47);

  v39._countAndFlagsBits = v4;
  v39._object = v6;
  sub_A46D4(v39);

  sub_58520();
  sub_81094(v33, v34, v35, v36, v37, 0xEB00000000293A6DLL);

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_57578()
{
  sub_A3C24();
  sub_584B0(v15, &v12);
  if (v14)
  {
    sub_A3DF4();
    if (swift_dynamicCast())
    {

      sub_A3DB4();

      if (v12)
      {
        v1 = sub_A3CF4();
        if (v1)
        {
          v2 = v1;
          v12 = _swiftEmptyArrayStorage;
          v3 = sub_1BF68();
          for (i = 0; ; ++i)
          {
            if (v3 == i)
            {

              sub_5000(v15);
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = sub_A4B74();
            }

            else
            {
              if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_27;
              }

              v5 = *(v2 + 8 * i + 32);
            }

            if (__OFADD__(i, 1))
            {
              break;
            }

            v10 = v5;
            sub_57948(&v10, v0, &v9);

            if (v9)
            {
              sub_A4744();
              if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_A4784();
              }

              sub_A47A4();
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      if (qword_DA9D0 != -1)
      {
        sub_58D8(&qword_DA9D0);
      }

      v8 = sub_A43D4();
      sub_48A4(v8, qword_E0BA0);
      sub_81094(0xD00000000000007CLL, 0x80000000000B18C0, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

      return sub_5000(v15);
    }
  }

  else
  {
    sub_5000(&v12);
  }

  if (qword_DA9D0 != -1)
  {
LABEL_28:
    sub_58D8(&qword_DA9D0);
  }

  v6 = sub_A43D4();
  sub_48A4(v6, qword_E0BA0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_A4B54(62);
  v10 = v12;
  v11 = v13;
  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x80000000000B1810;
  sub_A46D4(v16);
  sub_584B0(v15, &v12);
  sub_4BF0(&unk_DB870, &qword_A5CB0);
  v17._countAndFlagsBits = sub_A4644();
  sub_A46D4(v17);

  v18._countAndFlagsBits = 0xD000000000000028;
  v18._object = 0x80000000000B1830;
  sub_A46D4(v18);
  v12 = v10;
  v13 = v11;

  v19._countAndFlagsBits = 0xD000000000000037;
  v19._object = 0x80000000000B1860;
  sub_A46D4(v19);

  sub_81094(v12, v13, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

  return sub_5000(v15);
}

void sub_57948(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v6 = sub_A3B04();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v37 - v11;
  v13 = *a1;
  v14 = sub_A3B84();
  if (!v14)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v23 = sub_A43D4();
    sub_48A4(v23, qword_E0BA0);
    sub_81094(0xD000000000000068, 0x80000000000B1940, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);
    goto LABEL_44;
  }

  v37[1] = v13;
  v40 = v3;
  v41 = a3;
  v42 = v14;
  v15 = sub_A3BB4();
  v17 = v16;
  v39 = *(v7 + 104);
  v39(v12, enum case for ListOperators.addToSet(_:), v6);
  v18 = sub_A3AF4();
  v20 = v19;
  v38 = *(v7 + 8);
  v38(v12, v6);
  if (v17)
  {
    if (v18 == v15 && v17 == v20)
    {

LABEL_21:

      v28 = v43;
      *(v43 + 32) = 2;
      a3 = v41;
      goto LABEL_25;
    }

    v22 = sub_A4E44();

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v39(v10, enum case for ListOperators.removeFromSet(_:), v6);
  v24 = sub_A3AF4();
  v26 = v25;
  v38(v10, v6);
  if (v17)
  {
    v27 = v24 == v15 && v17 == v26;
    a3 = v41;
    v28 = v43;
    if (v27)
    {
    }

    else
    {
      v29 = sub_A4E44();

      if ((v29 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    *(v28 + 32) = 3;
  }

  else
  {

    a3 = v41;
    v28 = v43;
  }

LABEL_25:
  sub_A3BC4();
  if (!v44)
  {
    goto LABEL_41;
  }

  v30 = sub_A3BD4();

  if (!v30)
  {
    goto LABEL_41;
  }

  v31 = sub_57F0C();
  if (!v31)
  {

LABEL_41:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v36 = sub_A43D4();
    sub_48A4(v36, qword_E0BA0);
    sub_81094(0xD00000000000003FLL, 0x80000000000B19B0, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

LABEL_44:
    *a3 = 0;
    return;
  }

  *(v28 + 16) = 5;
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 40);
    do
    {
      v34 = *(v33 - 1) == 0x6C7070612E6D6F63 && *v33 == 0xEE007377656E2E65;
      if (v34 || (sub_A4E44() & 1) != 0)
      {
        *(v28 + 16) = 1;
      }

      v33 += 2;
      --v32;
    }

    while (v32);
  }

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v35 = sub_A43D4();
  sub_48A4(v35, qword_E0BA0);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_A4B54(51);
  v47._countAndFlagsBits = 0xD000000000000031;
  v47._object = 0x80000000000B19F0;
  sub_A46D4(v47);
  v46 = *(v28 + 16);
  sub_4BF0(&qword_DDFA0, qword_A8788);
  v48._countAndFlagsBits = sub_A4644();
  sub_A46D4(v48);

  sub_810C4(v44, v45, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

  sub_A3B94();
}

unint64_t sub_57F0C()
{
  v0 = sub_A3B34();
  sub_591C();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v40 = &v37 - v7;
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_A3BE4();
  if (!v10)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = 0;
  v42 = *(v10 + 16);
  v43 = v2 + 16;
  v38 = (v2 + 32);
  v13 = (v2 + 8);
  v39 = _swiftEmptyArrayStorage;
  while (v42 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    (*(v2 + 16))(v9, v11 + v14 + v15 * v12, v0);
    v16 = sub_A3B24();
    if (v17)
    {
      if (v16 == 0x656D614E707061 && v17 == 0xE700000000000000)
      {
      }

      else
      {
        v19 = sub_A4E44();

        if ((v19 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v37 = *v38;
      v37(v40, v9, v0);
      v20 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_7AE30(0, v20[2] + 1, 1);
        v20 = v45;
      }

      v23 = v20[2];
      v22 = v20[3];
      v24 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v39 = (v23 + 1);
        sub_7AE30((v22 > 1), v23 + 1, 1);
        v24 = v39;
        v20 = v45;
      }

      ++v12;
      v20[2] = v24;
      v39 = v20;
      v37(v20 + v14 + v23 * v15, v40, v0);
    }

    else
    {
LABEL_11:
      (*v13)(v9, v0);
      ++v12;
    }
  }

  v25 = v39[2];
  if (v25)
  {
    v45 = _swiftEmptyArrayStorage;
    v26 = v39;
    sub_7AC94(0, v25, 0);
    v12 = v45;
    v27 = v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v42 = *(v2 + 72);
    v40 = *(v2 + 16);
    do
    {
      v28 = v41;
      (v40)(v41, v27, v0);
      v29 = sub_A3B14();
      v31 = v30;
      (*v13)(v28, v0);
      v45 = v12;
      v33 = *(v12 + 16);
      v32 = *(v12 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_7AC94((v32 > 1), v33 + 1, 1);
        v12 = v45;
      }

      *(v12 + 16) = v33 + 1;
      v34 = (v12 + 16 * v33);
      v34[4] = v29;
      v34[5] = v31;
      v27 = v42 + v27;
      --v25;
    }

    while (v25);
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

LABEL_26:
  if (qword_DA9D0 != -1)
  {
LABEL_32:
    sub_58D8(&qword_DA9D0);
  }

  v35 = sub_A43D4();
  sub_48A4(v35, qword_E0BA0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_A4B54(42);

  v45 = 0xD000000000000028;
  v46 = 0x80000000000B1A30;
  v44 = v12;

  sub_4BF0(&qword_DDFA8, qword_A99C0);
  v47._countAndFlagsBits = sub_A4644();
  sub_A46D4(v47);

  sub_810AC(v45, v46, 0xD000000000000035, 0x80000000000B1710, 0x746163696C707061, 0xEE007364496E6F69);

  if (v12 && !*(v12 + 16))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_583F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_584B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&unk_DB870, &qword_A5CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_58540(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_58558()
{

  return sub_1BF70();
}

uint64_t sub_5858C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_4BF0(&qword_DB768, &unk_A9650);
  sub_11F80();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_4BF0(&qword_DB760, qword_A6AE8);
    sub_11F80();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 233)
      {
        v13 = *(a1 + a3[7]);
        if (v13 >= 0x17)
        {
          return v13 - 22;
        }

        else
        {
          return 0;
        }
      }

      v8 = sub_A2EA4();
      v12 = a3[8];
    }

    v9 = a1 + v12;
  }

  return sub_CF2C(v9, a2, v8);
}

void sub_586BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_4BF0(&qword_DB768, &unk_A9650);
  sub_11F80();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4BF0(&qword_DB760, qword_A6AE8);
    sub_11F80();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 233)
      {
        *(a1 + a4[7]) = a2 + 22;
        return;
      }

      v10 = sub_A2EA4();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_A924(v11, a2, a2, v10);
}