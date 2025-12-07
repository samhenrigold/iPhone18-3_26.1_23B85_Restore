uint64_t ReadingGoalsDataStore.onRemoteChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_1001575A0(v1);
  return v1;
}

uint64_t ReadingGoalsDataStore.onRemoteChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_1000044D8(v5, v6);
}

uint64_t ReadingGoalsDataStore.init(localStore:syncStore:)(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  sub_1000B3A90(a1, v2 + 16);
  sub_1000B3A90(a2, v2 + 56);
  sub_10009BB74(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v7 = a2[4];
  v8 = [objc_opt_self() defaultCenter];
  v9 = *(v7 + 16);

  v10 = v9(DynamicType, v7);
  v11 = a2[3];
  v12 = sub_10009BB74(a2, v11);
  v13 = *(v11 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  v16 = sub_1001C6CF8();
  (*(v13 + 8))(v15, v11);
  [v8 addObserver:v3 selector:"handleCloudChangeNotification:" name:v10 object:v16];

  swift_unknownObjectRelease();
  v17 = a2[3];
  v18 = a2[4];
  sub_10009BB74(a2, v17);
  if ((*(v18 + 24))(v17, v18))
  {
    v23 = 0;
    sub_1001544F0(&v23, a2, a1);
    v23 = 1;
    sub_1001544F0(&v23, a2, a1);
  }

  else
  {
    v19 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      v21 = v19;
      swift_once();
      v19 = v21;
    }

    sub_1001C5118(v19, &_mh_execute_header, qword_1002711E8, "Goals init: Synchronize failed", 30, 2, _swiftEmptyArrayStorage);
  }

  sub_10008E7BC(a2);
  sub_10008E7BC(a1);
  return v3;
}

uint64_t sub_1001544F0(unsigned __int8 *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_10009BB74(a2, v5);
  v7 = v4 == 0;
  if (v4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v9 = "lly";
  }

  else
  {
    v9 = "ReadingGoals.BooksFinished";
  }

  v10 = v9 | 0x8000000000000000;
  v11 = (*(*(v6 + 8) + 8))(v8, v9 | 0x8000000000000000, v5);

  v12 = a3[3];
  v13 = a3[4];
  sub_10009BB74(a3, v12);
  (*(v13 + 16))(v11, v8, v10, v12, v13);

  v14 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v15 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001F0660;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_100084570();
  *(v16 + 64) = v17;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  if (v11)
  {
    v20 = sub_100084528(&qword_100273150, &unk_1001F6AF8);
    v21 = sub_10015753C();
    *&v19 = v11;
    sub_100100DF0(&v19, v16 + 72);
  }

  else
  {
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v17;
    *(v16 + 72) = 7104878;
    *(v16 + 80) = 0xE300000000000000;
  }

  sub_1001C5118(v14, &_mh_execute_header, v15, "Goals init: Got { %@: %@ }", 26, 2, v16);
}

uint64_t sub_1001546FC()
{
  v1 = v0;
  v2 = sub_1001C4858();
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v43 = sub_1001C6018();
  sub_1001C6968();
  if (!v3[2] || (v4 = sub_100187A1C(v45), (v5 & 1) == 0))
  {

    sub_10008EB7C(v45);
LABEL_25:
    v28 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    return sub_1001C5118(v28, &_mh_execute_header, qword_1002711E8, "Goals cloud error: Change notification had invalid user info", 60, 2, _swiftEmptyArrayStorage);
  }

  sub_10008EBD0(v3[7] + 32 * v4, v46);
  sub_10008EB7C(v45);
  v6 = &type metadata for Int;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  v7 = v43;
  v8 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v9 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0670;
  *(v10 + 56) = v6;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v7;
  sub_1001C5118(v8, &_mh_execute_header, v9, "Goals cloud change with reason %d", v42);

  if (v7 > 1)
  {

    if (v7 == 3)
    {
      v32 = sub_1001C6588();
      sub_1001C5118(v32, &_mh_execute_header, v9, "Goals cloud account change", 26, 2, _swiftEmptyArrayStorage);
      v33 = v1[5];
      v34 = v1[6];
      sub_10009BB74(v1 + 2, v33);
      (*(v34 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v33, v34);

      v35 = v1[5];
      v36 = v1[6];
      sub_10009BB74(v1 + 2, v35);
      (*(v36 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v35, v36);
    }

    else if (v7 == 2)
    {
      v30 = sub_1001C6598();
      return sub_1001C5118(v30, &_mh_execute_header, v9, "Goals cloud error: Quota exceeded", 33, 2, _swiftEmptyArrayStorage);
    }

    return result;
  }

  v44 = sub_1001C6018();
  sub_1001C6968();
  if (!v3[2] || (v11 = sub_100187A1C(v45), (v12 & 1) == 0))
  {

    sub_10008EB7C(v45);
    goto LABEL_34;
  }

  sub_10008EBD0(v3[7] + 32 * v11, v46);
  sub_10008EB7C(v45);

  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v31 = sub_1001C6598();
    return sub_1001C5118(v31, &_mh_execute_header, v9, "Goals cloud error: Change notification had no keys", 50, 2, _swiftEmptyArrayStorage);
  }

  v45[0] = _swiftEmptyArrayStorage;
  sub_1000D3898(0, 2, 0);
  v13 = v45[0];
  v15 = *(v45[0] + 16);
  v14 = *(v45[0] + 24);
  v16 = v14 >> 1;
  v17 = v15 + 1;
  if (v14 >> 1 <= v15)
  {
    sub_1000D3898((v14 > 1), v15 + 1, 1);
    v17 = v15 + 1;
    v13 = v45[0];
    v14 = *(v45[0] + 24);
    v16 = v14 >> 1;
  }

  *(v13 + 16) = v17;
  v18 = v13 + 16 * v15;
  *(v18 + 32) = 0xD00000000000001ALL;
  *(v18 + 40) = 0x80000001002035C0;
  v19 = v15 + 2;
  if (v16 <= v17)
  {
    v41 = v17;
    sub_1000D3898((v14 > 1), v19, 1);
    v17 = v41;
    v13 = v45[0];
  }

  *(v13 + 16) = v19;
  v20 = v13 + 16 * v17;
  *(v20 + 32) = 0xD000000000000016;
  *(v20 + 40) = 0x80000001002035E0;
  v6 = sub_100157694(v13);

  v21 = sub_100157694(v44);

  v3 = sub_100156E88(v21, v6);

  v46[0] = 0;
  v8 = (v3 + 7);
  v22 = 1 << *(v3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v7 = v23 & v3[7];
  v24 = (v22 + 63) >> 6;

  v25 = 0;
  if (v7)
  {
    while (1)
    {
      v26 = v25;
LABEL_22:
      v27 = (v3[6] + ((v26 << 10) | (16 * __clz(__rbit64(v7)))));
      v6 = v27[1];
      v7 &= v7 - 1;
      v45[0] = *v27;
      v45[1] = v6;

      sub_100154D68(v45, v1, v46);

      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v24)
    {
      break;
    }

    v7 = *(v8 + 8 * v26);
    ++v25;
    if (v7)
    {
      v25 = v26;
      goto LABEL_22;
    }
  }

  if (v46[0] == 1)
  {
    result = swift_beginAccess();
    v37 = v1[12];
    if (v37)
    {
      v38 = v1[13];

      v37(v39);
      return sub_1000044D8(v37, v38);
    }
  }

  return result;
}

uint64_t sub_100154D68(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v7 = __chkstk_darwin(v6 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v56 - v9;
  v11 = sub_1001C4CA8();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = __chkstk_darwin(v11);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v56 - v14;
  v16 = *a1;
  v15 = a1[1];
  v17 = a2[5];
  v18 = a2[6];
  sub_10009BB74(a2 + 2, v17);
  v19 = (*(v18 + 8))(v16, v15, v17, v18);
  v20 = a2[10];
  v21 = a2[11];
  sub_10009BB74(a2 + 7, v20);
  v22 = (*(*(v21 + 8) + 8))(v16, v15, v20);
  v23 = v22;
  if (!v19)
  {
LABEL_11:
    v32 = a2[5];
    v33 = a2[6];
    sub_10009BB74(a2 + 2, v32);
    (*(v33 + 16))(v23, v16, v15, v32, v33);

LABEL_13:
    *a3 = 1;
    return result;
  }

  if (!v22)
  {

    v35 = a2[5];
    v36 = a2[6];
    sub_10009BB74(a2 + 2, v35);
    result = (*(v36 + 16))(0, v16, v15, v35, v36);
    goto LABEL_13;
  }

  if (!*(v19 + 16) || (v24 = sub_100187B3C(1702125924, 0xE400000000000000), (v25 & 1) == 0))
  {

    (*(v66 + 56))(v10, 1, 1, v67);
    goto LABEL_8;
  }

  sub_10008EBD0(*(v19 + 56) + 32 * v24, v68);
  v26 = v67;
  v27 = swift_dynamicCast();
  v28 = v66;
  v61 = *(v66 + 56);
  v62 = v66 + 56;
  v61(v10, v27 ^ 1u, 1, v26);
  v59 = *(v28 + 48);
  v60 = v28 + 48;
  if (v59(v10, 1, v26) == 1)
  {

LABEL_8:
    sub_10015772C(v10);
    v29 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v30 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001F0670;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100084570();
    *(v31 + 32) = v16;
    *(v31 + 40) = v15;

    sub_1001C5118(v29, &_mh_execute_header, v30, "Goals cloud error: Local dict for key %@ existed with no date", 61, 2, v31);

    goto LABEL_11;
  }

  v57 = *(v28 + 32);
  v58 = v28 + 32;
  v57(v65, v10, v26);
  if (!*(v23 + 16) || (v37 = sub_100187B3C(1702125924, 0xE400000000000000), (v38 & 1) == 0))
  {

    v39 = v64;
    v61(v64, 1, 1, v26);
    goto LABEL_19;
  }

  sub_10008EBD0(*(v23 + 56) + 32 * v37, v68);
  v39 = v64;
  v40 = swift_dynamicCast();
  v61(v39, v40 ^ 1u, 1, v26);
  if (v59(v39, 1, v26) == 1)
  {

LABEL_19:
    v41 = v65;
    sub_10015772C(v39);
    v42 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v43 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1001F0670;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_100084570();
    *(v44 + 32) = v16;
    *(v44 + 40) = v15;

    sub_1001C5118(v42, &_mh_execute_header, v43, "Goals cloud error: Remote dict for key %@ existed with no date", 62, 2, v44);

    v45 = a2[10];
    v46 = a2[11];
    sub_10009BB74(a2 + 7, v45);
    (*(*(v46 + 8) + 16))(v19, v16, v15, v45);

    return (*(v66 + 8))(v41, v67);
  }

  v57(v63, v39, v26);
  v47 = v65;
  if ((sub_1001C4C48() & 1) == 0)
  {

    v53 = a2[5];
    v52 = a2[6];
    sub_10009BB74(a2 + 2, v53);
    (*(v52 + 16))(v23, v16, v15, v53, v52);

    v54 = v67;
    v55 = *(v66 + 8);
    v55(v63, v67);
    result = (v55)(v47, v54);
    goto LABEL_13;
  }

  v48 = a2[10];
  v49 = a2[11];
  sub_10009BB74(a2 + 7, v48);
  (*(*(v49 + 8) + 16))(v19, v16, v15, v48);

  v50 = v67;
  v51 = *(v66 + 8);
  v51(v63, v67);
  return (v51)(v47, v50);
}

void *ReadingGoalsDataStore.deinit()
{
  sub_10008E7BC(v0 + 2);
  sub_10008E7BC(v0 + 7);
  sub_1000044D8(v0[12], v0[13]);
  return v0;
}

uint64_t ReadingGoalsDataStore.__deallocating_deinit()
{
  sub_10008E7BC(v0 + 2);
  sub_10008E7BC(v0 + 7);
  sub_1000044D8(v0[12], v0[13]);

  return swift_deallocClassInstance();
}

uint64_t sub_100155664(char a1, uint64_t a2)
{
  v4 = v2[5];
  v5 = v2[6];
  sub_10009BB74(v2 + 2, v4);
  if (a1)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v7 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v7 = "lly";
  }

  v8 = (*(v5 + 8))(v6, v7 | 0x8000000000000000, v4, v5);

  if (v8)
  {
    if (*(v8 + 16))
    {
      v9 = sub_100187B3C(1818324839, 0xE400000000000000);
      if (v10)
      {
        sub_10008EBD0(*(v8 + 56) + 32 * v9, v14);

        goto LABEL_13;
      }
    }
  }

  memset(v14, 0, sizeof(v14));
LABEL_13:
  sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  v11 = swift_dynamicCast();
  v12 = v15;
  if (!v11)
  {
    return 0;
  }

  return v12;
}

uint64_t ReadingGoalsDataStore.value<A>(for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v8 = v3[6];
  sub_10009BB74(v3 + 2, v7);
  if (a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v10 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v10 = "lly";
  }

  v11 = (*(v8 + 8))(v9, v10 | 0x8000000000000000, v7, v8);

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(v11 + 16) || (v12 = sub_100187B3C(1818324839, 0xE400000000000000), (v13 & 1) == 0))
  {

LABEL_12:
    memset(v16, 0, sizeof(v16));
    goto LABEL_13;
  }

  sub_10008EBD0(*(v11 + 56) + 32 * v12, v16);

LABEL_13:
  sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  v14 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v14 ^ 1u, 1, a2);
}

uint64_t sub_1001558FC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  v23 = a1;
  sub_1001C6968();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v10, v12, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v12, v6);
  v14 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v15 = v3[6];
  sub_10009BB74(v3 + 2, v3[5]);
  sub_1001536D8(v14);
  if (a2)
  {
    v16 = 0xD000000000000016;
  }

  else
  {
    v16 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v17 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v17 = "lly";
  }

  (*(v15 + 16))();

  v18 = v3[10];
  v19 = v3[11];
  sub_10009BB74(v3 + 7, v18);
  sub_1001536D8(v14);
  v21 = v20;

  (*(*(v19 + 8) + 16))(v21, v16, v17 | 0x8000000000000000, v18);
}

uint64_t sub_100155BCC(char a1, double a2)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  *&v23[1] = a2;
  sub_1001C6968();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v10, v12, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v12, v6);
  v14 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v15 = v3[6];
  sub_10009BB74(v3 + 2, v3[5]);
  sub_1001536D8(v14);
  if (a1)
  {
    v16 = 0xD000000000000016;
  }

  else
  {
    v16 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v17 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v17 = "lly";
  }

  (*(v15 + 16))();

  v18 = v3[10];
  v19 = v3[11];
  sub_10009BB74(v3 + 7, v18);
  sub_1001536D8(v14);
  v21 = v20;

  (*(*(v19 + 8) + 16))(v21, v16, v17 | 0x8000000000000000, v18);
}

uint64_t ReadingGoalsDataStore.set<A>(value:forGoal:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23[1] = a4;
  v24 = a2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_100084528(&qword_100273168, &qword_1001F6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0660;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  sub_1001C6B98();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1001C4C98();
  (*(v7 + 16))(v10, v12, v6);
  sub_1001406E8();
  sub_1001C6968();
  (*(v7 + 8))(v12, v6);
  v14 = sub_100118DE4(inited);
  swift_setDeallocating();
  sub_100084528(&qword_1002718A8, &qword_1001F6B10);
  swift_arrayDestroy();
  v15 = v5[6];
  sub_10009BB74(v5 + 2, v5[5]);
  sub_1001536D8(v14);
  if (v24)
  {
    v16 = 0xD000000000000016;
  }

  else
  {
    v16 = 0xD00000000000001ALL;
  }

  if (v24)
  {
    v17 = "ReadingGoals.BooksFinished";
  }

  else
  {
    v17 = "lly";
  }

  (*(v15 + 16))();

  v18 = v5[10];
  v19 = v5[11];
  sub_10009BB74(v5 + 7, v18);
  sub_1001536D8(v14);
  v21 = v20;

  (*(*(v19 + 8) + 16))(v21, v16, v17 | 0x8000000000000000, v18);
}

Swift::Void __swiftcall ReadingGoalsDataStore.clearData()()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10009BB74(v0 + 2, v1);
  (*(v2 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v1, v2);

  v3 = v0[10];
  v4 = v0[11];
  sub_10009BB74(v0 + 7, v3);
  (*(*(v4 + 8) + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v3);

  v5 = v0[5];
  v6 = v0[6];
  sub_10009BB74(v0 + 2, v5);
  (*(v6 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v5, v6);

  v7 = v0[10];
  v8 = v0[11];
  sub_10009BB74(v0 + 7, v7);
  (*(*(v8 + 8) + 16))(0, 0xD000000000000016, 0x80000001002035E0, v7);
}

uint64_t ReadingGoalsDataStore.state.getter()
{
  v0 = sub_100155664(0, &type metadata for Int);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = v0;
  }

  sub_100155664(1, &type metadata for Double);
  return v2;
}

uint64_t sub_100156398()
{
  v0 = sub_100155664(0, &type metadata for Int);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = v0;
  }

  sub_100155664(1, &type metadata for Double);
  return v2;
}

uint64_t sub_100156400()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  sub_1001575A0(v2);
  return v2;
}

