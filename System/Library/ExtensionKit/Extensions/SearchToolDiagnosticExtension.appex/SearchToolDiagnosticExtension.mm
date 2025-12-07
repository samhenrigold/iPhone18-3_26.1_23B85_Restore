void sub_1000018E8(uint64_t a1)
{
  v2 = type metadata accessor for SpotlightEventsAttachment(0);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TranscriptAttachment(0);
  __chkstk_darwin(v3 - 8);
  v23 = &_swiftEmptyArrayStorage;
  v4 = sub_100007E44();
  v5 = sub_100007F94();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SearchToolDiagnostics: begin.", v6, 2u);
    sub_1000025BC(v6);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  sub_100008004();
  sub_100001E88(a1, &v21, v20);
  sub_1000022F4(v20);
  if (v22)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      sub_10000259C(v7, 0x80000001000089A0);
      sub_1000059B0();
      sub_100002538();
      sub_100007F24();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100007F54();
      }

      v13 = sub_100007F64();
      sub_10000259C(v13, 0x80000001000089A0);
      sub_1000025F4();
      sub_100002560();
      sub_100007F24();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100007F54();
      }

      sub_100007F64();
      v14 = v23;
      v15 = sub_100007E44();
      v16 = sub_100007F94();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        sub_1000025D4(&_mh_execute_header, v18, v19, "SearchToolDiagnostics: done.");
        sub_1000025BC(v17);
      }

      sub_100001EEC(v14);

      return;
    }
  }

  else
  {
    sub_1000023E4(&v21, &qword_100010270, &qword_100008648);
  }

  v8 = sub_100007E44();
  v9 = sub_100007F94();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    sub_1000025D4(&_mh_execute_header, v11, v12, "SearchToolDiagnostics: user did not give consent.");
    sub_1000025BC(v10);
  }

  sub_100001EEC(&_swiftEmptyArrayStorage);
}

double sub_100001E88@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000045A0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_10000248C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

