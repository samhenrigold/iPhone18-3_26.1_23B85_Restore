uint64_t sub_10006BA60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10006BD04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10006BE04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100064758(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10006BE9C(uint64_t a1)
{
  v2 = type metadata accessor for ShuffleID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10006D104(&qword_10012A690, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
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
      v12(v6, v14, v2);
      sub_1000648A8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10006C038(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      v12(v6, v14, v2);
      sub_100064B88(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10006C1D4(uint64_t a1)
{
  v2 = type metadata accessor for StoredPhoto();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
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
      v12(v6, v14, v2);
      sub_100064E68(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10006C370(uint64_t a1, char a2)
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for Logger();
  v11[2] = *(v4 - 8);
  v11[3] = v4;
  __chkstk_darwin(v4);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 66048;
  if ((a2 & 1) == 0)
  {
    v9 = 0;
  }

  v12 = v9;
  static SystemDirectory.folderURL(for:)();
  v13 = &v12;
  v14 = v8;
  URL.withUnsafeFileSystemRepresentation<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006C824(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v54) = a3;
  v3 = type metadata accessor for Logger();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v52 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v52 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  static SystemDirectory.baseImageURL(timePosition:uuid:)();
  v58 = v16;
  static SystemDirectory.maskImageURL(timePosition:uuid:)();
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  URL.path(percentEncoded:)(1);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 fileExistsAtPath:v21];

  if (v22)
  {
    v23 = v18;
    v24 = v58;
    if (v54 & 1) == 0 || (v25 = [v19 defaultManager], URL.path(percentEncoded:)(1), v26 = String._bridgeToObjectiveC()(), , v27 = objc_msgSend(v25, "fileExistsAtPath:", v26), v25, v26, (v27))
    {
      v28 = *(v8 + 8);
      v28(v24, v7);
      v28(v18, v7);
      return 1;
    }

    v39 = v53;
    static Log.photos.getter();
    v40 = v8;
    v41 = v52;
    (*(v8 + 16))(v52, v24, v7);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      LODWORD(v57) = v43;
      v46 = v41;
      v47 = v45;
      v59 = v45;
      *v44 = 136315138;
      v48 = URL.path(percentEncoded:)(1);
      v49 = *(v40 + 8);
      v49(v46, v7);
      v50 = sub_100102F80(v48._countAndFlagsBits, v48._object, &v59);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v57, "Failed to find file %s", v44, 0xCu);
      sub_10000C304(v47);

      (*(v55 + 8))(v53, v56);
      v49(v58, v7);
      v49(v23, v7);
    }

    else
    {

      v51 = *(v40 + 8);
      v51(v41, v7);
      (*(v55 + 8))(v39, v56);
      v51(v24, v7);
      v51(v23, v7);
    }
  }

  else
  {
    static Log.photos.getter();
    (*(v8 + 16))(v13, v18, v7);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v54 = v18;
      v33 = v32;
      v34 = swift_slowAlloc();
      v59 = v34;
      *v33 = 136315138;
      v35 = URL.path(percentEncoded:)(1);
      v36 = *(v8 + 8);
      v36(v13, v7);
      v37 = sub_100102F80(v35._countAndFlagsBits, v35._object, &v59);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to find file %s", v33, 0xCu);
      sub_10000C304(v34);

      (*(v55 + 8))(v57, v56);
      v36(v58, v7);
      v36(v54, v7);
    }

    else
    {

      v38 = *(v8 + 8);
      v38(v13, v7);
      (*(v55 + 8))(v57, v56);
      v38(v58, v7);
      v38(v18, v7);
    }
  }

  return 0;
}

uint64_t sub_10006CEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A6B0, &qword_1001095A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A6B0, &qword_1001095A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CF90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_1000611F0();
}

uint64_t sub_10006D020()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D058()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045BC;

  return sub_100062464(v2);
}

uint64_t sub_10006D104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PhotoProvidingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotoProvidingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006D2B0()
{
  result = qword_10012A8E0[0];
  if (!qword_10012A8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10012A8E0);
  }

  return result;
}

uint64_t sub_10006D320(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_10006D434()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  sub_10000C304((v0 + *(*v0 + 144)));
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_10006D5B0()
{
  sub_10006D434();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006D620(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  v3[12] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10006D6EC, 0, 0);
}

uint64_t sub_10006D6EC()
{
  v2 = v0[10];
  v1 = v0[11];
  Photo = GeneratePhotoRequest.photoIdentifiers.getter();
  v0[14] = Photo;
  v0[7] = v2;
  v0[15] = type metadata accessor for CommunicationActor();
  v0[16] = static CommunicationActor.shared.getter();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10006D848;

  return (sub_10006F844)(v0 + 2, Photo, 0, 0, v1, &off_100126B50);
}

uint64_t sub_10006D848()
{
  *(*v1 + 144) = v0;

  sub_10006FA3C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10006DB40;
  }

  else
  {
    v4 = sub_10006D9C0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10006D9C0()
{

  return _swift_task_switch(sub_10006DA28, 0, 0);
}

uint64_t sub_10006DA28()
{
  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  type metadata accessor for GeneratePhotoResponse();
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  AsyncMapSequence.init(_:transform:)();
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006DB40()
{

  return _swift_task_switch(sub_10006DBA8, 0, 0);
}

uint64_t sub_10006DBA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v4[7] = swift_task_alloc();
  v5 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for CommunicationActor();
  v4[24] = static CommunicationActor.shared.getter();
  v4[25] = sub_10006FA3C();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v10;
  v4[27] = v9;

  return _swift_task_switch(sub_10006DE94, v10, v9);
}

uint64_t sub_10006DE94()
{
  v0[28] = *(v0[6] + 16);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10006DF34;
  v2 = v0[3];

  return sub_100060270(v2);
}

uint64_t sub_10006DF34(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = v2;

  v6 = v4[27];
  v7 = v4[26];
  if (v2)
  {
    v8 = sub_10006F0C4;
  }

  else
  {
    v8 = sub_10006E07C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006E07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[30];
  v8 = *(v7 + 16);
  v6[33] = v8;
  if (v8)
  {
    v9 = v6[19];
    v10 = v6[16];
    v11 = v6[4];
    v6[34] = 0;
    if (*(v7 + 16))
    {
      v12 = v6[17];
      v13 = v6[15];
      (*(v9 + 16))(v6[22], v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v6[18], a4, a5, a6);
      StoredPhoto.localIdentifier.getter();
      sub_10006C370(v12, 0);
      (*(v10 + 8))(v12, v13);
      v29 = (v11 + *v11);
      v14 = swift_task_alloc();
      v6[35] = v14;
      *v14 = v6;
      v14[1] = sub_10006E434;
      v15 = v6[22];

      return v29(v15);
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, a2, a3, a4, a5, a6);
  }

  v18 = v6[31];
  v17 = v6[32];
  v19 = v6[14];

  sub_1000046B0(v18, v19);
  if (!v17)
  {
    v21 = v6[13];
    v22 = v6[14];
    v23 = v6[11];
    v24 = v6[12];

    (*(v24 + 16))(v21, v22, v23);
    sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v25 = v6[25];
    v26 = static CommunicationActor.shared.getter();
    v6[37] = v26;
    v27 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v28 = swift_task_alloc();
    v6[38] = v28;
    *v28 = v6;
    v28[1] = sub_10006E95C;
    v7 = v6[7];
    a5 = v6[8];
    a4 = v6 + 2;
    a2 = v26;
    a3 = v25;
    a6 = v27;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, a2, a3, a4, a5, a6);
  }

  v20 = v6[1];

  return v20();
}

uint64_t sub_10006E434()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[19] + 8))(v2[22], v2[18]);
  if (v0)
  {

    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_10006F194;
  }

  else
  {
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_10006E594;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006E594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[34] + 1;
  if (v7 == v6[33])
  {
    v8 = v6[36];
    v9 = v6[31];
    v10 = v6[14];

    sub_1000046B0(v9, v10);
    if (v8)
    {

      v11 = v6[1];

      return v11();
    }

    v20 = v6[13];
    v21 = v6[14];
    v22 = v6[11];
    v23 = v6[12];

    (*(v23 + 16))(v20, v21, v22);
    sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v24 = v6[25];
    v25 = static CommunicationActor.shared.getter();
    v6[37] = v25;
    v26 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
    v27 = swift_task_alloc();
    v6[38] = v27;
    *v27 = v6;
    v27[1] = sub_10006E95C;
    a1 = v6[7];
    a5 = v6[8];
    a4 = v6 + 2;
    a2 = v25;
    a3 = v24;
    a6 = v26;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v6[34] = v7;
  v13 = v6[30];
  if (v7 >= *(v13 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v15 = v6[16];
  v14 = v6[17];
  v16 = v6[15];
  v17 = v6[4];
  (*(v6[19] + 16))(v6[22], v13 + ((*(v6[19] + 80) + 32) & ~*(v6[19] + 80)) + *(v6[19] + 72) * v7, v6[18], a4, a5, a6);
  StoredPhoto.localIdentifier.getter();
  sub_10006C370(v14, 0);
  (*(v15 + 8))(v14, v16);
  v28 = (v17 + *v17);
  v18 = swift_task_alloc();
  v6[35] = v18;
  *v18 = v6;
  v18[1] = sub_10006E434;
  v19 = v6[22];

  return v28(v19);
}

uint64_t sub_10006E95C()
{
  v2 = *v1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_10006F264;
  }

  else
  {
    v5 = sub_10006EA7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006EA7C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];

    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = sub_10006EC60;
    v13 = v0[20];
    v14 = v0[21];

    return sub_10005FB64(v13, v14);
  }
}

uint64_t sub_10006EC60()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[27];

    return _swift_task_switch(sub_10006F374, v3, v4);
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v5 = swift_task_alloc();
    v2[41] = v5;
    *v5 = v2;
    v5[1] = sub_10006EE34;
    v6 = v2[20];

    return v8(v6);
  }
}

uint64_t sub_10006EE34()
{
  v2 = *v1;
  v2[42] = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[45] = v6;
    v2[46] = v7;
    v6(v3, v5);
    v8 = v2[26];
    v9 = v2[27];
    v10 = sub_10006F4AC;
  }

  else
  {
    v2[43] = v6;
    v2[44] = v7;
    v6(v3, v5);
    v8 = v2[26];
    v9 = v2[27];
    v10 = sub_10006EFB8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10006EFB8()
{
  (*(v0 + 344))(*(v0 + 168), *(v0 + 144));
  v1 = *(v0 + 200);
  v2 = static CommunicationActor.shared.getter();
  *(v0 + 296) = v2;
  v3 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_10006E95C;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v2, v1, v0 + 16, v6, v3);
}

uint64_t sub_10006F0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F264()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006F374()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  (*(v3 + 8))(v1, v2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10006F4AC()
{
  v1 = v0[45];
  v2 = v0[21];
  v3 = v0[18];
  v11 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  v1(v2, v3);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10006F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000045BC;

  return sub_10006DC0C(a4, a1, a2);
}

uint64_t sub_10006F6B8()
{
  *(v1 + 16) = *v0;
  type metadata accessor for CommunicationActor();
  *(v1 + 24) = static CommunicationActor.shared.getter();
  sub_10006FA3C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F754, v3, v2);
}

uint64_t sub_10006F754()
{

  sub_10000560C(&qword_10012A608, &unk_100109A20);
  sub_10000CC24(&qword_10012A610, &qword_10012A608, &unk_100109A20, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  PhotosXPCServer.registerGeneratePhoto<A>(callback:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F844(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for CommunicationActor();
  v3[7] = static CommunicationActor.shared.getter();
  v3[8] = sub_10006FA3C();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F8E8, v5, v4);
}

uint64_t sub_10006F8E8()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = *v1;
  static CommunicationActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v3[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
  v0[2] = type metadata accessor for StoredPhoto();
  v3[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v3);

  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  v6 = v0[1];

  return v6();
}

unint64_t sub_10006FA3C()
{
  result = qword_100129EA0;
  if (!qword_100129EA0)
  {
    type metadata accessor for CommunicationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129EA0);
  }

  return result;
}

uint64_t sub_10006FA94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FAD4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000045BC;

  return sub_10006F5E0(a1, a2, v7, v6);
}

uint64_t sub_10006FB84(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_10006D620(a1, a2, v2);
}