uint64_t sub_100156454(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return sub_1000044D8(v6, v7);
}

unint64_t *sub_100156574(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_10015704C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100156604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1001C6DF8();
    sub_1001C6E08(v17);
    sub_1001C6E08(v18);
    result = sub_1001C6E28();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156828(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1001C6DF8();

    sub_1001C60E8();
    sub_1001C6E18(v19);
    result = sub_1001C6E28();
    v20 = -1 << v9[32];
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 6) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156A70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1001C6DF8();

    sub_1001C60E8();
    result = sub_1001C6E28();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100156C94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C69A8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1001C6798(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_100156E88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_10015704C((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_100156574(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_10015704C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1001C6DF8();

      sub_1001C60E8();
      v26 = sub_1001C6E28();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1001C6D08() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100156A70(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1001C6DF8();

      sub_1001C60E8();
      v39 = sub_1001C6E28();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1001C6D08() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_10009BB74(a1, v2);
  (*(v3 + 16))(0, 0xD00000000000001ALL, 0x80000001002035C0, v2, v3);

  v4 = a1[3];
  v5 = a1[4];
  sub_10009BB74(a1, v4);
  (*(v5 + 16))(0, 0xD000000000000016, 0x80000001002035E0, v4, v5);
}

unint64_t sub_10015753C()
{
  result = qword_100273158;
  if (!qword_100273158)
  {
    sub_1000885AC(&qword_100273150, &unk_1001F6AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273158);
  }

  return result;
}

uint64_t sub_1001575A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001575F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100110100();
  result = sub_1001C6408();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);

      sub_1001788CC(&v8, v7, v6, v5);

      v4 += 24;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_100157694(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1001C6408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100178A6C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10015772C(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100157794(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10015782C();
  result = sub_1001C6408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100178BBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10015782C()
{
  result = qword_100273248;
  if (!qword_100273248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273248);
  }

  return result;
}

uint64_t sub_1001578DC()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  sub_10009ADF0(v1, v12 - v6, &unk_10026FC40, &qword_1001F0E90);
  v8 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    sub_100159420(v7, v4, type metadata accessor for ReadingHistoryModel);
    v12[0] = 0x2865746F6D6572;
    v12[1] = 0xE700000000000000;
    v13._countAndFlagsBits = ReadingHistoryModel.description.getter();
    sub_1001C6138(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_1001C6138(v14);
    v11 = v12[0];
    sub_100158988(v4, type metadata accessor for ReadingHistoryModel);
    return v11;
  }
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.init(readingDay:longestStreak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_1000B36A8(a4, a5 + v10, &qword_10026F508, &qword_1001F1150);
}

uint64_t ReadingHistory.ModelSnapshot.init(loaded:lastSource:modelValues:remoteModelValues:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v11 = v10[7];
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1 & 1;
  sub_100157CA4(a2, &a5[v10[5]]);
  sub_100159420(a3, &a5[v10[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  return sub_1000B36A8(a4, &a5[v11], &unk_10026F520, &unk_1001F1160);
}

uint64_t sub_100157CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.readingDay.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.description.getter()
{
  v1 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = *(v0 + 16);
  if (v5 == 2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = ReadingHistory.Day.description.getter(*v0, *(v0 + 8), v5 & 1);
    v7 = v8;
  }

  *(v4 + 56) = &type metadata for String;
  v9 = sub_100084570();
  *(v4 + 64) = v9;
  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  v11 = 0xE300000000000000;
  if (v7)
  {
    v11 = v7;
  }

  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  sub_10009ADF0(v0 + *(v12 + 20), v3, &qword_10026F508, &qword_1001F1150);
  v13 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    sub_10008875C(v3, &qword_10026F508, &qword_1001F1150);
    v14 = (v4 + 72);
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v9;
LABEL_13:
    *v14 = 7104878;
    v17 = 0xE300000000000000;
    goto LABEL_14;
  }

  v15 = ReadingHistory.Streak.description.getter();
  v17 = v16;
  sub_100158988(v3, type metadata accessor for ReadingHistory.Streak);
  v14 = (v4 + 72);
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v9;
  if (!v17)
  {
    goto LABEL_13;
  }

  *v14 = v15;
LABEL_14:
  *(v4 + 80) = v17;
  return sub_1001C6048();
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1001588C0(v3, a1);
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_100158924(a1, v3);
}

uint64_t ReadingHistory.ModelSnapshot.description.getter()
{
  v1 = v0;
  v2 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1001F0CF0;
  v7 = *v0 == 0;
  if (*v0)
  {
    v8 = 0x7964616572;
  }

  else
  {
    v8 = 0x676E6964616F6CLL;
  }

  if (v7)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v5 + 56) = &type metadata for String;
  v10 = sub_100084570();
  v6[8] = v10;
  v6[4] = v8;
  v6[5] = v9;
  v11 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v12 = sub_1001578DC();
  v6[12] = &type metadata for String;
  v6[13] = v10;
  v6[9] = v12;
  v6[10] = v13;
  v14 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v6[17] = &type metadata for String;
  v6[18] = v10;
  v6[14] = v14;
  v6[15] = v15;
  sub_10009ADF0(&v1[*(v11 + 28)], v4, &unk_10026F520, &unk_1001F1160);
  v16 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
  {
    sub_10008875C(v4, &unk_10026F520, &unk_1001F1160);
    v17 = v6 + 19;
    v6[22] = &type metadata for String;
    v6[23] = v10;
LABEL_11:
    *v17 = 7104878;
    v20 = 0xE300000000000000;
    goto LABEL_12;
  }

  v18 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v20 = v19;
  sub_100158988(v4, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v17 = v6 + 19;
  v6[22] = &type metadata for String;
  v6[23] = v10;
  if (!v20)
  {
    goto LABEL_11;
  }

  *v17 = v18;
LABEL_12:
  v6[20] = v20;
  return sub_1001C6048();
}

BOOL _s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_100084528(&qword_100270580, &qword_1001F2BB8);
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v16 == 2)
  {
    return 0;
  }

  v17 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((v16 ^ v15) & 1) == 0)
  {
LABEL_8:
    v30 = v7;
    v18 = v12;
    v19 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
    v20 = *(v18 + 48);
    sub_10009ADF0(a1 + v19, v14, &qword_10026F508, &qword_1001F1150);
    sub_10009ADF0(a2 + v19, &v14[v20], &qword_10026F508, &qword_1001F1150);
    v21 = *(v5 + 48);
    if (v21(v14, 1, v4) == 1)
    {
      if (v21(&v14[v20], 1, v4) == 1)
      {
        sub_10008875C(v14, &qword_10026F508, &qword_1001F1150);
        return 1;
      }
    }

    else
    {
      sub_10009ADF0(v14, v10, &qword_10026F508, &qword_1001F1150);
      if (v21(&v14[v20], 1, v4) != 1)
      {
        v25 = v30;
        sub_100159420(&v14[v20], v30, type metadata accessor for ReadingHistory.Streak);
        if (sub_1001C4C68())
        {
          v26 = *(v4 + 20);
          v27 = *&v10[v26];
          v28 = *(v25 + v26);
          sub_100158988(v25, type metadata accessor for ReadingHistory.Streak);
          sub_100158988(v10, type metadata accessor for ReadingHistory.Streak);
          sub_10008875C(v14, &qword_10026F508, &qword_1001F1150);
          return v27 == v28;
        }

        sub_100158988(v25, type metadata accessor for ReadingHistory.Streak);
        sub_100158988(v10, type metadata accessor for ReadingHistory.Streak);
        v22 = &qword_10026F508;
        v23 = &qword_1001F1150;
        goto LABEL_15;
      }

      sub_100158988(v10, type metadata accessor for ReadingHistory.Streak);
    }

    v22 = &qword_100270580;
    v23 = &qword_1001F2BB8;
LABEL_15:
    sub_10008875C(v14, v22, v23);
    return 0;
  }

  return v17;
}

uint64_t sub_1001588C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s14bookdatastored14ReadingHistoryO13ModelSnapshotV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  __chkstk_darwin(v7 - 8);
  v51 = &v45 - v8;
  v53 = sub_100084528(&qword_1002733D8, &qword_1001F6C80);
  __chkstk_darwin(v53);
  v10 = &v45 - v9;
  v52 = type metadata accessor for ReadingHistoryModel(0);
  v11 = __chkstk_darwin(v52);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  if (*a1 != *a2)
  {
    return 0;
  }

  v46 = v4;
  v47 = v10;
  v45 = v6;
  v48 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v49 = a1;
  v22 = *(v48 + 20);
  v23 = *(v19 + 48);
  sub_10009ADF0(&a1[v22], v21, &unk_10026FC40, &qword_1001F0E90);
  v50 = a2;
  sub_10009ADF0(&a2[v22], &v21[v23], &unk_10026FC40, &qword_1001F0E90);
  v24 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v21, 2, v24);
  if (v26)
  {
    if (v26 == 1)
    {
      if (v25(&v21[v23], 2, v24) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v25(&v21[v23], 2, v24) == 2)
    {
LABEL_9:
      sub_10008875C(v21, &unk_10026FC40, &qword_1001F0E90);
      goto LABEL_10;
    }

LABEL_14:
    v37 = &qword_10026FAE8;
    v38 = &unk_1001F1940;
LABEL_15:
    v39 = v21;
LABEL_16:
    sub_10008875C(v39, v37, v38);
    return 0;
  }

  sub_10009ADF0(v21, v18, &unk_10026FC40, &qword_1001F0E90);
  if (v25(&v21[v23], 2, v24))
  {
    sub_100158988(v18, type metadata accessor for ReadingHistoryModel);
    goto LABEL_14;
  }

  sub_100159420(v18, v15, type metadata accessor for ReadingHistoryModel);
  sub_100159420(&v21[v23], v13, type metadata accessor for ReadingHistoryModel);
  sub_100159488(&qword_10026F460, &protocol conformance descriptor for ReadingHistoryModel);
  if (sub_1001C5C38())
  {
    sub_100158988(v13, type metadata accessor for ReadingHistoryModel);
    sub_100158988(v15, type metadata accessor for ReadingHistoryModel);
    v37 = &unk_10026FC40;
    v38 = &qword_1001F0E90;
    goto LABEL_15;
  }

  v41 = sub_1001C5C38();
  sub_100158988(v13, type metadata accessor for ReadingHistoryModel);
  sub_100158988(v15, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v21, &unk_10026FC40, &qword_1001F0E90);
  if (v41)
  {
    return 0;
  }

LABEL_10:
  v27 = v48;
  v28 = v49;
  v29 = v50;
  if (!_s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(&v49[*(v48 + 24)], &v50[*(v48 + 24)]))
  {
    return 0;
  }

  v30 = *(v27 + 28);
  v31 = *(v53 + 48);
  v32 = &v28[v30];
  v33 = v47;
  sub_10009ADF0(v32, v47, &unk_10026F520, &unk_1001F1160);
  sub_10009ADF0(&v29[v30], v33 + v31, &unk_10026F520, &unk_1001F1160);
  v34 = *(v54 + 48);
  v35 = v46;
  if (v34(v33, 1, v46) == 1)
  {
    if (v34(v33 + v31, 1, v35) == 1)
    {
      sub_10008875C(v33, &unk_10026F520, &unk_1001F1160);
      return 1;
    }

    goto LABEL_22;
  }

  v40 = v51;
  sub_10009ADF0(v33, v51, &unk_10026F520, &unk_1001F1160);
  if (v34(v33 + v31, 1, v35) == 1)
  {
    sub_100158988(v40, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
LABEL_22:
    v37 = &qword_1002733D8;
    v38 = &qword_1001F6C80;
    v39 = v33;
    goto LABEL_16;
  }

  v42 = v33 + v31;
  v43 = v45;
  sub_100159420(v42, v45, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v44 = _s14bookdatastored14ReadingHistoryO13ModelSnapshotV0D6ValuesV23__derived_struct_equalsySbAG_AGtFZ_0(v40, v43);
  sub_100158988(v43, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_100158988(v40, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_10008875C(v33, &unk_10026F520, &unk_1001F1160);
  return v44;
}

void sub_1001590F4(uint64_t a1)
{
  sub_1001591FC(319, &qword_1002732E8, type metadata accessor for ModelState.LoadedState);
  if (v1 <= 0x3F)
  {
    sub_1001591FC(319, &qword_100273300, type metadata accessor for ModelState.Source);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(319);
      if (v3 <= 0x3F)
      {
        sub_1001593CC(319, &unk_100273308, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001591FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ReadingHistoryModel(255);
    v7 = sub_100159488(&qword_1002732F0, &protocol conformance descriptor for ReadingHistoryModel);
    v8 = sub_100159488(&qword_1002732F8, &protocol conformance descriptor for ReadingHistoryModel);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1001592DC(uint64_t a1)
{
  sub_10015937C();
  if (v1 <= 0x3F)
  {
    sub_1001593CC(319, &qword_10026F708, type metadata accessor for ReadingHistory.Streak);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10015937C()
{
  if (!qword_1002733A8)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002733A8);
    }
  }
}

void sub_1001593CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001C67F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100159420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100159488(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MutableObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_10015C6B4(a1);
  (*(*(*(v1 + 264) - 8) + 8))(a1);
  return v3;
}

void *ObservableTransaction.__allocating_init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_10015C2D0(a1, a2, a3, v3, ObjectType);
}

uint64_t MutableObservableContainer.mutate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10015C6F0;
  *(v8 + 24) = v7;
  v11[4] = sub_1000B2E48;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000906F4;
  v11[3] = &unk_10024A178;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObservableContainer.Event.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v8 - 8) + 32))(a2, v5, v8);
  }

  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = *(v8 - 8);
  (*(v10 + 32))(a2, &v5[v9], v8);
  return (*(v10 + 8))(v5, v8);
}

uint64_t sub_1001598D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_10015B73C(a1, sub_10015D200, v6);
}

uint64_t sub_10015996C(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v2 = a1[1];
  v4 = *a1;
  v5[0] = v2;
  *(v5 + 10) = *(a1 + 26);
  return a2(&v4);
}

uint64_t ObservationToken.deinit()
{
  (*(v0 + 16))(v0);

  return v0;
}

uint64_t ObservationToken.__deallocating_deinit()
{
  (*(v0 + 16))(v0);

  return swift_deallocClassInstance();
}

uint64_t sub_100159A6C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v21 = type metadata accessor for ObservableContainer.Event(0, v8, *(v7 + 88), a4);
  v23 = *(v21 - 8);
  v9 = __chkstk_darwin(v21);
  v11 = &v21 - v10;
  v12 = *(v8 - 8);
  __chkstk_darwin(v9);
  v14 = &v21 - v13;
  v15 = *(v7 + 120);
  swift_beginAccess();
  v16 = *(v12 + 16);
  v16(v14, &v5[v15], v8);
  v22 = a1;
  v17 = sub_1001C5FD8();
  result = (*(v12 + 8))(v14, v8);
  if ((v17 & 1) == 0)
  {
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    v16(v11, v22, v8);
    v16(&v11[v19], &v5[v15], v8);
    v20 = v21;
    swift_storeEnumTagMultiPayload();
    sub_10015A394(v11);
    return (*(v23 + 8))(v11, v20);
  }

  return result;
}

uint64_t ObservableContainer.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ObservableContainer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(*v2 + 128);
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ObservableContainer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100159EF8;
}

void sub_100159EF8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObservableContainer.init(value:)(a1);
  return v2;
}

char *ObservableContainer.init(value:)(uint64_t a1)
{
  v2 = v1;
  v17 = *v1;
  v18 = a1;
  v16 = sub_1001C6668();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C6638();
  __chkstk_darwin(v6);
  v7 = sub_1001C5688();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v15[0] = "DataStoreService";
  v15[1] = v8;
  sub_1001C5668();
  v19 = _swiftEmptyArrayStorage;
  sub_10015D3DC(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v9 = *(v3 + 104);
  v10 = v16;
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 2) = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  *(v1 + 3) = sub_1001C66A8();
  v11 = *(v17 + 80);
  type metadata accessor for ObservableContainer.Event(255, v11, *(v17 + 88), v12);
  swift_getFunctionTypeMetadata1();
  *(v2 + 4) = sub_1001C5EC8();
  v13 = &v2[*(*v2 + 128)];
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v13 + 1) = 0;
  swift_unknownObjectWeakAssign();
  (*(*(v11 - 8) + 32))(&v2[*(*v2 + 120)], v18, v11);
  return v2;
}

