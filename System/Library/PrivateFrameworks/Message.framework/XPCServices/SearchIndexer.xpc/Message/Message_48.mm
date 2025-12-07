void sub_100312568(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v10 = v9;
  v81 = a4;
  v76 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v76);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = &v71 - v20;
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v24 = v9[3];
  v86 = v9[2];
  v87 = v24;
  v88[0] = v9[4];
  *(v88 + 12) = *(v9 + 76);
  v25 = v9[1];
  v84 = *v9;
  v85 = v25;
  v80 = a1;
  v26 = sub_100315BFC(a1);
  v27 = 0.0;
  if (v26[2])
  {
    v28 = sub_10035E1B0(a2, a3);
    if (v29)
    {
      v27 = *(v26[7] + 8 * v28);
    }
  }

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    a5 = sub_1003364B8(a5);
    goto LABEL_29;
  }

  v77 = a5;
  v78 = a6;
  v79 = a7;
  v82 = (a8 * 8);
  a5 = v86;
  v30 = *(v86 + 16);
  if (!v30)
  {
LABEL_15:
    v33 = v82;
    sub_10031BFB8(v82, v23, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83 = v37;
      *v36 = 136446210;
      v38 = sub_1004A5864();
      v40 = v39;
      sub_10031BF58(v23, _s6LoggerVMa_1);
      v41 = sub_10015BA6C(v38, v40, &v83);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] Unknown account did go above data threshold.", v36, 0xCu);
      sub_1000197E0(v37);

LABEL_20:

LABEL_26:
      v61 = v78;
      v62 = v79;
LABEL_33:
      sub_1003107C4(v80, v81, v77, v61, v62, v33);
      return;
    }

    v50 = v23;
LABEL_25:
    sub_10031BF58(v50, _s6LoggerVMa_1);
    goto LABEL_26;
  }

  a6 = 0;
  a8 = 5;
  while (1)
  {
    v31 = &a5[a8];
    v32 = a5[a8 + 1] == a2 && a5[a8 + 2] == a3;
    if (v32 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    a6 = (a6 + 1);
    a8 += 6;
    if (v30 == a6)
    {
      goto LABEL_15;
    }
  }

  if (*(v31 + 28))
  {
    v33 = v82;
    v42 = v75;
    sub_10031BFB8(v82, v75, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v43 = sub_1004A6014();
    if (os_log_type_enabled(v34, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v83 = v45;
      *v44 = 136446210;
      v46 = sub_1004A5864();
      v48 = v47;
      sub_10031BF58(v42, _s6LoggerVMa_1);
      v49 = sub_10015BA6C(v46, v48, &v83);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v34, v43, "[%{public}s] Account did go above data threshold, but has no active sync.", v44, 0xCu);
      sub_1000197E0(v45);

      goto LABEL_20;
    }

    v50 = v42;
    goto LABEL_25;
  }

  v75 = v27;
  v51 = *(v31 + 6);
  v52 = v74;
  sub_10031BFB8(v82, v74, _s6LoggerVMa_1);
  v53 = sub_1004A4A54();
  v54 = sub_1004A6014();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v72 = v51;
    v56 = v55;
    v73 = swift_slowAlloc();
    v83 = v73;
    *v56 = 136446722;
    v57 = sub_1004A5864();
    v59 = v58;
    sub_10031BF58(v52, _s6LoggerVMa_1);
    v60 = sub_10015BA6C(v57, v59, &v83);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2048;
    *(v56 + 14) = v75;
    *(v56 + 22) = 1024;
    *(v56 + 24) = v72;
    _os_log_impl(&_mh_execute_header, v53, v54, "[%{public}s] Account did go above data threshold (run time: %ld). Completing its sync #%u.", v56, 0x1Cu);
    sub_1000197E0(v73);
  }

  else
  {

    sub_10031BF58(v52, _s6LoggerVMa_1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (a6 < a5[2])
  {
    v69 = &a5[a8];
    v61 = v78;
    if ((a5[a8 + 3] & 0x100000000) == 0)
    {
      v70 = v78;
      sub_10034A348(*(v69 + 6), v63, v64, v78, v65, v66, v67, v68, v71, v72, v73, SHIDWORD(v73), v74, SHIDWORD(v74), v75, SHIDWORD(v75), v76);
      v61 = v70;
    }

    *(v69 + 6) = 0;
    *(v69 + 28) = 1;
    *(v10 + 4) = a5;
    v33 = v82;
    v62 = v79;
    goto LABEL_33;
  }

  __break(1u);
}

double sub_100312C34@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10031B228(a1, &v8);

  sub_10031B86C(a1, a2, &v8);

  result = *&v8;
  v7 = v9[0];
  *a3 = v8;
  *(a3 + 16) = v7;
  *(a3 + 29) = *(v9 + 13);
  return result;
}

void sub_100312CA8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t), uint64_t a7, void *a8, __n128 a9)
{
  v69 = a8;
  v66 = a6;
  v67 = a7;
  v64 = a4;
  v65 = a5;
  v63 = a1;
  v62 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v62);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v68 = v9;
  v19 = *(v9 + 32);
  v20 = v19[2];
  if (!v20)
  {
LABEL_9:
    v25 = v69;
    sub_10031BFB8(v69, v18, _s6LoggerVMa_1);
    v26 = sub_1004A4A54();
    v27 = sub_1004A6014();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v70 = v29;
      *v28 = 136446210;
      v30 = sub_1004A5864();
      v32 = v31;
      sub_10031BF58(v18, _s6LoggerVMa_1);
      v33 = sub_10015BA6C(v30, v32, &v70);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Received server-unavailable for unknown account.", v28, 0xCu);
      sub_1000197E0(v29);

LABEL_14:

LABEL_27:
      sub_1003107C4(v63, v64, v65, v66, v67, v25);
      return;
    }

    v42 = v18;