uint64_t sub_10006FC30()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.network.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    type metadata accessor for NetworkConnection();
    sub_100072EA4(&qword_10012AAF0, type metadata accessor for NetworkConnection, &unk_100109C2C);

    v8 = Set.description.getter();
    v10 = v9;

    v11 = sub_100102F80(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[ICM] Current connections: %s", v6, 0xCu);
    sub_10000C304(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

void *sub_10006FE60()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100072658(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v0[3] = v1;
  type metadata accessor for NWListener();
  v0[4] = 0;
  v0[5] = 0;
  _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(0xD000000000000016, 0x8000000100106DF0, 0x6E657473694C5341, 0xEA00000000007265);
  v0[2] = NWListener.__allocating_init(applicationService:using:)();

  NWListener.newConnectionHandler.setter();

  NWListener.stateUpdateHandler.setter();

  return v0;
}

uint64_t sub_100070098(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NetworkConnection();
  v11 = swift_allocObject();
  type metadata accessor for NetworkCanceller();
  v12 = swift_allocObject();
  sub_10000560C(&qword_10012AAE8, &qword_100109A90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = v13;
  *(v11 + 16) = v12;

  static Log.network.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35[0] = v18;
    *v17 = 136315138;

    v19 = sub_1000842B8();
    v32 = v7;
    v20 = v19;
    v34 = v2;
    v21 = v6;
    v23 = v22;

    v24 = sub_100102F80(v20, v23, v35);
    v6 = v21;
    v2 = v34;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ICM] Found new incoming connection: %s", v17, 0xCu);
    sub_10000C304(v18);

    (*(v33 + 8))(v10, v32);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  type metadata accessor for CommunicationActor();

  v26 = static CommunicationActor.shared.getter();
  v27 = sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = v11;
  v28[5] = v2;
  sub_100005654(0, 0, v6, &unk_100109AA0, v28);

  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v11;

  NWConnection.stateUpdateHandler.setter();

  sub_10007E1D8();
  swift_beginAccess();

  sub_100065148(&v36, v11);
  swift_endAccess();

  sub_10006FC30();
}

uint64_t sub_1000705FC(NSObject *a1, uint64_t a2)
{
  v157 = a1;
  v3 = type metadata accessor for NWError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v155 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v156 = &v142 - v8;
  v9 = __chkstk_darwin(v7);
  v152 = (&v142 - v10);
  v11 = __chkstk_darwin(v9);
  v13 = (&v142 - v12);
  __chkstk_darwin(v11);
  v153 = (&v142 - v14);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v158 = v15;
  v159 = v16;
  v17 = __chkstk_darwin(v15);
  v146 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v149 = &v142 - v20;
  v21 = __chkstk_darwin(v19);
  v148 = &v142 - v22;
  v23 = __chkstk_darwin(v21);
  v154 = (&v142 - v24);
  v25 = __chkstk_darwin(v23);
  v145 = &v142 - v26;
  v27 = __chkstk_darwin(v25);
  v151 = &v142 - v28;
  v29 = __chkstk_darwin(v27);
  v150 = (&v142 - v30);
  __chkstk_darwin(v29);
  v147 = &v142 - v31;
  v32 = type metadata accessor for NWConnection.State();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v143 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v144 = &v142 - v37;
  __chkstk_darwin(v36);
  v39 = (&v142 - v38);
  v40 = *(v33 + 16);
  v41 = a2;
  v40(&v142 - v38, a2, v32);
  v42 = (*(v33 + 88))(v39, v32);
  if (v42 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v33 + 96))(v39, v32);
    v43 = v156;
    (*(v4 + 32))(v156, v39, v3);
    static Log.network.getter();
    v44 = *(v4 + 16);
    v44(v155, v43, v3);

    v45 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v39))
    {
      v46 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v163[0] = v153;
      *v46 = 136315394;

      v47 = v3;
      v48 = sub_1000842B8();
      v3 = v49;

      v50 = sub_100102F80(v48, v3, v163);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2112;
      sub_100072EA4(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v51 = v155;
      v44(v52, v155, v47);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      v54 = *(v4 + 8);
      v54(v51, v47);
      *(v46 + 14) = v53;
      v55 = v152;
      *v152 = v53;
      _os_log_impl(&_mh_execute_header, v45, v39, "[ICM] %s waiting with error: %@", v46, 0x16u);
      sub_100072EEC(v55);

      sub_10000C304(v153);

      (*(v159 + 8))(v154, v158);
      v54(v156, v47);
    }

    else
    {

      v69 = *(v4 + 8);
      v69(v155, v3);
      (*(v159 + 8))(v154, v158);
      v69(v156, v3);
    }

    goto LABEL_19;
  }

  if (v42 == enum case for NWConnection.State.failed(_:))
  {
    (*(v33 + 96))(v39, v32);
    v56 = v153;
    v57 = v3;
    (*(v4 + 32))(v153, v39, v3);
    *v13 = 60;
    (*(v4 + 104))(v13, enum case for NWError.posix(_:), v3);
    v58 = static NWError.== infix(_:_:)();
    v3 = v4 + 8;
    v59 = *(v4 + 8);
    (v59)(v13, v57);
    if (v58)
    {
      v60 = v150;
      static Log.network.getter();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v156 = v59;
        v65 = v64;
        v163[0] = v64;
        *v63 = 136315138;

        v39 = sub_1000842B8();
        v67 = v66;

        v68 = sub_100102F80(v39, v67, v163);
        v56 = v153;

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v61, v62, "[ICM] %s timed out", v63, 0xCu);
        sub_10000C304(v65);
        v59 = v156;

        (*(v159 + 8))(v150, v158);
      }

      else
      {

        (*(v159 + 8))(v60, v158);
      }

      v95 = v160;
    }

    else
    {
      v156 = v59;
      v79 = v151;
      static Log.network.getter();
      v39 = v57;
      v80 = *(v4 + 16);
      v155 = (v4 + 16);
      v81 = v152;
      v80(v152, v56, v39);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v163[0] = v154;
        *v84 = 136315394;

        v85 = sub_1000842B8();
        v87 = v86;

        v88 = v85;
        v56 = v153;
        v89 = sub_100102F80(v88, v87, v163);

        *(v84 + 4) = v89;
        *(v84 + 12) = 2112;
        sub_100072EA4(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v90 = v152;
        v80(v91, v152, v39);
        v92 = _swift_stdlib_bridgeErrorToNSError();
        v93 = v156;
        (v156)(v90, v39);
        *(v84 + 14) = v92;
        v94 = v150;
        *v150 = v92;
        _os_log_impl(&_mh_execute_header, v82, v83, "[ICM] %s failed with error: %@", v84, 0x16u);
        sub_100072EEC(v94);

        sub_10000C304(v154);

        (*(v159 + 8))(v151, v158);
        v95 = v160;
        v59 = v93;
      }

      else
      {

        v99 = v156;
        (v156)(v81, v39);
        (*(v159 + 8))(v79, v158);
        v95 = v160;
        v59 = v99;
      }

      v57 = v39;
    }

    sub_10007E560();
    (v59)(v56, v57);
    goto LABEL_25;
  }

  if (v42 != enum case for NWConnection.State.setup(_:))
  {
    if (v42 != enum case for NWConnection.State.preparing(_:))
    {
      if (v42 == enum case for NWConnection.State.ready(_:))
      {
        v113 = v147;
        static Log.network.getter();

        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v163[0] = v39;
          *v116 = 136315138;

          v117 = sub_1000842B8();
          v119 = v118;

          v120 = sub_100102F80(v117, v119, v163);

          *(v116 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v114, v115, "[ICM] %s changed to ready", v116, 0xCu);
          sub_10000C304(v39);
        }

        (*(v159 + 8))(v113, v158);
      }

      else
      {
        if (v42 == enum case for NWConnection.State.cancelled(_:))
        {
          v121 = v145;
          static Log.network.getter();
          v122 = v157;

          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v163[0] = v126;
            *v125 = 136315138;

            v39 = sub_1000842B8();
            v128 = v127;

            v129 = sub_100102F80(v39, v128, v163);

            *(v125 + 4) = v129;
            _os_log_impl(&_mh_execute_header, v123, v124, "[ICM] %s cancelled", v125, 0xCu);
            sub_10000C304(v126);
          }

          (*(v159 + 8))(v121, v158);
          v95 = v160;
          swift_beginAccess();
          sub_100078980(v122);
          swift_endAccess();

          sub_10006FC30();
          goto LABEL_25;
        }

        v3 = v146;
        static Log.network.getter();
        v107 = v144;
        v40(v144, v41, v32);

        v102 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v102, v130))
        {
          v3 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v163[0] = v156;
          *v3 = 136315394;
          v157 = v102;

          v131 = sub_1000842B8();
          LODWORD(v155) = v130;
          v133 = v132;

          v134 = sub_100102F80(v131, v133, v163);

          *(v3 + 4) = v134;
          *(v3 + 12) = 2080;
          v40(v143, v107, v32);
          v135 = String.init<A>(describing:)();
          v136 = v107;
          v138 = v137;
          v139 = *(v33 + 8);
          v139(v136, v32);
          v140 = sub_100102F80(v135, v138, v163);

          *(v3 + 14) = v140;
          v141 = v157;
          _os_log_impl(&_mh_execute_header, v157, v155, "[ICM] %s Unknown state: %s", v3, 0x16u);
          swift_arrayDestroy();

          (*(v159 + 8))(v146, v158);
        }

        else
        {
LABEL_56:

          v139 = *(v33 + 8);
          v139(v107, v32);
          (*(v159 + 8))(v3, v158);
        }

        v139(v39, v32);
      }

      goto LABEL_19;
    }

    v70 = v148;
    static Log.network.getter();
    v39 = v157;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_18;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v163[0] = v74;
    *v73 = 136315138;

    v39 = sub_1000842B8();
    v97 = v96;

    v98 = sub_100102F80(v39, v97, v163);

    *(v73 + 4) = v98;
    v78 = "[ICM] %s preparing";
    goto LABEL_17;
  }

  v70 = v149;
  static Log.network.getter();
  v39 = v157;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v163[0] = v74;
    *v73 = 136315138;

    v39 = sub_1000842B8();
    v76 = v75;

    v77 = sub_100102F80(v39, v76, v163);

    *(v73 + 4) = v77;
    v78 = "[ICM] %s setup";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v71, v72, v78, v73, 0xCu);
    sub_10000C304(v74);
  }

LABEL_18:

  (*(v159 + 8))(v70, v158);
LABEL_19:
  v95 = v160;
LABEL_25:
  swift_beginAccess();
  v100 = *(v95 + 24);
  if ((v100 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_100072EA4(&qword_10012AAF0, type metadata accessor for NetworkConnection, &unk_100109C2C);
    Set.Iterator.init(_cocoa:)();
    v33 = v163[0];
    v101 = v163[1];
    v102 = v163[2];
    v32 = v163[3];
    v103 = v163[4];
  }

  else
  {
    v104 = -1 << *(v100 + 32);
    v101 = v100 + 56;
    v102 = ~v104;
    v105 = -v104;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    else
    {
      v106 = -1;
    }

    v103 = v106 & *(v100 + 56);
    swift_bridgeObjectRetain_n();
    v32 = 0;
    v33 = v100;
  }

  v160 = v102;
  v107 = (v102 + 64) >> 6;
  while ((v33 & 0x8000000000000000) == 0)
  {
    v108 = v32;
    v109 = v103;
    v110 = v32;
    if (!v103)
    {
      while (1)
      {
        v110 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          break;
        }

        if (v110 >= v107)
        {
          goto LABEL_44;
        }

        v109 = *(v101 + 8 * v110);
        ++v108;
        if (v109)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_38:
    v39 = ((v109 - 1) & v109);
    v3 = *(*(v33 + 48) + ((v110 << 9) | (8 * __clz(__rbit64(v109)))));

    if (!v3)
    {
      goto LABEL_44;
    }

LABEL_42:
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v102 = v3;
    sub_10007B094();

    v32 = v110;
    v103 = v39;
  }

  v111 = __CocoaSet.Iterator.next()();
  if (v111)
  {
    v161 = v111;
    type metadata accessor for NetworkConnection();
    swift_dynamicCast();
    v3 = v162;
    v110 = v32;
    v39 = v103;
    if (v162)
    {
      goto LABEL_42;
    }
  }

LABEL_44:
  sub_100010E54(v33);
}

uint64_t sub_100071AB4()
{

  sub_100071B20(*(v0 + 32), *(v0 + 40));

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100071B20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100071B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Message();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v5[17] = static CommunicationActor.shared.getter();
  sub_100072EA4(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return _swift_task_switch(sub_100071CBC, v9, v8);
}

uint64_t sub_100071CBC()
{
  v17 = v0;
  v0[20] = *(v0[8] + 16);

  v1 = sub_1000842B8();
  v3 = v2;

  v0[21] = v1;
  v0[22] = v3;
  static Log.network.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100102F80(v1, v3, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "[ICM] Listening for messages on %s", v10, 0xCu);
    sub_10000C304(v11);
  }

  v12 = *(v9 + 8);
  v12(v7, v8);
  v0[23] = v12;
  sub_10007B094();
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_100071EA4;
  v14 = v0[12];

  return sub_10007B790(v14);
}

uint64_t sub_100071EA4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1000723C4;
  }

  else
  {
    v5 = sub_100071FE0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100071FE0()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 32);
  v0[26] = v2;
  if (v2)
  {
    v0[27] = *(v0[9] + 40);
    swift_endAccess();

    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_1000721B0;
    v4 = v0[12];

    return v8(v4);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_endAccess();
    sub_10007B094();
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_100071EA4;
    v7 = v0[12];

    return sub_10007B790(v7);
  }
}

uint64_t sub_1000721B0()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);

  sub_100071B20(v3, v2);
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return _swift_task_switch(sub_10007230C, v5, v4);
}

uint64_t sub_10007230C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_10007B094();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100071EA4;
  v2 = v0[12];

  return sub_10007B790(v2);
}

uint64_t sub_1000723C4()
{
  v20 = v0;

  static Log.network.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = v0[21];
    v17 = v0[15];
    v18 = v0[23];
    v16 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v5 = 136315394;
    v8 = sub_100102F80(v4, v3, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[ICM] %s stopped listening with error: %@", v5, 0x16u);
    sub_100072EEC(v6);

    sub_10000C304(v7);

    v18(v17, v16);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[15];
    v12 = v0[13];

    v10(v11, v12);
  }

  v13 = v0[8];
  sub_10007E560();
  swift_beginAccess();
  sub_100078980(v13);
  swift_endAccess();

  sub_10006FC30();

  v14 = v0[1];

  return v14();
}