uint64_t sub_10015A394(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = sub_1001C5688();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(v2 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v33 = v1[3];
  sub_1001C5638();
  v39 = MarkedAsFinishedMechanism.rawValue.getter;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1000DD4AC;
  v38 = &unk_10024A4B0;
  v15 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v15);
  v16 = *(v5 + 8);
  v29 = v5 + 8;
  v32 = v16;
  v16(v7, v4);
  v17 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v17;
  v17(v11, v8);
  swift_beginAccess();
  v18 = v1[4];
  v20 = *(v3 + 80);
  v19 = *(v3 + 88);
  type metadata accessor for ObservableContainer.Event(255, v20, v19, v21);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  aBlock = v18;
  __chkstk_darwin(FunctionTypeMetadata1);
  v28 = v4;
  *(&v27 - 4) = v20;
  *(&v27 - 3) = v19;
  *(&v27 - 2) = v34;
  sub_1001C5F58();
  v34 = v8;

  swift_getWitnessTable();
  sub_1001C6238();

  sub_1001C5638();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = v23;
  v39 = sub_10015D1F4;
  v40 = v24;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1000DD4AC;
  v38 = &unk_10024A500;
  v25 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v25);
  v32(v7, v28);
  v31(v11, v34);
}

uint64_t _s14bookdatastored19ObservableContainerC11addObserver_8callbackyyXl_yAC5EventOyx_GctF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10015D29C;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_10024A708;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A9E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v54 = a2;
  v5 = *a1;
  v49 = sub_1001C5688();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001C5648();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v5[10];
  v53 = v5[11];
  v11 = type metadata accessor for ObservableContainer.Event(0, v9, v53, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  v18 = v5[15];
  swift_beginAccess();
  v19 = *(*(v9 - 8) + 16);
  v52 = v9;
  v19(v17, &a1[v18], v9);
  swift_storeEnumTagMultiPayload();
  v20 = &a1[*(*a1 + 128)];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(a1, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  v42[1] = *(a1 + 3);
  sub_1001C5638();
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, v17, v11);
  v24 = *(v12 + 80);
  v43 = v12;
  v44 = v17;
  v25 = (v24 + 48) & ~v24;
  v26 = v8;
  v27 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 2) = v52;
  *(v28 + 3) = v29;
  v30 = v51;
  *(v28 + 4) = v54;
  *(v28 + 5) = v30;
  v31 = *(v12 + 32);
  v32 = v11;
  v31(&v28[v25], v15, v11);
  *&v28[v27] = v23;
  aBlock[4] = sub_10015D2A8;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024A758;
  v33 = _Block_copy(aBlock);

  v34 = v47;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v33);
  (*(v48 + 8))(v34, v49);
  (*(v45 + 8))(v26, v46);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v50;
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v39 = v53;
  v38[2] = v52;
  v38[3] = v39;
  v38[4] = v35;
  v38[5] = v36;
  v40 = v54;
  v38[6] = v37;
  v38[7] = v40;
  v38[8] = v30;
  v56 = sub_10015D35C;
  v57 = v38;
  v55 = v37;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1001C5F68();

  sub_1001C5F78();
  swift_endAccess();
  (*(v43 + 8))(v44, v32);
}

uint64_t sub_10015B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v39 = a6;
  v36 = a4;
  v37 = a1;
  v10 = sub_1001C5648();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001C5688();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ObservableContainer.Event(0, a7, a8, v16);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v36 = *(v22 + 24);
      (*(v18 + 16))(v20, v37, v17);
      v23 = *(v18 + 80);
      v37 = v22;
      v24 = (v23 + 48) & ~v23;
      v25 = swift_allocObject();
      *(v25 + 2) = a7;
      *(v25 + 3) = a8;
      v26 = v39;
      *(v25 + 4) = v38;
      *(v25 + 5) = v26;
      (*(v18 + 32))(&v25[v24], v20, v17);
      aBlock[4] = sub_10015D370;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_10024A7F8;
      v27 = _Block_copy(aBlock);

      sub_1001C5668();
      v45 = _swiftEmptyArrayStorage;
      sub_10015D3DC(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      v28 = v43;
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v27);
      (*(v42 + 8))(v12, v28);
      (*(v40 + 8))(v15, v41);
    }

    else
    {
      v29 = sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1001F0670;
      v31 = v36;
      aBlock[0] = v36;
      v32 = sub_1001C6078();
      v34 = v33;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100084570();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v35 = sub_1001C67D8();
      sub_1001C5118(v29, &_mh_execute_header, v35, "Observer with oid=%@ is gone", 28, 2, v30);

      aBlock[6] = v31;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1001C5F68();
      sub_1001C5F28();
      swift_endAccess();

      return sub_1000044D8(v45, v46);
    }
  }

  return result;
}

uint64_t ObservableContainer.observe(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = *(v5 + 88);
  v7[4] = v6;
  type metadata accessor for ObservationToken();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10015C748;
  *(v8 + 24) = v7;

  _s14bookdatastored19ObservableContainerC11addObserver_8callbackyyXl_yAC5EventOyx_GctF_0(v9, a1, a2);

  return v8;
}

uint64_t sub_10015B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    type metadata accessor for ObservableContainer.Event(255, a3, a4, v7);
    swift_getFunctionTypeMetadata1();
    sub_1001C5F68();
    sub_1001C5F28();
    swift_endAccess();

    return sub_1000044D8(v8, v9);
  }

  return result;
}

uint64_t sub_10015B73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000B35B8;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_10024A5A0;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ObservableContainer.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10015C778;
  *(v5 + 24) = v4;
  v8[4] = sub_1000B3DA0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000906F4;
  v8[3] = &unk_10024A240;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015BA24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  type metadata accessor for ObservableContainer.Event(255, *(v2 + 80), *(v2 + 88), v3);
  swift_getFunctionTypeMetadata1();
  sub_1001C5F68();
  sub_1001C5F28();
  swift_endAccess();
  return sub_1000044D8(v5, v6);
}

id *ObservableContainer.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 15));
  sub_1000CEB00(v0 + *(*v0 + 16));
  return v0;
}

uint64_t sub_10015BBAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 120);
  swift_beginAccess();
  return (*(*(*(v4 + 264) - 8) + 16))(a2, &a1[v5]);
}

uint64_t sub_10015BC60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  sub_10015C8EC(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t MutableObservableContainer.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_10015C5F4(a1);
  (*(*(*(v3 + 264) - 8) + 8))(a1);
  return v4;
}

uint64_t _s14bookdatastored19ObservableContainerCfD_0()
{
  ObservableContainer.deinit();

  return swift_deallocClassInstance();
}

void *ObservableTransaction.init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_10015C33C(a1, a2, a3, v3);
}

void sub_10015BED4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v6 = [*(a1 + 48) createTransactionWithName:sub_1001C60A8() + 32];

    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    oslog = sub_1001C5128();
    v8 = sub_1001C6578();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1001874E8(a2, a3, &v12);
      _os_log_impl(&_mh_execute_header, oslog, v8, "[Transaction]: Created transaction %s", v9, 0xCu);
      sub_10008E7BC(v10);
    }

    else
    {
    }
  }
}

void sub_10015C068(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;

  oslog = sub_1001C5128();
  v6 = sub_1001C6578();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1001874E8(a2, a3, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, "[Transaction]: Ended transaction %s", v7, 0xCu);
    sub_10008E7BC(v8);
  }
}

uint64_t ObservableTransaction.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14bookdatastored21ObservableTransaction_logger;
  v2 = sub_1001C5148();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableTransaction.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14bookdatastored21ObservableTransaction_logger;
  v2 = sub_1001C5148();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_10015C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ObservableTransaction(0);
  v8 = swift_allocObject();

  return sub_10015C33C(a1, a2, a3, v8);
}

void *sub_10015C33C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v5 = sub_1001C6638();
  __chkstk_darwin(v5);
  v6 = sub_1001C5688();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1001C6668();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v13[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  sub_1001C5668();
  v17 = _swiftEmptyArrayStorage;
  sub_10015D3DC(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  a4[5] = sub_1001C66A8();
  sub_1001C5138();
  v11 = v15;
  a4[2] = v14;
  a4[3] = v11;
  a4[6] = v16;
  return a4;
}

uint64_t sub_10015C5F4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2);
  ObservableContainer.init(value:)(v3);
  return v1;
}

uint64_t sub_10015C6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s14bookdatastored21ObservableTransactionC26observableCallbacksWillRun6targetyyXl_tF_0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10015D290;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_10024A690;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015C8EC(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13[-v5];
  v8 = *(v7 + 120);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_100159A6C(v6, v9, v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s14bookdatastored21ObservableTransactionC25observableCallbacksDidRun6targetyyXl_tF_0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10015D244;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_10024A618;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015CBB4(uint64_t a1)
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

uint64_t sub_10015CC88(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_10015CD1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_10015CE6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata accessor for ObservableTransaction(uint64_t a1)
{
  result = qword_100273638;
  if (!qword_100273638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015D100(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_10015D200(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  return v2(&v5);
}

uint64_t sub_10015D250()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10015D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ObservableContainer.Event(0, v4[2], v4[3], a4) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(v4 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AC5A0(v7, v8, v4 + v6, v9);
}

uint64_t sub_10015D3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10015D470(uint64_t a1)
{
  v2 = v1;
  v43[0] = sub_1001C4B28();
  v3 = *(v43[0] - 1);
  v4 = __chkstk_darwin(v43[0]);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v43 - v7;
  v9 = [objc_opt_self() defaultManager];
  _s11PersistenceVMa(0);
  _s15PersistentStateOMa(0);
  sub_10015F270(&qword_1002714A8, _s15PersistentStateOMa, &unk_1001F4B58);
  v10 = sub_1001C4808();
  v12 = v11;
  sub_1001C4AB8();
  sub_1001C4A88(v13);
  v15 = v14;
  v44 = 0;
  v16 = [v9 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v44];

  if (v16)
  {
    v17 = v44;
    sub_1001C4BB8();
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v33 = sub_1001C5148();
    sub_100083274(v33, qword_100281898);
    sub_10009AD9C(v10, v12);
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    if (!os_log_type_enabled(v34, v35))
    {

      sub_1000887D0(v10, v12);
LABEL_23:
      sub_1000887D0(v10, v12);
      return (*(v3 + 8))(v8, v43[0]);
    }

    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v37 != 2)
      {
        v38 = 0;
        goto LABEL_22;
      }

      v40 = *(v10 + 16);
      v39 = *(v10 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (!v41)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v37)
    {
      v38 = BYTE6(v12);
LABEL_22:
      *(v36 + 4) = v38;
      v42 = v36;
      sub_1000887D0(v10, v12);
      _os_log_impl(&_mh_execute_header, v34, v35, "[Persistence] Saved (%ld bytes)", v42, 0xCu);

      goto LABEL_23;
    }

    LODWORD(v38) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
    }

    v38 = v38;
    goto LABEL_22;
  }

  v18 = v44;
  sub_1001C4A28();

  swift_willThrow();
  sub_1000887D0(v10, v12);
  v19 = v8;
  v20 = v43[0];
  (*(v3 + 8))(v19, v43[0]);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v21 = sub_1001C5148();
  sub_100083274(v21, qword_100281898);
  (*(v3 + 16))(v6, v2, v20);
  swift_errorRetain();
  v22 = sub_1001C5128();
  v23 = sub_1001C6598();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v44 = v43[0];
    *v25 = 136315394;
    sub_10015F270(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v27 = sub_1001C6CC8();
    v29 = v28;
    (*(v3 + 8))(v6, v24);
    v30 = sub_1001874E8(v27, v29, &v44);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v31;
    *v26 = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "[Persistence] Failed to store to url '%s', error: %@", v25, 0x16u);
    sub_1001279FC(v26);

    sub_10008E7BC(v43[0]);
  }

  else
  {

    return (*(v3 + 8))(v6, v20);
  }
}

uint64_t sub_10015DA94@<X0>(void *a1@<X8>)
{
  v2 = sub_1001C4B28();
  __chkstk_darwin(v2);
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_10015EB10();
  if (v4 > 100000)
  {
    v5 = v4;
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v6 = sub_1001C5148();
    sub_100083274(v6, qword_100281898);
    v7 = sub_1001C5128();
    v8 = sub_1001C6598();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v5;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 100000;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Persistence] Refusing to decode data from large file (%ld > %ld)", v9, 0x16u);
    }

    v10 = _s15PersistentStateOMa(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a1;
    v14 = 1;
    goto LABEL_7;
  }

  v16 = sub_1001C4B48();
  v18 = v17;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v19 = a1;
  v20 = sub_1001C5148();
  sub_100083274(v20, qword_100281898);
  sub_10009AD9C(v16, v18);
  v21 = sub_1001C5128();
  v22 = sub_1001C65B8();
  if (os_log_type_enabled(v21, v22))
  {
    v30 = v22;
    result = swift_slowAlloc();
    v23 = result;
    *result = 134217984;
    v24 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v25 = 0;
        goto LABEL_24;
      }

      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (!v28)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v25 = BYTE6(v18);
LABEL_24:
      *(result + 4) = v25;
      sub_1000887D0(v16, v18);
      _os_log_impl(&_mh_execute_header, v21, v30, "[Persistence] Loaded %ld bytes", v23, 0xCu);

      goto LABEL_25;
    }

    LODWORD(v25) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
      return result;
    }

    v25 = v25;
    goto LABEL_24;
  }

  sub_1000887D0(v16, v18);
LABEL_25:

  _s11PersistenceVMa(0);
  v29 = _s15PersistentStateOMa(0);
  sub_10015F270(&qword_100273708, _s15PersistentStateOMa, &unk_1001F4B80);
  sub_1001C4768();
  sub_1000887D0(v16, v18);

  v11 = *(*(v29 - 8) + 56);
  v13 = v19;
  v14 = 0;
  v12 = v29;
LABEL_7:

  return v11(v13, v14, 1, v12);
}

void sub_10015E17C()
{
  v1 = v0;
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v7);
  v9 = v8;
  v29 = 0;
  v10 = [v6 removeItemAtURL:v8 error:&v29];

  if (!v10)
  {
    v17 = v29;
    sub_1001C4A28();

    swift_willThrow();
    swift_getErrorValue();
    if (!sub_10015EF08(v28[2], v28[3]))
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v18 = sub_1001C5148();
      sub_100083274(v18, qword_100281898);
      (*(v3 + 16))(v5, v1, v2);
      swift_errorRetain();
      v19 = sub_1001C5128();
      v20 = sub_1001C6598();

      if (!os_log_type_enabled(v19, v20))
      {

        (*(v3 + 8))(v5, v2);
        return;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v29 = v28[0];
      *v21 = 136315394;
      sub_10015F270(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = sub_1001C6CC8();
      v25 = v24;
      (*(v3 + 8))(v5, v2);
      v26 = sub_1001874E8(v23, v25, &v29);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2112;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      *v22 = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Persistence] Failed to reset url '%s', error: %@", v21, 0x16u);
      sub_1001279FC(v22);

      sub_10008E7BC(v28[0]);
    }

    return;
  }

  v11 = qword_10026EBB8;
  v12 = v29;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_1001C5148();
  sub_100083274(v13, qword_100281898);
  v14 = sub_1001C5128();
  v15 = sub_1001C65B8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Persistence] Deleted", v16, 2u);
  }
}