LABEL_19:
    sub_10031BF58(v42, _s6LoggerVMa_1);
    goto LABEL_27;
  }

  v21 = 0;
  v22 = 5;
  while (1)
  {
    v23 = &v19[v22];
    v24 = v19[v22 + 1] == a2 && v19[v22 + 2] == a3;
    if (v24 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    ++v21;
    v22 += 6;
    if (v20 == v21)
    {
      goto LABEL_9;
    }
  }

  if (*(v23 + 28))
  {
    v25 = v69;
    v34 = v61;
    sub_10031BFB8(v69, v61, _s6LoggerVMa_1);
    v26 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v26, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v70 = v37;
      *v36 = 136446210;
      v38 = sub_1004A5864();
      v40 = v39;
      sub_10031BF58(v34, _s6LoggerVMa_1);
      v41 = sub_10015BA6C(v38, v40, &v70);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v26, v35, "[%{public}s] Received server-unavailable, but the account has no active sync.", v36, 0xCu);
      sub_1000197E0(v37);

      goto LABEL_14;
    }

    v42 = v34;
    goto LABEL_19;
  }

  v43 = *(v23 + 6);
  sub_10031BFB8(v69, v15, _s6LoggerVMa_1);
  v44 = sub_1004A4A54();
  v45 = sub_1004A6014();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    LODWORD(v61) = v43;
    v47 = v46;
    v48 = swift_slowAlloc();
    v70 = v48;
    *v47 = 136446466;
    v49 = sub_1004A5864();
    v51 = v50;
    sub_10031BF58(v15, _s6LoggerVMa_1);
    v52 = sub_10015BA6C(v49, v51, &v70);

    *(v47 + 4) = v52;
    *(v47 + 12) = 1024;
    *(v47 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s] Received server-unavailable. Completing sync #%u.", v47, 0x12u);
    sub_1000197E0(v48);
  }

  else
  {

    sub_10031BF58(v15, _s6LoggerVMa_1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1003364B8(v19);
  }

  if (v21 < v19[2])
  {
    v60 = &v19[v22];
    if ((v19[v22 + 3] & 0x100000000) == 0)
    {
      sub_10034A348(*(v60 + 6), v53, v54, v55, v56, v57, v58, v59, v61, SHIDWORD(v61), v62, SHIDWORD(v62), v63, SHIDWORD(v63), v64, SHIDWORD(v64), v65);
    }

    *(v60 + 6) = 0;
    *(v60 + 28) = 1;
    v25 = v69;
    *(v68 + 32) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void sub_100313244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v9 = sub_1004A5244();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v35 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1004A5274();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v30[0] = *(a1 + 24);
    v30[1] = a1;
    v31 = a4;
    v32 = a5;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10034F590(0, v13, 0);
    v14 = aBlock[0];
    v15 = (a2 + 40);
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = HIBYTE(*v15) & 0xF;
      if ((*v15 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        break;
      }

      aBlock[0] = v14;
      v20 = v14[2];
      v19 = v14[3];

      if (v20 >= v19 >> 1)
      {
        sub_10034F590((v19 > 1), v20 + 1, 1);
        v14 = aBlock[0];
      }

      v14[2] = v20 + 1;
      v21 = &v14[2 * v20];
      v21[4] = v16;
      v21[5] = v17;
      v15 += 7;
      if (!--v13)
      {
        a4 = v31;
        a5 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_11:
    v22 = sub_100374688(v14);

    __chkstk_darwin(v23);
    v30[-4] = sub_100313640;
    v30[-3] = 0;
    v24 = v33;
    v30[-2] = v22;
    v30[-1] = v24;

    v25 = sub_100316BF8(sub_10031B170, &v30[-6], a2);

    v26 = swift_allocObject();
    v26[2] = a4;
    v26[3] = a5;
    v26[4] = v25;
    aBlock[4] = sub_10031B1F8;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3678;
    v27 = _Block_copy(aBlock);

    sub_1004A5254();
    v39 = _swiftEmptyArrayStorage;
    sub_10022AAC8();
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    v28 = v35;
    v29 = v38;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v27);
    (*(v37 + 8))(v28, v29);
    (*(v34 + 8))(v12, v36);
  }
}

uint64_t *sub_100313640(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100313688(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100310DE0(a3, a4, a1);
  }

  return result;
}

uint64_t sub_100313704(int a1, char *a2, char *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a2;
  v61 = a7;
  v59 = a6;
  v14 = _s6LoggerVMa_0(0);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v20 = *a4;
  v21 = a4[1];
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v54 = a1;
    v23 = a3;
    v24 = a4[6];
    v55 = a4[5];
    v56 = v24;
    v57 = a8;
    type metadata accessor for SearchIndexPersistence(0);
    a8 = swift_allocObject();
    *(a8 + 56) = 0;
    sub_10000C9C0(&qword_1005D8CB0, &qword_1004F5F38);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(a8 + 80) = v25;
    *(a8 + 104) = 0;
    a3 = _swiftEmptyArrayStorage;
    *(a8 + 128) = _swiftEmptyArrayStorage;
    type metadata accessor for Cache();
    swift_allocObject();

    Cache.init()();
    *(a8 + 136) = v26;
    *(a8 + 152) = sub_100350E90(_swiftEmptyArrayStorage);
    *(a8 + 160) = 0;
    v58 = a5;
    if ([a5 concurrencyType] == 1)
    {
      v53 = v16;
      v16 = v23;
      a3 = v14;
      v14 = v59;
      LOBYTE(a5) = v54;
      v52 = a9;
      v27 = qword_1005D8778;

      if (v27 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_6:
  v28 = sub_1004A4A74();
  v29 = sub_1001C203C(v28, qword_1005DE2D0);
  (*(*(v28 - 8) + 16))(v19, v29, v28);
  v30.value._countAndFlagsBits = v20;
  v30.value._object = v21;
  v31.rawValue = AccountLoggerID.init(accountIdentifier:)(v30).rawValue;
  rawValue = v31.rawValue;
  v50 = a3;
  v32 = &v19[*(a3 + 5)];
  *v32 = a5;
  *(v32 + 1) = v31;
  *(a8 + 16) = v20;
  *(a8 + 24) = v21;
  v33 = v56;
  *(a8 + 32) = v55;
  *(a8 + 40) = v33;
  v34 = v58;
  *(a8 + 48) = v58;
  *(a8 + 88) = v60;
  *(a8 + 96) = v16;
  v35 = v19;
  v36 = v61;
  *(a8 + 64) = v14;
  *(a8 + 72) = v36;
  v37 = v52;
  *(a8 + 112) = v57;
  *(a8 + 120) = v37;
  *(a8 + 144) = _swiftEmptyArrayStorage;
  v60 = v35;
  sub_10031BFB8(v35, a8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, _s6LoggerVMa_0);

  v38 = v34;

  v39 = v53;
  sub_1004A4A64();
  v40 = v39 + *(v50 + 5);
  *v40 = a5;
  *(v40 + 4) = rawValue;
  sub_10031BE68(v39, a8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = objc_opt_self();

  v43 = [v42 defaultCenter];
  if (qword_1005D8770 != -1)
  {
    swift_once();
  }

  v44 = qword_1005D9368;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_10031BECC;
  *(v45 + 24) = v41;
  aBlock[4] = sub_10031BED4;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100307F04;
  aBlock[3] = &unk_1005B3830;
  v46 = _Block_copy(aBlock);
  v47 = v44;

  v48 = [v43 addObserverForName:v47 object:v36 queue:0 usingBlock:v46];
  _Block_release(v46);

  sub_10031BF58(v60, _s6LoggerVMa_0);

  *(a8 + 104) = v48;
  swift_unknownObjectRelease();
  return a8;
}

uint64_t sub_100313C28()
{
  v0 = sub_100307550();
  swift_beginAccess();
  v1 = *(v0 + 16);

  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v3 = 0;
    v4 = 0x746E756F636361;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    p_attr = (&stru_1005CAFF8 + 8);
    v28 = v1;
    while (1)
    {
      if (v5)
      {
        v10 = sub_1004A6794();
      }

      else
      {
        if (v3 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(v1 + 8 * v3 + 32);
      }

      v11 = v10;
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (([v10 p_attr[429]] & 1) == 0)
      {
        v13 = [v11 managedObjectContext];
        if (v13)
        {

          v14 = sub_1004A5734();
          [v11 willAccessValueForKey:v14];

          v15 = [v11 primitiveAccount];
          if (!v15)
          {
            goto LABEL_17;
          }

          v16 = v15;
          v17 = i;
          v18 = v6;
          v19 = v5;
          v20 = v4;
          v21 = sub_1004A5764();
          v23 = v22;

          v24 = HIBYTE(v23) & 0xF;
          v25 = v21 & 0xFFFFFFFFFFFFLL;
          v4 = v20;
          v5 = v19;
          v6 = v18;
          i = v17;
          v1 = v28;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v25;
          }

          if (!v24)
          {

LABEL_17:
            v23 = 0;
          }

          v26 = sub_1004A5734();
          [v11 didAccessValueForKey:v26];

          p_attr = &stru_1005CAFF8.attr;
          if (v23)
          {

            if (qword_1005D8758 != -1)
            {
              swift_once();
            }

            v8 = sub_1004A4A74();
            v9 = sub_1001C203C(v8, qword_1005D8B78);
            sub_100313E98(v9);
          }
        }
      }

      ++v3;
      if (v12 == i)
      {
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

uint64_t sub_100313E98(uint64_t a1)
{
  v2 = sub_1004A44E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v83 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v83 - v11;
  result = sub_10033A4C4(v10);
  if (!v14)
  {
    return result;
  }

  v90 = a1;
  v91 = v14;
  v88 = result;
  sub_1004A44D4();
  v15 = sub_10033A6CC();
  v92 = *(v3 + 16);
  v92(v8, v12, v2);
  sub_1004A4464();
  v17 = round(v16 / 21600.0);
  v18 = v2;
  v19 = *(v3 + 8);
  v20 = v18;
  v93 = v3 + 8;
  result = v19(v8);
  v21 = v19;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v17 <= -9.22337204e18)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v17 >= 9.22337204e18)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v23 = v17;
    result = swift_allocObject();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(result + 16) = v17;
    v27 = -1;
    v28 = -1 << *(v15 + 32);
    if (-v28 < 64)
    {
      v27 = ~(-1 << -v28);
    }

    v29 = v27 & *(v15 + 64);
    v30 = v23 - 4;
    v31 = __OFSUB__(v23, 4);
    v32 = v23 + 1;
    v33 = __OFADD__(v23, 1);
    v22 = v20;
    while (v29)
    {
      if (v31)
      {
        goto LABEL_32;
      }

LABEL_17:
      if (v33)
      {
        goto LABEL_75;
      }

      if (v32 <= v30)
      {
        goto LABEL_76;
      }

      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v35 = v34 | (v26 << 6);
      result = *(*(v15 + 48) + 8 * v35);
      if (result > v30 && v32 >= result)
      {
        v37 = (*(v15 + 56) + 72 * v35);
        result = *v37;
        v38 = __OFADD__(v24, *v37);
        v24 += *v37;
        if (v38)
        {
          goto LABEL_83;
        }

        v39 = v37[1];
        v38 = __OFADD__(v25, v39);
        v25 += v39;
        if (v38)
        {
          goto LABEL_84;
        }
      }
    }

    result = v26;
    do
    {
      v40 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_74;
      }

      if (v40 >= ((63 - v28) >> 6))
      {
        goto LABEL_33;
      }

      v29 = *(v15 + 64 + 8 * v40);
      ++result;
    }

    while (!v29);
    v26 = v40;
    if (!v31)
    {
      goto LABEL_17;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v86 = v25;
    v87 = v24;
    sub_100020D08(v15);
  }

  else
  {

    v86 = 0;
    v87 = 0;
    v22 = v20;
  }

  v41 = sub_10033A6CC();
  v92(v5, v12, v22);
  sub_1004A4464();
  v43 = round(v42 / 21600.0);
  result = v21(v5, v22);
  v89 = v21;
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {

    v44 = 0;
    v45 = 0;
    v92 = 0;
    v84 = 0;
    v85 = 0;
    v46 = v91;
LABEL_69:
    v67 = sub_10033A6CC();
    v68 = sub_1003734D8(v12, v67);

    v69 = sub_10033A6CC();
    v70 = sub_10037382C(v12, v69);

    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v90 = v68;
      v74 = v73;
      v75 = swift_slowAlloc();
      v83 = v45;
      v76 = v75;
      v94 = v75;
      *v74 = 136317442;
      sub_100236568(8, v88, v46);
      v91 = v22;
      LODWORD(v88) = v70;

      v77 = sub_1004A5864();
      v79 = v78;

      v80 = sub_10015BA6C(v77, v79, &v94);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2048;
      v81 = v86;
      *(v74 + 14) = v87;
      *(v74 + 22) = 2048;
      *(v74 + 24) = v81;
      *(v74 + 32) = 2048;
      *(v74 + 34) = v44;
      *(v74 + 42) = 2048;
      *(v74 + 44) = v83;
      *(v74 + 52) = 2048;
      *(v74 + 54) = v92;
      *(v74 + 62) = 2048;
      v82 = v84;
      *(v74 + 64) = v85;
      *(v74 + 72) = 2048;
      *(v74 + 74) = v82;
      *(v74 + 82) = 2048;
      *(v74 + 84) = v90;
      *(v74 + 92) = 1024;
      *(v74 + 94) = v88 & 1;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s: received %{iec-bytes}ld, sent %{iec-bytes}ld, messages indexed %ld, updated flags %ld, deleted messages %ld, complete re-index %ld, message re-donate requests %ld, over quota count %ld, was unavailable: %{BOOL}d", v74, 0x62u);
      sub_1000197E0(v76);

      return v89(v12, v91);
    }

    else
    {

      return v89(v12, v22);
    }
  }

  if (v43 <= -9.22337204e18)
  {
    goto LABEL_81;
  }

  if (v43 < 9.22337204e18)
  {
    v47 = v43;
    result = swift_allocObject();
    v44 = 0;
    v45 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    *(result + 16) = v43;
    v52 = -1;
    v53 = -1 << *(v41 + 32);
    if (-v53 < 64)
    {
      v52 = ~(-1 << -v53);
    }

    v54 = v52 & *(v41 + 64);
    v55 = v47 - 4;
    v56 = __OFSUB__(v47, 4);
    v57 = v47 + 1;
    v58 = __OFADD__(v47, 1);
    v46 = v91;
    while (v54)
    {
      if (v56)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        v84 = v50;
        v85 = v49;
        v92 = v48;
        sub_100020D08(v41);

        goto LABEL_69;
      }

LABEL_49:
      if (v58)
      {
        goto LABEL_77;
      }

      if (v57 <= v55)
      {
        goto LABEL_78;
      }

      v59 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v60 = v59 | (v51 << 6);
      result = *(*(v41 + 48) + 8 * v60);
      if (result > v55 && v57 >= result)
      {
        v62 = *(v41 + 56) + 72 * v60;
        v64 = *(v62 + 16);
        v63 = (v62 + 16);
        result = v64;
        v38 = __OFADD__(v44, v64);
        v44 += v64;
        if (v38)
        {
          goto LABEL_85;
        }

        result = v63[1];
        v38 = __OFADD__(v45, result);
        v45 += result;
        if (v38)
        {
          goto LABEL_86;
        }

        result = v63[2];
        v38 = __OFADD__(v48, result);
        v48 = (v48 + result);
        if (v38)
        {
          goto LABEL_87;
        }

        result = v63[3];
        v38 = __OFADD__(v49, result);
        v49 += result;
        if (v38)
        {
          goto LABEL_88;
        }

        v65 = v63[4];
        v38 = __OFADD__(v50, v65);
        v50 += v65;
        if (v38)
        {
          goto LABEL_89;
        }
      }
    }

    result = v51;
    while (1)
    {
      v66 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      if (v66 >= ((63 - v53) >> 6))
      {
        goto LABEL_68;
      }

      v54 = *(v41 + 64 + 8 * v66);
      ++result;
      if (v54)
      {
        v51 = v66;
        if (!v56)
        {
          goto LABEL_49;
        }

        goto LABEL_67;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_100314634(uint64_t a1)
{
  v1 = *(a1 + 200);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10031B310;
  *(v5 + 24) = v4;
  *(v1 + 16) = sub_10031B34C;
  *(v1 + 24) = v5;

  os_unfair_lock_unlock((v1 + 32));

  v10[0] = sub_100323FA0();
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v3(v10);
}

void sub_100314738(int64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = -v3;
    v5 = (v2 + 68);
    v6 = 1;
    v37 = -v3;
    do
    {
      v7 = *v5;
      v8 = *(v5 - 1);
      v9 = *(v5 - 12);
      v10 = *(v5 - 20);
      v11 = *(v5 - 36);

      if (!v11)
      {
        break;
      }

      oslog = v7;
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v12 = sub_1004A4A54();
      v41 = sub_1004A6034();
      if (os_log_type_enabled(v12, v41))
      {
        v40 = v8;
        log = v12;
        v13 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v47 = v38;
        *v13 = 134218498;
        *(v13 + 4) = v6;
        *(v13 + 12) = 2082;

        sub_100236568(8, v10, v9);

        swift_bridgeObjectRelease_n();
        v14 = sub_1004A5864();
        v16 = v15;

        v17 = sub_10015BA6C(v14, v16, &v47);

        *(v13 + 14) = v17;
        *(v13 + 22) = 1024;
        if (oslog)
        {
          v40 = *SyncRequest.ID.serverTriggered.unsafeMutableAddressor();
        }

        *(v13 + 24) = v40;

        _os_log_impl(&_mh_execute_header, log, v41, "[%ld] %{public}s, req: #%u", v13, 0x1Cu);
        sub_1000197E0(v38);

        v4 = v37;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      ++v6;
      v5 += 48;
    }

    while (v4 + v6 != 1);
  }

  v18 = *(v1 + 64);
  v47 = *(v1 + 48);
  v48 = v18;
  v49 = *(v1 + 80);
  v19 = v47;
  if ((*(&v47 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v20 = v48;
  sub_10000E268(&v47, &v45, &qword_1005D8C90, &qword_1004F5F10);
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_100025F40(&v47, &qword_1005D8C90, &qword_1004F5F10);
    return;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v44 = v24;
  *v23 = 67109634;
  *(v23 + 4) = DWORD2(v19);
  *(v23 + 8) = 2048;
  *(v23 + 10) = v19;
  *(v23 + 18) = 2082;
  v25 = static MonotonicTime.now()();
  v26 = v25 - v20;
  if (v25 >= v20)
  {
    if (!__OFSUB__(v25, v20))
    {
LABEL_24:
      v29 = v26 / 1000000000.0;
      v30 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v30 setUnitsStyle:1];
      [v30 setAllowedUnits:224];
      [v30 setAllowsFractionalUnits:1];
      [v30 setMaximumUnitCount:1];
      [v30 setCollapsesLargestUnit:1];
      v31 = [v30 stringFromTimeInterval:v29];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1004A5764();
        v35 = v34;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1004A5D34();

        v33 = v45;
        v35 = v46;
      }

      v36 = sub_10015BA6C(v33, v35, &v44);

      *(v23 + 20) = v36;
      _os_log_impl(&_mh_execute_header, v21, v22, "Request #%u {%ld}, running for %{public}s", v23, 0x1Cu);
      sub_1000197E0(v24);

      sub_100025F40(&v47, &qword_1005D8C90, &qword_1004F5F10);

      return;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (__OFSUB__(v20, v25))
  {
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25 - v20;
  if (!__OFSUB__(0, v20 - v25))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_17:
  osloga = sub_1004A4A54();
  v27 = sub_1004A6034();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v19;
    _os_log_impl(&_mh_execute_header, osloga, v27, "No active request {%ld}.", v28, 0xCu);
  }
}

void sub_100314D40(double *a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v64 = v5[4];
  v13 = *(v64 + 16);
  v68 = v5[7];
  if (v68 < 0)
  {

    v5[3] = _swiftEmptyArrayStorage;
    v50 = sub_1004A4A74();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v12, a4, v50);
    (*(v51 + 56))(v12, 0, 1, v50);
    sub_10031C31C(a1, a2, a3, v12, v5);
LABEL_28:
    sub_100025F40(v12, &qword_1005D5968, &unk_1004E9180);
    sub_100316524(v5, v13);
    return;
  }

  v14 = v5[6];
  v15 = v5[9];
  v16 = v5[10];
  v63 = v5[8];
  v62 = v15;
  v61 = v16;
  if (!v13)
  {

LABEL_27:
    v52 = sub_1004A4A74();
    v53 = *(v52 - 8);
    (*(v53 + 16))(v12, a4, v52);
    (*(v53 + 56))(v12, 0, 1, v52);
    v54 = v68;
    sub_10031C80C(a1, a2, a3, v12, v5, v68);
    sub_10031B5C0(v14, v54, v63, v62, v61);
    goto LABEL_28;
  }

  v56 = a1;
  v57 = a2;
  v58 = a3;
  v59 = v12;
  v55 = v14;
  sub_10031B5D0(v14, v68);

  v73 = 0;
  v18 = (v17 + 72);
  *&v19 = 136446210;
  v65 = v19;
  v60 = v13;
  v20 = v13;
  v66 = a4;
  v67 = v5;
  while (1)
  {
    v21 = *(v18 - 5);
    v22 = *(v18 - 4);
    v24 = *(v18 - 3);
    v23 = *(v18 - 2);
    v25 = *(v18 - 2);
    v26 = *(v18 - 4);
    v27 = *v18;
    v75[0] = v21;
    v75[1] = v22;
    v75[2] = v24;
    v75[3] = v23;
    v76 = v25;
    v77 = v26;
    v78 = v27;
    if ((v26 & 1) == 0 && v25 == v68)
    {
      goto LABEL_5;
    }

    swift_bridgeObjectRetain_n();

    v28 = sub_1004A4A54();
    v29 = sub_1004A6034();
    v30 = os_log_type_enabled(v28, v29);
    v71 = v22;
    v72 = v21;
    v70 = v23;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v74 = v32;
      *v31 = v65;
      sub_100236568(8, v24, v23);

      v33 = sub_1004A5864();
      v35 = v34;
      v5 = v67;

      v36 = sub_10015BA6C(v33, v35, &v74);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Account %{public}s did complete.", v31, 0xCu);
      sub_1000197E0(v32);
    }

    else
    {
    }

    __chkstk_darwin(v37);
    *(&v55 - 2) = v75;
    v38 = v73;
    v39 = sub_10035885C(sub_10031B740, (&v55 - 4));
    a4 = v5[3];
    v40 = a4[2];
    v41 = v40 - v39;
    if (v40 < v39)
    {
      break;
    }

    v42 = v39;
    if (v39 < 0)
    {
      goto LABEL_30;
    }

    v69 = &v55;
    v43 = v39 - v40;
    v44 = v39;
    if (__OFADD__(v40, v39 - v40))
    {
      goto LABEL_31;
    }

    v73 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v44 > a4[3] >> 1)
    {
      if (v40 <= v44)
      {
        v46 = v40 - v41;
      }

      else
      {
        v46 = v40;
      }

      a4 = sub_10035D4E4(isUniquelyReferenced_nonNull_native, v46, 1, a4);
    }

    v5 = a4 + 4;
    sub_10000C9C0(&qword_1005D8C98, &qword_1004F5F18);
    swift_arrayDestroy();
    if (v40 != v42)
    {
      memmove(&a4[8 * v42 + 4], &v5[8 * v40], (a4[2] - v40) << 6);
      v47 = a4[2];
      v48 = __OFADD__(v47, v43);
      v49 = v47 - v41;
      if (v48)
      {
        __break(1u);
LABEL_24:

        v13 = v60;
        v12 = v59;
        a3 = v58;
        a2 = v57;
        a1 = v56;
        v14 = v55;
        goto LABEL_27;
      }

      a4[2] = v49;
    }

    v5 = v67;
    v67[3] = a4;
    a4 = v66;
LABEL_5:
    v18 += 6;
    if (!--v20)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void *sub_100315324(void *result)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 + 56);
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_100361EC4(v15, v8, v7);

      v6 += 6;
      if (v3 == v5)
      {
        result = v4;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v9 = *(v1 + 48);
    v15[2] = *(v1 + 32);
    v15[3] = v9;
    v16[0] = *(v1 + 64);
    *(v16 + 12) = *(v1 + 76);
    v10 = *(v1 + 16);
    v15[0] = *v1;
    v15[1] = v10;
    v11 = *&v10;
    v12 = sub_100315BFC(result);
    v13 = sub_100316600(v12, _swiftEmptySetSingleton, v1, 3, v11);

    if (v13[2] <= _swiftEmptySetSingleton[2] >> 3)
    {

      sub_100317710(v13);
      v14 = _swiftEmptySetSingleton;
    }

    else
    {

      v14 = sub_10031798C(v13, _swiftEmptySetSingleton);
    }

    if (_swiftEmptySetSingleton[2] <= v13[2] >> 3)
    {
      sub_100317710(_swiftEmptySetSingleton);
    }

    else
    {
      sub_10031798C(_swiftEmptySetSingleton, v13);
    }

    return v14;
  }

  return result;
}

uint64_t sub_1003154D0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void (*a5)(uint64_t *__return_ptr, _OWORD *)@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v8 = *(a3 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v13 = result;
    v50 = a5;
    v14 = (v8 + 32);
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v47[2] = v14[2];
      v47[3] = v17;
      v47[0] = v15;
      v47[1] = v16;
      v18 = v14[1];
      v48[0] = *v14;
      v48[1] = v18;
      v48[2] = v14[2];
      v49 = *(v14 + 6);
      result = v15;
      v19 = HIBYTE(*(&v15 + 1)) & 0xFLL;
      if ((*(&v15 + 1) & 0x2000000000000000) == 0)
      {
        v19 = *&v47[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        __break(1u);
        return result;
      }

      if (v47[0] == __PAIR128__(a2, v13))
      {
        break;
      }

      result = sub_1004A6D34();
      if (result)
      {
        break;
      }

      v14 += 4;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    sub_10000E268(v47, v44, &qword_1005D8C98, &qword_1004F5F18);
    sub_10031B638(a4, v44);
    sub_10031B638(a4, v44);

    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();

    if (os_log_type_enabled(v24, v25))
    {
      v43 = a6;
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44[0] = v42;
      *v26 = 134218498;
      *(v26 + 4) = *a4;
      *(v26 + 12) = 2082;

      sub_100236568(8, v13, a2);
      log = v24;
      v40 = v25;

      v27 = sub_1004A5864();
      v29 = v28;

      v30 = sub_10015BA6C(v27, v29, v44);

      *(v26 + 14) = v30;
      *(v26 + 22) = 1024;
      sub_10031B694(a4);
      *(v26 + 24) = *(a4 + 8);
      sub_10031B694(a4);
      _os_log_impl(&_mh_execute_header, log, v25, "{%ld} Creating instance for account %{public}s for request #%u", v26, 0x1Cu);
      sub_1000197E0(v42);

      a6 = v43;
    }

    else
    {
      sub_10031B694(a4);
      sub_10031B694(a4);
    }

    sub_10000E268(v47, v44, &qword_1005D8C98, &qword_1004F5F18);
    v50(v44, v48);
    sub_100025F40(v47, &qword_1005D8C98, &qword_1004F5F18);
    v9 = *(a4 + 8);
    v21 = v44[1];
    if (v46 != 1)
    {
      sub_10034A348(v45, v31, v32, v33, v34, v35, v36, v37, v38, SHIDWORD(v38), v39, v40, log, SHIDWORD(log), v42, SHIDWORD(v42), v43);
    }

    sub_10034A378(v9);
    result = sub_100025F40(v47, &qword_1005D8C98, &qword_1004F5F18);
    v20 = v44[0];
    v22 = v44[2];
    v23 = v44[3];
  }

  else
  {
LABEL_9:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    a6 = 0;
  }

  *a7 = v20;
  a7[1] = v21;
  a7[2] = v22;
  a7[3] = v23;
  a7[4] = v9;
  a7[5] = a6;
  return result;
}

void *sub_100315840(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 40);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5;
    v24[0] = *(v5 - 1);
    v24[1] = v8;

    (a1)(&v19, v24);
    if (v3)
    {
      break;
    }

    if (v19)
    {
      v18 = v19;
      v9 = v20;
      v10 = v21;
      v11 = v22;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10035D618(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      v14 = v18;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_10035D618((v12 > 1), v13 + 1, 1, v6);
        v14 = v18;
        v6 = v15;
      }

      v6[2] = v13 + 1;
      v7 = &v6[6 * v13];
      *(v7 + 2) = v14;
      v7[6] = v9;
      v7[7] = v10;
      *(v7 + 16) = v11;
      *(v7 + 68) = BYTE4(v11) & 1;
      v7[9] = v25;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void sub_1003159B4(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(v1 + 40);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v12)
        {
          while (1)
          {
            v14 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v14 >= v13)
            {
              goto LABEL_20;
            }

            v12 = *(v9 + 64 + 8 * v14);
            ++v8;
            if (v12)
            {
              v8 = v14;
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

LABEL_9:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(*(v9 + 56) + (v15 | (v8 << 6)));
        if (v16)
        {
          break;
        }

        v17 = __OFADD__(v7, 1);
        v5 = ++v7;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      if (v16 != 1)
      {
        break;
      }

      v17 = __OFADD__(v6, 1);
      v4 = ++v6;
      if (v17)
      {
        goto LABEL_27;
      }
    }

    v17 = __OFADD__(v3++, 1);
  }

  while (!v17);
  __break(1u);
LABEL_20:
  oslog = sub_1004A4A54();
  v18 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109888;
    *(v19 + 4) = v2;
    *(v19 + 8) = 2048;
    *(v19 + 10) = v5;
    *(v19 + 18) = 2048;
    *(v19 + 20) = v4;
    *(v19 + 28) = 2048;
    *(v19 + 30) = v3;
    _os_log_impl(&_mh_execute_header, oslog, v18, "Completing sync #%u for all accounts. %ld account(s) did not connect, %ld account(s) did sync without completing, %ld account(s) did complete sync.", v19, 0x26u);
  }
}

uint64_t sub_100315B60()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + (v8 | (v7 << 6))) != 2)
    {
      return 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 3;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100315BFC(uint64_t a1)
{
  v2 = v1;
  v5 = sub_100350D8C(_swiftEmptyArrayStorage);
  v6 = *(v2 + 24);
  v7 = *(v6 + 16);
  v58 = a1;
  if (!v7)
  {
    v34 = 0;
LABEL_23:
    v35 = *(v2 + 32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = (v35 + 40);
      while (1)
      {
        v42 = v38[1];
        v41 = v38[2];
        v43 = v38[4];
        if (v43 <= a1)
        {
          v44 = a1 - v43;
          if (__OFSUB__(a1, v43))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (__OFSUB__(v43, a1))
          {
            goto LABEL_48;
          }

          v44 = a1 - v43;
          if (__OFSUB__(0, v43 - a1))
          {
            goto LABEL_50;
          }
        }

        v45 = v44 / 1000000000.0;
        if (v45 > 0.0)
        {
          swift_bridgeObjectRetain_n();

          sub_1000B5158(v37, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v60 = v5;
          v40 = sub_10035E1B0(v42, v41);
          v48 = v5[2];
          v49 = (v47 & 1) == 0;
          v20 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v20)
          {
            goto LABEL_51;
          }

          v51 = v47;
          if (v5[3] >= v50)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = v40;
              sub_100360DA8();
              v40 = v56;
            }
          }

          else
          {
            sub_10035EC70(v50, isUniquelyReferenced_nonNull_native);
            v40 = sub_10035E1B0(v42, v41);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_53;
            }
          }

          a1 = v58;
          v5 = v60;
          if (v51)
          {
            v39 = v40;

            v40 = v39;
          }

          else
          {
            *(v60 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            v53 = (v5[6] + 16 * v40);
            *v53 = v42;
            v53[1] = v41;
            *(v5[7] + 8 * v40) = 0;
            v54 = v5[2];
            v20 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v20)
            {
              goto LABEL_52;
            }

            v5[2] = v55;
          }

          *(v5[7] + 8 * v40) = v45 + *(v5[7] + 8 * v40);

          v37 = sub_10031C0C4;
        }

        v38 += 6;
        if (!--v36)
        {
          goto LABEL_45;
        }
      }
    }

    v37 = 0;
LABEL_45:
    sub_1000B5158(v34, 0);
    sub_1000B5158(v37, 0);
    return v5;
  }

  v8 = *(v6 + 48);
  v60 = *(v6 + 32);
  v61 = v8;
  v9 = *(v6 + 80);
  v62 = *(v6 + 64);
  v63 = v9;
  v10 = *(&v60 + 1);
  v11 = v60;
  v12 = HIBYTE(*(&v60 + 1)) & 0xFLL;
  if ((*(&v60 + 1) & 0x2000000000000000) == 0)
  {
    v12 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v34 = v4;
    a1 = v58;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = (v6 + 96);
  while (1)
  {
    sub_10000E268(&v60, &v59, &qword_1005D8C98, &qword_1004F5F18);

    sub_1000B5158(v13, 0);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    v16 = sub_10035E1B0(v11, v10);
    v18 = v5[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v5[3] < v21)
    {
      sub_10035EC70(v21, v15);
      v5 = v59;
      v16 = sub_10035E1B0(v11, v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_53;
      }

LABEL_11:
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (v15)
    {
      goto LABEL_11;
    }

    v25 = v16;
    sub_100360DA8();
    v16 = v25;
    v5 = v59;
    if (v22)
    {
LABEL_12:
      v24 = v16;

      v16 = v24;
      goto LABEL_16;
    }

LABEL_14:
    v5[(v16 >> 6) + 8] |= 1 << v16;
    v26 = (v5[6] + 16 * v16);
    *v26 = v11;
    v26[1] = v10;
    *(v5[7] + 8 * v16) = 0;
    v27 = v5[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v20)
    {
      goto LABEL_47;
    }

    v5[2] = v28;
LABEL_16:
    *(v5[7] + 8 * v16) = *(&v63 + 1) + *(v5[7] + 8 * v16);
    sub_100025F40(&v60, &qword_1005D8C98, &qword_1004F5F18);
    v4 = sub_10031C0C4;
    if (!--v7)
    {
      goto LABEL_21;
    }

    v29 = v14[2];
    v30 = v14[3];
    v32 = *v14;
    v31 = v14[1];
    v14 += 4;
    v62 = v29;
    v63 = v30;
    v60 = v32;
    v61 = v31;
    v10 = *(&v32 + 1);
    v11 = v32;
    v33 = HIBYTE(*(&v32 + 1)) & 0xFLL;
    if ((*(&v32 + 1) & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v4 = sub_10031C0C4;
    v13 = sub_10031C0C4;
    if (!v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_47:
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
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_100316060(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v9 = _s6LoggerVMa_1(0);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = *(v4 + 40);
  if (!*(v18 + 16) || (v19 = sub_10035E1B0(a1, a2), (v20 & 1) == 0) || !*(*(v18 + 56) + v19))
  {
    sub_10031BFB8(a3, v11, _s6LoggerVMa_1);
    v29 = sub_1004A4A54();
    v30 = sub_1004A6014();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136446210;
      v33 = sub_1004A5864();
      v35 = v34;
      sub_10031BF58(v11, _s6LoggerVMa_1);
      v36 = sub_10015BA6C(v33, v35, &v45);

      *(v31 + 4) = v36;
      v37 = "[%{public}s] Account did complete sync, but never started.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v29, v30, v37, v31, 0xCu);
      sub_1000197E0(v32);

      return;
    }

    v38 = v11;
LABEL_11:
    sub_10031BF58(v38, _s6LoggerVMa_1);
    return;
  }

  if (*(*(v18 + 56) + v19) != 1)
  {
    sub_10031BFB8(a3, v14, _s6LoggerVMa_1);
    v29 = sub_1004A4A54();
    v30 = sub_1004A6014();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136446210;
      v39 = sub_1004A5864();
      v41 = v40;
      sub_10031BF58(v14, _s6LoggerVMa_1);
      v42 = sub_10015BA6C(v39, v41, &v45);

      *(v31 + 4) = v42;
      v37 = "[%{public}s] Account did complete sync, but was already complete.";
      goto LABEL_9;
    }

    v38 = v14;
    goto LABEL_11;
  }

  sub_10031BFB8(a3, v17, _s6LoggerVMa_1);
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136446210;
    v25 = sub_1004A5864();
    v27 = v26;
    sub_10031BF58(v17, _s6LoggerVMa_1);
    v28 = sub_10015BA6C(v25, v27, &v45);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Account did complete sync.", v23, 0xCu);
    sub_1000197E0(v24);
  }

  else
  {

    sub_10031BF58(v17, _s6LoggerVMa_1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v5 + 40);
  sub_1003591C8(2, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v45;
}

void sub_100316524(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 != a2)
  {
    oslog = sub_1004A4A54();
    v3 = sub_1004A6034();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v2;
      _os_log_impl(&_mh_execute_header, oslog, v3, "%ld remaining instance(s).", v4, 0xCu);
    }
  }
}

void *sub_100316600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = _swiftEmptySetSingleton;
  if (a4 < 1)
  {
    return v5;
  }

  v6 = a4;

  v10 = 0;
  v11 = sub_10031950C(a1, a2, a5);

  if (v11[2])
  {
    sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
    v12 = sub_1004A6A74();
  }

  else
  {
    v12 = _swiftEmptyDictionarySingleton;
  }

  v62 = v12;

  sub_100317368(v13, 1, &v62);

  v14 = v62;
  v62 = _swiftEmptySetSingleton;
  if (_swiftEmptySetSingleton[2] >= v6 || (v15 = , v16 = sub_100316AC0(v15), v18 = v17, v19 = v17, , v19 == 2))
  {
LABEL_7:

    return v5;
  }

  v53 = v6;
  v21 = &_swiftEmptySetSingleton[2];
  while (1)
  {

    v23 = sub_100318FE4(v22, v16, v18 & 1);

    v24 = v23[2];
    if (v24)
    {
      break;
    }

    v44 = _swiftEmptyArrayStorage;
LABEL_30:

    v45 = sub_10031A104(v14, v44);

    v46 = *(v44 + 2);
    if (__OFADD__(*v21, v46))
    {
      goto LABEL_48;
    }

    if (*v21 + v46 <= v6)
    {
      sub_10031A2C4(v44);
    }

    else
    {
      v61 = v44;

      sub_100317204(&v61);

      sub_100319164();
      v47 = v6 - *v21;
      if (v47 < 0)
      {
        goto LABEL_49;
      }

      if (*(v61 + 2) < v47)
      {
        v47 = *(v61 + 2);
      }

      v48 = 2 * v47;
      if (v6 == *v21)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48 + 1;
      }

      sub_10031A334((v61 + 32), 0, v49);
    }

    v5 = v62;
    v21 = v62 + 2;
    if (v62[2] < v6)
    {

      v16 = sub_100316AC0(v50);
      v18 = v51;
      v52 = v51;

      v14 = v45;
      if (v52 != 2)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v54 = v10;
  v55 = v21;
  v61 = _swiftEmptyArrayStorage;
  sub_10034F590(0, v24, 0);
  v25 = v61;
  v26 = v23 + 8;
  v27 = sub_1004A6554();
  v28 = 0;
  v56 = v23 + 9;
  v57 = v24;
  v58 = v23 + 8;
  while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(v23 + 32))
  {
    v30 = v27 >> 6;
    if ((v26[v27 >> 6] & (1 << v27)) == 0)
    {
      goto LABEL_44;
    }

    v59 = *(v23 + 9);
    v31 = (v23[6] + 16 * v27);
    v32 = v31[1];
    v60 = *v31;
    v61 = v25;
    v33 = v23;
    v35 = *(v25 + 2);
    v34 = *(v25 + 3);

    if (v35 >= v34 >> 1)
    {
      sub_10034F590((v34 > 1), v35 + 1, 1);
      v25 = v61;
    }

    *(v25 + 2) = v35 + 1;
    v36 = &v25[16 * v35];
    *(v36 + 4) = v60;
    *(v36 + 5) = v32;
    v29 = 1 << *(v33 + 32);
    if (v27 >= v29)
    {
      goto LABEL_45;
    }

    v23 = v33;
    v26 = v58;
    v37 = v58[v30];
    if ((v37 & (1 << v27)) == 0)
    {
      goto LABEL_46;
    }

    if (v59 != *(v23 + 9))
    {
      goto LABEL_47;
    }

    v38 = v37 & (-2 << (v27 & 0x3F));
    if (v38)
    {
      v29 = __clz(__rbit64(v38)) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v39 = v30 << 6;
      v40 = v30 + 1;
      v41 = &v56[v30];
      while (v40 < (v29 + 63) >> 6)
      {
        v43 = *v41++;
        v42 = v43;
        v39 += 64;
        ++v40;
        if (v43)
        {
          sub_100020944(v27, v59, 0);
          v29 = __clz(__rbit64(v42)) + v39;
          goto LABEL_13;
        }
      }

      sub_100020944(v27, v59, 0);
    }

LABEL_13:
    ++v28;
    v27 = v29;
    if (v28 == v57)
    {

      v44 = v25;
      v6 = v53;
      v10 = v54;
      v21 = v55;
      goto LABEL_30;
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
LABEL_49:
  __break(1u);

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100316AC0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    v13 = v12 + 16 * v6;
    v14 = *v13;
    v15 = *(v13 + 8);
    while (1)
    {
      v16 = v15;
      result = v14;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v20 = v12 + ((v5 << 10) | (16 * v19));
      v14 = *v20;
      v15 = *(v20 + 8);
      if (v14 >= result)
      {
        if ((v14 != result || (v15 & 1) == 0) | v16 & 1)
        {
          v14 = result;
          v15 = v16;
        }
      }
    }

    while (1)
    {
      v18 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v18 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v18);
      ++v5;
      if (v7)
      {
        v5 = v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100316BF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = 32;
    v18 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v23[0] = *(a3 + v9);
      v23[1] = v10;
      v24 = *(a3 + v9 + 32);
      v25 = *(a3 + v9 + 48);
      v26 = v23[0];
      v27 = v10;
      v28 = v24;
      v29 = v25;
      sub_10031B228(v23, &v19);
      v11 = v6(&v26);
      if (v3)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        sub_100306EFC(&v19);

        goto LABEL_15;
      }

      if (v11)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10034F650(0, v8[2] + 1, 1);
          v8 = v30;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_10034F650((v12 > 1), v13 + 1, 1);
          v8 = v30;
        }

        v8[2] = v13 + 1;
        v14 = &v8[7 * v13];
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v14[10] = v22;
        *(v14 + 3) = v16;
        *(v14 + 4) = v17;
        *(v14 + 2) = v15;
        v6 = v18;
      }

      else
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        result = sub_100306EFC(&v19);
      }

      ++v7;
      v9 += 56;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_100316DE0(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v5;
  v39[2] = *(a1 + 32);
  v40 = *(a1 + 48);
  v6 = a2(v39);
  v8 = v7;
  if (!*(a4 + 16) || (v9 = v6, v10 = sub_10035E1B0(v6, v7), (v11 & 1) == 0))
  {

    return 0;
  }

  v12 = *(a4 + 56) + 24 * v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);

  v16 = sub_1004A4A54();
  v17 = sub_1004A6034();

  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v15 == 1)
    {
      if (v18)
      {
        v19 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v36;
        *v19 = 136446722;
        sub_100236568(8, v9, v8);

        v20 = sub_1004A5864();
        v22 = v21;

        v23 = sub_10015BA6C(v20, v22, &v41);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v13;
        *(v19 + 22) = 2048;
        *(v19 + 24) = v14;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Did already download too much -- %{iec-bytes}ld inside current time window, limit is %{iec-bytes}ld", v19, 0x20u);
        v24 = v36;
LABEL_12:
        sub_1000197E0(v24);

LABEL_14:

        return 0;
      }
    }

    else if (v18)
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v31 = 136446210;
      sub_100236568(8, v9, v8);

      v32 = sub_1004A5864();
      v34 = v33;

      v35 = sub_10015BA6C(v32, v34, &v41);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Server was recently unavailable.", v31, 0xCu);
      v24 = v38;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v18)
  {
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v26 = 136446466;
    sub_100236568(8, v9, v8);

    v27 = sub_1004A5864();
    v29 = v28;

    v30 = sub_10015BA6C(v27, v29, &v41);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Did download %{iec-bytes}ld inside current time window.", v26, 0x16u);
    sub_1000197E0(v37);
  }

  else
  {
  }

  return 1;
}

Swift::Int sub_100317204(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F40(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100317270(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100317270(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10020E050(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10020DF80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100317368(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
  }

  LOBYTE(v4) = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  LOBYTE(v8) = *(a1 + 56);
  v9 = *a3;

  v10 = sub_10035E1B0(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10035EF14(v15, v4 & 1);
    v10 = sub_10035E1B0(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1004A6E24();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100360F10();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = v20[7] + 16 * v10;
  *v22 = v7;
  *(v22 + 8) = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1004A6724(30);
    v40._object = 0x80000001004AA380;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1004A5994(v40);
    sub_1004A6934();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    sub_1004A5994(v41);
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v38 != 1)
  {
    v4 = (a1 + 88);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v25 = *v4;
      v26 = *a3;

      v27 = sub_10035E1B0(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10035EF14(v31, 1);
        v27 = sub_10035E1B0(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = v33[7] + 16 * v27;
      *v35 = v8;
      *(v35 + 8) = v25;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 32;
      if (v38 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

void sub_100317710(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10036742C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10031783C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + ((v9 << 11) | (32 * v10));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v15 = *(v11 + 24);

        v16 = sub_100367568(v12, v13, v14, v15);
        sub_100073984(v16, v17, v18);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_10031798C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v23 = sub_1004A6F14();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100318B5C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1004A6E94();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            v41 = sub_1004A6F14();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1004A6D34() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_100318648(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100020D08(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100317EFC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v8 = a1 + 56;
  v7 = *(a1 + 56);
  v9 = -1;
  v10 = -1 << *(a1 + 32);
  v73 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (63 - v10) >> 6;
  v82 = a2 + 7;

  v16 = 0;
  v76 = v8;
  v75 = v13;
  v78 = v6;
  v77 = v14;
  if (!v12)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_68;
      }

      if (v18 >= v13)
      {
        goto LABEL_64;
      }

      v12 = *(v8 + 8 * v18);
      ++v17;
    }

    while (!v12);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = *(v14 + 48);
    v79 = v16;
    v21 = v20 + ((v16 << 11) | (32 * v19));
    v5 = *v21;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    sub_1004A6E94();

    v81 = v23;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v80 = v24 | (v24 << 32);
    sub_1004A6EB4(v80);
    v25 = sub_1004A6F14();
    v26 = -1 << *(v6 + 32);
    v13 = v25 & ~v26;
    v2 = v13 >> 6;
    v3 = 1 << v13;
    if (((1 << v13) & v82[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_27:

    v6 = v78;
    v16 = v79;
    v14 = v77;
    v8 = v76;
    v13 = v75;
    v9 = -1;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v4 = ~v26;
  v27 = v78[6];
  v74 = (v81 + 32);
  while (1)
  {
    v28 = v27 + 32 * v13;
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    v31 = *v28 == v5 && *(v28 + 8) == v22;
    if (v31 || (sub_1004A6D34()) && (v30 | (v30 << 32)) == v80)
    {
      v32 = *(v29 + 16);
      if (v32 == *(v81 + 16))
      {
        break;
      }
    }

LABEL_13:
    v13 = (v13 + 1) & v4;
    v2 = v13 >> 6;
    v3 = 1 << v13;
    if ((v82[v13 >> 6] & (1 << v13)) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v32 && v29 != v81)
  {
    v33 = (v29 + 32);
    v34 = v74;
    while (*v33 == *v34)
    {
      ++v33;
      ++v34;
      if (!--v32)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_13;
  }

LABEL_29:
  v84 = v73;
  v85 = v79;
  v86 = v12;
  v5 = v76;
  v4 = v77;
  v83[0] = v77;
  v83[1] = v76;

  v9 = v78;
  v36 = *(v78 + 32);
  v69 = ((1 << v36) + 63) >> 6;
  v15 = 8 * v69;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v70 = &v68;
    __chkstk_darwin(v35);
    v38 = &v68 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v38, v82, v37);
    v39 = *&v38[8 * v2] & ~v3;
    v40 = *(v9 + 16);
    v72 = v38;
    *&v38[8 * v2] = v39;
    v41 = v40 - 1;
    v42 = v79;
    v43 = v75;
LABEL_31:
    v71 = v41;
    while (v12)
    {
LABEL_39:
      v46 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v47 = *(v4 + 48);
      v79 = v42;
      v48 = (v47 + ((v42 << 11) | (32 * v46)));
      v49 = *v48;
      v4 = v48[1];
      v50 = v48[2];
      v51 = *(v48 + 6);
      sub_1004A6E94();

      v81 = v50;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v80 = v51 | (v51 << 32);
      sub_1004A6EB4(v80);
      v52 = sub_1004A6F14();
      v53 = -1 << *(v9 + 32);
      v5 = v52 & ~v53;
      v13 = v5 >> 6;
      v3 = 1 << v5;
      if (((1 << v5) & v82[v5 >> 6]) != 0)
      {
        v9 = ~v53;
        v54 = v78[6];
        v74 = (v81 + 32);
        while (1)
        {
          v55 = v54 + 32 * v5;
          v56 = *(v55 + 16);
          v2 = *(v55 + 24);
          v57 = *v55 == v49 && *(v55 + 8) == v4;
          if (v57 || (sub_1004A6D34()) && (v2 | (v2 << 32)) == v80)
          {
            v58 = *(v56 + 16);
            if (v58 == *(v81 + 16))
            {
              break;
            }
          }

LABEL_41:
          v5 = (v5 + 1) & v9;
          v13 = v5 >> 6;
          v3 = 1 << v5;
          if ((v82[v5 >> 6] & (1 << v5)) == 0)
          {
            goto LABEL_32;
          }
        }

        if (v58)
        {
          v59 = v56 == v81;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = (v56 + 32);
          v61 = v74;
          while (v58)
          {
            if (*v60 != *v61)
            {
              goto LABEL_41;
            }

            ++v60;
            ++v61;
            if (!--v58)
            {
              goto LABEL_57;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_57:

        v62 = v72[v13];
        v72[v13] = v62 & ~v3;
        v9 = v78;
        v42 = v79;
        v4 = v77;
        v5 = v76;
        v43 = v75;
        if ((v62 & v3) != 0)
        {
          v41 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            v6 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_31;
        }
      }

      else
      {
LABEL_32:

        v9 = v78;
        v42 = v79;
        v4 = v77;
        v5 = v76;
        v43 = v75;
      }
    }

    v44 = v42;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
        v6 = sub_100318D80(v72, v69, v71, v9);
        goto LABEL_62;
      }

      v12 = *(v5 + 8 * v45);
      ++v44;
      if (v12)
      {
        v42 = v45;
        goto LABEL_39;
      }
    }

LABEL_67:
    __break(1u);
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v64 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v65 = v9;
  v66 = swift_slowAlloc();
  memcpy(v66, v82, v64);
  v67 = sub_100318880(v66, v69, v65, v13, v83);

  v4 = v83[0];
  v73 = v84;
  v6 = v67;
LABEL_62:
  v14 = v4;
LABEL_64:
  sub_100020D08(v14);
  return v6;
}

unint64_t *sub_100318648(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100318B5C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v19 = sub_1004A6F14();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1004A6D34() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return _swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100318880(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v36 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v42 = a3 + 56;
  v37 = a5;
  while (2)
  {
    v35 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v9 >= v10)
            {
              if (v10 <= v7 + 1)
              {
                v33 = v7 + 1;
              }

              else
              {
                v33 = (a5[2] + 64) >> 6;
              }

              a5[3] = v33 - 1;
              a5[4] = 0;

              return sub_100318D80(v36, a2, v35, a3);
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        v9 = a5[3];
LABEL_10:
        v12 = *(*a5 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v8))));
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        sub_1004A6E94();

        v41 = v15;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v40 = v16 | (v16 << 32);
        sub_1004A6EB4(v40);
        v17 = sub_1004A6F14();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v42 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v37;
      }

      v22 = ~v18;
      v23 = *(a3 + 48);
      v38 = (v15 + 32);
      while (1)
      {
        v24 = v23 + 32 * v19;
        result = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *v24 == v13 && *(v24 + 8) == v14;
        if (v27 || (result = sub_1004A6D34(), (result & 1) != 0))
        {
          if ((v26 | (v26 << 32)) == v40)
          {
            v28 = *(v25 + 16);
            if (v28 == *(v41 + 16))
            {
              break;
            }
          }
        }

LABEL_12:
        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v42 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }

      if (v28)
      {
        v29 = v25 == v41;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        v30 = (v25 + 32);
        v31 = v38;
        while (v28)
        {
          if (*v30 != *v31)
          {
            goto LABEL_12;
          }

          ++v30;
          ++v31;
          if (!--v28)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_28:

      a5 = v37;
      v32 = v36[v20];
      v36[v20] = v32 & ~v21;
    }

    while ((v32 & v21) == 0);
    v6 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      goto LABEL_38;
    }

    if (v35 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

uint64_t sub_100318B5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A66B4();
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
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1004A6F14();
    v19 = -1 << *(v9 + 32);
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
    v27 = (v9[6] + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++v9[2];
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

uint64_t sub_100318D80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A66B4();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 32 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1004A6EB4(v20 | (v20 << 32));
    result = sub_1004A6F14();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = v9[6] + 32 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    *(v29 + 24) = v20;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
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

unint64_t *sub_100318FE4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1003192E0(v10, v8, v6, a2, a3 & 1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_10031947C(v12, v8, v6, a2, a3 & 1);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_100319164()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v6 = PCG32Random.next()();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = PCG32Random.next()();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *(v1 + 2);
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = &v1[16 * v4 + 32];
        v14 = *v12;
        v13 = *(v12 + 1);
        v15 = &v1[16 * v10 + 32];
        v16 = *v15;
        v17 = *(v15 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100367F40(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v18 = &v1[16 * v4 + 32];
        *v18 = v16;
        *(v18 + 1) = v17;

        if (v10 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v19 = &v1[16 * v10 + 32];
        *v19 = v14;
        *(v19 + 1) = v13;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

unint64_t *sub_1003192E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(a3 + 56) + 16 * v13;
    if (*v16 == a4 && ((*(v16 + 8) ^ a5) & 1) == 0)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_100359920(result, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return sub_100359920(result, a2, v6, a3);
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003193E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100319F60(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_10031947C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = sub_1003192E0(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

void *sub_10031950C(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_10034F5B0(0, v4, 0);
    v8 = v3 + 64;
    v9 = sub_1004A6554();
    result = _swiftEmptyArrayStorage;
    v10 = 0;
    v11 = *(v3 + 36);
    v48 = a2 + 56;
    v41 = v3 + 72;
    v42 = v4;
    v43 = a2;
    v44 = v11;
    v45 = v3 + 64;
    v46 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_39;
      }

      if (v11 != *(v3 + 36))
      {
        goto LABEL_40;
      }

      v47 = v10;
      v15 = (*(v3 + 48) + 16 * v9);
      v16 = *(*(v3 + 56) + 8 * v9);
      v18 = *v15;
      v17 = v15[1];
      v19 = floor(v16 / a3);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v19 <= -9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v19 >= 9.22337204e18)
        {
          goto LABEL_45;
        }

        v20 = v19 & ~(v19 >> 63);
      }

      else
      {
        v20 = 0;
      }

      v21 = result;
      if (*(a2 + 16))
      {
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v22 = sub_1004A6F14();
        v23 = -1 << *(a2 + 32);
        v24 = v22 & ~v23;
        if ((*(v48 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = (*(a2 + 48) + 16 * v24);
            v27 = *v26 == v18 && v26[1] == v17;
            if (v27 || (sub_1004A6D34() & 1) != 0)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v48 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v28 = 1;
        }

        else
        {
LABEL_23:
          v28 = 0;
        }
      }

      else
      {

        v28 = 0;
      }

      result = v21;
      v49 = v21;
      v29 = v21[2];
      v30 = result[3];
      if (v29 >= v30 >> 1)
      {
        sub_10034F5B0((v30 > 1), v29 + 1, 1);
        result = v49;
      }

      result[2] = v29 + 1;
      v31 = &result[4 * v29];
      v31[4] = v18;
      v31[5] = v17;
      v31[6] = v20;
      *(v31 + 56) = v28;
      v3 = v46;
      v12 = 1 << *(v46 + 32);
      if (v9 >= v12)
      {
        goto LABEL_41;
      }

      v8 = v45;
      v32 = *(v45 + 8 * v14);
      if ((v32 & (1 << v9)) == 0)
      {
        goto LABEL_42;
      }

      v11 = v44;
      if (v44 != *(v46 + 36))
      {
        goto LABEL_43;
      }

      v33 = v32 & (-2 << (v9 & 0x3F));
      if (v33)
      {
        v12 = __clz(__rbit64(v33)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v42;
        a2 = v43;
      }

      else
      {
        v34 = v14 << 6;
        v35 = v14 + 1;
        v36 = (v41 + 8 * v14);
        v13 = v42;
        a2 = v43;
        while (v35 < (v12 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            v39 = result;
            sub_100020944(v9, v44, 0);
            result = v39;
            v12 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        v40 = result;
        sub_100020944(v9, v44, 0);
        result = v40;
      }

LABEL_4:
      v10 = v47 + 1;
      v9 = v12;
      if (v47 + 1 == v13)
      {
        return result;
      }
    }

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
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003198C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = sub_1004A5234();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v42 - v13);
  v15 = sub_1004A4374();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030E32C(0x724DA56DFED9E99ALL, v46);
  v19 = v46[3];
  *(v5 + 80) = v46[2];
  *(v5 + 96) = v19;
  *(v5 + 112) = v47[0];
  *(v5 + 124) = *(v47 + 12);
  v20 = v46[1];
  *(v5 + 48) = v46[0];
  *(v5 + 64) = v20;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0;
  sub_10000C9C0(&qword_1005D8CC8, &qword_1004F5F50);
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = UInt32.init(_:);
  *(v21 + 24) = 0;
  *(v5 + 200) = v21;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v22 = a1;
  v23 = a2;

  *(v5 + 184) = static MonotonicTime.now()();
  *(v5 + 192) = static MonotonicTime.now()();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = qword_1005D8738;
  v26 = v22;

  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_1001C203C(v15, qword_1005D8A40);
  (*(v16 + 16))(v18, v27, v15);
  v28 = sub_10030D500(v18, v26, sub_10031C05C, v24);

  *(v5 + 144) = v28;

  *v14 = 1;
  v29 = enum case for DispatchTimeInterval.seconds(_:);
  v30 = *(v10 + 104);
  v31 = v43;
  v30(v14, enum case for DispatchTimeInterval.seconds(_:), v43);
  v32 = v44;
  *v44 = 1;
  v30(v32, v29, v31);
  v33 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10031C064;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3920;
  v34 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v35 = v26;

  v37 = RestartableTimer.init(queue:repeating:leeway:closure:)(v35, v14, v32, v34, v36);

  *(v5 + 176) = v37;

  type metadata accessor for StateCapture();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v35;

  *(v5 + 168) = StateCapture.__allocating_init(title:queue:capture:)(0x64616F6C6E776F44, 0xEA00000000007265, v39, sub_10031C06C, v38);

  v41 = *(v5 + 144);
  if (v41)
  {
    dispatch_activate(*(v41 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source));
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100319DA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v3 = sub_1004A4A74();
  sub_1001C203C(v3, qword_1005D8B78);

  v4 = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    sub_100236568(8, v2, v1);

    v8 = sub_1004A5864();
    v10 = v9;

    v11 = sub_10015BA6C(v8, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tearing down instance for account %{public}s.", v6, 0xCu);
    sub_1000197E0(v7);
  }

  else
  {
  }

  Engine.tearDown()();
}

unint64_t *sub_100319F60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    __chkstk_darwin(result);
    v18[2] = v23;

    v16 = sub_100351DE4(sub_10031B6E8, v18, v22);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_100359920(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100359920(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10031A104(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1003193E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100319F60((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10031A2C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100361EC4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10031A334(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v3)
    {
      v3 = a2;
    }

    v5 = v3 - a2;
    v6 = (result + 16 * a2 + 8);
    while (v5)
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_100361EC4(&v9, v8, v7);

      --v5;
      v6 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031A3C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v114 = a1;
  v116 = sub_1004A4A74();
  v100 = *(v116 - 8);
  __chkstk_darwin(v116);
  v98 = v13;
  v99 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v102 = a5;
  v103 = a6;
  v18[4] = a6;
  v18[5] = a7;
  v19 = a3[2];
  *v17 = v19;
  v20 = *(v15 + 104);
  v108 = enum case for DispatchPredicate.onQueue(_:);
  v109 = v15 + 104;
  v107 = v20;
  v20(v17);

  v104 = a7;

  v105 = v19;
  v21 = sub_1004A5404();
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v110 = v17;
  v111 = v22;
  v112 = v14;
  v106 = v23;
  v23(v17, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_12;
  }

  v101 = a4;
  v22 = *(a2 + 16);
  v24 = _swiftEmptyArrayStorage;
  v113 = v18;
  v115 = a3;
  if (v22)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_10034F590(0, v22, 0);
    v24 = aBlock;
    v25 = (a2 + 40);
    v26 = v22;
    v27 = v22;
    while (1)
    {
      v29 = *(v25 - 1);
      v28 = *v25;
      v30 = HIBYTE(*v25) & 0xF;
      if ((*v25 & 0x2000000000000000) == 0)
      {
        v30 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
        goto LABEL_41;
      }

      aBlock = v24;
      v31 = *(v24 + 2);
      v32 = *(v24 + 3);

      if (v31 >= v32 >> 1)
      {
        sub_10034F590((v32 > 1), v31 + 1, 1);
        v24 = aBlock;
      }

      *(v24 + 2) = v31 + 1;
      v33 = &v24[16 * v31];
      *(v33 + 4) = v29;
      *(v33 + 5) = v28;
      v25 += 7;
      if (!--v27)
      {
        a3 = v115;
        v22 = v26;
        v18 = v113;
        break;
      }
    }
  }

  v21 = sub_100367FF4(v24);

  if (qword_1005D8758 != -1)
  {
    goto LABEL_38;
  }

LABEL_12:
  v34 = sub_1001C203C(v116, qword_1005D8B78);

  v35 = sub_1004A4A54();
  v36 = sub_1004A6034();

  if (os_log_type_enabled(v35, v36))
  {
    v92 = v36;
    v93 = v35;
    v37 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v117 = v90;
    *v37 = 134218498;
    *(v37 + 4) = v114;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v22;

    v91 = v37;
    *(v37 + 22) = 2082;
    v38 = *(v21 + 16);
    v96 = a2;
    v95 = v22;
    v94 = v34;
    v97 = v21;
    if (v38)
    {
      v39 = sub_10035E0A8(v38, 0);
      v40 = sub_100139548(&aBlock, v39 + 4, v38, v21);
      v41 = aBlock;

      sub_100020D08(v41);
      if (v40 != v38)
      {
        goto LABEL_40;
      }

      a2 = v96;
      v22 = v95;
      v34 = v94;
    }

    else
    {
      v39 = _swiftEmptyArrayStorage;
    }

    aBlock = v39;
    sub_100317204(&aBlock);
    v42 = aBlock;
    v43 = aBlock[2];
    if (v43)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v43, 0);
      v44 = aBlock;
      v89[1] = v42;
      v45 = v42 + 5;
      do
      {

        sub_1004A5954();
        v46 = sub_1004A5AB4();
        v48 = v47;
        v50 = v49;
        v52 = v51;

        aBlock = v44;
        v54 = *(v44 + 2);
        v53 = *(v44 + 3);
        if (v54 >= v53 >> 1)
        {
          sub_10034F5D0((v53 > 1), v54 + 1, 1);
          v44 = aBlock;
        }

        *(v44 + 2) = v54 + 1;
        v55 = &v44[32 * v54];
        *(v55 + 4) = v46;
        *(v55 + 5) = v48;
        *(v55 + 6) = v50;
        *(v55 + 7) = v52;
        v45 += 2;
        --v43;
      }

      while (v43);

      v18 = v113;
      a2 = v96;
      v22 = v95;
      v34 = v94;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    aBlock = v44;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_1000CBB00(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00);
    sub_1002AACE0();
    v56 = sub_1004A5BC4();
    v58 = v57;

    v59 = sub_10015BA6C(v56, v58, &v117);

    v60 = v91;
    *(v91 + 24) = v59;
    v61 = v93;
    _os_log_impl(&_mh_execute_header, v93, v92, "Starting {%ld} for %ld account(s): %{public}s", v60, 0x20u);
    sub_1000197E0(v90);

    a3 = v115;
    v21 = v97;
  }

  else
  {
  }

  v62 = a3[3];
  v63 = swift_allocObject();
  *(v63 + 16) = a3;
  *(v63 + 24) = v21;
  v122 = sub_10031AF44;
  v123 = v63;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_10019C778;
  v121 = &unk_1005B35B0;
  v64 = _Block_copy(&aBlock);

  v97 = v62;
  [v62 performBlock:v64];
  _Block_release(v64);
  if (!v22)
  {
    v74 = v102;
    v75 = 3;
    goto LABEL_35;
  }

  v65 = v110;
  v66 = v105;
  *v110 = v105;
  v67 = v112;
  v107(v65, v108, v112);
  v68 = v66;
  LOBYTE(v66) = sub_1004A5404();
  v106(v65, v67);
  if (v66)
  {
    v69 = a3[19];
    if (v69 >= 11000000000 || (v70 = a3[20], v70 > 0x98BCA59FFLL))
    {
      sub_100327468();
      v76 = swift_allocObject();
      v77 = v114;
      *(v76 + 2) = a3;
      *(v76 + 3) = v77;
      *(v76 + 4) = sub_10031AEF8;
      *(v76 + 5) = v18;
      v78 = a2;
      v79 = v100;
      v80 = v99;
      v81 = v34;
      v82 = v116;
      (*(v100 + 16))(v99, v81, v116);
      v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v84 = (v98 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      *(v85 + 16) = a3;
      *(v85 + 24) = v78;
      (*(v79 + 32))(v85 + v83, v80, v82);
      v86 = (v85 + v84);
      *v86 = sub_10031AFC8;
      v86[1] = v76;
      v122 = sub_10031B0DC;
      v123 = v85;
      aBlock = _NSConcreteStackBlock;
      v119 = 1107296256;
      v120 = sub_10019C778;
      v121 = &unk_1005B3628;
      v87 = _Block_copy(&aBlock);
      swift_retain_n();

      [v97 performBlock:v87];
      _Block_release(v87);
    }

    v71 = sub_1004A4A54();
    v72 = sub_1004A6014();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134218240;
      *(v73 + 4) = v69;
      *(v73 + 12) = 2048;
      *(v73 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v71, v72, "Refusing download & index due to low disk space %{iec-bytes}ld / %{iec-bytes}ld.", v73, 0x16u);
    }

    v74 = v102;
    v75 = 0;
LABEL_35:
    sub_10032131C(v74, v75, v103, v104);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10031AF04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031AF70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10031AF88()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10031AFF8()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10031B0DC()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_100313244(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_10031B170(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  return sub_100316DE0(v7, v2, v3, v4) & 1;
}

uint64_t sub_10031B1B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10031B284@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  result = *&v5;
  v4 = *v6;
  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 29) = *&v6[13];
  return result;
}

uint64_t sub_10031B2D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return v5(v7);
}

unint64_t sub_10031B368(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10035E1B0(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_10035F1D4(v15, v5 & 1);
    result = sub_10035E1B0(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_100361088();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + v19) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v25 = *a3;

      result = sub_10035E1B0(v7, v6);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        sub_10035F1D4(v29, 1);
        result = sub_10035E1B0(v7, v6);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + v24) = v9;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v6;
        *(v31[7] + result) = v9;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v5 += 24;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10031B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_10031B5D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

double sub_10031B5E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003154D0(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 32), *(v2 + 40), *(v2 + 56), v7);
  if (!v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
    result = *&v8;
    a2[2] = v8;
  }

  return result;
}

uint64_t sub_10031B6E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34() & 1;
  }
}

uint64_t sub_10031B740(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return sub_10031BC94(v6, *(v2 + 16), *(v2 + 24)) & 1;
}

unint64_t sub_10031B780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D8CB8, &qword_1004F5F40);
    v3 = sub_1004A6A74();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1002B375C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10031B86C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (***a3)(uint64_t a1)@<X8>)
{
  v6 = type metadata accessor for Configuration(0);
  __chkstk_darwin(v6 - 8);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *a1;
  v9 = *(&v48 + 1);
  v10 = v48;
  v11 = HIBYTE(*(&v48 + 1)) & 0xFLL;
  if ((*(&v48 + 1) & 0x2000000000000000) == 0)
  {
    v11 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v43 = v8;
    v44 = a1;
    v45 = a3;
    v12 = qword_1005D8758;

    if (v12 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005D8B78);

  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  sub_10031BD04(&v48);
  v16 = os_log_type_enabled(v14, v15);
  v46 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47[0] = v18;
    *v17 = 136446210;

    sub_100236568(8, v10, v9);
    v19 = v9;
    sub_10031BD04(&v48);
    v20 = sub_1004A5864();
    v22 = v21;

    v23 = v20;
    v9 = v19;
    v10 = v46;
    v24 = sub_10015BA6C(v23, v22, v47);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating new instance for account: %{public}s", v17, 0xCu);
    sub_1000197E0(v18);
  }

  v42 = v9;
  v25 = a2[3];
  v26 = a2[5];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v10;
  v28[4] = v9;
  v41[1] = type metadata accessor for Engine(0);
  v29 = v25;

  v41[0] = v26;

  v30 = v44;
  sub_10031B228(v44, v47);
  v31 = v43;
  sub_1003065F0(v30, v43);
  v32 = sub_10031B780(_swiftEmptyArrayStorage);
  __chkstk_darwin(v32);
  v41[-6] = v30;
  v41[-5] = v29;
  v33 = type metadata accessor for SearchIndexPersistence(0);
  v34 = static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(v31, v32, 0, 1, 2, 0, 3, 0, sub_10031BDDC, &v41[-8], v33, &off_1005B4FE0);
  v36 = v35;

  sub_10031BF58(v31, type metadata accessor for Configuration);
  sub_10031BE0C(&v48, v47);

  Engine.start()();

  sub_100306EFC(v30);

  v38 = v45;
  v39 = v46;
  *v45 = v34;
  v38[1] = v36;
  v40 = v42;
  v38[2] = v39;
  v38[3] = v40;
  *(v38 + 8) = 0;
  *(v38 + 36) = 1;
  return result;
}

uint64_t sub_10031BC94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v7 = a1[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (result == a2 && v7 == a3)
    {
      return 1;
    }

    else
    {
      return sub_1004A6D34() & 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031BD58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10031BD90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10031BE68(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031BEDC()
{

  if (*(v0 + 40) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10031BF58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10031BFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10031C150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10031C174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t sub_10031C1BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10031C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1004A5724() & 1) == 0)
  {
    return 0;
  }

  v10 = _s5StateV12InstanceInfoVMa(0, a3, a4, v9);
  return *(a1 + *(v10 + 36)) == *(a2 + *(v10 + 36));
}

Swift::Int sub_10031C2B4(uint64_t a1)
{
  sub_1004A6E94();
  DisplayPart.PlainTextLineKind.hash(into:)(v3, *v1);
  return sub_1004A6F14();
}

uint64_t sub_10031C31C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v9 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v9 - 8);
  v47 = &v37 - v10;
  v49 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v11 = a5 + 32;
    v12 = *(a5 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003364B8(v12);
      v12 = result;
    }

    *(a5 + 24) = v49;
    *(a5 + 32) = v12;
    if (!v12[2])
    {
      return result;
    }

    v46 = (v49 + 11);
    *&v14 = 136446466;
    v37 = v14;
    v48 = a1;
    v39 = a5;
    v38 = a3;
    v44 = a2;
    while (1)
    {
      v15 = v12[6];
      v16 = v12[7];
      v17 = v12[9];
      if (v17 > a1)
      {
        break;
      }

      v18 = a1 - v17;
      if (__OFSUB__(a1, v17))
      {
        goto LABEL_46;
      }

LABEL_12:
      if (v18 / 1000000000.0 < 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v18 / 1000000000.0;
      }

      a1 = v49[2];
      if (a1)
      {
        v20 = v46;
        while (1)
        {
          v21 = *(v20 - 7);
          v22 = *(v20 - 6);
          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v21 & 0xFFFFFFFFFFFFLL;
          }

          if (!v23)
          {
            __break(1u);
            goto LABEL_45;
          }

          v24 = v21 == v15 && v22 == v16;
          if (v24 || (sub_1004A6D34() & 1) != 0)
          {
            break;
          }

          v20 += 8;
          if (!--a1)
          {
            goto LABEL_37;
          }
        }

        *v20 = v19 + *v20;
        *(a5 + 24) = v49;
        v25 = *v20;
        a1 = *v20 & 0x7FFFFFFFFFFFFFFFLL;

        if (a1 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        if (v25 <= -9.22337204e18)
        {
          goto LABEL_49;
        }

        if (v25 >= 9.22337204e18)
        {
          goto LABEL_50;
        }

        v26 = v47;
        sub_10031DC4C(v45, v47);
        v27 = sub_1004A4A74();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v26, 1, v27) == 1)
        {

          sub_100025F40(v26, &qword_1005D5968, &unk_1004E9180);
        }

        else
        {

          v29 = sub_1004A4A54();
          v30 = sub_1004A6034();

          v43 = v30;
          if (os_log_type_enabled(v29, v30))
          {
            v42 = v25;
            v31 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v50 = v41;
            *v31 = v37;
            sub_100236568(8, v15, v16);
            v40 = v29;

            a3 = v38;
            v32 = sub_1004A5864();
            v34 = v33;
            a5 = v39;

            v35 = sub_10015BA6C(v32, v34, &v50);

            *(v31 + 4) = v35;
            *(v31 + 12) = 2048;
            *(v31 + 14) = v42;
            v36 = v40;
            _os_log_impl(&_mh_execute_header, v40, v43, "Tearing down instance for account %{public}s (run time: %ld)", v31, 0x16u);
            sub_1000197E0(v41);
          }

          else
          {
          }

          (*(v28 + 8))(v47, v27);
        }

        a2 = v44;
      }

LABEL_37:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v12[2])
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = sub_1003364B8(v12);
        v12 = result;
        if (!*(result + 16))
        {
LABEL_42:
          __break(1u);
          return result;
        }
      }

      a2(v12 + 4);
      *v11 = v12;
      sub_10034A618(0, &v51);

      v53 = v52;
      result = sub_10031DCBC(&v53);
      v12 = *v11;
      a1 = v48;
      if (!*(*v11 + 16))
      {
        return result;
      }
    }

    if (!__OFSUB__(v17, a1))
    {
      v18 = a1 - v17;
      if (__OFSUB__(0, v17 - a1))
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v49 = sub_1003364CC(v49);
  }
}

void sub_10031C80C(double *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v51 = a4;
  v54 = a2;
  v55 = a3;
  v9 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v9 - 8);
  v50 = v40 - v10;
  v11 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    v11 = sub_1003364CC(v11);
  }

  v13 = a5 + 32;
  v12 = *(a5 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1003364B8(v12);
  }

  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  v52 = a5;
  v15 = v12[2];
  if (!v15)
  {
    return;
  }

  v49 = (v11 + 11);
  *&v14 = 136446466;
  v47 = v14;
  v53 = a1;
  while (1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = &v12[v16];
      if ((v12[v16 + 8] & 0x100000000) != 0 || *(v18 + 16) != a6)
      {
        break;
      }

      ++v17;
      v16 += 6;
      if (v15 == v17)
      {
        return;
      }
    }

    v20 = v18[6];
    v19 = v18[7];
    v21 = v18[9];
    if (v21 <= a1)
    {
      break;
    }

    if (__OFSUB__(v21, a1))
    {
      goto LABEL_50;
    }

    v22 = a1 - v21;
    if (__OFSUB__(0, v21 - a1))
    {
      goto LABEL_51;
    }

LABEL_17:
    if (v22 / 1000000000.0 < 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v22 / 1000000000.0;
    }

    a5 = v11[2];
    if (a5)
    {
      a1 = v49;
      while (1)
      {
        v24 = *(a1 - 7);
        v25 = *(a1 - 6);
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (!v26)
        {
          __break(1u);
          goto LABEL_47;
        }

        v27 = v24 == v20 && v25 == v19;
        if (v27 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        a1 += 8;
        if (!--a5)
        {
          goto LABEL_41;
        }
      }

      *a1 = v23 + *a1;
      *(v52 + 24) = v11;
      v28 = *a1;
      v29 = *a1 & 0x7FFFFFFFFFFFFFFFLL;

      if (v29 > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_52;
      }

      if (v28 <= -9.22337204e18)
      {
        goto LABEL_53;
      }

      if (v28 >= 9.22337204e18)
      {
        goto LABEL_54;
      }

      v30 = v50;
      sub_10031DC4C(v51, v50);
      a5 = sub_1004A4A74();
      v48 = *(a5 - 8);
      if ((*(v48 + 48))(v30, 1, a5) == 1)
      {

        sub_100025F40(v30, &qword_1005D5968, &unk_1004E9180);
      }

      else
      {
        v45 = v11;
        v46 = a5;

        a5 = sub_1004A4A54();
        v31 = sub_1004A6034();

        v44 = v31;
        if (os_log_type_enabled(a5, v31))
        {
          v43 = v28;
          v32 = swift_slowAlloc();
          v42 = a5;
          a5 = v32;
          v33 = swift_slowAlloc();
          v56 = v33;
          *a5 = v47;
          v41 = sub_100236568(8, v20, v19);
          v40[1] = v34;
          v40[0] = v35;

          v41 = sub_1004A5864();
          v37 = v36;

          v38 = sub_10015BA6C(v41, v37, &v56);

          *(a5 + 4) = v38;
          *(a5 + 12) = 2048;
          *(a5 + 14) = v43;
          v39 = v42;
          _os_log_impl(&_mh_execute_header, v42, v44, "Tearing down instance for account %{public}s (run time: %ld)", a5, 0x16u);
          sub_1000197E0(v33);
        }

        else
        {
        }

        v11 = v45;
        (*(v48 + 8))(v30, v46);
      }
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003364B8(v12);
    }

    a1 = v53;
    if (v17 >= v12[2])
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v54(&v12[v16 + 4]);
    *v13 = v12;
    sub_10034A618(v17, &v57);

    v59 = v58;
    sub_10031DCBC(&v59);
    v12 = *v13;
    v15 = *(*v13 + 16);
    if (!v15)
    {
      return;
    }
  }

  v22 = a1 - v21;
  if (!__OFSUB__(a1, v21))
  {
    goto LABEL_17;
  }

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

uint64_t sub_10031CD50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a2 & (a4 ^ 1);
  if (a1 != a3)
  {
    v4 = 0;
  }

  if (a1 >= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_10031CDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v47 = *(a3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v9 = a3 + 32;
    v10 = *(a3 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003364B8(v10);
      v10 = result;
    }

    *(a3 + 24) = v47;
    *(a3 + 32) = v10;
    if (!v10[2])
    {
      return result;
    }

    v46 = (v47 + 11);
    *&v12 = 136446466;
    v37 = v12;
    v39 = a3;
    v38 = a2;
    v44 = v8;
    v45 = a1;
    while (1)
    {
      v14 = v10[6];
      v13 = v10[7];
      v15 = v10[9];
      if (v15 > a1)
      {
        break;
      }

      v16 = a1 - v15;
      if (__OFSUB__(a1, v15))
      {
        goto LABEL_45;
      }

LABEL_12:
      if (v16 / 1000000000.0 < 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v16 / 1000000000.0;
      }

      v18 = v47[2];
      if (v18)
      {
        v19 = v46;
        while (1)
        {
          v20 = *(v19 - 7);
          v21 = *(v19 - 6);
          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (!v22)
          {
            __break(1u);
            goto LABEL_44;
          }

          v23 = v20 == v14 && v21 == v13;
          if (v23 || (sub_1004A6D34() & 1) != 0)
          {
            break;
          }

          v19 += 8;
          if (!--v18)
          {
            goto LABEL_36;
          }
        }

        *v19 = v17 + *v19;
        *(a3 + 24) = v47;
        v24 = *v19;
        v25 = *v19 & 0x7FFFFFFFFFFFFFFFLL;

        if (v25 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        if (v24 <= -9.22337204e18)
        {
          goto LABEL_48;
        }

        if (v24 >= 9.22337204e18)
        {
          goto LABEL_49;
        }

        sub_10031DC4C(a2, v8);
        v26 = sub_1004A4A74();
        v27 = v8;
        v28 = *(v26 - 8);
        if ((*(v28 + 48))(v27, 1, v26) == 1)
        {

          sub_100025F40(v27, &qword_1005D5968, &unk_1004E9180);
          a1 = v45;
          v8 = v27;
        }

        else
        {

          v29 = sub_1004A4A54();
          v30 = sub_1004A6034();

          if (os_log_type_enabled(v29, v30))
          {
            v43 = v24;
            v31 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v48 = v42;
            *v31 = v37;
            sub_100236568(8, v14, v13);
            v40 = v30;
            v41 = v29;

            v32 = sub_1004A5864();
            v34 = v33;

            v35 = sub_10015BA6C(v32, v34, &v48);
            a2 = v38;

            *(v31 + 4) = v35;
            *(v31 + 12) = 2048;
            *(v31 + 14) = v43;
            v29 = v41;
            _os_log_impl(&_mh_execute_header, v41, v40, "Tearing down instance for account %{public}s (run time: %ld)", v31, 0x16u);
            sub_1000197E0(v42);

            a3 = v39;
          }

          else
          {
          }

          v36 = v44;
          (*(v28 + 8))(v44, v26);
          v8 = v36;
          a1 = v45;
        }
      }

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v10[2])
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = sub_1003364B8(v10);
        v10 = result;
        if (!*(result + 16))
        {
LABEL_41:
          __break(1u);
          return result;
        }
      }

      sub_100319DA4((v10 + 4));
      *v9 = v10;
      sub_10034A618(0, &v49);

      v51 = v50;
      result = sub_10031DCBC(&v51);
      v10 = *v9;
      if (!*(*v9 + 16))
      {
        return result;
      }
    }

    if (!__OFSUB__(v15, a1))
    {
      v16 = a1 - v15;
      if (__OFSUB__(0, v15 - a1))
      {
        goto LABEL_46;
      }

      goto LABEL_12;
    }

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
LABEL_49:
    __break(1u);
LABEL_50:
    v47 = sub_1003364CC(v47);
  }
}

uint64_t sub_10031D29C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1004A4A74();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_10031CDCC(a1, v10, a4);
  sub_100025F40(v10, &qword_1005D5968, &unk_1004E9180);

  *(a4 + 3) = _swiftEmptyArrayStorage;
  v14 = a4 + 4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 7);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v28 = *(a4 + 6);
    v17 = *(a4 + 9);
    v18 = *(a4 + 10);

    v19 = sub_1004A4A54();
    v20 = sub_1004A6034();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27 = a2;
      *v21 = 67109120;
      *(v21 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v19, v20, "Stop and clear everything: completing sync #%u for all accounts.", v21, 8u);
      a2 = v27;
    }

    v22 = a4[3];
    v31 = a4[2];
    v32 = v22;
    v33[0] = a4[4];
    *(v33 + 12) = *(a4 + 76);
    v23 = a4[1];
    v29 = *a4;
    v30 = v23;
    v24 = *v14;
    v34[0] = a4[3];
    v34[1] = v24;
    v35 = *(a4 + 10);

    v25 = sub_100315B60();
    v17(v25);
    v26 = v28;
    sub_10031B5C0(v28, v16, v15, v17, v18);
    sub_10031B5C0(v26, v16, v15, v17, v18);
    result = sub_100025F40(v34, &qword_1005D8C90, &qword_1004F5F10);
  }

  *(a4 + 6) = a2;
  *(a4 + 7) = 0x8000000000000000;
  *(a4 + 9) = 0;
  *(a4 + 10) = 0;
  *v14 = 0;
  return result;
}

uint64_t sub_10031D53C(unint64_t a1, void (*a2)(unint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v66 = a6;
  v53 = a4;
  v59 = a3;
  v58 = a2;
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v8 - 8);
  v55 = v51 - v9;
  v56 = a5;
  v61 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_68:
    v61 = sub_1003364CC(v61);
  }

  v10 = *(v56 + 32);
  v57 = (v56 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  v60 = a1;
  if ((result & 1) == 0)
  {
    result = sub_1003364B8(v10);
    v10 = result;
  }

  v13 = v56;
  *(v56 + 24) = v61;
  *(v13 + 32) = v10;
  v64 = v10;
  v15 = v10 + 2;
  v14 = v10[2];
  if (v14)
  {
    v65 = v66 + 7;
    v54 = (v61 + 11);
    *&v12 = 136446466;
    v52 = v12;
LABEL_6:
    v16 = 0;
    v17 = v64 + 4;
    v63 = v14;
    v62 = v64 + 4;
    while (v16 < *v15)
    {
      v18 = &v17[6 * v16];
      v19 = *(v18 + 36);
      if (v66[2])
      {
        v21 = v18[2];
        v20 = v18[3];
        v22 = v66;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v23 = sub_1004A6F14();
        v24 = -1 << *(v22 + 32);
        a1 = v23 & ~v24;
        if ((*(v65 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
        {
          v25 = ~v24;
          while (1)
          {
            v26 = (v66[6] + 16 * a1);
            v27 = *v26 == v21 && v26[1] == v20;
            if (v27 || (sub_1004A6D34() & 1) != 0)
            {
              break;
            }

            a1 = (a1 + 1) & v25;
            if (((*(v65 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

LABEL_22:
          if (v16 < *v15)
          {
            v28 = v18[2];
            v29 = v18[3];
            v30 = v18[5];
            if (v30 <= v60)
            {
              v32 = v60 - v30;
              v31 = v64;
              if (!__OFSUB__(v60, v30))
              {
                goto LABEL_29;
              }

              goto LABEL_62;
            }

            v31 = v64;
            if (__OFSUB__(v30, v60))
            {
LABEL_63:
              __break(1u);
            }

            else
            {
              v32 = v60 - v30;
              if (!__OFSUB__(0, v30 - v60))
              {
LABEL_29:
                if (v32 / 1000000000.0 < 0.0)
                {
                  v33 = 0.0;
                }

                else
                {
                  v33 = v32 / 1000000000.0;
                }

                a1 = v61[2];
                if (!a1)
                {
                  goto LABEL_53;
                }

                v34 = v54;
                while (1)
                {
                  v35 = *(v34 - 7);
                  v36 = *(v34 - 6);
                  v37 = HIBYTE(v36) & 0xF;
                  if ((v36 & 0x2000000000000000) == 0)
                  {
                    v37 = v35 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v37)
                  {
                    __break(1u);
                    goto LABEL_59;
                  }

                  v38 = v35 == v28 && v36 == v29;
                  if (v38 || (sub_1004A6D34() & 1) != 0)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--a1)
                  {
                    goto LABEL_53;
                  }
                }

                *v34 = v33 + *v34;
                *(v56 + 24) = v61;
                v39 = *v34;
                v40 = *v34 & 0x7FFFFFFFFFFFFFFFLL;

                if (v40 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_65;
                }

                if (v39 > -9.22337204e18)
                {
                  if (v39 >= 9.22337204e18)
                  {
                    goto LABEL_67;
                  }

                  v41 = v55;
                  sub_10031DC4C(v53, v55);
                  v42 = sub_1004A4A74();
                  v43 = *(v42 - 8);
                  if ((*(v43 + 48))(v41, 1, v42) == 1)
                  {

                    sub_100025F40(v41, &qword_1005D5968, &unk_1004E9180);
                  }

                  else
                  {

                    v44 = sub_1004A4A54();
                    a1 = sub_1004A6034();

                    if (os_log_type_enabled(v44, a1))
                    {
                      v63 = v39;
                      v45 = swift_slowAlloc();
                      v46 = swift_slowAlloc();
                      v67[0] = v46;
                      *v45 = v52;
                      sub_100236568(8, v28, v29);
                      v51[1] = v47;
                      LODWORD(v62) = a1;

                      v48 = sub_1004A5864();
                      v50 = v49;
                      v31 = v64;

                      a1 = sub_10015BA6C(v48, v50, v67);

                      *(v45 + 4) = a1;
                      *(v45 + 12) = 2048;
                      *(v45 + 14) = v63;
                      _os_log_impl(&_mh_execute_header, v44, v62, "Tearing down instance for account %{public}s (run time: %ld)", v45, 0x16u);
                      sub_1000197E0(v46);
                    }

                    else
                    {
                    }

                    (*(v43 + 8))(v55, v42);
                  }

LABEL_53:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v31 = sub_1003364B8(v31);
                  }

                  if (v16 < v31[2])
                  {
                    v58(&v31[6 * v16 + 4]);
                    a1 = v57;
                    *v57 = v31;
                    sub_10034A618(v16, &v68);

                    v70 = v69;
                    result = sub_10031DCBC(&v70);
                    v64 = *a1;
                    v15 = v64 + 2;
                    v14 = v64[2];
                    if (v14)
                    {
                      goto LABEL_6;
                    }

                    return result;
                  }

LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

LABEL_17:

        v14 = v63;
        v17 = v62;
      }

      if (v19)
      {
        goto LABEL_22;
      }

      if (++v16 == v14)
      {
        return result;
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_10031DC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AppendData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10031DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10031DE04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10031DE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = (v3 >> 1) << 32;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10031DEF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10031DF70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10031E074(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10031E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10031E298()
{
  result = qword_1005D8FD8;
  if (!qword_1005D8FD8)
  {
    result = swift_getWitnessTable("Q\n\t", &_s6ResultON, v0, v1);
    atomic_store(result, &qword_1005D8FD8);
  }

  return result;
}

void sub_10031E2EC(void *a1)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004CEAA0;
  v4 = [a1 objectID];
  *(v3 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v3 + 32) = v4;
  v5 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:isa];

  [v1 appendPredicate:v7];
}

void sub_10031E42C(void *a1)
{
  v3 = [v1 predicate];
  if (v3)
  {
    v4 = v3;
    sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1004F6340;
    *(v5 + 32) = v4;
    *(v5 + 40) = a1;
    sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
    v6 = v4;
    v7 = a1;
    isa = sub_1004A5C04().super.isa;

    v9 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v1 setPredicate:v9];
  }

  else
  {

    [v1 setPredicate:a1];
  }
}

void sub_10031E5F0(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = sub_10035E0A8(*(a1 + 16), 0);
    v5 = sub_10031EE9C(v68, v4 + 4, v3, a1);
    v6 = v68[0];

    sub_100020D08(v6);
    if (v5 != v3)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v63 = v1;
  v68[0] = v4;
  sub_10031F154(v68, sub_100367F40, &type metadata for Account.ID, sub_10020E050, sub_10020DF80);
  v7 = v68[0];
  v67 = _swiftEmptyArrayStorage;
  v8 = *(v68[0] + 16);
  p_attr = (&stru_1005CAFF8 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = v68[0] + 40;
    v62 = v68[0] + 40;
LABEL_7:
    v13 = (v12 + 16 * v11);
    do
    {
      if (v11 >= *(v7 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (*(a1 + 16))
      {
        v15 = *(v13 - 1);
        v14 = *v13;

        v16 = sub_10035E1B0(v15, v14);
        if (v17)
        {
          v18 = *(*(a1 + 56) + 8 * v16);
          if (*(v18 + 16))
          {
            sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_1004CEAA0;
            *(v19 + 56) = &type metadata for String;
            *(v19 + 32) = v15;
            *(v19 + 40) = v14;

            v20 = sub_1004A5734();
            isa = sub_1004A5C04().super.isa;

            v54 = objc_opt_self();
            v58 = [v54 predicateWithFormat:v20 argumentArray:isa];

            v22 = *(v18 + 16);
            if (v22)
            {
              v23 = sub_1001354C0(*(v18 + 16), 0);
              v59 = sub_10031EFF4(v68, (v23 + 4), v22, v18);
              v57 = v68[0];

              sub_100020D08(v57);
              if (v59 != v22)
              {
LABEL_45:
                __break(1u);
              }
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
            }

            v24 = 0;
            v68[0] = v23;
            sub_10031F154(v68, sub_100141998, &type metadata for MailboxName, sub_10031F408, sub_10031F300);

            v25 = v68[0];
            v66 = _swiftEmptyArrayStorage;
            v26 = *(v68[0] + 16);
LABEL_19:
            v27 = v10;
            v28 = v24;
            v29 = 16 * v24 + 16;
            while (v26 != v24)
            {
              if (v24 >= *(v25 + 16))
              {
                goto LABEL_42;
              }

              if (v10 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_43;
              }

              ++v10;
              ++v24;
              v29 += 16;
              if (v10 <= 19)
              {
                v60 = *(v25 + v29);
                v53 = swift_allocObject();
                *(v53 + 16) = xmmword_1004CEAA0;
                v30 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
                v68[3] = v30;
                v68[4] = sub_1001E29A4();
                v68[0] = v60;
                v31 = sub_10002587C(v68, v30);
                v32 = *v31;
                v33 = *(*v31 + 16);
                v52 = v26;
                if (v33)
                {
                  if (v33 <= 0xE)
                  {
                    memset(__dst, 0, sizeof(__dst));
                    v65 = v33;
                    memcpy(__dst, (v32 + 32), v33);
                    v35 = *__dst;
                    v36 = v48 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v65 << 16)) << 32);
                    swift_bridgeObjectRetain_n();
                    v48 = v36;
                  }

                  else
                  {
                    v49 = *(*v31 + 16);
                    sub_1004A4114();
                    swift_allocObject();
                    swift_bridgeObjectRetain_n();
                    v34 = sub_1004A40C4();
                    if (v49 >= 0x7FFFFFFF)
                    {
                      v47 = v34;
                      sub_1004A43C4();
                      v35 = swift_allocObject();
                      *(v35 + 16) = 0;
                      *(v35 + 24) = v49;
                      v36 = v47 | 0x8000000000000000;
                    }

                    else
                    {
                      v35 = v49 << 32;
                      v36 = v34 | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  swift_bridgeObjectRetain_n();
                  v35 = 0;
                  v36 = 0xC000000000000000;
                }

                sub_1000197E0(v68);
                v50 = sub_1004A4404().super.isa;
                sub_100014D40(v35, v36);
                *(v53 + 56) = sub_10019A8E4(0, &qword_1005D9000, NSData_ptr);
                *(v53 + 32) = v50;
                v37 = sub_1004A5734();
                v51 = sub_1004A5C04().super.isa;

                [v54 predicateWithFormat:v37 argumentArray:v51];

                sub_1004A5BF4();
                if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1004A5C44();
                }

                sub_1004A5C84();
                v26 = v52;
                goto LABEL_19;
              }
            }

            v56 = v27;
            v61 = v28;

            sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
            v38 = sub_1004A5C04().super.isa;

            v39 = objc_opt_self();
            v40 = [v39 orPredicateWithSubpredicates:v38];

            sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_1004F6340;
            *(v41 + 32) = v58;
            *(v41 + 40) = v40;
            v55 = v58;
            v42 = v40;
            v43 = sub_1004A5C04().super.isa;

            [v39 andPredicateWithSubpredicates:v43];

            sub_1004A5BF4();
            if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004A5C44();
            }

            v10 = v26 + v56 - v61;
            sub_1004A5C84();
            v12 = v62;
            v44 = v8 - 1 == v11;
            p_attr = (&stru_1005CAFF8 + 8);
            ++v11;
            if (v44)
            {
              goto LABEL_40;
            }

            goto LABEL_7;
          }
        }
      }

      ++v11;
      v13 += 2;
    }

    while (v8 != v11);
    p_attr = &stru_1005CAFF8.attr;
  }

LABEL_40:

  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v45 = sub_1004A5C04().super.isa;

  v46 = [objc_opt_self() p_attr[467]];

  [v63 appendPredicate:v46];
}

void *sub_10031EE9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10031EFF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10031F154(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_10031F1F0(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int sub_10031F1F0(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1004A6CC4(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1004A5C64();
        v10[2] = v7 / 2;
      }

      v12[0] = v10 + 4;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_10031F300(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v17 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 - 16);
      v12 = *(v8 - 8);

      LOBYTE(v12) = static MailboxName.stableOrder(_:_:)(v9, v10, v11, v12);

      if ((v12 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 += 16;
        --v6;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v8;
      v14 = *(v8 + 8);
      *v8 = *(v8 - 16);
      *(v8 - 8) = v14;
      *(v8 - 16) = v13;
      v8 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031F408(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_94:
    v6 = *v105;
    if (!*v105)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100141810(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v5 = v95 - 1;
        v96 = *&v8[16 * v95];
        v97 = *&v8[16 * v95 + 24];
        sub_10031FAD8((*a3 + 16 * v96), (*a3 + 16 * *&v8[16 * v95 + 16]), (*a3 + 16 * v97), v6);
        if (v94)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v95 - 2 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v98 = &v8[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        result = sub_100141784(v95 - 1);
        v95 = *(v8 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v25 = v7 + 1;
    }

    else
    {
      v103 = v8;
      v100 = v5;
      v10 = *a3 + 16 * (v7 + 1);
      v11 = *v10;
      v12 = *(v10 + 8);
      v5 = 16 * v7;
      v13 = *a3 + 16 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);

      v16 = static MailboxName.stableOrder(_:_:)(v11, v12, v14, v15);

      v102 = v7;
      v17 = v7 + 2;
      v18 = v13 + 24;
      do
      {
        if (v6 == v17)
        {
          v25 = v6;
          v8 = v103;
          if (!v16)
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

        v19 = *(v18 + 8);
        v20 = v18 + 16;
        v21 = *(v18 + 16);
        v22 = *(v18 - 8);
        v23 = *v18;

        v24 = static MailboxName.stableOrder(_:_:)(v19, v21, v22, v23);

        ++v17;
        v18 = v20;
      }

      while (v16 == v24);
      v25 = v17 - 1;
      v8 = v103;
      if (!v16)
      {
LABEL_9:
        v5 = v100;
        v9 = v102;
        goto LABEL_24;
      }

LABEL_12:
      v9 = v102;
      if (v25 < v102)
      {
        goto LABEL_124;
      }

      if (v102 < v25)
      {
        v26 = 16 * v25 - 16;
        v27 = v25;
        v28 = v102;
        do
        {
          if (v28 != --v27)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v31 = (v30 + v5);
            v32 = (v30 + v26);
            v33 = *(v30 + v5);
            v34 = *(v30 + v5 + 8);
            if (v5 != v26 || v31 >= v32 + 1)
            {
              *v31 = *v32;
            }

            v29 = v30 + v26;
            *v29 = v33;
            *(v29 + 8) = v34;
          }

          ++v28;
          v26 -= 16;
          v5 += 16;
        }

        while (v28 < v27);
      }

      v5 = v100;
    }

LABEL_24:
    v35 = a3[1];
    if (v25 < v35)
    {
      if (__OFSUB__(v25, v9))
      {
        goto LABEL_123;
      }

      if (v25 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_125;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v25 != v36)
        {
          break;
        }
      }
    }

    v7 = v25;
    if (v25 < v9)
    {
      goto LABEL_122;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_100085288((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v7;
    v41 = *v105;
    if (!*v105)
    {
      goto LABEL_132;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_53:
          if (v46)
          {
            goto LABEL_111;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_114;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_118;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_67:
        if (v64)
        {
          goto LABEL_113;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_74:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v81 = *&v8[16 * v80 + 32];
        v6 = *&v8[16 * v42 + 40];
        sub_10031FAD8((*a3 + 16 * v81), (*a3 + 16 * *&v8[16 * v42 + 32]), (*a3 + 16 * v6), v41);
        if (v5)
        {
        }

        if (v6 < v81)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_108;
        }

        v82 = &v8[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v6;
        result = sub_100141784(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_109;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_110;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_112;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_115;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_94;
    }
  }

  v104 = v8;
  v101 = v5;
  v83 = *a3;
  v84 = *a3 + 16 * v25;
  v85 = v9 - v25;
  v106 = v36;
LABEL_85:
  v107 = v25;
  v86 = v85;
  v6 = v84;
  while (1)
  {
    v87 = *v6;
    v88 = *(v6 + 8);
    v89 = *(v6 - 16);
    v90 = *(v6 - 8);

    LOBYTE(v90) = static MailboxName.stableOrder(_:_:)(v87, v88, v89, v90);

    if ((v90 & 1) == 0)
    {
LABEL_84:
      v7 = v106;
      v25 = v107 + 1;
      v84 += 16;
      --v85;
      if (v107 + 1 != v106)
      {
        goto LABEL_85;
      }

      v5 = v101;
      v8 = v104;
      if (v106 < v9)
      {
        goto LABEL_122;
      }

      goto LABEL_34;
    }

    if (!v83)
    {
      break;
    }

    v91 = *v6;
    v92 = *(v6 + 8);
    *v6 = *(v6 - 16);
    *(v6 - 8) = v92;
    *(v6 - 16) = v91;
    v6 -= 16;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_10031FAD8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  v33 = __dst;
  if (v9 < v12)
  {
    v13 = 16 * v9;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      v14 = __dst;
      memmove(__dst, __src, v13);
      __dst = v14;
    }

    v15 = &__dst[v13];
    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v16 = v33;
      goto LABEL_38;
    }

    v16 = v33;
    while (1)
    {
      v17 = *v5;
      v18 = *(v5 + 2);
      v19 = *v16;
      v20 = *(v16 + 2);

      LOBYTE(v20) = static MailboxName.stableOrder(_:_:)(v17, v18, v19, v20);

      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = v5;
      v22 = v6 == v5;
      v5 += 16;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v16 >= v15 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v21 = v16;
    v22 = v6 == v16;
    v16 += 16;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v21;
    goto LABEL_18;
  }

  v23 = 16 * v12;
  v16 = __dst;
  if (__dst != a2 || &a2[v23] <= __dst)
  {
    memmove(__dst, a2, 16 * v12);
  }

  v15 = &v16[v23];
  if (v10 >= 16 && v5 > v6)
  {
    do
    {
      v32 = v5 - 16;
      v4 -= 16;
      v24 = v15;
      while (1)
      {
        v25 = v4 + 16;
        v26 = *(v24 - 2);
        v24 -= 16;
        v27 = *(v24 + 2);
        v28 = *(v5 - 2);
        v29 = *(v5 - 2);

        LOBYTE(v29) = static MailboxName.stableOrder(_:_:)(v26, v27, v28, v29);

        if (v29)
        {
          break;
        }

        if (v25 != v15)
        {
          *v4 = *v24;
        }

        v4 -= 16;
        v15 = v24;
        v16 = v33;
        if (v24 <= v33)
        {
          v15 = v24;
          goto LABEL_38;
        }
      }

      if (v25 != v5)
      {
        *v4 = *v32;
      }

      v16 = v33;
      if (v15 <= v33)
      {
        break;
      }

      v5 -= 16;
    }

    while (v32 > v6);
    v5 = v32;
  }

LABEL_38:
  v30 = (v15 - v16 + (v15 - v16 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v5 != v16 || v5 >= &v16[v30])
  {
    memmove(v5, v16, v30);
  }

  return 1;
}

uint64_t sub_10031FD9C(unint64_t a1)
{
  v1 = HIBYTE(a1);
  v2 = a1 & &_mh_execute_header;
  if (a1)
  {
    if ((a1 & 0x100) != 0)
    {
      if ((a1 & 0x10000) != 0)
      {
        if ((a1 & 0x1000000) != 0)
        {
          if (v2)
          {
            v3 = 31;
            if ((a1 & 0x10000000000) != 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v3 = 15;
            if ((a1 & 0x10000000000) != 0)
            {
              goto LABEL_62;
            }
          }
        }

        else if (v2)
        {
          v3 = 23;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 7;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if ((a1 & 0x1000000) != 0)
      {
        if (v2)
        {
          v3 = 27;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 11;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if (v2)
      {
        v3 = 19;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 3;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x10000) != 0)
    {
      v4 = v2 == 0;
      if ((a1 & 0x1000000) != 0)
      {
        v3 = 29;
        if (v4)
        {
          v3 = 13;
        }

        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 21;
        if (v4)
        {
          v3 = 5;
        }

        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x1000000) != 0)
    {
      v4 = v2 == 0;
      v3 = 25;
      if (v4)
      {
        v3 = 9;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (!v2)
      {
        v3 = 1;
        if ((a1 & 0x10000000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_62:
        v3 |= 0x20uLL;
        goto LABEL_63;
      }

      v3 = 17;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    if ((a1 & 0x10000) != 0)
    {
      if ((a1 & 0x1000000) != 0)
      {
        if (v2)
        {
          v3 = 30;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 14;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if (v2)
      {
        v3 = 22;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 6;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x1000000) != 0)
    {
      if (v2)
      {
        v3 = 26;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 10;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if (v2)
    {
      v3 = 18;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v3 = 2;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x10000) != 0)
  {
    v5 = v2 == 0;
    if ((a1 & 0x1000000) != 0)
    {
      v3 = 28;
      if (v5)
      {
        v3 = 12;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v3 = 20;
      if (v5)
      {
        v3 = 4;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x1000000) != 0)
  {
    v4 = v2 == 0;
    v3 = 24;
    if (v4)
    {
      v3 = 8;
    }

    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v3 = v2 >> 28;
    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  if (!BYTE6(a1))
  {
    if (v1 > 3)
    {
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  if (BYTE6(a1) != 1)
  {
    v3 |= 0x200uLL;
    if (v1 > 3)
    {
      goto LABEL_70;
    }

LABEL_66:
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return v3 | 0x1000;
      }

      else
      {
        return v3 | 0x1800;
      }
    }

    else if (v1)
    {
      return v3 | 0x800;
    }

    else
    {
      return v3;
    }
  }

  v3 |= 0x100uLL;
  if (v1 <= 3)
  {
    goto LABEL_66;
  }

LABEL_70:
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      return v3 | 0x3000;
    }

    else
    {
      return v3 | 0x3800;
    }
  }

  else if (v1 == 4)
  {
    return v3 | 0x2000;
  }

  else
  {
    return v3 | 0x2800;
  }
}

uint64_t sub_100320034(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_100320048(unint64_t a1)
{
  v2 = sub_100320034((a1 >> 11) & 7);
  v3 = (a1 >> 8) & 3;
  v4 = (v3 == 1) << 48;
  v5 = v3 == 2;
  v6 = 0x2000000000000;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = vdupq_n_s64(a1);
  v8 = vorrq_s8(vandq_s8(vshlq_u64(v7, xmmword_1004F6350), xmmword_1004F6380), vandq_s8(vshlq_u64(v7, xmmword_1004F6360), xmmword_1004F6370));
  return *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | (a1 << 35) & 0x10000000000 | a1 & 1 | qword_1004F6390[v2] | v6;
}

uint64_t sub_100320100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int sub_100320164(uint64_t a1)
{
  sub_1004A6E94();
  ModificationSequenceValue.hash(into:)(v3, *v1);
  return sub_1004A6F14();
}

char *sub_100320230(void *a1)
{
  v3 = type metadata accessor for IndexUpdater.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v51 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1004A6164();
  __chkstk_darwin(v47);
  v5 = sub_1004A6074();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4A74();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  *(v1 + 2) = a1;
  v50 = a1;
  sub_1004A4A64();
  v52 = v10;
  v53 = v9;
  v15 = *(v10 + 16);
  v54 = v14;
  v48 = v15;
  v15(&v1[OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger], v14, v9);
  sub_10019A8E4(0, &qword_1005D5A50, OS_dispatch_workloop_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  v55 = _swiftEmptyArrayStorage;
  sub_100323A48(&qword_1005D91D0, &type metadata accessor for OS_dispatch_workloop.Attributes, &protocol conformance descriptor for OS_dispatch_workloop.Attributes);
  sub_10000C9C0(&qword_1005D5A58, &unk_1004E9230);
  v16 = v1;
  sub_1000CBB00(&qword_1005D91E0, &qword_1005D5A58, &unk_1004E9230);
  sub_1004A6544();
  *(v1 + 3) = sub_1004A6174();
  v17 = objc_allocWithZone(CSSearchableIndex);
  v18 = sub_1004A5734();
  v19 = [v17 initWithName:v18];

  if (qword_1005D8738 != -1)
  {
    swift_once();
  }

  v20 = sub_1004A4374();
  v21 = sub_1001C203C(v20, qword_1005D8A40);
  __chkstk_darwin(v21);
  v22 = v54;
  *(&v46 - 2) = v54;
  *(&v46 - 1) = v19;
  v24 = sub_10035B7B4(v23, sub_1003239B0, (&v46 - 4));
  *(v16 + 4) = v24;
  v25 = v49;
  v26 = v53;
  v48(v49, v22, v53);
  type metadata accessor for DelayedSave(0);
  swift_allocObject();
  v27 = v24;
  v28 = sub_100308BD4(v27, v25);
  type metadata accessor for IndexQueue();
  v29 = swift_allocObject();
  sub_10000C9C0(&qword_1005D91E8, &qword_1004F65A0);
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 0;
  *(v29 + 32) = v30;
  v31 = swift_allocObject();
  *(v31 + 20) = 0;
  *(v31 + 16) = 0;
  *(v29 + 40) = v31;
  v32 = v27;

  v33 = *sub_1004A47B4();
  sub_10000C9C0(&qword_1005D91F0, &qword_1004F65A8);
  v34 = swift_allocObject();
  *(v34 + 48) = 0;
  *(v34 + 16) = v33;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 40) = _swiftEmptyArrayStorage;
  *(v29 + 48) = v34;
  *(v29 + 56) = 1;
  *(v29 + 64) = UInt32.init(_:);
  *(v29 + 72) = 0;
  *(v29 + 16) = v32;
  *(v29 + 24) = v28;
  *(v29 + 80) = xmmword_1004F6510;
  *(v16 + 6) = v29;
  type metadata accessor for SpotlightIndexer();
  v35 = swift_allocObject();
  swift_retain_n();

  v36 = v19;
  *(v16 + 5) = sub_1003230D8(v36, v29, 23, v35);
  v37 = swift_allocObject();
  swift_weakInit();

  sub_100327650(sub_1003239F0, v37);

  *(v16 + 7) = sub_10032DD9C(v32, v29);
  v38 = v51;
  sub_10032C858(v32, v51);
  type metadata accessor for IndexUpdater(0);
  swift_allocObject();
  v39 = v32;

  *(v16 + 8) = sub_10032B930(v38, v39, v29);
  type metadata accessor for Search();
  v40 = swift_allocObject();
  v41 = v50;
  *(v40 + 16) = v50;
  *(v40 + 24) = v39;
  *(v16 + 9) = v40;
  type metadata accessor for Downloader();
  swift_allocObject();
  v42 = v41;
  v43 = v39;
  v44 = sub_1003198C0(v42, v43, v29, v28);

  *(v16 + 10) = v44;
  (*(v52 + 8))(v54, v26);
  return v16;
}

uint64_t sub_10032096C(uint64_t a1, void *a2)
{
  v4 = sub_1004A4A74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1004A4A54();
  v8 = sub_1004A6014();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to open existing database. Removing all existing data from Spotlight.", v9, 2u);
  }

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100323B20;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346E74;
  aBlock[3] = &unk_1005B3F70;
  v12 = _Block_copy(aBlock);

  [a2 deleteAllSearchableItemsWithCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_100320B98(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = static MonotonicTime.now()();
    v4 = *(v2 + 32);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100323A30;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1002344B8;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022ECC8;
    aBlock[3] = &unk_1005B3EF8;
    v7 = _Block_copy(aBlock);

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100320D44(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v44 = a3;
  v45 = a4;
  v49 = a2;
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  aBlock = 0;
  v53 = 0xE000000000000000;
  sub_1004A6724(40);

  aBlock = 0xD000000000000026;
  v53 = 0x80000001004AEEB0;
  v58._countAndFlagsBits = IndexRequest.ID.description.getter();
  sub_1004A5994(v58);

  sub_1004A5844();

  v15 = os_transaction_create();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a5;
  v16[4] = a6;
  v17 = v7[2];
  *v14 = v17;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v43 = v15;
  swift_unknownObjectRetain();

  v18 = v17;
  LOBYTE(v15) = sub_1004A5404();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v42 = v16;
    v20 = static MonotonicTime.now()();
    sub_10036E13C(v20);
    v21 = v7[4];
    v56 = sub_1003224D8;
    v57 = v7;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_10019C778;
    v55 = &unk_1005B3CC8;
    v22 = _Block_copy(&aBlock);

    [v21 performBlock:v22];
    _Block_release(v22);
    v23 = v49;
    v24 = *(v49 + 2);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v40 = a1;
      v41 = v7;
      aBlock = _swiftEmptyArrayStorage;
      sub_10034F650(0, v24, 0);
      v25 = aBlock;
      v26 = (v23 + 66);
      do
      {
        v27 = *(v26 - 34);
        v28 = *(v26 - 26);
        v49 = *(v26 - 18);
        v29 = *(v26 - 10);
        v30 = *(v26 - 1);
        v47 = *v26;
        v48 = v30;
        v31 = swift_allocObject();
        v32 = v45;
        v31[2] = v44;
        v31[3] = v32;
        v46 = v27;
        v31[4] = v27;
        v31[5] = v28;
        aBlock = v25;
        v33 = v25[2];
        v34 = v25[3];
        swift_bridgeObjectRetain_n();

        if (v33 >= v34 >> 1)
        {
          sub_10034F650((v34 > 1), v33 + 1, 1);
          v25 = aBlock;
        }

        v26 += 40;
        v25[2] = (v33 + 1);
        v35 = &v25[7 * v33];
        v35[4] = v46;
        v35[5] = v28;
        v35[6] = v49;
        v35[7] = v29;
        v36 = v47;
        *(v35 + 32) = v48;
        *(v35 + 66) = v36;
        v37 = v51;
        *(v35 + 67) = v50;
        *(v35 + 71) = v37;
        v35[9] = sub_1003230CC;
        v35[10] = v31;
        --v24;
      }

      while (v24);
      a1 = v40;
      v7 = v41;
    }

    v38 = v7[10];

    v39 = v42;

    sub_10031A3C4(a1, v25, v38, v7, a1, sub_1003224B0, v39);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}