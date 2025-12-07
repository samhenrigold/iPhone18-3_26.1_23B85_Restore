uint64_t sub_100088B90(uint64_t a1)
{
  *(*v2 + 288) = a1;

  if (v1)
  {

    v3 = sub_100089C28;
  }

  else
  {
    v3 = sub_100088CAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100088CAC()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    [*(v0 + 288) _populateMetadataForBackwardCompatibility];
    v2 = [v1 image];
    if (!v2 || (v3 = v2, v4 = [v2 platformImage], v3, !v4))
    {
      v5 = [v1 icon];
      v4 = [v5 platformImage];
    }

    v6 = *(v0 + 256);
    v7 = *(v0 + 168);
    v8 = *(v0 + 160);
    (*(v7 + 96))(v4, v8, v7);
    v9 = v6(v8, v7);

    if (v9)
    {
      v10 = *(v0 + 272);
LABEL_15:

      v48 = *(v0 + 8);

      return v48(v9);
    }
  }

  v11 = *(v0 + 272);
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 232);
  static UTType.url.getter();
  UTType.identifier.getter();
  v16 = v15;
  v17 = *(v13 + 8);
  *(v0 + 296) = v17;
  *(v0 + 304) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v14);
  v18 = String._bridgeToObjectiveC()();
  v16, v19, v20, v21, v22, v23, v24, v25;
  LODWORD(v11) = [v11 hasRepresentationConformingToTypeIdentifier:v18 fileOptions:0];

  if (v11)
  {
    v26 = *(v0 + 272);
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    *(v27 + 16) = v26;
    v28 = swift_task_alloc();
    *(v0 + 320) = v28;
    *v28 = v0;
    v28[1] = sub_10008909C;
    v29 = *(v0 + 224);
    v30 = *(v0 + 208);
    v31 = sub_100090BDC;
  }

  else
  {
    v32 = *(v0 + 296);
    v33 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 232);
    static UTType.image.getter();
    UTType.identifier.getter();
    v37 = v36;
    v32(v34, v35);
    v38 = String._bridgeToObjectiveC()();
    v37, v39, v40, v41, v42, v43, v44, v45;
    LODWORD(v33) = [v33 hasRepresentationConformingToTypeIdentifier:v38 fileOptions:0];

    if (!v33)
    {
      v10 = *(v0 + 272);
      v9 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));
      goto LABEL_15;
    }

    v46 = *(v0 + 272);
    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    *(v27 + 16) = v46;
    v47 = swift_task_alloc();
    *(v0 + 384) = v47;
    v30 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v47 = v0;
    v47[1] = sub_100089A18;
    v31 = sub_100090BD4;
    v29 = v0 + 144;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, v31, v27, v30);
}