uint64_t sub_10015E5DC@<X0>(char *a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C47C8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v44 = a1;
  if ((sub_1001C4A48() & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v40 = v7;
  v41 = v6;
  v42 = a3;
  sub_1001C4828();
  swift_allocObject();
  v16 = sub_1001C4818();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v17 = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001F0660;
  sub_1001C4798();
  sub_1001C47B8();
  v45[0] = v18;
  sub_10015F270(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_10015F2B8();
  sub_1001C68C8();
  v19 = sub_1001C47D8();
  sub_10010C034(v15, v13);
  v20 = *(v10 + 8);
  v20(v13, v9);
  v20(v15, v9);
  v19(v45, 0);
  if (v17)
  {
    sub_1001C47A8();
    v21 = sub_1001C47D8();
    sub_10010C034(v15, v13);
    v20(v13, v9);
    v20(v15, v9);
    v21(v45, 0);
  }

  sub_1001C4788();
  swift_allocObject();
  v22 = sub_1001C4778();
  v7 = v40;
  v6 = v41;
  a2 = *(v40 + 16);
  v23 = v42;
  v15 = v44;
  a2(v42, v44, v41);
  v24 = _s11PersistenceVMa(0);
  *(v23 + *(v24 + 20)) = v16;
  *(v23 + *(v24 + 24)) = v22;
  if (qword_10026EBB8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = sub_1001C5148();
  sub_100083274(v25, qword_100281898);
  v26 = v43;
  a2(v43, v15, v6);
  v27 = sub_1001C5128();
  v28 = sub_1001C6578();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45[0] = v30;
    *v29 = 136315138;
    v31 = sub_1001C4A58();
    v32 = v26;
    v34 = v33;
    v35 = *(v7 + 8);
    v35(v32, v6);
    v36 = sub_1001874E8(v31, v34, v45);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "[Persistence] URL: '%s'", v29, 0xCu);
    sub_10008E7BC(v30);

    return (v35)(v15, v6);
  }

  else
  {

    v38 = *(v7 + 8);
    v38(v15, v6);
    return (v38)(v26, v6);
  }
}

uint64_t sub_10015EB10()
{
  sub_1001C4AE8(0);
  v1 = sub_1001C5FE8();

  v26[0] = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:v26];

  v3 = v26[0];
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10015F270(&qword_10026F020, type metadata accessor for FileAttributeKey, &unk_1001F0BF8);
    v4 = sub_1001C5F08();
    v5 = v3;

    if (*(v4 + 16) && (v6 = sub_100187C04(NSFileSize), (v7 & 1) != 0))
    {
      sub_10008EBD0(*(v4 + 56) + 32 * v6, v27);

      sub_10008EBD0(v27, v26);
      sub_10015F224();
      if (swift_dynamicCast())
      {
        v8 = sub_1001C6438();

        sub_10008E7BC(v27);
        return v8;
      }

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v15 = sub_1001C5148();
      sub_100083274(v15, qword_100281898);
      sub_10008EBD0(v27, v26);
      v16 = sub_1001C5128();
      v17 = sub_1001C6598();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136446210;
        sub_10008EBD0(v26, v24);
        v20 = sub_1001C6078();
        v22 = v21;
        sub_10008E7BC(v26);
        v23 = sub_1001874E8(v20, v22, &v25);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "[Persistence] Unable to convert reported file size: %{public}s to NSNumber", v18, 0xCu);
        sub_10008E7BC(v19);
      }

      else
      {

        sub_10008E7BC(v26);
      }

      sub_10008E7BC(v27);
    }

    else
    {

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v10 = sub_1001C5148();
      sub_100083274(v10, qword_100281898);
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "[Persistence] No file size was returned", v13, 2u);
      }
    }

    return 0;
  }

  else
  {
    v14 = v26[0];
    sub_1001C4A28();

    return swift_willThrow();
  }
}

BOOL sub_10015EF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = *(v5 + 16);
  v11(&v25 - v9, v3, a1);
  if (sub_1001C6CE8())
  {
    (*(v5 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v12, v10, a1);
  }

  v13 = sub_1001C4A18();

  v14 = [v13 domain];

  v15 = sub_1001C6018();
  v17 = v16;

  v11(v8, v3, a1);
  if (sub_1001C6CE8())
  {
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v18, v8, a1);
  }

  v19 = sub_1001C4A18();

  v20 = [v19 code];

  if (v15 == sub_1001C6018() && v17 == v21)
  {

    return (v20 & 0xFFFFFFFFFFFFFEFFLL) == 4;
  }

  v23 = sub_1001C6D08();

  result = 0;
  if (v23)
  {
    return (v20 & 0xFFFFFFFFFFFFFEFFLL) == 4;
  }

  return result;
}

uint64_t _s11PersistenceVMa(uint64_t a1)
{
  result = qword_100273768;
  if (!qword_100273768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10015F224()
{
  result = qword_1002712A0;
  if (!qword_1002712A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002712A0);
  }

  return result;
}

uint64_t sub_10015F270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10015F2B8()
{
  result = qword_1002712F0;
  if (!qword_1002712F0)
  {
    sub_1000885AC(&qword_1002712E8, &qword_1001F3A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712F0);
  }

  return result;
}

uint64_t sub_10015F344(uint64_t a1)
{
  result = sub_1001C4B28();
  if (v2 <= 0x3F)
  {
    result = sub_1001C4828();
    if (v3 <= 0x3F)
    {
      result = sub_1001C4788();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_10015F460(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10015F48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10015F4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015F540()
{
  result = qword_1002737A8;
  if (!qword_1002737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737A8);
  }

  return result;
}

unint64_t sub_10015F598()
{
  result = qword_1002737B0;
  if (!qword_1002737B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737B0);
  }

  return result;
}

unint64_t sub_10015F5F0()
{
  result = qword_1002737B8;
  if (!qword_1002737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737B8);
  }

  return result;
}

unint64_t sub_10015F648()
{
  result = qword_1002737C0;
  if (!qword_1002737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002737C0);
  }

  return result;
}

unint64_t sub_10015F69C()
{
  result = qword_1002737C8[0];
  if (!qword_1002737C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002737C8);
  }

  return result;
}

void sub_10015F710()
{
  v1 = v0;
  v2 = sub_1001C5BD8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_1002739F0, &qword_1001F7680);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = *(*v0 + 168);
  if (*(v0 + v13))
  {

    v14 = sub_1001C5128();
    v15 = sub_1001C65B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34[0] = v17;
      *v16 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v18 = 0x657463656E6E6F63;
      }

      else
      {
        v18 = 0x697463656E6E6F63;
      }

      if (*(v1 + *(*v1 + 176)))
      {
        v19 = 0xE900000000000064;
      }

      else
      {
        v19 = 0xEA0000000000676ELL;
      }

      v20 = sub_1001874E8(v18, v19, v34);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "CRDTModelFileSyncTransport reconnect: Already %s", v16, 0xCu);
      sub_10008E7BC(v17);
    }

    if (*(v1 + v13))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = v3;
    v33 = v2;
    v21 = sub_1001C5128();
    v22 = sub_1001C65B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v23, 2u);
    }

    v24 = sub_100084528(&qword_1002739F8, &qword_1001F7688);
    v30 = v1[4];
    v31 = v24;
    v25 = *(*v1 + 128);
    v26 = sub_100084528(&unk_100270A30, &qword_1001F3490);
    v27 = *(v26 - 8);
    (*(v27 + 16))(v12, v1 + v25, v26);
    (*(v27 + 56))(v12, 0, 1, v26);
    (*(v7 + 16))(v9, v1 + *(*v1 + 136), v6);
    (*(v32 + 104))(v5, enum case for CRCodableVersion.version3(_:), v33);
    v28 = v30;
    *(v1 + v13) = sub_1001C5C28();

    sub_1001C5BE8();
    v34[0] = sub_1001C5C08();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_100084528(&qword_100273A00, &unk_1001F7690);
    sub_1000885F4(&qword_100273A08, &qword_100273A00, &unk_1001F7690, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1001C51A8();

    swift_beginAccess();
    sub_1001C5168();
    swift_endAccess();
  }
}

uint64_t sub_10015FD0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v5);
  v9 = v23 - v8 + 16;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v4 + 16))(v9, Strong + *(*Strong + 192), v3);

      swift_errorRetain();
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = sub_1001C6D98();
        v17 = sub_1001874E8(v15, v16, v23);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "CRDTModelFileSyncTransport sink: error: %s", v13, 0xCu);
        sub_10008E7BC(v14);
      }

      (*(v4 + 8))(v9, v3);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100160060();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v4 + 16))(v7, result + *(*result + 192), v3);

      v19 = sub_1001C5128();
      v20 = sub_1001C65B8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelFileSyncTransport sink: finished", v21, 2u);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_100160060()
{
  v1 = sub_1001C5648();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001C5688();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + *(*v0 + 152));
  aBlock[4] = sub_1000CEA24;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024AD70;
  v8 = _Block_copy(aBlock);

  sub_1001C5668();
  v12 = _swiftEmptyArrayStorage;
  sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_100160328(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + *(*Strong + 192), v3);

    v8 = sub_1001C5128();
    v9 = sub_1001C6588();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport sink: receiveValue", v10, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001604FC(a1);
  }

  return result;
}

uint64_t sub_1001604FC(uint64_t a1)
{
  v3 = sub_1001C5648();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5688();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v17[1] = *(v1 + *(*v1 + 152));
  (*(v10 + 16))(v17 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_10016A008;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024AD48;
  v15 = _Block_copy(aBlock);

  sub_1001C5668();
  v21 = _swiftEmptyArrayStorage;
  sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void sub_1001608B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 176);
  if ((*(v1 + v4) & 1) == 0)
  {
    if (*(v1 + *(*v1 + 168)))
    {
      *(v1 + v4) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_1000CB7EC(Strong);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = sub_1001C5128();
      v7 = sub_1001C6598();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelFileSyncTransport: got disconnected before load complete", v8, 2u);
      }
    }
  }

  v9 = v2 + *(*v2 + 144);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);

    sub_1000044D8(v10, v11);
  }
}

uint64_t sub_100160A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = sub_1001C5648();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  if (*(v3 + *(*v3 + 168)))
  {

    sub_1001C5BF8();
  }

  else
  {
    v23[1] = *(v3 + *(*v3 + 152));
    (*(v13 + 16))(v16, a1, v12);
    v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    (*(v13 + 32))(v19 + v18, v16, v12);
    v20 = (v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
    v21 = v28;
    *v20 = v27;
    v20[1] = v21;
    aBlock[4] = sub_100169F20;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_10024ACD0;
    v22 = _Block_copy(aBlock);

    sub_1001C5668();
    v29 = _swiftEmptyArrayStorage;
    sub_10016A258(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v22);
    (*(v26 + 8))(v8, v6);
    (*(v24 + 8))(v11, v25);
  }
}

uint64_t sub_100160F4C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_100160FC0(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 80) = a1;
  return result;
}

uint64_t CRDTModelFileSyncManager.enableCloudSync.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_1001610E8()
{
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  return v1;
}

uint64_t CRDTModelFileSyncManager.observable.getter()
{
  v1 = type metadata accessor for ModelState(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v1, WitnessTable, v3);
  sub_1001C6688();
  return v5;
}

uint64_t sub_100161234(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  sub_1001C5638();
  v10 = v7;
  v11 = a1;
  v12 = 0;
  sub_1001C6678();
  return (*(v4 + 8))(v6, v3);
}

void *CRDTModelFileSyncManager.__allocating_init(clientName:groupContext:transactionProvider:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_100169580(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

uint64_t CRDTModelFileSyncManager.modelSyncVersionObservable.getter()
{
  sub_100084528(&unk_100270A20, &unk_1001F3480);
  sub_1001C6688();
  return v1;
}

uint64_t CRDTModelFileSyncManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v15 = v4;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_100084528(&unk_100270A90, &qword_1001F34D8);
  sub_1001C6678();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1001615D8()
{
  v1 = v0;
  v2 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1001C69C8(45);
  v5 = ReadingHistoryModel.description.getter();
  v7 = v6;

  v17 = v5;
  v18 = v7;
  v19._countAndFlagsBits = 0x646564616F6C202CLL;
  v19._object = 0xE90000000000003DLL;
  sub_1001C6138(v19);
  v8 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  if (*(v1 + *(v8 + 44)))
  {
    v9._countAndFlagsBits = 0x7964616572;
  }

  else
  {
    v9._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  if (*(v1 + *(v8 + 44)))
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v9._object = v10;
  sub_1001C6138(v9);

  v20._countAndFlagsBits = 0x6F537473616C202CLL;
  v20._object = 0xED00003D65637275;
  sub_1001C6138(v20);
  v21._countAndFlagsBits = sub_1001578DC();
  sub_1001C6138(v21);

  v22._countAndFlagsBits = 0x697369766572202CLL;
  v22._object = 0xEF3D6F666E496E6FLL;
  sub_1001C6138(v22);
  sub_10009ADF0(v1 + *(v8 + 52), v4, &unk_10026F410, &unk_1001F0E40);
  v11 = type metadata accessor for CRDTModelRevisionInfo(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {
    sub_10008875C(v4, &unk_10026F410, &unk_1001F0E40);
    v12 = 0xE300000000000000;
    v13._countAndFlagsBits = 7104878;
  }

  else
  {
    v14 = CRDTModelRevisionInfo.description.getter();
    v12 = v15;
    sub_10016A0CC(v4, type metadata accessor for CRDTModelRevisionInfo);
    v13._countAndFlagsBits = v14;
  }

  v13._object = v12;
  sub_1001C6138(v13);

  return v17;
}

uint64_t CRDTModelFileSyncInfo.additionalFields.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CRDTModelFileSyncInfo.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1001C5B38();
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  result = type metadata accessor for CRDTModelFileSyncInfo(0, v11);
  *(a5 + *(result + 52)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t CRDTModelFileSyncInfo.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1001C5B38();
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  *(a6 + *(type metadata accessor for CRDTModelFileSyncInfo(0, v13) + 52)) = &_swiftEmptyDictionarySingleton;
  return (*(*(a2 - 8) + 40))(a6, a1, a2);
}

uint64_t sub_100161A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return static CRStruct_1.fieldKeys.getter(a1, WitnessTable);
}

uint64_t sub_100161AC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRType.context.getter(a1, WitnessTable);
}

uint64_t sub_100161B14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.newRefs(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100161B74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.actionUndoingDifference(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100161BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.apply(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100161C3C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1001C5818();
}

uint64_t sub_100161C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.delta(_:from:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100161D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.canMerge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100161D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.merge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100161DD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100161E40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100161EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100161F24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.visitReferences(_:)(a1, a2, WitnessTable);
}

BOOL sub_100161F84(uint64_t a1)
{
  swift_getWitnessTable();

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_100161FD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100162038(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1001C57C8();
}

uint64_t sub_1001620A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.merge(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001621E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10016230C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_1.minEncodingVersion.getter(a1, WitnessTable);
}

uint64_t static CRDTModelFileSyncInfo.modelName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))();
  v6._countAndFlagsBits = 0x666E49636E79532DLL;
  v6._object = 0xE90000000000006FLL;
  sub_1001C6138(v6);
  return v5;
}

uint64_t CRDTModelFileSyncManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() books];
  v5 = [v4 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v3, v0);
}

void (*CRDTModelFileSyncManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100122ED8;
}

uint64_t sub_1001625D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*v1 + 88), *(*v1 + 96));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

BOOL sub_100162728()
{
  v1 = type metadata accessor for ModelState(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;

  MutableObservableContainer.value.getter();

  v5 = v4[*(v1 + 44)];
  (*(v2 + 8))(v4, v1);
  return static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v5, 1);
}

uint64_t sub_100162878@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;

  sub_1001C6688();

  sub_10016A1E0(v5, a2, type metadata accessor for ReadingHistoryModel);
  return sub_10008875C(v5, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_100162990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for ModelState(0, v3, *(*a1 + 88), *(*a1 + 96));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a2, v7, v3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100162B40()
{
  type metadata accessor for CRDTModelSyncVersion(0);

  sub_1001C6688();
}

uint64_t (*CRDTModelFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1000CE390() & 1;
  return sub_100162C58;
}

uint64_t sub_100162CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = a5(a1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100162D08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162D68(a1);
  }

  return result;
}