unint64_t sub_100072658(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10000560C(&qword_10012A8C0, "0*");
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v32 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      Hasher.init(_seed:)();

      v10 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = ~(-1 << v3[32]);
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *&v6[8 * v13];
      v15 = 1 << (result & v11);
      if ((v15 & v14) != 0)
      {
        while (1)
        {

          v16 = NWConnection.identifier.getter();

          v17 = NWConnection.identifier.getter();

          if (v16 == v17)
          {
            break;
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *&v6[8 * (v12 >> 6)];
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            v5 = v32;
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        v5 = v32;
        if (v7 == v32)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *&v6[8 * v13] = v15 | v14;
        *(*(v3 + 6) + 8 * v12) = v9;
        v18 = *(v3 + 2);
        v8 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 2) = v19;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v30 = v1 + 32;
    v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v31)
    {
      v21 = *(v30 + 8 * v20);
      Hasher.init(_seed:)();

      v22 = NWConnection.identifier.getter();

      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v23 = ~(-1 << v3[32]);
      for (i = result & v23; ; i = (i + 1) & v23)
      {
        v25 = *&v6[8 * (i >> 6)];
        if (((1 << i) & v25) == 0)
        {
          break;
        }

        v26 = NWConnection.identifier.getter();

        v27 = NWConnection.identifier.getter();

        if (v26 == v27)
        {

          goto LABEL_22;
        }
      }

      *&v6[8 * (i >> 6)] = (1 << i) | v25;
      *(*(v3 + 6) + 8 * i) = v21;
      v28 = *(v3 + 2);
      v8 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v8)
      {
        goto LABEL_33;
      }

      *(v3 + 2) = v29;
LABEL_22:
      if (++v20 == v32)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100072A1C(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Logger();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v9;
    v16 = v15;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v16 = 136315138;
    v12(v6, v8, v2);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_100102F80(v17, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[ICM] Network Advertiser State Changed: %s", v16, 0xCu);
    sub_10000C304(v22);

    return (*(v24 + 8))(v11, v23);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    return (*(v24 + 8))(v11, v9);
  }
}

uint64_t sub_100072D20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100072D68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000045BC;

  return sub_100071B30(a1, v4, v5, v7, v6);
}

uint64_t sub_100072E28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100072EEC(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129EF8, &qword_100108C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100072F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000560C(&qword_10012A1F0, &unk_100109B30);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v14 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    sub_1000F4434(v6, v7, *(a1 + 36), 0, a1);
    v11 = v10;
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(a2, v6, v12);
    *(a2 + *(v4 + 48)) = v11;
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

void *sub_1000730FC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000F444C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_100073178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100079394(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for NWBrowser.Result();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100073234()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.network.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection, &unk_100109C2C);

    v8 = Set.description.getter();
    v10 = v9;

    v11 = sub_100102F80(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[OCM] Current outgoing connections: %s", v6, 0xCu);
    sub_10000C304(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10007346C()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
  v2 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100072658(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections) = v3;
  v4 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  *(v0 + v4) = *_emptyDequeStorage.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_100073540(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Message();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for CommunicationActor();
  v2[20] = static CommunicationActor.shared.getter();
  v2[21] = sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v6;
  v2[23] = v5;

  return _swift_task_switch(sub_1000736E0, v6, v5);
}

uint64_t sub_1000736E0(uint64_t a1)
{
  v2 = *(v1 + 168);
  v8 = *(v1 + 72);
  v3 = static CommunicationActor.shared.getter();
  *(v1 + 192) = v3;
  v4 = swift_task_alloc();
  *(v1 + 200) = v4;
  v4[1] = vextq_s8(v8, v8, 8uLL);
  v5 = swift_task_alloc();
  *(v1 + 208) = v5;
  v6 = type metadata accessor for NetworkConnection();
  *v5 = v1;
  v5[1] = sub_100073800;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 64, v3, v2, 0x293A5F28646E6573, 0xE800000000000000, sub_100074AF4, v4, v6);
}

uint64_t sub_100073800()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100073960, v3, v2);
}

uint64_t sub_100073960()
{
  v0[27] = v0[8];
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_100073A04;
  v2 = v0[9];

  return sub_10007D2AC(v2, 0, 0);
}

uint64_t sub_100073A04()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100073EB4;
  }

  else
  {
    v5 = sub_100073B40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100073B40()
{
  v34 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];

  static Log.network.getter();
  (*(v3 + 16))(v1, v4, v2);
  swift_retain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v30 = v0[16];
    v31 = v0[15];
    v32 = v0[18];
    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 136315650;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v7, v8);
    v15 = sub_100102F80(v12, v14, &v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;

    v16 = sub_1000842B8();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, &v33);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2048;
    v20 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    swift_beginAccess();
    v21 = *(*(v10 + v20) + 24);

    *(v11 + 24) = v21;

    _os_log_impl(&_mh_execute_header, v5, v6, "[OCM] Message popped: %s to %s. Total: %ld", v11, 0x20u);
    swift_arrayDestroy();

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    v25 = v0[14];
    v26 = v0[11];
    v27 = v0[12];

    (*(v27 + 8))(v25, v26);
    (*(v24 + 8))(v22, v23);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_100073EB4()
{
  v35 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];

  static Log.network.getter();
  (*(v2 + 16))(v1, v4, v3);
  swift_retain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v31 = v0[16];
    v32 = v0[15];
    v33 = v0[17];
    v30 = v6;
    v8 = v0[12];
    v7 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v11 = 136315650;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = sub_100102F80(v12, v14, v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;

    v16 = sub_1000842B8();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, v34);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2048;
    v20 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    swift_beginAccess();
    v21 = *(*(v10 + v20) + 24);

    *(v11 + 24) = v21;

    _os_log_impl(&_mh_execute_header, v5, v30, "[OCM] Message failed: %s to %s. Total: %ld", v11, 0x20u);
    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
  }

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100074224(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v55 = a3;
  v5 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v63 = &v50 - v9;
  v10 = type metadata accessor for Message();
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Logger();
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v14 = static CommunicationActor.shared.getter();
  sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  swift_beginAccess();
  result = *(a2 + v15);
  v17 = *(result + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v15);
  if (*(v20 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000ADAC(isUniquelyReferenced_nonNull_native, v18, 0);
    v20 = *(a2 + v15);
  }

  v61 = (*(v62 + 80) + 40) & ~*(v62 + 80);
  sub_10000B0B4((v20 + 16), v20 + v61, a1);
  swift_endAccess();
  v21 = v13;
  static Log.network.getter();
  v23 = v56;
  v22 = v57;
  v24 = v58;
  (*(v57 + 16))(v56, v55, v58);
  swift_retain_n();
  v25 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v55 = v25;
  v26 = os_log_type_enabled(v25, v53);
  v60 = v14;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v52 = v21;
    v28 = v27;
    v51 = swift_slowAlloc();
    v64[0] = v51;
    *v28 = 136315394;
    sub_10007A988(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v23;
    v31 = v54;
    v33 = v32;
    (*(v22 + 8))(v30, v24);
    v34 = sub_100102F80(v29, v33, v64);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2048;
    v35 = *(*(a2 + v15) + 24);

    *(v28 + 14) = v35;

    v36 = v55;
    _os_log_impl(&_mh_execute_header, v55, v53, "[OCM] Message added: %s. Total: %ld", v28, 0x16u);
    sub_10000C304(v51);

    (*(v31 + 8))(v52, v59);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
    (*(v54 + 8))(v21, v59);
  }

  v37 = sub_100074AFC();
  if (!v37)
  {
  }

  v38 = v37;
  v39 = (v62 + 56);
  v40 = (v62 + 32);
  v41 = (v62 + 48);
  for (i = (v62 + 8); ; (*i)(v49, v8))
  {
    swift_beginAccess();
    if (*(*(a2 + v15) + 24) < 1)
    {
      v48 = 1;
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA8C();
    }

    v43 = *(a2 + v15);
    result = (*(v62 + 32))(v7, &v43[v61 + *(v62 + 72) * *(v43 + 4)], v8);
    v44 = *(v43 + 4);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      break;
    }

    v47 = *(v43 + 3);
    if (v46 >= *(v43 + 2))
    {
      v46 = 0;
    }

    *(v43 + 4) = v46;
    if (__OFSUB__(v47, 1))
    {
      goto LABEL_26;
    }

    v48 = 0;
    *(v43 + 3) = v47 - 1;
LABEL_21:
    (*v39)(v7, v48, 1, v8);
    swift_endAccess();
    if ((*v41)(v7, 1, v8) == 1)
    {

      sub_10000C460(v7, &qword_10012AC50, &qword_100109B08);
    }

    v49 = v63;
    (*v40)(v63, v7, v8);
    v64[0] = v38;

    CheckedContinuation.resume(returning:)();
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000748E8()
{

  sub_10000C460(v0 + OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation, &qword_10012AC60, &qword_100109B20);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OutgoingConnectionManager(uint64_t a1)
{
  result = qword_10012AB38;
  if (!qword_10012AB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000749D8(uint64_t a1)
{
  sub_100074A90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100074A90(uint64_t a1)
{
  if (!qword_10012AB48)
  {
    sub_10000A990(&unk_10012AB50, &qword_100109B00);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10012AB48);
    }
  }
}

void *sub_100074AFC()
{
  v1 = sub_10000560C(&qword_10012AC58, &qword_100109B18);
  __chkstk_darwin(v1 - 8);
  v137 = &v134 - v2;
  v141 = type metadata accessor for NWBrowser.Result();
  v138 = *(v141 - 8);
  v3 = __chkstk_darwin(v141);
  v135 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v134 - v5;
  v149 = type metadata accessor for NWEndpoint();
  v147 = *(v149 - 8);
  v6 = __chkstk_darwin(v149);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v164 = &v134 - v10;
  __chkstk_darwin(v9);
  v143 = &v134 - v11;
  v12 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  v13 = __chkstk_darwin(v12 - 8);
  v142 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v134 - v15;
  v146 = type metadata accessor for Logger();
  v145 = *(v146 - 8);
  v16 = __chkstk_darwin(v146);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v148 = &v134 - v20;
  __chkstk_darwin(v19);
  v140 = &v134 - v21;
  v163 = type metadata accessor for NWConnection.State();
  v165 = *(v163 - 8);
  v22 = __chkstk_darwin(v163);
  v162 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v161 = &v134 - v24;
  v25 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_outgoingConnections;
  swift_beginAccess();
  v152 = v0;
  v153 = v25;
  v26 = *(v0 + v25);
  v136 = v8;
  if ((v26 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection, &unk_100109C2C);
    result = Set.Iterator.init(_cocoa:)();
    v29 = v169;
    v28 = v170;
    v30 = v171;
    v31 = v172;
    v32 = v173;
  }

  else
  {
    v33 = -1 << *(v26 + 32);
    v28 = v26 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v26 + 56);
    result = swift_bridgeObjectRetain_n();
    v31 = 0;
    v29 = v26;
  }

  v160 = v30;
  v134 = v18;
  while ((v29 & 0x8000000000000000) == 0)
  {
    v36 = v31;
    v37 = v32;
    v38 = v31;
    if (!v32)
    {
      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= ((v30 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v37 = *(v28 + 8 * v38);
        ++v36;
        if (v37)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }

LABEL_14:
    v39 = (v37 - 1) & v37;
    v40 = *(*(v29 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

    if (!v40)
    {
      goto LABEL_20;
    }

LABEL_18:
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_10007B094();

    v31 = v38;
    v32 = v39;
  }

  v41 = __CocoaSet.Iterator.next()();
  if (v41)
  {
    v168 = v41;
    type metadata accessor for NetworkConnection();
    swift_dynamicCast();
    v38 = v31;
    v39 = v32;
    if (v174)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  sub_100010E54(v29);

  v151 = *(v152 + v153);
  if ((v151 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NetworkConnection();
    sub_10007A988(&qword_10012AAF0, type metadata accessor for NetworkConnection, &unk_100109C2C);
    result = Set.Iterator.init(_cocoa:)();
    v42 = v174;
    v43 = v175;
    v44 = v176;
    v45 = v177;
    v46 = v178;
  }

  else
  {
    v47 = -1 << *(v151 + 32);
    v43 = v151 + 56;
    v44 = ~v47;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v46 = v49 & *(v151 + 56);
    v42 = v151;
    result = swift_bridgeObjectRetain_n();
    v45 = 0;
  }

  v50 = v164;
  v150 = v44;
  v51 = (v44 + 64) >> 6;
  v159 = enum case for NWConnection.State.ready(_:);
  v158 = (v165 + 104);
  v157 = (v165 + 8);
  v160 = v42;
  v156 = v43;
  v52 = v161;
  if (v42 < 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v53 = v45;
  v54 = v46;
  for (i = v45; !v54; ++v53)
  {
    i = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_76;
    }

    if (i >= v51)
    {
      goto LABEL_40;
    }

    v54 = *(v43 + 8 * i);
  }

  v56 = (v54 - 1) & v54;
  v57 = *(*(v42 + 48) + ((i << 9) | (8 * __clz(__rbit64(v54)))));

  if (!v57)
  {
LABEL_40:
    sub_100010E54(v42);

    v64 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
    v65 = v152;
    swift_beginAccess();
    v66 = v149;
    if (!*(*(v65 + v64) + 24))
    {
      v67 = *(v65 + v153);
      if ((v67 & 0xC000000000000001) != 0)
      {

        v68 = __CocoaSet.count.getter();

        if (!v68)
        {
          goto LABEL_48;
        }
      }

      else if (!*(v67 + 16))
      {
LABEL_48:
        v85 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
        v86 = v144;
        (*(*(v85 - 8) + 56))(v144, 1, 1, v85);
        v87 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
        swift_beginAccess();
        sub_1000792A8(v86, v65 + v87);
        swift_endAccess();
        if (*(v65 + 16))
        {

          NWBrowser.cancel()();
        }
      }
    }

    if (*(*(v65 + v64) + 24))
    {
      if (!*(v65 + 16))
      {
        *(v65 + 16) = sub_100076098();
      }

      v88 = *(v65 + v153);
      v89 = v147;
      if ((v88 & 0xC000000000000001) == 0)
      {
        if (!*(v88 + 16))
        {
          goto LABEL_57;
        }

LABEL_59:
        v94 = *(v65 + v153);
        if ((v94 & 0xC000000000000001) != 0)
        {

          v95 = __CocoaSet.count.getter();

          if (v95)
          {
            return 0;
          }
        }

        else if (*(v94 + 16))
        {
          return 0;
        }

        if (*(v65 + 16))
        {

          v96 = NWBrowser.browseResults.getter();
          v97 = v137;
          sub_100073178(v96, v137);

          v98 = v138;
          v99 = v141;
          if ((*(v138 + 48))(v97, 1, v141) == 1)
          {

            sub_10000C460(v97, &qword_10012AC58, &qword_100109B18);
          }

          else
          {
            v118 = v139;
            (*(v98 + 32))(v139, v97, v99);
            v119 = v136;
            NWBrowser.Result.endpoint.getter();
            v120 = NWBrowser.parameters.getter();
            v121 = v99;
            v165 = sub_100076250(v119, v120);

            (*(v147 + 8))(v119, v66);
            v122 = v134;
            static Log.network.getter();
            v123 = v135;
            (*(v98 + 16))(v135, v118, v121);
            v124 = Logger.logObject.getter();
            v125 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v166 = v164;
              *v126 = 136315138;
              NWBrowser.Result.endpoint.getter();
              v127 = String.init<A>(describing:)();
              v129 = v128;
              v130 = *(v98 + 8);
              v130(v123, v141);
              v131 = sub_100102F80(v127, v129, &v166);

              *(v126 + 4) = v131;
              _os_log_impl(&_mh_execute_header, v124, v125, "[OCM] Connecting to browser endpoint %s", v126, 0xCu);
              sub_10000C304(v164);

              v132 = v141;
            }

            else
            {

              v130 = *(v98 + 8);
              v132 = v141;
              v130(v123, v141);
            }

            (*(v145 + 8))(v122, v146);
            swift_beginAccess();
            v133 = v165;

            sub_100065148(&v167, v133);
            swift_endAccess();

            sub_100073234();

            v130(v139, v132);
          }
        }

        return 0;
      }

      v90 = __CocoaSet.count.getter();

      if (v90)
      {
        goto LABEL_59;
      }

LABEL_57:
      v91 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
      swift_beginAccess();
      v92 = v142;
      sub_100079238(v65 + v91, v142);
      v93 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
      if ((*(*(v93 - 8) + 48))(v92, 1, v93) == 1)
      {
        sub_10000C460(v92, &qword_10012AC60, &qword_100109B20);
        goto LABEL_59;
      }

      v100 = *(v92 + *(v93 + 48));
      v101 = v143;
      (*(v89 + 32))(v143, v92, v66);
      v165 = v100;
      v102 = sub_100076250(v101, v100);
      static Log.network.getter();
      v103 = *(v89 + 16);
      v103(v50, v101, v66);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = v50;
        v164 = swift_slowAlloc();
        v166 = v164;
        *v106 = 136315394;
        LODWORD(v163) = v105;
        v103(v136, v50, v66);
        v108 = String.init<A>(describing:)();
        v110 = v109;
        v111 = *(v89 + 8);
        v111(v107, v66);
        v112 = sub_100102F80(v108, v110, &v166);

        *(v106 + 4) = v112;
        *(v106 + 12) = 2080;

        v113 = sub_1000842B8();
        v115 = v114;

        v116 = sub_100102F80(v113, v115, &v166);
        v66 = v149;

        *(v106 + 14) = v116;
        v117 = v111;
        _os_log_impl(&_mh_execute_header, v104, v163, "[OCM] Connecting to last known endpoint %s, replaced with %s", v106, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v117 = *(v89 + 8);
        v117(v50, v66);
      }

      (*(v145 + 8))(v148, v146);
      swift_beginAccess();

      sub_100065148(&v167, v102);
      swift_endAccess();

      sub_100073234();

      v117(v143, v66);
    }

    return 0;
  }

  while (1)
  {
    v165 = v56;
    v154 = v45;
    v155 = v46;
    type metadata accessor for CommunicationActor();
    static CommunicationActor.shared.getter();
    sub_10007A988(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    NWConnection.state.getter();

    v59 = v57;
    v60 = v162;
    v61 = v163;
    (*v158)(v162, v159, v163);
    v62 = static NWConnection.State.== infix(_:_:)();
    v63 = *v157;
    (*v157)(v60, v61);
    v63(v52, v61);

    if (v62)
    {
      break;
    }

    v45 = i;
    v46 = v165;
    v50 = v164;
    v42 = v160;
    v43 = v156;
    if ((v160 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_33:
    v58 = __CocoaSet.Iterator.next()();
    if (v58)
    {
      v166 = v58;
      type metadata accessor for NetworkConnection();
      swift_dynamicCast();
      v57 = v168;
      i = v45;
      v56 = v46;
      if (v168)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  sub_100010E54(v160);

  v69 = v140;
  static Log.network.getter();

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  v72 = v59;
  if (os_log_type_enabled(v70, v71))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v168 = v74;
    *v73 = 136315138;

    v75 = sub_1000842B8();
    v77 = v76;

    v78 = sub_100102F80(v75, v77, &v168);

    *(v73 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v70, v71, "[OCM] Using ready connection: %s", v73, 0xCu);
    sub_10000C304(v74);
  }

  (*(v145 + 8))(v69, v146);
  v79 = v152;
  v80 = sub_10000560C(&unk_10012AB50, &qword_100109B00);
  v81 = *(v80 + 48);

  v82 = v144;
  NWConnection.endpoint.getter();

  v83 = NWConnection.parameters.getter();

  *(v82 + v81) = v83;
  (*(*(v80 - 8) + 56))(v82, 0, 1, v80);
  v84 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_lastOutgoingLocation;
  swift_beginAccess();
  sub_1000792A8(v82, v79 + v84);
  swift_endAccess();
  return v72;
}

uint64_t sub_100076098()
{
  v0 = type metadata accessor for NWBrowser.Descriptor();
  __chkstk_darwin(v0);
  v2 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = 0xD000000000000024;
  v2[1] = 0x80000001001073A0;
  (*(v3 + 104))(v2, enum case for NWBrowser.Descriptor.applicationService(_:));
  _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(0xD000000000000016, 0x8000000100106DF0, 0x766C6F7365525341, 0xEA00000000007265);
  type metadata accessor for NWBrowser();
  swift_allocObject();
  v4 = NWBrowser.init(for:using:)();

  NWBrowser.stateUpdateHandler.setter();

  NWBrowser.browseResultsChangedHandler.setter();
  type metadata accessor for CommunicationActor();
  v5 = static CommunicationActor.sharedQueue.getter();
  NWBrowser.start(queue:)();

  return v4;
}

uint64_t sub_100076250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = *(v6 + 16);
  v12(&v19 - v10, a1, v5);
  v12(v9, v11, v5);
  type metadata accessor for NWConnection();
  swift_allocObject();

  v13 = NWConnection.init(to:using:)();
  (*(v6 + 8))(v11, v5);
  type metadata accessor for NetworkConnection();
  v14 = swift_allocObject();
  type metadata accessor for NetworkCanceller();
  v15 = swift_allocObject();
  sub_10000560C(&qword_10012AAE8, &qword_100109A90);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  *(v14 + 16) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v14;

  NWConnection.stateUpdateHandler.setter();

  sub_10007E1D8();
  return v14;
}

uint64_t sub_1000764EC(uint64_t a1)
{
  v2 = type metadata accessor for NWError();
  v101 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v102 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v90 - v6;
  v8 = __chkstk_darwin(v5);
  v97 = &v90 - v9;
  __chkstk_darwin(v8);
  v99 = &v90 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v103 = v11;
  v104 = v12;
  v13 = __chkstk_darwin(v11);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v93 = &v90 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v90 - v18;
  v20 = __chkstk_darwin(v17);
  v96 = &v90 - v21;
  v22 = __chkstk_darwin(v20);
  v98 = &v90 - v23;
  __chkstk_darwin(v22);
  v25 = &v90 - v24;
  v26 = type metadata accessor for NWBrowser.State();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v91 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v92 = &v90 - v31;
  __chkstk_darwin(v30);
  v33 = &v90 - v32;
  v34 = *(v27 + 16);
  v94 = a1;
  v34(&v90 - v32, a1, v26);
  v35 = (*(v27 + 88))(v33, v26);
  if (v35 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v27 + 96))(v33, v26);
    v36 = v101;
    (*(v101 + 32))(v7, v33, v2);
    static Log.network.getter();
    v37 = *(v36 + 16);
    v37(v102, v7, v2);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = v36;
    v41 = v19;
    if (os_log_type_enabled(v38, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v98 = v41;
      v99 = v7;
      v44 = v43;
      *v42 = 138412290;
      sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v45 = v40;
      v46 = v102;
      v37(v47, v102, v2);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      v49 = *(v45 + 8);
      v49(v46, v2);
      *(v42 + 4) = v48;
      *v44 = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "[OCM] Browser failed: %@", v42, 0xCu);
      sub_10000C460(v44, &qword_100129EF8, &qword_100108C70);
      v41 = v98;
      v7 = v99;
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v102, v2);
    }

    (*(v104 + 8))(v41, v103);
    if (*(v100 + 16))
    {

      NWBrowser.cancel()();
    }

    return v49(v7, v2);
  }

  else
  {
    v50 = v101;
    if (v35 == enum case for NWBrowser.State.waiting(_:))
    {
      (*(v27 + 96))(v33, v26);
      v51 = v50;
      v52 = v99;
      v53 = v2;
      (*(v50 + 32))(v99, v33, v2);
      v54 = v98;
      static Log.network.getter();
      v55 = *(v50 + 16);
      v56 = v97;
      v55(v97, v52, v53);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v61 = v56;
        v55(v62, v56, v53);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        v64 = *(v51 + 8);
        v64(v61, v53);
        *(v59 + 4) = v63;
        *v60 = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "[OCM] Browser waiting: %@", v59, 0xCu);
        sub_10000C460(v60, &qword_100129EF8, &qword_100108C70);

        (*(v104 + 8))(v98, v103);
        return (v64)(v99, v53);
      }

      else
      {

        v69 = *(v51 + 8);
        v69(v56, v53);
        (*(v104 + 8))(v54, v103);
        return (v69)(v52, v53);
      }
    }

    else if (v35 == enum case for NWBrowser.State.setup(_:))
    {
      static Log.network.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "[OCM] Browser setup", v68, 2u);
      }

      return (*(v104 + 8))(v25, v103);
    }

    else if (v35 == enum case for NWBrowser.State.ready(_:))
    {
      v70 = v96;
      static Log.network.getter();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "[OCM] Browser ready", v73, 2u);
      }

      return (*(v104 + 8))(v70, v103);
    }

    else if (v35 == enum case for NWBrowser.State.cancelled(_:))
    {
      v74 = v93;
      static Log.network.getter();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "[OCM] Browser cancelled", v77, 2u);
      }

      (*(v104 + 8))(v74, v103);
      *(v100 + 16) = 0;
    }

    else
    {
      v78 = v95;
      static Log.network.getter();
      v79 = v92;
      v34(v92, v94, v26);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v105 = v102;
        *v82 = 136315138;
        LODWORD(v101) = v81;
        v34(v91, v79, v26);
        v83 = String.init<A>(describing:)();
        v84 = v79;
        v85 = v83;
        v87 = v86;
        v88 = *(v27 + 8);
        v88(v84, v26);
        v89 = sub_100102F80(v85, v87, &v105);

        *(v82 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v80, v101, "[OCM] Unknown Browser State: %s", v82, 0xCu);
        sub_10000C304(v102);
      }

      else
      {

        v88 = *(v27 + 8);
        v88(v79, v26);
      }

      (*(v104 + 8))(v78, v103);
      return (v88)(v33, v26);
    }
  }
}

