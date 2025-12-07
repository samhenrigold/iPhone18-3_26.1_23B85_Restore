uint64_t sub_1000226B0()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100022710(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100022774()
{
  v2 = qword_10009B080;
  if (!qword_10009B080)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B080);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1000227D8(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = a1;
  v73 = a2;
  v72 = a3;
  v65 = sub_100024E60;
  v66 = sub_100024F00;
  v67 = sub_100009484;
  v68 = sub_100009410;
  v69 = sub_100009410;
  v70 = sub_1000094D0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v71 = 0;
  v82 = 0;
  v83 = 0;
  v75 = sub_10007CEF8();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v79 = &v24 - v78;
  v94 = v3;
  v93 = v4 + 16;
  v92 = v5;
  sub_100024D7C(v3, v90);
  if (v91)
  {
    if (swift_dynamicCast())
    {
      v61 = v80;
      v62 = 0;
    }

    else
    {
      v61 = 0;
      v62 = 1;
    }

    v59 = v62;
    v60 = v61;
    if (v62)
    {
      v56 = 0;
      v57 = 0;
      v58 = 1;
      goto LABEL_10;
    }

    v63 = v60;
    v64 = v59;
  }

  else
  {
    sub_100024D24(v90);
    v63 = 0;
    v64 = 1;
  }

  v56 = v63;
  v57 = v64 & 1;
  v58 = 0;
LABEL_10:
  v54 = v57;
  v55 = v56;
  if (v58)
  {
    v6 = v79;
    v7 = sub_100021534();
    (*(v76 + 16))(v6, v7, v75);
    sub_100024D7C(v74, v89);
    v41 = 7;
    v8 = swift_allocObject();
    v39 = v8;
    *(v8 + 16) = v89[0];
    *(v8 + 32) = v89[1];
    v50 = sub_10007CED8();
    v51 = sub_10007DBB8();
    v38 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v9 = swift_allocObject();
    v10 = v39;
    v42 = v9;
    *(v9 + 16) = v65;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v42;
    v43 = v11;
    *(v11 + 16) = v66;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v43;
    v47 = v13;
    *(v13 + 16) = v67;
    *(v13 + 24) = v14;
    v49 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v46 = sub_10007DEC8();
    v48 = v15;

    v16 = v44;
    v17 = v48;
    *v48 = v68;
    v17[1] = v16;

    v18 = v45;
    v19 = v48;
    v48[2] = v69;
    v19[3] = v18;

    v20 = v47;
    v21 = v48;
    v48[4] = v70;
    v21[5] = v20;
    sub_100006FD4();

    if (os_log_type_enabled(v50, v51))
    {
      v23 = v71;
      v26 = sub_10007DC88();
      v25 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v27 = sub_10000742C(0, v25, v25);
      v28 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v29 = &v88;
      v88 = v26;
      v30 = &v87;
      v87 = v27;
      v31 = &v86;
      v86 = v28;
      sub_100007480(2, &v88);
      sub_100007480(1, v29);
      v84 = v68;
      v85 = v44;
      sub_100007494(&v84, v29, v30, v31);
      v32 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v84 = v69;
        v85 = v45;
        sub_100007494(&v84, &v88, &v87, &v86);
        v24 = 0;
        v84 = v70;
        v85 = v47;
        sub_100007494(&v84, &v88, &v87, &v86);
        _os_log_impl(&_mh_execute_header, v50, v51, "Debouncer received unexpected result. Expected Optional<Int> received %s", v26, 0xCu);
        sub_1000074E0(v27, 0, v25);
        sub_1000074E0(v28, 1, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v50);
    (*(v76 + 8))(v79, v75);
  }

  else
  {
    v52 = v55;
    v53 = v54;
    v35 = v54;
    v36 = v55;
    v82 = v55;
    v83 = v54 & 1;
    v37 = v73 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v81 = Strong;
    if (Strong)
    {
      v33 = &v81;
      v34 = v81;
      _objc_retain(v81);
      sub_100012FD8(v33);
      swift_endAccess();
      sub_100023260(v72, v36, v35 & 1);
      _objc_release(v34);
    }

    else
    {
      sub_100012FD8(&v81);
      swift_endAccess();
    }
  }
}

uint64_t sub_1000231D8()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100023260(void *a1, uint64_t a2, int a3)
{
  v73 = a3;
  v74 = a2;
  v80 = a1;
  v81 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v71 = 0;
  v101 = 0;
  v92[1] = 0;
  v92[0] = 0;
  v87 = 0;
  v86 = 0;
  v72 = a3;
  v75 = sub_10007CEF8();
  v76 = *(v75 - 8);
  v77 = v76;
  __chkstk_darwin(v80);
  v78 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v5;
  v109 = v6;
  v110 = v7 & 1;
  v108 = v3;
  v8 = v5;
  v79 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  v82 = *v79;
  v106 = v80;
  v83 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v84 = type metadata accessor for MailStatusDataSource.State();
  sub_100021A14();
  sub_10007D7F8();

  v85 = v107;
  if (v107)
  {
    v70 = v85;
    v65 = v85;
    v101 = v85;
    swift_endAccess();
    v9 = v80;
    v64 = 0;
    v100 = 0;
    v99 = v80;
    v57 = 33;
    v56 = &v98;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B0B0, &unk_10007F5C8);
    sub_10007D808();
    swift_endAccess();
    v10 = v80;
    v97 = v64;
    v96 = v80;
    v58 = &v95;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B090, &unk_10007F5B8);
    sub_10007D808();
    swift_endAccess();
    v63 = 32;
    v59 = &v94;
    swift_beginAccess();
    v60 = v65[3];

    swift_endAccess();
    sub_10007D648();

    v61 = &v93;
    swift_beginAccess();
    v62 = v65[2];
    swift_unknownObjectRetain();
    swift_endAccess();
    swift_getObjectType();
    [v62 cancel];
    swift_unknownObjectRelease();
    v66 = &v91;
    swift_beginAccess();
    v67 = v65[4];

    swift_endAccess();
    v90 = v67;
    v68 = sub_1000094DC(&unk_10009B0B8, &qword_10007F5D8);
    sub_1000248C8();
    sub_10007DB68();
    for (i = v71; ; i = v42)
    {
      v53 = i;
      sub_1000094DC(&qword_10009B0F0, qword_10007F610);
      sub_10007DD88();
      v54 = v88;
      v55 = v89;
      if (v88)
      {
        v51 = v54;
        v52 = v55;
        v48 = v55;
        v47 = v54;
        v11 = swift_allocObject();
        v12 = v48;
        *(v11 + 16) = v47;
        *(v11 + 24) = v12;
        v49 = sub_100024990;
        v50 = v11;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v45 = v50;
      v46 = v49;
      if (!v49)
      {
        break;
      }

      v43 = v46;
      v44 = v45;
      v41 = v45;
      v40 = v46;
      v42 = v53;
      v86 = v46;
      v87 = v45;

      v40(v74, v72 & 1);
    }

    sub_10000A480(v92);

    return v53;
  }

  else
  {
    v13 = v78;
    swift_endAccess();
    v14 = sub_100021534();
    (*(v77 + 16))(v13, v14, v75);
    v37 = sub_10007CED8();
    v34 = v37;
    v36 = sub_10007DBB8();
    v35 = v36;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v38 = sub_10007DEC8();
    if (os_log_type_enabled(v37, v36))
    {
      v15 = v71;
      v25 = sub_10007DC88();
      v21 = v25;
      v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v23 = 0;
      v26 = sub_10000742C(0, v22, v22);
      v24 = v26;
      v27 = sub_10000742C(v23, &type metadata for Any + 8, &type metadata for Any + 8);
      v105 = v25;
      v104 = v26;
      v103 = v27;
      v28 = 0;
      v29 = &v105;
      sub_100007480(0, &v105);
      sub_100007480(v28, v29);
      v102 = v38;
      v30 = &v18;
      __chkstk_darwin(&v18);
      v31 = &v18 - 6;
      *(&v18 - 4) = v16;
      *(&v18 - 3) = &v104;
      *(&v18 - 2) = &v103;
      v32 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v33 = v15;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v34, v35, "Query completed but there is no state…", v21, 2u);
        v19 = 0;
        sub_1000074E0(v24, 0, v22);
        sub_1000074E0(v27, v19, &type metadata for Any + 8);
        sub_10007DC68();

        v20 = v33;
      }
    }

    else
    {

      v20 = v71;
    }

    v18 = v20;

    (*(v77 + 8))(v78, v75);
    return v18;
  }
}