uint64_t sub_100162D68(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v9 = v1;
  v10 = a1;
  sub_1001C6678();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100162E74(char *a1)
{
  v2 = v1;
  v3.isa = v1->isa;
  v141 = a1;
  isa = v3.isa;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v4 - 8);
  v130 = v109 - v5;
  v138 = *(v3.isa + 5);
  v6 = *(v3.isa + 12);
  v7 = v138;
  v132 = type metadata accessor for ModelState(0, v138, *(&v138 + 1), v6);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = v109 - v8;
  v127 = *(&v7 + 1);
  v123 = type metadata accessor for ModelState.Source(0, v7, *(&v7 + 1), v6);
  v122 = *(v123 - 8);
  v9 = __chkstk_darwin(v123);
  v126 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v121 = v109 - v12;
  v140 = v7;
  v139 = *(v7 - 8);
  v13 = __chkstk_darwin(v11);
  v125 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v109 - v15;
  v119 = sub_1001C5AC8();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v6;
  *&v17 = v6;
  *(&v17 + 1) = *(v3.isa + 13);
  v144[1] = v17;
  v144[0] = v138;
  v18 = type metadata accessor for CRDTModelFileSyncInfo(255, v144);
  swift_getWitnessTable();
  v19 = sub_1001C5D68();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v109 - v22;
  v24 = *(v18 - 8);
  v25 = __chkstk_darwin(v21);
  v112 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v133 = v109 - v28;
  v29 = __chkstk_darwin(v27);
  v115 = v109 - v30;
  v31 = __chkstk_darwin(v29);
  v134 = v109 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v109 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = v109 - v37;
  __chkstk_darwin(v36);
  v40 = v109 - v39;
  v41 = *(isa + 24);
  swift_beginAccess();
  v42 = *(v20 + 16);
  v135 = v41;
  v114 = v20 + 16;
  v113 = v42;
  v42(v23, v41 + v2, v19);
  sub_1001C5D38();
  v43 = *(v20 + 8);
  v117 = v23;
  v120 = v20 + 8;
  v43(v23, v19);
  sub_1001C5D38();
  v137 = sub_100162728();
  swift_getWitnessTable();
  v44 = sub_1001C5818();
  isa = v24;
  v45 = *(v24 + 2);
  if (v44)
  {
    *&v138 = v38;
    v45(v35, v38, v18);
    v124 = v40;
    v45(v134, v40, v18);
    v46 = sub_1001C5128();
    v47 = sub_1001C65B8();
    v48 = os_log_type_enabled(v46, v47);
    v111 = v18;
    v110 = v43;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v143 = v141;
      *v49 = 136315394;
      v112 = *(v18 + 16);
      v109[1] = *(v18 + 32);
      LODWORD(v133) = v47;
      v50 = sub_1001C6CC8();
      v52 = v51;
      v53 = *(isa + 1);
      v53(v35, v18);
      v54 = sub_1001874E8(v50, v52, &v143);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v55 = v134;
      v56 = sub_1001C6CC8();
      v58 = v57;
      v53(v55, v18);
      v59 = v53;
      v60 = sub_1001874E8(v56, v58, &v143);

      *(v49 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v46, v133, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v59 = *(isa + 1);
      v59(v134, v18);
      v61 = (v59)(v35, v18);
    }

    v79 = v136;
    __chkstk_darwin(v61);
    v80 = v138;
    v109[-2] = v138;
    swift_beginAccess();
    v81 = v116;
    v82 = v119;
    sub_1001C5D48();
    swift_endAccess();
    (*(v118 + 8))(v81, v82);
    v83 = v139;
    v84 = *(v139 + 16);
    v85 = v80;
    v86 = v140;
    v84(v79, v85, v140);
    if (sub_100162728())
    {
      v87 = v121;
      v84(v121, v79, v86);
      v88 = 0;
    }

    else
    {
      v88 = 2;
      v87 = v121;
    }

    (*(v83 + 56))(v87, v88, 2, v86);
    v97 = v117;
    v113(v117, &v135[v2], v19);
    v98 = v115;
    v135 = v2;
    v99 = v87;
    sub_1001C5D38();
    v110(v97, v19);
    v100 = v125;
    v84(v125, v98, v86);
    v65 = v111;
    v141 = v59;
    v59(v98, v111);
    v101 = v122;
    v102 = v126;
    v103 = v123;
    (*(v122 + 16))(v126, v87, v123);
    v104 = type metadata accessor for CRDTModelRevisionInfo(0);
    v105 = v130;
    (*(*(v104 - 8) + 56))(v130, 1, 1, v104);
    v106 = v129;
    ModelState.init(model:loaded:source:revisionInfo:)(v100, 1, v102, v105, v86, v127, v128, v129);
    sub_100164144(v106, 0x656C646E61685F71, 0xE800000000000000);
    (*(v131 + 8))(v106, v132);
    sub_100164580();
    (*(v101 + 8))(v99, v103);
    (*(v83 + 8))(v136, v86);
    if (v137)
    {
      v38 = v138;
      v40 = v124;
      v71 = v141;
      goto LABEL_20;
    }

    v107 = sub_100162728();
    v38 = v138;
    v40 = v124;
    v71 = v141;
    if (!v107)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_100167608();
    goto LABEL_20;
  }

  v45(v133, v38, v18);
  v62 = v112;
  v45(v112, v40, v18);
  v63 = sub_1001C5128();
  v64 = sub_1001C65B8();
  v65 = v18;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v143 = v136;
    *v66 = 136315394;
    v123 = *(v18 + 16);
    v124 = v40;
    v67 = v133;
    v135 = v63;
    v68 = sub_1001C6CC8();
    *&v138 = v38;
    v70 = v69;
    LODWORD(v134) = v64;
    v71 = *(isa + 1);
    (v71)(v67, v65);
    v72 = sub_1001874E8(v68, v70, &v143);
    v38 = v138;

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v40 = v124;
    v73 = sub_1001C6CC8();
    v74 = v62;
    v76 = v75;
    (v71)(v74, v65);
    v77 = sub_1001874E8(v73, v76, &v143);

    *(v66 + 14) = v77;
    v78 = v135;
    _os_log_impl(&_mh_execute_header, v135, v134, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v71 = *(isa + 1);
    (v71)(v62, v18);
    (v71)(v133, v18);
  }

  v89 = v139;
  v90 = sub_100162728();
  v91 = v140;
  if (!v90)
  {
    v92 = v125;
    sub_1001625D4(v125);
    v93 = v126;
    (*(v89 + 56))(v126, 2, 2, v91);
    v94 = type metadata accessor for CRDTModelRevisionInfo(0);
    v95 = v130;
    (*(*(v94 - 8) + 56))(v130, 1, 1, v94);
    v96 = v129;
    ModelState.init(model:loaded:source:revisionInfo:)(v92, 1, v93, v95, v91, v127, v128, v129);
    sub_100164144(v96, 0xD000000000000012, 0x8000000100200E30);
    (*(v131 + 8))(v96, v132);
  }

  sub_100164478(v141);
  if (!v137 && sub_100162728())
  {
    goto LABEL_19;
  }

LABEL_20:
  (v71)(v40, v65);
  return (v71)(v38, v65);
}

uint64_t sub_100163DC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  sub_10009ADF0(a1, aBlock - v9, &unk_10026F420, &unk_1001F0E50);

  v11 = sub_1001C5128();
  v12 = sub_1001C65B8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1001874E8(a2, a3, aBlock);
    *(v13 + 12) = 2080;
    v14 = sub_1001615D8();
    v16 = v15;
    sub_10008875C(v10, &unk_10026F420, &unk_1001F0E50);
    v17 = sub_1001874E8(v14, v16, aBlock);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = sub_10008875C(v10, &unk_10026F420, &unk_1001F0E50);
  }

  v19 = *(v4 + 32);
  __chkstk_darwin(v18);
  aBlock[-2] = a1;
  v20 = *(v19 + 16);
  v21 = swift_allocObject();
  v21[2] = sub_10009B018;
  v21[3] = &aBlock[-4];
  v21[4] = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10009AD7C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_10024AE60;
  v23 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v20, v23);
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164144(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a2;
  v30 = *v3;
  v6 = v30[10];
  v7 = v30[12];
  v28 = v30[11];
  v29 = v6;
  v27 = v7;
  v8 = type metadata accessor for ModelState(0, v6, v28, v7);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  (*(v9 + 16))(&v24 - v10, a1, v8);

  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = a1;
    v31 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1001874E8(v26, a3, &v31);
    *(v14 + 12) = 2080;
    v16 = ModelState.description.getter(v8);
    v18 = v17;
    (*(v9 + 8))(v11, v8);
    v19 = sub_1001874E8(v16, v18, &v31);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v14, 0x16u);
    swift_arrayDestroy();
    a1 = v25;
  }

  else
  {

    v20 = (*(v9 + 8))(v11, v8);
  }

  __chkstk_darwin(v20);
  v21 = v28;
  *(&v24 - 6) = v29;
  *(&v24 - 5) = v21;
  v22 = v30[13];
  *(&v24 - 4) = v27;
  *(&v24 - 3) = v22;
  *(&v24 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_100127A64, (&v24 - 8));
}

uint64_t sub_100164478(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  swift_beginAccess();
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  type metadata accessor for CRDTModelFileSyncInfo(255, v8);
  swift_getWitnessTable();
  v6 = sub_1001C5D68();
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  return sub_100164580();
}

uint64_t sub_100164580()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 96);
  v10 = *(v2 + 80);
  v11 = v3;
  type metadata accessor for CRDTModelFileSyncInfo(255, &v10);
  swift_getWitnessTable();
  sub_1001C5D68();
  sub_1001C5D18();
  swift_endAccess();
  v4 = v0[5];
  v5 = *(v4 + 16);
  v6 = swift_allocObject();
  v6[2] = sub_10016A0C4;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000F51E4;
  *(v7 + 24) = v6;
  v12 = sub_1000B3DA0;
  v13 = v7;
  *&v10 = _NSConcreteStackBlock;
  *(&v10 + 1) = 1107296256;
  *&v11 = sub_1000906F4;
  *(&v11 + 1) = &unk_10024ADE8;
  v8 = _Block_copy(&v10);
  swift_retain_n();

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647AC(void *a1, char *a2)
{
  v4 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_10016A0CC(a1, type metadata accessor for CRDTModelSyncVersion);
  v8 = *(a2 + 12);
  v9 = *(*a2 + 192);
  swift_beginAccess();
  (*(v5 + 16))(v7, &a2[v9], v4);
  type metadata accessor for CRDTModelSyncVersion(0);
  v10 = v8;
  sub_1001C5D58();
  result = (*(v5 + 8))(v7, v4);
  *a1 = v10;
  return result;
}

uint64_t sub_100164918(void *a1, char *a2)
{
  v4 = *(*a2 + 96);
  v13[0] = *(*a2 + 80);
  v13[1] = v4;
  type metadata accessor for CRDTModelFileSyncInfo(255, v13);
  swift_getWitnessTable();
  v5 = sub_1001C5D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_10016A0CC(a1, type metadata accessor for CRDTModelSyncVersion);
  v9 = *(a2 + 12);
  v10 = *(*a2 + 192);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a2[v10], v5);
  type metadata accessor for CRDTModelSyncVersion(0);
  v11 = v9;
  sub_1001C5D58();
  result = (*(v6 + 8))(v8, v5);
  *a1 = v11;
  return result;
}

uint64_t CRDTModelFileSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001C5638();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v8, v5);
}

void sub_100164C00(uint64_t a1, int a2, void *a3)
{
  v131 = a1;
  v125 = a2;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v4 - 8);
  v116 = &v108 - v5;
  v6 = sub_1001C5BD8();
  v123 = *(v6 - 8);
  v124 = v6;
  __chkstk_darwin(v6);
  v122 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1001C5AC8();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v9 = __chkstk_darwin(v118);
  v115 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v108 - v11;
  v12 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = __chkstk_darwin(v12);
  v114 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v133 = &v108 - v15;
  v16 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v16);
  v18 = &v108 - v17;
  v19 = type metadata accessor for ReadingHistoryModel(0);
  v20 = __chkstk_darwin(v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v108 - v24;
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v128 = [a3[8] createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];

  v126 = v16;
  v29 = v131;
  v28 = v132;
  sub_1001C6688();
  v132 = v28;

  sub_10016A1E0(v18, v27, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v18, &unk_10026F420, &unk_1001F0E50);
  sub_10016A258(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v117 = v19;
  v30 = sub_1001C5C38();
  sub_10016A0CC(v27, type metadata accessor for ReadingHistoryModel);
  v31 = *(*a3 + 200);
  if (v30)
  {
    sub_10016A1E0(v29, v25, type metadata accessor for ReadingHistoryModel);

    v110 = v31;
    v32 = sub_1001C5128();
    v33 = sub_1001C65B8();

    v34 = os_log_type_enabled(v32, v33);
    v113 = v18;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock[0] = v112;
      *v35 = 67109634;
      *(v35 + 4) = v125 & 1;
      *(v35 + 8) = 2080;
      LODWORD(v111) = v33;
      v36 = ReadingHistoryModel.description.getter();
      v37 = v29;
      v39 = v38;
      v109 = type metadata accessor for ReadingHistoryModel;
      sub_10016A0CC(v25, type metadata accessor for ReadingHistoryModel);
      v40 = sub_1001874E8(v36, v39, aBlock);
      v29 = v37;

      *(v35 + 10) = v40;
      *(v35 + 18) = 2080;

      v41 = v132;
      sub_1001C6688();
      v132 = v41;

      sub_10016A1E0(v18, v27, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v18, &unk_10026F420, &unk_1001F0E50);
      v42 = ReadingHistoryModel.description.getter();
      v44 = v43;
      sub_10016A0CC(v27, v109);
      v45 = sub_1001874E8(v42, v44, aBlock);

      *(v35 + 20) = v45;
      _os_log_impl(&_mh_execute_header, v32, v111, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v35, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_10016A0CC(v25, type metadata accessor for ReadingHistoryModel);
    }

    v58 = v130;
    v59 = *(*a3 + 192);
    swift_beginAccess();
    v60 = *(v129 + 16);
    v109 = v59;
    v112 = v129 + 16;
    v111 = v60;
    v60(v133, v59 + a3, v58);
    sub_10016A1E0(v29, v27, type metadata accessor for ReadingHistoryModel);
    sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    v61 = v127;
    sub_1001C5B58();
    v62 = v117;
    sub_1001C4CA8();
    sub_10016A258(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v63 = v130;
    sub_1001C5B58();
    *(v61 + *(v62 + 24)) = &_swiftEmptyDictionarySingleton;
    *(v61 + *(v118 + 52)) = &_swiftEmptyDictionarySingleton;
    v64 = sub_1000B385C(v27, v61);
    v65 = v27;
    __chkstk_darwin(v64);
    *(&v108 - 2) = v61;
    v66 = v119;
    v67 = v121;
    v68 = v132;
    sub_1001C5D48();
    (*(v120 + 8))(v66, v67);
    v69 = a3[12];
    v71 = v122;
    v70 = v123;
    v72 = v124;
    (*(v123 + 104))(v122, enum case for CRCodableVersion.version3(_:), v124);
    v73 = sub_1001C5D08();
    if (v68)
    {

      (*(v70 + 8))(v71, v72);
      v75 = sub_1001C5128();
      v76 = sub_1001C6598();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v135 = v78;
        *v77 = 136315138;
        v79 = v133;
        swift_beginAccess();
        v80 = v115;
        sub_1001C5D38();
        v81 = ReadingHistoryModel.description.getter();
        v83 = v82;
        sub_10008875C(v80, &unk_1002739E0, &qword_1001F3498);
        v84 = sub_1001874E8(v81, v83, &v135);

        *(v77 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v77, 0xCu);
        sub_10008E7BC(v78);
      }

      else
      {

        v79 = v133;
      }

      sub_100084528(&qword_100270AA0, &qword_1001F34E0);
      sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0, &protocol conformance descriptor for CRDTModelFileSyncManager<A>.SyncError);
      swift_allocError();
      *v90 = 1;
      swift_willThrow();

      sub_10008875C(v127, &unk_1002739E0, &qword_1001F3498);
      (*(v129 + 8))(v79, v63);
    }

    else
    {
      v121 = v69;
      v86 = v131;
      v132 = v65;
      v120 = v74;
      v119 = v73;
      (*(v70 + 8))(v71, v72);
      if (v125)
      {
        v87 = v116;
        sub_10016A1E0(v86, v116, type metadata accessor for ReadingHistoryModel);
        v88 = 0;
        v89 = v113;
      }

      else
      {
        v88 = 1;
        v89 = v113;
        v87 = v116;
      }

      v91 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v91 - 8) + 56))(v87, v88, 2, v91);

      v92 = v126;
      sub_1001C6688();

      v93 = v115;
      v94 = v133;
      sub_1001C5D38();
      v95 = v132;
      sub_10016A1E0(v93, v132, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v93, &unk_1002739E0, &qword_1001F3498);
      sub_1000B385C(v95, v89);
      sub_1000F4D64(v87, v89 + *(v92 + 48));
      sub_100163DC0(v89, 0x636E79735F71, 0xE600000000000000);
      v96 = v114;
      v111(v114, v94, v63);
      v97 = v109;
      swift_beginAccess();
      (*(v129 + 24))(v97 + a3, v96, v63);
      sub_1001C5D18();
      swift_endAccess();
      v98 = a3[5];
      v99 = *(v98 + 16);
      v100 = swift_allocObject();
      v100[2] = sub_1000F4A08;
      v100[3] = a3;
      v100[4] = v98;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_1000F4A10;
      *(v101 + 24) = v100;
      aBlock[4] = sub_1000B2E48;
      aBlock[5] = v101;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000906F4;
      aBlock[3] = &unk_10024AC58;
      v102 = _Block_copy(aBlock);
      swift_retain_n();

      dispatch_sync(v99, v102);
      _Block_release(v102);
      LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

      if (v99)
      {
        __break(1u);
      }

      else
      {
        v103 = v130;
        v104 = *(v129 + 8);
        v104(v96, v130);
        v111(v96, v97 + a3, v103);
        v105 = swift_allocObject();
        v105[2] = a3;
        v105[3] = MarkedAsFinishedMechanism.rawValue.getter;
        v106 = v128;
        v105[4] = 0;
        v105[5] = v106;

        v107 = v106;
        sub_100160A38(v96, sub_100169EEC, v105);

        sub_1000887D0(v119, v120);

        v104(v96, v103);
        sub_10008875C(v116, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v113, &unk_10026F420, &unk_1001F0E50);
        sub_10008875C(v127, &unk_1002739E0, &qword_1001F3498);
        v104(v133, v103);
      }
    }
  }

  else
  {
    sub_10016A1E0(v29, v22, type metadata accessor for ReadingHistoryModel);

    v46 = sub_1001C5128();
    v47 = sub_1001C65B8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v27;
      v49 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      aBlock[0] = v133;
      *v49 = 67109634;
      *(v49 + 4) = v125 & 1;
      *(v49 + 8) = 2080;
      LODWORD(v131) = v47;
      v50 = ReadingHistoryModel.description.getter();
      v52 = v51;
      sub_10016A0CC(v22, type metadata accessor for ReadingHistoryModel);
      v53 = sub_1001874E8(v50, v52, aBlock);

      *(v49 + 10) = v53;
      *(v49 + 18) = 2080;

      sub_1001C6688();

      sub_10016A1E0(v18, v48, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v18, &unk_10026F420, &unk_1001F0E50);
      v54 = ReadingHistoryModel.description.getter();
      v56 = v55;
      sub_10016A0CC(v48, type metadata accessor for ReadingHistoryModel);
      v57 = sub_1001874E8(v54, v56, aBlock);

      *(v49 + 20) = v57;
      _os_log_impl(&_mh_execute_header, v46, v131, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v49, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_10016A0CC(v22, type metadata accessor for ReadingHistoryModel);
    }

    sub_100084528(&qword_100270AA0, &qword_1001F34E0);
    sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0, &protocol conformance descriptor for CRDTModelFileSyncManager<A>.SyncError);
    swift_allocError();
    *v85 = 0;
    swift_willThrow();
  }
}