void *sub_100077170(NSObject *a1, void (*a2)(char *, char *, uint64_t))
{
  v179 = a2;
  v180 = a1;
  v2 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  __chkstk_darwin(v2 - 8);
  v4 = &v162 - v3;
  v5 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v182 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v162 - v6;
  v8 = type metadata accessor for NWError();
  v181 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v171 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v174 = (&v162 - v12);
  v13 = __chkstk_darwin(v11);
  v15 = &v162 - v14;
  v16 = __chkstk_darwin(v13);
  v176 = &v162 - v17;
  __chkstk_darwin(v16);
  v177 = &v162 - v18;
  v19 = type metadata accessor for Logger();
  v178 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v166 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v163 = &v162 - v23;
  v24 = __chkstk_darwin(v22);
  v172 = (&v162 - v25);
  v26 = __chkstk_darwin(v24);
  v170 = (&v162 - v27);
  v28 = __chkstk_darwin(v26);
  v167 = &v162 - v29;
  v30 = __chkstk_darwin(v28);
  v175 = (&v162 - v31);
  v32 = __chkstk_darwin(v30);
  v168 = &v162 - v33;
  __chkstk_darwin(v32);
  v169 = &v162 - v34;
  v35 = type metadata accessor for NWConnection.State();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v162 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v165 = &v162 - v40;
  __chkstk_darwin(v39);
  v42 = &v162 - v41;
  v164 = *(v36 + 16);
  v164(&v162 - v41, v179, v35);
  v43 = (*(v36 + 88))(v42, v35);
  if (v43 == enum case for NWConnection.State.waiting(_:))
  {
    v174 = v19;
    (*(v36 + 96))(v42, v35);
    v44 = v181;
    v45 = v177;
    (v181[4])(v177, v42, v8);
    static Log.network.getter();
    v179 = v44[2];
    v179(v176, v45, v8);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = v44;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v173 = v8;
      v50 = v49;
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v184[0] = v172;
      *v50 = 136315394;
      v180 = v46;

      v51 = sub_1000842B8();
      v52 = v48;
      LODWORD(v170) = v47;
      v53 = v51;
      v55 = v54;

      v56 = sub_100102F80(v53, v55, v184);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2112;
      sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      v57 = v173;
      swift_allocError();
      v58 = v176;
      v179(v59, v176, v57);
      v60 = _swift_stdlib_bridgeErrorToNSError();
      v61 = v52[1];
      v61(v58, v57);
      *(v50 + 14) = v60;
      v62 = v171;
      *v171 = v60;
      v63 = v180;
      _os_log_impl(&_mh_execute_header, v180, v170, "[OCM] %s waiting with error: %@", v50, 0x16u);
      sub_10000C460(v62, &qword_100129EF8, &qword_100108C70);

      sub_10000C304(v172);

      (*(v178 + 8))(v175, v174);
      v61(v177, v57);
    }

    else
    {

      v80 = v44[1];
      v80(v176, v8);
      (*(v178 + 8))(v175, v174);
      v80(v177, v8);
    }

    goto LABEL_25;
  }

  v177 = v15;
  v64 = v181;
  v173 = v8;
  if (v43 == enum case for NWConnection.State.failed(_:))
  {
    (*(v36 + 96))(v42, v35);
    v65 = v177;
    v66 = v173;
    (v64[4])(v177, v42, v173);
    v67 = v174;
    *v174 = 60;
    (v64[13])(v67, enum case for NWError.posix(_:), v66);
    v68 = static NWError.== infix(_:_:)();
    v69 = v64[1];
    v179 = (v64 + 1);
    v176 = v69;
    (v69)(v67, v66);
    v70 = v19;
    if (v68)
    {
      v71 = v170;
      static Log.network.getter();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v184[0] = v181;
        *v74 = 136315138;
        LODWORD(v175) = v73;

        v75 = sub_1000842B8();
        v77 = v76;

        v78 = sub_100102F80(v75, v77, v184);
        v66 = v173;

        *(v74 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v72, v175, "[OCM] %s timed out", v74, 0xCu);
        sub_10000C304(v181);
      }

      (*(v178 + 8))(v71, v70);
      v79 = v176;
    }

    else
    {
      v174 = v19;
      v90 = v172;
      static Log.network.getter();
      v91 = v64[2];
      v181 = v64 + 2;
      v92 = v171;
      v93 = v65;
      v94 = v90;
      v91(v171, v93, v66);

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v184[0] = v175;
        *v97 = 136315394;
        LODWORD(v169) = v96;

        v98 = sub_1000842B8();
        v100 = v99;

        v101 = sub_100102F80(v98, v100, v184);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2112;
        sub_10007A988(&qword_10012AAF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v91(v102, v92, v173);
        v103 = _swift_stdlib_bridgeErrorToNSError();
        v79 = v176;
        (v176)(v92, v173);
        *(v97 + 14) = v103;
        v104 = v170;
        *v170 = v103;
        _os_log_impl(&_mh_execute_header, v95, v169, "[OCM] %s failed with error: %@", v97, 0x16u);
        sub_10000C460(v104, &qword_100129EF8, &qword_100108C70);

        sub_10000C304(v175);

        v66 = v173;

        (*(v178 + 8))(v172, v174);
      }

      else
      {

        v79 = v176;
        (v176)(v92, v66);
        (*(v178 + 8))(v94, v174);
      }
    }

    sub_10007E560();
    (v79)(v177, v66);
    goto LABEL_25;
  }

  v174 = v19;
  if (v43 == enum case for NWConnection.State.setup(_:))
  {
    v81 = v169;
    static Log.network.getter();

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v184[0] = v181;
      *v84 = 136315138;
      v85 = v83;

      v86 = sub_1000842B8();
      v88 = v87;

      v89 = sub_100102F80(v86, v88, v184);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v85, "[OCM] %s setup", v84, 0xCu);
      sub_10000C304(v181);
    }

    (*(v178 + 8))(v81, v174);
    goto LABEL_25;
  }

  if (v43 != enum case for NWConnection.State.preparing(_:))
  {
    if (v43 != enum case for NWConnection.State.ready(_:))
    {
      if (v43 == enum case for NWConnection.State.cancelled(_:))
      {
        v137 = v163;
        static Log.network.getter();
        v138 = v180;

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v184[0] = v142;
          *v141 = 136315138;
          LODWORD(v181) = v140;

          v143 = sub_1000842B8();
          v145 = v144;

          v146 = v143;
          v138 = v180;
          v147 = sub_100102F80(v146, v145, v184);

          *(v141 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v139, v181, "[OCM] %s cancelled", v141, 0xCu);
          sub_10000C304(v142);
        }

        (*(v178 + 8))(v137, v174);
        swift_beginAccess();
        sub_100078980(v138);
        swift_endAccess();

        sub_100073234();
      }

      else
      {
        static Log.network.getter();
        v164(v165, v179, v35);

        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();

        LODWORD(v181) = v149;
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v184[0] = v179;
          *v150 = 136315394;
          v180 = v148;

          v176 = sub_1000842B8();
          v152 = v151;

          v153 = sub_100102F80(v176, v152, v184);

          v177 = v150;
          *(v150 + 4) = v153;
          *(v150 + 12) = 2080;
          v154 = v165;
          v164(v162, v165, v35);
          v155 = String.init<A>(describing:)();
          v157 = v156;
          v158 = *(v36 + 8);
          v158(v154, v35);
          v159 = sub_100102F80(v155, v157, v184);

          v160 = v177;
          *(v177 + 14) = v159;
          v161 = v180;
          _os_log_impl(&_mh_execute_header, v180, v181, "[OCM] %s unknown state: %s", v160, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v158 = *(v36 + 8);
          v158(v165, v35);
        }

        (*(v178 + 8))(v166, v174);
        v158(v42, v35);
      }

      goto LABEL_25;
    }

    v105 = v167;
    static Log.network.getter();

    v106 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v106, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v184[0] = v117;
      *v116 = 136315138;
      v118 = v115;

      v119 = sub_1000842B8();
      v121 = v120;

      v122 = sub_100102F80(v119, v121, v184);

      *(v116 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v106, v118, "[OCM] %s ready", v116, 0xCu);
      sub_10000C304(v117);

      (*(v178 + 8))(v167, v174);
      goto LABEL_25;
    }

LABEL_24:

    (*(v178 + 8))(v105, v174);
    goto LABEL_25;
  }

  v105 = v168;
  static Log.network.getter();

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v106, v107))
  {
    goto LABEL_24;
  }

  v108 = swift_slowAlloc();
  v109 = swift_slowAlloc();
  v184[0] = v109;
  *v108 = 136315138;
  v110 = v107;

  v111 = sub_1000842B8();
  v113 = v112;

  v114 = sub_100102F80(v111, v113, v184);

  *(v108 + 4) = v114;
  _os_log_impl(&_mh_execute_header, v106, v110, "[OCM] %s preparing", v108, 0xCu);
  sub_10000C304(v109);

  (*(v178 + 8))(v168, v174);