uint64_t sub_10008909C()
{

  if (v0)
  {

    v1 = sub_100089F40;
  }

  else
  {

    v1 = sub_1000891E4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000891E4()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  sub_100007BA4(v0[28], v1, &qword_100172EE0, &qword_10011B220);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[34];
    sub_1000159AC(v0[28], &qword_100172EE0, &qword_10011B220);

    sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    (*(v0[24] + 32))(v0[25], v0[27], v0[23]);
    v9 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[41] = v9;
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v0[42] = v11;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_100089438;
    v13 = swift_continuation_init();
    v0[17] = sub_1000077C8(&qword_100175E00, &qword_10011DCA8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10008C360;
    v0[13] = &unk_10015F8E8;
    v0[14] = v13;
    [v9 startFetchingMetadataForURL:v12 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100089438()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_10008A1B4;
  }

  else
  {
    v2 = sub_100089548;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100089548()
{
  v1 = v0[42];
  v2 = v0[19];
  v0[44] = v2;

  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_100089640;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100089640()
{

  return _swift_task_switch(sub_100089758, 0, 0);
}

uint64_t sub_100089758()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 192);
  v31 = *(v0 + 200);
  v32 = *(v0 + 224);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = [v1 image];
  v8 = [v7 platformImage];

  (*(v5 + 96))(v8, v6, v5);
  (*(v3 + 8))(v31, v4);
  sub_1000159AC(v32, &qword_100172EE0, &qword_10011B220);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  v12 = *(v0 + 232);
  static UTType.image.getter();
  UTType.identifier.getter();
  v14 = v13;
  v9(v11, v12);
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  LODWORD(v10) = [v10 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

  if (v10)
  {
    v23 = *(v0 + 272);
    v24 = swift_task_alloc();
    *(v0 + 376) = v24;
    *(v24 + 16) = v23;
    v25 = swift_task_alloc();
    *(v0 + 384) = v25;
    v26 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v25 = v0;
    v25[1] = sub_100089A18;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, sub_100090BD4, v24, v26);
  }

  else
  {
    v27 = *(v0 + 272);
    v28 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

    v29 = *(v0 + 8);

    return v29(v28);
  }
}

uint64_t sub_100089A18()
{

  if (v0)
  {

    v1 = sub_10008A2BC;
  }

  else
  {

    v1 = sub_100089B60;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100089B60()
{
  (*(*(v0 + 168) + 96))(*(v0 + 144), *(v0 + 160));
  v1 = *(v0 + 272);
  v2 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100089C28()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  static UTType.url.getter();
  UTType.identifier.getter();
  v6 = v5;
  v7 = *(v3 + 8);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = String._bridgeToObjectiveC()();
  v6, v9, v10, v11, v12, v13, v14, v15;
  LODWORD(v1) = [v1 hasRepresentationConformingToTypeIdentifier:v8 fileOptions:0];

  if (v1)
  {
    v16 = *(v0 + 272);
    v17 = swift_task_alloc();
    *(v0 + 312) = v17;
    *(v17 + 16) = v16;
    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_10008909C;
    v19 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = sub_100090BDC;
LABEL_5:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v19, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, v21, v17, v20);
  }

  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 248);
  v25 = *(v0 + 232);
  static UTType.image.getter();
  UTType.identifier.getter();
  v27 = v26;
  v22(v24, v25);
  v28 = String._bridgeToObjectiveC()();
  v27, v29, v30, v31, v32, v33, v34, v35;
  LODWORD(v23) = [v23 hasRepresentationConformingToTypeIdentifier:v28 fileOptions:0];

  if (v23)
  {
    v36 = *(v0 + 272);
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *(v17 + 16) = v36;
    v37 = swift_task_alloc();
    *(v0 + 384) = v37;
    v20 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v37 = v0;
    v37[1] = sub_100089A18;
    v21 = sub_100090BD4;
    v19 = v0 + 144;
    goto LABEL_5;
  }

  v38 = *(v0 + 272);
  v39 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v40 = *(v0 + 8);

  return v40(v39);
}

uint64_t sub_100089F40()
{
  (*(v0[24] + 56))(v0[28], 1, 1, v0[23]);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  sub_100007BA4(v0[28], v1, &qword_100172EE0, &qword_10011B220);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[34];
    sub_1000159AC(v0[28], &qword_100172EE0, &qword_10011B220);

    sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    (*(v0[24] + 32))(v0[25], v0[27], v0[23]);
    v9 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[41] = v9;
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v0[42] = v11;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_100089438;
    v13 = swift_continuation_init();
    v0[17] = sub_1000077C8(&qword_100175E00, &qword_10011DCA8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10008C360;
    v0[13] = &unk_10015F8E8;
    v0[14] = v13;
    [v9 startFetchingMetadataForURL:v12 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10008A1B4()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[34];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  sub_1000159AC(v4, &qword_100172EE0, &qword_10011B220);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_10008A2BC()
{
  (*(*(v0 + 168) + 96))(0, *(v0 + 160));
  v1 = *(v0 + 272);
  v2 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10008A384(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000031;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (v8)
  {
    v10 = "shotservices.sirisharing";
  }

  else
  {
    v10 = "per.group-session";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000031;
  }

  else
  {
    v12 = 0xD000000000000021;
  }

  if (*a2)
  {
    v13 = "per.group-session";
  }

  else
  {
    v13 = "shotservices.sirisharing";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

void sub_10008A430(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_10015CA80, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_10008A490(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v2 = 0xD000000000000021;
  }

  if (*v1)
  {
    v3 = "per.group-session";
  }

  else
  {
    v3 = "shotservices.sirisharing";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

Swift::Int sub_10008A4D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = "per.group-session";
  }

  else
  {
    v2 = "shotservices.sirisharing";
  }

  String.hash(into:)();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_10008A550(uint64_t a1)
{
  if (*v1)
  {
    v2 = "per.group-session";
  }

  else
  {
    v2 = "shotservices.sirisharing";
  }

  String.hash(into:)();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_10008A5BC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = "per.group-session";
  }

  else
  {
    v3 = "shotservices.sirisharing";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

uint64_t sub_10008A648()
{
  v0 = sub_10008FFA4(&off_10015C918);
  result = swift_arrayDestroy();
  off_100175DA0 = v0;
  return result;
}

uint64_t sub_10008A694()
{
  v1 = v0;
  v2 = 0;
  v3 = 0;
  v69 = &_swiftEmptyArrayStorage;
  do
  {
    v11 = v2;
    v12 = *(&off_10015C9D8 + v3 + 32);
    v13 = [v1 bundleIdentifier];
    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v25 = "per.group-session";
    if (!v12)
    {
      v25 = "shotservices.sirisharing";
    }

    v26 = (v25 | 0x8000000000000000);
    if (v12)
    {
      v27 = v26 == 0x8000000100122930;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      (v25 | 0x8000000000000000), v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26, v29, v30, v31, v32, v33, v34, v35;
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (qword_1001721E8 != -1)
    {
      swift_once();
    }

    v43 = off_100175DA0;
    if (*(off_100175DA0 + 2))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v44 = Hasher._finalize()();
      v45 = -1 << v43[32];
      v46 = v44 & ~v45;
      if ((*&v43[((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v46))
      {
        v47 = ~v45;
        while (1)
        {
          v48 = (*(v43 + 6) + 16 * v46);
          v36 = v48[1];
          v49 = *v48 == v15 && v36 == v17;
          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*&v43[((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v46) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v17, v36, v37, v38, v39, v40, v41, v42;
LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v69;
        v74 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000E434(0, *v69->connection + 1, 1);
          v64 = v74;
        }

        v66 = *v64->connection;
        v65 = *v64->airdropClient;
        if (v66 >= v65 >> 1)
        {
          sub_10000E434((v65 > 1), v66 + 1, 1);
          v64 = v74;
        }

        *v64->connection = v66 + 1;
        v69 = v64;
        v64->airDropClient[v66] = v12;
        goto LABEL_4;
      }
    }

LABEL_26:
    v17, v36, v37, v38, v39, v40, v41, v42;
    v50 = [v1 entitlements];
    if (v12)
    {
      v51 = 0x8000000100122930;
    }

    else
    {
      v51 = 0x8000000100122900;
    }

    v52 = String._bridgeToObjectiveC()();
    sub_1000165C4(0, &qword_100175DA8, NSNumber_ptr);
    v53 = [v50 objectForKey:v52 ofClass:swift_getObjCClassFromMetadata()];

    if (v53)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v70[0] = v72;
    v70[1] = v73;
    if (!*(&v73 + 1))
    {
      sub_1000159AC(v70, &qword_1001746C0, &qword_10011A510);
LABEL_3:

      v51, v4, v5, v6, v7, v8, v9, v10;
      goto LABEL_4;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    v54 = v71;
    v55 = [v71 BOOLValue];

    v51, v56, v57, v58, v59, v60, v61, v62;
    if (v55)
    {
      goto LABEL_37;
    }

LABEL_4:
    v2 = 1;
    v3 = &_mh_execute_header.magic + 1;
  }

  while ((v11 & 1) == 0);
  v67 = sub_10008FF30(v69);

  return v67;
}

uint64_t sub_10008AA98@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_10008AB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  __chkstk_darwin(v6 - 8);
  v8 = &v92 - v7;
  v9 = type metadata accessor for UTType();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 64);
  v14 = v13(a1, a2, v10);
  if (v14 >> 62)
  {
    v92 = v14;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v92;
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14, v15, v16, v17, v18, v19, v20, v21;
  if (v22 != 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v53 = v52;
    sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1001186F0;
    v55 = (v13)(a1, a2);
    if (v55 >> 62)
    {
      v91 = v55;
      v63 = _CocoaArrayWrapper.endIndex.getter();
      v55 = v91;
    }

    else
    {
      v63 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55, v56, v57, v58, v59, v60, v61, v62;
    *(v54 + 56) = &type metadata for Int;
    *(v54 + 64) = &protocol witness table for Int;
    *(v54 + 32) = v63;
    v64 = static String.localizedStringWithFormat(_:_:)();
    v53, v65, v66, v67, v68, v69, v70, v71;
    v54, v72, v73, v74, v75, v76, v77, v78;
    return v64;
  }

  result = (v13)(a1, a2);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_23:
    result, v24, v25, v26, v27, v28, v29, v30;
    return 0;
  }

  v89 = result;
  v90 = _CocoaArrayWrapper.endIndex.getter();
  result = v89;
  if (!v90)
  {
    goto LABEL_23;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v31 = result;
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v31 = result;
    v32 = *(result + 32);
  }

  v40 = v32;
  v31, v33, v34, v35, v36, v37, v38, v39;
  type metadata accessor for SFAirDropUtilities();
  v41 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)();
  v43 = v42;
  v41, v42, v44, v45, v46, v47, v48, v49;
  if (!v43)
  {

    return 0;
  }

  UTType.init(_:)();
  v51 = v93;
  v50 = v94;
  if ((*(v93 + 48))(v8, 1, v94) != 1)
  {
    (*(v51 + 32))(v12, v8, v50);
    v79 = UTType.localizedDescription.getter();
    if (v80)
    {
      v95 = 8241;
      v96 = 0xE200000000000000;
      v81 = v80;
      String.append(_:)(*&v79);
      v81, v82, v83, v84, v85, v86, v87, v88;

      v64 = v95;
    }

    else
    {
      v64 = v79;
    }

    (*(v51 + 8))(v12, v50);
    return v64;
  }

  sub_1000159AC(v8, &unk_100175E80, &qword_100118B18);
  return 0;
}

unint64_t sub_10008AFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = type metadata accessor for LocalizedStringResource();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_1000077C8(&qword_100175E78, &unk_10011DEF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v35 - v22;
  v24 = *(a3 + 8);
  v40 = a2;
  v25 = v24(a2, a3, v21);
  if (v26)
  {
    return v25;
  }

  v35 = v7;
  v36 = v10;
  (*(a3 + 16))(v40, a3);
  sub_100007BA4(v23, v19, &qword_100175E78, &unk_10011DEF0);
  v29 = v38;
  v28 = v39;
  v30 = *(v38 + 48);
  if (v30(v19, 1, v39) != 1)
  {
    v31 = v36;
    (*(v29 + 32))(v36, v19, v28);
    (*(v29 + 16))(v35, v31, v28);
    v27 = String.init(localized:)();
    (*(v29 + 8))(v31, v28);
    v32 = v23;
LABEL_8:
    sub_1000159AC(v32, &qword_100175E78, &unk_10011DEF0);
    return v27;
  }

  sub_1000159AC(v23, &qword_100175E78, &unk_10011DEF0);
  (*(a3 + 40))(v37, v40, a3);
  sub_100007BA4(v16, v13, &qword_100175E78, &unk_10011DEF0);
  if (v30(v13, 1, v28) != 1)
  {
    v33 = v36;
    (*(v29 + 32))(v36, v13, v28);
    (*(v29 + 16))(v35, v33, v28);
    v27 = String.init(localized:)();
    (*(v29 + 8))(v33, v28);
    v32 = v16;
    goto LABEL_8;
  }

  sub_1000159AC(v16, &qword_100175E78, &unk_10011DEF0);
  return sub_10008AB04(v40, a3);
}

uint64_t sub_10008B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v5 = type metadata accessor for LocalizedStringResource();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_1000077C8(&qword_100175E78, &unk_10011DEF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  v23 = (*(a3 + 24))(a2, a3, v20);
  if (!v24)
  {
    v41 = v12;
    v42 = v15;
    v43 = v9;
    v26 = a3;
    v27 = v22;
    (*(a3 + 32))(a2, a3);
    sub_100007BA4(v22, v18, &qword_100175E78, &unk_10011DEF0);
    v28 = v46;
    v29 = *(v46 + 48);
    if (v29(v18, 1, v47) == 1)
    {
      v30 = v28;
      sub_1000159AC(v27, &qword_100175E78, &unk_10011DEF0);
      v31 = v42;
      (*(v26 + 48))(v44, a2, v26);
      v32 = v41;
      sub_100007BA4(v31, v41, &qword_100175E78, &unk_10011DEF0);
      if (v29(v32, 1, v47) == 1)
      {
        sub_1000159AC(v31, &qword_100175E78, &unk_10011DEF0);
        return 0;
      }

      v36 = v43;
      v37 = v32;
      v38 = v47;
      (*(v30 + 32))(v43, v37, v47);
      (*(v30 + 16))(v45, v36, v38);
      v25 = String.init(localized:)();
      (*(v30 + 8))(v36, v38);
      v35 = v31;
    }

    else
    {
      v33 = v43;
      v34 = v47;
      (*(v28 + 32))(v43, v18, v47);
      (*(v28 + 16))(v45, v33, v34);
      v25 = String.init(localized:)();
      (*(v28 + 8))(v33, v34);
      v35 = v27;
    }

    sub_1000159AC(v35, &qword_100175E78, &unk_10011DEF0);
    return v25;
  }

  return v23;
}

unint64_t sub_10008B7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  result = (*(a2 + 64))(a1, a2, v6);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    result, v10, v11, v12, v13, v14, v15, v16;
    (*(a2 + 56))(v84, a1, a2);
    v62 = v85;
    v86 = v85;

    sub_10001528C(v84);
    if (!*(v62 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v63 = Hasher._finalize()(), v71 = -1 << *(v62 + 32), v72 = v63 & ~v71, ((*(v62 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0))
    {
LABEL_23:
      sub_1000159AC(&v86, &unk_100175EA0, &qword_100120A00);
      return 0;
    }

    v73 = ~v71;
    while (1)
    {
      v74 = (*(*(v62 + 48) + v72) ? 0x8000000100122930 : 0x8000000100122900);
      if ((*(*(v62 + 48) + v72) & 1) == 0 && 0x8000000100122900 == v74)
      {
        break;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v74, v76, v77, v78, v79, v80, v81, v82;
      if (v75)
      {
        goto LABEL_26;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v62 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v74, v64, v65, v66, v67, v68, v69, v70;
LABEL_26:
    sub_1000159AC(&v86, &unk_100175EA0, &qword_100120A00);
    v27 = 0;
    goto LABEL_27;
  }

  v60 = result;
  v61 = _CocoaArrayWrapper.endIndex.getter();
  result = v60;
  if (!v61)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = result;
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v26 = v18;
    v17, v19, v20, v21, v22, v23, v24, v25;
    v27 = v26;
    static UTType.url.getter();
    UTType.identifier.getter();
    v29 = v28;
    v30 = *(v5 + 8);
    v30(v8, v4);
    v31 = String._bridgeToObjectiveC()();
    v29, v32, v33, v34, v35, v36, v37, v38;
    LODWORD(v29) = [v27 hasRepresentationConformingToTypeIdentifier:v31 fileOptions:0];

    if (v29)
    {

      return 1802398060;
    }

    static UTType.image.getter();
    UTType.identifier.getter();
    v40 = v39;
    v30(v8, v4);
    v41 = String._bridgeToObjectiveC()();
    v40, v42, v43, v44, v45, v46, v47, v48;
    LODWORD(v40) = [v27 hasRepresentationConformingToTypeIdentifier:v41 fileOptions:0];

    if (v40)
    {

      return 0x6F746F6870;
    }

    static UTType._groupActivity.getter();
    UTType.identifier.getter();
    v50 = v49;
    v30(v8, v4);
    v51 = String._bridgeToObjectiveC()();
    v50, v52, v53, v54, v55, v56, v57, v58;
    v59 = [v27 hasRepresentationConformingToTypeIdentifier:v51 fileOptions:0];

    if ((v59 & 1) == 0)
    {

      return 0;
    }

LABEL_27:

    return 0x616C706572616873;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = result;
    v18 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10008BC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a2 + 64))(a1, a2, v9);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    result, v13, v14, v15, v16, v17, v18, v19;
    return 0;
  }

  v50 = result;
  v51 = _CocoaArrayWrapper.endIndex.getter();
  result = v50;
  if (!v51)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v20 = result;
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = *(result + 32);
  }

  v29 = v21;
  v20, v22, v23, v24, v25, v26, v27, v28;
  type metadata accessor for SFAirDropUtilities();
  v30 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)();
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  if (!v32)
  {

    return 0;
  }

  UTType.init(_:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1000159AC(v6, &unk_100175E80, &qword_100118B18);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v39 = UTType.preferredFilenameExtension.getter();
  if (v40)
  {
    v41 = v40;
    v42 = String.uppercased()();
    v41, v42._object, v43, v44, v45, v46, v47, v48;

    (*(v8 + 8))(v11, v7);
    return v42._countAndFlagsBits;
  }

  else
  {
    v49 = v39;
    (*(v8 + 8))(v11, v7);

    return v49;
  }
}

void sub_10008BF00(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_1000165C4(0, &qword_100175E20, NSURL_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100090CA8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015F988;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10008C0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  __chkstk_darwin(a1);
  v10 = &v15 - v9;
  if (v8)
  {
    v16 = v8;
    swift_unknownObjectRetain();
    sub_1000077C8(&qword_100175E30, &qword_10011DCD0);
    v11 = type metadata accessor for URL();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v10, v12 ^ 1u, 1, v11);
    sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      LODWORD(v16) = 17;
      sub_100090CE8(&_swiftEmptyArrayStorage);
      sub_100090E18(&qword_100175E28, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = POSIXError._nsError.getter();
      (*(v5 + 8))(v7, v4);
    }

    v16 = v14;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10008C360(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000078DC((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_10008C438(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E08, &unk_10011DCB0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100090C18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C38;
  aBlock[3] = &unk_10015F938;
  v11 = _Block_copy(aBlock);

  [a2 _loadAsynchronousFieldsWithUpdateHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10008C5E8(uint64_t result)
{
  if (result)
  {
    sub_1000077C8(&qword_100175E08, &unk_10011DCB0);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

void sub_10008C62C(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100090EF8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015F9D8;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10008C810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      swift_unknownObjectRetain();
    }

    v14 = v9;
    sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      LODWORD(v14) = 17;
      v12 = v6;
      sub_100090CE8(&_swiftEmptyArrayStorage);
      sub_100090E18(&qword_100175E28, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v11 = POSIXError._nsError.getter();
      (*(v5 + 8))(v8, v12);
    }

    v14 = v11;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
    return CheckedContinuation.resume(throwing:)();
  }
}

BOOL sub_10008C9EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v7 = static NSUserDefaults.airdrop.getter();
  v8 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  result = 0;
  if (v8)
  {
    (*(v4 + 16))(v6, v2, a1);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if (swift_dynamicCast())
    {
      v9 = v14;
      v10 = [v14 content];
      v11 = [v10 hasPossibleCollaborationRepresentation];

      if (v11)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_10008CB60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SFAirDropUtilities();
  v4 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  v5 = (*(a2 + 64))(a1, a2);
  v13 = v5;
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v15 = 0;
      v16 = v13 & 0xC000000000000001;
      v54 = v14;
      v17 = -*v4->connection;
LABEL_4:
      if (v16)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v18 = *(v13 + 32 + 8 * v15);
      }

      v19 = v18;
      if (!__OFADD__(v15++, 1))
      {
        break;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v21 = -1;
    transfersMonitorTask = v4->transfersMonitorTask;
    while (v17 + v21 != -1)
    {
      if (++v21 >= *v4->connection)
      {
        __break(1u);
        goto LABEL_17;
      }

      v23 = transfersMonitorTask + 2;
      v24 = *transfersMonitorTask;

      v25 = String._bridgeToObjectiveC()();
      v24, v26, v27, v28, v29, v30, v31, v32;
      LODWORD(v24) = [v19 hasItemConformingToTypeIdentifier:v25];

      transfersMonitorTask = v23;
      if (v24)
      {
        v13, v33, v34, v35, v36, v37, v38, v39;
        v4, v47, v48, v49, v50, v51, v52, v53;

        return;
      }
    }

    v16 = v13 & 0xC000000000000001;
    if (v15 != v54)
    {
      goto LABEL_4;
    }
  }

LABEL_15:
  v13, v6, v7, v8, v9, v10, v11, v12;
  v4, v40, v41, v42, v43, v44, v45, v46;
}

id sub_10008CD7C(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, char a3)
{
  v6 = String._bridgeToObjectiveC()();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v14;
}

uint64_t sub_10008CE58(_BYTE *a1, char a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (a2)
  {
    v6 = "per.group-session";
  }

  else
  {
    v6 = "shotservices.sirisharing";
  }

  v7 = (v6 | 0x8000000000000000);
  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = Hasher._finalize()();
  v23 = -1 << *(v4 + 32);
  v24 = v15 & ~v23;
  if ((*(v4 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v25 = ~v23;
    while (1)
    {
      v26 = *(*(v4 + 48) + v24) ? 0xD000000000000031 : 0xD000000000000021;
      v27 = *(*(v4 + 48) + v24) ? "per.group-session" : "shotservices.sirisharing";
      v28 = (v27 | 0x8000000000000000);
      if (v26 == v5 && v28 == v7)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28, v31, v32, v33, v34, v35, v36, v37;
      v7, v38, v39, v40, v41, v42, v43, v44;
      if (v30)
      {
        goto LABEL_23;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v4 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    (v27 | 0x8000000000000000), v16, v17, v18, v19, v20, v21, v22;
    v7, v53, v54, v55, v56, v57, v58, v59;
LABEL_23:
    result = 0;
    v46 = *(*(v4 + 48) + v24);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *v60;
    v46 = a2 & 1;
    sub_10008E224(a2 & 1, v24, isUniquelyReferenced_nonNull_native, v47, v48, v49, v50, v51);
    *v60 = v62;
    result = 1;
  }

  *a1 = v46;
  return result;
}

uint64_t sub_10008D014(Swift::Int *a1, Swift::Int a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_10008E424(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10008D164(uint64_t a1, uint64_t a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3, int a4)
{
  v5 = v4;
  v47 = a4 & 0x10000;
  v48 = a4 & 0x100;
  v46 = a4 & 0x1000000;
  v9 = *v5;
  Hasher.init(_seed:)();
  v50 = a3;
  String.hash(into:)();
  LOBYTE(a3) = a4 & 1;
  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(BYTE1(a4) & 1);
  Hasher._combine(_:)(BYTE2(a4) & 1);
  v49 = a4;
  Hasher._combine(_:)(HIBYTE(a4) & 1);
  v10 = Hasher._finalize()();
  v17 = v9 + 56;
  v18 = -1 << *(v9 + 32);
  v19 = v10 & ~v18;
  v44 = v5;
  v43 = a3;
  if ((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v42 = v9;
    v21 = *(v9 + 48);
    v23 = a2;
    v22 = v50;
    while (1)
    {
      v24 = v21 + 24 * v19;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 17);
      v28 = *(v24 + 19);
      v29 = (v47 != 0) ^ *(v24 + 18);
      if (*v24 == v23 && v25 == v22)
      {
        if (((v26 ^ v49 | (v48 != 0) ^ v27 | v29) & 1) == 0 && (((v46 != 0) ^ v28) & 1) == 0)
        {
LABEL_12:
          v22, v25, v11, v12, v13, v14, v15, v16;
          v32 = *(v42 + 48) + 24 * v19;
          v34 = *v32;
          v33 = *(v32 + 8);
          v35 = *(v32 + 16);
          v36 = *(v32 + 17);
          v37 = *(v32 + 18);
          LOBYTE(v32) = *(v32 + 19);
          *a1 = v34;
          *(a1 + 8) = v33;
          *(a1 + 16) = v35;
          *(a1 + 17) = v36;
          *(a1 + 18) = v37;
          *(a1 + 19) = v32;

          return 0;
        }
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = a2;
        v22 = v50;
        if (!((v26 ^ v49) & 1 | ((v31 & 1) == 0) | (((v48 != 0) ^ v27) | v29) & 1) && (((v46 != 0) ^ v28) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v19 = (v19 + 1) & v20;
      if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v23 = a2;
  v22 = v50;
LABEL_14:
  v39 = v22;
  v40 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v44;

  sub_10008E5A4(v40, v39, v49 & 0x1010101, v19, isUniquelyReferenced_nonNull_native);
  *v44 = v51;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v43;
  *(a1 + 17) = BYTE1(v48);
  *(a1 + 18) = BYTE2(v47);
  *(a1 + 19) = HIBYTE(v46);
  return 1;
}

uint64_t sub_10008D42C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100090E18(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10008E874(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_10008D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17)
      {
        v18 = "per.group-session";
      }

      else
      {
        v18 = "shotservices.sirisharing";
      }

      String.hash(into:)();
      (v18 | 0x8000000000000000), v19, v20, v21, v22, v23, v24, v25;
      v26 = Hasher._finalize()();
      v27 = -1 << *(v5 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero((v3 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10008D99C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10008DBFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 17);
      v22 = *(v17 + 18);
      v23 = *(v17 + 19);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 17) = v21;
      *(v13 + 18) = v22;
      *(v13 + 19) = v23;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v16 = v34[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10008DEC8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10008E224(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a2;
  v12 = *(v8->super.isa + 2);
  v13 = *(v8->super.isa + 3);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_10008D70C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10008EB18();
      goto LABEL_28;
    }

    sub_10008F16C(v12 + 1);
  }

  isa = v8->super.isa;
  Hasher.init(_seed:)();
  if (a1)
  {
    v15 = 0xD000000000000031;
  }

  else
  {
    v15 = 0xD000000000000021;
  }

  if (a1)
  {
    v16 = "per.group-session";
  }

  else
  {
    v16 = "shotservices.sirisharing";
  }

  v9 = (v16 | 0x8000000000000000);
  String.hash(into:)();
  v9, v17, v18, v19, v20, v21, v22, v23;
  v8 = v58;
  v24 = Hasher._finalize()();
  v25 = -1 << *(isa + 32);
  v10 = v24 & ~v25;
  if ((*(isa + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
  {
    v26 = ~v25;
    do
    {
      v27 = *(*(isa + 6) + v10) ? 0xD000000000000031 : 0xD000000000000021;
      v28 = *(*(isa + 6) + v10) ? "per.group-session" : "shotservices.sirisharing";
      v8 = (v28 | 0x8000000000000000);
      if (v27 == v15 && v8 == v9)
      {
        goto LABEL_31;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8, v31, v32, v33, v34, v35, v36, v37;
      v9, v38, v39, v40, v41, v42, v43, v44;
      if (v30)
      {
        goto LABEL_32;
      }

      v10 = (v10 + 1) & v26;
    }

    while (((*(isa + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) != 0);
  }

LABEL_28:
  v45 = *v56;
  *(*v56 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v45 + 48) + v10) = a1 & 1;
  v46 = *(v45 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(v45 + 16) = v48;
    return;
  }

  __break(1u);
LABEL_31:
  v8, a2, a3, a4, a5, a6, a7, a8;
  v9, v49, v50, v51, v52, v53, v54, v55;
LABEL_32:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10008E424(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10008D99C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10008EC58();
      goto LABEL_16;
    }

    sub_10008F3CC(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10008E5A4(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v9 = a3 & 0x100;
  v10 = a3 & 0x10000;
  v11 = a3 & 0x1000000;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  v38 = WORD1(v10);
  v39 = v9 >> 8;
  v37 = BYTE3(v11);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    v41 = a3;
    if (a5)
    {
      sub_10008DBFC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_10008EDB4();
LABEL_20:
        LOBYTE(a3) = v41;
        v7 = a2;
        v8 = result;
        goto LABEL_21;
      }

      sub_10008F604(v12 + 1);
    }

    v14 = *v5;
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._combine(_:)(v41 & 1);
    Hasher._combine(_:)(BYTE1(v9));
    Hasher._combine(_:)(BYTE2(v10));
    Hasher._combine(_:)(BYTE3(v11));
    v15 = Hasher._finalize()();
    v16 = v14 + 56;
    v17 = -1 << *(v14 + 32);
    a4 = v15 & ~v17;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v18 = ~v17;
      v19 = *(v14 + 48);
      a3 = v41;
      v7 = a2;
      v8 = result;
      v20 = v9;
      v21 = v10;
      while (1)
      {
        v22 = v19 + 24 * a4;
        v23 = *(v22 + 16);
        v24 = *(v22 + 17);
        v25 = *(v22 + 19);
        if (*v22 == v8 && *(v22 + 8) == v7)
        {
          v30 = v11 != 0;
          if (((v23 ^ a3 | (v20 != 0) ^ v24 | (v21 != 0) ^ *(v22 + 18)) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v42 = v11 != 0;
          v43 = (v21 != 0) ^ *(v22 + 18);
          v27 = v11;
          v28 = v21;
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v21 = v28;
          v11 = v27;
          v8 = result;
          v7 = a2;
          a3 = v41;
          if (!((v23 ^ v41) & 1 | ((v29 & 1) == 0) | ((v20 != 0) ^ v24 | v43) & 1))
          {
            v30 = v42;
LABEL_10:
            if (((v30 ^ v25) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        a4 = (a4 + 1) & v18;
        if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v31 = *v36;
  *(*v36 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v32 = *(v31 + 48) + 24 * a4;
  *v32 = v8;
  *(v32 + 8) = v7;
  *(v32 + 16) = a3 & 1;
  *(v32 + 17) = v39;
  *(v32 + 18) = v38;
  *(v32 + 19) = v37;
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_24:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }
}

uint64_t sub_10008E874(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008DEC8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10008EF34();
      goto LABEL_12;
    }

    sub_10008F8CC(v11 + 1);
  }

  v13 = *v3;
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100090E18(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10008EB18()
{
  v1 = v0;
  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10008EC58()
{
  v1 = v0;
  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10008EDB4()
{
  v1 = v0;
  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        LOBYTE(v18) = *(v18 + 19);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 17) = v22;
        *(v24 + 18) = v23;
        *(v24 + 19) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10008EF34()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_10008F16C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16)
      {
        v17 = "per.group-session";
      }

      else
      {
        v17 = "shotservices.sirisharing";
      }

      String.hash(into:)();
      (v17 | 0x8000000000000000), v18, v19, v20, v21, v22, v23, v24;
      v25 = Hasher._finalize()();
      v26 = -1 << *(v5 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v33;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_10008F3CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10008F604(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v36 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 18);
      v24 = *(v18 + 19);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      v25 = Hasher._finalize()();
      v5 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v36 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 17) = v22;
      *(v14 + 18) = v23;
      *(v14 + 19) = v24;
      ++*(v36 + 16);
      v3 = v35;
      v10 = v37;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v33 = v5;

        v2 = v34;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v33 = v4;

LABEL_26:
    *v2 = v33;
  }
}

void sub_10008F8CC(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

uint64_t sub_10008FBE8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10008FC40(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000077C8(&unk_100175E90, &unk_10011DF20);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10008FF30(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100090578();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10008CE58(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_10008FFA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100176590, &qword_10011E7C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10009010C(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_allocWithZone(LSApplicationRecord);

  v7 = sub_10008CD7C(a1, a2, 1);
  if (!v7)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_10017F350);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    a2, v11, v12, v13, v14, v15, v16, v17;
    if (os_log_type_enabled(v9, v10))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v82[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10003E81C(a1, a2, v82);
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetched shareable content from %s, but could not find an associated application record", v18, 0xCu);
      sub_100007920(v19);
    }

    v20 = 0;
    v81 = 0;
    v21 = 0;
    v22 = 0xE000000000000000;
    v23 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  v37 = v7;
  v38 = [v7 localizedName];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v39;

  v21 = v37;
  v23 = sub_10008A694();

  v40 = [v21 appTags];
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82[0] = 0x6E6564646968;
  v82[1] = 0xE600000000000000;
  __chkstk_darwin(v42);
  v80[2] = v82;
  v20 = sub_1000882CC(sub_100090520, v80, v41);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = [v21 compatibilityObject];
  v51 = [v50 bundleType];

  if (!v51)
  {
LABEL_7:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:
    v24, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_9;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v54)
  {
    goto LABEL_8;
  }

  if (v52 == v55 && v54 == v24)
  {
    v56 = v24;
    v54, v24, v55, v26, v27, v28, v29, v30;
    v56, v57, v58, v59, v60, v61, v62, v63;
    v20 = 1;
  }

  else
  {
    v64 = v24;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v54, v66, v67, v68, v69, v70, v71, v72;
    v64, v73, v74, v75, v76, v77, v78, v79;
    v20 |= v65;
  }

LABEL_9:
  v31 = objc_opt_self();
  v32 = String._bridgeToObjectiveC()();
  v33 = [objc_opt_self() mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v31 _applicationIconImageForBundleIdentifier:v32 format:2 scale:v35];
  *a3 = v81;
  *(a3 + 8) = v22;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v36;
  *(a3 + 40) = v23;
  *(a3 + 48) = v20 & 1;
}

uint64_t sub_100090520(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100090578()
{
  result = qword_100175DB0;
  if (!qword_100175DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175DB0);
  }

  return result;
}

uint64_t sub_1000905CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100090B80();
  result = Set.init(minimumCapacity:)();
  v20 = result;
  if (v2)
  {
    v4 = (a1 + 51);
    do
    {
      v5 = *(v4 - 11);
      v6 = *(v4 - 19);
      if (*(v4 - 2))
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      if (*(v4 - 1))
      {
        v8 = 0x10000;
      }

      else
      {
        v8 = 0;
      }

      if (*v4)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 | v9;
      v11 = v7 | *(v4 - 3);

      sub_10008D164(v19, v6, v5, v10 | v11);
      v19[1], v12, v13, v14, v15, v16, v17, v18;
      v4 += 24;
      --v2;
    }

    while (v2);
    return v20;
  }

  return result;
}

uint64_t sub_1000906B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10008D014(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_100090750(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_10008D42C(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

void sub_1000908EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000077C8(&qword_100175DC0, &qword_10011DC88);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100090E18(&qword_100175DC8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100090E18(&unk_100175DD0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t sub_100090B80()
{
  result = qword_100175DF0;
  if (!qword_100175DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175DF0);
  }

  return result;
}

uint64_t sub_100090C18(uint64_t a1)
{
  sub_1000077C8(&qword_100175E08, &unk_10011DCB0);

  return sub_10008C5E8(a1);
}

uint64_t sub_100090CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100090CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100175E38, &qword_10011DCD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, &v13, &qword_100175E40, &qword_10011DCE0);
      v5 = v13;
      v6 = v14;
      result = sub_10003EEC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100058DC8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100090E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100090E74(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000077C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100090F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_1000077C8(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

__n128 sub_100090FD8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100090FF4(uint64_t a1, int a2)
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

uint64_t sub_10009103C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000910A0()
{
  result = qword_100175E58;
  if (!qword_100175E58)
  {
    sub_100007CCC(&qword_100175E60, qword_10011DD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E58);
  }

  return result;
}

unint64_t sub_100091108()
{
  result = qword_100175E68;
  if (!qword_100175E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E68);
  }

  return result;
}

unint64_t sub_100091160()
{
  result = qword_100175E70;
  if (!qword_100175E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E70);
  }

  return result;
}

void sub_1000911D0(uint64_t (*a1)(__int128 *), const char *a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v10 = *a3->connection;
  if (v10)
  {
    v11 = a1;
    v12 = 0;
    airDropClient = a3->airDropClient;
    v14 = &_swiftEmptyArrayStorage;
    v28 = a1;
    v29 = a3;
    v27 = v10;
    while (v12 < *v9->connection)
    {
      sub_100007878(airDropClient, v33);
      v15 = v11(v33);
      if (v8)
      {
        sub_100007920(v33);

        goto LABEL_15;
      }

      if (v15)
      {
        sub_1000590D8(v33, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000E4B4(0, *v14->connection + 1, 1);
          v14 = v34;
        }

        v18 = *v14->connection;
        v17 = *v14->airdropClient;
        if (v18 >= v17 >> 1)
        {
          sub_10000E4B4((v17 > 1), v18 + 1, 1);
        }

        v19 = v31;
        v20 = v32;
        v21 = sub_100058CFC(v30, v31);
        v22 = __chkstk_darwin(v21);
        v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24, v22);
        sub_100092C1C(v18, v24, &v34, v19, v20);
        sub_100007920(v30);
        v14 = v34;
        v11 = v28;
        v9 = v29;
        v10 = v27;
      }

      else
      {
        sub_100007920(v33);
      }

      ++v12;
      airDropClient += 40;
      if (v10 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v9, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_100091400(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_100091420, 0, 0);
}

void sub_100091420()
{
  v1 = *(v0[18] + 16);
  v0[19] = v1;
  v2 = *(v1 + 16);
  v0[20] = v2;
  if (v2)
  {
    v0[21] = 0;
    if (*(v1 + 16))
    {
      sub_100007878(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      v0[22] = v3;
      v0[23] = v4;
      sub_1000078DC(v0 + 2, v3);
      v5 = *(v4 + 24);
      v0[24] = swift_getAssociatedTypeWitness();
      v6 = type metadata accessor for Optional();
      v0[25] = v6;
      v0[26] = *(v6 - 8);
      v7 = swift_task_alloc();
      v0[27] = v7;
      v11 = (v5 + *v5);
      v8 = swift_task_alloc();
      v0[28] = v8;
      *v8 = v0;
      v8[1] = sub_100091664;

      v11(v7, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = v0[17];
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v10 = v0[1];

    v10();
  }
}

uint64_t sub_100091664()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100091AF4;
  }

  else
  {
    v2 = sub_100091778;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100091778()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v7 = *(v0 + 136);
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    v8 = sub_100058F84((v0 + 56));
    (*(v3 + 32))(v8, v1, v2);

    sub_1000590D8((v0 + 56), v7);
    sub_100007920((v0 + 16));
    goto LABEL_5;
  }

  (*(*(v0 + 208) + 8))(v1, *(v0 + 200));

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_1000159AC(v0 + 56, &qword_100175FE8, &unk_10011DFF0);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168) + 1;
  sub_100007920((v0 + 16));
  if (v5 == v4)
  {
    v6 = *(v0 + 136);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
LABEL_5:
    v9 = *(v0 + 8);

    v9();
    return;
  }

  v10 = *(v0 + 168) + 1;
  *(v0 + 168) = v10;
  v11 = *(v0 + 152);
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_100007878(v11 + 40 * v10 + 32, v0 + 16);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    *(v0 + 176) = v12;
    *(v0 + 184) = v13;
    sub_1000078DC((v0 + 16), v12);
    v14 = *(v13 + 24);
    *(v0 + 192) = swift_getAssociatedTypeWitness();
    v15 = type metadata accessor for Optional();
    *(v0 + 200) = v15;
    *(v0 + 208) = *(v15 - 8);
    v16 = swift_task_alloc();
    *(v0 + 216) = v16;
    v18 = (v14 + *v14);
    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = sub_100091664;

    v18(v16, v12, v13);
  }
}

void sub_100091AF4()
{
  v33 = v0;

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_10017F350);
  sub_100007878((v0 + 2), (v0 + 12));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v4 = 136315394;
    sub_1000078DC(v0 + 12, v0[15]);
    swift_getDynamicType();
    v7 = _typeName(_:qualified:)();
    v9 = v8;
    sub_100007920(v0 + 12);
    v10 = sub_10003E81C(v7, v9, &v32);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v18;
    *v5 = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieving shareable content from %s: %@", v4, 0x16u);
    sub_1000159AC(v5, &qword_100172EB0, &qword_100119410);

    sub_100007920(v6);
  }

  else
  {

    sub_100007920(v0 + 12);
  }

  v19 = v0[20];
  v20 = v0[21] + 1;
  sub_100007920(v0 + 2);
  if (v20 == v19)
  {
    v21 = v0[17];
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v22 = v0[1];

    v22();
  }

  else
  {
    v23 = v0[21] + 1;
    v0[21] = v23;
    v24 = v0[19];
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_100007878(v24 + 40 * v23 + 32, (v0 + 2));
      v25 = v0[5];
      v26 = v0[6];
      v0[22] = v25;
      v0[23] = v26;
      sub_1000078DC(v0 + 2, v25);
      v27 = *(v26 + 24);
      v0[24] = swift_getAssociatedTypeWitness();
      v28 = type metadata accessor for Optional();
      v0[25] = v28;
      v0[26] = *(v28 - 8);
      v29 = swift_task_alloc();
      v0[27] = v29;
      v31 = (v27 + *v27);
      v30 = swift_task_alloc();
      v0[28] = v30;
      *v30 = v0;
      v30[1] = sub_100091664;

      v31(v29, v25, v26);
    }
  }
}

uint64_t sub_100091F48(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for DeviceLockState();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[29] = v5;
  *v5 = v3;
  v5[1] = sub_10009204C;

  return sub_100091400((v3 + 7));
}

uint64_t sub_10009204C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100092580;
  }

  else
  {
    v2 = sub_100092160;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100092160()
{
  v58 = v0;
  if (*(v0 + 80))
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    sub_1000590D8((v0 + 56), v0 + 16);
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    (*(v4 + 104))(v2, enum case for DeviceLockState.unlocked(_:), v3);
    v5 = static DeviceLockState.== infix(_:_:)();
    v6 = *(v4 + 8);
    v6(v2, v3);
    v6(v1, v3);
    if (v5)
    {
      v7 = *(*(v0 + 192) + 24);
      v8 = swift_task_alloc();
      *(v8 + 16) = v0 + 16;

      sub_1000911D0(sub_100093A2C, v8, v7, v9, v10, v11, v12, v13);
      v15 = v14;

      if (*v15->connection)
      {
        v24 = *(v0 + 176);
        v23 = *(v0 + 184);
        sub_100007878(v0 + 16, v24);
        v31 = sub_1000925EC(v23, v15, v25, v26, v27, v28, v29, v30);
        sub_100007920((v0 + 16));
        *(v24 + 40) = v31;
      }

      else
      {
        v15, v16, v17, v18, v19, v20, v21, v22;
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100007D20(v38, qword_10017F350);
        sub_100007878(v0 + 16, v0 + 96);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v57 = v42;
          *v41 = 136315138;
          sub_100007878(v0 + 96, v0 + 136);
          sub_1000077C8(&qword_100172E68, &qword_100118B30);
          v43 = String.init<A>(reflecting:)();
          v45 = v44;
          sub_100007920((v0 + 96));
          v46 = sub_10003E81C(v43, v45, &v57);
          v45, v47, v48, v49, v50, v51, v52, v53;
          *(v41 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v39, v40, "Could not find any supported actions for shareable content: %s", v41, 0xCu);
          sub_100007920(v42);
        }

        else
        {

          sub_100007920((v0 + 96));
        }

        sub_100007920((v0 + 16));
        v54 = *(v0 + 176);
        v54[1] = 0u;
        v54[2] = 0u;
        *v54 = 0u;
      }
    }

    else
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100007D20(v33, qword_10017F350);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Not returning shareable content because device is locked", v36, 2u);
      }

      v37 = *(v0 + 176);

      sub_100007920((v0 + 16));
      v37[1] = 0u;
      v37[2] = 0u;
      *v37 = 0u;
    }
  }

  else
  {
    v32 = *(v0 + 176);
    sub_1000159AC(v0 + 56, &qword_100175FE8, &unk_10011DFF0);
    *v32 = 0u;
    v32[1] = 0u;
    v32[2] = 0u;
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100092580()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000925EC(unint64_t result, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = result;
  if (!result)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptyArrayStorage;
  }

  if (*a2->connection >= result)
  {
    v10 = result;
  }

  else
  {
    v10 = *a2->connection;
  }

  v47 = &_swiftEmptyArrayStorage;
  sub_10000E4B4(0, v10, 0);
  v18 = &_swiftEmptyArrayStorage;
  v19 = *a2->connection;
  if (!v19)
  {
    a2, v11, v12, v13, v14, v15, v16, v17;
    return v18;
  }

  v20 = 0;
  v43 = a2;
  airDropClient = a2->airDropClient;
  do
  {
    result = sub_100007878(airDropClient, &v44);
    v37 = *v18->connection;
    if (v37 < v9)
    {
      v47 = v18;
      v22 = *v18->airdropClient;
      if (v37 >= v22 >> 1)
      {
        sub_10000E4B4((v22 > 1), v37 + 1, 1);
      }

      v23 = v45;
      v24 = v46;
      v25 = sub_100058CFC(&v44, v45);
      v26 = __chkstk_darwin(v25);
      v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28, v26);
      sub_100092C1C(v37, v28, &v47, v23, v24);
      sub_100007920(&v44);
      v18 = v47;
    }

    else
    {
      if (v20 >= v37)
      {
        __break(1u);
        goto LABEL_27;
      }

      v38 = v18 + 40 * v20;
      sub_100007920(v38 + 4);
      sub_1000590D8(&v44, (v38 + 32));
      if ((v20 + 1) < v9)
      {
        ++v20;
      }

      else
      {
        v20 = 0;
      }
    }

    airDropClient += 40;
    --v19;
  }

  while (v19);
  v43, v30, v31, v32, v33, v34, v35, v36;
  if (!v20)
  {
    return v18;
  }

  v39 = *v18->connection;
  *&v44 = &_swiftEmptyArrayStorage;
  result = sub_10000E4B4(0, v39, 0);
  if (v39 >= v20)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v40 = *v18->connection;
    if (v40 >= v20 && v40 >= v39)
    {

      sub_100092908(v41, v18->airDropClient, v20, (2 * v39) | 1);
      sub_100092908(v18, v18->airDropClient, 0, (2 * v20) | 1);
      return v44;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10009288C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  sub_10002534C(*(v8 + 48), *(v8 + 56));

  return swift_deallocClassInstance();
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_100092908(_TtC9AirDropUI33AirDropTransferSessionsController *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (result)
  {
    v11 = *(v7 + 24) >> 1;
    if (v11 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v12 = v8 + v6;
  }

  else
  {
    v12 = v8;
  }

  result = sub_10000E4B4(result, v12, 1);
  v7 = *v4;
  v11 = *(*v4 + 24) >> 1;
LABEL_12:
  v13 = v11 - *(v7 + 16);
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v14 = a3;
      if (v13)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_41:
        *v4 = v7;
        return result;
      }

LABEL_21:
      v18 = *(v7 + 16);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      sub_100093A94(&v28, &v26);
      while (v27)
      {
        sub_1000159AC(&v26, &qword_100175FF0, qword_10011E008);
        v20 = *(v7 + 24);
        if (v18 + 1 > (v20 >> 1))
        {
          sub_10000E4B4((v20 > 1), v18 + 1, 1);
        }

        v7 = *v4;
        v21 = *(*v4 + 24);
        sub_100093A94(&v28, &v24);
        if (v25)
        {
          if (v18 <= (v21 >> 1))
          {
            v19 = v21 >> 1;
          }

          else
          {
            v19 = v18;
          }

          v22 = v7 + 40 * v18 + 32;
          do
          {
            sub_1000590D8(&v24, &v26);
            if (v19 == v18)
            {
              sub_100007920(&v26);
              v18 = v19;
              goto LABEL_24;
            }

            sub_1000159AC(&v28, &qword_100175FF0, qword_10011E008);
            result = sub_1000590D8(&v26, v22);
            if (v14 == v5)
            {
              v30 = 0;
              v14 = v5;
              v28 = 0u;
              v29 = 0u;
            }

            else
            {
              if (v14 < a3 || v14 >= v5)
              {
                __break(1u);
                goto LABEL_43;
              }

              sub_100007878(a2 + 40 * v14++, &v28);
            }

            sub_100093A94(&v28, &v24);
            v22 += 40;
            ++v18;
          }

          while (v25);
        }

        sub_1000159AC(&v24, &qword_100175FF0, qword_10011E008);
        v19 = v18;
LABEL_24:
        *(v7 + 16) = v19;
        sub_100093A94(&v28, &v26);
      }

      sub_1000159AC(&v28, &qword_100175FF0, qword_10011E008);
      swift_unknownObjectRelease();
      result = sub_1000159AC(&v26, &qword_100175FF0, qword_10011E008);
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (v13 < v6)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  result = swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_20:
    v14 = v5;
    if (v6 != v13)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    *(v7 + 16) = v17;
    goto LABEL_20;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100092C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100058F84(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000590D8(&v12, v10 + 40 * a1 + 32);
}

void *sub_100092CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SendOverAirDropAction(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  v9 = SFLockStateMonitor.init()();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v9;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_10017F350);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = a1;
    *v14 = a1;

    _os_log_impl(&_mh_execute_header, v11, v12, "ShareableContentResolver: Intializing with airDropClient %@", v13, 0xCu);
    sub_1000159AC(v14, &qword_100172EB0, &qword_100119410);
  }

  v3[4] = a2;
  sub_1000077C8(&qword_100175FD0, &qword_10011DFD8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10011DF30;
  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  v18 = [v17 conversationManager];

  *(v15 + 56) = &type metadata for ActiveSharePlaySessionProvider;
  *(v15 + 64) = &off_100177FC8;
  *(v15 + 32) = v18;
  v19 = [objc_allocWithZone(SWShareableContentExtractor) init];
  *(v15 + 96) = sub_100093B04();
  *(v15 + 104) = &off_100177D00;
  *(v15 + 72) = v19;
  *(v15 + 136) = &type metadata for UserActivityShareableContentProvider;
  *(v15 + 144) = &off_100177FA8;
  *(v15 + 176) = &type metadata for FrontmostAppShareableContentProvider;
  *(v15 + 184) = &off_100177F88;
  v3[2] = v15;
  LocalizedStringResource.init(stringLiteral:)();
  *&v8[*(v6 + 20)] = a1;
  sub_1000077C8(&unk_100172A60, &unk_1001187C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10011DF40;
  started = type metadata accessor for StartSharePlayAction(0);
  *(v20 + 56) = started;
  *(v20 + 64) = sub_100093BB8(&qword_100175FF8, type metadata accessor for StartSharePlayAction, &unk_100118AC8);
  v22 = sub_100058F84((v20 + 32));

  LocalizedStringResource.init(stringLiteral:)();
  *(v22 + *(started + 20)) = a2;
  v23 = type metadata accessor for StartNearbySharePlayAction(0);
  *(v20 + 96) = v23;
  *(v20 + 104) = sub_100093BB8(&qword_100176000, type metadata accessor for StartNearbySharePlayAction, &unk_100118AA0);
  v24 = sub_100058F84((v20 + 72));
  LocalizedStringResource.init(stringLiteral:)();
  sub_100093B50(v8, v24 + *(v23 + 20), type metadata accessor for SendOverAirDropAction);
  active = type metadata accessor for AddToActiveSharePlaySessionAction(0);
  *(v20 + 136) = active;
  *(v20 + 144) = sub_100093BB8(&qword_100176008, type metadata accessor for AddToActiveSharePlaySessionAction, &unk_100118A78);
  v26 = sub_100058F84((v20 + 112));

  LocalizedStringResource.init(stringLiteral:)();
  *(v26 + *(active + 20)) = a2;
  v27 = *(active + 24);
  v28 = [v16 sharedInstance];
  v29 = [v28 conversationManager];

  *(v26 + v27) = v29;
  *(v20 + 176) = v6;
  *(v20 + 184) = sub_100093BB8(&unk_100176010, type metadata accessor for SendOverAirDropAction, &unk_100118A50);
  v30 = sub_100058F84((v20 + 152));
  sub_100093B50(v8, v30, type metadata accessor for SendOverAirDropAction);
  v31 = type metadata accessor for StartCollaborationAction(0);
  *(v20 + 216) = v31;
  *(v20 + 224) = sub_100093BB8(&unk_100177900, type metadata accessor for StartCollaborationAction, &unk_100118A28);
  v32 = sub_100058F84((v20 + 192));

  LocalizedStringResource.init(stringLiteral:)();
  *(v32 + *(v31 + 20)) = a2;
  v33 = *(v31 + 24);
  *(v32 + v33) = [objc_allocWithZone(SWShareableContentExtractor) init];
  sub_100093C00(v8, type metadata accessor for SendOverAirDropAction);
  v3[3] = v20;
  return v3;
}

void *sub_1000932A4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v52 = type metadata accessor for ProximityHandoffContentAction(0);
  __chkstk_darwin(v52);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000077C8(&qword_100175FC0, &unk_10011DFC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = (&v47 - v8);
  v9 = sub_1000077C8(&qword_100175FC8, &unk_100120860);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v51 = &v47 - v11;
  v12 = sub_1000077C8(&qword_100177E80, &qword_10011DFD0);
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  v15 = SFLockStateMonitor.init()();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v15;
  v16 = v2;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v56 = v7;
    v22 = v21;
    *v20 = 138412290;
    *(v20 + 4) = a1;
    *v21 = a1;

    _os_log_impl(&_mh_execute_header, v18, v19, "ShareableContentResolver: Intializing with proximityHandoffClient %@", v20, 0xCu);
    sub_1000159AC(v22, &qword_100172EB0, &qword_100119410);
    v7 = v56;
  }

  v56 = a1;

  v23 = v16;
  v16[4] = v55;
  v24 = type metadata accessor for ProximityHandoffInteractionContentProvider(0);
  v25 = swift_allocObject();

  swift_defaultActor_initialize();
  v26 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_stream;
  v55 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_continuation;
  v27 = v48;
  *v48 = 1;
  (*(v7 + 104))(v27, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v6);
  type metadata accessor for SFProximityHandoff.Content();
  v28 = v14;
  v29 = v51;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v27, v6);
  (*(v49 + 32))(v25 + v26, v28, v50);
  (*(v54 + 32))(v25 + v55, v29, v53);
  *(v25 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask) = 0;
  v30 = v23[6];
  v31 = v23[7];
  v23[6] = sub_100093A28;
  v23[7] = v25;

  sub_10002534C(v30, v31);
  sub_1000077C8(&qword_100175FD0, &qword_10011DFD8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001186F0;
  *(v32 + 56) = v24;
  *(v32 + 64) = &off_100177E38;
  *(v32 + 32) = v25;
  v53 = v23;
  v23[2] = v32;
  sub_1000077C8(&qword_100175FD8, &unk_10011DFE0);
  v33 = type metadata accessor for SFProximityHandoff.Content.Action();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v50 = swift_allocObject();
  v37 = v50 + v36;
  v38 = *(v34 + 104);
  v38(v37, enum case for SFProximityHandoff.Content.Action.open(_:), v33);
  v38(v37 + v35, enum case for SFProximityHandoff.Content.Action.send(_:), v33);
  v38(v37 + 2 * v35, enum case for SFProximityHandoff.Content.Action.share(_:), v33);
  v54 = v35;
  v55 = v33;
  v38(v37 + 3 * v35, enum case for SFProximityHandoff.Content.Action.transfer(_:), v33);
  v60 = &_swiftEmptyArrayStorage;
  v51 = v25;

  v39 = 4;
  sub_10000E4B4(0, 4, 0);
  v40 = v60;
  v41 = *(v34 + 16);
  v49 = v37;
  v42 = v52;
  do
  {
    v41(v5 + *(v42 + 20), v37, v55);
    *v5 = v56;
    v60 = v40;
    v44 = *v40->connection;
    v43 = *v40->airdropClient;

    if (v44 >= v43 >> 1)
    {
      sub_10000E4B4((v43 > 1), v44 + 1, 1);
      v40 = v60;
    }

    v58 = v42;
    v59 = sub_100093BB8(&qword_100175FE0, type metadata accessor for ProximityHandoffContentAction, &unk_100118AF0);
    v45 = sub_100058F84(&v57);
    sub_100093B50(v5, v45, type metadata accessor for ProximityHandoffContentAction);
    *v40->connection = v44 + 1;
    sub_1000590D8(&v57, &v40->airDropClient[40 * v44]);
    sub_100093C00(v5, type metadata accessor for ProximityHandoffContentAction);
    v37 += v54;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  result = v53;
  v53[3] = v40;
  return result;
}

uint64_t sub_100093A2C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_1000078DC(a1, v3);
  return (*(v4 + 32))(v2, v3, v4) & 1;
}

uint64_t sub_100093A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100175FF0, qword_10011E008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100093B04()
{
  result = qword_100172B10;
  if (!qword_100172B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100172B10);
  }

  return result;
}

uint64_t sub_100093B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100093BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100093C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100093DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_contactDetails];
  v8 = *(a1 + 80);
  *(v7 + 4) = *(a1 + 64);
  *(v7 + 5) = v8;
  *(v7 + 24) = *(a1 + 96);
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v9;
  v10 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v10;
  v11 = &v3[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  v12 = objc_allocWithZone(CNContactStore);

  sub_100070BB4(a1, v35);
  v13 = [v12 init];
  v14 = String._bridgeToObjectiveC()();
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100118700;
  *(v15 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_1000077C8(&qword_1001751C8, qword_10011E190);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v13 contactForIdentifier:v14 keysToFetch:isa];

  if (v24)
  {
    sub_100094710(a1);
    type metadata accessor for CNSecureContactViewController();
    v25 = [swift_getObjCClassFromMetadata() viewControllerForContact:v24];
    [v25 setDisplayMode:2];
    [v25 setAllowsEditing:1];
    [v25 setActions:260];
    v34.receiver = v3;
    v34.super_class = type metadata accessor for ContactDetailsViewController();
    v26 = v25;
    v27 = objc_msgSendSuper2(&v34, "initWithRootViewController:", v26);
    [v26 setDelegate:v27];

    sub_1000165C4(0, &qword_1001760F0, UIAction_ptr);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = a2;
    v29[4] = a3;

    v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, sub_1000947DC, v29);
    v31 = [v26 navigationItem];

    sub_1000165C4(0, &qword_1001760F8, UIBarButtonItem_ptr);
    v32 = v30;
    v36.value.super.super.isa = v30;
    v36.is_nil = 0;
    v33 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v36, v37).super.super.isa;
    [v31 setLeftBarButtonItem:v33];
  }

  else
  {
    __break(1u);
  }
}

void sub_100094140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_100094314(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_10009440C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100094438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100094480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000944F0()
{
  result = qword_1001760E0;
  if (!qword_1001760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001760E0);
  }

  return result;
}

void sub_100094544()
{
  v1 = *(v0 + 80);
  v7[4] = *(v0 + 64);
  v7[5] = v1;
  v8 = *(v0 + 96);
  v2 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v2;
  v3 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v3;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  objc_allocWithZone(type metadata accessor for ContactDetailsViewController());
  sub_100070BB4(v7, v6);

  sub_100093DC4(v7, v4, v5);
}

uint64_t sub_1000945CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000946BC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100094630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000946BC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100094694(uint64_t a1)
{
  sub_1000946BC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000946BC()
{
  result = qword_1001760E8;
  if (!qword_1001760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001760E8);
  }

  return result;
}

uint64_t sub_100094764(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10009479C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094860(uint64_t a1)
{
  v2 = sub_1000A5548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009489C(uint64_t a1)
{
  v2 = sub_1000A5548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100094900(void *a1)
{
  v2 = sub_1000077C8(&qword_100176348, &qword_10011E3B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000078DC(a1, a1[3]);
  sub_1000A5548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100094A80(void *a1)
{
  v3 = sub_1000077C8(&qword_100176378, &qword_10011E3C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000078DC(a1, a1[3]);
  sub_1000A559C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1000A53A0(&qword_100176380, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NearbySharingInteractionAttributes(0);
    v8[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    sub_1000A53A0(&qword_100176388, &type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.FailureType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100094C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v24 = type metadata accessor for UUID();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000077C8(&qword_100176358, &qword_10011E3C0);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for NearbySharingInteractionAttributes(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v12[v14], 1, 1, v15);
  sub_1000078DC(a1, a1[3]);
  sub_1000A559C();
  v17 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100007920(a1);
    return sub_1000159AC(&v12[v27], &qword_1001780C0, &qword_100120BD0);
  }

  else
  {
    v18 = v22;
    v29 = 0;
    sub_1000A53A0(&qword_100176368, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 32))(v12, v7, v24);
    v28 = 1;
    sub_1000A53A0(&qword_100176370, &type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.FailureType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v9, v25);
    sub_1000478DC(v5, &v12[v27], &qword_1001780C0, &qword_100120BD0);
    sub_1000AB044(v12, v21, type metadata accessor for NearbySharingInteractionAttributes);
    sub_100007920(a1);
    return sub_1000AB0AC(v12, type metadata accessor for NearbySharingInteractionAttributes);
  }
}

uint64_t sub_1000950D0()
{
  if (*v0)
  {
    return 0x546572756C696166;
  }

  else
  {
    return 0x7463617265746E69;
  }
}

void sub_100095120(uint64_t a1@<X0>, _TtC9AirDropUI33AirDropTransferSessionsController *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xED000044496E6F69;
  v13 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x546572756C696166 && a2 == 0xEB00000000657079)
  {
    0xEB00000000657079, 0xEB00000000657079, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_100095208(uint64_t a1)
{
  v2 = sub_1000A559C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095244(uint64_t a1)
{
  v2 = sub_1000A559C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1000952B0()
{
  result = [objc_allocWithZone(type metadata accessor for NearbySharingInteractionCoordinator(0)) init];
  qword_10017F2E8 = result;
  return result;
}

double sub_1000952E4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask))
  {

    Task.cancel()();
  }

  v2 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient);
  if (v4)
  {
    v5 = qword_100172218;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007D20(v6, qword_10017F350);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v4;
      *v10 = v4;

      _os_log_impl(&_mh_execute_header, v7, v8, "Configuring airDropClient: %@", v9, 0xCu);
      sub_1000159AC(v10, &qword_100172EB0, &qword_100119410);
    }

    v11 = *(v1 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider);
    type metadata accessor for ShareableContentResolver();
    swift_allocObject();

    v12 = sub_100092CB4(v4, v11);

    *(v1 + v2) = v12;

    sub_100097AD0(v4, v12);
  }

  return result;
}

double sub_100095544()
{
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask))
  {

    Task.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient);
  if (v2)
  {
    v3 = qword_100172218;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100007D20(v4, qword_10017F350);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v2;
      *v8 = v2;

      _os_log_impl(&_mh_execute_header, v5, v6, "Configuring proximityHandoffClient: %@", v7, 0xCu);
      sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
    }

    sub_100098850(v2);
  }

  return result;
}

void sub_100095714(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v51 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000077C8(&unk_100176410, &qword_10011E528);
  __chkstk_darwin(v66);
  v15 = &v51 - v14;
  v16 = type metadata accessor for NearbySharingInteractionAttributes(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  __chkstk_darwin(v19 - 8);
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  __chkstk_darwin(v23);
  v26 = &v51 - v25;
  if (a1)
  {
    v54 = v24;
    v57 = v15;
    v58 = v8;
    v52 = v3;
    v53 = v2;
    Activity.attributes.getter();
    v27 = *(v12 + 16);
    v27(v26, v18, v11);
    sub_1000AB0AC(v18, type metadata accessor for NearbySharingInteractionAttributes);
    v56 = v12;
    v28 = *(v12 + 56);
    v29 = 1;
    v28(v26, 0, 1, v11);
    if (*&v67[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity])
    {

      Activity.attributes.getter();

      v27(v22, v18, v11);
      sub_1000AB0AC(v18, type metadata accessor for NearbySharingInteractionAttributes);
      v29 = 0;
    }

    v28(v22, v29, 1, v11);
    v30 = *(v66 + 48);
    v31 = v57;
    sub_100007BA4(v26, v57, &qword_100172F08, &unk_10011E530);
    sub_100007BA4(v22, v31 + v30, &qword_100172F08, &unk_10011E530);
    v32 = v56;
    v33 = *(v56 + 48);
    if (v33(v31, 1, v11) == 1)
    {
      sub_1000159AC(v22, &qword_100172F08, &unk_10011E530);
      sub_1000159AC(v26, &qword_100172F08, &unk_10011E530);
      v34 = v33(v31 + v30, 1, v11);
      v35 = v58;
      if (v34 == 1)
      {
        sub_1000159AC(v31, &qword_100172F08, &unk_10011E530);
        return;
      }
    }

    else
    {
      v36 = v54;
      sub_100007BA4(v31, v54, &qword_100172F08, &unk_10011E530);
      v37 = v33(v31 + v30, 1, v11);
      v35 = v58;
      if (v37 != 1)
      {
        v48 = v55;
        (*(v32 + 32))(v55, v31 + v30, v11);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50 = *(v32 + 8);
        v50(v48, v11);
        sub_1000159AC(v22, &qword_100172F08, &unk_10011E530);
        sub_1000159AC(v26, &qword_100172F08, &unk_10011E530);
        v50(v54, v11);
        sub_1000159AC(v31, &qword_100172F08, &unk_10011E530);
        v38 = v67;
        if (v49)
        {
          return;
        }

        goto LABEL_10;
      }

      sub_1000159AC(v22, &qword_100172F08, &unk_10011E530);
      sub_1000159AC(v26, &qword_100172F08, &unk_10011E530);
      (*(v32 + 8))(v36, v11);
    }

    sub_1000159AC(v31, &unk_100176410, &qword_10011E528);
    v38 = v67;
LABEL_10:
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v40 = v59;
    + infix(_:_:)();
    v41 = v61;
    v67 = *(v60 + 8);
    (v67)(v35, v61);
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    aBlock[4] = sub_1000AAA60;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106B40;
    aBlock[3] = &unk_10015FCD0;
    v43 = _Block_copy(aBlock);
    v44 = v38;

    v45 = v62;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000A53A0(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000077C8(&unk_100176420, &unk_10011D928);
    sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928, &protocol conformance descriptor for [A]);
    v46 = v64;
    v47 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v43);

    (*(v52 + 8))(v46, v47);
    (*(v63 + 8))(v45, v65);
    (v67)(v40, v41);
  }
}

id sub_100096044()
{
  v1 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener;
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener);
  }

  else
  {
    v4 = objc_allocWithZone(IMSPICollaborationMessageListener);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithListenerID:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1000960EC()
{
  v1 = sub_1000077C8(&qword_100176560, &qword_10011E788);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity] = 0;
  v5 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator__airDropNearbySharingInteractionViewModelsByID;
  v27[0] = sub_1000A8654(&_swiftEmptyArrayStorage, &qword_1001763C8, &unk_10011E4D0, &qword_100173CE8, &unk_10011A380);
  sub_1000077C8(&qword_1001761B0, &unk_10011E1F0);
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator__proximityHandoffNearbySharingInteractionViewModelsByID;
  v27[0] = sub_1000A8654(&_swiftEmptyArrayStorage, &qword_1001763C8, &unk_10011E4D0, &qword_100173CE8, &unk_10011A380);
  Published.init(initialValue:)();
  v6(&v0[v7], v4, v1);
  v8 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  *&v0[v8] = sub_1000A8654(&_swiftEmptyArrayStorage, &qword_1001764D8, &qword_10011E5E8, &qword_100173D00, &unk_10011E7B0);
  v9 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
  *&v0[v9] = sub_1000A8654(&_swiftEmptyArrayStorage, &unk_100176580, &unk_10011E7A0, &qword_100173D08, &qword_10011A390);
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask] = 0;
  v10 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  *&v0[v10] = sub_1000A8834(&_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener] = 0;
  v11 = [objc_allocWithZone(CNContactStore) init];
  v27[3] = sub_1000165C4(0, &qword_100176568, CNContactStore_ptr);
  v27[4] = &off_10015F278;
  v27[0] = v11;
  type metadata accessor for ContactDetailsProvider();
  v12 = swift_allocObject();
  sub_100007878(v27, v12 + 16);
  v13 = [objc_opt_self() sharedManager];
  sub_100007920(v27);
  *(v12 + 56) = v13;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider] = v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 conversationManager];

  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager] = v15;
  v16 = type metadata accessor for NearbySharingInteractionCoordinator(0);
  v26.receiver = v0;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "init");
  v18 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager;
  v19 = *&v17[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager];
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v20 = v17;
  v21 = v19;
  v22 = static OS_dispatch_queue.main.getter();
  [v21 addDelegate:v20 queue:v22];

  [*&v17[v18] registerWithCompletionHandler:0];
  v23 = sub_100096044();
  [v23 setDelegate:v20];

  [*&v20[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener] startListening];
  return v20;
}

id sub_100096548()
{
  if (*&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask])
  {

    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask])
  {

    Task.cancel()();
  }

  v1 = sub_100096044();
  [v1 stopListening];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NearbySharingInteractionCoordinator(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000967D8(uint64_t a1)
{
  sub_1000A38EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000968A8(void *a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009DBB0(a1, a2);
  if (v11)
  {
    v33 = v11;
    if (sub_100054568() == 1)
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100007D20(v12, qword_10017F350);
      v13 = v33;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = v33;
        *v16 = 136315138;
        (*(v8 + 16))(v10, v13 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v7);
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v8 + 8))(v10, v7);
        v20 = sub_10003E81C(v17, v19, &v34);
        v19, v21, v22, v23, v24, v25, v26, v27;
        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Ending nearby sharing interaction with ID: %s due to ActivityKit scene disconnecting", v16, 0xCu);
        sub_100007920(v33);
      }

      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      type metadata accessor for MainActor();
      v29 = v13;
      v30 = static MainActor.shared.getter();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = &protocol witness table for MainActor;
      v31[4] = v29;
      sub_1000F9860(0, 0, v6, &unk_10011E780, v31);
    }

    else
    {
      v32 = v33;
    }
  }
}

uint64_t sub_100096C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AC24C, v6, v5);
}

void sub_100096D04(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v60 = sub_1000077C8(&qword_100173F38, &qword_10011E770);
  __chkstk_darwin(v60);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v59 - v10;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v1;
  static Published.subscript.getter();

  v14 = v64;
  sub_1000F94B4(v64, v7);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v7, 1, v22) == 1)
  {
    sub_1000159AC(v7, &qword_1001763D8, &unk_10011E4E0);
    v24 = type metadata accessor for SFNearbySharingInteraction();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  }

  else
  {
    v25 = *&v7[*(v22 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = type metadata accessor for SFNearbySharingInteraction();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v28(v13, 0, 1, v26);
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 8))(v7, v29);
    if ((*(v27 + 48))(v13, 1, v26) != 1)
    {
      v39 = v62;
      (*(v27 + 32))(v62, v13, v26);
      v28(v39, 0, 1, v26);
      v42 = v63;
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = v64;
  sub_1000F94B4(v64, v4);
  v30, v31, v32, v33, v34, v35, v36, v37;
  if (v23(v4, 1, v22) == 1)
  {
    sub_1000159AC(v4, &qword_1001763D8, &unk_10011E4E0);
    v38 = type metadata accessor for SFNearbySharingInteraction();
    v39 = v62;
    (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
  }

  else
  {
    v40 = *&v4[*(v22 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v62;
    static Published.subscript.getter();

    v38 = type metadata accessor for SFNearbySharingInteraction();
    (*(*(v38 - 8) + 56))(v39, 0, 1, v38);
    v41 = type metadata accessor for UUID();
    (*(*(v41 - 8) + 8))(v4, v41);
  }

  v42 = v63;
  type metadata accessor for SFNearbySharingInteraction();
  if ((*(*(v38 - 8) + 48))(v13, 1, v38) != 1)
  {
    sub_1000159AC(v13, &qword_100173F38, &qword_10011E770);
  }

LABEL_10:
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100007D20(v43, qword_10017F350);
  sub_100007BA4(v39, v42, &qword_100173F38, &qword_10011E770);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v64 = v47;
    *v46 = 136315138;
    sub_100007BA4(v42, v59, &qword_100173F38, &qword_10011E770);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    sub_1000159AC(v42, &qword_100173F38, &qword_10011E770);
    v51 = sub_10003E81C(v48, v50, &v64);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "currentNearbySharingInteraction: %s", v46, 0xCu);
    sub_100007920(v47);
  }

  else
  {

    sub_1000159AC(v42, &qword_100173F38, &qword_10011E770);
  }
}

void sub_100097458(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  __chkstk_darwin(v50);
  v49 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v52 = &v48 - v3;
  v4 = type metadata accessor for SFNearbySharingInteraction.Kind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFNearbySharingInteraction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v53;
  sub_1000F94B4(v53, v14);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  if ((*(*(v23 - 8) + 48))(v14, 1, v23) == 1)
  {
    sub_1000159AC(v14, &qword_1001763D8, &unk_10011E4E0);
    v24 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v25 = v51;
    (*(*(v24 - 8) + 56))(v51, 1, 1, v24);
    v26 = v52;
  }

  else
  {
    v27 = *&v14[*(v23 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    SFNearbySharingInteraction.kind.getter();
    (*(v9 + 8))(v11, v8);
    if ((*(v5 + 88))(v7, v4) == enum case for SFNearbySharingInteraction.Kind.airDrop(_:))
    {
      (*(v5 + 96))(v7, v4);
      v28 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
      v29 = *(v28 - 8);
      v25 = v51;
      (*(v29 + 32))(v51, v7, v28);
      (*(v29 + 56))(v25, 0, 1, v28);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
      v25 = v51;
      (*(*(v30 - 8) + 56))(v51, 1, 1, v30);
    }

    v26 = v52;
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 8))(v14, v31);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100007D20(v32, qword_10017F350);
  sub_100007BA4(v25, v26, &unk_100176550, &qword_10011E720);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53 = v36;
    *v35 = 136315138;
    sub_100007BA4(v26, v49, &unk_100176550, &qword_10011E720);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    sub_1000159AC(v26, &unk_100176550, &qword_10011E720);
    v40 = sub_10003E81C(v37, v39, &v53);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "currentAirDropNearbySharingInteraction: %s", v35, 0xCu);
    sub_100007920(v36);
  }

  else
  {

    sub_1000159AC(v26, &unk_100176550, &qword_10011E720);
  }
}

double sub_100097AD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a1;
  v12[5] = v10;
  v12[6] = a2;

  *(v3 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask) = sub_1000F9860(0, 0, v8, &unk_10011E708, v12);

  return result;
}

uint64_t sub_100097C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1000077C8(&qword_100176538, &qword_10011E710);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[14] = v8;
  v6[15] = type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[17] = v9;
  *v9 = v6;
  v9[1] = sub_100097D98;

  return SFAirDropClient.nearbySharingInteractions()(v8);
}

uint64_t sub_100097D98()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_100098674;
  }

  else
  {
    v5 = sub_100097EF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100097EF8(__n128 a1)
{
  v1[6] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v1[21] = static MainActor.shared.getter();
  v2 = sub_1000077C8(&qword_100176540, &qword_10011E718);
  v3 = sub_1000199C8(&qword_100176548, &qword_100176540, &qword_10011E718, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
  v4 = swift_task_alloc();
  v1[22] = v4;
  *v4 = v1;
  v4[1] = sub_100098028;

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 7, v2, v3);
}

uint64_t sub_100098028()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000983D4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000981C0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000981C0()
{

  v0[24] = v0[7];
  v1 = v0[19];
  v2 = v0[20];

  return _swift_task_switch(sub_10009822C, v1, v2);
}

uint64_t sub_10009822C()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_1000996A8(v1, *(v0 + 72), *(v0 + 88));
    }

    v1, v3, v4, v5, v6, v7, v8, v9;
    *(v0 + 168) = static MainActor.shared.getter();
    v11 = sub_1000077C8(&qword_100176540, &qword_10011E718);
    v12 = sub_1000199C8(&qword_100176548, &qword_100176540, &qword_10011E718, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_100098028;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 56, v11, v12);
  }

  else
  {
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);

    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1000983D4()
{
  v0[8] = v0[23];
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  v1 = v0[19];
  v2 = v0[20];

  return _swift_task_switch(sub_100098470, v1, v2);
}

uint64_t sub_100098470()
{
  v24 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_10017F350);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = sub_10003E81C(v10, v11, &v23);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error registering for updates to nearby sharing interactions: %s", v8, 0xCu);
    sub_100007920(v9);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100098674()
{
  v21 = v0;

  v1 = v0[18];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    v10 = sub_10003E81C(v7, v8, &v20);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error registering for updates to nearby sharing interactions: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

double sub_100098850(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  v10[5] = v8;

  *(v2 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask) = sub_1000F9860(0, 0, v6, &unk_10011E6E0, v10);

  return result;
}

uint64_t sub_1000989CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_1000077C8(&unk_100176518, &unk_10011E6E8);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[16] = v7;
  v5[17] = type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v10 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions() + async function pointer to dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions());
  v8 = swift_task_alloc();
  v5[19] = v8;
  *v8 = v5;
  v8[1] = sub_100098B0C;

  return v10(v7);
}

uint64_t sub_100098B0C()
{
  v2 = *v1;
  v2[20] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v4;
  v2[22] = v3;
  if (v0)
  {
    v5 = sub_1000994CC;
  }

  else
  {
    v5 = sub_100098C6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100098C6C(__n128 a1)
{
  v1[9] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v1[23] = static MainActor.shared.getter();
  v2 = sub_1000077C8(&qword_100176528, &qword_10011E6F8);
  v3 = sub_1000199C8(&qword_100176530, &qword_100176528, &qword_10011E6F8, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
  v4 = swift_task_alloc();
  v1[24] = v4;
  *v4 = v1;
  v4[1] = sub_100098D98;

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 10, v2, v3);
}

uint64_t sub_100098D98()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10009922C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100098F30;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100098F30()
{

  v0[26] = v0[10];
  v1 = v0[21];
  v2 = v0[22];

  return _swift_task_switch(sub_100098F9C, v1, v2);
}

uint64_t sub_100098F9C()
{
  v1 = v0[26];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_10009A9D8(v1, v0[12]);
    }

    v1, v3, v4, v5, v6, v7, v8, v9;
    v0[23] = static MainActor.shared.getter();
    v11 = sub_1000077C8(&qword_100176528, &qword_10011E6F8);
    v12 = sub_1000199C8(&qword_100176530, &qword_100176528, &qword_10011E6F8, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_100098D98;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 10, v11, v12);
  }

  else
  {

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100007D20(v14, qword_10017F350);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "@@@ Proximity handoff interactions stream finished", v17, 2u);
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_10009A9D8(&_swiftEmptyArrayStorage, v0[12]);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10009922C()
{
  v0[11] = v0[25];
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  v1 = v0[21];
  v2 = v0[22];

  return _swift_task_switch(sub_1000992C8, v1, v2);
}

uint64_t sub_1000992C8()
{
  v24 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_10017F350);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[8] = v4;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = sub_10003E81C(v10, v11, &v23);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error registering for updates to proximity handoff interactions: %s", v8, 0xCu);
    sub_100007920(v9);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000994CC()
{
  v21 = v0;

  v1 = v0[20];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v0[8] = v1;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    v10 = sub_10003E81C(v7, v8, &v20);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error registering for updates to proximity handoff interactions: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

void sub_1000996A8(_TtC9AirDropUI33AirDropTransferSessionsController *a1, void (*a2)(void, void), void *a3)
{
  v4 = v3;
  v139 = a3;
  v141 = a2;
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v6 - 8);
  v121 = v116 - v7;
  v120 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v123 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v8;
  __chkstk_darwin(v9);
  v117 = v116 - v10;
  v135 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v162 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v116 - v13;
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v147 = *(v15 - 8);
  __chkstk_darwin(v15);
  v138 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v154 = *(v17 - 8);
  __chkstk_darwin(v17);
  v143 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for SFNearbySharingInteraction();
  v150 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for UUID();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v161 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v116 - v22;
  v137 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v24 = *(v137 - 8);
  __chkstk_darwin(v137);
  v156 = v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v164 = v116 - v27;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100007D20(v28, qword_10017F350);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  a1, v31, v32, v33, v34, v35, v36, v37;
  LODWORD(v163) = v30;
  v38 = os_log_type_enabled(v29, v30);
  v134 = v14;
  v142 = v17;
  v160 = v15;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v40 = a1;
    v41 = v165;
    *v39 = 136315138;
    v42 = v137;
    v43 = Array.description.getter();
    v45 = v44;
    v46 = sub_10003E81C(v43, v44, &v165);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v29, v163, "AirDrop nearby sharing interactions changed: %s", v39, 0xCu);
    sub_100007920(v41);
    a1 = v40;

    v54 = v138;
  }

  else
  {

    v54 = v138;
    v42 = v137;
  }

  v124 = a1;
  v55 = *a1->connection;
  v56 = v164;
  if (v55)
  {
    v58 = *(v24 + 16);
    v57 = v24 + 16;
    v163 = v58;
    v59 = v124 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
    v60 = *(v57 + 56);
    ++v151;
    v152 = v60;
    ++v150;
    v148 = (v57 - 8);
    v149 = (v147 + 88);
    v133 = (v147 + 8);
    v132 = (v147 + 96);
    v131 = (v154 + 32);
    v130 = (v162 + 104);
    v129 = (v162 + 8);
    LODWORD(v147) = enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:);
    v128 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:);
    v126 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:);
    v125 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:);
    v127 = (v154 + 8);
    v116[3] = "v52@0:8@16@24@32C40@44";
    v116[2] = v123 + 16;
    v116[1] = v123 + 32;
    v122 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
    v116[0] = v123 + 8;
    v154 = v23;
    v155 = v4;
    v153 = v57;
    while (1)
    {
      v162 = v55;
      v163(v56, v59, v42);
      SFAirDrop.NearbySharingInteraction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v68 = v165;
      if (*v165->connection && (v69 = sub_10003EDEC(v23), (v61 & 1) != 0))
      {
        v70 = *v151;
        v71 = *(*v68->nearbySharingInteractionCoordinator + 8 * v69);
        v70(v23, v157);
        v56 = v164;
        v68, v72, v73, v74, v75, v76, v77, v78;
      }

      else
      {
        v68, v61, v62, v63, v64, v65, v66, v67;
        (*v151)(v23, v157);
        v71 = sub_10009E25C(v56, v141, v139);
        sub_1000A34D0();
      }

      v163(v156, v56, v42);
      v79 = v71;
      v80 = v158;
      SFNearbySharingInteraction.init(_:)();
      sub_10004EB14(v80);
      (*v150)(v80, v159);
      v81 = v161;
      SFAirDrop.NearbySharingInteraction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v82 = v79;
      v83 = static Published.subscript.modify();
      sub_1000271C8(v71, v81);
      v83(&v165, 0);
      v56 = v164;

      SFAirDrop.NearbySharingInteraction.state.getter();
      v84 = v160;
      v85 = (*v149)(v54, v160);
      if (v85 == v147)
      {
        break;
      }

      (*v148)(v56, v42);

      (*v133)(v54, v84);
      v23 = v154;
LABEL_9:
      v59 += v152;
      v55 = v162 - 1;
      if (v162 == 1)
      {
        goto LABEL_27;
      }
    }

    v145 = v82;
    v146 = v59;
    (*v132)(v54, v84);
    v86 = v143;
    v87 = v142;
    (*v131)(v143, v54, v142);
    v88 = v134;
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    v89 = v136;
    v90 = v135;
    v140 = *v130;
    v140(v136, v128, v135);
    v144 = sub_1000A53A0(&qword_100176508, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    v91 = dispatch thunk of static Equatable.== infix(_:_:)();
    v92 = *v129;
    (*v129)(v89, v90);
    v92(v88, v90);
    if (v91)
    {
      v93 = v145;

      (*v127)(v86, v87);
    }

    else
    {
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v94 = v140;
      v140(v89, v126, v90);
      v95 = dispatch thunk of static Equatable.== infix(_:_:)();
      v92(v89, v90);
      v92(v88, v90);
      if ((v95 & 1) == 0)
      {
        SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
        v94(v89, v125, v90);
        v97 = dispatch thunk of static Equatable.== infix(_:_:)();
        v92(v89, v90);
        v92(v88, v90);
        v23 = v154;
        if (v97)
        {
          v98 = v145;

          (*v127)(v143, v142);
          v99 = *v148;
          v56 = v164;
        }

        else
        {
          v100 = v94;
          v101 = v143;
          SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
          v100(v89, v122, v90);
          LOBYTE(v100) = dispatch thunk of static Equatable.== infix(_:_:)();
          v92(v89, v90);
          v92(v88, v90);
          (*v127)(v101, v142);
          if (v100)
          {
            v56 = v164;
            v42 = v137;
            (*v148)(v164, v137);
            v102 = v145;

            goto LABEL_26;
          }

          SFAirDrop.NearbySharingInteraction.id.getter();
          v103 = v117;
          SFAirDrop.NearbySharingAssertionRequest.init(nearbySharingInteractionID:explanation:)();
          v104 = type metadata accessor for TaskPriority();
          v105 = v121;
          (*(*(v104 - 8) + 56))(v121, 1, 1, v104);
          v106 = v123;
          v107 = v118;
          v108 = v120;
          (*(v123 + 16))(v118, v103, v120);
          v109 = (*(v106 + 80) + 48) & ~*(v106 + 80);
          v110 = swift_allocObject();
          *(v110 + 2) = 0;
          *(v110 + 3) = 0;
          v111 = v145;
          v112 = v141;
          *(v110 + 4) = v145;
          *(v110 + 5) = v112;
          (*(v106 + 32))(&v110[v109], v107, v108);
          v113 = v111;

          sub_1000E1D28(0, 0, v105, &unk_10011E6C0, v110);

          v56 = v164;

          (*(v106 + 8))(v103, v108);
          v99 = *v148;
        }

        v42 = v137;
        v99(v56, v137);
        goto LABEL_26;
      }

      v96 = v145;

      (*v127)(v143, v142);
    }

    v56 = v164;
    v42 = v137;
    (*v148)(v164, v137);
    v23 = v154;
LABEL_26:
    v54 = v138;
    v59 = v146;
    goto LABEL_9;
  }

LABEL_27:
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = static Published.subscript.modify();
  sub_10009B0CC(v124, v115);
  v114(&v165, 0);

  sub_10009C78C();
}

uint64_t sub_10009A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_10009A810;

  return SFAirDropClient.takeNearbySharingAssertion(for:)(v8, a6);
}

uint64_t sub_10009A810()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000AC278;
  }

  else
  {
    v2 = sub_10009A924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009A924()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID;
  swift_beginAccess();
  sub_1000478DC(v2, v1 + v3, &qword_100172F08, &unk_10011E530);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

void sub_10009A9D8(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2)
{
  v79 = a2;
  v90 = type metadata accessor for SFNearbySharingInteraction();
  v3 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UUID();
  v5 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v91 = type metadata accessor for SFProximityHandoff.Interaction();
  v96 = *(v91 - 8);
  __chkstk_darwin(v91);
  v86 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100007D20(v14, qword_10017F350);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  a1, v17, v18, v19, v20, v21, v22, v23;
  if (os_log_type_enabled(v15, v16))
  {
    v24 = swift_slowAlloc();
    v95 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v97[0] = v26;
    *v25 = 136315138;
    v27 = Array.description.getter();
    v29 = v28;
    v30 = v3;
    v31 = sub_10003E81C(v27, v28, v97);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v25 + 4) = v31;
    v3 = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "Proximity handoff interactions changed: %s", v25, 0xCu);
    sub_100007920(v26);

    v5 = v95;
  }

  v77 = a1;
  v39 = *a1->connection;
  v40 = v94;
  v41 = v91;
  if (v39)
  {
    v78 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider;
    v95 = *(v96 + 16);
    v42 = v77 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v43 = *(v96 + 72);
    v82 = (v5 + 8);
    v83 = v43;
    v96 += 16;
    v80 = (v96 - 8);
    v81 = (v3 + 8);
    v84 = v13;
    v85 = v9;
    do
    {
      v93 = v42;
      v94 = v39;
      v95(v13);
      SFProximityHandoff.Interaction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v54 = v97[0];
      if (*(v97[0] + 16) && (v55 = sub_10003EDEC(v9), (v47 & 1) != 0))
      {
        v56 = *v82;
        v57 = *(*v54->nearbySharingInteractionCoordinator + 8 * v55);
        v56(v9, v88);
        v54, v58, v59, v60, v61, v62, v63, v64;
        v13 = v84;
      }

      else
      {
        v54, v47, v48, v49, v50, v51, v52, v53;
        (*v82)(v9, v88);
        v65 = *(v40 + v78);
        type metadata accessor for ShareableContentResolver();
        swift_allocObject();

        v66 = v79;

        v68 = sub_1000932A4(v67, v65);

        v13 = v84;
        v57 = sub_10009F284(v84, v66, v68);
        sub_1000A34D0();
      }

      (v95)(v86, v13, v41);
      v92 = v57;
      v69 = v57;
      v70 = v89;
      SFNearbySharingInteraction.init(_:)();
      sub_10004EB14(v70);
      (*v81)(v70, v90);
      v71 = *&v69[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver];
      v72 = *(v71 + 48);
      if (v72)
      {
        v73 = *(v71 + 56);

        v72(v13);
        sub_10002534C(v72, v73);
      }

      v44 = v87;
      SFProximityHandoff.Interaction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v45 = v69;
      v46 = static Published.subscript.modify();
      sub_1000271C8(v92, v44);
      v46(v97, 0);

      v41 = v91;
      (*v80)(v13, v91);
      v42 = &v93[v83];
      v39 = v94 - 1;
      v9 = v85;
    }

    while (v94 != 1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = static Published.subscript.modify();
  sub_10009BC2C(v77, v75);
  v74(v97, 0);

  sub_10009C78C();
}

void sub_10009B0CC(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController **a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v132 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v128 - v7;
  v144 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v8 = *(v144 - 1);
  __chkstk_darwin(v144);
  v143 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v133 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v128 - v14;
  __chkstk_darwin(v16);
  v129 = &v128 - v17;
  __chkstk_darwin(v18);
  v142 = &v128 - v19;
  __chkstk_darwin(v20);
  v22 = *(a1 + 16);
  v23 = &_swiftEmptyArrayStorage;
  v134 = a2;
  v139 = v11;
  if (v22)
  {
    v24 = &v128 - v21;
    v150 = &_swiftEmptyArrayStorage;
    sub_10000E514(0, v22, 0);
    v23 = v150;
    nearbySharingInteractionCoordinator = *(v8 + 16);
    v141 = (v8 + 16);
    v25 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    v27 = (v8 + 8);
    userNotificationsCenter = (v11 + 32);
    v137 = v26;
    do
    {
      v28 = v143;
      v29 = v144;
      (nearbySharingInteractionCoordinator)(v143, v25, v144);
      sub_1000A53A0(&qword_100176510, &type metadata accessor for SFAirDrop.NearbySharingInteraction, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
      dispatch thunk of Identifiable.id.getter();
      (*v27)(v28, v29);
      v150 = v23;
      v31 = *v23->connection;
      v30 = *v23->airdropClient;
      if (v31 >= v30 >> 1)
      {
        sub_10000E514((v30 > 1), v31 + 1, 1);
        v23 = v150;
      }

      *v23->connection = v31 + 1;
      v11 = v139;
      (*(v139 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v24, v10);
      v25 += v137;
      --v22;
    }

    while (v22);
    a2 = v134;
  }

  v32 = sub_100090750(v23);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = *a2;
  v41 = *(*a2)->userNotificationsCenter;
  userNotificationsCenter = (*a2)->userNotificationsCenter;
  v42 = 1 << v40->airDropClient[0];
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v41;
  v131 = (v42 + 63) >> 6;
  nearbySharingInteractionCoordinator = v32->nearbySharingInteractionCoordinator;
  v141 = v32;
  v143 = (v11 + 16);
  v144 = (v11 + 8);
  v128 = (v11 + 32);
  swift_bridgeObjectRetain_n();
  v45 = 0;
  v46 = &_swiftEmptyArrayStorage;
  v130 = v40;
  while (1)
  {
    v137 = v46;
    if (!v44)
    {
      break;
    }

    v47 = v45;
    v48 = v139;
LABEL_18:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = *(v48 + 72);
    v51 = *(v48 + 16);
    v51(v142, *v40->interventionTasks + v50 * (v49 | (v47 << 6)), v10);
    if (*v141->connection && (v52 = v141, sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v53 = dispatch thunk of Hashable._rawHashValue(seed:)(), v54 = -1 << v52->airDropClient[0], v55 = v53 & ~v54, ((*&nearbySharingInteractionCoordinator[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) != 0))
    {
      v56 = ~v54;
      while (1)
      {
        v51(v15, *v141->interventionTasks + v55 * v50, v10);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *v144;
        (*v144)(v15, v10);
        if (v57)
        {
          break;
        }

        v55 = (v55 + 1) & v56;
        if (((*&nearbySharingInteractionCoordinator[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v58(v142, v10);
      v45 = v47;
      v40 = v130;
      v46 = v137;
    }

    else
    {
LABEL_23:
      v59 = *v128;
      (*v128)(v129, v142, v10);
      v46 = v137;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E514(0, *v46->connection + 1, 1);
        v46 = v150;
      }

      v62 = *v46->connection;
      v61 = *v46->airdropClient;
      if (v62 >= v61 >> 1)
      {
        sub_10000E514((v61 > 1), v62 + 1, 1);
        v46 = v150;
      }

      *v46->connection = v62 + 1;
      v59(v46 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + v62 * v50, v129, v10);
      v45 = v47;
      v40 = v130;
    }
  }

  v48 = v139;
  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return;
    }

    if (v47 >= v131)
    {
      break;
    }

    v44 = *&userNotificationsCenter[8 * v47];
    ++v45;
    if (v44)
    {
      goto LABEL_18;
    }
  }

  v141, v63, v64, v65, v66, v67, v68, v69;
  v77 = *v46->connection;
  if (v77)
  {
    v78 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    v79 = v48;
    v80 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v81 = *(v79 + 72);
    v141 = *(v79 + 16);
    v142 = v81;
    v82 = v40;
    v84 = v133;
    v83 = v134;
    v139 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    (v141)(v133, v80, v10);
    while (1)
    {
      v93 = v138;
      swift_beginAccess();
      v94 = sub_10003EDEC(v84);
      if (v95)
      {
        v96 = v94;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v98 = *(v93 + v78);
        v145 = v98;
        *(v93 + v78) = 0x8000000000000000;
        if (!v97)
        {
          sub_100042430();
          v98 = v145;
        }

        (*v144)(*(v98 + 48) + v96 * v142, v10);
        *(*(v98 + 56) + 8 * v96), v99, v100, v101, v102, v103, v104, v105;
        sub_100040F48(v96, v98);
        *(v93 + v78) = v98;
      }

      swift_endAccess();
      if (*v82->connection && (v106 = sub_10003EDEC(v84), (v107 & 1) != 0))
      {
        v108 = *(*v82->nearbySharingInteractionCoordinator + 8 * v106);
        v109 = type metadata accessor for TaskPriority();
        v110 = *(v109 - 8);
        v111 = v135;
        (*(v110 + 56))(v135, 1, 1, v109);
        type metadata accessor for MainActor();
        v112 = v108;
        v113 = static MainActor.shared.getter();
        v114 = swift_allocObject();
        v114[2] = v113;
        v114[3] = &protocol witness table for MainActor;
        v114[4] = v112;
        nearbySharingInteractionCoordinator = v112;
        v115 = v132;
        sub_100007BA4(v111, v132, &qword_100172F50, &qword_10011E500);
        LODWORD(v112) = (*(v110 + 48))(v115, 1, v109);

        if (v112 == 1)
        {
          sub_1000159AC(v115, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v110 + 8))(v115, v109);
        }

        v117 = v114[2];
        swift_unknownObjectRetain();

        v116 = nearbySharingInteractionCoordinator;
        if (v117)
        {
          swift_getObjectType();
          v118 = dispatch thunk of Actor.unownedExecutor.getter();
          v120 = v119;
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0;
          v120 = 0;
        }

        v78 = v139;
        sub_1000159AC(v135, &qword_100172F50, &qword_10011E500);
        v121 = swift_allocObject();
        *(v121 + 16) = &unk_10011E6C8;
        *(v121 + 24) = v114;
        if (v120 | v118)
        {
          v146 = 0;
          v147 = 0;
          v148 = v118;
          v149 = v120;
        }

        v84 = v133;
        swift_task_create();

        v83 = v134;
      }

      else
      {
        v116 = 0;
      }

      v122 = sub_10003EDEC(v84);
      if (v123)
      {
        v124 = v122;
        nearbySharingInteractionCoordinator = v77;
        v125 = v116;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v82 = *v83;
        v150 = *v83;
        if (!v126)
        {
          sub_1000421BC();
          v82 = v150;
        }

        v92 = v142;
        v127 = *v144;
        (*v144)(*v82->interventionTasks + v124 * v142, v10);

        sub_1000482FC(v124, v82);
        v127(v84, v10);
        *v83 = v82;
        v78 = v139;
        v77 = nearbySharingInteractionCoordinator;
      }

      else
      {

        (*v144)(v84, v10);
        v92 = v142;
      }

      v80 = &v92[v80];
      if (!--v77)
      {
        break;
      }

      (v141)(v84, v80, v10);
    }

    v130, v85, v86, v87, v88, v89, v90, v91;
  }

  else
  {
    v40, v70, v71, v72, v73, v74, v75, v76;
  }
}

void sub_10009BC2C(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController **a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v132 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v128 - v7;
  v144 = type metadata accessor for SFProximityHandoff.Interaction();
  v8 = *(v144 - 1);
  __chkstk_darwin(v144);
  v143 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v133 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v128 - v14;
  __chkstk_darwin(v16);
  v129 = &v128 - v17;
  __chkstk_darwin(v18);
  v142 = &v128 - v19;
  __chkstk_darwin(v20);
  v22 = *(a1 + 16);
  v23 = &_swiftEmptyArrayStorage;
  v134 = a2;
  v139 = v11;
  if (v22)
  {
    v24 = &v128 - v21;
    v150 = &_swiftEmptyArrayStorage;
    sub_10000E514(0, v22, 0);
    v23 = v150;
    nearbySharingInteractionCoordinator = *(v8 + 16);
    v141 = (v8 + 16);
    v25 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    v27 = (v8 + 8);
    userNotificationsCenter = (v11 + 32);
    v137 = v26;
    do
    {
      v28 = v143;
      v29 = v144;
      (nearbySharingInteractionCoordinator)(v143, v25, v144);
      sub_1000A53A0(&qword_100176500, &type metadata accessor for SFProximityHandoff.Interaction, &protocol conformance descriptor for SFProximityHandoff.Interaction);
      dispatch thunk of Identifiable.id.getter();
      (*v27)(v28, v29);
      v150 = v23;
      v31 = *v23->connection;
      v30 = *v23->airdropClient;
      if (v31 >= v30 >> 1)
      {
        sub_10000E514((v30 > 1), v31 + 1, 1);
        v23 = v150;
      }

      *v23->connection = v31 + 1;
      v11 = v139;
      (*(v139 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v24, v10);
      v25 += v137;
      --v22;
    }

    while (v22);
    a2 = v134;
  }

  v32 = sub_100090750(v23);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = *a2;
  v41 = *(*a2)->userNotificationsCenter;
  userNotificationsCenter = (*a2)->userNotificationsCenter;
  v42 = 1 << v40->airDropClient[0];
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v41;
  v131 = (v42 + 63) >> 6;
  nearbySharingInteractionCoordinator = v32->nearbySharingInteractionCoordinator;
  v141 = v32;
  v143 = (v11 + 16);
  v144 = (v11 + 8);
  v128 = (v11 + 32);
  swift_bridgeObjectRetain_n();
  v45 = 0;
  v46 = &_swiftEmptyArrayStorage;
  v130 = v40;
  while (1)
  {
    v137 = v46;
    if (!v44)
    {
      break;
    }

    v47 = v45;
    v48 = v139;
LABEL_18:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = *(v48 + 72);
    v51 = *(v48 + 16);
    v51(v142, *v40->interventionTasks + v50 * (v49 | (v47 << 6)), v10);
    if (*v141->connection && (v52 = v141, sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v53 = dispatch thunk of Hashable._rawHashValue(seed:)(), v54 = -1 << v52->airDropClient[0], v55 = v53 & ~v54, ((*&nearbySharingInteractionCoordinator[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) != 0))
    {
      v56 = ~v54;
      while (1)
      {
        v51(v15, *v141->interventionTasks + v55 * v50, v10);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *v144;
        (*v144)(v15, v10);
        if (v57)
        {
          break;
        }

        v55 = (v55 + 1) & v56;
        if (((*&nearbySharingInteractionCoordinator[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v58(v142, v10);
      v45 = v47;
      v40 = v130;
      v46 = v137;
    }

    else
    {
LABEL_23:
      v59 = *v128;
      (*v128)(v129, v142, v10);
      v46 = v137;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E514(0, *v46->connection + 1, 1);
        v46 = v150;
      }

      v62 = *v46->connection;
      v61 = *v46->airdropClient;
      if (v62 >= v61 >> 1)
      {
        sub_10000E514((v61 > 1), v62 + 1, 1);
        v46 = v150;
      }

      *v46->connection = v62 + 1;
      v59(v46 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + v62 * v50, v129, v10);
      v45 = v47;
      v40 = v130;
    }
  }

  v48 = v139;
  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return;
    }

    if (v47 >= v131)
    {
      break;
    }

    v44 = *&userNotificationsCenter[8 * v47];
    ++v45;
    if (v44)
    {
      goto LABEL_18;
    }
  }

  v141, v63, v64, v65, v66, v67, v68, v69;
  v77 = *v46->connection;
  if (v77)
  {
    v78 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    v79 = v48;
    v80 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v81 = *(v79 + 72);
    v141 = *(v79 + 16);
    v142 = v81;
    v82 = v40;
    v84 = v133;
    v83 = v134;
    v139 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    (v141)(v133, v80, v10);
    while (1)
    {
      v93 = v138;
      swift_beginAccess();
      v94 = sub_10003EDEC(v84);
      if (v95)
      {
        v96 = v94;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v98 = *(v93 + v78);
        v145 = v98;
        *(v93 + v78) = 0x8000000000000000;
        if (!v97)
        {
          sub_100042430();
          v98 = v145;
        }

        (*v144)(*(v98 + 48) + v96 * v142, v10);
        *(*(v98 + 56) + 8 * v96), v99, v100, v101, v102, v103, v104, v105;
        sub_100040F48(v96, v98);
        *(v93 + v78) = v98;
      }

      swift_endAccess();
      if (*v82->connection && (v106 = sub_10003EDEC(v84), (v107 & 1) != 0))
      {
        v108 = *(*v82->nearbySharingInteractionCoordinator + 8 * v106);
        v109 = type metadata accessor for TaskPriority();
        v110 = *(v109 - 8);
        v111 = v135;
        (*(v110 + 56))(v135, 1, 1, v109);
        type metadata accessor for MainActor();
        v112 = v108;
        v113 = static MainActor.shared.getter();
        v114 = swift_allocObject();
        v114[2] = v113;
        v114[3] = &protocol witness table for MainActor;
        v114[4] = v112;
        nearbySharingInteractionCoordinator = v112;
        v115 = v132;
        sub_100007BA4(v111, v132, &qword_100172F50, &qword_10011E500);
        LODWORD(v112) = (*(v110 + 48))(v115, 1, v109);

        if (v112 == 1)
        {
          sub_1000159AC(v115, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v110 + 8))(v115, v109);
        }

        v117 = v114[2];
        swift_unknownObjectRetain();

        v116 = nearbySharingInteractionCoordinator;
        if (v117)
        {
          swift_getObjectType();
          v118 = dispatch thunk of Actor.unownedExecutor.getter();
          v120 = v119;
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0;
          v120 = 0;
        }

        v78 = v139;
        sub_1000159AC(v135, &qword_100172F50, &qword_10011E500);
        v121 = swift_allocObject();
        *(v121 + 16) = &unk_10011E6A8;
        *(v121 + 24) = v114;
        if (v120 | v118)
        {
          v146 = 0;
          v147 = 0;
          v148 = v118;
          v149 = v120;
        }

        v84 = v133;
        swift_task_create();

        v83 = v134;
      }

      else
      {
        v116 = 0;
      }

      v122 = sub_10003EDEC(v84);
      if (v123)
      {
        v124 = v122;
        nearbySharingInteractionCoordinator = v77;
        v125 = v116;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v82 = *v83;
        v150 = *v83;
        if (!v126)
        {
          sub_1000421BC();
          v82 = v150;
        }

        v92 = v142;
        v127 = *v144;
        (*v144)(*v82->interventionTasks + v124 * v142, v10);

        sub_1000482FC(v124, v82);
        v127(v84, v10);
        *v83 = v82;
        v78 = v139;
        v77 = nearbySharingInteractionCoordinator;
      }

      else
      {

        (*v144)(v84, v10);
        v92 = v142;
      }

      v80 = &v92[v80];
      if (!--v77)
      {
        break;
      }

      (v141)(v84, v80, v10);
    }

    v130, v85, v86, v87, v88, v89, v90, v91;
  }

  else
  {
    v40, v70, v71, v72, v73, v74, v75, v76;
  }
}

void sub_10009C78C()
{
  v1 = v0;
  v163 = type metadata accessor for UUID();
  v2 = *(v163 - 8);
  __chkstk_darwin(v163);
  v156 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v158 = &v155 - v5;
  __chkstk_darwin(v6);
  v165 = &v155 - v7;
  __chkstk_darwin(v8);
  *&v157 = &v155 - v9;
  v161 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v161);
  v160 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v159 = (&v155 - v12);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v172;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v172;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v172 = v13;
  sub_1000A8C80(v14, sub_1000A7C50, 0, isUniquelyReferenced_nonNull_native, &v172);
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = v172;
  userNotificationsCenter = v172->userNotificationsCenter;
  v25 = 1 << v172->airDropClient[0];
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *v172->userNotificationsCenter;
  v28 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;

  v167 = v28;
  swift_beginAccess();
  v29 = 0;
  v30 = (v25 + 63) >> 6;
  v164 = v2;
  v168 = (v2 + 16);
  v169 = (v2 + 8);
  v31 = v1;
  v166 = v1;
  v32 = v157;
  v162 = v23;
  while (v27)
  {
LABEL_12:
    v35 = *(*(v23 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v27)))));
    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v36 = v35;
    v37 = static NSUserDefaults.airdrop.getter();
    v38 = SFAirDropUserDefaults.shockwaveEffectEnabled.getter();

    if ((v38 & 1) == 0)
    {
      sub_1000522F8(v160);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 4)
      {
        v33 = v160;
        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v60 = v160;
        sub_1000588EC(*v160, *(v160 + 8), *(v160 + 16), *(v160 + 24), *(v160 + 32), *(v160 + 40), *(v160 + 48), *(v160 + 56), *(v160 + 64), *(v160 + 72), *(v160 + 80), *(v160 + 88));
        sub_100056D60(v60 + 104);
      }

LABEL_5:
      sub_1000A25B0(&v36[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id]);
      goto LABEL_6;
    }

    sub_1000522F8(v159);
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 > 2)
    {
      if (v39 == 3)
      {
LABEL_26:
        v33 = v159;
LABEL_4:
        sub_1000AB0AC(v33, type metadata accessor for NearbySharingInteractionViewState);
        goto LABEL_5;
      }

      if (v39 != 4)
      {
        goto LABEL_5;
      }

      v41 = v159;
      sub_1000588EC(*v159, *(v159 + 1), *(v159 + 2), *(v159 + 3), *(v159 + 4), *(v159 + 5), *(v159 + 6), *(v159 + 7), *(v159 + 8), *(v159 + 9), *(v159 + 10), *(v159 + 11));
      sub_100056D60(v41 + 104);
    }

    else
    {
      if (v39 == 1)
      {
        goto LABEL_26;
      }

      sub_1000AB0AC(v159, type metadata accessor for NearbySharingInteractionViewState);
    }

    v42 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
    v43 = *(v31 + v167);
    if (*v43->connection)
    {

      v44 = sub_10003EDEC(&v36[v42]);
      if (v45)
      {
        v52 = *(*v43->nearbySharingInteractionCoordinator + 8 * v44);

        v43, v53, v54, v55, v56, v57, v58, v59;
        goto LABEL_29;
      }

      v43, v45, v46, v47, v48, v49, v50, v51;
    }

    v52 = sub_1000A8FFC(v36);
LABEL_29:
    v155 = *v168;
    v155(v32, &v36[v42], v163);
    v62 = v166;
    v61 = v167;
    swift_beginAccess();
    if (v52)
    {
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v32;
      v65 = v63;
      v171[0] = *(v62 + v61);
      v66 = v171[0];
      v67 = sub_10003EDEC(v64);
      v69 = *(v66 + 16);
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        goto LABEL_85;
      }

      v73 = v68;
      if (*(v66 + 24) >= v72)
      {
        if ((v65 & 1) == 0)
        {
          v87 = v67;
          sub_1000426B0();
          v67 = v87;
        }

        v32 = v157;
        v75 = v171[0];
        if (v73)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_100040684(v72, v65);
        v32 = v157;
        v67 = sub_10003EDEC(v157);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_87;
        }

        v75 = v171[0];
        if (v73)
        {
LABEL_34:
          *(v75[7] + 8 * v67) = v52;

LABEL_44:
          (*v169)(v32, v163);
          v31 = v166;
          goto LABEL_45;
        }
      }

      v75[(v67 >> 6) + 8] |= 1 << v67;
      v84 = v67;
      v155(v75[6] + v164[9] * v67, v32, v163);
      *(v75[7] + 8 * v84) = v52;
      v85 = v75[2];
      v71 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v71)
      {
        goto LABEL_86;
      }

      v75[2] = v86;
      goto LABEL_44;
    }

    v76 = sub_10003EDEC(v32);
    if ((v77 & 1) == 0)
    {
      (*v169)(v32, v163);
      v31 = v166;
      goto LABEL_46;
    }

    v78 = v76;
    v31 = v166;
    v79 = v167;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v31 + v79);
    v171[0] = v75;
    if ((v80 & 1) == 0)
    {
      sub_1000426B0();
      v75 = v171[0];
    }

    v81 = v75[6] + v164[9] * v78;
    v82 = v78;
    v83 = v164[1];
    (v83)(v81, v163);

    sub_1000482FC(v82, v75);
    v32 = v157;
    v83();
LABEL_45:
    *(v31 + v167) = v75;
LABEL_46:
    swift_endAccess();
LABEL_6:
    v27 &= v27 - 1;
    sub_10009D6A8(v36);

    v23 = v162;
  }

  while (1)
  {
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v34 >= v30)
    {
      break;
    }

    v27 = *&userNotificationsCenter[8 * v34];
    ++v29;
    if (v27)
    {
      v29 = v34;
      goto LABEL_12;
    }
  }

  v88 = v167;
  swift_beginAccess();

  v89 = sub_1000911C4();

  v91 = sub_1000A65E8(v90, v89);

  v93 = 0;
  v95 = v91 + 56;
  v94 = *(v91 + 7);
  v161 = v91;
  v96 = 1 << v91[32];
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v94;
  v99 = (v96 + 63) >> 6;
  *&v92 = 136315138;
  v157 = v92;
  v100 = v163;
  v101 = v165;
  while (v98)
  {
LABEL_59:
    v103 = v164[9];
    v104 = v164[2];
    v104(v101, *(v161 + 48) + v103 * (__clz(__rbit64(v98)) | (v93 << 6)), v100);
    v105 = *(v31 + v88);
    if (*v105->connection)
    {

      v106 = sub_10003EDEC(v101);
      if (v107)
      {
        v160 = *(*v105->nearbySharingInteractionCoordinator + 8 * v106);

        v105, v114, v115, v116, v117, v118, v119, v120;
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        sub_100007D20(v121, qword_10017F350);
        v122 = v158;
        v104(v158, v165, v100);
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v171[0] = v155;
          *v125 = v157;
          sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v126 = dispatch thunk of CustomStringConvertible.description.getter();
          v128 = v127;
          v159 = *v169;
          v159(v158, v163);
          v129 = sub_10003E81C(v126, v128, v171);
          v128, v130, v131, v132, v133, v134, v135, v136;
          *(v125 + 4) = v129;
          _os_log_impl(&_mh_execute_header, v123, v124, "Dismissing remote alert for nearby sharing interaction with ID: %s", v125, 0xCu);
          sub_100007920(v155);

          v100 = v163;
        }

        else
        {

          v159 = *v169;
          v159(v122, v100);
        }

        v137 = v167;
        dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
        v31 = v166;
        swift_beginAccess();
        v138 = sub_10003EDEC(v165);
        if (v139)
        {
          v140 = v138;
          v141 = swift_isUniquelyReferenced_nonNull_native();
          v142 = *(v31 + v137);
          v170 = v142;
          if (!v141)
          {
            sub_1000426B0();
            v142 = v170;
          }

          v159(*(v142 + 48) + v140 * v103, v100);

          sub_1000482FC(v140, v142);
          *(v31 + v137) = v142;
        }

        swift_endAccess();
      }

      else
      {
        v105, v107, v108, v109, v110, v111, v112, v113;
      }

      v101 = v165;
    }

    v98 &= v98 - 1;
    (*v169)(v101, v100);
    v88 = v167;
  }

  while (1)
  {
    v102 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v102 >= v99)
    {

      swift_beginAccess();

      v143 = sub_1000911C4();
      v144 = sub_1000A65E8(v162, v143);

      v145 = 0;
      v146 = 1 << v144[32];
      v147 = -1;
      if (v146 < 64)
      {
        v147 = ~(-1 << v146);
      }

      v148 = v147 & *(v144 + 7);
      v149 = (v146 + 63) >> 6;
      v150 = v164;
      v151 = v156;
      while (v148)
      {
        v152 = v145;
LABEL_79:
        v153 = __clz(__rbit64(v148));
        v148 &= v148 - 1;
        (v150[2])(v151, *(v144 + 6) + v150[9] * (v153 | (v152 << 6)), v100);
        v154 = sub_1000A2DD0(v151);
        (v150[1])(v151, v100, v154);
      }

      while (1)
      {
        v152 = v145 + 1;
        if (__OFADD__(v145, 1))
        {
          goto LABEL_84;
        }

        if (v152 >= v149)
        {

          return;
        }

        v148 = *&v144[8 * v152 + 56];
        ++v145;
        if (v148)
        {
          v145 = v152;
          goto LABEL_79;
        }
      }
    }

    v98 = *&v95[8 * v102];
    ++v93;
    if (v98)
    {
      v93 = v102;
      goto LABEL_59;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void sub_10009D4E0(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100054568();
  v8 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  if (!v7)
  {
    v10 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if (*v11->connection)
    {

      v12 = sub_10003EDEC(a1 + v8);
      if (v13)
      {
        v20 = *(*v11->nearbySharingInteractionCoordinator + 8 * v12);

        v11, v21, v22, v23, v24, v25, v26, v27;
LABEL_10:
        (*(v4 + 16))(v6, a1 + v8, v3);
        swift_beginAccess();
        sub_100027388(v20, v6);
        swift_endAccess();
        return;
      }

      v11, v13, v14, v15, v16, v17, v18, v19;
    }

    v20 = sub_1000A8FFC(a1);
    goto LABEL_10;
  }

  v9 = a1 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;

  sub_1000A25B0(v9);
}

void sub_10009D6A8(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  if (sub_100054568() == 1)
  {
    v63 = v7;
    v64 = v5;
    v65 = v2;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100007D20(v15, qword_10017F350);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v62 = v4;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v20 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000A53A0(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v9 + 8))(v14, v8);
      v24 = sub_10003E81C(v21, v23, v66);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "update activity kit activity for model state:%s", v20, 0xCu);
      sub_100007920(v61);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = (*(v9 + 88))(v11, v8);
    v33 = enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:);
    (*(v9 + 8))(v11, v8);
    v35 = v64;
    v34 = v65;
    if (v32 == v33)
    {
      v36 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity;
      if (!*(v65 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
      {
        v37 = sub_1000A972C(v16);
        sub_100095714(v37);
        *(v34 + v36) = v37;
      }

      return;
    }

    v39 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
    v40 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
    swift_beginAccess();
    v41 = *(v34 + v40);
    if (*v41->connection)
    {

      v42 = sub_10003EDEC(&v16[v39]);
      if (v43)
      {
        v50 = *(*v41->nearbySharingInteractionCoordinator + 8 * v42);

        v41, v51, v52, v53, v54, v55, v56, v57;
LABEL_17:
        v58 = &v16[v39];
        v59 = v63;
        (*(v35 + 16))(v63, v58, v62);
        swift_beginAccess();
        sub_10002739C(v50, v59);
        swift_endAccess();
        return;
      }

      v41, v43, v44, v45, v46, v47, v48, v49;
    }

    v50 = sub_1000A972C(v16);
    goto LABEL_17;
  }

  v38 = &a1[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id];

  sub_1000A2DD0(v38);
}

id sub_10009DBB0(void *a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v76 = a1;
  v77 = a2;
  v3 = sub_1000077C8(&qword_1001764C8, &qword_10011E5D8);
  v72 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v67 - v7;
  __chkstk_darwin(v8);
  v75 = &v67 - v9;
  v10 = sub_1000077C8(&qword_1001764D0, &qword_10011E5E0);
  __chkstk_darwin(v10 - 8);
  v71 = &v67 - v11;
  v69 = sub_1000077C8(&qword_1001764D8, &qword_10011E5E8);
  __chkstk_darwin(v69);
  v68 = &v67 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v67 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  swift_beginAccess();
  v70 = v2;
  v17 = *(v2 + v16);
  userNotificationsCenter = v17->userNotificationsCenter;
  v19 = 1 << v17->airDropClient[0];
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *v17->userNotificationsCenter;
  v22 = (v19 + 63) >> 6;
  v74 = v14 + 16;
  v78 = (v14 + 8);
  v79 = v14;
  v80 = v17;
  result = swift_bridgeObjectRetain_n();
  v24 = 0;
  v73 = userNotificationsCenter;
  if (v21)
  {
    while (1)
    {
      v25 = v5;
      v26 = v24;
LABEL_9:
      v27 = __clz(__rbit64(v21)) | (v26 << 6);
      v28 = v80;
      v29 = v75;
      (*(v79 + 16))(v75, *v80->interventionTasks + *(v79 + 72) * v27, v13);
      *&v29[*(v3 + 48)] = *(*v28->nearbySharingInteractionCoordinator + 8 * v27);
      v30 = v29;
      v31 = v81;
      sub_100021A84(v30, v81, &qword_1001764C8, &qword_10011E5D8);
      v32 = v31;
      v5 = v25;
      sub_100007BA4(v32, v25, &qword_1001764C8, &qword_10011E5D8);

      v33 = Activity.id.getter();
      v35 = v34;

      if (v33 == v76 && v35 == v77)
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35, v43, v44, v45, v46, v47, v48, v49;
      (*v78)(v25, v13);
      if (v42)
      {
        goto LABEL_18;
      }

      v21 &= v21 - 1;
      result = sub_1000159AC(v81, &qword_1001764C8, &qword_10011E5D8);
      v24 = v26;
      userNotificationsCenter = v73;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v35, v36, v76, v77, v37, v38, v39, v40;
    (*v78)(v25, v13);
LABEL_18:
    v50 = v80;

    v52 = v71;
    sub_100021A84(v81, v71, &qword_1001764C8, &qword_10011E5D8);
    v51 = v72;
    (*(v72 + 56))(v52, 0, 1, v3);
LABEL_19:
    v50, v53, v54, v55, v56, v57, v58, v59;
    if ((*(v51 + 48))(v52, 1, v3) == 1)
    {
      sub_1000159AC(v52, &qword_1001764D0, &qword_10011E5E0);
      return 0;
    }

    else
    {
      v60 = *(v52 + *(v3 + 48));
      v61 = v68;
      v62 = *(v69 + 48);
      v64 = v79 + 32;
      v63 = *(v79 + 32);
      v63(v68, v52, v13);
      *&v61[v62] = v60;

      v65 = v67;
      v63(v67, v61, v13);
      v66 = sub_10009E13C(v65);
      (*(v64 - 24))(v65, v13);
      return v66;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v50 = v80;

        v52 = v71;
        v51 = v72;
        (*(v72 + 56))(v71, 1, 1, v3);
        goto LABEL_19;
      }

      v21 = *&userNotificationsCenter[8 * v26];
      ++v24;
      if (v21)
      {
        v25 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10009E13C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v27;
  if (*v27->connection && (v10 = sub_10003EDEC(a1), (v2 & 1) != 0) || (v27, v2, v3, v4, v5, v6, v7, v8, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v9 = v27, *v27->connection) && (v10 = sub_10003EDEC(a1), (v11 & 1) != 0))
  {
    v18 = *(*v9->nearbySharingInteractionCoordinator + 8 * v10);
    v9, v19, v20, v21, v22, v23, v24, v25;
    return v18;
  }

  else
  {
    v27, v11, v12, v13, v14, v15, v16, v17;
    return 0;
  }
}

id sub_10009E25C(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v107 = a3;
  v103 = a2;
  v4 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  __chkstk_darwin(v4 - 8);
  v91 = &v88 - v5;
  v94 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - v6;
  v7 = sub_1000077C8(&qword_1001764C0, &qword_10011B188);
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v88 - v8;
  v9 = type metadata accessor for UUID();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v88 - v13;
  __chkstk_darwin(v14);
  v105 = &v88 - v15;
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v98 = v18;
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100007D20(v22, qword_10017F350);
  v96 = *(v17 + 16);
  v97 = v17 + 16;
  v96(v21, a1, v16);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v95 = v11;
  v106 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v89 = v26;
    v90 = swift_slowAlloc();
    v112 = v90;
    *v26 = 136315138;
    v27 = v105;
    SFAirDrop.NearbySharingInteraction.id.getter();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = v109;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = v27;
    a1 = v106;
    (*(v108 + 8))(v32, v28);
    (*(v17 + 8))(v21, v16);
    v33 = sub_10003E81C(v29, v31, &v112);
    v31, v34, v35, v36, v37, v38, v39, v40;
    v41 = v89;
    *(v89 + 1) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Creating nearby sharing interaction view model for AirDrop interaction ID: %s", v41, 0xCu);
    sub_100007920(v90);
  }

  else
  {

    (*(v17 + 8))(v21, v16);
  }

  v42 = v99;
  v51 = v96;
  v96(v99, a1, v16);
  v90 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v43 = objc_allocWithZone(v90);
  v44 = v107;

  v45 = sub_100057034(v42, v44);

  swift_beginAccess();
  sub_1000077C8(&qword_100174408, &qword_10011E5C0);
  v107 = v45;
  v46 = v100;
  Published.projectedValue.getter();
  swift_endAccess();
  v47 = swift_allocObject();
  v48 = v110;
  swift_unknownObjectWeakInit();
  (v51)(v42, a1, v16);
  v49 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v50 = swift_allocObject();
  LOBYTE(v51) = v50;
  v52 = v103;
  *(v50 + 16) = v47;
  *(v50 + 24) = v52;
  (*(v17 + 32))(v50 + v49, v42, v16);
  sub_1000199C8(&qword_100174420, &qword_1001764C0, &qword_10011B188, &protocol conformance descriptor for Published<A>.Publisher);

  v53 = v102;
  Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v46, v53);
  v54 = v104;
  SFAirDrop.NearbySharingInteraction.id.getter();
  v55 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = *(v48 + v55);
  v57 = v111;
  *(v48 + v55) = 0x8000000000000000;
  v59 = sub_10003EDEC(v54);
  v60 = v57[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v51) = v58;
  if (v57[3] >= v62)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_1000402A8(v62, isUniquelyReferenced_nonNull_native);
    v57 = v111;
    v63 = sub_10003EDEC(v54);
    if ((v51 & 1) != (v64 & 1))
    {
      goto LABEL_25;
    }

    v59 = v63;
  }

  while (1)
  {
    *(v110 + v55) = v57;
    if ((v51 & 1) == 0)
    {
      v65 = v105;
      (*(v108 + 16))(v105, v54, v109);
      sub_100041BA0(v59, v65, &_swiftEmptySetSingleton, v57);
    }

    AnyCancellable.store(in:)();
    v103 = *(v108 + 8);
    v104 = (v108 + 8);
    v103(v54, v109);
    swift_endAccess();

    sub_1000A53A0(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel, &unk_10011AF84);
    v112 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v66 = static OS_dispatch_queue.main.getter();
    v111 = v66;
    v67 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v68 = v91;
    (*(*(v67 - 8) + 56))(v91, 1, 1, v67);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000A5BEC(&qword_100177110, &qword_100173D90, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v69 = v92;
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v68, &unk_100176430, &qword_10011E550);

    v70 = swift_allocObject();
    v71 = v110;
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    v73 = v107;
    *(v72 + 16) = v70;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_1000AB28C;
    *(v74 + 24) = v72;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v75 = v73;
    v76 = v94;
    v59 = Publisher<>.sink(receiveValue:)();

    (*(v93 + 8))(v69, v76);
    v77 = v95;
    SFAirDrop.NearbySharingInteraction.id.getter();
    swift_beginAccess();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v71 + v55);
    v78 = v111;
    *(v71 + v55) = 0x8000000000000000;
    v51 = sub_10003EDEC(v77);
    v80 = v78[2];
    v81 = (v79 & 1) == 0;
    v82 = v80 + v81;
    if (!__OFADD__(v80, v81))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    sub_100042430();
    v57 = v111;
  }

  v83 = v79;
  if (v78[3] >= v82)
  {
    if ((v54 & 1) == 0)
    {
      sub_100042430();
      v78 = v111;
    }

    goto LABEL_19;
  }

  sub_1000402A8(v82, v54);
  v78 = v111;
  v84 = sub_10003EDEC(v77);
  if ((v83 & 1) != (v85 & 1))
  {
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v51 = v84;
LABEL_19:
  *(v110 + v55) = v78;
  if ((v83 & 1) == 0)
  {
    v86 = v105;
    (*(v108 + 16))(v105, v77, v109);
    sub_100041BA0(v51, v86, &_swiftEmptySetSingleton, v78);
  }

  AnyCancellable.store(in:)();
  v103(v77, v109);
  swift_endAccess();

  return v75;
}

void sub_10009EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v11 + 104))(v13, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v10);
    v16 = static SFAirDrop.NearbySharingInteraction.State.== infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if (v16)
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
      (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v4);
      v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 4) = v22;
      (*(v5 + 32))(&v19[v18], &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

      sub_1000E1D28(0, 0, v9, &unk_10011E5D0, v19);
    }

    else
    {
    }
  }
}

uint64_t sub_10009F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10009F1DC, 0, 0);
}

uint64_t sub_10009F1DC(uint64_t a1)
{
  SFAirDrop.NearbySharingInteraction.id.getter();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100034EC8;
  v3 = *(v1 + 48);

  return SFAirDropClient.endNearbySharingInteraction(_:)(v3);
}

id sub_10009F284(uint64_t a1, uint64_t a2, id a3)
{
  v154 = a2;
  v6 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  __chkstk_darwin(v6 - 8);
  v138 = &v135 - v7;
  v141 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v135 - v8;
  v157 = sub_1000077C8(&qword_100176440, &qword_10011E560);
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v135 - v9;
  v159 = sub_1000077C8(&qword_100176448, &qword_10011E568);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v135 - v10;
  v11 = sub_1000077C8(&qword_100176450, &qword_10011E570);
  v161 = *(v11 - 8);
  v162 = v11;
  __chkstk_darwin(v11);
  v173 = &v135 - v12;
  v13 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v13 - 8);
  v150 = &v135 - v14;
  v15 = sub_1000077C8(&qword_100176458, &qword_10011E578);
  v149 = *(v15 - 8);
  __chkstk_darwin(v15);
  v147 = &v135 - v16;
  v17 = sub_1000077C8(&qword_100176460, &qword_10011E580);
  v167 = *(v17 - 8);
  v168 = v17;
  __chkstk_darwin(v17);
  v152 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v18;
  __chkstk_darwin(v19);
  v176 = &v135 - v20;
  v21 = sub_1000077C8(&qword_100176468, &qword_10011E588);
  v165 = *(v21 - 8);
  v166 = v21;
  __chkstk_darwin(v21);
  v148 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v22;
  __chkstk_darwin(v23);
  v25 = &v135 - v24;
  v177 = type metadata accessor for UUID();
  v174 = *(v177 - 8);
  __chkstk_darwin(v177);
  v137 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v135 - v28;
  __chkstk_darwin(v30);
  v164 = &v135 - v31;
  v32 = type metadata accessor for SFProximityHandoff.Interaction();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v172 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v34;
  __chkstk_darwin(v35);
  v37 = &v135 - v36;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v160 = v29;
  v170 = v3;
  v38 = type metadata accessor for Logger();
  sub_100007D20(v38, qword_10017F350);
  v171 = v33;
  v40 = *(v33 + 16);
  v39 = (v33 + 16);
  v144 = v40;
  v40(v37, a1, v32);
  v41 = Logger.logObject.getter();
  v42 = a1;
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v41, v43);
  v45 = v32;
  v175 = v42;
  v163 = v25;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v169 = a3;
    v47 = v46;
    v142 = swift_slowAlloc();
    v179 = v142;
    *v47 = 136315138;
    v143 = v15;
    v48 = v164;
    SFProximityHandoff.Interaction.id.getter();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = v177;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v53 = v48;
    v15 = v143;
    v54 = v49;
    v45 = v32;
    (*(v174 + 8))(v53, v54);
    (*(v171 + 8))(v37, v32);
    v55 = sub_10003E81C(v50, v52, &v179);
    v56 = v163;
    v52, v57, v58, v59, v60, v61, v62, v63;
    *(v47 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v41, v43, "Creating nearby sharing interaction view model for Proximity Handoff interaction ID: %s", v47, 0xCu);
    sub_100007920(v142);
    v64 = v175;

    a3 = v169;
  }

  else
  {

    (*(v171 + 8))(v37, v32);
    v64 = v42;
    v56 = v25;
  }

  v65 = v172;
  v66 = v144;
  v144(v172, v64, v45);
  v136 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v67 = objc_allocWithZone(v136);

  v142 = v39;
  v68 = v65;
  v169 = sub_100057C8C(v65, a3);

  v69 = type metadata accessor for SFNearbySharingInteractionViewState();
  v70 = v149;
  v71 = v45;
  v72 = v147;
  (*(v149 + 104))(v147, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v15);
  v143 = v69;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v70 + 8))(v72, v15);
  v73 = type metadata accessor for TaskPriority();
  v74 = v150;
  (*(*(v73 - 8) + 56))(v150, 1, 1, v73);
  v75 = v64;
  v77 = v165;
  v76 = v166;
  v78 = v148;
  (*(v165 + 16))(v148, v56, v166);
  v79 = v71;
  v66(v68, v75, v71);
  v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v81 = v171;
  v82 = (v146 + *(v171 + 80) + v80) & ~*(v171 + 80);
  v83 = (v145 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  (*(v77 + 32))(v84 + v80, v78, v76);
  (*(v81 + 32))(v84 + v82, v172, v79);
  *(v84 + v83) = v154;

  v171 = static Task<>.noThrow(priority:operation:)();

  sub_1000159AC(v74, &qword_100172F50, &qword_10011E500);
  v85 = v153;
  sub_100053BA8(v153);
  sub_1000199C8(&qword_100176470, &qword_100176440, &qword_10011E560, &protocol conformance descriptor for Publishers.Map<A, B>);
  v86 = v156;
  v87 = v157;
  Publisher.map<A>(_:)();
  (*(v155 + 8))(v85, v87);
  sub_1000199C8(&qword_100176478, &qword_100176448, &qword_10011E568, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000A53A0(&qword_100176480, &type metadata accessor for SFNearbySharingInteractionViewState, &protocol conformance descriptor for SFNearbySharingInteractionViewState);
  v88 = v159;
  Publisher<>.removeDuplicates()();
  (*(v158 + 8))(v86, v88);
  v89 = v167;
  v90 = v168;
  v91 = *(v167 + 16);
  v92 = v152;
  v93 = v176;
  v91(v152, v176, v168);
  v94 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v172 = swift_allocObject();
  v95 = *(v89 + 32);
  v95(&v172[v94], v92, v90);
  v91(v92, v93, v90);
  v96 = swift_allocObject();
  v97 = v96;
  v95((v96 + v94), v92, v90);
  sub_1000199C8(&qword_100176488, &qword_100176450, &qword_10011E570, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v98 = v173;
  v99 = v162;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v161 + 8))(v98, v99);
  v100 = v160;
  SFProximityHandoff.Interaction.id.getter();
  v101 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  v102 = v170;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = *(v102 + v101);
  v104 = v178;
  *(v102 + v101) = 0x8000000000000000;
  v106 = sub_10003EDEC(v100);
  v107 = v104[2];
  v108 = (v105 & 1) == 0;
  v109 = v107 + v108;
  if (__OFADD__(v107, v108))
  {
    __break(1u);
    goto LABEL_23;
  }

  v97 = v105;
  if (v104[3] >= v109)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_1000402A8(v109, isUniquelyReferenced_nonNull_native);
    v104 = v178;
    v110 = sub_10003EDEC(v100);
    if ((v97 & 1) != (v111 & 1))
    {
      goto LABEL_25;
    }

    v106 = v110;
  }

  while (1)
  {
    *(v102 + v101) = v104;
    if ((v97 & 1) == 0)
    {
      v112 = v164;
      (*(v174 + 16))(v164, v100, v177);
      sub_100041BA0(v106, v112, &_swiftEmptySetSingleton, v104);
    }

    AnyCancellable.store(in:)();
    v172 = *(v174 + 8);
    v173 = (v174 + 8);
    (v172)(v100, v177);
    swift_endAccess();

    sub_1000A53A0(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel, &unk_10011AF84);
    v113 = v169;
    v179 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v114 = static OS_dispatch_queue.main.getter();
    v178 = v114;
    v115 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v116 = v138;
    (*(*(v115 - 8) + 56))(v138, 1, 1, v115);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000A5BEC(&qword_100177110, &qword_100173D90, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v117 = v139;
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v116, &unk_100176430, &qword_10011E550);

    v118 = swift_allocObject();
    v100 = v170;
    swift_unknownObjectWeakInit();
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v113;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_1000AC274;
    *(v120 + 24) = v119;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v121 = v113;
    v122 = v141;
    v97 = Publisher<>.sink(receiveValue:)();

    (*(v140 + 8))(v117, v122);
    v123 = v137;
    SFProximityHandoff.Interaction.id.getter();
    swift_beginAccess();
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v178 = *(v100 + v101);
    v124 = v178;
    *(v100 + v101) = 0x8000000000000000;
    v106 = sub_10003EDEC(v123);
    v126 = v124[2];
    v127 = (v125 & 1) == 0;
    v128 = v126 + v127;
    if (!__OFADD__(v126, v127))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    sub_100042430();
    v104 = v178;
  }

  v129 = v125;
  if (v124[3] >= v128)
  {
    if ((v102 & 1) == 0)
    {
      sub_100042430();
      v124 = v178;
    }

    goto LABEL_19;
  }

  sub_1000402A8(v128, v102);
  v124 = v178;
  v130 = sub_10003EDEC(v123);
  if ((v129 & 1) != (v131 & 1))
  {
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v106 = v130;
LABEL_19:
  v132 = v163;
  *(v100 + v101) = v124;
  if ((v129 & 1) == 0)
  {
    v133 = v164;
    (*(v174 + 16))(v164, v123, v177);
    sub_100041BA0(v106, v133, &_swiftEmptySetSingleton, v124);
  }

  AnyCancellable.store(in:)();
  (v172)(v123, v177);
  swift_endAccess();

  (*(v167 + 8))(v176, v168);
  (*(v165 + 8))(v132, v166);
  return v121;
}