void sub_100165F78(_BYTE *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v151 = a3;
  v152 = a4;
  v146 = a2;
  v7 = *v4;
  v159 = *(*v4 + 5);
  v8 = v7[12];
  v9 = v159;
  v133 = type metadata accessor for ModelState(0, v159, *(&v159 + 1), v8);
  v129 = *(v133 - 8);
  __chkstk_darwin(v133);
  v145 = &v118[-v10];
  v128 = type metadata accessor for ModelState.Source(0, v159, *(&v159 + 1), v8);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v132 = &v118[-v11];
  v142 = sub_1001C5BD8();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = sub_1001C5AC8();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v118[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v7[13];
  v160 = v159;
  v158 = v8;
  *&v161 = v8;
  *(&v161 + 1) = v14;
  v156 = v14;
  v15 = type metadata accessor for CRDTModelFileSyncInfo(0, &v160);
  v144 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v131 = &v118[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v149 = &v118[-v18];
  swift_getWitnessTable();
  v153 = sub_1001C5D68();
  isa = v153[-1].isa;
  v19 = __chkstk_darwin(v153);
  v126 = &v118[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v155 = &v118[-v22];
  v23 = *(v9 - 8);
  v24 = __chkstk_darwin(v21);
  v134 = &v118[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v135 = &v118[-v27];
  __chkstk_darwin(v26);
  v29 = &v118[-v28];
  v150 = [v5[8] createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];
  sub_1001625D4(v29);
  v139 = *(&v9 + 1);
  LOBYTE(v7) = sub_1001C5C38();
  v30 = *(v23 + 8);
  v147 = v29;
  v157 = v23 + 8;
  v154 = v30;
  v30(v29, v9);
  v31 = *(*v5 + 25);
  v125 = v23;
  v32 = v23 + 16;
  v162 = *(v23 + 16);
  if (v7)
  {
    v33 = v135;
    v134 = a1;
    (v162)(v135, a1, v9);

    v123 = v31;
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();

    v36 = os_log_type_enabled(v34, v35);
    v130 = v15;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v160 = v122;
      *v37 = 67109634;
      *(v37 + 4) = v146 & 1;
      *(v37 + 8) = 2080;
      v121 = v34;
      v38 = sub_1001C6CC8();
      v119 = v35;
      v40 = v39;
      v41 = v33;
      v42 = v154;
      v154(v41, v9);
      v43 = sub_1001874E8(v38, v40, &v160);

      *(v37 + 10) = v43;
      *(v37 + 18) = 2080;
      v44 = v147;
      sub_1001625D4(v147);
      v45 = sub_1001C6CC8();
      v47 = v46;
      v42(v44, v9);
      v48 = sub_1001874E8(v45, v47, &v160);

      *(v37 + 20) = v48;
      v49 = v121;
      _os_log_impl(&_mh_execute_header, v121, v119, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v37, 0x1Cu);
      swift_arrayDestroy();

      v50 = v158;

      v51 = v5;
      v52 = v153;
    }

    else
    {

      v154(v33, v9);
      v50 = v158;
      v51 = v5;
      v52 = v153;
      v44 = v147;
    }

    v120 = v9;
    v71 = (v51 + *(*v51 + 192));
    swift_beginAccess();
    v72 = *(isa + 2);
    v135 = v71;
    v122 = isa + 16;
    v121 = v72;
    (v72)(v155, v71, v52);
    (v162)(v44, v134, v9);
    v73 = v149;
    v74 = CRDTModelFileSyncInfo.init(model:)(v44, v9, v139, v50, v156, v149);
    v139 = v118;
    __chkstk_darwin(v74);
    *&v118[-16] = v73;
    v75 = v136;
    v124 = v32;
    v76 = v138;
    v77 = v143;
    sub_1001C5D48();
    (*(v137 + 8))(v75, v76);
    v78 = v141;
    v79 = v140;
    v80 = v142;
    (*(v141 + 104))(v140, enum case for CRCodableVersion.version3(_:), v142);
    v81 = sub_1001C5D08();
    if (v77)
    {

      (*(v78 + 8))(v79, v80);
      v83 = sub_1001C5128();
      v84 = sub_1001C6598();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *&v160 = v162;
        *v85 = 136315138;
        v86 = v155;
        swift_beginAccess();
        v87 = v131;
        sub_1001C5D38();
        v88 = v130;
        v89 = sub_1001C6CC8();
        v91 = v90;
        v92 = v144;
        (*(v144 + 8))(v87, v88);
        v93 = sub_1001874E8(v89, v91, &v160);
        v94 = v88;

        *(v85 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v83, v84, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v85, 0xCu);
        sub_10008E7BC(v162);
        v95 = v153;

        v96 = v158;
      }

      else
      {

        v95 = v153;
        v96 = v158;
        v94 = v130;
        v92 = v144;
        v86 = v155;
      }

      v151();
      *&v103 = v96;
      *(&v103 + 1) = v156;
      v161 = v103;
      v160 = v159;
      type metadata accessor for CRDTModelFileSyncManager.SyncError(0, &v160);
      swift_getWitnessTable();
      swift_allocError();
      *v104 = 1;
      swift_willThrow();

      (*(v92 + 8))(v149, v94);
      (*(isa + 1))(v86, v95);
    }

    else
    {
      v156 = v51;
      v98 = v162;
      v99 = v120;
      v158 = v81;
      *&v159 = v82;
      (*(v78 + 8))(v79, v80);
      if (v146)
      {
        v100 = v132;
        v101 = v98;
        (v98)(v132, v134, v99);
        v102 = 0;
      }

      else
      {
        v102 = 1;
        v100 = v132;
        v101 = v98;
      }

      v105 = v156;
      (*(v125 + 56))(v100, v102, 2, v99);

      MutableObservableContainer.value.getter();

      v106 = v131;
      v107 = v153;
      sub_1001C5D38();
      v108 = v147;
      v101(v147, v106, v99);
      v162 = *(v144 + 8);
      (v162)(v106, v130);
      v109 = v145;
      ModelState.updating(model:source:)(v108, v100, v133);
      v154(v108, v99);
      sub_100164144(v109, 0x636E79735F71, 0xE600000000000000);
      v110 = v155;
      sub_100164478(v155);
      v111 = v126;
      (v121)(v126, v135, v107);
      v112 = swift_allocObject();
      v113 = v151;
      v114 = v152;
      v112[2] = v105;
      v112[3] = v113;
      v115 = v150;
      v112[4] = v114;
      v112[5] = v115;

      v116 = v115;
      sub_1000CE44C(v111, sub_10016A190, v112);

      sub_1000887D0(v158, v159);

      v117 = *(isa + 1);
      v117(v111, v107);
      (*(v129 + 8))(v145, v133);
      (*(v127 + 8))(v132, v128);
      (v162)(v149, v130);
      v117(v110, v107);
    }
  }

  else
  {
    v53 = v134;
    (v162)(v134, a1, v9);

    v54 = sub_1001C5128();
    v55 = sub_1001C65B8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v160 = v162;
      *v56 = 67109634;
      *(v56 + 4) = v146 & 1;
      *(v56 + 8) = 2080;
      LODWORD(v155) = v55;
      v57 = v158;
      v58 = sub_1001C6CC8();
      v60 = v59;
      v153 = v54;
      v61 = v57;
      v62 = v154;
      v154(v53, v9);
      v63 = sub_1001874E8(v58, v60, &v160);

      *(v56 + 10) = v63;
      *(v56 + 18) = 2080;
      v64 = v147;
      v65 = v61;
      sub_1001625D4(v147);
      v66 = sub_1001C6CC8();
      v68 = v67;
      v62(v64, v9);
      v69 = sub_1001874E8(v66, v68, &v160);

      *(v56 + 20) = v69;
      v70 = v153;
      _os_log_impl(&_mh_execute_header, v153, v155, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v56, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v154(v53, v9);
      v65 = v158;
    }

    v151();
    v160 = v159;
    *&v161 = v65;
    *(&v161 + 1) = v156;
    type metadata accessor for CRDTModelFileSyncManager.SyncError(0, &v160);
    swift_getWitnessTable();
    swift_allocError();
    *v97 = 0;
    swift_willThrow();
  }
}

void sub_10016716C(_BYTE *a1@<X1>, char a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = sub_100162728();
  v12 = a2 & 1;
  if (v11)
  {
    sub_100165F78(a1, v12, a3, a4);
    if (v5)
    {

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100167218(a1, v12, a3, a4);
    v13 = 0;
  }

  *a5 = v13;
}

uint64_t sub_100167218(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  HIDWORD(v26) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v26 - v11;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "CRDTModelFileSyncManager q_enqueuePendingSync", v15, 2u);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v26) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v28;
  *(v18 + 8) = v27;
  *(v18 + 16) = v19;
  swift_beginAccess();
  v20 = v5[9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[9] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1000ADC10(0, v20[2] + 1, 1, v20);
    v5[9] = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1000ADC10((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = sub_10016A2F8;
  v24[5] = v17;
  v5[9] = v20;
  return swift_endAccess();
}

void sub_1001674E4(uint64_t a1, _BYTE *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelFileSyncManager q_enqueuePendingSync -- about to run", v11, 2u);
  }

  sub_100165F78(a2, a3 & 1, a4, a5);
}

uint64_t sub_100167608()
{
  v19 = sub_1001C5688();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C5648();
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v0 + 72);
  *(v0 + 72) = _swiftEmptyArrayStorage;
  v17 = v7;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v17 + 32);
    v10 = (v1 + 8);
    v11 = (v4 + 8);
    do
    {
      v12 = swift_allocObject();
      v13 = *v9++;
      *(v12 + 16) = v13;

      sub_1001C5638();
      v14 = swift_allocObject();
      *(v14 + 16) = sub_10016A2D0;
      *(v14 + 24) = v12;
      aBlock[4] = sub_10009A564;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_10024AF50;
      v15 = _Block_copy(aBlock);

      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v15);

      (*v10)(v3, v19);
      (*v11)(v6, v18);

      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1001678C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001C5D28();
  sub_100084528(&unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498, &protocol conformance descriptor for CRDTModelFileSyncInfo<A>);
  sub_1001C57C8();
  return v2(&v4, 0);
}

uint64_t sub_1001679A0(uint64_t *a1, uint64_t a2)
{
  v2 = sub_1001C5D28();
  swift_getWitnessTable();
  sub_1001C57C8();
  return v2(&v4, 0);
}

uint64_t sub_100167A98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelFileSyncManager q_sync: finished", v9, 2u);
  }

  v10 = a5();
  return a2(v10);
}

uint64_t sub_100167B78()
{
  v1 = v0;
  v2 = type metadata accessor for CRDTModelSyncVersion(0);
  __chkstk_darwin(v2);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1001874E8(0xD000000000000013, 0x80000001001FDF60, v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "CRDTModelFileSyncManager: Model did sync %s", v7, 0xCu);
    sub_10008E7BC(v8);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_1001C6688();
    (*(v10 + 8))(v4, ObjectType, v10);
    swift_unknownObjectRelease();
    return sub_10016A0CC(v4, type metadata accessor for CRDTModelSyncVersion);
  }

  return result;
}