LABEL_25:
  result = sub_100074AFC();
  if (!result)
  {
    return result;
  }

  v124 = result;
  v125 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  v126 = (v182 + 56);
  v127 = (v182 + 32);
  v128 = (v182 + 48);
  for (i = (v182 + 8); ; (*i)(v7, v5))
  {
    v130 = v183;
    swift_beginAccess();
    if (*(*(v130 + v125) + 24) < 1)
    {
      v136 = 1;
      goto LABEL_36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA8C();
    }

    v131 = *(v183 + v125);
    result = (*(v182 + 32))(v4, &v131[((*(v182 + 80) + 40) & ~*(v182 + 80)) + *(v182 + 72) * *(v131 + 4)], v5);
    v132 = *(v131 + 4);
    v133 = __OFADD__(v132, 1);
    v134 = v132 + 1;
    if (v133)
    {
      break;
    }

    v135 = *(v131 + 3);
    if (v134 >= *(v131 + 2))
    {
      v134 = 0;
    }

    *(v131 + 4) = v134;
    if (__OFSUB__(v135, 1))
    {
      goto LABEL_49;
    }

    v136 = 0;
    *(v131 + 3) = v135 - 1;
LABEL_36:
    (*v126)(v4, v136, 1, v5);
    swift_endAccess();
    if ((*v128)(v4, 1, v5) == 1)
    {

      return sub_10000C460(v4, &qword_10012AC50, &qword_100109B08);
    }

    (*v127)(v7, v4, v5);
    v184[0] = v124;

    CheckedContinuation.resume(returning:)();
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000786D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10007A988(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10007A988(&qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000675F8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100078D4C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100078980(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100078B68(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();

  v8 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {

    v13 = NWConnection.identifier.getter();

    v14 = NWConnection.identifier.getter();

    if (v13 == v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v18 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100067998();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100079054(v11);
  result = v17;
  *v1 = v18;
  return result;
}

uint64_t sub_100078B68(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000653DC(v4, v3);
  v17 = v5;
  Hasher.init(_seed:)();

  v6 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {

      v11 = NWConnection.identifier.getter();

      v12 = NWConnection.identifier.getter();

      if (v11 == v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_100079054(v9);

  v14 = NWConnection.identifier.getter();

  v15 = NWConnection.identifier.getter();

  if (v14 == v15)
  {
    *v2 = v17;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100078D4C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10007A988(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_100079054(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        v10 = NWConnection.identifier.getter();

        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 8 * v2);
          v15 = (v13 + 8 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100079238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000792A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AC60, &qword_100109B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079394@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for NWBrowser.Result();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_100079498(uint64_t a1)
{
  v2 = v1;
  v181 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v4 = *(v181 - 8);
  v5 = __chkstk_darwin(v181);
  v152 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v161 = &v145 - v8;
  __chkstk_darwin(v7);
  v160 = &v145 - v9;
  v10 = sub_10000560C(&qword_10012AC50, &qword_100109B08);
  __chkstk_darwin(v10 - 8);
  v12 = &v145 - v11;
  v13 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v177 = &v145 - v15;
  v169 = type metadata accessor for NWEndpoint();
  v206 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for Logger();
  v205 = *(v189 - 8);
  v17 = __chkstk_darwin(v189);
  v172 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v145 - v20;
  __chkstk_darwin(v19);
  v184 = &v145 - v22;
  v202 = type metadata accessor for NWBrowser.Result();
  v23 = *(v202 - 8);
  v24 = __chkstk_darwin(v202);
  v151 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v159 = &v145 - v27;
  v28 = __chkstk_darwin(v26);
  v158 = &v145 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = &v145 - v31;
  v32 = __chkstk_darwin(v30);
  v170 = &v145 - v33;
  v34 = __chkstk_darwin(v32);
  v180 = &v145 - v35;
  v36 = __chkstk_darwin(v34);
  v179 = &v145 - v37;
  v38 = __chkstk_darwin(v36);
  v183 = &v145 - v39;
  __chkstk_darwin(v38);
  v190 = &v145 - v40;
  v201 = type metadata accessor for NWBrowser.Result.Change();
  v41 = __chkstk_darwin(v201);
  v196 = &v145 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v195 = &v145 - v44;
  v45 = *(a1 + 56);
  v174 = a1 + 56;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v45;
  v49 = OBJC_IVAR____TtC11photosfaced25OutgoingConnectionManager_waiters;
  v173 = (v46 + 63) >> 6;
  v193 = v43 + 32;
  v194 = v43 + 16;
  v192 = v43 + 88;
  v191 = enum case for NWBrowser.Result.Change.added(_:);
  v176 = enum case for NWBrowser.Result.Change.removed(_:);
  v157 = enum case for NWBrowser.Result.Change.changed(_:);
  v150 = (v43 + 8);
  v197 = v43;
  v187 = (v43 + 96);
  v186 = (v23 + 32);
  v154 = enum case for NWBrowser.Result.Change.identical(_:);
  v153 = (v4 + 32);
  v199 = (v23 + 16);
  v156 = (v4 + 16);
  v155 = (v4 + 8);
  v200 = (v23 + 8);
  v188 = (v205 + 1);
  v166 = (v206 + 1);
  v50 = (v14 + 56);
  v205 = (v14 + 48);
  v206 = (v14 + 32);
  v203 = v14;
  v204 = (v14 + 8);
  v198 = a1;

  v51 = 0;
  *&v52 = 136315138;
  v165 = v52;
  *&v52 = 136315650;
  v149 = v52;
  v167 = v21;
  v178 = v2;
  v175 = v50;
  while (v48)
  {
    v53 = v201;
LABEL_12:
    v55 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v56 = v197;
    v57 = v195;
    (*(v197 + 16))(v195, *(v198 + 48) + *(v197 + 72) * (v55 | (v51 << 6)), v53);
    v58 = v196;
    (*(v56 + 32))(v196, v57, v53);
    v59 = *(v56 + 88);
    v60 = v58;
    v61 = v59(v58, v53);
    if (v61 == v191)
    {
      (*v187)(v58, v53);
      v62 = v190;
      v63 = v202;
      (*v186)(v190, v58, v202);
      v64 = v184;
      static Log.network.getter();
      v65 = v183;
      (*v199)(v183, v62, v63);
      v66 = Logger.logObject.getter();
      LODWORD(v182) = static os_log_type_t.info.getter();
      v67 = os_log_type_enabled(v66, v182);
      v68 = v177;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v163 = v69;
        v164 = swift_slowAlloc();
        v207 = v164;
        *v69 = v165;
        v70 = v168;
        v71 = v183;
        NWBrowser.Result.endpoint.getter();
        v162 = sub_10007AA34();
        v73 = v72;
        (*v166)(v70, v169);
        v185 = *v200;
        (v185)(v71, v202);
        v74 = sub_100102F80(v162, v73, &v207);

        v75 = v163;
        *(v163 + 1) = v74;
        _os_log_impl(&_mh_execute_header, v66, v182, "[OCM] Browser results added endpoint: %s", v75, 0xCu);
        sub_10000C304(v164);

        (*v188)(v184, v189);
      }

      else
      {

        v185 = *v200;
        (v185)(v65, v63);
        (*v188)(v64, v189);
      }

      v96 = v178;
      v97 = v175;
      v98 = sub_100074AFC();
      if (v98)
      {
        while (1)
        {
          swift_beginAccess();
          if (*(*(v96 + v49) + 24) < 1)
          {
            v104 = 1;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000BA8C();
            }

            v99 = *(v96 + v49);
            (*(v203 + 32))(v12, &v99[((*(v203 + 80) + 40) & ~*(v203 + 80)) + *(v203 + 72) * *(v99 + 4)], v13);
            v100 = *(v99 + 4);
            v101 = __OFADD__(v100, 1);
            v102 = v100 + 1;
            if (v101)
            {
              goto LABEL_42;
            }

            v103 = *(v99 + 3);
            if (v102 >= *(v99 + 2))
            {
              v102 = 0;
            }

            *(v99 + 4) = v102;
            if (__OFSUB__(v103, 1))
            {
              goto LABEL_43;
            }

            v104 = 0;
            *(v99 + 3) = v103 - 1;
          }

          (*v97)(v12, v104, 1, v13);
          swift_endAccess();
          if ((*v205)(v12, 1, v13) == 1)
          {
            break;
          }

          (*v206)(v68, v12, v13);
          v207 = v98;

          CheckedContinuation.resume(returning:)();
          (*v204)(v68, v13);
        }

        (v185)(v190, v202);

        sub_10000C460(v12, &qword_10012AC50, &qword_100109B08);
      }

      else
      {
        v95 = v190;
LABEL_35:
        (v185)(v95, v202);
      }
    }

    else
    {
      v76 = v199;
      if (v61 == v176)
      {
        (*v187)(v60, v201);
        v77 = v179;
        v78 = v60;
        v79 = v202;
        (*v186)(v179, v78, v202);
        v80 = v167;
        static Log.network.getter();
        v81 = v77;
        v82 = v79;
        (*v76)(v180, v81, v79);
        v83 = v80;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v163 = v86;
          v182 = swift_slowAlloc();
          v207 = v182;
          *v86 = v165;
          v87 = v168;
          v164 = v84;
          v88 = v180;
          NWBrowser.Result.endpoint.getter();
          v162 = sub_10007AA34();
          v90 = v89;
          (*v166)(v87, v169);
          v185 = *v200;
          (v185)(v88, v202);
          v91 = sub_100102F80(v162, v90, &v207);

          v92 = v163;
          *(v163 + 1) = v91;
          v93 = v167;
          v94 = v164;
          _os_log_impl(&_mh_execute_header, v164, v85, "[OCM] Browser results removed endpoint: %s", v92, 0xCu);
          sub_10000C304(v182);

          (*v188)(v93, v189);
          v95 = v179;
          goto LABEL_35;
        }

        v142 = *v200;
        (*v200)(v180, v82);
        (*v188)(v83, v189);
        (v142)(v179, v82);
      }

      else if (v61 == v157)
      {
        (*v187)(v60, v201);
        v105 = sub_10000560C(&qword_10012AC68, &qword_100109B28);
        v106 = v60;
        v182 = *(v105 + 48);
        v185 = *(v105 + 64);
        v107 = *v186;
        v108 = v60;
        v109 = v202;
        (*v186)(v170, v108, v202);
        v107(v171, &v106[v182], v109);
        v110 = v199;
        v111 = v185 + v106;
        v112 = v160;
        (*v153)(v160, v111, v181);
        static Log.network.getter();
        v113 = *v110;
        (*v110)(v158, v170, v109);
        v185 = v113;
        (v113)(v159, v171, v109);
        v163 = *v156;
        (v163)(v161, v112, v181);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.info.getter();
        v116 = v115;
        if (os_log_type_enabled(v114, v115))
        {
          v117 = swift_slowAlloc();
          v182 = v117;
          v162 = swift_slowAlloc();
          v207 = v162;
          *v117 = v149;
          v148 = v114;
          v118 = v151;
          v119 = v158;
          v147 = v116;
          v120 = v202;
          (v185)(v151, v158, v202);
          v146 = String.init<A>(describing:)();
          v122 = v121;
          v164 = *v200;
          v123 = v119;
          v124 = v120;
          (v164)(v123, v120);
          v125 = sub_100102F80(v146, v122, &v207);

          v126 = v182;
          *(v182 + 4) = v125;
          *(v126 + 12) = 2080;
          v127 = v159;
          (v185)(v118, v159, v124);
          v128 = String.init<A>(describing:)();
          v130 = v129;
          (v164)(v127, v124);
          v131 = sub_100102F80(v128, v130, &v207);

          v132 = v182;
          *(v182 + 14) = v131;
          *(v132 + 22) = 2080;
          v133 = v161;
          v134 = v181;
          (v163)(v152, v161, v181);
          v163 = String.init<A>(describing:)();
          v136 = v135;
          v185 = *v155;
          (v185)(v133, v134);
          v137 = sub_100102F80(v163, v136, &v207);

          v138 = v182;
          *(v182 + 24) = v137;
          v139 = v148;
          _os_log_impl(&_mh_execute_header, v148, v147, "[OCM] Browser result changed: %s to %s with %s", v138, 0x20u);
          swift_arrayDestroy();

          (*v188)(v172, v189);
          (v185)(v160, v181);
          v140 = v202;
          v141 = v164;
          (v164)(v171, v202);
          (v141)(v170, v140);
        }

        else
        {

          v185 = *v155;
          (v185)(v161, v181);
          v143 = *v200;
          v144 = v202;
          (*v200)(v159, v202);
          (v143)(v158, v144);
          (*v188)(v172, v189);
          (v185)(v160, v181);
          (v143)(v171, v144);
          (v143)(v170, v144);
        }
      }

      else if (v61 != v154)
      {
        (*v150)(v60, v201);
      }
    }
  }

  v53 = v201;
  while (1)
  {
    v54 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v54 >= v173)
    {

      return;
    }

    v48 = *(v174 + 8 * v54);
    ++v51;
    if (v48)
    {
      v51 = v54;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_10007A988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007A9D0()
{

  sub_100071B20(*(v0 + 24), *(v0 + 32));

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10007AA34()
{
  v43 = type metadata accessor for URL();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v2 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NWEndpoint.Port();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint.Host();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = NWEndpoint.deviceName.getter();
  if (!v15)
  {
    v40 = v9;
    v41 = v7;
    v42 = v5;
    v16 = v2;
    v17 = v44;
    v18 = v45;
    (*(v11 + 16))(v13, v0, v10);
    v19 = (*(v11 + 88))(v13, v10);
    if (v19 == enum case for NWEndpoint.hostPort(_:))
    {
      (*(v11 + 96))(v13, v10);
      v20 = *(sub_10000560C(&qword_10012AE40, &qword_100109BA8) + 48);
      v21 = v40;
      v22 = v41;
      v23 = v6;
      (*(v41 + 32))(v40, v13, v6);
      v24 = v42;
      (*(v17 + 32))(v42, v13 + v20, v3);
      v46 = 0;
      v47 = 0xE000000000000000;
      v25._countAndFlagsBits = 0x726F503A74736F48;
      v25._object = 0xEA00000000002074;
      String.append(_:)(v25);
      _print_unlocked<A, B>(_:_:)();
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      _print_unlocked<A, B>(_:_:)();
      v27 = v46;
      (*(v17 + 8))(v24, v3);
      (*(v22 + 8))(v21, v23);
      return v27;
    }

    else if (v19 == enum case for NWEndpoint.service(_:))
    {
      (*(v11 + 96))(v13, v10);
      v28 = *v13;
      v29 = v13[1];

      v30 = *(sub_10000560C(&qword_10012AE30, &qword_100109B98) + 80);
      v46 = 0x2065636976726553;
      v47 = 0xE800000000000000;
      v31._countAndFlagsBits = v28;
      v31._object = v29;
      String.append(_:)(v31);

      v32 = v46;
      sub_10007B02C(v13 + v30);
      return v32;
    }

    else if (v19 == enum case for NWEndpoint.unix(_:))
    {
      (*(v11 + 96))(v13, v10);
      v33._countAndFlagsBits = *v13;
      v34 = v13[1];
      v46 = 0x2078696E55;
      v47 = 0xE500000000000000;
      v33._object = v34;
      String.append(_:)(v33);

      return v46;
    }

    else if (v19 == enum case for NWEndpoint.url(_:))
    {
      (*(v11 + 96))(v13, v10);
      v35 = v43;
      (*(v18 + 32))(v16, v13, v43);
      v46 = 541872725;
      v47 = 0xE400000000000000;
      v36._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v36);

      v37 = v46;
      (*(v18 + 8))(v16, v35);
      return v37;
    }

    else
    {
      v38 = enum case for NWEndpoint.opaque(_:);
      v39 = v19;
      (*(v11 + 8))(v13, v10);
      if (v39 == v38)
      {
        return 0x552065757161704FLL;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }
  }

  return result;
}

uint64_t sub_10007B02C(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012AE38, &qword_100109BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B094()
{
  v0 = type metadata accessor for Logger();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v47[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v1);
  v6 = &v47[-v5];
  __chkstk_darwin(v4);
  v8 = &v47[-v7];
  v9 = type metadata accessor for NWProtocolQUIC.Metadata.KeepAliveBehavior();
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  v11 = __chkstk_darwin(v9);
  v53 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v47[-v13];
  type metadata accessor for NWProtocolQUIC();

  static NWProtocolQUIC.definition.getter();
  v15 = NWConnection.metadata(definition:)();

  if (v15)
  {
    type metadata accessor for NWProtocolQUIC.Metadata();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v50 = v17;
      dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.getter();
      v18 = v54;
      v19 = v55;
      v20 = (*(v55 + 88))(v14, v54);
      if (v20 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.seconds(_:))
      {
        (*(v19 + 96))(v14, v18);
        v21 = *v14;
        static Log.network.getter();

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v56 = v25;
          *v24 = 134218242;
          *(v24 + 4) = v21;
          *(v24 + 12) = 2080;

          v26 = sub_1000842B8();
          v28 = v27;

          v29 = sub_100102F80(v26, v28, &v56);

          *(v24 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v22, v23, "Fixing invalid keepalive (%ld): %s", v24, 0x16u);
          sub_10000C304(v25);
          v18 = v54;
        }

        (*(v51 + 8))(v6, v52);
        (*(v55 + 104))(v53, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:), v18);
LABEL_14:
        dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();
      }

      if (v20 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.on(_:))
      {
        static Log.network.getter();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v56 = v33;
          *v32 = 136315138;

          v34 = sub_1000842B8();
          v36 = v35;

          v37 = v34;
          v19 = v55;
          v38 = sub_100102F80(v37, v36, &v56);

          *(v32 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v30, v31, "Fixing invalid keepalive (on): %s", v32, 0xCu);
          sub_10000C304(v33);
          v18 = v54;
        }

        (*(v51 + 8))(v8, v52);
        (*(v19 + 104))(v53, enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:), v18);
        goto LABEL_14;
      }

      v39 = enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:);
      if (v20 == enum case for NWProtocolQUIC.Metadata.KeepAliveBehavior.off(_:))
      {
      }

      static Log.network.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v56 = v49;
        *v42 = 136315138;
        v48 = v41;
        v43 = v53;
        dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.getter();
        v44 = String.init<A>(describing:)();
        v46 = sub_100102F80(v44, v45, &v56);

        *(v42 + 4) = v46;
        v19 = v55;
        _os_log_impl(&_mh_execute_header, v40, v48, "Found unkown keepalive: %s", v42, 0xCu);
        sub_10000C304(v49);
        v18 = v54;

        (*(v51 + 8))(v3, v52);
      }

      else
      {

        (*(v51 + 8))(v3, v52);
        v43 = v53;
      }

      (*(v19 + 104))(v43, v39, v18);
      dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();

      return (*(v19 + 8))(v14, v18);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10007B790(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v2[13] = swift_task_alloc();
  type metadata accessor for MessageBody();
  v2[14] = swift_task_alloc();
  type metadata accessor for Message.Operation();
  v2[15] = swift_task_alloc();
  sub_10000560C(&qword_10012AFD8, &qword_100109D40);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for ProtocolVersion();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for FileHeaderProto();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for MessageProto();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for CommunicationActor();
  v2[31] = static CommunicationActor.shared.getter();
  v6 = swift_task_alloc();
  v2[32] = v6;
  *v6 = v2;
  v6[1] = sub_10007BA6C;

  return sub_10008165C();
}

uint64_t sub_10007BA6C(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_10007CE1C;
  }

  else
  {
    v3[35] = v4;
    v3[36] = v5;
    v6 = sub_10007BC10;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10007BC10()
{
  v1 = *(v0 + 272);
  v2 = LazyData.getData()();
  if (v1)
  {

    v6 = *(v0 + 8);
LABEL_4:

    return v6();
  }

  v4 = v2;
  v5 = v3;

  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  BinaryDecodingOptions.init()();
  sub_10008518C(&qword_10012AFA8, 255, &type metadata accessor for MessageProto, &protocol conformance descriptor for MessageProto);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v8 = static TestProperties.requestTimeout.getter();
  v10 = v9;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  *(v0 + 296) = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000010, 0x8000000100107690, v8, v10);
  v11 = MessageProto.fileCount.getter();
  *(v0 + 360) = v11;
  if (!v11)
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);

    MessageProto.version.getter();
    ProtocolVersion.init(rawValue:)();
    v16 = *(v14 + 48);
    if (v16(v15, 1, v13) == 1)
    {
      v17 = *(v0 + 128);
      v18 = *(v0 + 136);
      static ProtocolVersion.current.getter();
      if (v16(v17, 1, v18) != 1)
      {
        sub_10000C460(*(v0 + 128), &qword_10012AFD8, &qword_100109D40);
      }
    }

    else
    {
      (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
    }

    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
    Message.Operation.init(protobuf:)();
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);
    MessageProto.messageContent.getter();
    (*(v22 + 16))(v20, v19, v21);
    MessageBody.init(data:files:version:)();
    if (MessageProto.hasComplete.getter())
    {
      MessageProto.complete.getter();
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v32 = *(v0 + 208);
    v26 = *(v0 + 160);
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
    v29 = *(v0 + 104);
    Message.init(operation:content:complete:)();
    (*(v27 + 8))(v26, v28);
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v23;

    sub_100005654(0, 0, v29, &unk_100109D78, v31);

    (*(v25 + 8))(v24, v32);

    v6 = *(v0 + 8);
    goto LABEL_4;
  }

  *(v0 + 364) = 0;
  *(v0 + 304) = &_swiftEmptyDictionarySingleton;
  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  *v12 = v0;
  v12[1] = sub_10007C28C;

  return sub_10008165C();
}

uint64_t sub_10007C28C(uint64_t a1)
{
  v3 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {

    v4 = v3[35];
    v5 = v3[36];
    v6 = sub_10007CF14;
  }

  else
  {
    v4 = v3[35];
    v5 = v3[36];
    v6 = sub_10007C3A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10007C3A8()
{
  v1 = *(v0 + 328);
  v2 = LazyData.getData()();
  if (v1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 104);

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v4;

    sub_100005654(0, 0, v8, &unk_100109D58, v10);

    (*(v7 + 8))(v5, v6);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v11 = v2;
    v12 = v3;

    *(v0 + 72) = v11;
    *(v0 + 80) = v12;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    BinaryDecodingOptions.init()();
    sub_10008518C(&qword_10012AFB8, 255, &type metadata accessor for FileHeaderProto, &protocol conformance descriptor for FileHeaderProto);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v15 = swift_task_alloc();
    *(v0 + 336) = v15;
    *v15 = v0;
    v15[1] = sub_10007C74C;

    return sub_10008165C();
  }
}

uint64_t sub_10007C74C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {

    v5 = v4[35];
    v6 = v4[36];
    v7 = sub_10007D0D0;
  }

  else
  {
    v4[44] = a1;
    v5 = v4[35];
    v6 = v4[36];
    v7 = sub_10007C878;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10007C878()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v42 = *(v0 + 360);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 364) + 1;
  v7 = FileHeaderProto.filename.getter();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10005C26C(v1, v7, v9, isUniquelyReferenced_nonNull_native);

  (*(v4 + 8))(v3, v5);
  if (v6 == v42)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);

    MessageProto.version.getter();
    ProtocolVersion.init(rawValue:)();
    v15 = *(v13 + 48);
    if (v15(v14, 1, v12) == 1)
    {
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      static ProtocolVersion.current.getter();
      if (v15(v17, 1, v16) != 1)
      {
        sub_10000C460(*(v0 + 128), &qword_10012AFD8, &qword_100109D40);
      }
    }

    else
    {
      (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
    }

    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
    Message.Operation.init(protobuf:)();
    if (v11)
    {
      v20 = *(v0 + 296);
      v21 = *(v0 + 232);
      v23 = *(v0 + 208);
      v22 = *(v0 + 216);
      v24 = *(v0 + 104);
      (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));

      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v20;

      sub_100005654(0, 0, v24, &unk_100109D70, v26);

      (*(v22 + 8))(v21, v23);

      v27 = *(v0 + 8);
    }

    else
    {
      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 136);
      v31 = *(v0 + 144);
      MessageProto.messageContent.getter();
      (*(v31 + 16))(v29, v28, v30);
      MessageBody.init(data:files:version:)();
      if (MessageProto.hasComplete.getter())
      {
        MessageProto.complete.getter();
      }

      v32 = *(v0 + 296);
      v33 = *(v0 + 232);
      v34 = *(v0 + 216);
      v41 = *(v0 + 208);
      v35 = *(v0 + 160);
      v37 = *(v0 + 136);
      v36 = *(v0 + 144);
      v38 = *(v0 + 104);
      Message.init(operation:content:complete:)();
      (*(v36 + 8))(v35, v37);
      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v32;

      sub_100005654(0, 0, v38, &unk_100109D78, v40);

      (*(v34 + 8))(v33, v41);

      v27 = *(v0 + 8);
    }

    return v27();
  }

  else
  {
    ++*(v0 + 364);
    *(v0 + 304) = v2;
    v18 = swift_task_alloc();
    *(v0 + 312) = v18;
    *v18 = v0;
    v18[1] = sub_10007C28C;

    return sub_10008165C();
  }
}

uint64_t sub_10007CE1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007CF14()
{
  v1 = v0[37];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[13];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_100005654(0, 0, v5, &unk_100109D50, v7);

  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007D0D0()
{
  v1 = v0[37];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[13];

  (*(v6 + 8))(v5, v7);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_100005654(0, 0, v8, &unk_100109D68, v10);

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007D2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for FileHeaderProto();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for MessageProto();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for Message.Operation();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = type metadata accessor for CommunicationActor();
  v4[34] = static CommunicationActor.shared.getter();
  v4[35] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[36] = v10;
  v4[37] = v9;

  return _swift_task_switch(sub_10007D52C, v10, v9);
}

void sub_10007D52C()
{
  if (v0[18])
  {
    v1 = v0[17];
    v2 = v0[18];
  }

  else
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[30];
    Message.operation.getter();
    v1 = sub_1000849D0(v3);
    v2 = v6;
    (*(v4 + 8))(v3, v5);
  }

  v0[38] = v2;
  v7 = v0[16];

  v8 = static TestProperties.requestTimeout.getter();
  v10 = v9;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v0[39] = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0x20676E69646E6553, 0xEF6567617373654DLL, v8, v10);
  *(swift_task_alloc() + 16) = v7;
  sub_10008518C(&qword_10012AFA8, 255, &type metadata accessor for MessageProto, &protocol conformance descriptor for MessageProto);
  static Message.with(_:)();

  sub_10000560C(&qword_10012AFB0, &qword_100109CE0);
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = xmmword_1001089C0;
  v12 = Message.serializedData(partial:)();
  v38 = v1;
  v13 = inited;
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v17 = v0[22];
  *(v13 + 32) = v12;
  *(v13 + 40) = v18;
  v39 = v13;
  v40 = v2;
  Message.content.getter();
  v19 = MessageBody.files.getter();
  (*(v15 + 8))(v14, v16);
  v20 = -1;
  v21 = -1 << *(v19 + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v19 + 64);
  v23 = (63 - v21) >> 6;
  v41 = (v17 + 8);

  v24 = 0;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_11:
      v26 = (*(v19 + 48) + 16 * (__clz(__rbit64(v22)) | (v25 << 6)));
      v27 = *v26;
      v42 = v26[1];

      static CommunicationActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = v42;
      sub_10008518C(&qword_10012AFB8, 255, &type metadata accessor for FileHeaderProto, &protocol conformance descriptor for FileHeaderProto);
      static Message.with(_:)();

      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_100109BB0;
      *(v29 + 32) = Message.serializedData(partial:)();
      *(v29 + 40) = v30;
      v31 = LazyData.getData()();
      v33 = v32;
      v34 = v0[23];
      v35 = v0[21];
      v22 &= v22 - 1;
      *(v29 + 48) = v31;
      *(v29 + 56) = v33;
      (*v41)(v34, v35);

      sub_1000848DC(v29);
      v24 = v25;
      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 64 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  sub_1000848DC(_swiftEmptyArrayStorage);
  v0[41] = v39;
  v36 = Message.complete.getter();
  v37 = swift_task_alloc();
  v0[42] = v37;
  *v37 = v0;
  v37[1] = sub_10007DDB0;

  sub_10007F048(v39, v36 & 1, v38, v40);
}

uint64_t sub_10007DDB0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_10007E07C;
  }

  else
  {
    v5 = sub_10007DF20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007DF20()
{
  v1 = v0[39];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[20];

  (*(v3 + 8))(v2, v4);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_100005654(0, 0, v5, &unk_100109D08, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007E07C()
{
  v1 = v0[39];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[20];

  (*(v3 + 8))(v2, v4);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_100005654(0, 0, v5, &unk_100109D00, v7);

  v8 = v0[1];

  return v8();
}

void sub_10007E1D8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  if ((__swp(1u, (*(**(v0 + 24) + 136))(v6)) & 1) == 0)
  {
    sub_10000560C(&qword_10012AFA0, &qword_100109CC0);
    v9 = atomic_fetch_add_explicit((swift_initStaticObject() + 16), 1uLL, memory_order_relaxed) + 1;
    if (v9 < 21)
    {
      static Log.network.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v27 = v9;
        v21 = v20;
        v22 = swift_slowAlloc();
        v28 = v22;
        *v21 = 136315394;
        v23 = sub_1000842B8();
        v25 = sub_100102F80(v23, v24, &v28);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "[NWC] %s start: (total: %ld)", v21, 0x16u);
        sub_10000C304(v22);
      }

      (*(v2 + 8))(v5, v1);
    }

    else
    {
      static Log.network.getter();

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v27 = v9;
        v13 = v12;
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136315650;
        v15 = sub_1000842B8();
        v17 = sub_100102F80(v15, v16, &v28);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v27;
        *(v13 + 22) = 2048;
        *(v13 + 24) = 20;
        _os_log_impl(&_mh_execute_header, v10, v11, "[NWC] %s start: (total: %ld > max: %ld)", v13, 0x20u);
        sub_10000C304(v14);
      }

      (*(v2 + 8))(v8, v1);
    }

    type metadata accessor for CommunicationActor();
    v26 = static CommunicationActor.sharedQueue.getter();
    NWConnection.start(queue:)();
  }
}

void sub_10007E560()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(**(v0 + 24) + 136))(v3);
  __swp(v7, v6);
  if (v7)
  {
    sub_10000560C(&qword_10012AFA0, &qword_100109CC0);
    add_explicit = atomic_fetch_add_explicit((swift_initStaticObject() + 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    static Log.network.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v16 = add_explicit - 1;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315394;
      v13 = sub_1000842B8();
      v15 = sub_100102F80(v13, v14, &v17);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "[NWC] %s close: (total: %ld)", v11, 0x16u);
      sub_10000C304(v12);
    }

    (*(v2 + 8))(v5, v1);
    NWConnection.cancel()();
  }
}