unint64_t sub_100023AAC()
{
  v2 = qword_10009B0A0;
  if (!qword_10009B0A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B0A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100023BC4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_100023C9C(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = a1;
  v61 = a2;
  v53 = a3;
  v59 = 0;
  v46 = sub_1000249E8;
  v47 = sub_100024AE4;
  v48 = sub_100009410;
  v49 = sub_100009410;
  v50 = sub_100024CB4;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v51 = 0;
  v68 = 0;
  v62 = 0;
  v54 = sub_10007CEF8();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v58 = v21 - v57;
  v79 = v4;
  v78 = v5;
  v77 = v6;
  v76 = v3;
  _objc_retain(v5);
  v60 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  v63 = *v60;
  v66 = &v74;
  v74 = v61;
  v64 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v65 = sub_100022774();
  sub_100021A14();
  sub_10007D7F8();
  _objc_release(v74);
  v67 = v75;
  if (v75)
  {
    v45 = v67;
    v44 = v67;
    v68 = v67;
    swift_endAccess();
    isa = sub_10007DAC8().super.super.isa;
    [v44 debounceResult:?];
    swift_unknownObjectRelease();
    _objc_release(v44);
  }

  else
  {
    v7 = v58;
    swift_endAccess();
    v8 = sub_100021534();
    (*(v55 + 16))(v7, v8, v54);
    _objc_retain(v61);
    v32 = 7;
    v33 = swift_allocObject();
    *(v33 + 16) = v61;
    v41 = sub_10007CED8();
    v42 = sub_10007DBB8();
    v30 = 17;
    v35 = swift_allocObject();
    *(v35 + 16) = 64;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v31 = 32;
    v9 = swift_allocObject();
    v10 = v33;
    v34 = v9;
    *(v9 + 16) = v46;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v34;
    v38 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v40 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v37 = sub_10007DEC8();
    v39 = v13;

    v14 = v35;
    v15 = v39;
    *v39 = v48;
    v15[1] = v14;

    v16 = v36;
    v17 = v39;
    v39[2] = v49;
    v17[3] = v16;

    v18 = v38;
    v19 = v39;
    v39[4] = v50;
    v19[5] = v18;
    sub_100006FD4();

    if (os_log_type_enabled(v41, v42))
    {
      v20 = v51;
      v23 = sub_10007DC88();
      v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v24 = sub_10000742C(1, v22, v22);
      v25 = sub_10000742C(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v26 = &v73;
      v73 = v23;
      v27 = &v72;
      v72 = v24;
      v28 = &v71;
      v71 = v25;
      sub_100007480(2, &v73);
      sub_100007480(1, v26);
      v69 = v48;
      v70 = v35;
      sub_100007494(&v69, v26, v27, v28);
      v29 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v69 = v49;
        v70 = v36;
        sub_100007494(&v69, &v73, &v72, &v71);
        v21[1] = 0;
        v69 = v50;
        v70 = v38;
        sub_100007494(&v69, &v73, &v72, &v71);
        _os_log_impl(&_mh_execute_header, v41, v42, "Missing debouncer for query:%@", v23, 0xCu);
        sub_1000074E0(v24, 1, v22);
        sub_1000074E0(v25, 0, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v41);
    (*(v55 + 8))(v58, v54);
  }
}

id sub_1000245B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10001D110();
  v16.super.isa = sub_10007D998().super.isa;
  if (a6)
  {
    v10 = sub_10007D858();

    v6 = [v13 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:v16.super.isa queryOptions:a4 label:v10];
  }

  else
  {
    v6 = [v13 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:v16.super.isa queryOptions:a4 label:0];
  }

  v9 = v6;
  _objc_release(v8);
  _objc_release(v16.super.isa);

  _objc_release(a2);
  return v9;
}

id sub_1000246D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v17 = a3;
  v18 = a4;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_10002479C;
  v16 = &unk_100092F20;
  v9 = _Block_copy(&aBlock);
  v11 = [v8 initWithTimeInterval:a1 scheduler:a2 startAfter:a5 block:?];
  _Block_release(v9);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_10002479C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  swift_unknownObjectRetain();
  if (a2)
  {
    v6[3] = swift_getObjectType();
    v6[0] = a2;
    v2 = sub_100024D60(v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v4(v2);
  sub_100024D24(v7);
}

unint64_t sub_1000248C8()
{
  v2 = qword_10009B0E8;
  if (!qword_10009B0E8)
  {
    sub_100009860(&unk_10009B0B8, &qword_10007F5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B0E8);
    return WitnessTable;
  }

  return v2;
}

void sub_100024AF0(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (a4)(a1, a2, a3);
  v7 = *a1;
  _objc_retain(v8);
  sub_10007DCA8();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_100024CC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100024D24(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10000A914(a1);
  }

  return a1;
}

__n128 sub_100024D60(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100024D7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100024E0C()
{
  if (*(v0 + 40))
  {
    sub_10000A914(v2 + 16);
  }

  return swift_deallocObject();
}

void *sub_100024F8C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_100024FF8()
{
  v1 = sub_10007CEF8();
  sub_100001F90(v1, qword_10009B2A0);
  sub_10000202C(v1, qword_10009B2A0);
  return sub_100016180(&unk_100093708, &unk_100093708);
}

uint64_t sub_100025054()
{
  if (qword_10009A620 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009B2A0);
}

uint64_t sub_1000250C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100025054();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100025144(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1000251B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v10 = a1;
  v16 = 0;
  v15 = 0;
  v12 = 0;
  v8 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v7 - v8;
  v9 = (*(*(type metadata accessor for Snapshot(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = (&v7 - v9);
  v16 = v10;
  v15 = v2;
  sub_1000252D4(v4, v5);
  sub_100074910(v11, 1, v12, 0, v14);
  return sub_10001F5C0(v14, v13);
}

void sub_1000252D4(void *a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v7 = 0;
  v12 = a1;
  v11 = v2;
  sub_100025144(v2, v10);
  memcpy(__dst, v10, sizeof(__dst));
  _objc_retain(a1);
  if (a1)
  {
    _objc_retain(a1);
    sub_1000165A0(a1, a2);
    _objc_release(a1);
  }

  else
  {
    v3 = sub_10007D898("Intent is nil", 0xDuLL, 1);
    sub_100028D28(v3, v4, __dst, a2);
  }

  sub_1000297BC(__dst);
}

uint64_t sub_100025554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v74 = a2;
  v60 = a3;
  v61 = a4;
  v72 = sub_1000298B0;
  v84 = sub_10002CB08;
  v86 = sub_100009484;
  v89 = sub_10002CCB0;
  v91 = sub_1000134D0;
  v93 = sub_10001351C;
  v97 = sub_100013568;
  v99 = sub_100009410;
  v101 = sub_100009410;
  v103 = sub_1000094D0;
  v105 = sub_100009410;
  v107 = sub_100009410;
  v110 = sub_1000135B4;
  v56 = sub_10002D440;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v57 = 0;
  v58 = 0;
  v81 = sub_10007D798();
  v69 = *(v81 - 8);
  v70 = v81 - 8;
  v68 = v69;
  v78 = v69[8];
  v59 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v80 = v46 - v59;
  v67 = sub_10007CEF8();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v4 = v46 - v63;
  v64 = v46 - v63;
  v125 = v5;
  v124 = v6;
  v122 = v7;
  v123 = v8;
  v121 = v9;
  v10 = sub_100025054();
  (*(v65 + 16))(v4, v10, v67);
  v76 = v69[2];
  v75 = v69 + 2;
  v76(v80, v74, v81);
  v77 = *(v68 + 20);
  v71 = (v77 + 16) & ~v77;
  v95 = 7;
  v73 = swift_allocObject();
  v83 = v69[4];
  v82 = v69 + 4;
  v83(v73 + v71, v80, v81);

  v94 = 32;
  v11 = swift_allocObject();
  v12 = v73;
  v85 = v11;
  *(v11 + 16) = v72;
  *(v11 + 24) = v12;

  v76(v80, v74, v81);
  v79 = (v77 + 16) & ~v77;
  v90 = swift_allocObject();
  v83(v90 + v79, v80, v81);
  v114 = sub_10007CED8();
  v115 = sub_10007DBC8();
  v88 = 17;
  v100 = swift_allocObject();
  *(v100 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v85;
  v87 = v13;
  *(v13 + 16) = v84;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v87;
  v104 = v15;
  *(v15 + 16) = v86;
  *(v15 + 24) = v16;
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v90;
  v92 = v17;
  *(v17 + 16) = v89;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v92;
  v96 = v19;
  *(v19 + 16) = v91;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v96;
  v98 = v21;
  *(v21 + 16) = v93;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v98;
  v111 = v23;
  *(v23 + 16) = v97;
  *(v23 + 24) = v24;
  v113 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v109 = sub_10007DEC8();
  v112 = v25;

  v26 = v100;
  v27 = v112;
  *v112 = v99;
  v27[1] = v26;

  v28 = v102;
  v29 = v112;
  v112[2] = v101;
  v29[3] = v28;

  v30 = v104;
  v31 = v112;
  v112[4] = v103;
  v31[5] = v30;

  v32 = v106;
  v33 = v112;
  v112[6] = v105;
  v33[7] = v32;

  v34 = v108;
  v35 = v112;
  v112[8] = v107;
  v35[9] = v34;

  v36 = v111;
  v37 = v112;
  v112[10] = v110;
  v37[11] = v36;
  sub_100006FD4();

  if (os_log_type_enabled(v114, v115))
  {
    v38 = v57;
    v48 = sub_10007DC88();
    v47 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v49 = sub_10000742C(0, v47, v47);
    v50 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v52 = &v120;
    v120 = v48;
    v53 = &v119;
    v119 = v49;
    v54 = &v118;
    v118 = v50;
    v51 = 2;
    sub_100007480(2, &v120);
    sub_100007480(v51, v52);
    v116 = v99;
    v117 = v100;
    sub_100007494(&v116, v52, v53, v54);
    v55 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v116 = v101;
      v117 = v102;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[4] = 0;
      v116 = v103;
      v117 = v104;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[3] = 0;
      v116 = v105;
      v117 = v106;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[2] = 0;
      v116 = v107;
      v117 = v108;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[1] = 0;
      v116 = v110;
      v117 = v111;
      sub_100007494(&v116, &v120, &v119, &v118);
      _os_log_impl(&_mh_execute_header, v114, v115, "Get snapshot for family: %s, is preview: %{BOOL}d", v48, 0x12u);
      sub_1000074E0(v49, 0, v47);
      sub_1000074E0(v50, 1, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v114);
  (*(v65 + 8))(v64, v67);

  v39 = swift_allocObject();
  v40 = v61;
  v41 = v74;
  v42 = v56;
  v43 = v39;
  v44 = v62;
  v46[0] = v43;
  *(v43 + 16) = v60;
  *(v43 + 24) = v40;
  sub_100026C98(v44, v41, v42, v43);
}

uint64_t sub_1000262F0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v41 = a1;
  v35 = a2;
  v34 = a3;
  v47 = sub_10002F050;
  v51 = sub_100009484;
  v53 = sub_100009410;
  v55 = sub_100009410;
  v58 = sub_1000094D0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v30 = 0;
  v31 = 0;
  v32 = *(type metadata accessor for MailEntry(0) - 8);
  v42 = v32;
  v43 = *(v32 + 64);
  v33 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v45 = (v21 - v33);
  v40 = sub_10007CEF8();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v36 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v3 = v21 - v36;
  v37 = v21 - v36;
  v71 = v4;
  v69 = v5;
  v70 = v6;
  v7 = sub_100025054();
  (*(v38 + 16))(v3, v7, v40);
  sub_10001EE14(v41, v45);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v49 = 7;
  v50 = swift_allocObject();
  sub_10001F7F0(v45, v50 + v44);
  v62 = sub_10007CED8();
  v63 = sub_10007DBC8();
  v46 = 17;
  v54 = swift_allocObject();
  *(v54 + 16) = 34;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v48 = 32;
  v8 = swift_allocObject();
  v9 = v50;
  v52 = v8;
  *(v8 + 16) = v47;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v52;
  v59 = v10;
  *(v10 + 16) = v51;
  *(v10 + 24) = v11;
  v61 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v57 = sub_10007DEC8();
  v60 = v12;

  v13 = v54;
  v14 = v60;
  *v60 = v53;
  v14[1] = v13;

  v15 = v56;
  v16 = v60;
  v60[2] = v55;
  v16[3] = v15;

  v17 = v59;
  v18 = v60;
  v60[4] = v58;
  v18[5] = v17;
  sub_100006FD4();

  if (os_log_type_enabled(v62, v63))
  {
    v19 = v30;
    v23 = sub_10007DC88();
    v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v24 = sub_10000742C(0, v22, v22);
    v25 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v26 = &v68;
    v68 = v23;
    v27 = &v67;
    v67 = v24;
    v28 = &v66;
    v66 = v25;
    sub_100007480(2, &v68);
    sub_100007480(1, v26);
    v64 = v53;
    v65 = v54;
    sub_100007494(&v64, v26, v27, v28);
    v29 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v64 = v55;
      v65 = v56;
      sub_100007494(&v64, &v68, &v67, &v66);
      v21[0] = 0;
      v64 = v58;
      v65 = v59;
      sub_100007494(&v64, &v68, &v67, &v66);
      _os_log_impl(&_mh_execute_header, v62, v63, "Get snapshot completed with relvance: %{public}s", v23, 0xCu);
      sub_1000074E0(v24, 0, v22);
      sub_1000074E0(v25, 1, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v62);
  (*(v38 + 8))(v37, v40);

  v35(v41);
}

uint64_t sub_100026A20(uint64_t a1)
{
  v13 = a1;
  v1 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = v6 - v9;
  v10 = 0;
  v16 = sub_10007D768();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v6 - v11;
  v3 = type metadata accessor for MailEntry(v2);
  sub_10001E604((v13 + *(v3 + 20)), v17);
  v18 = *(v14 + 48);
  v19 = v14 + 48;
  if (v18(v17, 1, v16) == 1)
  {
    v7 = sub_100076054();
    v8 = &v20;
    swift_beginAccess();
    (*(v14 + 16))(v12, v7, v16);
    swift_endAccess();
    if (v18(v17, 1, v16) != 1)
    {
      sub_10002F18C(v17);
    }
  }

  else
  {
    (*(v14 + 32))(v12, v17, v16);
  }

  v6[0] = sub_1000760C0();
  v6[1] = v4;
  (*(v14 + 8))(v12, v16);
  return v6[0];
}

void sub_100026C98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v11 = a3;
  v12 = a4;
  v10 = v4;
  _objc_retain(a1);
  sub_100025144(v4, v9);

  v7 = swift_allocObject();
  memcpy(v7 + 2, v9, 0x28uLL);
  v7[7] = a3;
  v7[8] = a4;
  sub_100028A6C(a1, sub_10002D494, v7);

  _objc_release(a1);
}

uint64_t sub_100026D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v74 = a2;
  v60 = a3;
  v61 = a4;
  v72 = sub_1000298B0;
  v84 = sub_10002CB08;
  v86 = sub_100009484;
  v89 = sub_10002CCB0;
  v91 = sub_1000134D0;
  v93 = sub_10001351C;
  v97 = sub_100013568;
  v99 = sub_100009410;
  v101 = sub_100009410;
  v103 = sub_1000094D0;
  v105 = sub_100009410;
  v107 = sub_100009410;
  v110 = sub_1000135B4;
  v56 = sub_10002D8EC;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v57 = 0;
  v58 = 0;
  v81 = sub_10007D798();
  v69 = *(v81 - 8);
  v70 = v81 - 8;
  v68 = v69;
  v78 = v69[8];
  v59 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v80 = v46 - v59;
  v67 = sub_10007CEF8();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v4 = v46 - v63;
  v64 = v46 - v63;
  v125 = v5;
  v124 = v6;
  v122 = v7;
  v123 = v8;
  v121 = v9;
  v10 = sub_100025054();
  (*(v65 + 16))(v4, v10, v67);
  v76 = v69[2];
  v75 = v69 + 2;
  v76(v80, v74, v81);
  v77 = *(v68 + 20);
  v71 = (v77 + 16) & ~v77;
  v95 = 7;
  v73 = swift_allocObject();
  v83 = v69[4];
  v82 = v69 + 4;
  v83(v73 + v71, v80, v81);

  v94 = 32;
  v11 = swift_allocObject();
  v12 = v73;
  v85 = v11;
  *(v11 + 16) = v72;
  *(v11 + 24) = v12;

  v76(v80, v74, v81);
  v79 = (v77 + 16) & ~v77;
  v90 = swift_allocObject();
  v83(v90 + v79, v80, v81);
  v114 = sub_10007CED8();
  v115 = sub_10007DBC8();
  v88 = 17;
  v100 = swift_allocObject();
  *(v100 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v85;
  v87 = v13;
  *(v13 + 16) = v84;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v87;
  v104 = v15;
  *(v15 + 16) = v86;
  *(v15 + 24) = v16;
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v90;
  v92 = v17;
  *(v17 + 16) = v89;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v92;
  v96 = v19;
  *(v19 + 16) = v91;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v96;
  v98 = v21;
  *(v21 + 16) = v93;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v98;
  v111 = v23;
  *(v23 + 16) = v97;
  *(v23 + 24) = v24;
  v113 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v109 = sub_10007DEC8();
  v112 = v25;

  v26 = v100;
  v27 = v112;
  *v112 = v99;
  v27[1] = v26;

  v28 = v102;
  v29 = v112;
  v112[2] = v101;
  v29[3] = v28;

  v30 = v104;
  v31 = v112;
  v112[4] = v103;
  v31[5] = v30;

  v32 = v106;
  v33 = v112;
  v112[6] = v105;
  v33[7] = v32;

  v34 = v108;
  v35 = v112;
  v112[8] = v107;
  v35[9] = v34;

  v36 = v111;
  v37 = v112;
  v112[10] = v110;
  v37[11] = v36;
  sub_100006FD4();

  if (os_log_type_enabled(v114, v115))
  {
    v38 = v57;
    v48 = sub_10007DC88();
    v47 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v49 = sub_10000742C(0, v47, v47);
    v50 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v52 = &v120;
    v120 = v48;
    v53 = &v119;
    v119 = v49;
    v54 = &v118;
    v118 = v50;
    v51 = 2;
    sub_100007480(2, &v120);
    sub_100007480(v51, v52);
    v116 = v99;
    v117 = v100;
    sub_100007494(&v116, v52, v53, v54);
    v55 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v116 = v101;
      v117 = v102;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[4] = 0;
      v116 = v103;
      v117 = v104;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[3] = 0;
      v116 = v105;
      v117 = v106;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[2] = 0;
      v116 = v107;
      v117 = v108;
      sub_100007494(&v116, &v120, &v119, &v118);
      v46[1] = 0;
      v116 = v110;
      v117 = v111;
      sub_100007494(&v116, &v120, &v119, &v118);
      _os_log_impl(&_mh_execute_header, v114, v115, "Get timeline for family: %s, is preview: %{BOOL}d", v48, 0x12u);
      sub_1000074E0(v49, 0, v47);
      sub_1000074E0(v50, 1, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v114);
  (*(v65 + 8))(v64, v67);

  v39 = swift_allocObject();
  v40 = v61;
  v41 = v74;
  v42 = v56;
  v43 = v39;
  v44 = v62;
  v46[0] = v43;
  *(v43 + 16) = v60;
  *(v43 + 24) = v40;
  sub_100026C98(v44, v41, v42, v43);
}

uint64_t sub_100027AE4(void *a1, void (*a2)(char *), uint64_t a3)
{
  v53 = a1;
  v47 = a2;
  v46 = a3;
  v59 = sub_10002F050;
  v63 = sub_100009484;
  v65 = sub_100009410;
  v67 = sub_100009410;
  v70 = sub_1000094D0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v34 = 0;
  v42 = 0;
  v3 = sub_10007D708();
  v35 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v36 = v25 - v35;
  v37 = sub_1000094DC(&unk_10009B2D0, &qword_10007F7A8);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v41 = v25 - v40;
  v43 = type metadata accessor for MailEntry(v4);
  v44 = *(v43 - 8);
  v54 = v44;
  v55 = *(v44 + 64);
  v45 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v57 = (v25 - v45);
  v52 = sub_10007CEF8();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v5 = v25 - v48;
  v49 = v25 - v48;
  v83 = v6;
  v81 = v7;
  v82 = v8;
  v9 = sub_100025054();
  (*(v50 + 16))(v5, v9, v52);
  sub_10001EE14(v53, v57);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v61 = 7;
  v62 = swift_allocObject();
  sub_10001F7F0(v57, v62 + v56);
  v74 = sub_10007CED8();
  v75 = sub_10007DBC8();
  v58 = 17;
  v66 = swift_allocObject();
  *(v66 + 16) = 34;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v60 = 32;
  v10 = swift_allocObject();
  v11 = v62;
  v64 = v10;
  *(v10 + 16) = v59;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v64;
  v71 = v12;
  *(v12 + 16) = v63;
  *(v12 + 24) = v13;
  v73 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v69 = sub_10007DEC8();
  v72 = v14;

  v15 = v66;
  v16 = v72;
  *v72 = v65;
  v16[1] = v15;

  v17 = v68;
  v18 = v72;
  v72[2] = v67;
  v18[3] = v17;

  v19 = v71;
  v20 = v72;
  v72[4] = v70;
  v20[5] = v19;
  sub_100006FD4();

  if (os_log_type_enabled(v74, v75))
  {
    v21 = v34;
    v27 = sub_10007DC88();
    v26 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v28 = sub_10000742C(0, v26, v26);
    v29 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v30 = &v80;
    v80 = v27;
    v31 = &v79;
    v79 = v28;
    v32 = &v78;
    v78 = v29;
    sub_100007480(2, &v80);
    sub_100007480(1, v30);
    v76 = v65;
    v77 = v66;
    sub_100007494(&v76, v30, v31, v32);
    v33 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v76 = v67;
      v77 = v68;
      sub_100007494(&v76, &v80, &v79, &v78);
      v25[2] = 0;
      v76 = v70;
      v77 = v71;
      sub_100007494(&v76, &v80, &v79, &v78);
      _os_log_impl(&_mh_execute_header, v74, v75, "Get timeline completed with relvance: %{public}s", v27, 0xCu);
      sub_1000074E0(v28, 0, v26);
      sub_1000074E0(v29, 1, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v74);
  (*(v50 + 8))(v49, v52);

  v25[0] = sub_10007DEC8();
  sub_10001EE14(v53, v22);
  sub_100006FD4();
  v25[1] = v23;
  sub_10007D6F8();
  sub_10002E490();
  sub_10007D7A8();
  v47(v41);
  (*(v38 + 8))(v41, v37);
}

uint64_t sub_1000283C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v14 = a2;
  v19 = a3;
  v20 = a4;
  v23 = sub_10002F3D4;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v15 = *(type metadata accessor for Mailbox(0) - 8);
  v17 = v15;
  v18 = *(v15 + 64);
  v16 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v22 = (&v14 - v16);
  v35 = v4;
  v34 = v5;
  v32 = v6;
  v33 = v7;
  v28 = v29;
  sub_100025144(v5, v29);
  v24 = v30;
  v25 = v31;
  sub_100024F8C(v28, v30);

  sub_10000DFBC(v26, v22);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v8 = swift_allocObject();
  v9 = v20;
  v10 = v21;
  v11 = v8;
  v12 = v22;
  v27 = v11;
  *(v11 + 16) = v19;
  *(v11 + 24) = v9;
  sub_10000E380(v12, v11 + v10);
  (*(v25 + 16))(v26, 0, v23, v27, v24);

  return sub_10000A914(v28);
}

void *sub_1000285AC(uint64_t a1, uint64_t a2, int a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v62 = 0;
  memset(v63, 0, 11);
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v63[2] = a1;
  v63[3] = a2;
  v64 = a3;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v46 = BYTE2(a3);
  v40 = 0;
  v38 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v39 = (&v16 - v38);
  v41 = (*(*(type metadata accessor for Snapshot(v6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v42 = (&v16 - v41);
  v8 = type metadata accessor for MailEntry(v7);
  __chkstk_darwin(v8);
  v50 = (&v16 - v9);
  v62 = v47;
  v63[0] = v48;
  LOWORD(v63[1]) = v49;
  BYTE2(v63[1]) = v10 & 1;
  v60 = v11;
  v61 = v12;
  v59 = v13;
  if (v10)
  {
    v56 = 1;
    v57 = 0;
    v58 = 0;
    v23 = 1;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v49 >> 8;
    v31 = v49 >> 8;
    v30 = v49;
    v29 = v48;
    v32 = v47;

    v55 = v32;
    v53 = v29;
    v54 = v30 & 1;
    v52 = v31 & 1;
    v51 = v32;
    v33 = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
    sub_1000142C8();
    v14 = sub_10007DB58();
    if (v14)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {

      v26 = v32;
      v27 = v29;
      v28 = v30 & 1 | ((v31 & 1) << 8);
    }

    v22 = v28;
    v21 = v27;
    v20 = v26;
    sub_10002F4F8(v26);
    v56 = v20;
    v57 = v21;
    v58 = v22;

    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  v19 = v25;
  v18 = v24;
  v17 = v23;

  sub_10000DFBC(v45, v39);
  sub_100074910(v39, v17, v18, v19, v42);
  sub_10001F5C0(v42, v50);
  v43(v50);
  sub_10001F380(v50);

  return sub_10002F4A4(&v56);
}

void *sub_100028A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v26 = a2;
  v27 = a3;
  v31 = sub_10002DAD8;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v17 = *(type metadata accessor for Mailbox(0) - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v24 = (&v16 - v18);
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v36 = (&v16 - v19);
  v45 = &v16 - v19;
  v44 = v6;
  v42 = v7;
  v43 = v8;
  v41 = v3;
  sub_1000252D4(v6, (&v16 - v19));
  v35 = v38;
  sub_100025144(v20, v38);
  v32 = v39;
  v33 = v40;
  sub_100024F8C(v35, v39);
  sub_10000DFBC(v36, v24);

  v29 = v37;
  sub_100025144(v20, v37);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = (v23 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = 40;
  v34 = swift_allocObject();
  sub_10000E380(v24, v34 + v23);
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v34;
  v14 = (v34 + v25);
  *v14 = v26;
  v14[1] = v9;
  memcpy((v13 + v10), v11, v12);
  (*(v33 + 32))(v31, v34, v32);

  sub_10000A914(v35);
  return sub_100014DA0(v36);
}

void *sub_100028D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a4;
  v57 = a1;
  v58 = a2;
  v48 = a3;
  v61 = sub_100013124;
  v63 = sub_100009484;
  v67 = sub_10002F994;
  v71 = sub_100009484;
  v73 = sub_100009410;
  v75 = sub_100009410;
  v77 = sub_1000094D0;
  v79 = sub_100009410;
  v81 = sub_100009410;
  v84 = sub_1000094D0;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v95 = 0;
  v47 = 0;
  v56 = sub_10007CEF8();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v49 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = v36 - v49;
  v100 = v4;
  v101 = v5;
  v99 = v6;
  v53 = v96;
  sub_100025144(v6, v96);
  v51 = v97;
  v50 = v98;
  sub_100024F8C(v53, v97);
  v7 = (*(v50 + 8))(v51);
  v8 = v52;
  v60 = v7;
  v59 = 1;
  v95 = v7 & 1;
  sub_10000A914(v53);
  v9 = sub_100025054();
  (*(v54 + 16))(v8, v9, v56);

  v68 = 32;
  v69 = 7;
  v10 = swift_allocObject();
  v11 = v58;
  v62 = v10;
  *(v10 + 16) = v57;
  *(v10 + 24) = v11;
  v65 = 17;
  v70 = swift_allocObject();
  *(v70 + 16) = v60 & v59;
  v88 = sub_10007CED8();
  v89 = sub_10007DBB8();
  v74 = swift_allocObject();
  *(v74 + 16) = 34;
  v76 = swift_allocObject();
  v66 = 8;
  *(v76 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v62;
  v64 = v12;
  *(v12 + 16) = v61;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v64;
  v78 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = v15;
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = v66;
  v16 = swift_allocObject();
  v17 = v70;
  v72 = v16;
  *(v16 + 16) = v67;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v72;
  v85 = v18;
  *(v18 + 16) = v71;
  *(v18 + 24) = v19;
  v87 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v83 = sub_10007DEC8();
  v86 = v20;

  v21 = v74;
  v22 = v86;
  *v86 = v73;
  v22[1] = v21;

  v23 = v76;
  v24 = v86;
  v86[2] = v75;
  v24[3] = v23;

  v25 = v78;
  v26 = v86;
  v86[4] = v77;
  v26[5] = v25;

  v27 = v80;
  v28 = v86;
  v86[6] = v79;
  v28[7] = v27;

  v29 = v82;
  v30 = v86;
  v86[8] = v81;
  v30[9] = v29;

  v31 = v85;
  v32 = v86;
  v86[10] = v84;
  v32[11] = v31;
  sub_100006FD4();

  if (os_log_type_enabled(v88, v89))
  {
    v33 = v47;
    v38 = sub_10007DC88();
    v37 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v39 = sub_10000742C(0, v37, v37);
    v40 = sub_10000742C(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v42 = &v94;
    v94 = v38;
    v43 = &v93;
    v93 = v39;
    v44 = &v92;
    v92 = v40;
    v41 = 2;
    sub_100007480(2, &v94);
    sub_100007480(v41, v42);
    v90 = v73;
    v91 = v74;
    sub_100007494(&v90, v42, v43, v44);
    v45 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v90 = v75;
      v91 = v76;
      sub_100007494(&v90, &v94, &v93, &v92);
      v36[4] = 0;
      v90 = v77;
      v91 = v78;
      sub_100007494(&v90, &v94, &v93, &v92);
      v36[3] = 0;
      v90 = v79;
      v91 = v80;
      sub_100007494(&v90, &v94, &v93, &v92);
      v36[2] = 0;
      v90 = v81;
      v91 = v82;
      sub_100007494(&v90, &v94, &v93, &v92);
      v36[1] = 0;
      v90 = v84;
      v91 = v85;
      sub_100007494(&v90, &v94, &v93, &v92);
      _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s, fallback to %s", v38, 0x16u);
      sub_1000074E0(v39, 0, v37);
      sub_1000074E0(v40, 2, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v88);
  (*(v54 + 8))(v52, v56);
  if (v60)
  {
    v34 = sub_100019A70();
  }

  else
  {
    v34 = sub_100019C40();
  }

  return sub_10000DFBC(v34, v46);
}

uint64_t sub_1000297E4()
{
  v2 = *(sub_10007D798() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1000298B0()
{
  sub_10007D798();

  return sub_1000262A4();
}

uint64_t sub_100029924(char a1)
{
  if (a1)
  {
    return sub_10007D898("'VIP'", 5uLL, 1);
  }

  else
  {
    return sub_10007D898("'All Inboxes'", 0xDuLL, 1);
  }
}

uint64_t sub_1000299A0(uint64_t a1, int a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v112 = a1;
  v111 = a2;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  v110 = a6;
  v96 = sub_10002EC8C;
  v97 = sub_10000A754;
  v98 = sub_100009410;
  v99 = sub_100009410;
  v100 = sub_10000A7A0;
  v101 = sub_100013E8C;
  v102 = sub_100009484;
  v103 = sub_100009410;
  v104 = sub_100009410;
  v105 = sub_1000094D0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v106 = 0;
  v125 = 0;
  v113 = sub_10007CEF8();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112);
  v117 = v43 - v116;
  v118 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v119 = v43 - v118;
  v136 = v8;
  v137 = v9 & 1;
  v135 = v10;
  v133 = v11;
  v134 = v12;
  v132 = v13;
  if (v9)
  {
    v94 = v112;
    v29 = v117;
    v54 = v112;
    swift_errorRetain();
    v131 = v54;
    v30 = sub_100025054();
    (*(v114 + 16))(v29, v30, v113);
    swift_errorRetain();
    v57 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v66 = sub_10007CED8();
    v67 = sub_10007DBB8();
    v55 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v56 = 32;
    v31 = swift_allocObject();
    v32 = v58;
    v59 = v31;
    *(v31 + 16) = v101;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v59;
    v63 = v33;
    *(v33 + 16) = v102;
    *(v33 + 24) = v34;
    v65 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v62 = sub_10007DEC8();
    v64 = v35;

    v36 = v60;
    v37 = v64;
    *v64 = v103;
    v37[1] = v36;

    v38 = v61;
    v39 = v64;
    v64[2] = v104;
    v39[3] = v38;

    v40 = v63;
    v41 = v64;
    v64[4] = v105;
    v41[5] = v40;
    sub_100006FD4();

    if (os_log_type_enabled(v66, v67))
    {
      v42 = v106;
      v47 = sub_10007DC88();
      v46 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v48 = sub_10000742C(0, v46, v46);
      v49 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v50 = &v130;
      v130 = v47;
      v51 = &v129;
      v129 = v48;
      v52 = &v128;
      v128 = v49;
      sub_100007480(2, &v130);
      sub_100007480(1, v50);
      v126 = v103;
      v127 = v60;
      sub_100007494(&v126, v50, v51, v52);
      v53 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v126 = v104;
        v127 = v61;
        sub_100007494(&v126, &v130, &v129, &v128);
        v45 = 0;
        v126 = v105;
        v127 = v63;
        sub_100007494(&v126, &v130, &v129, &v128);
        _os_log_impl(&_mh_execute_header, v66, v67, "Failed to get excluded accounts. %s", v47, 0xCu);
        sub_1000074E0(v48, 0, v46);
        sub_1000074E0(v49, 1, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v66);
    (*(v114 + 8))(v117, v113);
    v43[1] = &type metadata for String;
    sub_10007DEC8();
    v44 = sub_10007DA88();
    sub_10002A8E4(v107, v44, v108, v109);
  }

  else
  {
    v95 = v112;
    v14 = v119;
    v80 = v112;

    v125 = v80;
    v15 = sub_100025054();
    (*(v114 + 16))(v14, v15, v113);

    v83 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v80;
    v92 = sub_10007CED8();
    v93 = sub_10007DBC8();
    v81 = 17;
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = 8;
    v82 = 32;
    v16 = swift_allocObject();
    v17 = v84;
    v85 = v16;
    *(v16 + 16) = v96;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v85;
    v89 = v18;
    *(v18 + 16) = v97;
    *(v18 + 24) = v19;
    v91 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v88 = sub_10007DEC8();
    v90 = v20;

    v21 = v86;
    v22 = v90;
    *v90 = v98;
    v22[1] = v21;

    v23 = v87;
    v24 = v90;
    v90[2] = v99;
    v24[3] = v23;

    v25 = v89;
    v26 = v90;
    v90[4] = v100;
    v26[5] = v25;
    sub_100006FD4();

    if (os_log_type_enabled(v92, v93))
    {
      v27 = v106;
      v73 = sub_10007DC88();
      v71 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v72 = 0;
      v74 = sub_10000742C(0, v71, v71);
      v75 = sub_10000742C(v72, &type metadata for Any + 8, &type metadata for Any + 8);
      v76 = &v124;
      v124 = v73;
      v77 = &v123;
      v123 = v74;
      v78 = &v122;
      v122 = v75;
      sub_100007480(0, &v124);
      sub_100007480(1, v76);
      v120 = v98;
      v121 = v86;
      sub_100007494(&v120, v76, v77, v78);
      v79 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v120 = v99;
        v121 = v87;
        sub_100007494(&v120, &v124, &v123, &v122);
        v70 = 0;
        v120 = v100;
        v121 = v89;
        sub_100007494(&v120, &v124, &v123, &v122);
        _os_log_impl(&_mh_execute_header, v92, v93, "Received %ld focused accounts", v73, 0xCu);
        v69 = 0;
        sub_1000074E0(v74, 0, v71);
        sub_1000074E0(v75, v69, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v92);
    (*(v114 + 8))(v119, v113);
    if (sub_10007DAA8())
    {
      v68 = sub_100018CB4();
    }

    else
    {
      v68 = 0;
    }

    if (v68)
    {

      v108(v107);
    }

    else
    {
      sub_10002A8E4(v107, v80, v108, v109);
    }
  }
}

uint64_t sub_10002A8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v120 = a2;
  v118 = a3;
  v119 = a4;
  v99 = sub_100013124;
  v100 = sub_100009484;
  v101 = sub_1000132FC;
  v102 = sub_100009484;
  v103 = sub_100009410;
  v104 = sub_100009410;
  v105 = sub_1000094D0;
  v106 = sub_100009410;
  v107 = sub_100009410;
  v108 = sub_1000094D0;
  v109 = sub_10002E0C8;
  v143 = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v110 = 0;
  v111 = 0;
  v112 = *(type metadata accessor for Mailbox(0) - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v116 = (&v47 - v115);
  v121 = sub_10007CEF8();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v125 = &v47 - v124;
  v143 = v5;
  v142 = v6;
  v140 = v7;
  v141 = v8;
  v139 = v4;
  if (sub_10007DAA8())
  {
    v96 = sub_10007D898("Mailbox is invalid", 0x12uLL, 1);
  }

  else
  {
    v10 = sub_10007DEB8();
    v93 = &v137;
    v137 = v10;
    v138 = v11;
    v91 = 1;
    v144._countAndFlagsBits = sub_10007D898("Update mailbox for ", 0x13uLL, 1);
    object = v144._object;
    sub_10007DEA8(v144);

    v136 = sub_10007DA98();
    sub_10007DE88();
    v145._countAndFlagsBits = sub_10007D898(" focused accounts", 0x11uLL, v91 & 1);
    v92 = v145._object;
    sub_10007DEA8(v145);

    v95 = v137;
    v94 = v138;

    sub_1000099C8(v93);
    v96 = sub_10007D888();
  }

  v97 = v9;
  v12 = v125;
  v67 = v9;
  v66 = v96;
  v134 = v96;
  v135 = v9;
  v13 = sub_100025054();
  (*(v122 + 16))(v12, v13, v121);

  v75 = 32;
  v76 = 7;
  v14 = swift_allocObject();
  v15 = v67;
  v16 = v116;
  v17 = v14;
  v18 = v117;
  v70 = v17;
  *(v17 + 16) = v66;
  *(v17 + 24) = v15;
  sub_10000DFBC(v18, v16);
  v68 = *(v113 + 80);
  v69 = (v68 + 16) & ~v68;
  v77 = swift_allocObject();
  sub_10000E380(v116, v77 + v69);
  v88 = sub_10007CED8();
  v89 = sub_10007DBC8();
  v73 = 17;
  v79 = swift_allocObject();
  v72 = 34;
  *(v79 + 16) = 34;
  v80 = swift_allocObject();
  v74 = 8;
  *(v80 + 16) = 8;
  v19 = swift_allocObject();
  v20 = v70;
  v71 = v19;
  *(v19 + 16) = v99;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v71;
  v81 = v21;
  *(v21 + 16) = v100;
  *(v21 + 24) = v22;
  v82 = swift_allocObject();
  *(v82 + 16) = v72;
  v83 = swift_allocObject();
  *(v83 + 16) = v74;
  v23 = swift_allocObject();
  v24 = v77;
  v78 = v23;
  *(v23 + 16) = v101;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v78;
  v85 = v25;
  *(v25 + 16) = v102;
  *(v25 + 24) = v26;
  v87 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v84 = sub_10007DEC8();
  v86 = v27;

  v28 = v79;
  v29 = v86;
  *v86 = v103;
  v29[1] = v28;

  v30 = v80;
  v31 = v86;
  v86[2] = v104;
  v31[3] = v30;

  v32 = v81;
  v33 = v86;
  v86[4] = v105;
  v33[5] = v32;

  v34 = v82;
  v35 = v86;
  v86[6] = v106;
  v35[7] = v34;

  v36 = v83;
  v37 = v86;
  v86[8] = v107;
  v37[9] = v36;

  v38 = v85;
  v39 = v86;
  v86[10] = v108;
  v39[11] = v38;
  sub_100006FD4();

  if (os_log_type_enabled(v88, v89))
  {
    v40 = v110;
    v58 = sub_10007DC88();
    v57 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v59 = sub_10000742C(0, v57, v57);
    v60 = sub_10000742C(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v62 = &v130;
    v130 = v58;
    v63 = &v129;
    v129 = v59;
    v64 = &v128;
    v128 = v60;
    v61 = 2;
    sub_100007480(2, &v130);
    sub_100007480(v61, v62);
    v126 = v103;
    v127 = v79;
    sub_100007494(&v126, v62, v63, v64);
    v65 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v126 = v104;
      v127 = v80;
      sub_100007494(&v126, &v130, &v129, &v128);
      v56 = 0;
      v126 = v105;
      v127 = v81;
      sub_100007494(&v126, &v130, &v129, &v128);
      v55 = 0;
      v126 = v106;
      v127 = v82;
      sub_100007494(&v126, &v130, &v129, &v128);
      v54 = 0;
      v126 = v107;
      v127 = v83;
      sub_100007494(&v126, &v130, &v129, &v128);
      v53 = 0;
      v126 = v108;
      v127 = v85;
      sub_100007494(&v126, &v130, &v129, &v128);
      _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s, mailbox: %{public}s", v58, 0x16u);
      sub_1000074E0(v59, 0, v57);
      sub_1000074E0(v60, 2, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v88);
  (*(v122 + 8))(v125, v121);
  v52 = v131;
  sub_100025144(v98, v131);
  v49 = v132;
  v50 = v133;
  sub_100024F8C(v52, v132);

  sub_10000DFBC(v117, v116);
  v48 = (v68 + 32) & ~v68;
  v41 = swift_allocObject();
  v42 = v119;
  v43 = v48;
  v44 = v41;
  v45 = v116;
  v51 = v44;
  *(v44 + 16) = v118;
  *(v44 + 24) = v42;
  sub_10000E380(v45, v44 + v43);
  (*(v50 + 24))(v117, v120, v109, v51, v49);

  sub_10000A914(v52);
}

void *sub_10002B78C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v114 = a2;
  v115 = a3;
  v116 = a4;
  v88 = sub_100013E8C;
  v89 = sub_100009484;
  v90 = sub_100009410;
  v91 = sub_100009410;
  v92 = sub_1000094D0;
  v93 = sub_1000132FC;
  v94 = sub_100009484;
  v95 = sub_100009410;
  v96 = sub_100009410;
  v97 = sub_1000094D0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v131 = 0;
  v98 = 0;
  v136 = 0;
  v99 = 0;
  v100 = sub_10007CEF8();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v104 = &v42 - v103;
  v105 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v106 = &v42 - v105;
  v7 = type metadata accessor for Mailbox(v6);
  v107 = *(v7 - 8);
  v108 = v107;
  v109 = *(v107 + 64);
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v111 = (&v42 - v110);
  v112 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v42 - v110);
  v113 = &v42 - v112;
  v136 = &v42 - v112;
  v119 = sub_1000094DC(&qword_10009AEC8, " P");
  v118 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v117);
  v120 = (&v42 - v118);
  v135 = v9;
  v133 = v10;
  v134 = v11;
  v132 = v12;
  sub_10002E54C(v9, (&v42 - v118));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v104;
    v51 = *v120;
    v131 = v51;
    v29 = sub_100025054();
    (*(v101 + 16))(v28, v29, v100);
    swift_errorRetain();
    v54 = 7;
    v55 = swift_allocObject();
    *(v55 + 16) = v51;
    v63 = sub_10007CED8();
    v64 = sub_10007DBB8();
    v52 = 17;
    v57 = swift_allocObject();
    *(v57 + 16) = 34;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v53 = 32;
    v30 = swift_allocObject();
    v31 = v55;
    v56 = v30;
    *(v30 + 16) = v88;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v56;
    v60 = v32;
    *(v32 + 16) = v89;
    *(v32 + 24) = v33;
    v62 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v59 = sub_10007DEC8();
    v61 = v34;

    v35 = v57;
    v36 = v61;
    *v61 = v90;
    v36[1] = v35;

    v37 = v58;
    v38 = v61;
    v61[2] = v91;
    v38[3] = v37;

    v39 = v60;
    v40 = v61;
    v61[4] = v92;
    v40[5] = v39;
    sub_100006FD4();

    if (os_log_type_enabled(v63, v64))
    {
      v41 = v98;
      v44 = sub_10007DC88();
      v43 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v45 = sub_10000742C(0, v43, v43);
      v46 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v47 = &v130;
      v130 = v44;
      v48 = &v129;
      v129 = v45;
      v49 = &v128;
      v128 = v46;
      sub_100007480(2, &v130);
      sub_100007480(1, v47);
      v126 = v90;
      v127 = v57;
      sub_100007494(&v126, v47, v48, v49);
      v50 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v126 = v91;
        v127 = v58;
        sub_100007494(&v126, &v130, &v129, &v128);
        v42 = 0;
        v126 = v92;
        v127 = v60;
        sub_100007494(&v126, &v130, &v129, &v128);
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to update mailbox: %{public}s", v44, 0xCu);
        sub_1000074E0(v45, 0, v43);
        sub_1000074E0(v46, 1, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v63);
    (*(v101 + 8))(v104, v100);

    v114(v116);
  }

  else
  {
    v13 = v106;
    sub_10000E380(v120, v113);
    v136 = v113;
    v14 = sub_100025054();
    (*(v101 + 16))(v13, v14, v100);
    sub_10000DFBC(v113, v111);
    v74 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v77 = 7;
    v78 = swift_allocObject();
    sub_10000E380(v111, v78 + v74);
    v86 = sub_10007CED8();
    v87 = sub_10007DBC8();
    v75 = 17;
    v80 = swift_allocObject();
    *(v80 + 16) = 34;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v76 = 32;
    v15 = swift_allocObject();
    v16 = v78;
    v79 = v15;
    *(v15 + 16) = v93;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v79;
    v83 = v17;
    *(v17 + 16) = v94;
    *(v17 + 24) = v18;
    v85 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v82 = sub_10007DEC8();
    v84 = v19;

    v20 = v80;
    v21 = v84;
    *v84 = v95;
    v21[1] = v20;

    v22 = v81;
    v23 = v84;
    v84[2] = v96;
    v23[3] = v22;

    v24 = v83;
    v25 = v84;
    v84[4] = v97;
    v25[5] = v24;
    sub_100006FD4();

    if (os_log_type_enabled(v86, v87))
    {
      v26 = v98;
      v67 = sub_10007DC88();
      v66 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v68 = sub_10000742C(0, v66, v66);
      v69 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v70 = &v125;
      v125 = v67;
      v71 = &v124;
      v124 = v68;
      v72 = &v123;
      v123 = v69;
      sub_100007480(2, &v125);
      sub_100007480(1, v70);
      v121 = v95;
      v122 = v80;
      sub_100007494(&v121, v70, v71, v72);
      v73 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v121 = v96;
        v122 = v81;
        sub_100007494(&v121, &v125, &v124, &v123);
        v65 = 0;
        v121 = v97;
        v122 = v83;
        sub_100007494(&v121, &v125, &v124, &v123);
        _os_log_impl(&_mh_execute_header, v86, v87, "Successfully updated mailbox: %{public}s", v67, 0xCu);
        sub_1000074E0(v68, 0, v66);
        sub_1000074E0(v69, 1, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v86);
    (*(v101 + 8))(v106, v100);

    v114(v113);

    return sub_100014DA0(v113);
  }
}

uint64_t sub_10002C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100025554(a1, a2, a3, a4);
}

uint64_t sub_10002C7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100026D94(a1, a2, a3, a4);
}

uint64_t sub_10002C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10002C8DC;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002C8DC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_10002CA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10002C8DC;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002CB08()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10007D6D8();
  v1 = sub_10002CB64();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_10002CB64()
{
  v2 = qword_10009B2C0;
  if (!qword_10009B2C0)
  {
    sub_10007D6D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002CBE4()
{
  v2 = *(sub_10007D798() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10002CCB0()
{
  sub_10007D798();

  return sub_1000262C8();
}

uint64_t sub_10002CE44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_10007DD98() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    __chkstk_darwin(v23);
    v16 = v29;
    v17 = v10;
    sub_10002D080(v11, sub_10002F8F8, &v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_10002D080@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_10002D344@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10002D44C()
{
  sub_10000A914(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002D4A4()
{
  v2 = *(sub_10007D798() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10002D5B0()
{
  v2 = *(sub_10007D798() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_10002D8F8()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 16) & ~v1;
  v9 = (((v8 + *(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_10000A914(v6 + v9);
  return swift_deallocObject();
}

uint64_t sub_10002DAD8(uint64_t a1, char a2)
{
  v12 = *(type metadata accessor for Mailbox(0) - 8);
  v3 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v4 = (v3 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v2 + v4;
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1000299A0(a1, a2 & 1, (v2 + v3), v7, v8, v2 + v5);
}

uint64_t sub_10002DBE4()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 16) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10002DF28()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 32) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

void *sub_10002E0C8(uint64_t a1)
{
  v2 = type metadata accessor for Mailbox(0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_10002B78C(a1, v3, v4, v5);
}

uint64_t sub_10002E178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002E290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10002E490()
{
  v2 = qword_10009B2C8;
  if (!qword_10009B2C8)
  {
    type metadata accessor for MailEntry(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B2C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_10002E54C(void *a1, void *a2)
{
  sub_1000094DC(&qword_10009AEC8, " P");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    swift_errorRetain();
    *a2 = v5;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v11 = a1[1];

    a2[1] = v11;
    v12 = a1[2];

    a2[2] = v12;
    if (a1[4] > 5uLL)
    {
      a2[3] = a1[3];
      v10 = a1[4];

      a2[4] = v10;
    }

    else
    {
      *(a2 + 3) = *(a1 + 3);
    }

    v2 = type metadata accessor for Mailbox(0);
    __dst = a2 + *(v2 + 28);
    __src = a1 + *(v2 + 28);
    v8 = sub_10007CD98();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(__src, 1))
    {
      v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(__dst, __src, v8);
      (*(v9 + 56))(__dst, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_10002E8C8()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 16) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10002ED6C()
{
  v12 = type metadata accessor for MailEntry(0);
  v1 = *(*(v12 - 8) + 80);
  v13 = (v1 + 16) & ~v1;

  if (*(v0 + v13 + 32) > 5uLL)
  {
  }

  v8 = v11 + v13 + *(type metadata accessor for Mailbox(0) + 28);
  v9 = sub_10007CD98();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1))
  {
    (*(v10 + 8))(v8, v9);
  }

  if (*(v11 + v13 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v5 = v11 + v13 + *(v12 + 20);
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  v4 = v11 + v13 + *(v12 + 24);
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_10002F050()
{
  v1 = *(type metadata accessor for MailEntry(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100026A20(v2);
}

uint64_t sub_10002F18C(uint64_t a1)
{
  v3 = sub_10007D768();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10002F234()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 32) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

void *sub_10002F3D4(uint64_t a1, uint64_t a2, int a3)
{
  LOWORD(v11) = a3;
  BYTE2(v11) = BYTE2(a3) & 1;
  v4 = type metadata accessor for Mailbox(0);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = (v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)));

  return sub_1000285AC(a1, a2, v11, v5, v6, v7);
}

void *sub_10002F4A4(void *a1)
{
  if (*a1 >= 2uLL)
  {
  }

  return a1;
}

unint64_t sub_10002F4F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002F53C()
{
  v12 = type metadata accessor for MailEntry(0);
  v1 = *(*(v12 - 8) + 80);
  v13 = (v1 + 16) & ~v1;

  if (*(v0 + v13 + 32) > 5uLL)
  {
  }

  v8 = v11 + v13 + *(type metadata accessor for Mailbox(0) + 28);
  v9 = sub_10007CD98();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1))
  {
    (*(v10 + 8))(v8, v9);
  }

  if (*(v11 + v13 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v5 = v11 + v13 + *(v12 + 20);
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  v4 = v11 + v13 + *(v12 + 24);
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

id sub_10002FB50()
{
  sub_10002FC64();
  v2 = [objc_opt_self() defaultProvider];
  v3 = [objc_opt_self() sharedManager];
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    sub_10007DDA8();
    __break(1u);
  }

  result = sub_10002FCC8(v2, v1);
  qword_10009B2E0 = result;
  return result;
}

unint64_t sub_10002FC64()
{
  v2 = qword_10009B2E8;
  if (!qword_10009B2E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B2E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_10002FD10()
{
  if (qword_10009A628 != -1)
  {
    swift_once();
  }

  return &qword_10009B2E0;
}

void *sub_10002FD70()
{
  v1 = *sub_10002FD10();
  _objc_retain(v1);
  return v1;
}

char *sub_10002FDA8@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v84 = a3;
  v108 = a1;
  v98 = a2;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v111 = 0;
  v99 = 0;
  v85 = (*(*(sub_10007CE28() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v86 = &v18 - v85;
  v87 = sub_10007CD98();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v91 = &v18 - v90;
  v92 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v93 = &v18 - v92;
  v94 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v95 = &v18 - v94;
  v96 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v97 = &v18 - v96;
  v121 = &v18 - v96;
  v100 = type metadata accessor for Message(v7);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v104 = *(v101 + 64);
  v103 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v105 = &v18 - v103;
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v107 = &v18 - v106;
  v120 = &v18 - v106;
  v119 = v9;
  v118 = v10;
  sub_100030D58();
  _objc_retain(v108);
  v109 = sub_100030DBC(v108);
  v117 = v109;
  v110 = [v109 waitForResult];
  v116 = v110;
  _objc_retain(v110);
  if (v110)
  {
    v83 = v110;
    v81 = v110;
    v11 = [v110 publicMessageURL];
    v82 = v11;
    if (v11)
    {
      v80 = v82;
      v79 = v82;
      sub_10007CD88();
      (*(v88 + 32))(v95, v91, v87);
      (*(v88 + 56))(v95, 0, 1, v87);
      _objc_release(v79);
    }

    else
    {
      (*(v88 + 56))(v95, 1, 1, v87);
    }

    sub_100017ED4(v95, v97);
    _objc_release(v81);
  }

  else
  {
    (*(v88 + 56))(v97, 1, 1, v87);
  }

  v114 = 0;
  v115 = 1;
  _objc_retain(v108);
  v78 = [v108 category];
  if (v78)
  {
    v77 = v78;
    v73 = v78;
    v111 = v78;
    _objc_release(v108);
    [v73 type];
    v74 = MUIBucketFromEMCategoryType();
    v114 = v74;
    v115 = 0;
    _objc_release(v73);
    v75 = v74;
    v76 = 0;
  }

  else
  {
    _objc_release(v108);
    v75 = 0;
    v76 = 1;
  }

  v61 = v76;
  v62 = v75;
  v63 = [v108 objectID];
  v64 = [v63 globalMessageID];
  _objc_release(v63);
  v113[1] = v64;
  v65 = sub_10007D918();
  v66 = v12;
  v71 = *sub_10002FD10();
  _objc_retain(v71);
  _objc_retain(v108);
  v69 = [v108 senderList];
  v67 = sub_1000094DC(&unk_10009B360, &unk_10007F7C0);
  v68 = sub_10007D9A8();
  isa = sub_10007D998().super.isa;
  _objc_release(v108);

  _objc_release(v69);
  v72 = [v71 stringFromEmailAddressList:isa preferFullDisplayName:0];
  _objc_release(isa);
  _objc_release(v71);
  if (v72)
  {
    v60 = v72;
    v55 = v72;
    v56 = sub_10007D868();
    v57 = v13;
    _objc_release(v55);
    v58 = v56;
    v59 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v50 = v59;
  v51 = v58;
  v52 = objc_opt_self();
  _objc_retain(v108);
  v53 = [v108 subject];
  _objc_release(v108);
  v54 = [v52 subjectStringForDisplayForSubject:v53];
  _objc_release(v53);
  if (v54)
  {
    v49 = v54;
    v44 = v54;
    v45 = sub_10007D868();
    v46 = v14;
    _objc_release(v44);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v41 = v48;
  v42 = v47;
  _objc_retain(v108);
  v43 = [v108 summary];
  if (v43)
  {
    v40 = v43;
    v35 = v43;
    v36 = sub_10007D868();
    v37 = v15;
    _objc_release(v35);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v26 = v39;
  v27 = v38;
  _objc_release(v108);
  _objc_retain(v108);
  v28 = [v108 date];
  sub_10007CE08();
  _objc_release(v108);
  _objc_retain(v108);
  v29 = [v108 isVIP];
  _objc_release(v108);
  _objc_retain(v108);
  v30 = [v108 flags];
  _objc_release(v108);
  v31 = [v30 read];
  _objc_release(v30);
  v32 = v31 ^ 1;
  _objc_retain(v108);
  v33 = [v108 hasAttachments];
  _objc_release(v108);
  _objc_retain(v108);
  v34 = [v108 isBlocked];
  _objc_release(v108);
  if (sub_10001A44C())
  {
    _objc_retain(v108);
    v113[0] = [v108 category];
    if (v113[0])
    {
      v22 = v113;
      v23 = v113[0];
      _objc_retain(v113[0]);
      sub_100012FD8(v22);
      _objc_release(v108);
      v24 = [v23 isHighImpact];
      _objc_release(v23);
      v25 = v24;
    }

    else
    {
      sub_100012FD8(v113);
      _objc_release(v108);
      v25 = 2;
    }

    v112 = v25;
    if (v25 == 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = v112;
    }

    v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  v16 = v86;
  v18 = v20;
  sub_10001AB30(v97, v93);
  v19 = 1;
  sub_1000318B8(v65, v66, v51, v50, v42, v41, v27, v26, v105, v16, v29, v32 & 1, v33, v34, v62, v61 & 1, v18 & 1, v93);
  _objc_release(v28);
  sub_100030DFC(v105, v107);
  sub_100017FFC(v97);
  _objc_release(v110);
  _objc_release(v109);
  sub_1000143D8(v107, v84);
  (*(v101 + 56))(v84, 0, v19, v100);
  sub_100014DA0(v98);
  _objc_release(v108);
  return sub_100014700(v107);
}

unint64_t sub_100030D58()
{
  v2 = qword_10009B2F8;
  if (!qword_10009B2F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B2F8);
    return ObjCClassMetadata;
  }

  return v2;
}

char *sub_100030DFC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v9 = type metadata accessor for Message(0);
  v7 = v9[8];
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 32))(&a2[v7], &a1[v7]);
  a2[v9[9]] = a1[v9[9]];
  a2[v9[10]] = a1[v9[10]];
  a2[v9[11]] = a1[v9[11]];
  a2[v9[12]] = a1[v9[12]];
  v3 = v9[13];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  v4[8] = a1[v3 + 8];
  a2[v9[14]] = a1[v9[14]];
  v10 = v9[15];
  v12 = sub_10007CD98();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a1[v10], 1))
  {
    v5 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(&a2[v10], &a1[v10], *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))();
    (*(v13 + 56))(&a2[v10], 0, 1, v12);
  }

  return a2;
}

id sub_1000310B8(uint64_t a1, void *a2)
{
  v5 = [v2 initWithUserProfileProvider:? addressBookManager:?];
  _objc_release(a2);
  swift_unknownObjectRelease();
  return v5;
}

id sub_100031118(void *a1)
{
  v4 = [v1 initWithMessage:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_100031168()
{
  v69 = 0;
  v68 = 0;
  v1 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v59 = &v10 - v17;
  v57 = 0;
  v47 = sub_10007CE28();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v18 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v46 = &v10 - v18;
  v69 = v0;
  v19 = [objc_opt_self() currentDevice];
  v35 = [v19 isInternal];
  v58 = 1;
  v68 = v35 & 1;
  _objc_release(v19);
  v20 = 7;
  v2 = sub_10007DEB8();
  v52 = &v66;
  v66 = v2;
  v67 = v3;
  v70._countAndFlagsBits = sub_10007D898("sender:", v20, v58 & 1);
  object = v70._object;
  sub_10007DEA8(v70);

  v22 = *(v54 + 2);
  v23 = *(v54 + 3);

  v24 = sub_100033054(v22, v23, v35);
  v25 = v4;

  v26 = v65;
  v65[0] = v24;
  v65[1] = v25;
  v39 = &type metadata for String;
  v40 = &protocol witness table for String;
  v41 = &protocol witness table for String;
  sub_10007DE98();
  sub_1000099C8(v26);
  v53 = 10;
  v71._countAndFlagsBits = sub_10007D898(", subject:", 0xAuLL, v58 & 1);
  v27 = v71._object;
  sub_10007DEA8(v71);

  v28 = *(v54 + 4);
  v29 = *(v54 + 5);

  v30 = sub_100033054(v28, v29, v35);
  v31 = v5;

  v32 = v64;
  v64[0] = v30;
  v64[1] = v31;
  sub_10007DE98();
  sub_1000099C8(v32);
  v72._countAndFlagsBits = sub_10007D898(", summary:", v53, v58 & 1);
  v33 = v72._object;
  sub_10007DEA8(v72);

  v34 = *(v54 + 6);
  v36 = *(v54 + 7);

  v37 = sub_100033054(v34, v36, v35);
  v38 = v6;

  v42 = v63;
  v63[0] = v37;
  v63[1] = v38;
  sub_10007DE98();
  sub_1000099C8(v42);
  v73._countAndFlagsBits = sub_10007D898(", dateReceived: ", 0x10uLL, v58 & 1);
  v43 = v73._object;
  sub_10007DEA8(v73);

  v56 = type metadata accessor for Message(v57);
  (*(v44 + 16))(v46, &v54[v56[8]], v47);
  sub_1000076C8();
  sub_10007DE88();
  (*(v44 + 8))(v46, v47);
  v74._countAndFlagsBits = sub_10007D898(", isVIP: ", 9uLL, v58 & 1);
  v48 = v74._object;
  sub_10007DEA8(v74);

  v62 = v54[v56[9]];
  v50 = &type metadata for Bool;
  v51 = &protocol witness table for Bool;
  sub_10007DE88();
  v75._countAndFlagsBits = sub_10007D898(", isUnread: ", 0xCuLL, v58 & 1);
  v49 = v75._object;
  sub_10007DEA8(v75);

  v61 = v54[v56[10]];
  sub_10007DE88();
  v76._countAndFlagsBits = sub_10007D898(", hasURL: ", v53, v58 & 1);
  v55 = v76._object;
  sub_10007DEA8(v76);
  v7 = v54;

  sub_10001AB30(v7 + v56[15], v59);
  v8 = sub_10007CD98();
  v16 = (*(*(v8 - 8) + 48))(v59, v58) != 1;
  v10 = v16;
  sub_100017FFC(v59);
  v11 = 1;
  v60 = v10;
  v13 = &v66;
  sub_10007DE88();
  v77._countAndFlagsBits = sub_10007D898("", 0, v11 & 1);
  v12 = v77._object;
  sub_10007DEA8(v77);

  v15 = v66;
  v14 = v67;

  sub_1000099C8(v13);
  return sub_10007D888();
}

void *sub_1000318B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, uint64_t a15, char a16, char a17, const void *a18)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v22 = type metadata accessor for Message(0);
  v21 = v22[8];
  v18 = sub_10007CE28();
  (*(*(v18 - 8) + 32))(&a9[v21], a10);
  a9[v22[9]] = a11;
  a9[v22[10]] = a12;
  a9[v22[11]] = a13;
  a9[v22[12]] = a14;
  v19 = &a9[v22[13]];
  *v19 = a15;
  v19[8] = a16 & 1;
  a9[v22[14]] = a17;
  return sub_100017ED4(a18, &a9[v22[15]]);
}

uint64_t sub_100031A40()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100031A78()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_100031AB0()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_100031AE8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for Message(0) + 32);
  v2 = sub_10007CE28();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100031CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000195D4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_100031CD4()
{
  result = sub_100031CF4();
  qword_10009B370 = result;
  return result;
}

id sub_100031CF4()
{
  sub_100033C74();
  v1 = sub_10000BA08();
  [v1 setDateStyle:1];
  [v1 setTimeStyle:0];
  [v1 setDoesRelativeDateFormatting:1];
  return v1;
}

uint64_t *sub_100031D80()
{
  if (qword_10009A630 != -1)
  {
    swift_once();
  }

  return &qword_10009B370;
}

void *sub_100031DE0()
{
  v1 = *sub_100031D80();
  _objc_retain(v1);
  return v1;
}

id sub_100031E18()
{
  result = sub_100031E38();
  qword_10009B378 = result;
  return result;
}

id sub_100031E38()
{
  sub_100033C74();
  v1 = sub_10000BA08();
  [v1 setDateStyle:0];
  [v1 setTimeStyle:1];
  return v1;
}

uint64_t *sub_100031EAC()
{
  if (qword_10009A638 != -1)
  {
    swift_once();
  }

  return &qword_10009B378;
}

void *sub_100031F0C()
{
  v1 = *sub_100031EAC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100031F44()
{
  v37 = 0;
  v21 = 0;
  v28 = sub_10007CE28();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v19 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v29 = &v6 - v19;
  v35 = sub_10007CEA8();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v20 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = &v6 - v20;
  v37 = v0;
  sub_10007CE88();
  v23 = type metadata accessor for Message(v21);
  v1 = *(v23 + 32);
  v24 = v26[2];
  v25 = v26 + 2;
  v24(v29, v22 + v1, v28);
  v36 = sub_10007CE68();
  v30 = v26[1];
  v31 = v26 + 1;
  v30(v29, v28);
  (*(v32 + 8))(v34, v35);
  v2 = v29;
  if (v36)
  {
    v13 = *sub_100031EAC();
    _objc_retain(v13);
    v24(v2, v22 + *(v23 + 32), v28);
    isa = sub_10007CDC8().super.isa;
    v30(v29, v28);
    v14 = [v13 stringFromDate:isa];
    _objc_release(isa);
    _objc_release(v13);
    v15 = sub_10007D868();
    v16 = v3;
    _objc_release(v14);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v8 = *sub_100031D80();
    _objc_retain(v8);
    v24(v2, v22 + *(v23 + 32), v28);
    v7 = sub_10007CDC8().super.isa;
    v30(v29, v28);
    v9 = [v8 stringFromDate:v7];
    _objc_release(v7);
    _objc_release(v8);
    v10 = sub_10007D868();
    v11 = v4;
    _objc_release(v9);
    v17 = v10;
    v18 = v11;
  }

  return v17;
}

BOOL sub_10003230C(void *a1, uint64_t *a2)
{
  v81 = a1;
  v89 = a2;
  v119 = 0;
  v118 = 0;
  v74 = 0;
  v64 = sub_10007CD98();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v68 = &v16 - v67;
  v69 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v16 - v67);
  v70 = &v16 - v69;
  v71 = sub_1000094DC(&qword_10009B448, &qword_10007F878);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v73 = &v16 - v72;
  v75 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v76 = &v16 - v75;
  v77 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v78 = &v16 - v77;
  v79 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v80 = &v16 - v79;
  v82 = sub_10007CE28();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (v83[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v86 = &v16 - v85;
  v87 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v88 = &v16 - v87;
  v119 = v9;
  v118 = v10;
  v90 = *v9;
  v93 = v9[1];

  v91 = *v89;
  v92 = v89[1];

  v94 = sub_10007D8A8();

  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v61 = v81[2];
  v62 = v81[3];

  v63 = *(v89 + 1);

  v116[0] = v61;
  v116[1] = v62;
  v117 = v63;
  if (v62)
  {
    sub_100033C34(v116, &v97);
    if (*(&v117 + 1))
    {
      v58 = &v96;
      v96 = v97;
      v57 = &v95;
      v95 = v117;
      v59 = sub_10007D8A8();
      sub_1000099C8(v57);
      sub_1000099C8(v58);
      sub_1000099C8(v116);
      v60 = v59;
      goto LABEL_8;
    }

    sub_1000099C8(&v97);
    goto LABEL_10;
  }

  if (*(&v117 + 1))
  {
LABEL_10:
    sub_1000339D0(v116);
    v60 = 0;
    goto LABEL_8;
  }

  sub_1000099C8(v116);
  v60 = 1;
LABEL_8:
  v56 = v60;

  if (v56)
  {
    v53 = v81[4];
    v54 = v81[5];

    v55 = *(v89 + 2);

    v114[0] = v53;
    v114[1] = v54;
    v115 = v55;
    if (v54)
    {
      sub_100033C34(v114, &v100);
      if (*(&v115 + 1))
      {
        v50 = &v99;
        v99 = v100;
        v49 = &v98;
        v98 = v115;
        v51 = sub_10007D8A8();
        sub_1000099C8(v49);
        sub_1000099C8(v50);
        sub_1000099C8(v114);
        v52 = v51;
        goto LABEL_18;
      }

      sub_1000099C8(&v100);
    }

    else if (!*(&v115 + 1))
    {
      sub_1000099C8(v114);
      v52 = 1;
LABEL_18:
      v48 = v52;

      if ((v48 & 1) == 0)
      {
        return 0;
      }

      v45 = v81[6];
      v46 = v81[7];

      v47 = *(v89 + 3);

      v112[0] = v45;
      v112[1] = v46;
      v113 = v47;
      if (v46)
      {
        sub_100033C34(v112, &v103);
        if (*(&v113 + 1))
        {
          v42 = &v102;
          v102 = v103;
          v41 = &v101;
          v101 = v113;
          v43 = sub_10007D8A8();
          sub_1000099C8(v41);
          sub_1000099C8(v42);
          sub_1000099C8(v112);
          v44 = v43;
          goto LABEL_28;
        }

        sub_1000099C8(&v103);
      }

      else if (!*(&v113 + 1))
      {
        sub_1000099C8(v112);
        v44 = 1;
LABEL_28:
        v40 = v44;

        if ((v40 & 1) == 0)
        {
          return 0;
        }

        v34 = type metadata accessor for Message(0);
        v11 = v81 + v34[8];
        v36 = v83[2];
        v35 = v83 + 2;
        v36(v88, v11, v82);
        v36(v86, v89 + v34[8], v82);
        v39 = sub_10007CDF8();
        v38 = v83[1];
        v37 = v83 + 1;
        v38(v86, v82);
        v38(v88, v82);
        if ((v39 & 1) == 0)
        {
          return 0;
        }

        if ((*(v81 + v34[9]) & 1) != (*(v89 + v34[9]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[10]) & 1) != (*(v89 + v34[10]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[11]) & 1) != (*(v89 + v34[11]) & 1))
        {
          return 0;
        }

        if ((*(v81 + v34[12]) & 1) != (*(v89 + v34[12]) & 1))
        {
          return 0;
        }

        v12 = v81 + v34[13];
        v32 = *v12;
        v33 = v12[8];
        v13 = v89 + v34[13];
        v14 = *v13;
        LOBYTE(v13) = v13[8];
        v108 = v32;
        v109 = v33 & 1;
        v110 = v14;
        v111 = v13 & 1;
        if (v33)
        {
          if (v111)
          {
            v31 = 1;
LABEL_43:
            if ((v31 & 1) == 0)
            {
              return 0;
            }

            if ((*(v81 + v34[14]) & 1) != (*(v89 + v34[14]) & 1))
            {
              return 0;
            }

            sub_10001AB30(v81 + v34[15], v80);
            sub_10001AB30(v89 + v34[15], v78);
            v25 = &v73[*(v71 + 48)];
            sub_10001AB30(v80, v73);
            sub_10001AB30(v78, v25);
            v26 = *(v65 + 48);
            v27 = v65 + 48;
            if (v26(v73, 1, v64) == 1)
            {
              if (v26(v25, 1, v64) != 1)
              {
                goto LABEL_55;
              }

              sub_100017FFC(v73);
              v24 = 1;
            }

            else
            {
              sub_10001AB30(v73, v76);
              if (v26(v25, 1, v64) == 1)
              {
                (*(v65 + 8))(v76, v64);
LABEL_55:
                sub_100033A08(v73);
                v24 = 0;
                goto LABEL_54;
              }

              v20 = *(v65 + 32);
              v19 = v65 + 32;
              v20(v70, v76, v64);
              v20(v68, v25, v64);
              sub_100033B34();
              v23 = sub_10007D848();
              v22 = *(v65 + 8);
              v21 = v65 + 8;
              v22(v68, v64);
              v22(v70, v64);
              sub_100017FFC(v73);
              v24 = v23;
            }

LABEL_54:
            v18 = v24;
            sub_100017FFC(v78);
            sub_100017FFC(v80);
            return (v18 & 1) != 0;
          }
        }

        else
        {
          v106 = v32;
          v107 = v33 & 1;
          if ((v111 & 1) == 0)
          {
            v30 = &v105;
            v105 = v106;
            v28 = &v104;
            v104 = v110;
            v29 = type metadata accessor for MUIBucket(0);
            sub_100033BB4();
            v31 = sub_10007D848();
            goto LABEL_43;
          }
        }

        v31 = 0;
        goto LABEL_43;
      }

      sub_1000339D0(v112);
      v44 = 0;
      goto LABEL_28;
    }

    sub_1000339D0(v114);
    v52 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_100033054(uint64_t a1, uint64_t a2, char a3)
{

  if (!a2)
  {
    return sub_10007D898("<nil>", 5uLL, 1);
  }

  if (a3)
  {
    v8 = objc_opt_self();

    v9 = sub_10007D858();

    v10 = [v8 partiallyRedactedStringForString:v9 maximumUnredactedLength:3];
    _objc_release(v9);
    v11 = sub_10007D868();
    _objc_release(v10);
    v12 = v11;
  }

  else
  {
    v4 = objc_opt_self();

    v5 = sub_10007D858();

    v6 = [v4 fullyRedactedStringForString:v5];
    _objc_release(v5);
    v7 = sub_10007D868();
    _objc_release(v6);
    v12 = v7;
  }

  return v12;
}

uint64_t type metadata accessor for Message(uint64_t a1)
{
  v2 = qword_10009B3D8;
  if (!qword_10009B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_100033378(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v7 = *(a1 + 8);
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_10007CE28();
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + *(a3 + 60), a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

uint64_t sub_10003355C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    v4 = sub_10007CE28();
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(v5 + *(a4 + 32), a2, a2, v4);
    }

    else
    {
      result = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
      if (a3 == *(*(result - 8) + 84))
      {
        return (*(*(result - 8) + 56))(v5 + *(a4 + 60), a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_1000336F0(uint64_t a1)
{
  v6 = sub_100033894(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_10007CE28();
    if (v2 <= 0x3F)
    {
      v6 = sub_100033928(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_10001B0DC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_100033894(uint64_t a1)
{
  v5 = qword_10009B3E8;
  if (!qword_10009B3E8)
  {
    v4 = sub_10007DC98();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009B3E8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100033928(uint64_t a1)
{
  v5 = qword_10009B3F0;
  if (!qword_10009B3F0)
  {
    type metadata accessor for MUIBucket(255);
    v4 = sub_10007DC98();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009B3F0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_100033A08(uint64_t a1)
{
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_1000094DC(&qword_10009B448, &qword_10007F878) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_100033B34()
{
  v2 = qword_10009B450;
  if (!qword_10009B450)
  {
    sub_10007CD98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100033BB4()
{
  v2 = qword_10009B458;
  if (!qword_10009B458)
  {
    type metadata accessor for MUIBucket(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B458);
    return WitnessTable;
  }

  return v2;
}

void *sub_100033C34(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_100033C74()
{
  v2 = qword_10009B460;
  if (!qword_10009B460)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B460);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100033CD8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_100033D98(v1, (&v3 - v4));
  sub_10007CF08();
  return sub_100033E6C(v7);
}

void *sub_100033D98(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_100033E6C(uint64_t a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100033F28(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_100033D98(v1, (v3 - v3[0]));
  sub_100033FCC(v4, v3[1]);
  return sub_100033E6C(v5);
}

void *sub_100033FCC(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_100033E6C(a2);
    v4 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D6A8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t type metadata accessor for MessageListHeaderView(uint64_t a1)
{
  v2 = qword_10009B5D0;
  if (!qword_10009B5D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id sub_100034164()
{
  result = sub_100034184();
  qword_10009B468 = result;
  return result;
}

id sub_100034184()
{
  sub_10003F8C0();
  v1 = sub_10000BA08();
  [v1 setNumberStyle:1];
  [v1 setUsesSignificantDigits:0];
  return v1;
}

uint64_t *sub_1000341F8()
{
  if (qword_10009A640 != -1)
  {
    swift_once();
  }

  return &qword_10009B468;
}

void *sub_100034258()
{
  v1 = *sub_1000341F8();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100034290()
{
  v2 = *(v0 + *(type metadata accessor for MessageListHeaderView(0) + 24));

  return v2;
}

uint64_t sub_1000342C8()
{
  v38 = 0;
  v30 = 0;
  v27 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v28 = (&v18 - v27);
  v29 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v36 = (&v18 - v29);
  v31 = (*(*(type metadata accessor for Snapshot(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v32 = (&v18 - v31);
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v35 = (&v18 - v33);
  v38 = v0;
  v34 = type metadata accessor for MessageListHeaderView(v6);
  sub_10001E2CC((v0 + *(v34 + 20)), v35);
  sub_10000DFBC(v35, v36);
  sub_10001F234(v35);
  v7 = v36[3];
  v37 = v36[4];
  sub_100014D28(v7, v37);
  sub_100014DA0(v36);
  if (v37)
  {
    switch(v37)
    {
      case 1uLL:
        v11 = v28;
        sub_10001E2CC((v26 + *(v34 + 20)), v32);
        sub_10000DFBC(v32, v11);
        sub_10001F234(v32);
        v18 = sub_10001A44C();
        sub_100014DA0(v28);
        if (v18)
        {
          v23 = sub_10007D898("person.2", 8uLL, 1);
        }

        else
        {
          v23 = sub_10007D898("tray", 4uLL, 1);
        }

        v24 = v12;
        break;
      case 2uLL:
        v23 = sub_10007D898("flag", 4uLL, 1);
        v24 = v13;
        break;
      case 3uLL:
        v23 = sub_10007D898("envelope.badge", 0xEuLL, 1);
        v24 = v14;
        break;
      case 4uLL:
        v23 = sub_10007D898("star.fill", 9uLL, 1);
        v24 = v15;
        break;
      case 5uLL:
        v23 = sub_10007D898("calendar", 8uLL, 1);
        v24 = v16;
        break;
      default:
        v25 = v37;
        v20 = v37;
        v21 = sub_10007D898("folder", 6uLL, 1);
        v22 = v8;

        v23 = v21;
        v24 = v22;
        break;
    }
  }

  else
  {
    v9 = v28;
    sub_10001E2CC((v26 + *(v34 + 20)), v32);
    sub_10000DFBC(v32, v9);
    sub_10001F234(v32);
    v19 = sub_10001A44C();
    sub_100014DA0(v28);
    if (v19)
    {
      v23 = sub_10007D898("person.2", 8uLL, 1);
    }

    else
    {
      v23 = sub_10007D898("tray.2", 6uLL, 1);
    }

    v24 = v10;
  }

  return v23;
}

uint64_t sub_1000346FC()
{
  v14 = 0;
  v10 = 0;
  v6 = (*(*(type metadata accessor for Mailbox(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v9 = (&v5 - v6);
  v7 = (*(*(type metadata accessor for Snapshot(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v8 = (&v5 - v7);
  v14 = v0;
  v3 = type metadata accessor for MessageListHeaderView(v2);
  sub_10001E2CC((v0 + *(v3 + 20)), v8);
  sub_10000DFBC(v8, v9);
  sub_10001F234(v8);
  v12 = v9[3];
  v11 = v9[4];
  sub_100014D28(v12, v11);
  sub_100014DA0(v9);
  v13 = sub_1000191C0(v12, v11, v10, 4uLL);
  sub_100014D64(v12, v11);
  if (v13)
  {
    return sub_10007D478();
  }

  else
  {
    return sub_10007D438();
  }
}

uint64_t sub_100034874@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v26 = sub_1000094DC(&qword_10009B480, &qword_10007F888);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v28 = v16 - v27;
  v29 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - v27);
  v30 = v16 - v29;
  v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - v29);
  v32 = v16 - v31;
  v68 = v16 - v31;
  v33 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (v34[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = v16 - v36;
  v38 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - v36);
  v39 = v16 - v38;
  v40 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - v38);
  v41 = v16 - v40;
  v67 = v16 - v40;
  v6 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v42 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v61 = v16 - v42;
  v49 = 0;
  v56 = type metadata accessor for Mailbox(0);
  v43 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v57 = (v16 - v43);
  v44 = (*(*(type metadata accessor for Snapshot(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v55 = (v16 - v44);
  v60 = sub_10007CD98();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v45 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v46 = v16 - v45;
  v47 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - v45);
  v48 = v16 - v47;
  v66 = v16 - v47;
  v50 = sub_1000094DC(&qword_10009B490, &qword_10007F898);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = v16 - v51;
  v53 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v54 = v16 - v53;
  v65 = v16 - v53;
  v64 = v1;
  v12 = type metadata accessor for MessageListHeaderView(v11);
  sub_10001E2CC((v1 + *(v12 + 20)), v55);
  sub_10000DFBC(v55, v57);
  sub_10001F234(v55);
  sub_10001AB30(v57 + *(v56 + 28), v61);
  sub_100014DA0(v57);
  if ((*(v58 + 48))(v61, 1, v60) == 1)
  {
    sub_100017FFC(v61);
    sub_100035360(v30);
    v16[0] = sub_10003554C();
    sub_1000354E8(v30, v26, v32);
    sub_1000355D4(v30);
    v63 = v30;
    sub_100035B28(v32, v28);
    sub_1000354E8(v28, v26, v30);
    sub_1000355D4(v28);
    sub_100035B28(v30, v28);
    v14 = sub_1000366E8();
    sub_1000365F0(v28, v33, v26, v14, v16[0], v52);
    sub_1000355D4(v28);
    sub_100036770(v52, v54);
    sub_1000355D4(v30);
    sub_1000355D4(v32);
  }

  else
  {
    (*(v58 + 32))(v48, v61, v60);
    (*(v58 + 16))(v46, v48, v60);
    v18 = sub_1000351FC(v25);
    v20 = v13;

    v19 = sub_10003554C();
    sub_10007D288();

    v21 = sub_1000366E8();
    sub_1000354E8(v39, v33, v41);
    v22 = v34[1];
    v23 = v34 + 1;
    v22(v39, v33);
    v62 = v39;
    v17 = v34[2];
    v16[1] = (v34 + 2);
    v17(v37, v41, v33);
    sub_1000354E8(v37, v33, v39);
    v22(v37, v33);
    v17(v37, v39, v33);
    sub_1000364F8(v37, v33, v26, v21, v19, v52);
    v22(v37, v33);
    sub_100036770(v52, v54);
    v22(v39, v33);
    v22(v41, v33);
    (*(v58 + 8))(v48, v60);
  }

  sub_100036FCC(v54, v52);
  sub_1000379B0();
  sub_1000354E8(v52, v50, v24);
  sub_100037A58(v52);
  return sub_100037A58(v54);
}

uint64_t (*sub_1000351FC(uint64_t a1))@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  v11 = sub_10003F84C;
  v12 = 0;
  v4 = *(type metadata accessor for MessageListHeaderView(0) - 8);
  v6 = v4;
  v7 = *(v4 + 64);
  v5 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v9 = &v3 - v5;
  v12 = v1;
  sub_10003EF94(v1, (&v3 - v5));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10003F5B4(v9, (v10 + v8));
  return v11;
}

uint64_t sub_100035360@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_100039F18;
  v19 = 0;
  v18 = 0;
  v12 = sub_1000094DC(&qword_10009B480, &qword_10007F888);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_10007D0F8();
  v8 = &v16;
  v17 = v1;
  v9 = sub_1000094DC(&qword_10009B530, &qword_10007F920);
  sub_100039F20();
  sub_10007D538();
  v13 = sub_10003554C();
  sub_1000354E8(v14, v12, v15);
  sub_1000355D4(v14);
  sub_100035B28(v15, v14);
  sub_1000354E8(v14, v12, v11);
  sub_1000355D4(v14);
  return sub_1000355D4(v15);
}

unint64_t sub_10003554C()
{
  v2 = qword_10009B498;
  if (!qword_10009B498)
  {
    sub_100009860(&qword_10009B480, &qword_10007F888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000355D4(uint64_t a1)
{
  v14 = *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44);

  v15 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v17 = a1 + v14 + *(v15 + 36);

  v16 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
  v18 = *(v16 + 28);
  v19 = sub_10007D4D8();
  v20 = *(*(v19 - 8) + 8);
  v20(v17 + v18);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

  v21 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

  v22 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
  v23 = *(v22 + 28);
  v24 = sub_10007D168();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (!(v26)(a1 + v14 + v21 + v23, 1))
  {
    (*(v25 + 8))(a1 + v14 + v21 + v23, v24);
  }

  v10 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
  v9 = a1 + v14 + v10[12];
  v1 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  (*(*(v1 - 8) + 8))(v9);
  v11 = a1 + v14 + v10[20];
  v12 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  if (!(*(*(v12 - 8) + 48))(v11, 1))
  {

    v6 = v11 + *(v15 + 36);

    (v20)(v6 + *(v16 + 28), v19);

    sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);

    v7 = v11 + *(v12 + 36);

    v8 = v7 + *(v22 + 28);
    if (!v26())
    {
      (*(v25 + 8))(v8, v24);
    }
  }

  v3 = a1 + v14 + v10[24];
  v4 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return a1;
}

uint64_t sub_100035B28(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v42 = *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44);
  v43 = *(a1 + v42);

  v63 = a2 + v42;
  *(a2 + v42) = v43;
  v44 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v45 = *(v44 + 36);
  v49 = (a1 + v42 + v45);
  v46 = *v49;

  *(v63 + v45) = v46;
  v47 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
  v48 = *(v47 + 28);
  v50 = sub_10007D4D8();
  v51 = *(*(v50 - 8) + 16);
  v51(a2 + v42 + v45 + v48, v49 + v48);
  v52 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v53 = *(v52 + 36);
  v55 = (a1 + v42 + v53);
  v54 = *v55;

  *(v63 + v53) = v54;
  v56 = v55[1];

  *(a2 + v42 + v53 + 8) = v56;
  v57 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v58 = *(v57 + 36);
  v60 = (a1 + v42 + v58);
  v59 = *v60;

  *(v63 + v58) = v59;
  v61 = v60[1];

  *(a2 + v42 + v58 + 8) = v61;
  v62 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v67 = (a1 + v42 + v62);
  v64 = *v67;

  *(v63 + v62) = v64;
  v65 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
  v66 = *(v65 + 28);
  v68 = sub_10007D168();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if ((v70)(v67 + v66, 1))
  {
    v2 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy((a2 + v42 + v62 + v66), (a1 + v42 + v62 + v66), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v69 + 16))();
    (*(v69 + 56))(a2 + v42 + v62 + v66, 0, 1, v68);
  }

  v35 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
  v34 = a2 + v42 + v35[12];
  v33 = a1 + v42 + v35[12];
  v3 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  (*(*(v3 - 8) + 16))(v34, v33);
  v4 = a2 + v42 + v35[16];
  v5 = a1 + v42 + v35[16];
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);
  v36 = (a2 + v42 + v35[20]);
  v37 = (a1 + v42 + v35[20]);
  v38 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1))
  {
    v7 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(v36, v37, *(*(v7 - 8) + 64));
  }

  else
  {
    v14 = *v37;

    *v36 = v14;
    v16 = (v36 + *(v44 + 36));
    v17 = (v37 + *(v44 + 36));
    v15 = *v17;

    *v16 = v15;
    (v51)(v16 + *(v47 + 28), v17 + *(v47 + 28), v50);
    v20 = (v36 + *(v52 + 36));
    v19 = (v37 + *(v52 + 36));
    v18 = *v19;

    *v20 = v18;
    v21 = v19[1];

    v20[1] = v21;
    v24 = (v36 + *(v57 + 36));
    v23 = (v37 + *(v57 + 36));
    v22 = *v23;

    *v24 = v22;
    v25 = v23[1];

    v24[1] = v25;
    v26 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
    v27 = *(v37 + v26);

    *(v36 + v26) = v27;
    v29 = (v36 + *(v38 + 36));
    v30 = (v37 + *(v38 + 36));
    v28 = *v30;

    *v29 = v28;
    __dst = v29 + *(v65 + 28);
    __src = v30 + *(v65 + 28);
    if (v70())
    {
      v6 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v69 + 16))(__dst, __src, v68);
      (*(v69 + 56))(__dst, 0, 1, v68);
    }

    (*(v39 + 56))(v36, 0, 1, v38);
  }

  v10 = (a2 + v42 + v35[24]);
  v11 = (a1 + v42 + v35[24]);
  v12 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1))
  {
    v8 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(v10, v11, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  return a2;
}

uint64_t sub_1000364F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_10007D1C8();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_10007D1D8();
}

uint64_t sub_1000365F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_10007D1C8();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_10007D1D8();
}

unint64_t sub_1000366E8()
{
  v2 = qword_10009B518;
  if (!qword_10009B518)
  {
    sub_100009860(&qword_10009B488, &qword_10007F890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100036770(uint64_t a1, uint64_t a2)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0);
    v39 = (a2 + *(v3 + 44));
    v40 = (a1 + *(v3 + 44));
    *v39 = *v40;
    v29 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v30 = (v39 + *(v29 + 36));
    v31 = (v40 + *(v29 + 36));
    *v30 = *v31;
    v32 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v34 = v30 + *(v32 + 28);
    v33 = v31 + *(v32 + 28);
    v35 = sub_10007D4D8();
    v36 = *(*(v35 - 8) + 32);
    v36(v34, v33);
    v37 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(v39 + *(v37 + 36)) = *(v40 + *(v37 + 36));
    v38 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(v39 + *(v38 + 36)) = *(v40 + *(v38 + 36));
    v4 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v41 = (v39 + *(v4 + 36));
    v42 = (v40 + *(v4 + 36));
    *v41 = *v42;
    v43 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v44 = v41 + *(v43 + 28);
    v45 = v42 + *(v43 + 28);
    v46 = sub_10007D168();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if ((v48)(v45, 1))
    {
      v5 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v44, v45, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v47 + 32))(v44, v45, v46);
      (*(v47 + 56))(v44, 0, 1, v46);
    }

    v24 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v23 = v39 + v24[12];
    v22 = v40 + v24[12];
    v6 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v6 - 8) + 32))(v23, v22);
    v7 = v39 + v24[16];
    v8 = v40 + v24[16];
    *v7 = *v8;
    v7[8] = v8[8];
    v25 = (v39 + v24[20]);
    v26 = (v40 + v24[20]);
    v27 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1))
    {
      v13 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
      memcpy(v25, v26, *(*(v13 - 8) + 64));
    }

    else
    {
      *v25 = *v26;
      v9 = *(v29 + 36);
      *(v25 + v9) = *(v26 + v9);
      (v36)(v25 + v9 + *(v32 + 28), v26 + v9 + *(v32 + 28), v35);
      *(v25 + *(v37 + 36)) = *(v26 + *(v37 + 36));
      *(v25 + *(v38 + 36)) = *(v26 + *(v38 + 36));
      v10 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
      *(v25 + *(v10 + 36)) = *(v26 + *(v10 + 36));
      v11 = *(v27 + 36);
      *(v25 + v11) = *(v26 + v11);
      __dst = v25 + v11 + *(v43 + 28);
      __src = v26 + v11 + *(v43 + 28);
      if (v48())
      {
        v12 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v47 + 32))(__dst, __src, v46);
        (*(v47 + 56))(__dst, 0, 1, v46);
      }

      (*(v28 + 56))(v25, 0, 1, v27);
    }

    v16 = v39 + v24[24];
    v17 = v40 + v24[24];
    v18 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1))
    {
      v14 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
      memcpy(v16, v17, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v19 + 32))(v16, v17, v18);
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_100036FCC(uint64_t a1, uint64_t a2)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0);
    v63 = (a2 + *(v3 + 44));
    v64 = (a1 + *(v3 + 44));
    v43 = *v64;

    *v63 = v43;
    v44 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v46 = (v63 + *(v44 + 36));
    v47 = (v64 + *(v44 + 36));
    v45 = *v47;

    *v46 = v45;
    v48 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v50 = v46 + *(v48 + 28);
    v49 = v47 + *(v48 + 28);
    v51 = sub_10007D4D8();
    v52 = *(*(v51 - 8) + 16);
    v52(v50, v49);
    v53 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v56 = (v63 + *(v53 + 36));
    v55 = (v64 + *(v53 + 36));
    v54 = *v55;

    *v56 = v54;
    v57 = v55[1];

    v56[1] = v57;
    v58 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v61 = (v63 + *(v58 + 36));
    v60 = (v64 + *(v58 + 36));
    v59 = *v60;

    *v61 = v59;
    v62 = v60[1];

    v61[1] = v62;
    v4 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v66 = (v63 + *(v4 + 36));
    v67 = (v64 + *(v4 + 36));
    v65 = *v67;

    *v66 = v65;
    v68 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v69 = v66 + *(v68 + 28);
    v70 = v67 + *(v68 + 28);
    v71 = sub_10007D168();
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    if ((v73)(v70, 1))
    {
      v5 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v69, v70, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v72 + 16))(v69, v70, v71);
      (*(v72 + 56))(v69, 0, 1, v71);
    }

    v38 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v37 = v63 + v38[12];
    v36 = v64 + v38[12];
    v6 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v6 - 8) + 16))(v37, v36);
    v7 = v63 + v38[16];
    v8 = v64 + v38[16];
    *v7 = *v8;
    v7[8] = v8[8];
    v39 = (v63 + v38[20]);
    v40 = (v64 + v38[20]);
    v41 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1))
    {
      v10 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
      memcpy(v39, v40, *(*(v10 - 8) + 64));
    }

    else
    {
      v17 = *v40;

      *v39 = v17;
      v19 = (v39 + *(v44 + 36));
      v20 = (v40 + *(v44 + 36));
      v18 = *v20;

      *v19 = v18;
      (v52)(v19 + *(v48 + 28), v20 + *(v48 + 28), v51);
      v23 = (v39 + *(v53 + 36));
      v22 = (v40 + *(v53 + 36));
      v21 = *v22;

      *v23 = v21;
      v24 = v22[1];

      v23[1] = v24;
      v27 = (v39 + *(v58 + 36));
      v26 = (v40 + *(v58 + 36));
      v25 = *v26;

      *v27 = v25;
      v28 = v26[1];

      v27[1] = v28;
      v29 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
      v30 = *(v40 + v29);

      *(v39 + v29) = v30;
      v32 = (v39 + *(v41 + 36));
      v33 = (v40 + *(v41 + 36));
      v31 = *v33;

      *v32 = v31;
      __dst = v32 + *(v68 + 28);
      __src = v33 + *(v68 + 28);
      if (v73())
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(__dst, __src, v71);
        (*(v72 + 56))(__dst, 0, 1, v71);
      }

      (*(v42 + 56))(v39, 0, 1, v41);
    }

    v13 = v63 + v38[24];
    v14 = v64 + v38[24];
    v15 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1))
    {
      v11 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
      memcpy(v13, v14, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(v13, v14, v15);
      (*(v16 + 56))(v13, 0, 1, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1000379B0()
{
  v2 = qword_10009B528;
  if (!qword_10009B528)
  {
    sub_100009860(&qword_10009B490, &qword_10007F898);
    sub_1000366E8();
    sub_10003554C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100037A58(uint64_t a1)
{
  sub_1000094DC(&qword_10009B520, &qword_10007F918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = a1 + *(sub_1000094DC(&qword_10009B4A0, &qword_10007F8A0) + 44);

    v14 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v15 = v20 + *(v14 + 36);

    v16 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v17 = v15 + *(v16 + 28);
    v18 = sub_10007D4D8();
    v19 = *(*(v18 - 8) + 8);
    v19(v17);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    v21 = v20 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

    v22 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v23 = v21 + *(v22 + 28);
    v24 = sub_10007D168();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!(v26)(v23, 1))
    {
      (*(v25 + 8))(v23, v24);
    }

    v11 = sub_1000094DC(&qword_10009B4D8, &qword_10007F8D8);
    v10 = v20 + v11[12];
    v2 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
    (*(*(v2 - 8) + 8))(v10);
    v12 = v20 + v11[20];
    v13 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
    if (!(*(*(v13 - 8) + 48))(v12, 1))
    {

      v7 = v12 + *(v14 + 36);

      (v19)(v7 + *(v16 + 28), v18);

      sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);

      v8 = v12 + *(v13 + 36);

      v9 = v8 + *(v22 + 28);
      if (!v26())
      {
        (*(v25 + 8))(v9, v24);
      }
    }

    v4 = v20 + v11[24];
    v5 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v4, 1))
    {
      (*(v6 + 8))(v4, v5);
    }
  }

  else
  {
    v1 = sub_1000094DC(&qword_10009B488, &qword_10007F890);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100037FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v252 = a1;
  v137 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v336 = 0;
  v335 = 0;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v302 = 0;
  v303 = 0;
  v294 = 0;
  v292 = 0;
  v293 = 0;
  v264 = 0;
  v234 = 0;
  v138 = sub_10007D068();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v142 = v57 - v141;
  v143 = sub_1000094DC(&qword_10009B630, &qword_10007FB78);
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v143);
  v145 = v57 - v144;
  v146 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v149 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146);
  v150 = v57 - v149;
  v151 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v149);
  v152 = v57 - v151;
  v153 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v151);
  v154 = v57 - v153;
  v336 = v57 - v153;
  v155 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
  v156 = (*(*(v155 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v157 = v57 - v156;
  v158 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v159 = v57 - v158;
  v160 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v161 = v57 - v160;
  v335 = v57 - v160;
  v162 = sub_10007CFE8();
  v163 = *(v162 - 8);
  v164 = v162 - 8;
  v165 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v162);
  v166 = v57 - v165;
  v167 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
  v168 = (*(*(v167 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v167);
  v169 = v57 - v168;
  v170 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v170);
  v174 = v57 - v173;
  v175 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v173);
  v176 = v57 - v175;
  v334 = v57 - v175;
  v177 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v178 = v57 - v177;
  v179 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v177);
  v180 = v57 - v179;
  v333 = v57 - v179;
  v181 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
  v182 = (*(*(v181 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v183 = v57 - v182;
  v184 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v185 = (v57 - v184);
  v186 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v187 = (v57 - v186);
  v332 = v57 - v186;
  v188 = (*(*(type metadata accessor for Mailbox(v17) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v189 = (v57 - v188);
  v190 = type metadata accessor for Snapshot(v18);
  v191 = (*(*(v190 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v190);
  v192 = (v57 - v191);
  v193 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v194 = (v57 - v193);
  v195 = sub_1000094DC(&qword_10009B4E0, &qword_10007F8E0);
  v196 = *(v195 - 8);
  v197 = v195 - 8;
  v198 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v199 = v57 - v198;
  v200 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v201 = v57 - v200;
  v331 = v57 - v200;
  v259 = sub_10007D6A8();
  v255 = *(v259 - 8);
  v256 = v259 - 8;
  v202 = (*(v255 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v259);
  v257 = v57 - v202;
  v203 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v202);
  v258 = v57 - v203;
  v204 = (*(*(sub_1000094DC(&qword_10009B500, &qword_10007F900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v205 = v57 - v204;
  v206 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v207 = v57 - v206;
  v240 = sub_10007D248();
  v238 = *(v240 - 8);
  v239 = v240 - 8;
  v208 = (v238[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v234);
  v241 = v57 - v208;
  v230 = sub_10007D4D8();
  v227 = *(v230 - 8);
  v228 = v230 - 8;
  v209 = (v227[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v230);
  v229 = v57 - v209;
  v245 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
  v210 = (*(*(v245 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v245);
  v248 = v57 - v210;
  v250 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
  v211 = (*(*(v250 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v250);
  v212 = v57 - v211;
  v213 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v211);
  v254 = v57 - v213;
  v214 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
  v215 = (*(*(v214 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v214);
  v216 = v57 - v215;
  v217 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v215);
  v249 = v57 - v217;
  v218 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v219 = (*(*(v218 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v218);
  v220 = v57 - v219;
  v221 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v219);
  v222 = v57 - v221;
  v223 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - v221);
  v224 = v57 - v223;
  v330 = v57 - v223;
  v329 = a1;
  sub_1000342C8();
  v30 = sub_10007D4C8();
  v233 = &v328;
  v328 = v30;
  v225 = v227[13];
  v226 = v227 + 13;
  v225(v229, enum case for Image.Scale.medium(_:), v230);
  sub_10007D318();
  v231 = v227[1];
  v232 = v227 + 1;
  v231(v229, v230);
  sub_10001DFF8();
  v235 = type metadata accessor for MessageListHeaderView(v234);
  v244 = *(v252 + *(v235 + 24));

  v236 = v238[13];
  v237 = v238 + 13;
  v236(v241, enum case for Font.Leading.tight(_:), v240);
  v247 = sub_10007D258();
  v242 = v238[1];
  v243 = v238 + 1;
  v242(v241, v240);

  v246 = sub_10003C198();
  sub_10007D3D8();

  sub_10003C2C4(v248);
  v253 = sub_1000346FC();
  v251 = sub_10003C37C();
  sub_10007D388();

  sub_10003C4AC(v254);
  sub_100033CD8(v258);
  sub_10007D698();
  v262 = sub_10007D688();
  v261 = *(v255 + 8);
  v260 = v255 + 8;
  v261(v257, v259);
  v261(v258, v259);
  if (v262)
  {
    sub_10007D158();
  }

  else
  {
    sub_10007D148();
  }

  v31 = sub_10007D168();
  (*(*(v31 - 8) + 56))(v207, 0, 1);
  v110 = sub_10003C5A0();
  sub_10007D3B8();
  v32 = v189;
  sub_10003C6D0(v207);
  sub_10003C778(v249);
  v111 = sub_10003C8A8();
  sub_1000354E8(v222, v218, v224);
  sub_10003C9D8(v222);
  sub_10001E2CC((v252 + *(v235 + 20)), v194);
  sub_10000DFBC(v194, v32);
  sub_10001F234(v194);
  v113 = sub_100019CD8();
  v112 = v33;
  sub_100014DA0(v189);
  v114 = v320;
  v320[0] = v113;
  v320[1] = v112;
  v115 = sub_10003CBFC();
  v316 = sub_10007D2C8();
  v317 = v34;
  v318 = v35;
  v319 = v36;
  v116 = v313;
  v313[0] = v316;
  v313[1] = v34;
  v131 = 1;
  v314 = v35 & 1;
  v315 = v36;
  v127 = 1;
  sub_10007D428();
  sub_10003CC74(v116);
  v120 = v307;
  v307[0] = v320[2];
  v307[1] = v320[3];
  v308 = v321 & 1 & v131;
  v309 = v322;
  v310 = v323;
  v311 = v324;
  v312 = v325 & 1 & v131;
  v117 = *(v252 + *(v235 + 24));

  sub_10007D228();
  v119 = sub_10007D238();

  v118 = sub_1000094DC(&qword_10009B690, &unk_10007FB90);
  sub_10003CD00();
  v121 = &v326;
  sub_10007D3D8();

  sub_10003CE2C(v120);
  v122 = __dst;
  v123 = 72;
  memcpy(__dst, v121, sizeof(__dst));
  v124 = v306;
  memcpy(v306, __dst, sizeof(v306));
  v125 = sub_1000094DC(&qword_10009B6B0, &unk_10007FBA0);
  v126 = sub_10003CE80();
  sub_10003F924();
  sub_10007D2D8();
  sub_10003CF28(v124);
  v304 = v125;
  v305 = v126;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v199, v195, v201);
  v129 = *(v196 + 8);
  v130 = v196 + 8;
  v129(v199, v195);
  v300 = sub_10007D548();
  v301 = v37 & 1 & v131;
  sub_1000354E8(&v300, &type metadata for Spacer, &v302);
  sub_10001E2CC((v252 + *(v235 + 20)), v194);
  v38 = v194 + *(v190 + 20);
  v134 = *v38;
  v132 = *(v38 + 1);
  v133 = *(v38 + 8);
  sub_10002F4F8(v134);
  sub_10001F234(v194);
  v135 = sub_100074974(v134, v132, v133);
  sub_10003CF94(v134);
  if (v135)
  {
    sub_10007D898("moon.fill", 9uLL, 1);
    v39 = sub_10007D4C8();
    v106 = &v263;
    v263 = v39;
    v225(v229, enum case for Image.Scale.medium(_:), v230);
    sub_10007D318();
    v231(v229, v230);
    sub_10001DFF8();
    v107 = *(v252 + *(v235 + 24));

    v236(v241, enum case for Font.Leading.tight(_:), v240);
    v108 = sub_10007D258();
    v242(v241, v240);

    sub_10007D3D8();

    sub_10003C2C4(v248);
    sub_100033CD8(v258);
    sub_10007D698();
    v109 = sub_10007D688();
    v261(v257, v259);
    v261(v258, v259);
    if (v109)
    {
      v40 = [objc_opt_self() systemIndigoColor];
      v105 = sub_10007D4A8();
    }

    else
    {
      v105 = sub_10007D488();
    }

    v103 = v105;
    sub_10007D388();

    sub_10003C4AC(v212);
    sub_10003F93C();
    v41 = sub_10003E670();
    sub_10003F954(v166, v214, v162, v110, v41, v169);
    (*(v163 + 8))(v166, v162);
    sub_10003C778(v216);
    sub_100033CD8(v258);
    sub_10007D698();
    v104 = sub_10007D688();
    v261(v257, v259);
    v261(v258, v259);
    if (v104)
    {
      sub_10007D158();
    }

    else
    {
      sub_10007D148();
    }

    v42 = sub_10007D168();
    (*(*(v42 - 8) + 56))(v205, 0, 1);
    sub_10003D080();
    sub_10007D3B8();
    sub_10003C6D0(v205);
    sub_10003E6F0(v169);
    v102 = sub_10003CFD8();
    sub_1000354E8(v178, v170, v180);
    sub_10003E848(v178);
    sub_10003EA94(v180, v174);
    sub_1000354E8(v174, v170, v176);
    sub_10003E848(v174);
    sub_10003EA94(v176, v183);
    (*(v171 + 56))(v183, 0, 1, v170);
    sub_100059804(v183, v170, v185);
    sub_10003D1B0(v183);
    sub_10003D420(v185, v187);
    sub_10003E848(v176);
    sub_10003E848(v180);
  }

  else
  {
    (*(v171 + 56))(v183, 1, 1, v170);
    sub_10003CFD8();
    sub_100059804(v183, v170, v185);
    sub_10003D1B0(v183);
    sub_10003D420(v185, v187);
  }

  sub_10001E2CC((v252 + *(v235 + 20)), v192);
  v43 = v192 + *(v190 + 20);
  v100 = *v43;
  v98 = *(v43 + 1);
  v99 = *(v43 + 8);
  sub_10002F4F8(v100);
  sub_10001F234(v192);
  v101 = sub_1000749FC(v100, v98);
  if (v44)
  {
    sub_10003CF94(v100);
LABEL_22:
    (*(v147 + 56))(v157, 1, 1, v146);
    v55 = sub_10003D7C0();
    v299[5] = v143;
    v299[6] = v55;
    swift_getOpaqueTypeConformance2();
    sub_100059804(v157, v146, v159);
    sub_10003D8EC(v157);
    sub_10003D9A0(v159, v161);
    goto LABEL_23;
  }

  v97 = v101;
  v96 = v101;
  v294 = v101;
  sub_10003CF94(v100);
  if (v96 <= 0)
  {
    goto LABEL_22;
  }

  v94 = *sub_1000341F8();
  _objc_retain(v94);
  isa = sub_10007DAC8().super.super.isa;
  v95 = [v94 stringForObjectValue:?];
  swift_unknownObjectRelease();
  _objc_release(v94);
  if (v95)
  {
    v92 = v95;
    v87 = v95;
    v88 = sub_10007D868();
    v89 = v45;
    _objc_release(v87);
    v90 = v88;
    v91 = v89;
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v85 = v91;
  v86 = v90;
  if (!v91)
  {
    goto LABEL_22;
  }

  v83 = v86;
  v84 = v85;
  v62 = v85;
  v61 = v86;
  v292 = v86;
  v293 = v85;

  v290 = v61;
  v291 = v62;
  v286 = sub_10007D2C8();
  v287 = v46;
  v288 = v47;
  v289 = v48;
  v64 = v286;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  v63 = *(v252 + *(v235 + 24));

  v282 = v64;
  v283 = v65;
  v76 = 1;
  v284 = v66 & 1;
  v285 = v67;
  v278 = sub_10007D2A8();
  v279 = v49;
  v280 = v50;
  v281 = v51;
  v69 = v278;
  v70 = v49;
  v71 = v50;
  v72 = v51;

  sub_10003CCBC(v64, v65, v66 & 1);

  v68 = sub_10007D498();
  v274 = v69;
  v275 = v70;
  v276 = v71 & 1 & v76;
  v277 = v72;
  v270 = sub_10007D298();
  v271 = v52;
  v272 = v53;
  v273 = v54;
  v73 = v270;
  v74 = v52;
  v75 = v53;
  v77 = v54;

  sub_10003CCBC(v69, v70, v71 & 1);

  v78 = v267;
  v267[0] = v73;
  v267[1] = v74;
  v268 = v75 & 1 & v76;
  v269 = v77;
  sub_100039FA8();
  sub_10007D058();
  sub_100039FB4(v142, &type metadata for Text, &protocol witness table for Text);
  (*(v139 + 8))(v142, v138);
  sub_10003CC74(v78);
  v79 = sub_10003D7C0();
  sub_10003F924();
  sub_10007D2D8();
  sub_10003E59C(v145);
  v265 = v143;
  v266 = v79;
  v80 = swift_getOpaqueTypeConformance2();
  sub_1000354E8(v152, v146, v154);
  v81 = *(v147 + 8);
  v82 = v147 + 8;
  v81(v152, v146);
  v264 = v152;
  v60 = *(v147 + 16);
  v59 = v147 + 16;
  v60(v150, v154, v146);
  sub_1000354E8(v150, v146, v152);
  v81(v150, v146);
  v60(v157, v152, v146);
  (*(v147 + 56))(v157, 0, 1, v146);
  sub_100059804(v157, v146, v159);
  sub_10003D8EC(v157);
  sub_10003D9A0(v159, v161);
  v81(v152, v146);
  v81(v154, v146);

LABEL_23:
  sub_10003DAD4(v224, v220);
  v58 = v299;
  v299[0] = v220;
  (*(v196 + 16))(v199, v201, v195);
  v299[1] = v199;
  v297 = v302;
  v298 = v303;
  v299[2] = &v297;
  sub_10003DE84(v187, v185);
  v299[3] = v185;
  sub_10003E2E8(v161, v159);
  v299[4] = v159;
  v57[0] = v296;
  v296[0] = v218;
  v296[1] = v195;
  v296[2] = &type metadata for Spacer;
  v296[3] = v181;
  v296[4] = v155;
  v57[1] = v295;
  v295[0] = v111;
  v295[1] = OpaqueTypeConformance2;
  v295[2] = &protocol witness table for Spacer;
  v295[3] = sub_10003E41C();
  v295[4] = sub_10003E4B4();
  sub_10003A014(v58, 5uLL, v57[0], v136);
  sub_10003D8EC(v159);
  sub_10003D1B0(v185);
  v129(v199, v195);
  sub_10003C9D8(v220);
  sub_10003D8EC(v161);
  sub_10003D1B0(v187);
  v129(v201, v195);
  return sub_10003C9D8(v224);
}

unint64_t sub_100039F20()
{
  v2 = qword_10009B538;
  if (!qword_10009B538)
  {
    sub_100009860(&qword_10009B530, &qword_10007F920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100039FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10007D348();
}

uint64_t *sub_10003A014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    __chkstk_darwin(&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = __chkstk_darwin(&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_10007D5C8();
  return v16;
}

uint64_t sub_10003A2A4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_10003C0C4(a1, a3);
  v5 = type metadata accessor for MessageListHeaderView(0);
  sub_10001EB30(a2, &a3[*(v5 + 20)]);
  v6 = *(v5 + 24);
  result = sub_10007D268();
  *&a3[v6] = result;
  return result;
}

uint64_t sub_10003A378@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v70 = 0;
  v69 = 0;
  v1 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v26 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v27 = &v17 - v26;
  v40 = 0;
  v47 = sub_10007D6D8();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v28 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v50 = &v17 - v28;
  v57 = sub_10007D6C8();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v29 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v56 = &v17 - v29;
  v30 = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v43 = &v17 - v30;
  v31 = (*(*(type metadata accessor for Mailbox(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v42 = (&v17 - v31);
  v32 = (*(*(type metadata accessor for Snapshot(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = &v17 - v32;
  v51 = type metadata accessor for MessageListHeaderView(v4);
  v33 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v5 = &v17 - v33;
  v60 = &v17 - v33;
  v62 = sub_1000094DC(&qword_10009B540, &qword_10007F958);
  v34 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v35 = (&v17 - v34);
  v36 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v17 - v34);
  v37 = (&v17 - v36);
  v38 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v17 - v36);
  v64 = (&v17 - v38);
  v39 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v17 - v38);
  v61 = (&v17 - v39);
  v70 = &v17 - v39;
  v9 = sub_100019A70();
  sub_10000DFBC(v9, v42);
  v41 = type metadata accessor for Message(v40);
  v10 = sub_10007DEC8();
  sub_100074910(v42, v10, 8, 0, v44);
  sub_10003A270();
  sub_10003A2A4(v43, v44, v5);
  v48 = *(v45 + 104);
  v49 = v45 + 104;
  v48(v50, enum case for WidgetFamily.systemSmall(_:), v47);
  sub_10007D6B8();
  v52 = sub_10003AEC8();
  v53 = sub_10003AF48();
  sub_10007D378();
  v58 = *(v54 + 8);
  v59 = v54 + 8;
  v58(v56, v57);
  sub_10003AFC8(v60);
  v63 = sub_10003B1BC();
  sub_1000354E8(v64, v62, v61);
  sub_10003B2EC(v64);
  v69 = v64;
  v11 = v60;
  v17 = 5;
  v18 = 1;
  v19 = sub_10007D898("INBOX", 5uLL, 1);
  v20 = v12;
  v21 = sub_10007D898("Inbox", v17, v18 & 1);
  v22 = v13;
  v23 = 0;
  v14 = sub_10007CD98();
  (*(*(v14 - 8) + 56))(v27, v18);
  sub_100019764(v19, v20, v23, v21, v22, v27, v42);
  v15 = sub_10007DEC8();
  sub_100074910(v42, v15, 8, 256, v44);
  sub_10003A270();
  sub_10003A2A4(v43, v44, v11);
  v48(v50, enum case for WidgetFamily.systemSmall(_:), v47);
  sub_10007D6B8();
  sub_10007D378();
  v58(v56, v57);
  sub_10003AFC8(v60);
  sub_1000354E8(v37, v62, v64);
  sub_10003B2EC(v37);
  sub_10003B51C(v61, v37);
  v24 = v68;
  v68[0] = v37;
  sub_10003B51C(v64, v35);
  v68[1] = v35;
  v67[0] = v62;
  v67[1] = v62;
  v65 = v63;
  v66 = v63;
  sub_10003A014(v24, 2uLL, v67, v25);
  sub_10003B2EC(v35);
  sub_10003B2EC(v37);
  sub_10003B2EC(v64);
  return sub_10003B2EC(v61);
}

uint64_t sub_10003AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_10007D6A8();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_10007D0E8();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_10007D0C8();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_10003ADF8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_10007D6A8();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_10007D0D8();
}

unint64_t sub_10003AEC8()
{
  v2 = qword_10009B548;
  if (!qword_10009B548)
  {
    type metadata accessor for MessageListHeaderView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003AF48()
{
  v2 = qword_10009B550;
  if (!qword_10009B550)
  {
    sub_10007D6C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003AFC8(uint64_t a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v6 = a1 + *(type metadata accessor for MessageListHeaderView(0) + 20);

  if (*(v6 + 32) > 5uLL)
  {
  }

  v3 = v6 + *(type metadata accessor for Mailbox(0) + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  if (*(v6 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  return a1;
}

unint64_t sub_10003B1BC()
{
  v2 = qword_10009B558;
  if (!qword_10009B558)
  {
    sub_100009860(&qword_10009B540, &qword_10007F958);
    sub_10003AEC8();
    sub_10003B264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003B264()
{
  v2 = qword_10009B560;
  if (!qword_10009B560)
  {
    sub_100009860(&qword_10009B568, &unk_10007F960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003B2EC(uint64_t a1)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v7 = a1 + *(type metadata accessor for MessageListHeaderView(0) + 20);

  if (*(v7 + 32) > 5uLL)
  {
  }

  v4 = v7 + *(type metadata accessor for Mailbox(0) + 28);
  v5 = sub_10007CD98();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1))
  {
    (*(v6 + 8))(v4, v5);
  }

  if (*(v7 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v3 = a1 + *(sub_1000094DC(&qword_10009B540, &qword_10007F958) + 36);
  if (*(v3 + 24))
  {
    sub_10000A914(v3);
  }

  return a1;
}

void *sub_10003B51C(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v26 = *a1;

    *a2 = v26;
  }

  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for MessageListHeaderView(0);
  v23 = (a2 + *(v21 + 20));
  v25 = (a1 + *(v21 + 20));
  *v23 = *v25;
  v22 = v25[1];

  v23[1] = v22;
  v24 = v25[2];

  v23[2] = v24;
  if (v25[4] > 5uLL)
  {
    v23[3] = v25[3];
    v20 = v25[4];

    v23[4] = v20;
  }

  else
  {
    *(v23 + 3) = *(v25 + 3);
  }

  v3 = type metadata accessor for Mailbox(0);
  __dst = v23 + *(v3 + 28);
  __src = v25 + *(v3 + 28);
  v18 = sub_10007CD98();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(__dst, __src, v18);
    (*(v19 + 56))(__dst, 0, 1, v18);
  }

  v5 = type metadata accessor for Snapshot(0);
  v14 = v23 + *(v5 + 20);
  v15 = v25 + *(v5 + 20);
  if (*v15 < 2uLL)
  {
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
  }

  else
  {
    v13 = *v15;

    *v14 = v13;
    *(v14 + 1) = *(v15 + 1);
    v14[16] = v15[16];
    v14[17] = v15[17];
  }

  v9 = *(v21 + 24);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v6 = sub_1000094DC(&qword_10009B540, &qword_10007F958);
  v11 = (a2 + *(v6 + 36));
  v12 = (a1 + *(v6 + 36));
  if (v12[3])
  {
    v7 = v12[3];
    v11[3] = v7;
    v11[4] = v12[4];
    (**(v7 - 8))();
  }

  else
  {
    memcpy(v11, v12, 0x28uLL);
  }

  return a2;
}

unint64_t sub_10003B950()
{
  v2 = qword_10009B570;
  if (!qword_10009B570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B570);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003B9F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = type metadata accessor for Snapshot(0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24)) < &_mh_execute_header)
      {
        v4 = *(a1 + *(a3 + 24));
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_10003BBD8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Snapshot(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10003BD6C(uint64_t a1)
{
  v4 = sub_10003BE48(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for Snapshot(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_10003BE48(uint64_t a1)
{
  v5 = qword_10009B5E0;
  if (!qword_10009B5E0)
  {
    sub_10007D6A8();
    v4 = sub_10007CF18();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009B5E0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10003BF40()
{
  v2 = qword_10009B618;
  if (!qword_10009B618)
  {
    sub_100009860(&qword_10009B620, "dU");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003BFE0()
{
  v2 = qword_10009B628;
  if (!qword_10009B628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B628);
    return WitnessTable;
  }

  return v2;
}

void *sub_10003C0C4(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_10003C198()
{
  v2 = qword_10009B638;
  if (!qword_10009B638)
  {
    sub_100009860(&qword_10009B4A8, &qword_10007F8A8);
    sub_10003C23C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C23C()
{
  v2 = qword_10009B640;
  if (!qword_10009B640)
  {
    sub_100009860(&qword_10009B4B0, &unk_10007F8B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003C2C4(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_10003C37C()
{
  v2 = qword_10009B648;
  if (!qword_10009B648)
  {
    sub_100009860(&qword_10009B4B8, &unk_100080370);
    sub_10003C198();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C424()
{
  v2 = qword_10009B650;
  if (!qword_10009B650)
  {
    sub_100009860(&qword_10009B658, &unk_10007FB80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B650);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003C4AC(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  return a1;
}

unint64_t sub_10003C5A0()
{
  v2 = qword_10009B660;
  if (!qword_10009B660)
  {
    sub_100009860(&qword_10009B4C0, &qword_10007F8C0);
    sub_10003C37C();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C648()
{
  v2 = qword_10009B668;
  if (!qword_10009B668)
  {
    sub_100009860(&qword_10009B670, &qword_100080380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003C6D0(uint64_t a1)
{
  v3 = sub_10007D168();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10003C778(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

  return a1;
}

unint64_t sub_10003C8A8()
{
  v2 = qword_10009B678;
  if (!qword_10009B678)
  {
    sub_100009860(&qword_10009B4C8, &qword_10007F8C8);
    sub_10003C5A0();
    sub_10003C950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003C950()
{
  v2 = qword_10009B680;
  if (!qword_10009B680)
  {
    sub_100009860(&qword_10009B4D0, &qword_10007F8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B680);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003C9D8(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

  v6 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);

  v7 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v8 = sub_10007D168();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6 + v7, 1))
  {
    (*(v9 + 8))(a1 + v6 + v7, v8);
  }

  return a1;
}

unint64_t sub_10003CBFC()
{
  v2 = qword_10009B688;
  if (!qword_10009B688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CC74(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_10003CCBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10003CD00()
{
  v2 = qword_10009B698;
  if (!qword_10009B698)
  {
    sub_100009860(&qword_10009B690, &unk_10007FB90);
    sub_10003CDA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003CDA4()
{
  v2 = qword_10009B6A0;
  if (!qword_10009B6A0)
  {
    sub_100009860(&qword_10009B6A8, &qword_1000803A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CE2C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_10003CE80()
{
  v2 = qword_10009B6B8;
  if (!qword_10009B6B8)
  {
    sub_100009860(&qword_10009B6B0, &unk_10007FBA0);
    sub_10003CD00();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003CF28(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_10003CF94(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10003CFD8()
{
  v2 = qword_10009B6C0;
  if (!qword_10009B6C0)
  {
    sub_100009860(&qword_10009B4E8, &qword_10007F8E8);
    sub_10003D080();
    sub_10003C950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D080()
{
  v2 = qword_10009B6C8;
  if (!qword_10009B6C8)
  {
    sub_100009860(&qword_10009B4F0, &qword_10007F8F0);
    sub_10003C5A0();
    sub_10003D128();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D128()
{
  v2 = qword_10009B6D0;
  if (!qword_10009B6D0)
  {
    sub_100009860(&qword_10009B6D8, &qword_10007FE30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003D1B0(uint64_t a1)
{
  v10 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  if (!(*(*(v10 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

    v4 = v3 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v1 = sub_10007D4D8();
    (*(*(v1 - 8) + 8))(v4);
    sub_1000094DC(&qword_10009B4B8, &unk_100080370);

    sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

    sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);

    v5 = a1 + *(v10 + 36);

    v6 = v5 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v7 = sub_10007D168();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  return a1;
}

void *sub_10003D420(void *a1, void *a2)
{
  v24 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v12 = (a2 + *(v2 + 36));
    v13 = (a1 + *(v2 + 36));
    *v12 = *v13;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v15 = v12 + *(v3 + 28);
    v14 = v13 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v15, v14);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v7 = sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);
    *(a2 + *(v7 + 36)) = *(a1 + *(v7 + 36));
    v16 = (a2 + *(v24 + 36));
    v17 = (a1 + *(v24 + 36));
    *v16 = *v17;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v16 + *(v8 + 28);
    __src = v17 + *(v8 + 28);
    v20 = sub_10007D168();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(__dst, __src, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }

    (*(v25 + 56))(a2, 0, 1, v24);
  }

  return a2;
}

unint64_t sub_10003D7C0()
{
  v2 = qword_10009B6E0;
  if (!qword_10009B6E0)
  {
    sub_100009860(&qword_10009B630, &qword_10007FB78);
    sub_10003D864();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003D864()
{
  v2 = qword_10009B6E8;
  if (!qword_10009B6E8)
  {
    sub_100009860(&qword_10009B6F0, &qword_10007FBB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003D8EC(uint64_t a1)
{
  v3 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_10003D9A0(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_10003DAD4(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v2 = sub_10007D4D8();
  (*(*(v2 - 8) + 16))(&a2[v6 + v8], &a1[v6 + v8]);
  v9 = *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36);
  v10 = *&a1[v9];

  *&a2[v9] = v10;
  v11 = *&a1[v9 + 8];

  *&a2[v9 + 8] = v11;
  v12 = *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36);
  v13 = *&a1[v12];

  *&a2[v12] = v13;
  v14 = *&a1[v12 + 8];

  *&a2[v12 + 8] = v14;
  v16 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v18 = *&a1[v16];

  *&a2[v16] = v18;
  v19 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v20 = sub_10007D168();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(&a1[v16 + v19], 1))
  {
    v3 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy(&a2[v16 + v19], &a1[v16 + v19], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))();
    (*(v21 + 56))(&a2[v16 + v19], 0, 1, v20);
  }

  return a2;
}

void *sub_10003DE84(uint64_t *a1, void *a2)
{
  v36 = sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a1, 1))
  {
    v9 = sub_1000094DC(&qword_10009B508, &qword_10007F908);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v13 = (a2 + *(v2 + 36));
    v14 = (a1 + *(v2 + 36));
    v12 = *v14;

    *v13 = v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v16 = v13 + *(v3 + 28);
    v15 = v14 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v16, v15);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v19 = (a2 + *(v5 + 36));
    v18 = (a1 + *(v5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v23 = (a2 + *(v6 + 36));
    v22 = (a1 + *(v6 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v25 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
    v26 = *(a1 + v25);

    *(a2 + v25) = v26;
    v28 = (a2 + *(v36 + 36));
    v29 = (a1 + *(v36 + 36));
    v27 = *v29;

    *v28 = v27;
    v7 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v30 = v28 + *(v7 + 28);
    v31 = v29 + *(v7 + 28);
    v32 = sub_10007D168();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v31, 1))
    {
      v8 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v30, v31, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v33 + 16))(v30, v31, v32);
      (*(v33 + 56))(v30, 0, 1, v32);
    }

    (*(v37 + 56))(a2, 0, 1, v36);
  }

  return a2;
}

void *sub_10003E2E8(const void *a1, void *a2)
{
  v6 = sub_1000094DC(&qword_10009B4F8, &qword_10007F8F8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B510, &qword_10007F910);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_10003E41C()
{
  v2 = qword_10009B6F8;
  if (!qword_10009B6F8)
  {
    sub_100009860(&qword_10009B508, &qword_10007F908);
    sub_10003CFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10003E4B4()
{
  v2 = qword_10009B700;
  if (!qword_10009B700)
  {
    sub_100009860(&qword_10009B510, &qword_10007F910);
    sub_100009860(&qword_10009B630, &qword_10007FB78);
    sub_10003D7C0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B700);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003E59C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = a1 + *(sub_1000094DC(&qword_10009B630, &qword_10007FB78) + 36);

  v4 = *(sub_1000094DC(&qword_10009B6F0, &qword_10007FBB0) + 28);
  v1 = sub_10007D068();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_10003E670()
{
  v2 = qword_10009B708;
  if (!qword_10009B708)
  {
    sub_10007CFE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10003E6F0(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

  sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);

  return a1;
}

uint64_t sub_10003E848(uint64_t a1)
{

  v3 = a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);

  v4 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v1 = sub_10007D4D8();
  (*(*(v1 - 8) + 8))(v3 + v4);
  sub_1000094DC(&qword_10009B4B8, &unk_100080370);

  sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);

  sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0);

  v6 = *(sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8) + 36);

  v7 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v8 = sub_10007D168();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6 + v7, 1))
  {
    (*(v9 + 8))(a1 + v6 + v7, v8);
  }

  return a1;
}

char *sub_10003EA94(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v2 = sub_10007D4D8();
  (*(*(v2 - 8) + 16))(&a2[v6 + v8], &a1[v6 + v8]);
  v9 = *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36);
  v10 = *&a1[v9];

  *&a2[v9] = v10;
  v11 = *&a1[v9 + 8];

  *&a2[v9 + 8] = v11;
  v12 = *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36);
  v13 = *&a1[v12];

  *&a2[v12] = v13;
  v14 = *&a1[v12 + 8];

  *&a2[v12 + 8] = v14;
  v15 = *(sub_1000094DC(&qword_10009B4F0, &qword_10007F8F0) + 36);
  v16 = *&a1[v15];

  *&a2[v15] = v16;
  v18 = *(sub_1000094DC(&qword_10009B4E8, &qword_10007F8E8) + 36);
  v20 = *&a1[v18];

  *&a2[v18] = v20;
  v21 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v22 = sub_10007D168();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(&a1[v18 + v21], 1))
  {
    v3 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy(&a2[v18 + v21], &a1[v18 + v21], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v23 + 16))();
    (*(v23 + 56))(&a2[v18 + v21], 0, 1, v22);
  }

  return a2;
}

uint64_t sub_10003EEC4(uint64_t a1)
{
  v4 = a1;
  v1 = sub_10007D068();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_10007D0A8();
}

void *sub_10003EF94(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v22 = *a1;

    *a2 = v22;
  }

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for MessageListHeaderView(0);
  v19 = (a2 + *(v17 + 20));
  v21 = (a1 + *(v17 + 20));
  *v19 = *v21;
  v18 = v21[1];

  v19[1] = v18;
  v20 = v21[2];

  v19[2] = v20;
  if (v21[4] > 5uLL)
  {
    v19[3] = v21[3];
    v16 = v21[4];

    v19[4] = v16;
  }

  else
  {
    *(v19 + 3) = *(v21 + 3);
  }

  v3 = type metadata accessor for Mailbox(0);
  __dst = v19 + *(v3 + 28);
  __src = v21 + *(v3 + 28);
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v5 = type metadata accessor for Snapshot(0);
  v10 = v19 + *(v5 + 20);
  v11 = v21 + *(v5 + 20);
  if (*v11 < 2uLL)
  {
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  else
  {
    v9 = *v11;

    *v10 = v9;
    *(v10 + 1) = *(v11 + 1);
    v10[16] = v11[16];
    v10[17] = v11[17];
  }

  v7 = *(v17 + 24);
  v8 = *(a1 + v7);

  result = a2;
  *(a2 + v7) = v8;
  return result;
}

uint64_t sub_10003F324()
{
  v8 = type metadata accessor for MessageListHeaderView(0);
  v0 = *(*(v8 - 8) + 80);
  v9 = (v0 + 16) & ~v0;
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6A8();
    (*(*(v1 - 8) + 8))(v7 + v9);
  }

  else
  {
  }

  v6 = v7 + v9 + *(v8 + 20);

  if (*(v6 + 32) > 5uLL)
  {
  }

  v3 = v6 + *(type metadata accessor for Mailbox(0) + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  if (*(v6 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

__n128 sub_10003F5B4(char *a1, char *a2)
{
  v18 = sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v18 - 8) + 64));
  }

  v9 = type metadata accessor for MessageListHeaderView(0);
  v10 = &a2[*(v9 + 20)];
  v11 = &a1[*(v9 + 20)];
  *v10 = *v11;
  *(v10 + 2) = *(v11 + 2);
  *(v10 + 24) = *(v11 + 24);
  v3 = type metadata accessor for Mailbox(0);
  __dst = &v10[*(v3 + 28)];
  __src = &v11[*(v3 + 28)];
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v5 = type metadata accessor for Snapshot(0);
  v6 = &v10[*(v5 + 20)];
  v7 = &v11[*(v5 + 20)];
  result = *v7;
  *v6 = *v7;
  v6[1].n128_u16[0] = v7[1].n128_u16[0];
  *&a2[*(v9 + 24)] = *&a1[*(v9 + 24)];
  return result;
}

uint64_t sub_10003F84C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessageListHeaderView(0);

  return sub_100035328(a1);
}

unint64_t sub_10003F8C0()
{
  v2 = qword_10009B710;
  if (!qword_10009B710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10003F954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v8 = a1;
  v15 = a2;
  v11 = a3;
  v16 = a4;
  v12 = a5;
  v19 = a2;
  v18 = a3;
  v10 = *(a3 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(a1);
  v13 = &v8 - v9;
  (*(v10 + 16))(v6);
  v17 = sub_10007CF78();
  sub_10007D338();
}

uint64_t sub_10003FA3C@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for MessageListView(0);
  sub_10003FB70((v6 + *(v2 + 20)), v1);
  sub_10007CF08();
  return sub_10003FC44(v9);
}

uint64_t type metadata accessor for MessageListView(uint64_t a1)
{
  v2 = qword_10009B898;
  if (!qword_10009B898)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_10003FB70(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_10003FC44(uint64_t a1)
{
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10007D6D8();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10003FD18(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1000094DC(&qword_10009B718, &qword_100080120) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_10003FB70(v2, (&v5 - v6));
  v3 = type metadata accessor for MessageListView(0);
  sub_10003FDC8(v7, (v1 + *(v3 + 20)));
  return sub_10003FC44(v8);
}

void *sub_10003FDC8(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_10003FC44(a2);
    v4 = sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_10007D6D8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

double sub_10003FEF8()
{
  type metadata accessor for MessageListView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();

  return v1;
}

uint64_t sub_10003FF84(double a1)
{
  type metadata accessor for MessageListView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D508();
  sub_100040030();
}

double sub_10004005C()
{
  type metadata accessor for MessageListView(0);

  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D518();

  return v1;
}

double sub_100040100()
{
  v2 = *(v0 + *(type metadata accessor for MessageListView(0) + 24));

  return v2;
}

uint64_t sub_100040148(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for MessageListView(0) + 24);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_1000401A0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v78 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v100 = 0;
  v55 = sub_1000094DC(&qword_10009B730, &qword_10007FC00);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55 - 8);
  v57 = &v25 - v56;
  v58 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  v59 = *(v58 - 8);
  v60 = v59;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58 - 8);
  v62 = &v25 - v61;
  v63 = sub_1000094DC(&qword_10009B740, &qword_10007FC10);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63 - 8);
  v65 = &v25 - v64;
  v66 = sub_1000094DC(&qword_10009B748, &qword_10007FC18);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66 - 8);
  v68 = &v25 - v67;
  v69 = sub_1000094DC(&qword_10009B750, &qword_10007FC20);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69 - 8);
  v71 = &v25 - v70;
  v72 = sub_1000094DC(&qword_10009B758, &qword_10007FC28);
  v74 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v78);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = &v25 - v76;
  __chkstk_darwin(v1);
  v75 = &v25 - v76;
  __chkstk_darwin(v2);
  v77 = &v25 - v76;
  v111 = &v25 - v76;
  v79 = *(type metadata accessor for MessageListView(v3) - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  __chkstk_darwin(v78);
  v82 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for Snapshot(v5) - 8;
  __chkstk_darwin(v89);
  v93 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_1000094DC(&qword_10009B760, &qword_10007FC30);
  v85 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v83);
  v87 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v25 - v87;
  __chkstk_darwin(v7);
  v88 = &v25 - v87;
  v110 = &v25 - v87;
  v109 = v8;
  sub_10001E2CC(v8, v9);
  v10 = v93 + *(v89 + 28);
  v96 = *v10;
  v90 = v96;
  v94 = *(v10 + 1);
  v91 = v94;
  v95 = *(v10 + 8);
  v92 = v95;
  sub_10002F4F8(v96);
  sub_10001F234(v93);
  v97 = sub_100074AA4(v96);
  if (v97)
  {
    v53 = v97;
    v52 = v97;
    v105 = v97;
    sub_10003CF94(v90);
    sub_100045BF8(v83, v82);

    v37 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v38 = (v37 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100046264(v82, v39 + v37);
    *(v39 + v38) = v52;
    v40 = sub_1000094DC(&qword_10009B7F0, &qword_10007FC70);
    sub_1000465C4();
    v102[0] = sub_10007CFC8();
    v102[1] = v11;
    v47 = sub_1000094DC(&qword_10009B7D0, &qword_10007FC60);
    v48 = sub_100045588();
    v51 = &v103;
    v41 = v102;
    sub_1000354E8(v102, v47, &v103);
    sub_100040030();
    v42 = v103;
    v43 = v104;

    v99[0] = v42;
    v99[1] = v43;
    v50 = &v100;
    v44 = v99;
    sub_1000354E8(v99, v47, &v100);
    sub_100040030();
    v45 = v100;
    v46 = v101;

    v98[0] = v45;
    v98[1] = v46;
    v12 = sub_1000452FC();
    v49 = v98;
    sub_1000364F8(v98, v47, v72, v48, v12, v86);
    sub_100040030();
    sub_100045610(v86, v88);
    sub_100040030();
    sub_100040030();
  }

  else
  {
    sub_10003CF94(v90);
    v29 = &v25;
    __chkstk_darwin(&v25);
    v27 = v22;
    v23 = v13;
    v28 = sub_1000094DC(&qword_10009B768, &qword_10007FC38);
    sub_100044668();
    sub_10007D4B8();
    v30 = sub_1000447E0();
    sub_10003F924();
    sub_10007D2D8();
    sub_100044878(v57);
    v31 = sub_10007D498();
    v107 = v55;
    v108 = v30;
    v34 = 1;
    swift_getOpaqueTypeConformance2();
    sub_10007D388();

    (*(v60 + 8))(v62, v58);
    v32 = sub_10007D218();
    sub_10004498C();
    sub_10007D3D8();

    sub_100044A84(v65);
    sub_100044B28();
    sub_10007D3C8();
    sub_100044BD0(v68);
    v33 = sub_1000450C4();
    v14 = sub_1000450A0();
    v35 = &v18;
    v24 = v33;
    v23 = v69;
    v22[1] = v15;
    v22[0] = v14;
    v21 = 0;
    v20 = 0x7FF0000000000000;
    v19 = v34;
    v18 = 0;
    sub_10007D3F8();
    sub_1000451F4(v71);
    v36 = sub_1000452FC();
    sub_1000354E8(v75, v72, v77);
    sub_1000451F4(v75);
    v106 = v75;
    sub_1000453A0(v77, v73);
    sub_1000354E8(v73, v72, v75);
    sub_1000451F4(v73);
    sub_1000453A0(v75, v73);
    v26 = sub_1000094DC(&qword_10009B7D0, &qword_10007FC60);
    v16 = sub_100045588();
    sub_1000365F0(v73, v26, v72, v16, v36, v86);
    sub_1000451F4(v73);
    sub_100045610(v86, v88);
    sub_1000451F4(v75);
    sub_1000451F4(v77);
  }

  sub_1000457C0(v88, v86);
  sub_100045A14();
  sub_1000354E8(v86, v84, v54);
  sub_100045ABC(v86);
  return sub_100045ABC(v88);
}

uint64_t sub_100040E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v13 = a1;
  v14 = a2;
  v19 = a3;
  v15 = sub_100048930;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v21 = sub_1000094DC(&qword_10009B7F0, &qword_10007FC70);
  v11 = *(*(v21 - 8) + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v23 = &v9 - v10;
  v12 = v10;
  __chkstk_darwin(v4);
  v24 = &v9 - v12;
  v32 = &v9 - v12;
  v31 = v5;
  v30 = v6;
  v29 = v7;

  v16 = &v25;
  v26 = v14;
  v27 = v13;
  v28 = v19;
  v17 = sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);
  v18 = sub_100048940();
  sub_100043D34();
  sub_10007D558();

  v22 = sub_1000465C4();
  sub_1000354E8(v23, v21, v24);
  sub_100048B08(v23);
  sub_100048BBC(v24, v23);
  sub_1000354E8(v23, v21, v20);
  sub_100048B08(v23);
  return sub_100048B08(v24);
}

uint64_t sub_100041018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v103 = a1;
  v102 = a2;
  v100 = a3;
  v62 = sub_100049270;
  v63 = sub_1000493F4;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v123 = 0.0;
  v120 = 0.0;
  v98 = 0;
  v64 = sub_10007CFE8();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v68 = v26 - v67;
  v69 = sub_10007CF98();
  v71 = *(v69 - 8);
  v70 = v69 - 8;
  v72 = v71;
  v73 = *(v71 + 64);
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v75 = v26 - v74;
  v101 = type metadata accessor for MessageListView(v4);
  v76 = *(v101 - 8);
  v77 = v76;
  v78 = *(v76 + 64);
  v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v101);
  v80 = (v26 - v79);
  v81 = sub_1000094DC(&qword_10009B900, &qword_10007FE20);
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v85 = v26 - v84;
  v86 = sub_1000094DC(&qword_10009B8E8, &qword_10007FE18);
  v87 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v88 = v26 - v87;
  v89 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v90 = v26 - v89;
  v132 = v26 - v89;
  v91 = sub_10007DE68();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v95 = v26 - v94;
  v96 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - v94);
  v97 = v26 - v96;
  v107 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v99 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v8 = (v26 - v99);
  v108 = v26 - v99;
  v113 = sub_10007D6D8();
  v109 = *(v113 - 8);
  v110 = v113 - 8;
  v105 = *(v109 + 64);
  v104 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v103);
  v111 = v26 - v104;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v112 = v26 - v106;
  v131 = v10;
  v130 = v11;
  v129 = v12;
  sub_10003FB70((v10 + *(v13 + 20)), v8);
  sub_10007CF08();
  sub_10003FC44(v108);
  (*(v109 + 104))(v111, enum case for WidgetFamily.systemLarge(_:), v113);
  sub_100048CB8();
  v116 = sub_10007DEE8();
  v115 = *(v109 + 8);
  v114 = v109 + 8;
  v115(v111, v113);
  v115(v112, v113);
  if (v116)
  {
    v60 = 4;
  }

  else
  {
    v60 = 2;
  }

  v53 = v60;
  v128 = v60;
  v48 = &v127;
  v127 = v60;
  v55 = sub_100048D38();
  v54 = &type metadata for Int;
  v52 = sub_10004215C(v48, &type metadata for Int, v55) - 1.0;
  v14 = (v103 + *(v101 + 24));
  v49 = *v14;
  v50 = v14[1];

  v125 = v49;
  v126 = v50;
  sub_1000094DC(&qword_10009B728, &qword_100080340);
  sub_10007D4F8();
  v51 = v124;

  v56 = v52 * v51;
  v123 = v52 * v51;
  sub_10007CF88();
  v57 = v15 - v56;
  v122 = v53;
  v16 = sub_10004215C(&v122, v54, v55);
  v58 = v57 / v16;
  (*(v92 + 104))(v97, enum case for FloatingPointRoundingRule.down(_:), v91);
  v121 = v58;
  (*(v92 + 16))(v95, v97, v91);
  result = (*(v92 + 88))(v95, v91);
  v59 = result;
  if (result == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v121 = round(v58);
    goto LABEL_18;
  }

  if (v59 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v121 = rint(v58);
    goto LABEL_18;
  }

  if (v59 == enum case for FloatingPointRoundingRule.up(_:))
  {
    goto LABEL_16;
  }

  if (v59 == enum case for FloatingPointRoundingRule.down(_:))
  {
LABEL_17:
    v121 = floor(v58);
    goto LABEL_18;
  }

  if (v59 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v121 = trunc(v58);
    goto LABEL_18;
  }

  if (v59 != enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    sub_10007DA58();
    (*(v92 + 8))(v95, v91);
LABEL_18:
    v35 = v121;
    (*(v92 + 8))(v97, v91);
    v120 = v35;

    v119[4] = v100;
    v26[0] = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
    sub_1000142C8();
    sub_10007DB48();
    v27 = v119;
    v119[0] = v119[5];
    v119[1] = v119[6];
    v119[2] = v119[7];
    v119[3] = v119[8];
    v26[1] = sub_1000094DC(&qword_10009B930, &qword_10007FE48);
    sub_100048DB0();
    sub_10007D938();
    sub_100048E38(v27);
    v30 = v118;
    v118[0] = v119[9];
    v118[1] = v119[10];
    v118[2] = v119[11];
    v118[3] = v119[12];
    v28 = sub_1000094DC(&qword_10009B940, &qword_10007FE50);
    v29 = sub_1000094DC(&qword_10009B948, &qword_10007FE58);
    sub_100048E64();
    v18 = sub_10007DA38();
    v44 = &v117;
    v117 = v18;
    KeyPath = swift_getKeyPath();
    sub_100045BF8(v103, v80);
    v31 = v72;
    (*(v71 + 16))(v75, v102, v69);
    v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v37 = 7;
    v33 = (v32 + v78 + *(v31 + 80)) & ~*(v31 + 80);
    v34 = (v33 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v19 = sub_100046264(v80, v38 + v32);
    (*(v71 + 32))(v38 + v33, v75, v69, v19);
    v20 = v36;
    v21 = v53;
    v22 = v38;
    *(v38 + v34) = v35;
    *(v22 + v20) = v21;
    v23 = swift_allocObject();
    v24 = v38;
    v40 = v23;
    *(v23 + 16) = v62;
    *(v23 + 24) = v24;
    v41 = sub_1000094DC(&qword_10009B958, &qword_10007FE88);
    v42 = sub_1000094DC(&qword_10009B910, &qword_10007FE28);
    v43 = sub_100049400();
    sub_100048A80();
    sub_10007D598();
    sub_10003F93C();
    v45 = sub_1000489E8();
    v25 = sub_10003E670();
    sub_10003F954(v68, v81, v64, v45, v25, v88);
    (*(v65 + 8))(v68, v64);
    (*(v82 + 8))(v85, v81);
    v46 = sub_100048940();
    sub_1000354E8(v88, v86, v90);
    sub_100049488(v88);
    sub_100049518(v90, v88);
    sub_1000354E8(v88, v86, v61);
    sub_100049488(v88);
    return sub_100049488(v90);
  }

  v47 = *&v58 >> 63;
  if (v58 >= 0.0)
  {
LABEL_16:
    v121 = ceil(v58);
    goto LABEL_18;
  }

  if (v47 == 1)
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_10004215C(char *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v20 = a2;
  v19 = a3;
  v22 = a2;
  v17 = *(a2 - 8);
  v15 = a2 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(a3);
  v18 = v5 - v16;
  (*(v17 + 16))(v5 - v16, v3);
  if (sub_10007DCD8() > 64)
  {
    v5[1] = sub_10004A5C8();
    sub_10004A640();
    sub_10007D7B8();
    v6 = *(v17 + 8);
    v5[2] = v17 + 8;
    v6(v14, v20);
    v6(v18, v20);
    return v21;
  }

  else if (sub_10007DCE8())
  {
    v9 = sub_10007DCC8();
    v8 = *(v17 + 8);
    v7 = v17 + 8;
    v8(v14, v20);
    v8(v18, v20);
    return v9;
  }

  else
  {
    v12 = sub_10007DCC8();
    v11 = *(v17 + 8);
    v10 = v17 + 8;
    v11(v14, v20);
    v11(v18, v20);
    return v12;
  }
}

uint64_t sub_1000423E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v43 = a6;
  v77 = a1;
  v78 = a2;
  v91 = a3;
  v79 = a4;
  v80 = a7;
  v81 = a5;
  v44 = &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0.0;
  v114 = 0;
  v103 = 0;
  v82 = 0;
  v45 = sub_10007D588();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v49 = v28 - v48;
  v50 = sub_1000094DC(&qword_10009B968, &qword_10007FE90);
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = v28 - v53;
  v55 = sub_1000094DC(&qword_10009B970, &qword_10007FE98);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v59 = v28 - v58;
  v60 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v58);
  v61 = v28 - v60;
  v62 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v60);
  v63 = v28 - v62;
  v122 = v28 - v62;
  v64 = sub_1000094DC(&qword_10009B978, &qword_10007FEA0);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v66 = v28 - v65;
  v67 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v65);
  v68 = v28 - v67;
  v69 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v67);
  v70 = v28 - v69;
  v121 = v28 - v69;
  v93 = sub_1000094DC(&qword_10009B718, &qword_100080120);
  v71 = (*(*(v93 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v11 = (v28 - v71);
  v94 = v28 - v71;
  v99 = sub_10007D6D8();
  v95 = *(v99 - 8);
  v96 = v99 - 8;
  v72 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v97 = v28 - v72;
  v73 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v72);
  v98 = v28 - v73;
  v74 = sub_1000094DC(&qword_10009B808, &unk_10007FC80);
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v76 = v28 - v75;
  v83 = sub_1000094DC(&qword_10009B980, &qword_10007FEA8);
  v87 = *(*(v83 - 8) + 64);
  v84 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v85 = (v28 - v84);
  v86 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v88 = v28 - v86;
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v14);
  v90 = (v28 - v89);
  v120 = v28 - v89;
  v119 = v16;
  v118 = v17;
  v117 = v18;
  v116 = v19;
  v115 = v15;
  v114 = v20;
  v92 = type metadata accessor for MessageListView(v21);
  sub_10003FB70((v91 + *(v92 + 20)), v11);
  sub_10007CF08();
  sub_10003FC44(v94);
  (*(v95 + 104))(v97, enum case for WidgetFamily.systemLarge(_:), v99);
  sub_100048CB8();
  v102 = sub_10007DEE8();
  v101 = *(v95 + 8);
  v100 = v95 + 8;
  v101(v97, v99);
  v101(v98, v99);
  v42 = (v102 & 1) != 0;
  sub_1000431B0(v78, v42, v76);
  sub_10007CF88();
  v38 = v22;
  v39 = sub_100047CEC();
  sub_1000450A0();
  sub_10007D3E8();
  sub_100047D94(v76);
  v40 = sub_1000495C8();
  sub_1000354E8(v88, v83, v90);
  result = sub_100047D94(v88);
  v41 = v81 - 1;
  if (__OFSUB__(v81, 1))
  {
    __break(1u);
  }

  else
  {
    if (v77 < v41)
    {
      sub_10007D578();
      v32 = sub_10004975C();
      sub_10003F924();
      sub_10007D2D8();
      (*(v46 + 8))(v49, v45);
      KeyPath = swift_getKeyPath();
      v25 = (v91 + *(v92 + 24));
      v30 = *v25;
      v31 = v25[1];

      v109 = v30;
      v110 = v31;
      sub_1000094DC(&qword_10009B728, &qword_100080340);
      sub_10007D518();
      v34 = v106;
      v35 = v107;
      v33 = v108;

      v104 = v45;
      v105 = v32;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_100076930(KeyPath, v34, v35, v50, OpaqueTypeConformance2, v33);

      (*(v51 + 8))(v54, v50);
      v37 = sub_10004966C();
      sub_1000354E8(v61, v55, v63);
      sub_10004A418(v61);
      v103 = v61;
      sub_10004A4BC(v63, v59);
      sub_1000354E8(v59, v55, v61);
      sub_10004A418(v59);
      v27 = sub_10004A4BC(v61, v66);
      (*(v56 + 56))(v66, 0, 1, v55, v27);
      sub_100059804(v66, v55, v68);
      sub_100049864(v66);
      sub_10004994C(v68, v70);
      sub_10004A418(v61);
      sub_10004A418(v63);
    }

    else
    {
      (*(v56 + 56))(v66, 1, 1, v55);
      sub_10004966C();
      sub_100059804(v66, v55, v68);
      sub_100049864(v66);
      sub_10004994C(v68, v70);
    }

    sub_100049ABC(v90, v85);
    v29 = v113;
    v113[0] = v85;
    sub_10004A1B4(v70, v68);
    v113[1] = v68;
    v28[0] = v112;
    v112[0] = v83;
    v112[1] = v64;
    v28[1] = v111;
    v111[0] = v40;
    v111[1] = sub_10004A380();
    sub_10003A014(v29, 2uLL, v28[0], v43);
    sub_100049864(v68);
    sub_100047D94(v85);
    sub_100049864(v70);
    return sub_100047D94(v90);
  }

  return result;
}

uint64_t sub_1000431B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v74 = a1;
  v31 = a3;
  v65 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v32 = sub_1000094DC(&qword_10009B800, &qword_10007FC78);
  v33 = *(v32 - 8);
  v34 = v33;
  v36 = *(v33 + 64);
  __chkstk_darwin(v32 - 8);
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v23 - v38;
  __chkstk_darwin(v23 - v38);
  v37 = v23 - v38;
  __chkstk_darwin(v4);
  v39 = v23 - v38;
  v87 = v23 - v38;
  v40 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v77 = v23 - v40;
  v41 = v23 - v40;
  v76 = sub_10007CD98();
  v42 = v76;
  v43 = *(v76 - 8);
  v75 = v43;
  v44 = v43;
  v45 = *(v43 + 64);
  __chkstk_darwin(v76 - 8);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v23 - v47;
  __chkstk_darwin(v23 - v47);
  v48 = v23 - v47;
  v86 = v23 - v47;
  v49 = sub_1000094DC(&qword_10009B808, &unk_10007FC80);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = v23 - v52;
  __chkstk_darwin(v23 - v52);
  v53 = v23 - v52;
  v85 = v23 - v52;
  v54 = (*(*(sub_1000094DC(&qword_10009B470, &qword_10007F880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v70 = v23 - v54;
  type metadata accessor for Mailbox(v5);
  __chkstk_darwin(v65);
  v64 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Snapshot(v7);
  __chkstk_darwin(v65);
  v63 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for Message(v9) - 8;
  __chkstk_darwin(v65);
  v71 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MessageView(v11);
  v58 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v74);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = (v23 - v60);
  __chkstk_darwin(v12);
  v57 = (v23 - v60);
  v84 = v23 - v60;
  __chkstk_darwin(v13);
  v59 = (v23 - v60);
  v83 = v23 - v60;
  __chkstk_darwin(v14);
  v69 = v23 - v60;
  v61 = v23 - v60;
  v82 = v23 - v60;
  v81 = v15;
  v80 = v16;
  v79 = v3;
  sub_1000143D8(v15, v17);
  sub_10001E2CC(v62, v63);
  sub_10000DFBC(v63, v64);
  sub_10001F234(v63);
  v67 = v64[3];
  v66 = v64[4];
  sub_100014D28(v67, v66);
  sub_100014DA0(v64);
  v68 = sub_1000191C0(v67, v66, v65, 4uLL);
  sub_100014D64(v67, v66);
  sub_100059850();
  sub_100059884(v70, v71, v72, v68 & 1, v69);
  sub_10001AB30((v74 + *(v73 + 68)), v77);
  if ((*(v75 + 48))(v77, 1, v76) == 1)
  {
    sub_100017FFC(v41);
    v23[0] = sub_10004664C(v20);
    sub_1000354E8(v61, v55, v59);
    sub_1000466CC(v59, v56);
    sub_1000354E8(v56, v55, v57);
    sub_100046CE8(v56);
    sub_1000466CC(v57, v56);
    v21 = sub_100046FEC();
    sub_1000365F0(v56, v32, v55, v21, v23[0], v51);
    sub_100046CE8(v56);
    sub_100047074(v51, v53);
    sub_100046CE8(v57);
    sub_100046CE8(v59);
  }

  else
  {
    (*(v44 + 32))(v48, v41, v42);
    (*(v44 + 16))(v46, v48, v42);
    v27 = v23;
    v18 = __chkstk_darwin(v23);
    v25 = &v23[-4];
    v23[-2] = v19;
    v26 = sub_10004664C(v18);
    sub_10007D288();
    v28 = sub_100046FEC();
    sub_1000354E8(v37, v32, v39);
    v29 = *(v34 + 8);
    v30 = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v37, v32);
    v78 = v37;
    v24 = *(v34 + 16);
    v23[1] = v34 + 16;
    v24(v35, v39, v32);
    sub_1000354E8(v35, v32, v37);
    v29(v35, v32);
    v24(v35, v37, v32);
    sub_1000364F8(v35, v32, v55, v28, v26, v51);
    v29(v35, v32);
    sub_100047074(v51, v53);
    v29(v37, v32);
    v29(v39, v32);
    (*(v44 + 8))(v48, v42);
  }

  sub_100047630(v53, v51);
  sub_100047CEC();
  sub_1000354E8(v51, v49, v31);
  sub_100047D94(v51);
  sub_100047D94(v53);
  return sub_100046CE8(v61);
}

uint64_t sub_100043CC0(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v6 = *a1;
  v2 = sub_1000094DC(&qword_10009B940, &qword_10007FE50);
  return a2(v6, &a1[*(v2 + 48)]);
}

uint64_t sub_100043D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = a1;
  v57 = &opaque type descriptor for <<opaque return type of View.redacted(reason:)>>;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v90 = 0u;
  v91 = 0u;
  v58 = sub_10007D048();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v62 = v15 - v61;
  v63 = sub_1000094DC(&qword_10009B798, &qword_10007FC50);
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v67 = v15 - v66;
  v68 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v66);
  v69 = v15 - v68;
  v70 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v68);
  v71 = v15 - v70;
  v109 = v15 - v70;
  v72 = sub_1000094DC(&qword_10009B768, &qword_10007FC38);
  v73 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v74 = v15 - v73;
  v75 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v73);
  v76 = v15 - v75;
  v77 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - v75);
  v78 = v15 - v77;
  v108 = v15 - v77;
  v107 = a1;
  *&v79 = sub_100044CB0();
  *(&v79 + 1) = v7;
  v80 = v8;
  v81 = v9;
  if (v9)
  {
    v52 = v79;
    v53 = v80;
    v54 = v81;
    v45 = v81;
    v43 = v80;
    v42 = *(&v79 + 1);
    v44 = v79;
    v97 = v79;
    v38 = 1;
    LOBYTE(v98) = v80 & 1;
    *(&v98 + 1) = v81;
    v92 = v79;
    v93 = v80 & 1;
    v94 = v81;
    v41 = &v95;
    v35 = &type metadata for Text;
    v36 = &protocol witness table for Text;
    sub_1000354E8(&v92, &type metadata for Text, &v95);
    v28 = v95;
    v29 = v96;
    v30 = *(&v96 + 1);
    sub_10004AA70(v95, *(&v95 + 1), v96 & 1);

    v31 = &v87;
    v87 = v28;
    v88 = v29 & 1 & v38;
    v89 = v30;
    v40 = &v90;
    sub_1000354E8(&v87, v35, &v90);
    sub_10003CC74(v31);
    v32 = v90;
    v33 = v91;
    v34 = *(&v91 + 1);
    sub_10004AA70(v90, *(&v90 + 1), v91 & 1);

    v37 = &v84;
    v84 = v32;
    v85 = v33 & 1 & v38;
    v86 = v34;
    v82 = v35;
    v83 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1000364F8(v37, v35, v63, v36, OpaqueTypeConformance2, v74);
    sub_10003CC74(v37);
    v39 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
    (*(*(v39 - 8) + 56))(v74, 0, v38);
    sub_100044700();
    sub_100059804(v74, v39, v76);
    sub_100044878(v74);
    sub_10004A6B8(v76, v78);
    sub_10003CC74(v40);
    sub_10003CC74(v41);
    sub_10003CCBC(v44, v42, v43 & 1);
  }

  else
  {
    *&v49 = sub_100044EA8();
    *(&v49 + 1) = v10;
    v50 = v11;
    v51 = v12;
    if (v12)
    {
      v46 = v49;
      v47 = v50;
      v48 = v51;
      v18 = v51;
      v19 = v50;
      v20 = *(&v49 + 1);
      v21 = v49;
      v105 = v49;
      LOBYTE(v106) = v50 & 1;
      *(&v106 + 1) = v51;
      v102 = v49;
      v103 = v50 & 1;
      v104 = v51;
      sub_10007D038();
      v22 = &type metadata for Text;
      v23 = &protocol witness table for Text;
      sub_10007D418();
      (*(v59 + 8))(v62, v58);
      v100 = v22;
      v101 = v23;
      v24 = swift_getOpaqueTypeConformance2();
      sub_1000354E8(v69, v63, v71);
      v25 = v64[1];
      v26 = v64 + 1;
      v25(v69, v63);
      v99 = v69;
      v16 = v64[2];
      v15[1] = v64 + 2;
      v16(v67, v71, v63);
      sub_1000354E8(v67, v63, v69);
      v25(v67, v63);
      v16(v67, v69, v63);
      sub_1000365F0(v67, &type metadata for Text, v63, &protocol witness table for Text, v24, v74);
      v25(v67, v63);
      v17 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
      (*(*(v17 - 8) + 56))(v74, 0, 1);
      sub_100044700();
      sub_100059804(v74, v17, v76);
      sub_100044878(v74);
      sub_10004A6B8(v76, v78);
      v25(v69, v63);
      v25(v71, v63);
      sub_10003CCBC(v21, v20, v19 & 1);
    }

    else
    {
      v27 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
      (*(*(v27 - 8) + 56))(v74, 1);
      sub_100044700();
      sub_100059804(v74, v27, v76);
      sub_100044878(v74);
      sub_10004A6B8(v76, v78);
    }
  }

  sub_10004A870(v78, v76);
  sub_100044668();
  sub_1000354E8(v76, v72, v55);
  sub_100044878(v76);
  return sub_100044878(v78);
}

unint64_t sub_100044668()
{
  v2 = qword_10009B770;
  if (!qword_10009B770)
  {
    sub_100009860(&qword_10009B768, &qword_10007FC38);
    sub_100044700();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100044700()
{
  v2 = qword_10009B778;
  if (!qword_10009B778)
  {
    sub_100009860(&qword_10009B780, &qword_10007FC40);
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000447E0()
{
  v2 = qword_10009B788;
  if (!qword_10009B788)
  {
    sub_100009860(&qword_10009B730, &qword_10007FC00);
    sub_100044668();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B788);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100044878(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B780, &qword_10007FC40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1000094DC(&qword_10009B790, &qword_10007FC48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1000094DC(&qword_10009B798, &qword_10007FC50);
      (*(*(v2 - 8) + 8))(a1);
    }

    else
    {
      sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
    }
  }

  return a1;
}

unint64_t sub_10004498C()
{
  v2 = qword_10009B7A0;
  if (!qword_10009B7A0)
  {
    sub_100009860(&qword_10009B740, &qword_10007FC10);
    sub_100009860(&qword_10009B730, &qword_10007FC00);
    sub_1000447E0();
    swift_getOpaqueTypeConformance2();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100044A84(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  (*(*(v1 - 8) + 8))(a1);
  sub_1000094DC(&qword_10009B740, &qword_10007FC10);

  return a1;
}

unint64_t sub_100044B28()
{
  v2 = qword_10009B7A8;
  if (!qword_10009B7A8)
  {
    sub_100009860(&qword_10009B748, &qword_10007FC18);
    sub_10004498C();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100044BD0(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  (*(*(v1 - 8) + 8))(a1);
  sub_1000094DC(&qword_10009B740, &qword_10007FC10);

  sub_1000094DC(&qword_10009B748, &qword_10007FC18);

  return a1;
}

uint64_t sub_100044CB0()
{
  v11 = "Placeholder when the selected mailbox is empty";
  v27 = 0;
  v14 = type metadata accessor for Snapshot(0);
  v13 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v15 = (&v6 - v13);
  v27 = v0;
  sub_10001E2CC(v0, (&v6 - v13));
  v1 = v15 + *(v14 + 20);
  v18 = *v1;
  v16 = *(v1 + 1);
  v17 = *(v1 + 8);
  sub_10002F4F8(v18);
  sub_10001F234(v15);
  v19 = sub_100074B30(v18, v16, v17);
  sub_10003CF94(v18);
  if (v19)
  {
    sub_10007D898("NO_MESSAGES", 0xBuLL, 1);
    sub_10007D108();
    v24 = v11;
    v25 = 46;
    v26 = 2;
    v20 = sub_10007D2B8();
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v7 = v20;
    v8 = v2;
    v9 = v3 & 1;
    v10 = v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v7;
}

uint64_t sub_100044EA8()
{
  v11 = "Placeholder when widget failed to load messages";
  v27 = 0;
  v14 = type metadata accessor for Snapshot(0);
  v13 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v15 = (&v6 - v13);
  v27 = v0;
  sub_10001E2CC(v0, (&v6 - v13));
  v1 = v15 + *(v14 + 20);
  v18 = *v1;
  v16 = *(v1 + 1);
  v17 = *(v1 + 8);
  sub_10002F4F8(v18);
  sub_10001F234(v15);
  v19 = sub_100074B78(v18, v16, v17);
  sub_10003CF94(v18);
  if (v19)
  {
    sub_10007D898("MESSAGE_ERROR", 0xDuLL, 1);
    sub_10007D108();
    v24 = v11;
    v25 = 47;
    v26 = 2;
    v20 = sub_10007D2B8();
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v7 = v20;
    v8 = v2;
    v9 = v3 & 1;
    v10 = v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v7;
}

unint64_t sub_1000450C4()
{
  v2 = qword_10009B7B0;
  if (!qword_10009B7B0)
  {
    sub_100009860(&qword_10009B750, &qword_10007FC20);
    sub_100044B28();
    sub_10004516C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004516C()
{
  v2 = qword_10009B7B8;
  if (!qword_10009B7B8)
  {
    sub_100009860(&qword_10009B7C0, &qword_10007FC58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000451F4(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  (*(*(v1 - 8) + 8))(a1);
  sub_1000094DC(&qword_10009B740, &qword_10007FC10);

  sub_1000094DC(&qword_10009B748, &qword_10007FC18);

  sub_1000094DC(&qword_10009B750, &qword_10007FC20);

  return a1;
}

unint64_t sub_1000452FC()
{
  v2 = qword_10009B7C8;
  if (!qword_10009B7C8)
  {
    sub_100009860(&qword_10009B758, &qword_10007FC28);
    sub_1000450C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000453A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_1000094DC(&qword_10009B740, &qword_10007FC10) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v8 = *(a1 + v6 + 8);

  *(a2 + v6 + 8) = v8;
  v9 = *(sub_1000094DC(&qword_10009B748, &qword_10007FC18) + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(a1 + v9 + 8);

  *(a2 + v9 + 8) = v11;
  v12 = *(sub_1000094DC(&qword_10009B750, &qword_10007FC20) + 36);
  v13 = *(a1 + v12);

  v3 = a2 + v12;
  *v3 = v13;
  *(v3 + 8) = *(a1 + v12 + 8);
  v4 = sub_1000094DC(&qword_10009B758, &qword_10007FC28);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_100045588()
{
  v2 = qword_10009B7D8;
  if (!qword_10009B7D8)
  {
    sub_100009860(&qword_10009B7D0, &qword_10007FC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7D8);
    return WitnessTable;
  }

  return v2;
}

char *sub_100045610(char *a1, char *a2)
{
  v12 = sub_1000094DC(&qword_10009B7E0, &qword_10007FC68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_1000094DC(&qword_10009B740, &qword_10007FC10);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = sub_1000094DC(&qword_10009B748, &qword_10007FC18);
    *&a2[*(v4 + 36)] = *&a1[*(v4 + 36)];
    v5 = sub_1000094DC(&qword_10009B750, &qword_10007FC20);
    v6 = &a2[*(v5 + 36)];
    v7 = &a1[*(v5 + 36)];
    *v6 = *v7;
    v6[8] = v7[8];
    v8 = sub_1000094DC(&qword_10009B758, &qword_10007FC28);
    memcpy(&a2[*(v8 + 36)], &a1[*(v8 + 36)], 0x70uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v12 - 8) + 64));
  }

  return a2;
}

void *sub_1000457C0(uint64_t *a1, void *a2)
{
  sub_1000094DC(&qword_10009B7E0, &qword_10007FC68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_1000094DC(&qword_10009B740, &qword_10007FC10);
    v10 = (a2 + *(v3 + 36));
    v9 = (a1 + *(v3 + 36));
    v8 = *v9;

    *v10 = v8;
    v11 = v9[1];

    v10[1] = v11;
    v4 = sub_1000094DC(&qword_10009B748, &qword_10007FC18);
    v14 = (a2 + *(v4 + 36));
    v13 = (a1 + *(v4 + 36));
    v12 = *v13;

    *v14 = v12;
    v15 = v13[1];

    v14[1] = v15;
    v5 = sub_1000094DC(&qword_10009B750, &qword_10007FC20);
    v18 = a2 + *(v5 + 36);
    v17 = a1 + *(v5 + 36);
    v16 = *v17;

    *v18 = v16;
    v18[8] = v17[8];
    v6 = sub_1000094DC(&qword_10009B758, &qword_10007FC28);
    memcpy(a2 + *(v6 + 36), a1 + *(v6 + 36), 0x70uLL);
  }

  else
  {
    v19 = *a1;
    v20 = a1[1];

    *a2 = v19;
    a2[1] = v20;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_100045A14()
{
  v2 = qword_10009B7E8;
  if (!qword_10009B7E8)
  {
    sub_100009860(&qword_10009B760, &qword_10007FC30);
    sub_100045588();
    sub_1000452FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100045ABC(uint64_t a1)
{
  sub_1000094DC(&qword_10009B7E0, &qword_10007FC68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1000094DC(&qword_10009B738, &qword_10007FC08);
    (*(*(v1 - 8) + 8))(a1);
    sub_1000094DC(&qword_10009B740, &qword_10007FC10);

    sub_1000094DC(&qword_10009B748, &qword_10007FC18);

    sub_1000094DC(&qword_10009B750, &qword_10007FC20);
  }

  return a1;
}

void *sub_100045BF8(void *a1, void *a2)
{
  *a2 = *a1;
  v22 = a1[1];

  a2[1] = v22;
  v25 = a1[2];

  a2[2] = v25;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v21 = a1[4];

    a2[4] = v21;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox(0);
  v17 = a2 + *(v2 + 28);
  v18 = a1 + *(v2 + 28);
  v19 = sub_10007CD98();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v17, v18, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(v17, v18, v19);
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  v4 = type metadata accessor for Snapshot(0);
  v15 = a2 + *(v4 + 20);
  v16 = a1 + *(v4 + 20);
  if (*v16 < 2uLL)
  {
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
  }

  else
  {
    v14 = *v16;

    *v15 = v14;
    *(v15 + 1) = *(v16 + 1);
    v15[16] = v16[16];
    v15[17] = v16[17];
  }

  v11 = type metadata accessor for MessageListView(0);
  v12 = (a2 + *(v11 + 20));
  v13 = (a1 + *(v11 + 20));
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10007D6D8();
    (*(*(v5 - 8) + 16))(v12, v13);
  }

  else
  {
    v10 = *v13;

    *v12 = v10;
  }

  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(v11 + 24));
  v6 = (a1 + *(v11 + 24));
  *v8 = *v6;
  v9 = v6[1];

  result = a2;
  v8[1] = v9;
  return result;
}

uint64_t sub_100045F9C()
{
  v9 = type metadata accessor for MessageListView(0);
  v1 = *(*(v9 - 8) + 80);
  v10 = (v1 + 16) & ~v1;

  if (*(v0 + v10 + 32) > 5uLL)
  {
  }

  v5 = v8 + v10 + *(type metadata accessor for Mailbox(0) + 28);
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  if (*(v8 + v10 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v4 = v8 + v10 + *(v9 + 20);
  sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6D8();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_100046264(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v13 = *(type metadata accessor for Mailbox(0) + 28);
  v15 = sub_10007CD98();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1 + v13, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v13), (a1 + v13), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))();
    (*(v16 + 56))(a2 + v13, 0, 1, v15);
  }

  v3 = type metadata accessor for Snapshot(0);
  v4 = a2 + *(v3 + 20);
  v5 = a1 + *(v3 + 20);
  *v4 = *v5;
  *(v4 + 16) = *(v5 + 16);
  v8 = type metadata accessor for MessageListView(0);
  __dst = (a2 + *(v8 + 20));
  __src = (a1 + *(v8 + 20));
  v11 = sub_1000094DC(&qword_10009B720, &unk_10007FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007D6D8();
    (*(*(v6 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v11 - 8) + 64));
  }

  result = *(a1 + *(v8 + 24));
  *(a2 + *(v8 + 24)) = result;
  return result;
}

uint64_t sub_100046514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(type metadata accessor for MessageListView(0) - 8);
  v3 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v4 = *(v2 + ((v3 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100040E38(a1, v2 + v3, v4, a2);
}

unint64_t sub_1000465C4()
{
  v2 = qword_10009B7F8;
  if (!qword_10009B7F8)
  {
    sub_100009860(&qword_10009B7F0, &qword_10007FC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10004664C(double a1)
{
  v3 = qword_10009B810;
  if (!qword_10009B810)
  {
    type metadata accessor for MessageView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B810);
    return WitnessTable;
  }

  return v3;
}

void *sub_1000466CC(void *a1, void *a2)
{
  sub_1000094DC(&qword_10009B478, &qword_10007FC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10007D6A8();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v38 = *a1;

    *a2 = v38;
  }

  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for MessageView(0);
  v31 = (a2 + v24[5]);
  v33 = (a1 + v24[5]);
  *v31 = *v33;
  v25 = v33[1];

  v31[1] = v25;
  v31[2] = v33[2];
  v26 = v33[3];

  v31[3] = v26;
  v31[4] = v33[4];
  v27 = v33[5];

  v31[5] = v27;
  v31[6] = v33[6];
  v28 = v33[7];

  v31[7] = v28;
  v32 = type metadata accessor for Message(0);
  v30 = v31 + v32[8];
  v29 = v33 + v32[8];
  v3 = sub_10007CE28();
  (*(*(v3 - 8) + 16))(v30, v29);
  *(v31 + v32[9]) = *(v33 + v32[9]);
  *(v31 + v32[10]) = *(v33 + v32[10]);
  *(v31 + v32[11]) = *(v33 + v32[11]);
  *(v31 + v32[12]) = *(v33 + v32[12]);
  v4 = v31 + v32[13];
  v5 = v33 + v32[13];
  *v4 = *v5;
  v4[8] = v5[8];
  *(v31 + v32[14]) = *(v33 + v32[14]);
  v34 = v31 + v32[15];
  v35 = v33 + v32[15];
  v36 = sub_10007CD98();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1))
  {
    v6 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v34, v35, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v37 + 16))(v34, v35, v36);
    (*(v37 + 56))(v34, 0, 1, v36);
  }

  *(a2 + v24[6]) = *(a1 + v24[6]);
  *(a2 + v24[7]) = *(a1 + v24[7]);
  v15 = a2 + v24[8];
  v14 = a1 + v24[8];
  v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  (*(*(v7 - 8) + 16))(v15, v14);
  v16 = (a2 + v24[9]);
  v8 = (a1 + v24[9]);
  *v16 = *v8;
  v17 = v8[1];

  v16[1] = v17;
  v9 = v24[10];
  v18 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v19 = *(a1 + v9 + 8);

  *(v18 + 1) = v19;
  v10 = v24[11];
  v20 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v21 = *(a1 + v10 + 8);

  *(v20 + 1) = v21;
  v22 = (a2 + v24[12]);
  v23 = (a1 + v24[12]);
  sub_1000094DC(&qword_10009B820, &qword_10007FCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007D118();
    (*(*(v11 - 8) + 16))(v22, v23);
  }

  else
  {
    v13 = *v23;

    *v22 = v13;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}