uint64_t sub_100167D84()
{
  v1 = *v0;
  v2 = type metadata accessor for CRDTModelSyncVersion(0);
  __chkstk_darwin(v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    v9 = (*(*(v1 + 104) + 8))(*(v1 + 80));
    v11 = sub_1001874E8(v9, v10, v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "CRDTModelFileSyncManager: Model did sync %s", v7, 0xCu);
    sub_10008E7BC(v8);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = v0[3];
    ObjectType = swift_getObjectType();
    sub_1001C6688();
    (*(v13 + 8))(v4, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_10016A0CC(v4, type metadata accessor for CRDTModelSyncVersion);
  }

  return result;
}

id *CRDTModelFileSyncManager.deinit()
{
  v1 = *v0;
  sub_1000CEB00((v0 + 2));

  swift_unknownObjectRelease();

  v2 = *(*v0 + 24);
  v3 = v1[6];
  v8[0] = v1[5];
  v8[1] = v3;
  type metadata accessor for CRDTModelFileSyncInfo(255, v8);
  swift_getWitnessTable();
  v4 = sub_1001C5D68();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 25);
  v6 = sub_1001C5148();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CRDTModelFileSyncManager.__deallocating_deinit()
{
  CRDTModelFileSyncManager.deinit();

  return swift_deallocClassInstance();
}

void *sub_100168210(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v141 = a4;
  v143 = a3;
  v147 = a2;
  v167 = a1;
  v6 = *v4;
  v146 = sub_1001C5148();
  v154 = *(v146 - 8);
  __chkstk_darwin(v146);
  v153 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1001C4B28();
  v164 = *(v152 - 8);
  v8 = __chkstk_darwin(v152);
  v150 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v145 = &v132 - v11;
  v12 = __chkstk_darwin(v10);
  v163 = &v132 - v13;
  __chkstk_darwin(v12);
  v151 = &v132 - v14;
  v144 = (type metadata accessor for CRDTModelSyncVersion(0) - 8);
  v15 = __chkstk_darwin(v144);
  v148 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = &v132 - v17;
  v18 = v6[10];
  v19 = v6[11];
  v20 = v6[12];
  v166 = v6[13];
  v168 = v18;
  v169 = v19;
  v21 = v19;
  v170 = v20;
  v171 = v166;
  v22 = v20;
  v23 = type metadata accessor for CRDTModelFileSyncInfo(255, &v168);
  WitnessTable = swift_getWitnessTable();
  v162 = v23;
  v158 = sub_1001C5D68();
  v165 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v132 - v24;
  v25 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v25 - 8);
  v139 = &v132 - v26;
  v160 = v22;
  v161 = v21;
  v27 = type metadata accessor for ModelState.Source(0, v18, v21, v22);
  v28 = __chkstk_darwin(v27 - 8);
  v135 = &v132 - v29;
  v133 = *(v18 - 1);
  __chkstk_darwin(v28);
  v132 = &v132 - v30;
  v159 = type metadata accessor for ModelState(0, v18, v21, v22);
  v149 = *(v159 - 8);
  v31 = __chkstk_darwin(v159);
  v156 = &v132 - v32;
  v157 = *(v23 - 8);
  v33 = __chkstk_darwin(v31);
  v134 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v132 - v35;
  v37 = sub_1001C6668();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1001C6638();
  __chkstk_darwin(v41 - 8);
  v42 = sub_1001C5688();
  __chkstk_darwin(v42 - 8);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v38 + 104))(v40, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v37);
  v5[6] = sub_1001C66A8();
  *(v5 + 80) = 0;
  v138 = *(*v5 + 200);
  v168 = 0;
  v169 = 0xE000000000000000;
  sub_1001C69C8(20);

  v168 = 0xD000000000000012;
  v169 = 0x80000001001FE0E0;
  v43 = v166;
  v44 = *(v166 + 8);
  v136 = v166 + 8;
  v137 = v44;
  v172._countAndFlagsBits = v44(v18, v166);
  sub_1001C6138(v172);

  sub_1001C5138();
  v45 = v161;
  sub_1001C5B38();
  v168 = v18;
  v169 = v45;
  v46 = v160;
  v170 = v160;
  v171 = v43;
  *&v36[*(type metadata accessor for CRDTModelFileSyncInfo(0, &v168) + 52)] = &_swiftEmptyDictionarySingleton;
  v47 = v167[3];
  v48 = v167[4];
  sub_10009BB74(v167, v47);
  v5[12] = (*(v48 + 8))(v47, v48);
  swift_beginAccess();
  v5[3] = v141;
  swift_unknownObjectWeakAssign();
  v49 = v147;
  v5[8] = v147;
  type metadata accessor for ObservableTransaction(0);
  v50 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v5[7] = sub_10015C33C(0xD000000000000034, 0x8000000100200D60, v49, v50);
  v51 = v133;
  v52 = v132;
  (*(v133 + 16))(v132, v36, v18);
  v53 = v135;
  (*(v51 + 56))(v135, 1, 2, v18);
  v54 = type metadata accessor for CRDTModelRevisionInfo(0);
  v55 = v139;
  (*(*(v54 - 8) + 56))(v139, 1, 1, v54);
  v56 = v156;
  ModelState.init(model:loaded:source:revisionInfo:)(v52, 0, v53, v55, v18, v45, v46, v156);
  v57 = v159;
  v58 = swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer(0, v57, v58, v59);
  v5[4] = sub_10015C6B4(v56);
  v60 = *(v157 + 16);
  v147 = v36;
  v60(v134, v36, v162);
  v61 = v155;
  sub_1001C5D78();
  v62 = *(*v5 + 192);
  v63 = v165;
  v64 = v158;
  (*(v165 + 32))(v5 + v62, v61, v158);
  v65 = v5[12];
  swift_beginAccess();
  v66 = v65;
  sub_1001C5D18();
  swift_endAccess();

  v67 = v5[12];
  v68 = *(v63 + 16);
  v143 = v62;
  v141 = v63 + 16;
  WitnessTable = v68;
  v68(v61, v5 + v62, v64);
  v69 = v67;
  v70 = v142;
  sub_1001C5D58();
  v71 = *(v63 + 8);
  v165 = v63 + 8;
  v144 = v71;
  v71(v61, v64);
  *v70 = v69;
  sub_100084528(&unk_100270A20, &unk_1001F3480);
  swift_allocObject();
  v72 = v148;
  sub_10016A1E0(v70, v148, type metadata accessor for CRDTModelSyncVersion);
  v73 = sub_1000986B8(v72);
  sub_10016A0CC(v70, type metadata accessor for CRDTModelSyncVersion);
  v5[5] = v73;
  v74 = v167[3];
  v75 = v167[4];
  sub_10009BB74(v167, v74);
  v76 = *(v75 + 16);
  v77 = v151;
  v78 = v75;
  v79 = v164;
  v76(v74, v78);
  v148 = v18;
  v80 = v18;
  v81 = v146;
  v82 = v137(v80, v166);
  v83 = v145;
  v84 = v152;
  v168 = v82;
  v169 = v85;
  v173._countAndFlagsBits = 0x666E49636E79532DLL;
  v173._object = 0xE90000000000006FLL;
  sub_1001C6138(v173);
  v86 = v163;
  v87 = v77;
  sub_1001C4AA8();

  (*(v154 + 16))(v153, v5 + v138, v81);
  v88 = *(v79 + 16);
  v142 = (v79 + 16);
  v139 = v88;
  (v88)(v83, v86, v84);
  v89 = sub_1001C5128();
  v90 = sub_1001C6588();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v168 = v92;
    *v91 = 136315138;
    sub_10016A258(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v93 = sub_1001C6CC8();
    v94 = v83;
    v96 = v95;
    v145 = *(v79 + 8);
    (v145)(v94, v84);
    v97 = sub_1001874E8(v93, v96, &v168);

    *(v91 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v89, v90, "CRDTModelFileSyncManager Init: modelFileURL: %s", v91, 0xCu);
    sub_10008E7BC(v92);

    v87 = v151;
  }

  else
  {

    v145 = *(v79 + 8);
    (v145)(v83, v84);
  }

  (*(v154 + 8))(v153, v81);
  v98 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v99);
  v101 = v100;
  v168 = 0;
  v102 = [v98 createDirectoryAtURL:v100 withIntermediateDirectories:1 attributes:0 error:&v168];

  if (v102)
  {
    v103 = v168;
  }

  else
  {
    v104 = v168;
    sub_1001C4A28();

    swift_willThrow();
    v105 = sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v106 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1001F0660;
    v108 = sub_1001C4A58();
    v110 = v109;
    *(v107 + 56) = &type metadata for String;
    v111 = sub_100084570();
    *(v107 + 64) = v111;
    *(v107 + 32) = v108;
    *(v107 + 40) = v110;
    swift_getErrorValue();
    v112 = sub_1001C6D98();
    *(v107 + 96) = &type metadata for String;
    *(v107 + 104) = v111;
    *(v107 + 72) = v112;
    *(v107 + 80) = v113;
    sub_1001C5118(v105, &_mh_execute_header, v106, "CRDTModelFileSyncManager unable to create directory at %@ error=%@", 66, 2, v107);

    v84 = v152;
  }

  v114 = v162;
  v115 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  v168 = v114;
  v169 = v115;
  v170 = v116;
  v171 = &protocol witness table for CRDTModelFileSyncInfo<A>;
  type metadata accessor for CRDTModelFileSyncTransport(0, &v168);
  v117 = v5[12];
  v118 = v155;
  v119 = v158;
  WitnessTable(v155, v5 + v143, v158);
  v120 = v150;
  v121 = v163;
  (v139)(v150, v163, v84);
  v122 = v117;
  v123 = sub_1000CF338(v122, v118, v120);
  v144(v118, v119);

  v5[11] = v123;
  v124 = v5[4] + *(*v5[4] + 128);
  swift_beginAccess();
  *(v124 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v5[9] = _swiftEmptyArrayStorage;
  v125 = swift_allocObject();
  swift_weakInit();
  v126 = swift_allocObject();
  v128 = v160;
  v127 = v161;
  v126[2] = v148;
  v126[3] = v127;
  v129 = v166;
  v126[4] = v128;
  v126[5] = v129;
  v126[6] = v125;
  sub_1000CE428(sub_10016A248, v126);

  v130 = v145;
  (v145)(v121, v84);
  v130(v87, v84);
  (*(v149 + 8))(v156, v159);
  (*(v157 + 8))(v147, v114);
  sub_10008E7BC(v167);
  return v5;
}

void *sub_100169580(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = v7[10];
  v12 = v7[11];
  v13 = v7[12];
  v14 = v7[13];
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  if (a3)
  {
    v15 = type metadata accessor for CRDTModelFileSyncInfo(255, &v26);
    WitnessTable = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    v26 = v15;
    v27 = WitnessTable;
    v28 = v17;
    v29 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    type metadata accessor for CRDTModelFileSyncContextStore(0, &v26);
    v18 = static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(a1, a2);
  }

  else
  {
    v19 = type metadata accessor for CRDTModelFileSyncInfo(255, &v26);
    v20 = swift_getWitnessTable();
    v21 = swift_getWitnessTable();
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    type metadata accessor for CRDTModelFileSyncContextStore(0, &v26);
    v18 = static CRDTModelFileSyncContextStore.persistentContext(_:)(a1, a2);
  }

  v22 = v18;

  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v29 = type metadata accessor for CRDTModelFileSyncManager.DefaultConfig(0, &v26);
  v30 = &protocol witness table for CRDTModelFileSyncManager<A>.DefaultConfig;
  v26 = v22;
  swift_allocObject();
  return sub_100168210(&v26, a4, a5, a6);
}

void sub_1001698FC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100169C74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100169984(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100169AC0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_100169C74(uint64_t a1)
{
  if (!qword_100273850[0])
  {
    sub_1001C5CD8();
    v1 = sub_1001C5F68();
    if (!v2)
    {
      atomic_store(v1, qword_100273850);
    }
  }
}

uint64_t sub_100169CDC(uint64_t a1)
{
  v6 = &unk_1001F75C0;
  v7 = &value witness table for Builtin.NativeObject + 64;
  v8 = &value witness table for Builtin.NativeObject + 64;
  v9 = &value witness table for Builtin.UnknownObject + 64;
  v10 = &value witness table for Builtin.NativeObject + 64;
  v11 = &unk_1001F75D8;
  v12 = &value witness table for Builtin.BridgeObject + 64;
  v13 = &unk_1001F75F0;
  v14 = &value witness table for Builtin.NativeObject + 64;
  v15 = &value witness table for Builtin.UnknownObject + 64;
  v1 = *(a1 + 96);
  v5[0] = *(a1 + 80);
  v5[1] = v1;
  type metadata accessor for CRDTModelFileSyncInfo(255, v5);
  swift_getWitnessTable();
  result = sub_1001C5D68();
  if (v3 <= 0x3F)
  {
    v16 = *(result - 8) + 64;
    result = sub_1001C5148();
    if (v4 <= 0x3F)
    {
      v17 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100169E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100169ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100169F20()
{
  sub_100084528(&unk_100270A30, &qword_1001F3490);
  sub_10015F710();
  sub_1001C5BF8();
}

uint64_t sub_10016A0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016A148()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10016A1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016A258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10016A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016A478(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1001C61E8();
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10016A4C0()
{
  v1 = *(v0 + 16);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(v1);
  return sub_1001C6E28();
}

void sub_10016A524(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1001C60E8();
  sub_1001C6E18(v2);
}

Swift::Int sub_10016A55C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(v2);
  return sub_1001C6E28();
}

uint64_t sub_10016A5BC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001C6D08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_10016A620()
{
  result = qword_100273A10;
  if (!qword_100273A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A10);
  }

  return result;
}

unint64_t sub_10016A674@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10016A958(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_10016A6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3._countAndFlagsBits = 65;
  }

  else
  {
    v3._countAndFlagsBits = 66;
  }

  v3._object = 0xE100000000000000;
  sub_1001C6138(v3);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_1001C6138(v6);
  return 0;
}

void *sub_10016A720@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10016AB7C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10016A754(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_10009BB74(a1, a1[3]);
  sub_1001C6E68();
  if (v4)
  {
    v5._countAndFlagsBits = 65;
  }

  else
  {
    v5._countAndFlagsBits = 66;
  }

  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  sub_1001C6138(v8);
  v9._countAndFlagsBits = v2;
  v9._object = v3;
  sub_1001C6138(v9);
  sub_10009D148(v7, v7[3]);
  sub_1001C6D28();

  return sub_10008E7BC(v7);
}

unint64_t sub_10016A854()
{
  result = qword_100273A18;
  if (!qword_100273A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A18);
  }

  return result;
}

unint64_t sub_10016A8A8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1001C6118();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1001C6208();
}

unint64_t sub_10016A958(uint64_t a1, unint64_t a2)
{
  v4 = sub_10016A478(a1, a2);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v4;
  v7 = v5;
  if (v4 == 66 && v5 == 0xE100000000000000 || (sub_1001C6D08() & 1) != 0 || v6 == 65 && v7 == 0xE100000000000000)
  {
  }

  else
  {
    v19 = sub_1001C6D08();

    if ((v19 & 1) == 0)
    {
LABEL_21:

      return 0;
    }
  }

  v8 = sub_10016A8A8(1uLL, a1, a2);
  v10 = v9;

  if (v10 >> 14 == v8 >> 14)
  {
    goto LABEL_21;
  }

  if (sub_1001C6838() == 46 && v11 == 0xE100000000000000)
  {
  }

  else
  {
    v12 = sub_1001C6D08();

    if ((v12 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  result = sub_1001C6818();
  if (v14)
  {
    result = v10;
  }

  if (v10 >> 14 >= result >> 14)
  {
    v15 = sub_1001C6848();
    v17 = v16;

    if ((v15 ^ v17) >= 0x4000)
    {
      v18 = sub_1001C60B8();

      return v18;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *sub_10016AB7C(void *a1)
{
  v3 = sub_10009BB74(a1, a1[3]);
  sub_1001C6E48();
  if (!v1)
  {
    sub_10009BB74(&v12, v14);
    v4 = sub_1001C6D18();
    v6 = v5;
    sub_10008E7BC(&v12);

    v8 = sub_10016A958(v4, v6);
    if (v9)
    {
      v3 = v8;

      sub_10008E7BC(a1);
      return v3;
    }

    v10 = sub_10009BB74(a1, a1[3]);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1001C69C8(25);

    v12 = 39;
    v13 = 0xE100000000000000;
    v15._countAndFlagsBits = v4;
    v15._object = v6;
    sub_1001C6138(v15);

    v16._object = 0x8000000100203A00;
    v16._countAndFlagsBits = 0xD000000000000016;
    sub_1001C6138(v16);
    sub_1001C6A28();
    swift_allocError();
    v3 = v10;
    sub_100145220(v11);

    swift_willThrow();
  }

  sub_10008E7BC(a1);
  return v3;
}

__n128 sub_10016AD40(uint64_t a1, uint64_t a2)
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

uint64_t sub_10016AD5C(uint64_t a1, int a2)
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

uint64_t sub_10016ADA4(uint64_t result, int a2, int a3)
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

uint64_t sub_10016AE0C(void *a1)
{
  v3 = sub_100084528(&qword_100273A48, &unk_1001F78D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_10016C1B0();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C6C68();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1001C6C68();
  v8[13] = 2;
  sub_1001C6C68();
  v8[12] = 3;
  sub_1001C6C68();
  v8[11] = 4;
  sub_1001C6C68();
  v8[10] = 5;
  sub_1001C6C68();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10016B00C()
{
  v1 = *v0;
  v2 = 0x6E6953656C746974;
  v3 = 0x676E695379646F62;
  if (v1 != 4)
  {
    v3 = 0x746C754D79646F62;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x6C754D656C746974;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016B0F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016BAE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10016B11C(uint64_t a1)
{
  v2 = sub_10016C1B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B158(uint64_t a1)
{
  v2 = sub_10016C1B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10016B194@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10016BD0C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10016B1F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10016B9D0(v9, v10) & 1;
}

uint64_t sub_10016B254@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1001C4CA8();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_1001C4B28();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = _s4DealVMa(0);
  v18 = __chkstk_darwin(v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v65 = v18;
    sub_100132EC0(a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v22 == 1)
    {
      if (v21[16])
      {
        v23 = 7;
        v24 = 6;
        v25 = 1;
        v26 = v2;
      }

      else
      {
        v26 = v2 + 2;
        v23 = 9;
        v24 = 8;
        v25 = 3;
      }

      v37 = *v26;
      v38 = v2[v25];
      v61 = v2[v24];
      v62 = v37;
      v39 = v2[v23];
      v64 = v38;

      v63 = v39;

      v40 = *(v21 + 4);
      v60 = *(v21 + 3);
      (*(v12 + 16))(v16, &v21[*(v65 + 24)], v11);
      v59 = v40;
    }

    else
    {
      v58 = v7;
      v34 = v2[4];
      v36 = v2[10];
      v35 = v2[11];
      v64 = v2[5];

      v63 = v35;

      sub_1001C4B08();
      result = (*(v12 + 48))(v10, 1, v11);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v61 = v36;
      v62 = v34;
      (*(v12 + 32))(v16, v10, v11);
      v59 = 0xE000000000000000;
      v60 = 0;
      v7 = v58;
    }

    sub_100084528(&qword_100273A50, &qword_1001F78E8);
    v41 = sub_1001C4888();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1001F0670;
    if (qword_10026EC70 != -1)
    {
      swift_once();
    }

    v45 = sub_100083274(v41, qword_100273A20);
    (*(v42 + 16))(v44 + v43, v45, v41);
    v46 = v66;
    sub_1001C4B18();

    v48 = v67;
    v47 = v68;
    (*(v67 + 16))(v7, &v21[*(v65 + 28)], v68);
    sub_1001C4BD8();
    v50 = v49;
    v51 = v49;
    (*(v48 + 8))(v7, v47);
    (*(v12 + 8))(v16, v11);
    sub_100132F24(v21);
    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v50 > -9.22337204e18)
    {
      if (v50 < 9.22337204e18)
      {
        v52 = v62;
        *a2 = v50;
        *(a2 + 1) = v52;
        v54 = v59;
        v53 = v60;
        *(a2 + 2) = v64;
        *(a2 + 3) = v53;
        v55 = v61;
        *(a2 + 4) = v54;
        *(a2 + 5) = v55;
        *(a2 + 6) = v63;
        v56 = _s21PriceDropNotificationVMa(0);
        (*(v12 + 32))(&a2[*(v56 + 32)], v46, v11);
        return (*(*(v56 - 8) + 56))(a2, 0, 1, v56);
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_10026EBB8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v27 = sub_1001C5148();
  sub_100083274(v27, qword_100281898);
  v28 = sub_1001C5128();
  v29 = sub_1001C65B8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "[TemplateNotification] No notification (no deals)", v30, 2u);
  }

  v31 = _s21PriceDropNotificationVMa(0);
  v32 = *(*(v31 - 8) + 56);

  return v32(a2, 1, 1, v31);
}

uint64_t sub_10016B948()
{
  v0 = sub_1001C4888();
  sub_100088824(v0, qword_100273A20);
  sub_100083274(v0, qword_100273A20);
  return sub_1001C4878();
}

uint64_t sub_10016B9D0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1001C6D08() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1001C6D08() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if (a1[10] == a2[10] && a1[11] == a2[11])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t sub_10016BAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000100203A50 == a2;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6953656C746974 && a2 == 0xEF6B6F6F42656C67 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C754D656C746974 && a2 == 0xED0000656C706974 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100203A70 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E695379646F62 && a2 == 0xEE006B6F6F42656CLL || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D79646F62 && a2 == 0xEC000000656C7069)
  {

    return 5;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10016BD0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100084528(&qword_100273A38, &qword_1001F78D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_10016C1B0();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1001C6BE8();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_1001C6BE8();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_1001C6BE8();
  v35 = v14;
  v30 = v13;
  LOBYTE(v43[0]) = 3;
  v33 = 0;
  v29 = sub_1001C6BE8();
  v32 = v15;
  LOBYTE(v43[0]) = 4;
  v28 = sub_1001C6BE8();
  v31 = v16;
  v44 = 5;
  v17 = sub_1001C6BE8();
  v18 = *(v6 + 8);
  v19 = v17;
  v33 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v30;
  v21 = v35;
  *(&v39 + 1) = v35;
  *&v40 = v29;
  v22 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v28;
  *(&v41 + 1) = v31;
  *&v42 = v19;
  v23 = v33;
  *(&v42 + 1) = v33;
  sub_10016C204(&v37, v43);
  sub_10008E7BC(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v30;
  v43[5] = v21;
  v43[6] = v29;
  v43[7] = v22;
  v43[8] = v28;
  v43[9] = v31;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_10016C23C(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

unint64_t sub_10016C1B0()
{
  result = qword_100273A40;
  if (!qword_100273A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A40);
  }

  return result;
}

unint64_t sub_10016C280()
{
  result = qword_100273A58;
  if (!qword_100273A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A58);
  }

  return result;
}

unint64_t sub_10016C2D8()
{
  result = qword_100273A60;
  if (!qword_100273A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A60);
  }

  return result;
}

unint64_t sub_10016C330()
{
  result = qword_100273A68;
  if (!qword_100273A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A68);
  }

  return result;
}

unint64_t sub_10016C388()
{
  result = qword_100273A70;
  if (!qword_100273A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A70);
  }

  return result;
}

BOOL sub_10016C3DC(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_10016C3FC(double *a1, double *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_10016C41C(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_10016C43C(double *a1, double *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

__n128 sub_10016C46C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10016C488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10016C4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016C534()
{
  result = qword_100273A78;
  if (!qword_100273A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A78);
  }

  return result;
}

uint64_t sub_10016C588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      v5 = *a1;
      v6 = *(a1 + 8) == *(a2 + 8);
      return v5 == *a2 && v6;
    }
  }

  return result;
}

BOOL sub_10016C5C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10016C9E4(v5, v7);
}

unint64_t sub_10016C620()
{
  result = qword_100273A80;
  if (!qword_100273A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A80);
  }

  return result;
}

uint64_t sub_10016C674()
{
  v4 = sub_10016C744();
  v5._countAndFlagsBits = 124;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  sub_10016C858();
  sub_1001C6138(v6);

  v7._countAndFlagsBits = 124;
  v7._object = 0xE100000000000000;
  sub_1001C6138(v7);
  if (*(v0 + 25))
  {
    v1._countAndFlagsBits = 80;
  }

  else
  {
    v1._countAndFlagsBits = 45;
  }

  v1._object = 0xE100000000000000;
  sub_1001C6138(v1);
  v8._countAndFlagsBits = 124;
  v8._object = 0xE100000000000000;
  sub_1001C6138(v8);
  if (*(v0 + 24))
  {
    v2._countAndFlagsBits = 30574;
  }

  else
  {
    v2._countAndFlagsBits = 11565;
  }

  v2._object = 0xE200000000000000;
  sub_1001C6138(v2);

  return v4;
}

uint64_t sub_10016C744()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x74696E4972657355;
      }

      goto LABEL_8;
    }

    return 0x7974696C697455;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x616E65746E69614DLL;
      }

LABEL_8:
      v3._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v3);

      v4._countAndFlagsBits = 41;
      v4._object = 0xE100000000000000;
      sub_1001C6138(v4);
      return 0x286E776F6E6B6E55;
    }

    return 1701736270;
  }
}