uint64_t sub_10007E794()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;

  NWConnection.state.getter();

  (*(v7 + 104))(v10, enum case for NWConnection.State.cancelled(_:), v6);
  sub_10008518C(&qword_10012AF98, 255, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    static Log.network.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = sub_1000842B8();
      v21 = sub_100102F80(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[NWC] %s non-cancelled deinit", v17, 0xCu);
      sub_10000C304(v18);
    }

    (*(v3 + 8))(v5, v2);
    sub_10007E560();
  }

  return v1;
}

uint64_t sub_10007EAC8()
{
  v0 = sub_10007E794();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10007EB40(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for ProtocolVersion();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageBody();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Message.Operation();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Message.operation.getter();
  v15 = v28;
  Message.Operation.protobuf(proto:)();
  if (v15)
  {
    (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 8))(v14, v11);
  Message.content.getter();
  v16 = MessageBody.files.getter();
  v28 = a2;
  v18 = v26 + 8;
  v17 = *(v26 + 8);
  v17(v10, v27);
  v19 = *(v16 + 16);

  if (!HIDWORD(v19))
  {
    MessageProto.fileCount.setter();
    Message.content.getter();
    MessageBody.getData()();
    v26 = v18;
    v21 = v27;
    v17(v8, v27);
    MessageProto.messageContent.setter();
    Message.content.getter();
    v22 = v23;
    MessageBody.version.getter();
    v17(v10, v21);
    ProtocolVersion.rawValue.getter();
    (*(v24 + 8))(v22, v25);
    MessageProto.version.setter();
    Message.complete.getter();
    MessageProto.complete.setter();
  }

  __break(1u);
  return result;
}

uint64_t sub_10007EF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  FileHeaderProto.filename.setter();
}

uint64_t sub_10007F048(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 216) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  v6 = type metadata accessor for Logger();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v5 + 104) = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v8;
  *(v5 + 120) = v7;

  return _swift_task_switch(sub_10007F178, v8, v7);
}

uint64_t sub_10007F178()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 136) = v3;
      v5 = *(v0 + 48) + 16 * v3;
      v6 = *(v5 + 32);
      *(v0 + 144) = v6;
      v7 = *(v5 + 40);
      *(v0 + 152) = v7;
      sub_100041E80(v6, v7);
      sub_100041E80(v6, v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001001A0(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_1001001A0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v0 + 160) = v4;
      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v7;
      v12 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v15 = *(v6 + 16);
          v14 = *(v6 + 24);
          v16 = __OFSUB__(v14, v15);
          v13 = v14 - v15;
          if (v16)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v12)
      {
        LODWORD(v13) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_30;
        }

        v13 = v13;
      }

      else
      {
        v13 = BYTE6(v7);
      }

      v16 = __OFADD__(v2, v13);
      v2 += v13;
      *(v0 + 168) = v2;
      if (v16)
      {
        break;
      }

      if (v2 >= 0x100000)
      {
        v24 = swift_task_alloc();
        *(v0 + 176) = v24;
        *v24 = v0;
        v24[1] = sub_10007F3EC;
        v20 = *(v0 + 64);
        v21 = *(v0 + 56);
        v23 = v4;
        v22 = 0;
        goto LABEL_25;
      }

      v17 = v3 + 1;
      v18 = *(v0 + 128);
      result = sub_10000C868(v6, v7);
      if (v17 == v18)
      {
        goto LABEL_23;
      }

      v3 = *(v0 + 136) + 1;
      if (v3 == *(v0 + 128))
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_23:
    *(v0 + 192) = v4;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_10007F9CC;
    v20 = *(v0 + 64);
    v21 = *(v0 + 56);
    v22 = *(v0 + 216);
    v23 = v4;
LABEL_25:

    return sub_10008004C(v23, v22, v21, v20);
  }

  return result;
}

uint64_t sub_10007F3EC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10007FB54;
  }

  else
  {
    v5 = sub_10007F540;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007F540(uint64_t a1)
{
  v51 = v1;
  static Log.network.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v48 = *(v1 + 144);
    v49 = *(v1 + 152);
    v4 = *(v1 + 88);
    v47 = *(v1 + 96);
    v45 = *(v1 + 168);
    v46 = *(v1 + 80);
    v44 = *(v1 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136315394;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v1 + 16) = 0xD000000000000012;
    *(v1 + 24) = 0x8000000100107640;

    v7 = sub_1000842B8();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6567617373656D20;
    v11._object = 0xE900000000000020;
    String.append(_:)(v11);
    String.append(_:)(v44);
    v12 = sub_100102F80(*(v1 + 16), *(v1 + 24), &v50);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s end of batch after (%ld bytes)", v5, 0x16u);
    sub_10000C304(v6);

    (*(v4 + 8))(v47, v46);
    v13 = v48;
    v14 = v49;
  }

  else
  {
    v16 = *(v1 + 144);
    v15 = *(v1 + 152);
    v18 = *(v1 + 88);
    v17 = *(v1 + 96);
    v19 = *(v1 + 80);

    (*(v18 + 8))(v17, v19);
    v13 = v16;
    v14 = v15;
  }

  result = sub_10000C868(v13, v14);
  if (*(v1 + 136) + 1 == *(v1 + 128))
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_6:
    *(v1 + 192) = v21;
    v22 = swift_task_alloc();
    *(v1 + 200) = v22;
    *v22 = v1;
    v22[1] = sub_10007F9CC;
    v23 = *(v1 + 64);
    v24 = *(v1 + 56);
    v25 = *(v1 + 216);
    v26 = v21;
LABEL_28:

    return sub_10008004C(v26, v25, v24, v23);
  }

  else
  {
    v27 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = *(v1 + 136);
      v29 = v28 + 1;
      if (v28 + 1 == *(v1 + 128))
      {
        break;
      }

      *(v1 + 136) = v29;
      v30 = *(v1 + 48) + 16 * v29;
      v31 = *(v30 + 32);
      *(v1 + 144) = v31;
      v32 = *(v30 + 40);
      *(v1 + 152) = v32;
      sub_100041E80(v31, v32);
      sub_100041E80(v31, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001001A0(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v34 = *(v21 + 2);
      v33 = *(v21 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_1001001A0((v33 > 1), v34 + 1, 1, v21);
        v21 = result;
      }

      *(v1 + 160) = v21;
      *(v21 + 2) = v34 + 1;
      v35 = &v21[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v32;
      v36 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v36 == 2)
        {
          v39 = *(v31 + 16);
          v38 = *(v31 + 24);
          v40 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (v40)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else if (v36)
      {
        LODWORD(v37) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_34;
        }

        v37 = v37;
      }

      else
      {
        v37 = BYTE6(v32);
      }

      v40 = __OFADD__(v27, v37);
      v27 += v37;
      *(v1 + 168) = v27;
      if (v40)
      {
        goto LABEL_32;
      }

      if (v27 >= 0x100000)
      {
        v43 = swift_task_alloc();
        *(v1 + 176) = v43;
        *v43 = v1;
        v43[1] = sub_10007F3EC;
        v23 = *(v1 + 64);
        v24 = *(v1 + 56);
        v26 = v21;
        v25 = 0;
        goto LABEL_28;
      }

      v41 = v28 + 2;
      v42 = *(v1 + 128);
      result = sub_10000C868(v31, v32);
      if (v41 == v42)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t sub_10007F9CC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10007FBD0;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10007FAE8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007FAE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007FB54()
{
  v1 = v0[18];
  v2 = v0[19];

  sub_10000C868(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007FBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10007FC48(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(31);

  v4 = sub_1000842B8();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6567617373656D20;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  return 0xD000000000000012;
}

uint64_t sub_10007FD30(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v29 = a1;
  v30 = a3;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  sub_100041E80(a5, a6);
  sub_100041E80(a5, a6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v14, v15))
  {
    sub_10000C868(a5, a6);
    sub_10000C868(a5, a6);

    return (*(v11 + 8))(v13, v10);
  }

  v28 = v15;
  v26 = v11;
  v27 = v10;
  v16 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v16 = 136315650;
  v17 = sub_10007FC48(v29, a2);
  v19 = sub_100102F80(v17, v18, &v31);

  *(v16 + 4) = v19;
  *(v16 + 12) = 2080;
  *(v16 + 14) = sub_100102F80(v30, a4, &v31);
  *(v16 + 22) = 2048;
  v20 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a5 + 16);
      v24 = *(a5 + 24);
      sub_10000C868(a5, a6);
      v22 = v24 - v21;
      if (__OFSUB__(v24, v21))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000C868(a5, a6);
      v22 = 0;
    }

    v25 = v26;
    LOBYTE(v21) = v28;
    goto LABEL_15;
  }

  LOBYTE(v21) = v28;
  if (v20)
  {
LABEL_10:
    result = sub_10000C868(a5, a6);
    LODWORD(v22) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_12;
  }

  sub_10000C868(a5, a6);
  v22 = BYTE6(a6);
LABEL_12:
  v25 = v26;
LABEL_15:
  *(v16 + 24) = v22;
  sub_10000C868(a5, a6);
  _os_log_impl(&_mh_execute_header, v14, v21, "%s sending %s (%ld bytes)", v16, 0x20u);
  swift_arrayDestroy();

  return (*(v25 + 8))(v13, v27);
}

uint64_t sub_10008004C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 216) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for NWConnection.SendCompletion();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for ProtocolVersion();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = type metadata accessor for CommunicationActor();
  *(v5 + 112) = static CommunicationActor.shared.getter();
  *(v5 + 120) = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 128) = v9;
  *(v5 + 136) = v8;

  return _swift_task_switch(sub_1000801EC, v9, v8);
}