char *sub_100001EEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100008094();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v10 = &_swiftEmptyArrayStorage;
  result = sub_10000465C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100008034();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_100002438();
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_10000465C((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_10000247C(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1000020EC(uint64_t a1)
{
  sub_10000259C(a1, 0x80000001000089A0);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchToolDiagnostic(0);
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100002178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchToolDiagnostic(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchToolDiagnostic(uint64_t a1)
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002264(uint64_t a1, uint64_t a2)
{
  result = sub_100007E64();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002348(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002390(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_100002588();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000023E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002348(a2, a3);
  sub_100002588();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100002438()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

_OWORD *sub_10000247C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000248C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for BPSCompletionState()
{
  if (!qword_100010288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010288);
    }
  }
}

uint64_t sub_100002538()
{

  return sub_100002390(v0, type metadata accessor for TranscriptAttachment);
}

uint64_t sub_100002560()
{

  return sub_100002390(v0, type metadata accessor for SpotlightEventsAttachment);
}

uint64_t sub_10000259C(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)(0xD000000000000014, a2, 0xD000000000000014);
}

uint64_t sub_1000025BC(uint64_t a1)
{
}

void sub_1000025D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_1000025F4()
{
  v0 = sub_100002348(&qword_100010290, &qword_1000086A0);
  __chkstk_darwin(v0 - 8);
  v99 = &v85 - v1;
  v2 = type metadata accessor for SpotlightEventsAttachment(0);
  v3 = sub_100005980(v2);
  v100 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100007ED4();
  sub_10000596C();
  v102 = v8;
  __chkstk_darwin(v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007D74();
  sub_10000596C();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = (&v85 - v20);
  __chkstk_darwin(v19);
  v23 = &v85 - v22;
  v24 = v103;
  sub_10000307C(&v85 - v22);
  if (v24)
  {
    return v11;
  }

  v95 = v18;
  v96 = v21;
  v93 = v6;
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = 0;
  v97 = v23;
  v98 = v12;
  sub_100007EC4();
  v25 = sub_100007EB4();
  v27 = v26;
  v102[1](v11, v7);
  if (v27 >> 60 == 15)
  {
    sub_1000033FC();
    v11 = swift_allocError();
    *v28 = 4;
    swift_willThrow();
    v14[1](v97, v98);
    return v11;
  }

  v11 = v97;
  v29 = v103;
  sub_100007DB4();
  v30 = v98;
  v31 = v14;
  v103 = v29;
  if (v29)
  {
    v14[1](v11, v98);
    sub_100003450(v25, v27);
    return v11;
  }

  sub_10000554C(0, &qword_1000102A0, NSOutputStream_ptr);
  v33 = v96;
  v91 = v14[2];
  v92 = (v14 + 2);
  (v91)(v96, v11, v30);
  v34 = v11;
  v11 = 1;
  v35 = sub_1000034BC(v33, 1);
  if (!v35)
  {
    sub_1000033FC();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();
    sub_100003450(v25, v27);
    v31[1](v34, v30);
    return v11;
  }

  v96 = v31;
  v87 = v25;
  v88 = v27;
  v102 = v35;
  [v35 open];
  v36 = v101;
  v37 = sub_100007E44();
  v38 = sub_100007F94();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "SpotlightEventsAttachment: collecting pre-extracted events.", v39, 2u);
    sub_1000025BC(v39);
  }

  v90 = dispatch_group_create();
  dispatch_group_enter(v90);
  v40 = [objc_allocWithZone(CSSearchQueryContext) init];
  sub_100007E34();
  sub_100007E24();
  isa = sub_100007F34().super.isa;

  [v40 setFetchAttributes:isa];

  sub_10000505C(&off_10000C710, v40);
  v42 = objc_allocWithZone(CSSearchQuery);
  v86 = v40;
  v89 = sub_100003F20(0, 0xE000000000000000, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = 1;
  v44 = v94;
  sub_1000050D8(v36, v94);
  v45 = *(v100 + 80);
  v46 = v93;
  v47 = swift_allocObject();
  v48 = v102;
  *(v47 + 16) = v43;
  *(v47 + 24) = v48;
  sub_100005204(v44, v47 + ((v45 + 32) & ~v45));
  v108 = sub_100005268;
  v109 = v47;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_100003B88;
  v107 = &unk_10000C7B0;
  v49 = _Block_copy(&aBlock);
  v100 = v43;

  v102 = v48;

  v50 = v89;
  [v89 setFoundItemsHandler:v49];
  _Block_release(v49);
  sub_1000050D8(v36, v44);
  v51 = (v45 + 16) & ~v45;
  v52 = swift_allocObject();
  sub_100005204(v44, v52 + v51);
  v53 = v90;
  *(v52 + ((v46 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v90;
  v108 = sub_1000053C0;
  v109 = v52;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_100003DC4;
  v107 = &unk_10000C800;
  v54 = _Block_copy(&aBlock);
  v55 = v53;

  [v50 setCompletionHandler:v54];
  _Block_release(v54);
  [v50 start];
  v56 = v50;
  v11 = sub_100007E44();
  v57 = sub_100007F74();
  if (os_log_type_enabled(v11, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = [v56 foundItemCount];

    _os_log_impl(&_mh_execute_header, v11, v57, "Diagnostic Extension search for pre-extracted events found %ld items.", v58, 0xCu);
    sub_1000025BC(v58);
  }

  else
  {

    v11 = v56;
  }

  v60 = v98;
  v61 = v95;
  v62 = v96;

  sub_100007FA4();
  v63 = v102;
  v64 = v103;
  sub_1000061E0(23818, 0xE200000000000000);
  if (v64)
  {

    [v63 close];
    sub_100005990();

    v62[1](v97, v60);
    return v11;
  }

  v103 = v55;
  v65 = v97;
  (v91)(v61, v97, v60);
  v66 = v60;
  v67 = sub_100007E44();
  v68 = sub_100007F94();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock = v101;
    *v69 = 136315138;
    sub_10000547C();
    v70 = sub_1000080C4();
    v71 = v61;
    v73 = v72;
    v74 = v66;
    v75 = v62[1];
    v75(v71, v74);
    v76 = sub_100004030(v70, v73, &aBlock);

    *(v69 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v67, v68, "TranscriptAttachment: finished writing to: %s", v69, 0xCu);
    v77 = v101;
    sub_1000054D4(v101);
    sub_1000025BC(v77);
    v78 = v69;
    v65 = v97;
    sub_1000025BC(v78);

    v79 = v75;
    v80 = v98;
  }

  else
  {

    v79 = v62[1];
    v79(v61, v66);
    v80 = v66;
  }

  v81 = v99;
  (v91)(v99, v65, v80);
  sub_100005454(v81, 0, 1, v80);
  v82 = objc_allocWithZone(DEAttachmentItem);
  result = sub_100003F84(v81);
  if (result)
  {
    v83 = v65;
    v11 = result;

    v84 = v102;
    [v102 close];
    sub_100005990();

    v79(v83, v80);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SpotlightEventsAttachment(uint64_t a1)
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000307C@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  sub_100007E14();
  sub_10000596C();
  v33 = v2;
  v34 = v1;
  __chkstk_darwin(v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007D74();
  sub_10000596C();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v32 - v13;
  __chkstk_darwin(v12);
  v16 = v32 - v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v19 = [v18 temporaryDirectory];

  sub_100007D64();
  sub_100007D54();
  v20 = *(v7 + 8);
  v35 = v5;
  v21 = v5;
  v22 = v11;
  v23 = v20;
  v20(v14, v21);
  sub_100007E04();
  sub_100007DF4();
  (*(v33 + 8))(v4, v34);
  sub_100007D54();

  v24 = [v17 defaultManager];
  sub_100007D34(v25);
  v27 = v26;
  v36 = 0;
  LOBYTE(v18) = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v36];

  if (v18)
  {
    v28 = v36;
    sub_100007D44();
  }

  else
  {
    v31 = v36;
    sub_100007D24();

    swift_willThrow();
  }

  v29 = v35;
  v23(v22, v35);
  return (v23)(v16, v29);
}

unint64_t sub_1000033FC()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

uint64_t sub_100003450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003464(a1, a2);
  }

  return a1;
}

uint64_t sub_100003464(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_1000034BC(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100007D34(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 append:a2 & 1];

  sub_100007D74();
  sub_100002588();
  (*(v9 + 8))(a1);
  return v8;
}

void sub_100003554(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008094())
  {
    v45 = v2 & 0xC000000000000001;
    v43 = i;
    swift_beginAccess();
    swift_beginAccess();
    v4 = 0;
    v41 = v2 + 32;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    v44 = v2;
    while (1)
    {
      if (v45)
      {
        v5 = sub_100008034();
      }

      else
      {
        if (v4 >= *(v42 + 16))
        {
          goto LABEL_44;
        }

        v5 = *(v41 + 8 * v4);
      }

      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
        break;
      }

      v47 = v7;
      v48 = v5;
      if ((*(a2 + 16) & 1) == 0)
      {
        sub_1000061E0(2604, 0xE200000000000000);
        v5 = v48;
      }

      *(a2 + 16) = 0;
      v8 = [v5 attributeSet];
      v9 = [v8 attributeDictionary];

      v10 = sub_100007E84();
      v11 = *(v10 + 16);
      if (v11)
      {
        v61 = &_swiftEmptyArrayStorage;
        v2 = &v61;
        sub_10000467C(0, v11, 0);
        v12 = v61;
        v15 = sub_10000558C(v10);
        v16 = 0;
        v17 = v10 + 64;
        v49 = v13;
        v50 = v11;
        while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v10 + 32))
        {
          v18 = v15 >> 6;
          if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
          {
            goto LABEL_38;
          }

          if (*(v10 + 36) != v13)
          {
            goto LABEL_39;
          }

          v52 = v16;
          v53 = v13;
          v51 = v14;
          sub_1000055CC(*(v10 + 48) + 40 * v15, v58);
          sub_10000248C(*(v10 + 56) + 32 * v15, v60);
          v55[0] = v58[0];
          v55[1] = v58[1];
          v56 = v59;
          sub_10000247C(v60, v57);
          v19 = sub_100007FD4();
          v21 = v20;
          sub_10000248C(v57, v54);
          v22 = sub_100007EE4();
          v24 = v23;
          sub_1000023E4(v55, &qword_1000102C0, &qword_1000086B8);
          v61 = v12;
          v26 = v12[2];
          v25 = v12[3];
          v27 = v12;
          if (v26 >= v25 >> 1)
          {
            sub_10000467C((v25 > 1), v26 + 1, 1);
            v27 = v61;
          }

          v27[2] = v26 + 1;
          v28 = &v27[4 * v26];
          v28[4] = v19;
          v28[5] = v21;
          v28[6] = v22;
          v28[7] = v24;
          v2 = 1 << *(v10 + 32);
          if (v15 >= v2)
          {
            goto LABEL_40;
          }

          v17 = v10 + 64;
          v29 = *(v10 + 64 + 8 * v18);
          if ((v29 & (1 << v15)) == 0)
          {
            goto LABEL_41;
          }

          v12 = v27;
          if (*(v10 + 36) != v53)
          {
            goto LABEL_42;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v2 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v18 << 6;
            v32 = v18 + 1;
            v33 = (v10 + 72 + 8 * v18);
            while (v32 < (v2 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                sub_100005628(v15, v53, v51 & 1);
                v2 = __clz(__rbit64(v34)) + v31;
                goto LABEL_29;
              }
            }

            sub_100005628(v15, v53, v51 & 1);
          }

LABEL_29:
          v14 = 0;
          v16 = v52 + 1;
          v15 = v2;
          v13 = v49;
          if (v52 + 1 == v50)
          {

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v12 = &_swiftEmptyArrayStorage;
LABEL_32:
      if (v12[2])
      {
        sub_100002348(&qword_1000102C8, &qword_1000086C0);
        v36 = sub_1000080B4();
      }

      else
      {
        v36 = &_swiftEmptyDictionarySingleton;
      }

      *&v58[0] = v36;

      sub_100004A50(v37, 1, v58);

      v38 = sub_100007E94();
      v40 = v39;

      sub_1000061E0(v38, v40);

      v2 = v44;
      v4 = v47;
      if (v47 == v43)
      {
        return;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }
}

uint64_t sub_100003B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10000554C(0, &qword_1000102B8, CSSearchableItem_ptr);
  v3 = sub_100007F44();

  v2(v3);
}

void sub_100003C0C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    swift_errorRetain();
    v4 = sub_100007E44();
    v5 = sub_100007F84();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1000080F4();
      v10 = sub_100004030(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostic Extension search for pre-extracted events failed with error: %s", v6, 0xCu);
      sub_1000054D4(v7);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_100007E44();
    v12 = sub_100007F74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Diagnostic Extension search for pre-extracted events completed successfully.", v13, 2u);
    }
  }

  dispatch_group_leave(a3);
}

void sub_100003DC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Int sub_100003E68(unsigned __int8 a1)
{
  sub_100008144();
  sub_100008154(a1);
  return sub_100008164();
}

Swift::Int sub_100003ECC(uint64_t a1)
{
  v2 = *v1;
  sub_100008144();
  sub_100008154(v2);
  return sub_100008164();
}

id sub_100003F20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100007EA4();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_100003F84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007D74();
  v6 = 0;
  if (sub_100005524(a1, 1, v4) != 1)
  {
    sub_100007D34(v5);
    v6 = v7;
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v8 = [v2 initWithPathURL:v6];

  return v8;
}

unint64_t sub_100004030(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000040F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000248C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000054D4(v11);
  return v7;
}

unint64_t sub_1000040F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000041F4(a5, a6);
    *a1 = v9;
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
    result = sub_100008044();
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

char *sub_1000041F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004240(a1, a2);
  sub_100004358(&off_10000C6E8);
  return v3;
}

char *sub_100004240(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100007F14())
  {
    result = sub_10000443C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100008014();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_100008044();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100004358(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000044AC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000443C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002348(&qword_1000102B0, &unk_1000086A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000044AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002348(&qword_1000102B0, &unk_1000086A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000045A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007FE4(*(v2 + 40));

  return sub_1000048D8(a1, v4);
}

unint64_t sub_1000045E4(uint64_t a1, uint64_t a2)
{
  sub_100008144();
  sub_100007EF4();
  v4 = sub_100008164();

  return sub_10000499C(a1, a2, v4);
}

char *sub_10000465C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000469C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000467C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000047A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000469C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002348(&qword_1000102F0, &qword_1000086E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000047A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002348(&qword_1000102E0, &qword_1000086D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002348(&qword_1000102E8, &qword_1000086E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000048D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1000055CC(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100007FF4();
    sub_1000022F4(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10000499C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000080D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004A50(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1000080E4();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1000045E4(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100002348(&qword_1000102D0, &qword_1000086C8);
      sub_100008074();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v28 + 1;
    a2 = 1;
  }

  sub_100004D44(v15, a2 & 1);
  v17 = sub_1000045E4(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100002348(&qword_1000102D8, &qword_1000086D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  sub_100008024(30);
  v30._object = 0x8000000100008A80;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100007F04(v30);
  sub_100008054();
  v31._countAndFlagsBits = 39;
  v31._object = 0xE100000000000000;
  sub_100007F04(v31);
  result = sub_100008084();
  __break(1u);
  return result;
}

uint64_t sub_100004D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002348(&qword_1000102C8, &qword_1000086C0);
  v36 = v4;
  result = sub_1000080A4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_100004FF8(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_100008144();
    sub_100007EF4();
    result = sub_100008164();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100004FF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100008690;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_10000505C(uint64_t a1, void *a2)
{
  isa = sub_100007F34().super.isa;

  [a2 setBundleIDs:isa];
}

uint64_t sub_1000050D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightEventsAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000513C()
{
  v1 = type metadata accessor for SpotlightEventsAttachment(0);
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  sub_100007E64();
  sub_100002588();
  (*(v7 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100005204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightEventsAttachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100005268(unint64_t a1)
{
  type metadata accessor for SpotlightEventsAttachment(0);
  v3 = *(v1 + 16);

  sub_100003554(a1, v3);
}

uint64_t sub_1000052DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000052F4()
{
  v1 = type metadata accessor for SpotlightEventsAttachment(0);
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007E64();
  sub_100002588();
  (*(v7 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_1000053C0(uint64_t a1)
{
  v3 = type metadata accessor for SpotlightEventsAttachment(0);
  sub_100005980(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100003C0C(a1, v1 + v8, v9);
}

unint64_t sub_10000547C()
{
  result = qword_1000102A8;
  if (!qword_1000102A8)
  {
    sub_100007D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A8);
  }

  return result;
}

uint64_t sub_1000054D4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000554C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100005628(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for SpotlightEventsAttachment.SpotlightEventsAttachmentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpotlightEventsAttachment.SpotlightEventsAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100005798);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000057F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005524(a1, a2, v4);
}

uint64_t sub_100005854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005454(a1, a2, a2, v4);
}

uint64_t sub_1000058A0(uint64_t a1, uint64_t a2)
{
  result = sub_100007E64();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100005910()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

uint64_t sub_100005990()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);

  return sub_100003450(v2, v3);
}

char *sub_1000059B0()
{
  v2 = sub_100002348(&qword_100010290, &qword_1000086A0);
  __chkstk_darwin(v2 - 8);
  v74 = &v66 - v3;
  v4 = type metadata accessor for TranscriptAttachment(0);
  v5 = sub_100005980(v4);
  v75 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100007ED4();
  sub_10000596C();
  v77 = v10;
  v78 = v9;
  __chkstk_darwin(v9);
  sub_100007CBC();
  v13 = (v12 - v11);
  v14 = sub_100007D74();
  sub_10000596C();
  v79 = v15;
  __chkstk_darwin(v16);
  sub_100007CCC();
  v18 = __chkstk_darwin(v17);
  v20 = &v66 - v19;
  __chkstk_darwin(v18);
  v22 = &v66 - v21;
  v23 = sub_100006374();
  sub_100006514(v22);
  if (v0)
  {

    return v13;
  }

  v70 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v20;
  v68 = v1;
  v69 = v8;
  v72 = v14;
  v73 = v22;
  v24 = v79;
  sub_100007EC4();
  v25 = sub_100007EB4();
  v27 = v26;
  (*(v77 + 8))(v13, v78);
  if (v27 >> 60 == 15)
  {
    sub_100006320();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();

    (*(v24 + 8))(v73, v72);
    return v13;
  }

  v13 = v73;
  sub_100007DB4();
  v29 = v72;
  v78 = v25;
  sub_100007628();
  v31 = v71;
  v67 = *(v24 + 16);
  v67(v71, v13, v29);
  v32 = sub_1000034BC(v31, 1);
  if (!v32)
  {
    sub_100006320();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    sub_100003450(v78, v27);

    (*(v24 + 8))(v13, v29);
    return v13;
  }

  v66 = v24 + 16;
  v71 = v32;
  [v32 open];
  v77 = swift_allocObject();
  *(v77 + 16) = 1;
  v33 = v76;
  v34 = v70;
  sub_10000767C(v76, v70);
  v35 = v75[80];
  v36 = swift_allocObject();
  sub_100007798(v34, v36 + ((v35 + 16) & ~v35));
  v84 = sub_1000077FC;
  v85 = v36;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100007CB8;
  v83 = &unk_10000C908;
  v75 = _Block_copy(&aBlock);

  sub_10000767C(v33, v34);
  v37 = swift_allocObject();
  v38 = v71;
  *(v37 + 16) = v77;
  *(v37 + 24) = v38;
  sub_100007798(v34, v37 + ((v35 + 32) & ~v35));
  v84 = sub_10000794C;
  v85 = v37;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100007CB8;
  v83 = &unk_10000C958;
  v39 = _Block_copy(&aBlock);

  v40 = v38;

  v41 = v23;
  v42 = v75;
  v43 = [v23 sinkWithCompletion:v75 receiveInput:v39];
  _Block_release(v39);
  _Block_release(v42);

  sub_1000061E0(93, 0xE100000000000000);
  v71 = v40;
  v75 = v27;
  v45 = v68;
  v47 = v72;
  v46 = v73;
  v67(v68, v73, v72);
  v48 = sub_100007E44();
  v49 = sub_100007F94();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v79;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v70 = v52;
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v52 = 136315138;
    sub_10000547C();
    v53 = sub_1000080C4();
    v54 = v45;
    v55 = v51;
    v57 = v56;
    v58 = *(v55 + 8);
    v58(v54, v47);
    v59 = sub_100004030(v53, v57, &aBlock);

    v60 = v70;
    *(v70 + 1) = v59;
    _os_log_impl(&_mh_execute_header, v48, v49, "TranscriptAttachment: finished writing to: %s", v60, 0xCu);
    sub_1000054D4(v76);

    v46 = v73;
  }

  else
  {

    v61 = v45;
    v58 = *(v51 + 8);
    v58(v61, v47);
  }

  v62 = v74;
  v67(v74, v46, v47);
  sub_100005454(v62, 0, 1, v47);
  v63 = objc_allocWithZone(DEAttachmentItem);
  result = sub_100003F84(v62);
  if (result)
  {
    v64 = v46;
    v13 = result;

    v65 = v71;
    [v71 close];
    sub_100003450(v78, v75);

    v58(v64, v47);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000061E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007ED4();
  sub_10000596C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007CBC();
  v8 = v7 - v6;
  sub_100007EC4();
  v9 = sub_100007EB4();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  if (v11 >> 60 == 15)
  {
    sub_100006320();
    swift_allocError();
    *v12 = 3;
    return swift_willThrow();
  }

  else
  {
    sub_100007010(v9, v11);
    return sub_100003450(v9, v11);
  }
}

unint64_t sub_100006320()
{
  result = qword_100010390;
  if (!qword_100010390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010390);
  }

  return result;
}

id sub_100006374()
{
  v0 = sub_100007DE4();
  sub_10000596C();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007CBC();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100007DD4();
  isa = sub_100007DC4().super.isa;
  (*(v2 + 8))(v6, v0);
  [v7 setStartDate:isa];

  v9 = [BiomeLibraryInternal() SearchTool];
  swift_unknownObjectRelease();
  v10 = [v9 Transcript];
  swift_unknownObjectRelease();
  v11 = sub_100007EA4();
  v12 = [v10 publisherWithUseCase:v11 options:v7];

  return v12;
}

uint64_t sub_100006514@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  sub_100007E14();
  sub_10000596C();
  v31 = v3;
  v32 = v2;
  __chkstk_darwin(v2);
  sub_100007CBC();
  v6 = v5 - v4;
  v7 = sub_100007D74();
  sub_10000596C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007CCC();
  v12 = __chkstk_darwin(v11);
  v14 = v30 - v13;
  __chkstk_darwin(v12);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_100007D64();
  sub_100007D54();
  v18 = *(v9 + 8);
  v33 = v7;
  v19 = v7;
  v20 = v1;
  v21 = v18;
  v18(v14, v19);
  sub_100007E04();
  sub_100007DF4();
  (*(v31 + 8))(v6, v32);
  sub_100007D54();

  v22 = [v15 defaultManager];
  sub_100007D34(v23);
  v25 = v24;
  v34 = 0;
  LOBYTE(v16) = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v34];

  if (v16)
  {
    v26 = v34;
    sub_100007D44();
  }

  else
  {
    v29 = v34;
    sub_100007D24();

    swift_willThrow();
  }

  v21(v20, v33);
  v27 = sub_100007CE8();
  return (v21)(v27);
}

void sub_100006870(void *a1)
{
  v2 = [a1 state];
  if (v2 == 1)
  {
    v5 = a1;
    oslog = sub_100007E44();
    v6 = sub_100007F84();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v5 error];
      sub_100002348(&qword_1000103B0, &qword_1000087F8);
      v9 = sub_100007EE4();
      v11 = sub_100004030(v9, v10, &v18);

      *(v7 + 4) = v11;
      v12 = "TranscriptAttachment: failed to fully publish events: %s";
LABEL_9:
      _os_log_impl(&_mh_execute_header, oslog, v6, v12, v7, 0xCu);
      sub_1000054D4(v8);

      return;
    }
  }

  else
  {
    if (!v2)
    {
      oslog = sub_100007E44();
      v3 = sub_100007F94();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v3, "TranscriptAttachment: finished publishing events successfully", v4, 2u);
      }

      goto LABEL_10;
    }

    v13 = a1;
    oslog = sub_100007E44();
    v6 = sub_100007F84();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v13 state];
      type metadata accessor for BPSCompletionState();
      v14 = sub_100007EE4();
      v16 = sub_100004030(v14, v15, &v18);

      *(v7 + 4) = v16;
      v12 = "TranscriptAttachment: unknown completion state: %s";
      goto LABEL_9;
    }
  }

LABEL_10:
}

void sub_100006B14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_1000061E0(44, 0xE100000000000000);
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v4 = [a1 jsonDictionary];
  sub_100007E84();

  v5 = sub_100006E90();
  v11 = v5;
  if (v5)
  {
    strcpy(&v22, "eventPayload");
    BYTE13(v22) = 0;
    HIWORD(v22) = -5120;
    sub_100008004();
    v23 = sub_100002348(&qword_100010398, &qword_1000087E0);
    *&v22 = v11;
    sub_10000247C(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000072C8(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_1000022F4(v24);
  }

  v13 = objc_opt_self();
  isa = sub_100007E74().super.isa;

  v24[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:3 error:v24];

  v16 = v24[0];
  if (v15)
  {
    v17 = sub_100007D94();
    v19 = v18;

    sub_100007010(v17, v19);
    sub_100003464(v17, v19);
  }

  else
  {
    v20 = v16;
    sub_100007D24();

    swift_willThrow();
    swift_errorRetain();
    v6 = sub_100007E44();
    v7 = sub_100007F84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "TranscriptAttachment: error during event processing: %@", v8, 0xCu);
      sub_1000079C0(v9);
    }

    else
    {
    }
  }
}

id sub_100006E90()
{
  result = [v0 eventBody];
  if (result)
  {
    v2 = sub_100007A28(result);
    if (v3 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v4 = v2;
      v5 = v3;
      v6 = objc_opt_self();
      isa = sub_100007D84().super.isa;
      v11 = 0;
      v8 = [v6 JSONObjectWithData:isa options:0 error:&v11];

      v9 = v11;
      if (v8)
      {
        sub_100007FB4();
        sub_100003450(v4, v5);
        swift_unknownObjectRelease();
        sub_100002348(&qword_1000103A8, &qword_1000087F0);
        swift_dynamicCast();
        return v11;
      }

      else
      {
        v10 = v9;
        sub_100007D24();

        swift_willThrow();
        return sub_100003450(v4, v5);
      }
    }
  }

  return result;
}

uint64_t sub_100007010(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v2;
      v18 = sub_100007CE8();
      sub_100007584(v18, v19);
      v13 = sub_100007CF4();
      if (!v13)
      {
        goto LABEL_15;
      }

      v20 = sub_100007D14();
      if (__OFSUB__(a1, v20))
      {
LABEL_25:
        __break(1u);
        JUMPOUT(0x100007190);
      }

      v13 += a1 - v20;
LABEL_15:
      v16 = (a1 >> 32) - a1;
LABEL_16:
      v21 = sub_100007D04();
      if (v21 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22 + v13;
      if (v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      sub_10000720C(v13, v24, v10, a1, a2);

      v25 = sub_100007CE8();
      return sub_100003464(v25, v26);
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = v2;
      v11 = sub_100007CE8();
      sub_100007584(v11, v12);
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v13 = sub_100007CF4();
      if (!v13)
      {
        goto LABEL_6;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v14 = sub_100007D14();
      if (__OFSUB__(v8, v14))
      {
        goto LABEL_24;
      }

      v13 += v8 - v14;
LABEL_6:
      v15 = __OFSUB__(v9, v8);
      v16 = v9 - v8;
      if (!v15)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      v5 = v2;
      v7 = 0;
      v6 = 0;
      return sub_100007484(v7, v6, v5, a1, a2);
    case 3uLL:
      goto LABEL_9;
    default:
      v5 = v2;
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a1;
      return sub_100007484(v7, v6, v5, a1, a2);
  }
}

void sub_1000071A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10000720C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a3 write:a1 maxLength:sub_100007DA4()];
    result = sub_100007DA4();
    if (v5 == result)
    {
      return result;
    }

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  sub_100006320();
  swift_allocError();
  *v8 = v7;
  return swift_willThrow();
}

_OWORD *sub_1000072C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000045A0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_100002348(&qword_1000103A0, &qword_1000087E8);
  if (!sub_100008064(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_1000045A0(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_1000080E4();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_1000054D4(v19);

    return sub_10000247C(a1, v19);
  }

  else
  {
    sub_1000055CC(a2, v21);
    return sub_100007408(v14, v21, a1, v18);
  }
}

_OWORD *sub_100007408(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000247C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100007484(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  v8 = [a3 write:&v11 maxLength:sub_100007DA4()];
  if (v8 != sub_100007DA4())
  {
    sub_100006320();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return sub_100003464(a4, a5);
}

uint64_t sub_100007584(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t type metadata accessor for TranscriptAttachment(uint64_t a1)
{
  result = qword_100010410;
  if (!qword_100010410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100007628()
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000102A0);
  }

  return result;
}

uint64_t sub_10000767C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000076E0()
{
  v1 = type metadata accessor for TranscriptAttachment(0);
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_100007E64();
  sub_100002588();
  (*(v7 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000077FC(void *a1)
{
  type metadata accessor for TranscriptAttachment(0);

  sub_100006870(a1);
}

uint64_t sub_10000786C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007884()
{
  v1 = type metadata accessor for TranscriptAttachment(0);
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  sub_100007E64();
  sub_100002588();
  (*(v7 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

void sub_10000794C(void *a1)
{
  type metadata accessor for TranscriptAttachment(0);
  v3 = *(v1 + 16);

  sub_100006B14(a1, v3);
}

uint64_t sub_1000079C0(uint64_t a1)
{
  v2 = sub_100002348(&qword_100010278, &qword_100008650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007A28(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100007D94();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for TranscriptAttachment.TranscriptAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100007B64);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100007BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005524(a1, a2, v4);
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005454(a1, a2, a2, v4);
}

unint64_t sub_100007C5C()
{
  result = qword_100010448;
  if (!qword_100010448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010448);
  }

  return result;
}