void sub_10016C858()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = round(*(v0 + 32));
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v1 > -9.22337204e18)
    {
      if (v1 < 9.22337204e18)
      {
        v2 = *(v0 + 40);
        sub_1001C6CC8();
        v4._countAndFlagsBits = 47;
        v4._object = 0xE100000000000000;
        sub_1001C6138(v4);
        v3 = round(v2);
        if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5._countAndFlagsBits = sub_1001C6CC8();
              sub_1001C6138(v5);

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

BOOL sub_10016C9E4(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1001C6D08() & 1) == 0 || *(a1 + 2) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0 || ((*(a1 + 25) ^ *(a2 + 25)) & 1) != 0)
  {
    return 0;
  }

  if ((a1[6] & 1) == 0)
  {
    return (*(a2 + 48) & 1) == 0 && a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  }

  return (*(a2 + 48) & 1) != 0;
}

uint64_t getEnumTagSinglePayload for SystemTaskRequest.TaskType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemTaskRequest.TaskType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10016CAE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016CB00(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10016CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009ADF0(a3, v25 - v10, &unk_100270A00, &qword_1001F3120);
  v12 = sub_1001C6348();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10008875C(v11, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1001C6308();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1001C60A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10016CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009ADF0(a3, v25 - v10, &unk_100270A00, &qword_1001F3120);
  v12 = sub_1001C6348();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10008875C(v11, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1001C6308();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1001C60A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t *BDSSyncEngine.shared.unsafeMutableAddressor()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  return &static BDSSyncEngine.shared;
}

Swift::Void __swiftcall BDSSyncEngine.scheduleSync()()
{
  v0 = sub_1001C5128();
  v1 = sub_1001C65B8();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1001874E8(0x656C756465686373, 0xEE002928636E7953, &v4);
    _os_log_impl(&_mh_execute_header, v0, v1, "BDSSyncEngine - %s", v2, 0xCu);
    sub_10008E7BC(v3);
  }

  sub_10017145C(1);
}

uint64_t BDSSyncEngine.addSaltChangeObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_10017C644(a1, v1);
}

uint64_t BDSSyncEngine.sendChangesIfReady()()
{
  v1[2] = v0;
  v2 = sub_1001C5268();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1001C5298();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016D408, 0, 0);
}

uint64_t sub_10016D408()
{
  v11 = v0;
  v1 = sub_1001C5128();
  v2 = sub_1001C65B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1001874E8(0xD000000000000014, 0x8000000100203A90, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEngine - %s", v3, 0xCu);
    sub_10008E7BC(v4);
  }

  if ((sub_100171770() & 1) != 0 && (v5 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine), (v0[9] = v5) != 0))
  {
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C5278();
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_10016D63C;
    v7 = v0[8];

    return CKSyncEngine.sendChanges(_:)(v7);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10016D63C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_10016D824, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10016D824()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall BDSSyncEngine.resetCloudKitZone(_:)(CKRecordZone a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v7)
  {

    v8 = a1.super.isa;
    v9 = sub_1001C5128();
    v10 = sub_1001C65B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v29);
      *(v11 + 12) = 2114;
      *(v11 + 14) = v8;
      *v12 = v8;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEngine - %s. Removing zone - %{public}@", v11, 0x16u);
      sub_10008875C(v12, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v13);
    }

    sub_10017057C();
    sub_1001C55E8();
    sub_100084528(&qword_100270570, &unk_1001F2BA0);
    v15 = sub_1001C5328();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_1001F0670;
    *&v18[v17] = [(objc_class *)v8 zoneID];
    (*(v16 + 104))(&v18[v17], enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v15);
    v19._rawValue = v18;
    sub_1001C55D8(v19);

    v20 = sub_1001C6348();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    v22[5] = v7;
    v22[6] = v8;
    v23 = v8;
    sub_10016CE38(0, 0, v6, &unk_1001F7CB0, v22);
  }

  else
  {
    v28 = sub_1001C5128();
    v24 = sub_1001C65A8();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v29);
      _os_log_impl(&_mh_execute_header, v28, v24, "BDSSyncEngine - %s: syncEngine not initialized", v25, 0xCu);
      sub_10008E7BC(v26);
    }

    else
    {
      v27 = v28;
    }
  }
}

void sub_10016DD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1001019DC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1001C5148();
    sub_100083274(v16, qword_100271020);
    v17 = sub_1001C5128();
    v18 = sub_1001C6598();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not save metadata. No BaseURL", v19, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
    sub_1001C4AA8();
    sub_1001C4828();
    swift_allocObject();
    sub_1001C4818();
    type metadata accessor for BDSSyncEngineStateMetadata(0);
    sub_1001826B0(&unk_100273D60, type metadata accessor for BDSSyncEngineStateMetadata, &unk_1001F374C);
    v20 = sub_1001C4808();
    v22 = v21;

    sub_1001C4BB8();
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C5148();
    sub_100083274(v23, qword_100271020);
    (*(v7 + 16))(v10, v13, v6);
    v24 = sub_1001C5128();
    v25 = sub_1001C65B8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = v26;
      v37 = swift_slowAlloc();
      v39 = v37;
      *v26 = 136315138;
      sub_1001826B0(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = v24;
      v27 = sub_1001C6CC8();
      v29 = v28;
      v38 = v22;
      v30 = *(v7 + 8);
      v30(v10, v6);
      v31 = sub_1001874E8(v27, v29, &v39);

      v33 = v35;
      v32 = v36;
      *(v36 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v33, v25, "Saved sync engine metadata at: %s", v32, 0xCu);
      sub_10008E7BC(v37);

      sub_1000887D0(v20, v38);

      v30(v13, v6);
      v30(v15, v6);
    }

    else
    {
      sub_1000887D0(v20, v22);

      v34 = *(v7 + 8);
      v34(v10, v6);
      v34(v13, v6);
      v34(v15, v6);
    }
  }
}

uint64_t sub_10016E4A0@<X0>(void *a3@<X8>)
{
  v50 = a3;
  v3 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v49 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1001019DC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1001C5148();
    sub_100083274(v17, qword_100271020);
    v18 = sub_1001C5128();
    v19 = sub_1001C6598();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v49;
    v21 = v50;
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not get metadata. No BaseURL", v23, 2u);
    }

    v24 = 1;
  }

  else
  {
    v48 = v7;
    (*(v7 + 32))(v16, v5, v6);
    sub_1001C4AA8();
    v25 = [objc_opt_self() defaultManager];
    sub_1001C4AF8();
    v26 = sub_1001C5FE8();

    v27 = [v25 fileExistsAtPath:v26];

    if (v27)
    {
      v47 = v16;
      v28 = sub_1001C4B48();
      v21 = v50;
      v40 = v28;
      v42 = v41;
      sub_1001C4788();
      swift_allocObject();
      sub_1001C4778();
      sub_1001826B0(&qword_100273D78, type metadata accessor for BDSSyncEngineStateMetadata, &unk_1001F3774);
      v22 = v49;
      sub_1001C4768();

      sub_1000887D0(v40, v42);
      v44 = *(v48 + 8);
      v44(v14, v6);
      v44(v47, v6);
      v24 = 0;
    }

    else
    {
      v21 = v50;
      if (qword_10026EBE0 != -1)
      {
        swift_once();
      }

      v29 = sub_1001C5148();
      sub_100083274(v29, qword_100271020);
      v30 = v48;
      (*(v48 + 16))(v11, v14, v6);
      v31 = sub_1001C5128();
      v32 = sub_1001C6598();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        *v33 = 136315138;
        sub_1001826B0(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v34 = sub_1001C6CC8();
        v36 = v35;
        v47 = v16;
        v37 = *(v30 + 8);
        v37(v11, v6);
        v38 = sub_1001874E8(v34, v36, &v51);
        v21 = v50;

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Could not locate metadata file at %s", v33, 0xCu);
        sub_10008E7BC(v46);

        v37(v14, v6);
        v37(v47, v6);
      }

      else
      {

        v39 = *(v30 + 8);
        v39(v11, v6);
        v39(v14, v6);
        v39(v16, v6);
      }

      v24 = 1;
      v22 = v49;
    }
  }

  return (*(*(v22 - 8) + 56))(v21, v24, 1, v22);
}

BDSCloudSyncDiagnosticSyncEngineInfo __swiftcall BDSSyncEngine.diagnosticSyncEngineInfo()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 establishedSalt];
  }

  else
  {
    v3 = 0;
  }

  result.super.isa = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:v3];
  result._establishedSalt = v4;
  return result;
}

uint64_t BDSSyncEngine.clearMetadata()()
{
  sub_100084528(&unk_1002718D0, &qword_1001F4558);
  sub_1001C6688();
  return v1;
}

uint64_t BDSSyncEngine.fetchRemoteChanges()()
{
  v1[2] = v0;
  v2 = sub_1001C52E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1001C5318();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016F0A0, 0, 0);
}

uint64_t sub_10016F0A0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C52F8();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10016F1E4;
    v3 = v0[8];

    return CKSyncEngine.fetchChanges(_:)(v3);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_10016F1E4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_10016F3CC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(0);
  }
}

uint64_t sub_10016F3CC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_10016F440()
{
  result = [objc_allocWithZone(type metadata accessor for BDSSyncEngine(0)) init];
  static BDSSyncEngine.shared = result;
  return result;
}

id static BDSSyncEngine.shared.getter()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = static BDSSyncEngine.shared;

  return v1;
}

Swift::Void __swiftcall BDSSyncEngine.setDatabase(_:config:)(CKDatabase _, BCCloudKitConfiguration *config)
{
  v3 = v2;
  v39 = config;
  v40 = sub_1001C5248();
  v5 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = sub_100084528(&unk_100273AC0, &qword_1001F7CC0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v38 - v12);
  v14 = sub_100084528(&qword_100271108, &unk_1001F3720);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_1001C5128();
  v21 = sub_1001C65B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v17;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Setting up CKSyncEngine...", v22, 2u);
    v17 = v38;
  }

  sub_10016E4A0(v13);
  v23 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
  {
    sub_10008875C(v13, &unk_100273AC0, &qword_1001F7CC0);
    v24 = sub_1001C55A8();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  }

  else
  {
    sub_10009ADF0(v13 + *(v23 + 20), v19, &qword_100271108, &unk_1001F3720);
    sub_1001024FC(v13);
  }

  sub_10009ADF0(v19, v17, &qword_100271108, &unk_1001F3720);
  sub_1001826B0(&qword_100273AD0, type metadata accessor for BDSSyncEngine, &protocol conformance descriptor for BDSSyncEngine);
  v25 = _.super.isa;
  v26 = v3;
  sub_1001C5238();

  sub_1001C5228();
  v27 = [(BCCloudKitConfiguration *)v39 dbSubscriptionID];
  if (v27)
  {
    v28 = v27;
    sub_1001C6018();
  }

  sub_1001C5218();
  v29 = v40;
  (*(v5 + 16))(v8, v10, v40);
  sub_1001C55F8();
  swift_allocObject();
  *&v26[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine] = sub_1001C5608();

  sub_10016FB58();
  v30 = [objc_allocWithZone(BDSSyncEngineSaltManager) initWithDatabase:v25 observer:v26];
  v31 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v32 = *&v26[v31];
  *&v26[v31] = v30;

  swift_beginAccess();
  v33 = *&v26[v31];
  if (v33)
  {
    swift_endAccess();
    v34 = swift_allocObject();
    *(v34 + 16) = v26;
    aBlock[4] = sub_10017CA70;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B3D8;
    v35 = _Block_copy(aBlock);
    v36 = v26;
    v37 = v33;

    [v37 refreshSalt:v35];
    _Block_release(v35);

    (*(v5 + 8))(v10, v29);
    sub_10008875C(v19, &qword_100271108, &unk_1001F3720);
  }

  else
  {
    (*(v5 + 8))(v10, v29);
    sub_10008875C(v19, &qword_100271108, &unk_1001F3720);
    swift_endAccess();
  }
}