uint64_t sub_1000801EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(unint64_t a1), uint64_t a7, char *a8)
{
  v9 = *(v8 + 16);
  v10 = v9 + 2;
  v11 = v9[2];
  if (v11 < 2)
  {
LABEL_18:
    if (!v11)
    {

      v31 = *(v8 + 8);

      return v31();
    }

    v26 = &v10[2 * v11];
    v27 = *v26;
    *(v8 + 144) = *v26;
    v28 = v26[1];
    *(v8 + 152) = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
LABEL_32:
        LODWORD(v30) = 0;
LABEL_33:
        *(v8 + 212) = v30;
        static ProtocolVersion.current.getter();
        sub_100084F58();
        v34 = FixedWidthInteger.serialized(version:)();
        *(v8 + 160) = v34;
        *(v8 + 168) = v35;
        v58 = *(v8 + 120);
        v37 = *(v8 + 64);
        v38 = *(v8 + 56);
        v60 = *(v8 + 48);
        v39 = *(v8 + 32);
        v40 = *(v8 + 24);
        v55 = *(v8 + 40);
        v56 = *(v8 + 216);
        v41 = v34;
        v42 = v35;
        (*(*(v8 + 80) + 8))(*(v8 + 88), *(v8 + 72));
        sub_10007FD30(v40, v39, 0x7A6973207473616CLL, 0xE900000000000065, v41, v42);
        *v37 = nullsub_1;
        v37[1] = 0;
        (*(v38 + 104))(v37, enum case for NWConnection.SendCompletion.contentProcessed(_:), v60);
        type metadata accessor for NWConnection.ContentContext();

        sub_100041E80(v41, v42);
        static NWConnection.ContentContext.defaultMessage.getter();
        NWConnection.send(content:contentContext:isComplete:completion:)();

        sub_10000C868(v41, v42);

        (*(v38 + 8))(v37, v60);
        v43 = static CommunicationActor.shared.getter();
        *(v8 + 176) = v43;
        v44 = swift_task_alloc();
        *(v8 + 184) = v44;
        *(v44 + 16) = v55;
        *(v44 + 24) = v40;
        *(v44 + 32) = v39;
        *(v44 + 40) = v27;
        *(v44 + 48) = v28;
        *(v44 + 56) = v56;
        v9 = swift_task_alloc();
        *(v8 + 192) = v9;
        *v9 = v8;
        v9[1] = sub_100080984;
        a6 = sub_100084FAC;
        a5 = 0x8000000100107660;
        a8 = &type metadata for () + 8;
        a2 = v43;
        a3 = v58;
        a4 = 0xD00000000000002CLL;
        a7 = v44;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      v30 = v32 - v33;
      if (!__OFSUB__(v32, v33))
      {
LABEL_29:
        v9 = sub_100041E80(v27, v28);
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (!HIDWORD(v30))
        {
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v29)
    {
      LODWORD(v30) = BYTE6(v28);
      goto LABEL_33;
    }

    if (__OFSUB__(HIDWORD(v27), v27))
    {
      goto LABEL_45;
    }

    v30 = HIDWORD(v27) - v27;
    goto LABEL_29;
  }

  v45 = v9 + 2;
  v12 = *(v8 + 56);
  v48 = *(v8 + 64);
  v49 = (*(v8 + 80) + 8);
  v50 = v8;
  v57 = enum case for NWConnection.SendCompletion.contentProcessed(_:);
  v46 = (v12 + 8);
  v47 = (v12 + 104);

  v13 = v11 - 1;
  v14 = v9 + 5;
  while (1)
  {
    v15 = *v14;
    v59 = *(v14 - 1);
    v16 = *v14 >> 62;
    if (v16 > 1)
    {
      v17 = v50;
      if (v16 != 2)
      {
        LODWORD(v18) = 0;
        goto LABEL_16;
      }

      v20 = *(v59 + 16);
      v19 = *(v59 + 24);
      v18 = v19 - v20;
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = v50;
      if (!v16)
      {
        LODWORD(v18) = BYTE6(v15);
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_42;
      }

      v18 = HIDWORD(v59) - v59;
    }

    v9 = sub_100041E80(v59, v15);
    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v18))
    {
      goto LABEL_41;
    }

LABEL_16:
    *(v17 + 208) = v18;
    static ProtocolVersion.current.getter();
    sub_100084F58();
    v21 = FixedWidthInteger.serialized(version:)();
    v23 = v22;
    v24 = *(v17 + 64);
    v25 = *(v17 + 48);
    v54 = *(v17 + 32);
    v53 = *(v17 + 24);
    (*v49)(*(v17 + 96), *(v17 + 72));
    sub_10007FD30(v53, v54, 1702521203, 0xE400000000000000, v21, v23);
    *v24 = nullsub_1;
    *(v48 + 8) = 0;
    v51 = *v47;
    (*v47)(v24, v57, v25);
    type metadata accessor for NWConnection.ContentContext();

    sub_100041E80(v21, v23);
    static NWConnection.ContentContext.defaultMessage.getter();
    NWConnection.send(content:contentContext:isComplete:completion:)();

    sub_10000C868(v21, v23);

    v52 = *v46;
    (*v46)(v24, v25);
    sub_10007FD30(v53, v54, 1635017060, 0xE400000000000000, v59, v15);
    *v24 = nullsub_1;
    *(v48 + 8) = 0;
    v51(v24, v57, v25);
    sub_100041E80(v59, v15);

    static NWConnection.ContentContext.defaultMessage.getter();
    NWConnection.send(content:contentContext:isComplete:completion:)();

    sub_10000C868(v59, v15);

    sub_10000C868(v59, v15);
    sub_10000C868(v21, v23);
    v9 = v52(v24, v25);
    v14 += 2;
    if (!--v13)
    {
      v8 = v50;
      v9 = swift_unknownObjectRelease();
      v10 = v45;
      v11 = *v45;
      goto LABEL_18;
    }
  }

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
  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100080984()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100080B4C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100080AA8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100080AA8()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_10000C868(v0[20], v0[21]);
  sub_10000C868(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100080B4C()
{
  v2 = v0[18];
  v1 = v0[19];
  sub_10000C868(v0[20], v0[21]);

  sub_10000C868(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100080C0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, int a7)
{
  v30 = a7;
  v31 = a5;
  v28 = a2;
  v25 = a1;
  v10 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v11 = *(v10 - 8);
  v24 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v29 = type metadata accessor for NWConnection.SendCompletion();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CommunicationActor();
  v16 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v26 = v16;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v28;
  sub_10007FD30(a3, a4, 0x746164207473616CLL, 0xE900000000000061, v31, a6);
  (*(v11 + 16))(v13, v25, v10);
  v18 = *(v11 + 80);
  v25 = a6;
  v19 = (v18 + 40) & ~v18;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  (*(v11 + 32))(&v20[v19], v13, v10);
  *v15 = sub_100085098;
  v15[1] = v20;
  v21 = v27;
  v22 = v29;
  (*(v27 + 104))(v15, enum case for NWConnection.SendCompletion.contentProcessed(_:), v29);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  (*(v21 + 8))(v15, v22);
}

uint64_t sub_100080F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v53 = a5;
  v54 = a4;
  v50 = a3;
  v6 = type metadata accessor for Logger();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NWError();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  sub_10008511C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000C460(v14, &qword_10012AFD0, &unk_100109D20);
    static Log.network.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v24 = 136315394;

      v25 = sub_1000842B8();
      v27 = v26;

      v28 = sub_100102F80(v25, v27, &v55);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100102F80(v50, v54, &v55);
      _os_log_impl(&_mh_execute_header, v22, v23, "[NWC] %s message %s done sending", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v51 + 8))(v9, v52);
    sub_10000560C(&qword_10012AFC8, &qword_100109D18);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    static Log.network.getter();
    v49 = *(v16 + 16);
    v49(v19, v21, v15);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v48 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v32 = 136315650;
      v45 = v30;

      v33 = sub_1000842B8();
      v35 = v34;

      v36 = sub_100102F80(v33, v35, &v55);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_100102F80(v50, v54, &v55);
      *(v32 + 22) = 2112;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v49(v37, v19, v15);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v16 + 8);
      v39(v19, v15);
      *(v32 + 24) = v38;
      v40 = v45;
      v41 = v46;
      *v46 = v38;
      _os_log_impl(&_mh_execute_header, v40, v48, "[NWC] %s message %s error sending data %@", v32, 0x20u);
      sub_10000C460(v41, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();
    }

    else
    {

      v39 = *(v16 + 8);
      v39(v19, v15);
    }

    (*(v51 + 8))(v11, v52);
    sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v42 = swift_allocError();
    v49(v43, v21, v15);
    v55 = v42;
    sub_10000560C(&qword_10012AFC8, &qword_100109D18);
    CheckedContinuation.resume(throwing:)();
    return (v39)(v21, v15);
  }
}

uint64_t sub_10008165C()
{
  v1[4] = v0;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for CommunicationActor();
  v1[12] = static CommunicationActor.shared.getter();
  v1[13] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v4;
  v1[15] = v3;

  return _swift_task_switch(sub_1000817D0, v4, v3);
}

uint64_t sub_1000817D0(uint64_t a1)
{
  v1[16] = static CommunicationActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v3;
  v1[18] = v2;

  return _swift_task_switch(sub_100081864, v3, v2);
}

uint64_t sub_100081864(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[4];
  v4 = static CommunicationActor.shared.getter();
  v1[19] = v4;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = 4;
  v6 = swift_task_alloc();
  v1[21] = v6;
  *v6 = v1;
  v6[1] = sub_10008197C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 2, v4, v2, 0x2865766965636572, 0xEF293A7365747962, sub_100085214, v5, &type metadata for Data);
}

uint64_t sub_10008197C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_100081E80;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_100081AA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100081AA0()
{

  *(v0 + 184) = *(v0 + 16);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100081B0C, v1, v2);
}

uint64_t sub_100081B0C(uint64_t a1)
{
  v2 = *(v1 + 176);
  static ProtocolVersion.current.getter();
  sub_100084F58();
  FixedWidthInteger.init(serialized:version:)();
  if (v2)
  {

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 272);
    if (v5)
    {
      if (v5 <= 0x4000)
      {
        v16 = swift_task_alloc();
        *(v1 + 200) = v16;
        *v16 = v1;
        v16[1] = sub_100081F88;

        return sub_100082548(v5);
      }

      else
      {
        static SystemDirectory.tempFolder()();
        v6 = *(v1 + 104);
        v7 = *(v1 + 64);
        v8 = *(v1 + 32);
        v9 = [objc_allocWithZone(NSProcessInfo) init];
        v10 = [v9 globallyUniqueString];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        URL.appendingPathComponent(_:)();

        v11 = static CommunicationActor.shared.getter();
        *(v1 + 240) = v11;
        v12 = swift_task_alloc();
        *(v1 + 248) = v12;
        v12[2] = v8;
        v12[3] = v5;
        v12[4] = v7;
        v13 = swift_task_alloc();
        *(v1 + 256) = v13;
        *v13 = v1;
        v13[1] = sub_100082168;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v11, v6, 0x4465766965636572, 0xED00002928617461, sub_10008521C, v12, &type metadata for () + 8);
      }
    }

    else
    {

      type metadata accessor for LazyData();
      v14 = LazyData.__allocating_init(data:)();

      v15 = *(v1 + 8);

      return v15(v14);
    }
  }
}

uint64_t sub_100081E80()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100081EF8, v1, v2);
}

uint64_t sub_100081EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081F88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1000823EC;
  }

  else
  {
    v6[27] = a2;
    v6[28] = a1;
    v6[29] = type metadata accessor for LazyData();
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1000820BC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000820BC()
{

  v1 = LazyData.__allocating_init(data:)();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100082168()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10008247C;
  }

  else
  {
    v5 = sub_1000822D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000822D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  type metadata accessor for LazyData();
  (*(v4 + 16))(v3, v2, v5);
  v6 = LazyData.__allocating_init(filename:isTempFile:)();
  v7 = *(v4 + 8);
  v7(v1, v5);
  v7(v2, v5);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1000823EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008247C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100082548(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for CommunicationActor();
  v2[7] = static CommunicationActor.shared.getter();
  v2[8] = sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10008261C, v4, v3);
}

uint64_t sub_10008261C(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[8];
    v4 = v1[5];
    v5 = static CommunicationActor.shared.getter();
    v1[11] = v5;
    v6 = swift_task_alloc();
    v1[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    v7 = swift_task_alloc();
    v1[13] = v7;
    *v7 = v1;
    v7[1] = sub_100082788;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 2, v5, v3, 0x2865766965636572, 0xEF293A7365747962, sub_100085640, v6, &type metadata for Data);
  }

  else
  {

    v8 = v1[1];

    return v8(0, 0xC000000000000000);
  }
}

uint64_t sub_100082788()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_100082914;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1000828AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000828AC()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100082914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v8 = *(v7 - 8);
  v39 = *(v8 + 64);
  __chkstk_darwin(v7);
  v40 = &v32 - v9;
  v10 = type metadata accessor for Logger();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v13 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v38 = v13;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Log.network.getter();

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v8;
    v20 = v19;
    v41 = v19;
    *v18 = 136315394;
    v33 = v14;

    v21 = sub_1000842B8();
    v32 = v10;
    v22 = v21;
    v34 = a1;
    v23 = a3;
    v25 = v24;

    v26 = sub_100102F80(v22, v25, &v41);
    a1 = v34;

    *(v18 + 4) = v26;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "[NWC] %s file download start: (%ld bytes)", v18, 0x16u);
    sub_10000C304(v20);
    v8 = v35;

    v7 = v36;

    (*(v37 + 8))(v33, v32);
  }

  else
  {

    (*(v37 + 8))(v14, v10);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = v40;
  (*(v8 + 16))(v40, a1, v7);
  v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = v27;
  (*(v8 + 32))(v30 + v29, v28, v7);

  NWConnection.receiveFile(at:maximumLength:handler:)();
}

uint64_t sub_100082DD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for CommunicationActor();
  static CommunicationActor.assumeOnQueue<A>(_:)();
  return v8;
}

uint64_t sub_100082E64@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v65 = a6;
  v60 = a4;
  v63 = a3;
  v8 = type metadata accessor for Logger();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v53[-v12];
  v13 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  __chkstk_darwin(v13 - 8);
  v15 = &v53[-v14];
  v16 = type metadata accessor for NWError();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v53[-v21];
  sub_10008511C(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v22, v15, v16);
    static Log.network.getter();
    v33 = *(v17 + 16);
    v33(v20, v22, v16);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    v36 = os_log_type_enabled(v34, v35);
    v59 = v17 + 16;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v57 = v22;
      v38 = v37;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v38 = 136315394;
      v39 = v34;

      v40 = sub_1000842B8();
      v58 = v33;
      v41 = v40;
      v54 = v35;
      v43 = v42;

      v44 = sub_100102F80(v41, v43, v66);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v58(v45, v20, v16);
      v33 = v58;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v47 = *(v17 + 8);
      v47(v20, v16);
      *(v38 + 14) = v46;
      v48 = v55;
      *v55 = v46;
      _os_log_impl(&_mh_execute_header, v39, v54, "[NWC] %s file download error: %@", v38, 0x16u);
      sub_10000C460(v48, &qword_100129EF8, &qword_100108C70);

      sub_10000C304(v56);

      v22 = v57;
    }

    else
    {

      v47 = *(v17 + 8);
      v47(v20, v16);
    }

    (*(v61 + 8))(v64, v62);
    v50 = v63;
    swift_beginAccess();
    if ((*v50 & 1) == 0)
    {
      swift_beginAccess();
      *v50 = 1;
      sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      v51 = swift_allocError();
      v33(v52, v22, v16);
      v66[4] = v51;
      sub_10000560C(&qword_10012AFC8, &qword_100109D18);
      CheckedContinuation.resume(throwing:)();
    }

    result = (v47)(v22, v16);
    goto LABEL_14;
  }

  result = sub_10000C460(v15, &qword_10012AFD0, &unk_100109D20);
  if (a5)
  {
    static Log.network.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v26 = 136315138;

      v28 = sub_1000842B8();
      v30 = v29;

      v31 = sub_100102F80(v28, v30, v66);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[NWC] %s file download done", v26, 0xCu);
      sub_10000C304(v27);
    }

    (*(v61 + 8))(v11, v62);
    v32 = v63;
    result = swift_beginAccess();
    if ((*v32 & 1) == 0)
    {
      swift_beginAccess();
      *v32 = 1;
      sub_10000560C(&qword_10012AFC8, &qword_100109D18);
      result = CheckedContinuation.resume(returning:)();
    }

LABEL_14:
    v49 = 0;
    goto LABEL_15;
  }

  v49 = 1;
LABEL_15:
  *v65 = v49;
  return result;
}

uint64_t sub_100083584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  v7 = *(v6 - 8);
  v42 = *(v7 + 64);
  __chkstk_darwin(v6);
  v44 = &v36 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationActor();
  v13 = static CommunicationActor.shared.getter();
  sub_10008518C(&qword_100129EA0, 255, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v43 = v13;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Log.network.getter();

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v40 = v6;
    v20 = v19;
    v45 = v19;
    *v18 = 136315394;
    v39 = v14;

    v21 = sub_1000842B8();
    v37 = v10;
    v38 = v9;
    v22 = a2;
    v23 = v7;
    v24 = a1;
    v25 = v21;
    v27 = v26;

    v28 = v25;
    a1 = v24;
    v7 = v23;
    a2 = v22;
    v29 = sub_100102F80(v28, v27, &v45);

    *(v18 + 4) = v29;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v15, v16, "[NWC] %s receive start: (%ld bytes)", v18, 0x16u);
    sub_10000C304(v20);
    v6 = v40;

    (*(v37 + 8))(v39, v38);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v30 = *(a2 + 16);
  v31 = v44;
  (*(v7 + 16))(v44, a1, v6);
  v32 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  (*(v7 + 32))(v34 + v32, v31, v6);
  *(v34 + v33) = v30;

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();
}

uint64_t sub_1000839B4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v75 = a8;
  v80 = a7;
  v77 = a1;
  v10 = type metadata accessor for Logger();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v72[-v14];
  __chkstk_darwin(v13);
  v17 = &v72[-v16];
  v18 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  __chkstk_darwin(v18 - 8);
  v20 = &v72[-v19];
  v21 = type metadata accessor for NWError();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v27 = &v72[-v26];
  sub_10008511C(a5, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000C460(v20, &qword_10012AFD0, &unk_100109D20);
    if (a2 >> 60 == 15)
    {
      static Log.network.getter();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v81[0] = v31;
        *v30 = 136315138;

        v32 = sub_1000842B8();
        v34 = v33;

        v35 = sub_100102F80(v32, v34, v81);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "[NWC] %s receive didn't receive data, connection is finished. Closing.", v30, 0xCu);
        sub_10000C304(v31);
      }

      (*(v78 + 8))(v15, v79);
      sub_10007E560();
      sub_10008559C();
      v36 = swift_allocError();
      *v37 = 0;
      v81[0] = v36;
      sub_10000560C(&qword_10012AFE0, &qword_100109D88);
      return CheckedContinuation.resume(throwing:)();
    }

    v53 = a2;
    v54 = v77;
    sub_100041E80(v77, a2);
    v55 = v76;
    static Log.network.getter();
    sub_1000855F0(v54, v53);

    sub_1000855F0(v54, v53);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v56, v57))
    {
      sub_100085604(v54, v53);
      sub_100085604(v54, v53);
LABEL_22:

      (*(v78 + 8))(v55, v79);
      v81[0] = v54;
      v81[1] = v53;
      sub_10000560C(&qword_10012AFE0, &qword_100109D88);
      return CheckedContinuation.resume(returning:)();
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v81[0] = v59;
    *v58 = 136315394;

    v60 = sub_1000842B8();
    v62 = v61;

    v63 = sub_100102F80(v60, v62, v81);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2048;
    v64 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v64 != 2)
      {
        sub_100085604(v54, v53);
        v65 = 0;
        goto LABEL_21;
      }

      v68 = v53;
      v70 = v54[2];
      v69 = v54[3];
      v71 = v68;
      result = sub_100085604(v54, v68);
      v65 = v69 - v70;
      if (!__OFSUB__(v69, v70))
      {
        v53 = v71;
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v64)
      {
        sub_100085604(v54, v53);
        v65 = BYTE6(v53);
LABEL_21:
        *(v58 + 14) = v65;
        sub_100085604(v54, v53);
        _os_log_impl(&_mh_execute_header, v56, v57, "[NWC] %s receive done (%ld bytes)", v58, 0x16u);
        sub_10000C304(v59);

        goto LABEL_22;
      }

      result = sub_100085604(v54, v53);
      LODWORD(v65) = HIDWORD(v54) - v54;
      if (!__OFSUB__(HIDWORD(v54), v54))
      {
        v65 = v65;
        goto LABEL_21;
      }
    }

    __break(1u);
    return result;
  }

  (*(v22 + 32))(v27, v20, v21);
  static Log.network.getter();
  v39 = *(v22 + 16);
  (v39)(v25, v27, v21);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v77 = v39;
    v43 = v42;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81[0] = v76;
    *v43 = 136315394;
    v74 = v40;

    v44 = sub_1000842B8();
    v73 = v41;
    v46 = v45;

    v47 = sub_100102F80(v44, v46, v81);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2112;
    sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    (v77)(v48, v25, v21);
    v49 = _swift_stdlib_bridgeErrorToNSError();
    v50 = *(v22 + 8);
    v50(v25, v21);
    *(v43 + 14) = v49;
    v51 = v74;
    v52 = v75;
    *v75 = v49;
    _os_log_impl(&_mh_execute_header, v51, v73, "[NWC] %s receive read error: %@", v43, 0x16u);
    sub_10000C460(v52, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v76);

    v39 = v77;
  }

  else
  {

    v50 = *(v22 + 8);
    v50(v25, v21);
  }

  (*(v78 + 8))(v17, v79);
  sub_10008518C(&qword_10012AAF8, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
  v66 = swift_allocError();
  (v39)(v67, v27, v21);
  v81[0] = v66;
  sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  CheckedContinuation.resume(throwing:)();
  return (v50)(v27, v21);
}

uint64_t sub_1000842B8()
{
  v0 = type metadata accessor for NWConnection.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  v4._countAndFlagsBits = 67;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v9[1] = NWConnection.identifier.getter();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 40;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  NWConnection.state.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v10;
}

uint64_t sub_100084444()
{

  v0 = sub_1000842B8();

  return v0;
}

Swift::Int sub_100084498()
{
  Hasher.init(_seed:)();

  v0 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

void sub_100084500()
{

  v0 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v0);
}

Swift::Int sub_100084558(uint64_t a1)
{
  Hasher.init(_seed:)();

  v1 = NWConnection.identifier.getter();

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1000845BC(uint64_t a1, uint64_t *a2)
{

  v2 = NWConnection.identifier.getter();

  v3 = NWConnection.identifier.getter();

  return v2 == v3;
}

uint64_t sub_100084678(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000FFF80(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000847B0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000848DC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001001A0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000849D0(uint64_t a1)
{
  v2 = type metadata accessor for Message.Operation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Message.Operation.event(_:))
  {
    (*(v3 + 96))(v5, v2);
    LODWORD(v27) = *v5;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = 0x28746E657665;
    v28 = 0xE600000000000000;
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
LABEL_5:

    return v27;
  }

  if (v6 == enum case for Message.Operation.request(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = v5[1];
    LODWORD(v27) = *v5;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = 0x2874736575716572;
    v28 = 0xE800000000000000;
    String.append(_:)(v10);

    v12 = v27;
    v11 = v28;
    v27 = 8236;
    v28 = 0xE200000000000000;
    v26 = v9;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v27;
    v16 = v28;
    v27 = v12;
    v28 = v11;

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    goto LABEL_5;
  }

  if (v6 == enum case for Message.Operation.response(_:))
  {
    (*(v3 + 96))(v5, v2);
    v19 = *v5;
    v20 = 0x65736E6F70736572;
    v21 = 0xE900000000000028;
  }

  else
  {
    if (v6 != enum case for Message.Operation.error(_:))
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v24 = v27;
      (*(v3 + 8))(v5, v2);
      return v24;
    }

    (*(v3 + 96))(v5, v2);
    v19 = *v5;
    v20 = 0x28726F727265;
    v21 = 0xE600000000000000;
  }

  v27 = v20;
  v28 = v21;
  v26 = v19;
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return v27;
}

uint64_t sub_100084D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000045BC;

  return sub_1001044D0(a1, v4, v5, v6);
}

uint64_t sub_100084EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1001044D0(a1, v4, v5, v6);
}

unint64_t sub_100084F58()
{
  result = qword_10012AFC0;
  if (!qword_10012AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012AFC0);
  }

  return result;
}

uint64_t sub_100084FC0()
{
  v1 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100085098(uint64_t a1)
{
  v3 = *(sub_10000560C(&qword_10012AFC8, &qword_100109D18) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100080F68(a1, v4, v5, v6, v7);
}

uint64_t sub_10008511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012AFD0, &unk_100109D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008518C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000851D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085238()
{
  v1 = sub_10000560C(&qword_10012AFC8, &qword_100109D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100085310(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(sub_10000560C(&qword_10012AFC8, &qword_100109D18) - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100082DD0(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_1000853DC()
{
  v1 = sub_10000560C(&qword_10012AFE0, &qword_100109D88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000854C0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000560C(&qword_10012AFE0, &qword_100109D88) - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = *(v5 + 16);
  v14 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000839B4(a1, a2, a3, a4, a5, v13, v5 + v12, v14);
}

unint64_t sub_10008559C()
{
  result = qword_10012AFE8;
  if (!qword_10012AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012AFE8);
  }

  return result;
}

uint64_t sub_1000855F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041E80(result, a2);
  }

  return result;
}

uint64_t sub_100085604(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C868(result, a2);
  }

  return result;
}

unint64_t _s11photosfaced16NetworkConstantsO10parameters6domain4type0B012NWParametersCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NWParameters.MultipathServiceType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWParameters();
  v12 = static NWParameters.applicationServiceQUIC(identity:)();
  (*(v9 + 104))(v11, enum case for NWParameters.MultipathServiceType.disabled(_:), v8);
  NWParameters.multipathServiceType.setter();
  NWParameters.acceptLocalOnly.setter();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_account_id();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_attach_protocol_listener();
  swift_unknownObjectRelease();
  sub_10000560C(&qword_10012AFF0, "J)");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001089C0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;

  NWParameters.preferredNetworkAgents.setter();
  v14 = static TestProperties.quicTimeout.getter();
  if (v15)
  {
    return v12;
  }

  v16 = *&v14;
  NWParameters.defaultProtocolStack.getter();
  v17 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.getter();

  v28 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
LABEL_21:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v12;
    if (v18)
    {
LABEL_4:
      v19 = 0;
      v12 = v17 & 0xC000000000000001;
      v20 = _swiftEmptyArrayStorage;
      do
      {
        v21 = v19;
        while (1)
        {
          if (v12)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v19 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          type metadata accessor for NWProtocolQUIC.Options();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v21;
          if (v19 == v18)
          {
            goto LABEL_23;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v28;
      }

      while (v19 != v18);
      goto LABEL_23;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v12;
    if (v18)
    {
      goto LABEL_4;
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_23:

  if (v20 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = 0;
    v24 = v16 * 1000.0;
    *&v16 = (v16 * 1000.0);
    while ((v20 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_36;
      }

LABEL_29:
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v24 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v24 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      dispatch thunk of NWProtocolQUIC.Options.idleTimeout.setter();

      ++v23;
      if (v25 == i)
      {
        goto LABEL_42;
      }
    }

    if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v25 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  return v27;
}

uint64_t getEnumTagSinglePayload for NetworkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100085CB8()
{
  result = qword_10012AFF8[0];
  if (!qword_10012AFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10012AFF8);
  }

  return result;
}

void *sub_100085D74()
{

  return v0;
}

uint64_t sub_100085DBC()
{
  sub_100085D74();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100085E08(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_100005654(0, 0, v4, &unk_100109F50, v6);
}

uint64_t sub_100085F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a4;
  *(v4 + 160) = a3;
  *(v4 + 32) = a1;
  type metadata accessor for ProtocolVersion();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for MessageBody();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Message.Operation();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for Message();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1000860CC, 0, 0);
}

uint64_t sub_1000860CC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  **(v0 + 112) = *(v0 + 160);
  (*(v1 + 104))();
  *(v0 + 16) = 0xD000000000000019;
  *(v0 + 24) = 0x8000000100107730;
  Message.content.getter();
  MessageBody.version.getter();
  (*(v3 + 8))(v2, v4);
  MessageBody.init<A>(serializable:version:)();
  v5 = *(v0 + 32);
  Message.init(operation:content:complete:)();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_100086328;
  v7 = *(v0 + 136);

  return v9(v7);
}

uint64_t sub_100086328()
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = v0;

  v4 = v2[16];
  if (v0)
  {
    (*(v4 + 8))(v2[17], v2[15]);

    return _swift_task_switch(sub_100086510, 0, 0);
  }

  else
  {
    (*(v4 + 8))();

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100086510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000865B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000865F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 24))
  {
    v10 = *(v0 + 16);
    v11 = v10;
  }

  else
  {
    v38 = v7;
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 getActivePairedDeviceExcludingAltAccount];

    if (v13)
    {
      v37 = v0;
      static Log.default.getter();
      v14 = v13;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v17 = 136315138;
        v18 = [v14 bluetoothIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100087EB0();
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v16;
        v20 = v14;
        v22 = v21;
        (*(v2 + 8))(v4, v1);
        v23 = sub_100102F80(v19, v22, &v39);
        v14 = v20;

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v35, "Found ID: %s", v17, 0xCu);
        sub_10000C304(v36);
      }

      (*(v6 + 8))(v9, v38);
      v24 = objc_opt_self();
      v25 = [v14 bluetoothIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v4, v1);
      v27 = [v24 newDeviceIdentifierWithBluetoothUUID:isa];

      v28 = v37;
      v29 = *(v37 + 16);
      type metadata accessor for CommunicationActor();
      v10 = v29;
      v30 = static CommunicationActor.sharedQueue.getter();
      v31 = [objc_allocWithZone(NRDeviceMonitor) initWithDeviceIdentifier:v27 delegate:v10 queue:v30];

      v32 = *(v28 + 24);
      *(v28 + 24) = v31;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_1000869D4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100086C9C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = a1 + *a3;
  swift_beginAccess();
  if (*(v11 + 8))
  {
    v12 = *v11;
    *v11 = a2 & 1;
    *(v11 + 8) = 0;
    v13 = *(v12 + 16);
    if (v13)
    {
      v22 = v12;
      v23 = v3;
      v16 = *(v8 + 16);
      v14 = v8 + 16;
      v15 = v16;
      v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v18 = *(v14 + 56);
      v19 = a2 & 1;
      do
      {
        v15(v10, v17, v7);
        v24 = v19;
        CheckedContinuation.resume(returning:)();
        (*(v14 - 8))(v10, v7);
        v17 += v18;
        --v13;
      }

      while (v13);
      sub_1000420A0(v22, 1);
    }

    else
    {
      sub_1000420A0(v12, 1);
    }
  }

  else
  {
    *v11 = a2 & 1;
    *(v11 + 8) = 0;
  }

  return swift_endAccess();
}

id sub_100086EC0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceMonitor();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100086FC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation();
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100087060(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}