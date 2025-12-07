DeviceActivityReportService::AppInfoSource_optional __swiftcall AppInfoSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int sub_1000019EC()
{
  v1 = *v0;
  sub_10001AFA4();
  sub_10001AFB4(v1);
  return sub_10001AFC4();
}

Swift::Int sub_100001A60(uint64_t a1)
{
  v2 = *v1;
  sub_10001AFA4();
  sub_10001AFB4(v2);
  return sub_10001AFC4();
}

unint64_t *sub_100001AA4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t AppInfo.source.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AppInfo.bundleIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppInfo.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t AppInfo.displayName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AppInfo.displayName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_100001D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001DFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001F24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001A724();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100001F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100001D8C(v2 + v4, a2);
}

uint64_t sub_100001FFC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_100001E50(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t AppInfo.description.getter()
{
  v1 = v0;
  v2 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v33 = 0x203A656372756F53;
  v34 = 0xE800000000000000;
  swift_beginAccess();
  LOBYTE(v31) = *(v0 + 16);
  sub_100001DFC(&qword_1000291E0, &qword_10001B998);
  v35._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v35);

  v36._countAndFlagsBits = 10;
  v36._object = 0xE100000000000000;
  sub_10001AC64(v36);
  v6 = v33;
  v5 = v34;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_10001AEB4(22);

  v31 = 0xD000000000000013;
  v32 = 0x800000010001CCA0;
  swift_beginAccess();
  v7 = *(v0 + 32);
  v30[0] = *(v0 + 24);
  v30[1] = v7;

  sub_100001DFC(&qword_1000291E8, &unk_10001B9A0);
  v37._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v37);

  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  sub_10001AC64(v38);
  v8 = v31;
  v9 = v32;
  v31 = v6;
  v32 = v5;

  v39._countAndFlagsBits = v8;
  v39._object = v9;
  sub_10001AC64(v39);

  v11 = v31;
  v10 = v32;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10001AEB4(17);

  strcpy(v30, "Display Name: ");
  HIBYTE(v30[1]) = -18;
  swift_beginAccess();
  v12 = *(v0 + 48);
  v27 = *(v0 + 40);
  v28 = v12;

  v40._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v40);

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  sub_10001AC64(v41);
  v13 = v30[0];
  v14 = v30[1];
  v30[0] = v11;
  v30[1] = v10;

  v42._countAndFlagsBits = v13;
  v42._object = v14;
  sub_10001AC64(v42);

  v16 = v30[0];
  v15 = v30[1];
  v27 = 0x5255206C61636F4CLL;
  v28 = 0xEB00000000203A4CLL;
  v17 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
  swift_beginAccess();
  sub_100001D8C(v1 + v17, v4);
  v43._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v43);

  v44._countAndFlagsBits = 10;
  v44._object = 0xE100000000000000;
  sub_10001AC64(v44);
  v18 = v27;
  v19 = v28;
  v27 = v16;
  v28 = v15;

  v45._countAndFlagsBits = v18;
  v45._object = v19;
  sub_10001AC64(v45);

  v21 = v27;
  v20 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_10001AEB4(16);

  strcpy(v29, "Artwork URL: ");
  HIWORD(v29[1]) = -4864;
  v22 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL;
  swift_beginAccess();
  sub_100001D8C(v1 + v22, v4);
  v46._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v46);

  v47._countAndFlagsBits = 10;
  v47._object = 0xE100000000000000;
  sub_10001AC64(v47);
  v23 = v29[0];
  v24 = v29[1];
  v29[0] = v21;
  v29[1] = v20;

  v48._countAndFlagsBits = v23;
  v48._object = v24;
  sub_10001AC64(v48);

  return v29[0];
}

uint64_t AppInfo.deinit()
{

  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, &qword_1000291D8, &qword_10001B990);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, &qword_1000291D8, &qword_10001B990);
  return v0;
}

uint64_t AppInfo.__deallocating_deinit()
{

  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, &qword_1000291D8, &qword_10001B990);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, &qword_1000291D8, &qword_10001B990);

  return swift_deallocClassInstance();
}

id variable initialization expression of AppInfoCache.appInfoCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

uint64_t variable initialization expression of AppInfoCache.lookupQueue()
{
  v7 = sub_10001ADD4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001ADC4();
  __chkstk_darwin(v3);
  v4 = sub_10001AB94();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000289C();
  sub_10001AB84();
  v8 = &_swiftEmptyArrayStorage;
  sub_100004450(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  sub_10000BDE8(&qword_100029A30, &qword_1000291F0, &qword_10001C230, &protocol conformance descriptor for [A]);
  sub_10001AE64();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_10001AE14();
}

unint64_t sub_10000289C()
{
  result = qword_100029940;
  if (!qword_100029940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029940);
  }

  return result;
}

uint64_t sub_1000028E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002930()
{
  type metadata accessor for AppInfoCache();
  swift_allocObject();
  result = sub_100002A18();
  static AppInfoCache.shared = result;
  return result;
}

uint64_t *AppInfoCache.shared.unsafeMutableAddressor()
{
  if (qword_1000291A0 != -1)
  {
    swift_once();
  }

  return &static AppInfoCache.shared;
}

uint64_t static AppInfoCache.shared.getter()
{
  if (qword_1000291A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002A18()
{
  v20 = sub_10001ADD4();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001ADC4();
  __chkstk_darwin(v4);
  v5 = sub_10001AB94();
  __chkstk_darwin(v5 - 8);
  v19 = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  *(v0 + 24) = [objc_allocWithZone(NSCache) init];
  v6 = sub_10000289C();
  v18[1] = "Bundle Identifier: ";
  v18[2] = v6;
  sub_10001AB84();
  v21 = &_swiftEmptyArrayStorage;
  sub_100004450(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  sub_10000BDE8(&qword_100029A30, &qword_1000291F0, &qword_10001C230, &protocol conformance descriptor for [A]);
  sub_10001AE64();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  v7 = sub_10001AE14();
  v8 = v19;
  *(v19 + 32) = v7;
  v9 = [objc_opt_self() ephemeralSessionConfiguration];
  v10 = [objc_opt_self() sharedURLCache];
  [v9 setURLCache:v10];

  [v9 setRequestCachePolicy:2];
  [v9 setHTTPShouldUsePipelining:1];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = *(v8 + 32);
  sub_10001AE24();

  v13 = sub_10001ABF4();

  [v11 setName:v13];

  [v11 setUnderlyingQueue:*(v8 + 32)];
  v14 = [objc_opt_self() sessionWithConfiguration:v9 delegate:0 delegateQueue:v11];
  *(v8 + 40) = v14;
  v15 = v14;
  v16 = [v11 name];
  [v15 setSessionDescription:v16];

  return v8;
}

_BYTE *AppInfoCache.appInfo(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001AB74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001AB94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003184(a1, a2);
  swift_beginAccess();
  if (!v13[16])
  {
    v25 = *(v2 + 32);
    v14 = swift_allocObject();
    v24 = v5;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    v23 = v15;
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_10000351C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024D90;
    v22 = _Block_copy(aBlock);

    sub_10001AB84();
    v26 = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    v21 = v9;
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0, &protocol conformance descriptor for [A]);
    v17 = v24;
    sub_10001AE64();
    v18 = v22;
    sub_10001AE04();
    _Block_release(v18);
    (*(v6 + 8))(v8, v17);
    (*(v10 + 8))(v12, v21);
  }

  return v13;
}

id sub_100003184(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEF74616843692E65;
  if (!v5 && (sub_10001AF34() & 1) == 0)
  {
  }

  v6 = *(v2 + 24);
  v7 = sub_10001ABF4();

  v8 = [v6 objectForKey:v7];

  result = v8;
  if (!v8)
  {
    result = sub_10000A7E4(a1, a2);
    if (!result)
    {
      type metadata accessor for AppInfo(0);
      v10 = swift_allocObject();
      *(v10 + 16) = 3;
      *(v10 + 40) = 0u;
      *(v10 + 24) = 0u;
      v16 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
      v11 = sub_10001A724();
      v12 = *(*(v11 - 8) + 56);
      v12(v10 + v16, 1, 1, v11);
      v12(v10 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v11);
      swift_beginAccess();
      *(v10 + 16) = 0;
      swift_beginAccess();
      *(v10 + 24) = a1;
      *(v10 + 32) = a2;
      swift_beginAccess();
      *(v10 + 40) = a1;
      *(v10 + 48) = a2;
      v13 = *(v2 + 24);
      swift_bridgeObjectRetain_n();
      v14 = v13;
      v15 = sub_10001ABF4();
      [v14 setObject:v10 forKey:v15];

      return v10;
    }
  }

  return result;
}

uint64_t sub_1000033E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100001DFC(&qword_100029208, &qword_10001B9B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001B970;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v7 = sub_10000AC9C(inited);
    swift_setDeallocating();
    sub_10000AD34(inited + 32);
    sub_100003528(v7, 0, 0, 0.0);
  }

  return result;
}

void sub_100003528(uint64_t a1, void (*a2)(void *), uint64_t a3, double a4)
{
  v5 = v4;
  v101 = a3;
  v106 = a2;
  v88 = sub_10001A5A4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  __chkstk_darwin(v8 - 8);
  v93 = &v84 - v9;
  v95 = sub_10001A724();
  v97 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v84 - v12;
  v92 = sub_10001A804();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10001A824();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001DFC(&qword_100029480, &qword_10001BCD8);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - v18;
  v96 = sub_10001A664();
  v100 = *(v96 - 8);
  v20 = __chkstk_darwin(v96);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v99 = &v84 - v23;
  __chkstk_darwin(v22);
  v105 = &v84 - v24;
  v25 = sub_100001DFC(&qword_100029488, &qword_10001BCE0);
  __chkstk_darwin(v25 - 8);
  v27 = &v84 - v26;
  v28 = sub_10001A6A4();
  v103 = *(v28 - 8);
  v104 = v28;
  __chkstk_darwin(v28);
  v102 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10001ABA4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v5 + 32);
  *v33 = v34;
  (*(v31 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v30);
  v35 = v34;
  LOBYTE(v34) = sub_10001ABB4();
  (*(v31 + 8))(v33, v30);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v108 = a1;
  swift_beginAccess();

  sub_100009FAC(v36);

  v37 = v108;
  if (!*(v108 + 16))
  {

    if (qword_1000291B8 == -1)
    {
LABEL_9:
      v45 = sub_10001AB64();
      sub_10000BDA0(v45, qword_100029B70);
      v41 = sub_10001AB44();
      v42 = sub_10001ADB4();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_12;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "Requested bundle identifiers have all been cached or are inflight";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);

LABEL_12:

      v46 = v106;
      if (v106)
      {
        v47 = v101;

        v46(&_swiftEmptyDictionarySingleton);
        sub_10000BDD8(v46, v47);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  sub_10001A694();
  v39 = v103;
  v38 = v104;
  if ((*(v103 + 48))(v27, 1, v104) == 1)
  {

    sub_10000BE84(v27, &qword_100029488, &qword_10001BCE0);
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v40 = sub_10001AB64();
    sub_10000BDA0(v40, qword_100029B70);
    v41 = sub_10001AB44();
    v42 = sub_10001ADA4();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_12;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "Failed to initialize URL for app info lookup";
    goto LABEL_11;
  }

  (*(v39 + 32))(v102, v27, v38);
  aBlock[0] = v37;

  sub_100001DFC(&qword_100029490, &qword_10001BCE8);
  sub_10000BDE8(&qword_100029498, &qword_100029490, &qword_10001BCE8, &protocol conformance descriptor for Set<A>);
  sub_10000BE30();
  sub_10001ACA4();

  sub_10001A654();

  sub_10001A7E4();
  sub_10001A814();
  (*(v89 + 8))(v16, v90);
  sub_10001A7F4();
  (*(v91 + 8))(v14, v92);
  v48 = sub_10001A7D4();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v19, 1, v48);
  v84 = v5;
  if (v50 == 1)
  {
    sub_10000BE84(v19, &qword_100029480, &qword_10001BCD8);
  }

  else
  {
    sub_10001A7C4();
    (*(v49 + 8))(v19, v48);
  }

  v52 = v99;
  v51 = v100;
  sub_10001A654();

  v53 = v98;
  sub_10001A654();
  sub_100001DFC(&qword_1000294A8, &qword_10001BCF0);
  v54 = *(v51 + 72);
  v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10001B980;
  v57 = v56 + v55;
  v58 = *(v51 + 16);
  v59 = v96;
  v58(v57, v105, v96);
  v58(v57 + v54, v52, v59);
  v58(v57 + 2 * v54, v53, v59);
  sub_10001A674();
  v60 = v93;
  sub_10001A684();
  v61 = v97;
  v62 = v95;
  if ((*(v97 + 48))(v60, 1, v95) == 1)
  {

    sub_10000BE84(v60, &qword_1000291D8, &qword_10001B990);
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v63 = sub_10001AB64();
    sub_10000BDA0(v63, qword_100029B70);
    v64 = sub_10001AB44();
    v65 = sub_10001ADA4();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v100;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to initialize URL with query parameters for app info lookup", v68, 2u);
    }

    v69 = v106;
    if (v106)
    {
      v70 = v101;

      v69(&_swiftEmptyDictionarySingleton);
      sub_10000BDD8(v69, v70);
    }

    v71 = *(v67 + 8);
    v71(v98, v59);
    v71(v99, v59);
    v71(v105, v59);
  }

  else
  {
    v72 = v94;
    (*(v61 + 32))(v94, v60, v62);
    v73 = v84;
    swift_beginAccess();

    sub_1000050E0(v74);
    swift_endAccess();
    (*(v61 + 16))(v86, v72, v62);
    v75 = v85;
    sub_10001A594();
    v76 = *(v73 + 40);
    v77 = sub_10001A584();
    v78 = swift_allocObject();
    v78[2] = v73;
    v78[3] = v37;
    v79 = v106;
    v80 = v101;
    v78[4] = v106;
    v78[5] = v80;
    aBlock[4] = sub_10000BEE8;
    aBlock[5] = v78;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000066AC;
    aBlock[3] = &unk_100024F38;
    v81 = _Block_copy(aBlock);

    sub_10000BF1C(v79, v80);

    v82 = [v76 dataTaskWithRequest:v77 completionHandler:v81];
    _Block_release(v81);

    [v82 resume];
    (*(v87 + 8))(v75, v88);
    (*(v97 + 8))(v94, v62);
    v83 = *(v100 + 8);
    v83(v98, v59);
    v83(v99, v59);
    v83(v105, v59);
  }

  (*(v103 + 8))(v102, v104);
}

uint64_t sub_1000043F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppInfoCache.fetchAppInfo(bundleIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  sub_100001DFC(&qword_100029208, &qword_10001B9B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B970;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = sub_10000AC9C(inited);
  swift_setDeallocating();
  sub_10000AD34(inited + 32);

  sub_10000AE24(v11, v5, a3, a4, a1, a2);
}

uint64_t sub_100004588(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v7 = sub_10000A0D8(a4, a5), (v8 & 1) != 0))
  {
    v9 = *(*(a1 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  a2(v9);
}

uint64_t AppInfoCache.fetchAppInfo(bundleIdentifiers:completionHandler:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v69 = a3;
  v68 = a2;
  v67 = sub_10001AB74();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10001AB94();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptyDictionarySingleton;
  v77 = &_swiftEmptySetSingleton;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v70 = 0x800000010001CCF0;
  v73 = a1;

  v12 = 0;
  v72 = a1 + 56;
  v71 = v11;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = (*(v73 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = *v14;
    v16 = v14[1];
    v17 = *v14 == 0x6C7070612E6D6F63 && v16 == 0xEF74616843692E65;
    if (!v17 && (sub_10001AF34() & 1) == 0)
    {
    }

    v18 = *(v74 + 24);

    v19 = v18;
    v20 = sub_10001ABF4();

    v21 = [v19 objectForKey:v20];

    if (!v21)
    {
      v22 = sub_10000A7E4(v15, v16);
      if (v22)
      {
        v21 = v22;
      }

      else
      {
        type metadata accessor for AppInfo(0);
        v21 = swift_allocObject();
        v21[16] = 3;
        *(v21 + 40) = 0u;
        v61 = (v21 + 40);
        *(v21 + 24) = 0u;
        v60 = (v21 + 24);
        v59 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
        v23 = v6;
        v24 = sub_10001A724();
        v25 = *(*(v24 - 8) + 56);
        v25(&v21[v59], 1, 1, v24);
        v26 = v24;
        v6 = v23;
        v25(&v21[OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL], 1, 1, v26);
        swift_beginAccess();
        v21[16] = 0;
        v27 = v60;
        swift_beginAccess();
        *v27 = v15;
        *(v21 + 4) = v16;
        v28 = v61;
        swift_beginAccess();
        *v28 = v15;
        *(v21 + 6) = v16;
        v29 = *(v74 + 24);
        swift_bridgeObjectRetain_n();
        v30 = v29;
        v31 = sub_10001ABF4();
        [v30 setObject:v21 forKey:v31];
      }
    }

    v10 &= v10 - 1;
    swift_beginAccess();
    if (!v21[16])
    {
      sub_100007040(aBlock, v15, v16);

      v12 = v13;
      goto LABEL_5;
    }

    v32 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v32;
    v34 = v6;
    *(v6 + 16) = 0x8000000000000000;
    v36 = sub_10000A0D8(v15, v16);
    v37 = *(v32 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_10001AF54();
      __break(1u);
      return result;
    }

    v40 = v35;
    if (*(v32 + 24) >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = aBlock[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_10000A62C();
        v43 = aBlock[0];
        if ((v40 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_10000A208(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_10000A0D8(v15, v16);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_42;
      }

      v36 = v41;
      v43 = aBlock[0];
      if ((v40 & 1) == 0)
      {
LABEL_32:
        v43[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v43[6] + 16 * v36);
        *v44 = v15;
        v44[1] = v16;
        *(v43[7] + 8 * v36) = v21;
        v45 = v43[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_41;
        }

        v43[2] = v47;
        goto LABEL_34;
      }
    }

    *(v43[7] + 8 * v36) = v21;

LABEL_34:
    v6 = v34;
    *(v34 + 16) = v43;
    v12 = v13;
LABEL_5:
    v7 = v72;
    v11 = v71;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v48 = v77;
  if (v77[2])
  {
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = v48;
    v51 = v68;
    v50[4] = v6;
    v50[5] = v51;
    v50[6] = v69;
    aBlock[4] = sub_10000B848;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024E08;
    v52 = _Block_copy(aBlock);

    v53 = v62;
    sub_10001AB84();
    v75 = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0, &protocol conformance descriptor for [A]);
    v54 = v65;
    v55 = v67;
    sub_10001AE64();
    sub_10001AE04();
    _Block_release(v52);
    (*(v66 + 8))(v54, v55);
    (*(v63 + 8))(v53, v64);
  }

  else
  {

    v68(v57);
  }
}

uint64_t sub_100004F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;

    sub_100003528(a2, sub_10000BD94, v10, 30.0);
  }

  return result;
}

uint64_t sub_100004FD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a1 + 16))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000C044(a1, sub_10000A79C, 0, isUniquelyReferenced_nonNull_native, &v9);

    *(a2 + 16) = v9;
    swift_endAccess();
  }

  swift_beginAccess();

  a3(v7);
}

uint64_t sub_1000050E0(uint64_t result)
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
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100007040(&v13, v11, v12);

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

void sub_1000051E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v7 = v6;
  v164 = a6;
  v165 = a5;
  v163 = sub_10001AB74();
  v12 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_10001AB94();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  v16 = __chkstk_darwin(v15 - 8);
  v157 = v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v162 = v145 - v18;
  v19 = sub_10001ABA4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v7 + 32);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = sub_10001ABB4();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  swift_beginAccess();
  sub_100009FAC(a1);
  swift_endAccess();
  v25 = a1;
  if (a3 >> 60 == 15 || a4)
  {
    if (qword_1000291B8 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_12;
  }

  v26 = v7;
  v27 = a3;
  v28 = objc_opt_self();
  v29 = a2;
  sub_10000BC84(a2, a3);
  isa = sub_10001A734().super.isa;
  aBlock[0] = 0;
  v31 = [v28 JSONObjectWithData:isa options:0 error:aBlock];

  v32 = aBlock[0];
  if (v31)
  {
    sub_10001AE54();
    swift_unknownObjectRelease();
    sub_10000BF40(&v169, aBlock);
    sub_100001DFC(&qword_1000294B8, &qword_10001BD08);
    if (!swift_dynamicCast())
    {
      if (qword_1000291B8 != -1)
      {
        swift_once();
      }

      v87 = sub_10001AB64();
      sub_10000BDA0(v87, qword_100029B70);

      v88 = sub_10001AB44();
      v89 = sub_10001AD94();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock[0] = v91;
        *v90 = 136315138;
        v92 = sub_10001AD64();
        v94 = sub_100019C94(v92, v93, aBlock);

        *(v90 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "Failed to deserialize lookup for %s", v90, 0xCu);
        sub_10000BF9C(v91);
      }

      v95 = v165;
      if (!v165)
      {
        sub_10000BF9C(&v169);
        sub_10000BF2C(a2, a3);
        return;
      }

      v96 = v164;

      v95(&_swiftEmptyDictionarySingleton);
      sub_10000BF2C(a2, a3);
      sub_10000BDD8(v95, v96);
      goto LABEL_43;
    }

    v33 = v167;
    v166 = v25;
    v34 = *(v167 + 16);
    v149 = v12;
    v35 = v165;
    v36 = v163;
    if (v34)
    {

      v37 = sub_10000A0D8(0x73746C75736572, 0xE700000000000000);
      if (v38)
      {
        sub_10000BF40(*(v33 + 56) + 32 * v37, aBlock);

        sub_100001DFC(&qword_1000294C0, &qword_10001BD10);
        if (swift_dynamicCast())
        {
          v147 = a2;
          a4 = v167;
          v39 = *(v167 + 16);
          v146 = v27;
          v145[1] = v26;
          if (!v39)
          {

            v98 = &_swiftEmptyDictionarySingleton;
            goto LABEL_48;
          }

          v156 = &_swiftEmptyDictionarySingleton;
          v40 = 32;
          v41 = v162;
          v148 = v167;
          while (1)
          {
            v68 = *(a4 + v40);

            v70 = sub_10000C2D0(v69, 0x6449656C646E7562, 0xE800000000000000);
            if (v71)
            {
              v72 = v70;
              v73 = v71;
              v74 = sub_10000C2D0(v68, 0x6D614E6B63617274, 0xE900000000000065);
              if (v75)
              {
                v150 = v39;
                v153 = v75;
                v154 = v74;
                v155 = v72;
                v76 = sub_10001A724();
                v77 = *(v76 - 8);
                *&v152 = *(v77 + 56);
                v151 = v77 + 56;
                (v152)(v41, 1, 1, v76);
                sub_10000C2D0(v68, 0x556B726F77747261, 0xED00003030316C72);
                v79 = v78;

                if (v79)
                {
                  v80 = v157;
                  sub_10001A714();

                  sub_10000BE84(v41, &qword_1000291D8, &qword_10001B990);
                  sub_10000C570(v80, v41);
                }

                type metadata accessor for AppInfo(0);
                v81 = swift_allocObject();
                *(v81 + 16) = 3;
                *(v81 + 40) = 0u;
                *(v81 + 24) = 0u;
                v82 = v152;
                (v152)(v81 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, 1, 1, v76);
                v83 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL;
                v82(v81 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v76);
                swift_beginAccess();
                *(v81 + 16) = 2;
                swift_beginAccess();
                v84 = v155;
                *(v81 + 24) = v155;
                v41 = v162;
                *(v81 + 32) = v73;
                swift_beginAccess();
                *(v81 + 40) = v154;
                *(v81 + 48) = v153;
                swift_beginAccess();

                sub_10000C500(v41, v81 + v83);
                swift_endAccess();

                v85 = v156;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v85;
                sub_10000A4B0(v81, v84, v73, isUniquelyReferenced_nonNull_native);

                v156 = aBlock[0];
                sub_10000E7A8(v84, v73);

                sub_10000BE84(v41, &qword_1000291D8, &qword_10001B990);
                a4 = v148;
                v39 = v150;
                goto LABEL_24;
              }
            }

LABEL_24:
            v40 += 8;
            if (!--v39)
            {

              v25 = v166;
              v36 = v163;
              v98 = v156;
LABEL_48:
              v107 = 0;
              v108 = v25 + 56;
              v109 = 1 << *(v25 + 32);
              v110 = -1;
              if (v109 < 64)
              {
                v110 = ~(-1 << v109);
              }

              v111 = v110 & *(v25 + 56);
              v112 = (v109 + 63) >> 6;
              *&v106 = 136315138;
              v152 = v106;
              v29 = v147;
              v155 = v25;
              v154 = v25 + 56;
              v153 = v112;
              while (v111)
              {
                v113 = v107;
LABEL_58:
                v114 = (*(v25 + 48) + ((v113 << 10) | (16 * __clz(__rbit64(v111)))));
                v116 = *v114;
                v115 = v114[1];
                v117 = qword_1000291B8;

                if (v117 != -1)
                {
                  swift_once();
                }

                v118 = sub_10001AB64();
                sub_10000BDA0(v118, qword_100029B70);

                v119 = sub_10001AB44();
                v120 = sub_10001AD94();

                v121 = os_log_type_enabled(v119, v120);
                v156 = v98;
                v162 = v115;
                v157 = v116;
                if (v121)
                {
                  v122 = swift_slowAlloc();
                  v123 = swift_slowAlloc();
                  aBlock[0] = v123;
                  *v122 = v152;
                  *(v122 + 4) = sub_100019C94(v116, v115, aBlock);
                  _os_log_impl(&_mh_execute_header, v119, v120, "Failed to find app with bundle identifier %s", v122, 0xCu);
                  sub_10000BF9C(v123);
                }

                type metadata accessor for AppInfo(0);
                v124 = swift_allocObject();
                *(v124 + 16) = 3;
                *(v124 + 40) = 0u;
                *(v124 + 24) = 0u;
                v125 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
                v126 = sub_10001A724();
                v127 = *(*(v126 - 8) + 56);
                v127(v124 + v125, 1, 1, v126);
                v127(v124 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v126);
                swift_beginAccess();
                *(v124 + 16) = 2;
                swift_beginAccess();
                a4 = v157;
                *(v124 + 24) = v157;
                v128 = v162;
                *(v124 + 32) = v162;
                swift_beginAccess();
                *(v124 + 40) = a4;
                *(v124 + 48) = v128;
                swift_bridgeObjectRetain_n();
                v129 = v156;
                v130 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v129;
                v131 = sub_10000A0D8(a4, v128);
                v133 = v129[2];
                v134 = (v132 & 1) == 0;
                v135 = __OFADD__(v133, v134);
                v136 = v133 + v134;
                if (v135)
                {
                  __break(1u);
LABEL_76:
                  __break(1u);
                }

                v137 = v132;
                if (v129[3] >= v136)
                {
                  v138 = a4;
                  a4 = v128;
                  v140 = v163;
                  if ((v130 & 1) == 0)
                  {
                    v144 = v131;
                    sub_10000A62C();
                    v131 = v144;
                  }
                }

                else
                {
                  sub_10000A208(v136, v130);
                  v138 = a4;
                  v131 = sub_10000A0D8(a4, v128);
                  v140 = v163;
                  if ((v137 & 1) != (v139 & 1))
                  {
                    sub_10001AF54();
                    __break(1u);
                    return;
                  }
                }

                v111 &= v111 - 1;
                if (v137)
                {
                  a4 = v131;

                  v98 = aBlock[0];
                  *(*(aBlock[0] + 7) + 8 * a4) = v124;
                }

                else
                {
                  v98 = aBlock[0];
                  *(aBlock[0] + (v131 >> 6) + 8) |= 1 << v131;
                  v141 = (v98[6] + 16 * v131);
                  *v141 = v138;
                  v141[1] = v128;
                  *(v98[7] + 8 * v131) = v124;
                  v142 = v98[2];
                  v135 = __OFADD__(v142, 1);
                  v143 = v142 + 1;
                  if (v135)
                  {
                    goto LABEL_76;
                  }

                  v98[2] = v143;
                }

                v107 = v113;
                v25 = v155;
                v108 = v154;
                v112 = v153;
                v36 = v140;
                v29 = v147;
              }

              while (1)
              {
                v113 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  break;
                }

                if (v113 >= v112)
                {

                  v35 = v165;
                  v97 = v146;
                  goto LABEL_42;
                }

                v111 = *(v108 + 8 * v113);
                ++v107;
                if (v111)
                {
                  goto LABEL_58;
                }
              }

LABEL_73:
              __break(1u);
LABEL_74:
              swift_once();
LABEL_12:
              v42 = sub_10001AB64();
              sub_10000BDA0(v42, qword_100029B70);

              swift_errorRetain();
              v43 = sub_10001AB44();
              v44 = sub_10001AD94();

              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                aBlock[0] = swift_slowAlloc();
                *v45 = 136315394;
                v46 = sub_10001AD64();
                v48 = sub_100019C94(v46, v47, aBlock);

                *(v45 + 4) = v48;
                *(v45 + 12) = 2080;
                v169 = a4;
                swift_errorRetain();
                sub_100001DFC(&qword_1000294B0, &qword_10001BCF8);
                v49 = sub_10001AC34();
                v51 = sub_100019C94(v49, v50, aBlock);

                *(v45 + 14) = v51;
                _os_log_impl(&_mh_execute_header, v43, v44, "Failed to lookup bundle identifiers %s with error %s", v45, 0x16u);
                swift_arrayDestroy();
              }

              v52 = v165;
              if (v165)
              {
                v53 = v164;

                v52(&_swiftEmptyDictionarySingleton);
                v54 = v52;
                goto LABEL_22;
              }

              return;
            }
          }
        }

        v97 = v27;
        goto LABEL_41;
      }
    }

    v97 = v27;
LABEL_41:

    v98 = &_swiftEmptyDictionarySingleton;
LABEL_42:
    sub_10000289C();
    v99 = sub_10001ADE4();
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = swift_allocObject();
    v101[2] = v100;
    v101[3] = v98;
    v102 = v164;
    v101[4] = v35;
    v101[5] = v102;
    aBlock[4] = sub_10000C038;
    aBlock[5] = v101;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024F88;
    v103 = _Block_copy(aBlock);
    sub_10000BF1C(v35, v102);

    v104 = v158;
    sub_10001AB84();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0, &protocol conformance descriptor for [A]);
    v105 = v160;
    sub_10001AE64();
    sub_10001AE04();
    sub_10000BF2C(v29, v97);
    _Block_release(v103);

    (*(v149 + 8))(v105, v36);
    (*(v159 + 8))(v104, v161);
LABEL_43:
    sub_10000BF9C(&v169);
    return;
  }

  v55 = v32;
  v56 = sub_10001A6F4();

  swift_willThrow();
  if (qword_1000291B8 != -1)
  {
    swift_once();
  }

  v57 = sub_10001AB64();
  sub_10000BDA0(v57, qword_100029B70);

  swift_errorRetain();
  v58 = sub_10001AB44();
  v59 = sub_10001AD94();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v60 = 136315394;
    v61 = sub_10001AD64();
    v63 = sub_100019C94(v61, v62, aBlock);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    v169 = v56;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v64 = sub_10001AC34();
    v66 = sub_100019C94(v64, v65, aBlock);

    *(v60 + 14) = v66;
    v29 = a2;
    _os_log_impl(&_mh_execute_header, v58, v59, "Failed to deserialize lookup for %s with error %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  v67 = v165;
  if (v165)
  {
    v53 = v164;

    v67(&_swiftEmptyDictionarySingleton);
    sub_10000BF2C(v29, a3);

    v54 = v67;
LABEL_22:
    sub_10000BDD8(v54, v53);
  }

  else
  {
    sub_10000BF2C(v29, a3);
  }
}

uint64_t sub_1000066AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_10001A744();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10000BF2C(v6, v10);
}

uint64_t sub_100006774(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006824(a2);
    if (a3)
    {

      a3(a2);

      return sub_10000BDD8(a3, a4);
    }

    else
    {
    }
  }

  return result;
}

void sub_100006824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001ABA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000289C();
  *v7 = sub_10001ADE4();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_10001ABB4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(a1 + 56) + 8 * (v15 | (v14 << 6)));
      v17 = *(v2 + 24);

      v18 = v17;
      v19 = sub_10001ABF4();

      [v18 setObject:v16 forKey:v19];
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(a1 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id *AppInfoCache.deinit()
{

  return v0;
}

uint64_t AppInfoCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100006AD0@<X0>(void *a1@<X8>)
{
  if (qword_1000291A0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AppInfoCache.shared;
}

id sub_100006B64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10001ABF4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10001A6F4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100006C48(uint64_t a1, id *a2)
{
  result = sub_10001AC04();
  *a2 = 0;
  return result;
}

uint64_t sub_100006CC0(uint64_t a1, id *a2)
{
  v3 = sub_10001AC14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006D40@<X0>(uint64_t *a1@<X8>)
{
  sub_10001AC24();
  v2 = sub_10001ABF4();

  *a1 = v2;
  return result;
}

uint64_t sub_100006D84(void *a1, uint64_t *a2)
{
  v2 = sub_10001AC24();
  v4 = v3;
  if (v2 == sub_10001AC24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10001AF34();
  }

  return v7 & 1;
}

uint64_t sub_100006E0C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10001ABF4();

  *a2 = v3;
  return result;
}

uint64_t sub_100006E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001AC24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006E80(uint64_t a1)
{
  v2 = sub_100004450(&qword_100029448, type metadata accessor for _EXSceneRole, &unk_10001BC3C);
  v3 = sub_100004450(&qword_100029450, type metadata accessor for _EXSceneRole, &unk_10001BBE4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006F3C()
{
  sub_10001AC24();
  v0 = sub_10001AC94();

  return v0;
}

uint64_t sub_100006F78(uint64_t a1)
{
  sub_10001AC24();
  sub_10001AC54();
}

Swift::Int sub_100006FCC(uint64_t a1)
{
  sub_10001AC24();
  sub_10001AFA4();
  sub_10001AC54();
  v1 = sub_10001AFC4();

  return v1;
}

uint64_t sub_100007040(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10001AFA4();
  sub_10001AC54();
  v8 = sub_10001AFC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10001AF34() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100008608(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007190(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10001A7A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100004450(&qword_100029470, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_10001ABD4();
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
      sub_100004450(&qword_100029478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_10001ABE4();
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
    sub_100008788(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100007470(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  sub_10001AFA4();
  sub_10001A754();
  v7 = sub_10001AFC4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_10000BC84(a2, a3);
    sub_100008A2C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_10000BCD8(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_10000BC84(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_10000BC84(v18, v17);
      v40 = sub_10001A6B4();
      if (v40)
      {
        v41 = v40;
        v42 = sub_10001A6D4();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      sub_10001A6C4();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = sub_10001A6B4();
        if (v49)
        {
          v68 = sub_10001A6D4();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = sub_10001A6C4();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = sub_10001A6B4();
        if (v49)
        {
          v53 = sub_10001A6D4();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = sub_10001A6C4();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_10000BC84(v18, v17);
      v30 = sub_10001A6B4();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = sub_10001A6D4();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = sub_10001A6C4();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_10000BC84(v18, v17);
    v45 = sub_10001A6B4();
    if (v45)
    {
      v56 = sub_10001A6D4();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = sub_10001A6C4();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_10000BCD8(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_10000BC84(v18, v17);
    v36 = sub_10001A6B4();
    if (v36)
    {
      v37 = v36;
      v38 = sub_10001A6D4();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    sub_10001A6C4();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = sub_10001A6B4();
        if (v49)
        {
          v50 = sub_10001A6D4();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = sub_10001A6C4();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_10000BCD8(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = sub_10001A6B4();
    if (v49)
    {
      v65 = sub_10001A6D4();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = sub_10001A6C4();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_10000BCD8(v18, v17);
      sub_10000BCD8(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_10000BC84(v18, v17);
    v45 = sub_10001A6B4();
    if (v45)
    {
      v46 = sub_10001A6D4();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = sub_10001A6C4();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_10000BC84(v18, v17);
  v59 = sub_10001A6B4();
  if (v59)
  {
    v60 = v59;
    v61 = sub_10001A6D4();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = sub_10001A6C4();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_10000BCD8(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_10001A6C4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_10001A6C4();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100007DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  result = sub_10001AE94();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001AFA4();
      sub_10001AC54();
      result = sub_10001AFC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000804C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10001A7A4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  result = sub_10001AE94();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100004450(&qword_100029470, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10001ABD4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1000083A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  result = sub_10001AE94();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001AFA4();
      sub_10001A754();
      result = sub_10001AFC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100008608(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100007DEC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000932C();
      goto LABEL_16;
    }

    sub_10000981C(v8 + 1);
  }

  v10 = *v4;
  sub_10001AFA4();
  sub_10001AC54();
  result = sub_10001AFC4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001AF34();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001AF44();
  __break(1u);
  return result;
}

uint64_t sub_100008788(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10001A7A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000804C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100009488();
      goto LABEL_12;
    }

    sub_100009A54(v10 + 1);
  }

  v12 = *v3;
  sub_100004450(&qword_100029470, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_10001ABD4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100004450(&qword_100029478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_10001ABE4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10001AF44();
  __break(1u);
  return result;
}

uint64_t sub_100008A2C(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1000083A8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000096C0();
      goto LABEL_143;
    }

    sub_100009D70(v8 + 1);
  }

  v10 = *v4;
  sub_10001AFA4();
  sub_10001A754();
  result = sub_10001AFC4();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_10000BC84(v20, v19);
        v30 = sub_10001A6B4();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = sub_10001A6D4();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = sub_10001A6C4();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_10000BCD8(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_10000BC84(v20, v19);
      v33 = sub_10001A6B4();
      if (v33)
      {
        v54 = sub_10001A6D4();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = sub_10001A6C4();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_10000BC84(v20, v19);
    v38 = sub_10001A6B4();
    if (v38)
    {
      v44 = sub_10001A6D4();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    sub_10001A6C4();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = sub_10001A6B4();
      if (v40)
      {
        v66 = sub_10001A6D4();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = sub_10001A6C4();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = sub_10001A6B4();
      if (v40)
      {
        v45 = sub_10001A6D4();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = sub_10001A6C4();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_10000BC84(v20, v19);
    v38 = sub_10001A6B4();
    if (v38)
    {
      v39 = sub_10001A6D4();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    sub_10001A6C4();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = sub_10001A6B4();
      if (v40)
      {
        v62 = sub_10001A6D4();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = sub_10001A6C4();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = sub_10001A6B4();
      if (v40)
      {
        v41 = sub_10001A6D4();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = sub_10001A6C4();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_10000BCD8(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_10000BC84(v20, v19);
    v33 = sub_10001A6B4();
    if (v33)
    {
      v49 = sub_10001A6D4();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = sub_10001A6C4();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_10000BC84(v20, v19);
  v56 = sub_10001A6B4();
  if (v56)
  {
    v57 = v56;
    v58 = sub_10001A6D4();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = sub_10001A6C4();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_10001A6C4();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_10001A6C4();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_10000BCD8(v20, v19);
LABEL_185:
  result = sub_10001AF44();
  __break(1u);
  return result;
}

void *sub_10000932C()
{
  v1 = v0;
  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  v2 = *v0;
  v3 = sub_10001AE84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_100009488()
{
  v1 = v0;
  v2 = sub_10001A7A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  v6 = *v0;
  v7 = sub_10001AE84();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
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

  return result;
}

void *sub_1000096C0()
{
  v1 = v0;
  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  v2 = *v0;
  v3 = sub_10001AE84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10000BC84(v18, *(&v18 + 1));
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

  return result;
}

uint64_t sub_10000981C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  result = sub_10001AE94();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001AFA4();

      sub_10001AC54();
      result = sub_10001AFC4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_100009A54(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10001A7A4();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  v7 = sub_10001AE94();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100004450(&qword_100029470, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10001ABD4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_100009D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  result = sub_10001AE94();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001AFA4();
      sub_10000BC84(v18, v19);
      sub_10001A754();
      result = sub_10001AFC4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_100009FAC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10000E7A8(v12, v13);

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
        return result;
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

  return result;
}

unint64_t sub_10000A0D8(uint64_t a1, uint64_t a2)
{
  sub_10001AFA4();
  sub_10001AC54();
  v4 = sub_10001AFC4();

  return sub_10000A150(a1, a2, v4);
}

unint64_t sub_10000A150(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001AF34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000A208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001DFC(&qword_1000294D0, &unk_10001BD20);
  v34 = v4;
  result = sub_10001AF04();
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

      sub_10001AFA4();
      sub_10001AC54();
      result = sub_10001AFC4();
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

uint64_t sub_10000A4B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0D8(a2, a3);
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
      sub_10000A208(v16, a4 & 1);
      v11 = sub_10000A0D8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10001AF54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000A62C();
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

void *sub_10000A62C()
{
  v1 = v0;
  sub_100001DFC(&qword_1000294D0, &unk_10001BD20);
  v2 = *v0;
  v3 = sub_10001AEF4();
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

uint64_t sub_10000A79C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_10000A7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = objc_allocWithZone(LSApplicationRecord);

  v8 = sub_100006B64(a1, a2, 0);
  if (a1 == 0xD000000000000012 && 0x800000010001CE80 == a2 || (sub_10001AF34() & 1) != 0)
  {
    MGGetBoolAnswer();

    return 0;
  }

  else
  {
    type metadata accessor for AppInfo(0);
    v10 = swift_allocObject();
    *(v10 + 16) = 3;
    *(v10 + 40) = 0u;
    v26 = (v10 + 40);
    *(v10 + 24) = 0u;
    v11 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
    v27 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
    v12 = sub_10001A724();
    v13 = *(*(v12 - 8) + 56);
    v14 = v10 + v11;
    v15 = v12;
    v13(v14, 1, 1);
    (v13)(v10 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v15);
    swift_beginAccess();
    *(v10 + 16) = 1;
    swift_beginAccess();
    *(v10 + 24) = a1;
    *(v10 + 32) = a2;

    v16 = v8;
    sub_10001A7B4();
    isa = sub_10001ACB4().super.isa;

    v18 = [v16 localizedNameWithPreferredLocalizations:isa];

    v19 = sub_10001AC24();
    v21 = v20;

    v22 = v26;
    swift_beginAccess();
    *v22 = v19;
    *(v10 + 48) = v21;
    v23 = [v16 URL];

    sub_10001A704();
    (v13)(v6, 0, 1, v15);
    v24 = v27;
    swift_beginAccess();
    sub_100001E50(v6, v10 + v24);
    swift_endAccess();
    return v10;
  }
}

uint64_t sub_10000AC9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001AD74();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100007040(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000AD88(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000BC30();
  result = sub_10001AD74();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10000BC84(v6, *v4);
      sub_100007470(v7, v6, v5);
      sub_10000BCD8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000AE24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a2;
  v74 = sub_10001AB74();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10001AB94();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v65 = a3;
  v13[2] = a3;
  v13[3] = a4;
  v67 = a5;
  v13[4] = a5;
  v13[5] = a6;
  v75 = v13;
  v79 = swift_allocObject();
  *(v79 + 16) = &_swiftEmptyDictionarySingleton;
  v83 = &_swiftEmptySetSingleton;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v76 = 0x800000010001CCF0;
  v66 = a4;

  v68 = a6;

  v77 = a1;

  v19 = 0;
  if (v17)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      v53 = v83;
      if (v83[2])
      {
        v80 = *(v78 + 32);
        v54 = swift_allocObject();
        swift_weakInit();
        v55 = swift_allocObject();
        v55[2] = v54;
        v55[3] = v53;
        v55[4] = v79;
        v55[5] = sub_10000C628;
        v55[6] = v75;
        aBlock[4] = sub_10000C710;
        aBlock[5] = v55;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000043F4;
        aBlock[3] = &unk_100025000;
        v56 = _Block_copy(aBlock);

        v57 = v69;
        sub_10001AB84();
        v81 = &_swiftEmptyArrayStorage;
        sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100001DFC(&unk_100029950, &qword_10001B9B0);
        sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0, &protocol conformance descriptor for [A]);
        v58 = v72;
        v59 = v74;
        sub_10001AE64();
        sub_10001AE04();
        _Block_release(v56);
        (*(v73 + 8))(v58, v59);
        (*(v70 + 8))(v57, v71);
      }

      else
      {

        sub_100004588(v61, v65, v66, v67, v68);
      }
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      while (1)
      {
        v21 = (*(v77 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v17)))));
        v22 = v21[1];
        v23 = *v21 == 0x6C7070612E6D6F63 && v22 == 0xEF74616843692E65;
        v80 = *v21;
        if (!v23 && (sub_10001AF34() & 1) == 0)
        {
        }

        v24 = *(v78 + 24);

        v25 = v24;
        v26 = sub_10001ABF4();

        v27 = [v25 objectForKey:v26];

        v28 = v80;
        if (!v27)
        {
          v29 = sub_10000A7E4(v80, v22);
          if (v29)
          {
            v27 = v29;
          }

          else
          {
            type metadata accessor for AppInfo(0);
            v27 = swift_allocObject();
            v27[16] = 3;
            *(v27 + 40) = 0u;
            v64 = (v27 + 40);
            *(v27 + 24) = 0u;
            v63 = (v27 + 24);
            v62 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
            v30 = sub_10001A724();
            v31 = *(*(v30 - 8) + 56);
            v31(&v27[v62], 1, 1, v30);
            v31(&v27[OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL], 1, 1, v30);
            v28 = v80;
            swift_beginAccess();
            v27[16] = 0;
            v32 = v63;
            swift_beginAccess();
            *v32 = v28;
            *(v27 + 4) = v22;
            v33 = v64;
            swift_beginAccess();
            *v33 = v28;
            *(v27 + 6) = v22;
            v34 = *(v78 + 24);
            swift_bridgeObjectRetain_n();
            v35 = v34;
            v36 = sub_10001ABF4();
            [v35 setObject:v27 forKey:v36];
          }
        }

        v17 &= v17 - 1;
        swift_beginAccess();
        if (!v27[16])
        {
          sub_100007040(aBlock, v28, v22);

          v19 = v20;
          if (!v17)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

        v37 = v79;
        v38 = *(v79 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v38;
        *(v37 + 16) = 0x8000000000000000;
        v41 = sub_10000A0D8(v28, v22);
        v42 = *(v38 + 16);
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_40;
        }

        v45 = v40;
        if (*(v38 + 24) >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v48 = aBlock[0];
            if (v40)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_10000A62C();
            v48 = aBlock[0];
            if (v45)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          sub_10000A208(v44, isUniquelyReferenced_nonNull_native);
          v46 = sub_10000A0D8(v80, v22);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_42;
          }

          v41 = v46;
          v48 = aBlock[0];
          if (v45)
          {
LABEL_30:
            *(v48[7] + 8 * v41) = v27;

            goto LABEL_34;
          }
        }

        v48[(v41 >> 6) + 8] |= 1 << v41;
        v49 = (v48[6] + 16 * v41);
        *v49 = v80;
        v49[1] = v22;
        *(v48[7] + 8 * v41) = v27;
        v50 = v48[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_41;
        }

        v48[2] = v52;
LABEL_34:
        *(v79 + 16) = v48;
        v19 = v20;
        if (!v17)
        {
          goto LABEL_6;
        }

LABEL_10:
        v20 = v19;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_10001AF54();
  __break(1u);
  return result;
}

uint64_t sub_10000B7C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AppInfo(uint64_t a1)
{
  result = qword_100029240;
  if (!qword_100029240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B850()
{
  result = qword_100029210;
  if (!qword_100029210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029210);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInfoSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInfoSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10000BA20(uint64_t a1)
{
  sub_10000BAC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000BAC8(uint64_t a1)
{
  if (!qword_100029250)
  {
    sub_10001A724();
    v1 = sub_10001AE44();
    if (!v2)
    {
      atomic_store(v1, &qword_100029250);
    }
  }
}

unint64_t sub_10000BC30()
{
  result = qword_100029458;
  if (!qword_100029458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029458);
  }

  return result;
}

uint64_t sub_10000BC84(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000BCD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000BD44(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10000BDA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BDD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BDE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BE30()
{
  result = qword_1000294A0;
  if (!qword_1000294A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294A0);
  }

  return result;
}

uint64_t sub_10000BE84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BF1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BF2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000BCD8(result, a2);
  }

  return result;
}

uint64_t sub_10000BF40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BF9C(void *a1)
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

uint64_t sub_10000BFE8()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C044(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_10000A0D8(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_10000A62C();
      }
    }

    else
    {
      sub_10000A208(v26, v39 & 1);
      v28 = sub_10000A0D8(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_10000C5E0(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_10001AF54();
  __break(1u);
  return result;
}

uint64_t sub_10000C2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_10000A0D8(a2, a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10000BF40(*(a1 + 56) + 32 * v6, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  result = v17;
  v9 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v9 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_8:
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v10 = sub_10001AB64();
    sub_10000BDA0(v10, qword_100029B70);

    v11 = sub_10001AB44();
    v12 = sub_10001AD94();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100019C94(a2, a3, v19);
      *(v13 + 12) = 2080;
      v14 = sub_10001ABC4();
      v16 = sub_100019C94(v14, v15, v19);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to extract value for key %s from lookup results %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000C500(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C5E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C634()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000C6A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10000C728@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_10000C754(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

id sub_10000C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    sub_10001A6F4();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10000C85C()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001AC24();

  return v3;
}

NSString sub_10000C8C4()
{
  result = sub_10001ABF4();
  qword_100029B60 = result;
  return result;
}

uint64_t sub_10000C904()
{
  v0 = sub_10001A934();
  v1 = sub_10000E56C();
  type metadata accessor for DataRefresher(0);
  v2 = swift_allocObject();
  *(v2 + 48) = &_swiftEmptySetSingleton;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  v3 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  v4 = sub_10001A784();
  result = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + 16) = v0;
  *(v2 + 24) = &off_100025128;
  *(v2 + 32) = v1;
  *(v2 + 40) = &off_100029AA0;
  qword_100029B68 = v2;
  return result;
}

uint64_t sub_10000C9DC()
{
  swift_beginAccess();
  if (*(v0 + 80))
  {
    sub_10000EB64(v0 + 56, &v4);
    v1 = *(&v5 + 1);
    v2 = v6;
    sub_10000EBC8(&v4, *(&v5 + 1));
    (*(v2 + 48))(v1, v2);
    sub_10000BF9C(&v4);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_10000F5CC(&v4, v0 + 56, &qword_100029630, &qword_10001BE78);
  swift_endAccess();

  sub_10000BE84(v0 + 56, &qword_100029630, &qword_10001BE78);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate, &qword_100029638, &qword_10001BE80);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataRefresher(uint64_t a1)
{
  result = qword_100029510;
  if (!qword_100029510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CB78(uint64_t a1)
{
  sub_10000E514(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000CC2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A784();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001DFC(&qword_100029638, &qword_10001BE80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_10001A7A4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  (*(v13 + 16))(v16, a1, v12);
  swift_beginAccess();
  sub_100007190(v18, v16);
  (*(v13 + 8))(v18, v12);
  swift_endAccess();
  swift_beginAccess();
  sub_10000F3BC(v2 + 56, v41, &qword_100029630, &qword_10001BE78);
  if (v42)
  {
    sub_10000F1BC(v41, v44);
    v19 = AssociatedTypeWitness;
    v20 = AssociatedConformanceWitness;
    sub_10000EBC8(v44, AssociatedTypeWitness);
    if ((*(v20 + 24))(v19, v20))
    {
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v21 = sub_10001AB64();
      sub_10000BDA0(v21, qword_100029B88);
      v22 = sub_10001AB44();
      v23 = sub_10001AD84();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Data refresh timer has already been started.", v24, 2u);
      }

      return sub_10000BF9C(v44);
    }

    sub_10000BF9C(v44);
  }

  else
  {
    sub_10000BE84(v41, &qword_100029630, &qword_10001BE78);
  }

  v26 = *(v2 + 32);
  v27 = *(v2 + 40);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = sub_10000F10C;
  v28[5] = v2;
  v29 = *(v27 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000F158(v44);

  v29(1, sub_10000F14C, v28, v26, v27, 60.0);

  swift_beginAccess();
  sub_10000F5CC(v44, v2 + 56, &qword_100029630, &qword_10001BE78);
  swift_endAccess();
  v30 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  swift_beginAccess();
  sub_10000F3BC(v2 + v30, v11, &qword_100029638, &qword_10001BE80);
  v31 = *(v40 + 48);
  LODWORD(v28) = v31(v11, 1, v4);
  sub_10000BE84(v11, &qword_100029638, &qword_10001BE80);
  if (v28 == 1)
  {
    goto LABEL_13;
  }

  v32 = v39;
  sub_10001A774();
  sub_10000F3BC(v2 + v30, v9, &qword_100029638, &qword_10001BE80);
  result = v31(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  sub_10001A764();
  v34 = v33;
  v35 = *(v40 + 8);
  v35(v32, v4);
  result = (v35)(v9, v4);
  if (v34 > 60.0)
  {
LABEL_13:
    sub_10000F3BC(v2 + 56, v44, &qword_100029630, &qword_10001BE78);
    if (AssociatedTypeWitness)
    {
      sub_10000EB64(v44, v41);
      sub_10000BE84(v44, &qword_100029630, &qword_10001BE78);
      v36 = v42;
      v37 = v43;
      sub_10000EBC8(v41, v42);
      (*(v37 + 40))(v36, v37);
      return sub_10000BF9C(v41);
    }

    else
    {
      return sub_10000BE84(v44, &qword_100029630, &qword_10001BE78);
    }
  }

  return result;
}

uint64_t sub_10000D28C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001DFC(&qword_100029640, &qword_10001BE88);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v6 = sub_10001AB64();
  sub_10000BDA0(v6, qword_100029B88);
  v7 = sub_10001AB44();
  v8 = sub_10001AD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Data refresh timer fired, updating local activity.", v9, 2u);
  }

  sub_10001AD14();
  v10 = sub_10001AD34();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_10000DF5C(0, 0, v5, &unk_10001BE98, v11);
}

uint64_t sub_10000D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_10001A784();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_100001DFC(&qword_100029638, &qword_10001BE80);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000D560, 0, 0);
}

uint64_t sub_10000D560()
{
  *(v0 + 160) = sub_10001AD04();
  *(v0 + 168) = sub_10001ACF4();
  v2 = sub_10001ACE4();

  return _swift_task_switch(sub_10000D5F8, v2, v1);
}

uint64_t sub_10000D5F8()
{
  v1 = v0[14];

  v0[22] = *(v1 + 16);
  v0[23] = *(v1 + 24);

  return _swift_task_switch(sub_10000D674, 0, 0);
}

uint64_t sub_10000D674()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = *(v1 + 16);
  v0[5] = v2;
  v0[6] = v1;
  v0[24] = sub_10000F158(v0 + 2);
  v3(v2, v1);
  v0[25] = sub_10001ACF4();
  v5 = sub_10001ACE4();

  return _swift_task_switch(sub_10000D744, v5, v4);
}

uint64_t sub_10000D744()
{
  v1 = v0[19];
  v2 = v0[14];

  v3 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  v0[26] = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  swift_beginAccess();
  sub_10000F3BC(v2 + v3, v1, &qword_100029638, &qword_10001BE80);

  return _swift_task_switch(sub_10000D7F8, 0, 0);
}

uint64_t sub_10000D7F8()
{
  v8 = v0[23];
  v1 = sub_10001AA44();
  v0[27] = v1;
  v7 = (*(v8 + 56) + **(v8 + 56));
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_10000D928;
  v3 = v0[23];
  v4 = v0[22];
  v5 = v0[19];

  return v7(v5, v1, v4, v3);
}

uint64_t sub_10000D928()
{
  v2 = *(*v1 + 152);
  *(*v1 + 232) = v0;

  sub_10000BE84(v2, &qword_100029638, &qword_10001BE80);

  if (v0)
  {
    v3 = sub_10000DD64;
  }

  else
  {
    v3 = sub_10000DA8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000DA8C()
{
  (*(v0[23] + 64))(v0[22]);
  sub_10001A774();
  v0[30] = sub_10001ACF4();
  v2 = sub_10001ACE4();

  return _swift_task_switch(sub_10000DB48, v2, v1);
}

uint64_t sub_10000DB48()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];

  (*(v5 + 16))(v3, v2, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  swift_beginAccess();
  sub_10000F5CC(v3, v6 + v1, &qword_100029638, &qword_10001BE80);
  swift_endAccess();
  v7 = [objc_opt_self() defaultCenter];
  if (qword_1000291A8 != -1)
  {
    swift_once();
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  [v7 postNotificationName:qword_100029B60 object:0];

  (*(v9 + 8))(v8, v10);

  return _swift_task_switch(sub_10000DCDC, 0, 0);
}

uint64_t sub_10000DCDC()
{
  sub_10000BF9C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000DD64()
{
  v14 = v0;
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  swift_errorRetain();
  v2 = sub_10001AB44();
  v3 = sub_10001AD94();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[13] = v5;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v8 = sub_10001AC34();
    v10 = sub_100019C94(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh local activity with error: %{public}s", v6, 0xCu);
    sub_10000BF9C(v7);
  }

  else
  {
  }

  sub_10000BF9C(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_100029640, &qword_10001BE88);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F3BC(a3, v25 - v10, &qword_100029640, &qword_10001BE88);
  v12 = sub_10001AD34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE84(v11, &qword_100029640, &qword_10001BE88);
  }

  else
  {
    sub_10001AD24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10001ACE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001AC44() + 32;
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

      sub_10000BE84(a3, &qword_100029640, &qword_10001BE88);

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

  sub_10000BE84(a3, &qword_100029640, &qword_10001BE88);
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

uint64_t sub_10000E25C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = swift_getAssociatedConformanceWitness();
  v8 = sub_10000F158(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a1, AssociatedTypeWitness);
  a2(v10);
  return sub_10000BF9C(v10);
}

uint64_t sub_10000E348(uint64_t a1)
{
  v3 = sub_100001DFC(&qword_100029628, &qword_10001BE70);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  swift_beginAccess();
  sub_10000E8E4(a1, v5);
  sub_10000BE84(v5, &qword_100029628, &qword_10001BE70);
  result = swift_endAccess();
  if (!*(*(v1 + 48) + 16))
  {
    swift_beginAccess();
    sub_10000F3BC(v1 + 56, &v12, &qword_100029630, &qword_10001BE78);
    if (*(&v13 + 1))
    {
      sub_10000EB64(&v12, v9);
      sub_10000BE84(&v12, &qword_100029630, &qword_10001BE78);
      v7 = v10;
      v8 = v11;
      sub_10000EBC8(v9, v10);
      (*(v8 + 48))(v7, v8);
      sub_10000BF9C(v9);
    }

    else
    {
      sub_10000BE84(&v12, &qword_100029630, &qword_10001BE78);
    }

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    swift_beginAccess();
    sub_10000F5CC(&v12, v1 + 56, &qword_100029630, &qword_10001BE78);
    return swift_endAccess();
  }

  return result;
}

void sub_10000E514(uint64_t a1)
{
  if (!qword_100029520)
  {
    sub_10001A784();
    v1 = sub_10001AE44();
    if (!v2)
    {
      atomic_store(v1, &qword_100029520);
    }
  }
}

unint64_t sub_10000E56C()
{
  result = qword_100029620;
  if (!qword_100029620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029620);
  }

  return result;
}

uint64_t sub_10000E5B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E6B0;

  return v6(a1);
}

uint64_t sub_10000E6B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10001AFA4();
  sub_10001AC54();
  v6 = sub_10001AFC4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10001AF34() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000932C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10000EC50(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10000E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A7A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000EC0C(&qword_100029470, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = sub_10001ABD4();
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
      sub_10000EC0C(&qword_100029478, &protocol conformance descriptor for UUID);
      v19 = sub_10001ABE4();
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
      sub_100009488();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10000EE14(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10000EB64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000EBC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000EC0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001A7A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000EC50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10001AE74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10001AFA4();

        sub_10001AC54();
        v10 = sub_10001AFC4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000EE14(int64_t a1)
{
  v3 = sub_10001A7A4();
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

    v13 = sub_10001AE74();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_10000EC0C(&qword_100029470, &protocol conformance descriptor for UUID);
        v24 = sub_10001ABD4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
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

uint64_t sub_10000F114()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10000F158(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F1BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000F1D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F2C8;

  return sub_10000D45C(a1, v4, v5, v6);
}

uint64_t sub_10000F2C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F3BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F424()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F45C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F638;

  return sub_10000E5B8(a1, v4);
}

uint64_t sub_10000F514(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F2C8;

  return sub_10000E5B8(a1, v4);
}

uint64_t sub_10000F5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F640(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F2C8;

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(a1, a2);
}

void sub_10000F704(void *a1)
{
  [v1 addChildViewController:a1];
  v28 = [a1 view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 view];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 addSubview:v28];

  sub_100001DFC(&qword_100029A00, &unk_10001C020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001C010;
  v6 = [v1 view];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v28 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v5 + 32) = v10;
  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v28 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v5 + 40) = v15;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v28 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v5 + 48) = v20;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 trailingAnchor];

  v25 = [v28 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v5 + 56) = v26;
  sub_10000FA5C();
  isa = sub_10001ACB4().super.isa;

  [v23 activateConstraints:isa];

  [a1 didMoveToParentViewController:v1];
}

unint64_t sub_10000FA5C()
{
  result = qword_1000296F0;
  if (!qword_1000296F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000296F0);
  }

  return result;
}

uint64_t sub_10000FAA8@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000FBC4(0, &qword_100029728, _EXQuery_ptr);
  isa = sub_10001ACB4().super.isa;

  v7 = [v5 initWithQueries:isa delegate:a2];

  result = swift_unknownObjectRelease();
  *a3 = v7;
  return result;
}

uint64_t sub_10000FB5C()
{
  v1 = [*v0 extensionIdentities];
  sub_10000FBC4(0, &qword_100029930, _EXExtensionIdentity_ptr);
  v2 = sub_10001ACC4();

  return v2;
}

uint64_t sub_10000FBC4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000FC48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10001AB64();
  sub_10000FD34(v5, a2);
  sub_10000BDA0(v5, a2);
  return sub_10001AB54();
}

uint64_t sub_10000FCC0()
{
  v0 = sub_10001AB64();
  sub_10000FD34(v0, qword_100029BA0);
  sub_10000BDA0(v0, qword_100029BA0);
  return sub_10001AB54();
}

uint64_t *sub_10000FD34(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000FDA8()
{
  v1 = sub_10001AB74();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001AB94();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v7 = sub_10001ADE4();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100017BC0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_1000255F8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_10001AB84();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_100010088(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole);
  if (!v1)
  {
    return;
  }

  v13 = v1;
  v3 = sub_100010580();
  v4 = [v3 configuration];

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [v4 role];
  v6 = sub_10001AC24();
  v8 = v7;
  if (v6 != sub_10001AC24() || v8 != v9)
  {
    v11 = sub_10001AF34();

    if ((v11 & 1) == 0)
    {
      [v4 setRole:v13];
      v12 = *(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
      v4 = v4;
      [v12 setConfiguration:v4];
    }

LABEL_10:

    return;
  }
}

uint64_t sub_100010238@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  if (v3)
  {
    v7[4] = sub_100010374;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100010518;
    v7[3] = &unk_100025738;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v4];
    _Block_release(v4);

    sub_10001AE54();
    swift_unknownObjectRelease();
    sub_100001DFC(&qword_1000299E8, &qword_10001C210);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_100010374(uint64_t a1)
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  swift_errorRetain();
  oslog = sub_10001AB44();
  v2 = sub_10001AD94();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v5 = sub_10001AC34();
    v7 = sub_100019C94(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to create extension proxy: %{public}s", v3, 0xCu);
    sub_10000BF9C(v4);
  }

  else
  {
  }
}

void sub_100010518(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100010580()
{
  v1 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController;
  v2 = *(v0 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
  }

  else
  {
    v4 = [objc_allocWithZone(EXHostViewController) init];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100010608@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController;
  swift_beginAccess();
  sub_10000F3BC(v1 + v3, &v12, &qword_1000299F8, &unk_10001C220);
  if (v13)
  {
    return sub_10000F1BC(&v12, a1);
  }

  sub_10000BE84(&v12, &qword_1000299F8, &unk_10001C220);
  v5 = objc_allocWithZone(_EXQuery);
  v6 = sub_10001ABF4();
  v7 = [v5 initWithExtensionPointIdentifier:v6];

  v8 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController);
  v9 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController + 8);
  sub_100001DFC(&qword_100029A00, &unk_10001C020);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001C0B0;
  *(v10 + 32) = v7;
  v11 = *(v9 + 24);
  a1[3] = v8;
  a1[4] = v9;
  sub_10000F158(a1);
  swift_unknownObjectRetain();
  v11(v10, v1, v8, v9);
  sub_10000EB64(a1, &v12);
  swift_beginAccess();
  sub_10000F5CC(&v12, v1 + v3, &qword_1000299F8, &unk_10001C220);
  return swift_endAccess();
}

uint64_t sub_1000107D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource;
  swift_beginAccess();
  sub_10000F3BC(v1 + v3, &v8, &qword_1000299F0, &qword_10001C218);
  if (v9)
  {
    return sub_10000F1BC(&v8, a1);
  }

  sub_10000BE84(&v8, &qword_1000299F0, &qword_10001C218);
  v5 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource);
  v6 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource + 8);
  v7 = *(v6 + 16);
  a1[3] = v5;
  a1[4] = v6;
  sub_10000F158(a1);
  v7(v5, v6);
  sub_10000EB64(a1, &v8);
  swift_beginAccess();
  sub_10000F5CC(&v8, v1 + v3, &qword_1000299F0, &qword_10001C218);
  return swift_endAccess();
}

uint64_t sub_100010CC8()
{
  v1 = sub_10001AB74();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001AB94();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100017C54;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_1000256C0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_10001AB84();
  v14 = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_100010F84(uint64_t a1)
{
  v2 = sub_10001A624();
  v95 = *(v2 - 8);
  __chkstk_darwin(v2);
  v94 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10001A994();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001A8E4();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  __chkstk_darwin(v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  v10 = __chkstk_darwin(v9 - 8);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v81 - v12;
  v14 = sub_10001AA34();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v98 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v81 - v18;
  v20 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  swift_beginAccess();
  v96 = v20;
  sub_10000F3BC(a1 + v20, v13, &qword_100029968, &qword_10001C1B0);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    sub_10000BE84(v13, &qword_100029968, &qword_10001C1B0);
    if (qword_1000291C0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v22 = sub_10001AB64();
    sub_10000BDA0(v22, qword_100029B88);
    v23 = sub_10001AB44();
    v24 = sub_10001ADB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not updating report because we don't have a filter", v25, 2u);
    }
  }

  else
  {
    v88 = v21;
    v89 = v15 + 48;
    v26 = *(v15 + 32);
    v86 = v15 + 32;
    v85 = v26;
    v26(v19, v13, v14);
    v90 = a1;
    sub_1000107D4(&aBlock);
    sub_10000EBC8(&aBlock, v109);
    v27 = 0;
    v28 = sub_10001A914();
    v87 = v15;
    v84 = v2;
    v43 = v28;
    v82 = v19;
    v83 = v14;
    sub_10000BF9C(&aBlock);
    v44 = *(v43 + 16);
    if (v44)
    {
      aBlock = &_swiftEmptyArrayStorage;
      sub_100014C58(0, v44, 0);
      v45 = 0;
      v46 = aBlock;
      v100 = v43 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v99 = v103 + 16;
      v101 = (v103 + 8);
      while (1)
      {
        if (v45 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v47 = v102;
        (*(v103 + 16))(v8, v100 + *(v103 + 72) * v45, v102);
        sub_10001A604();
        swift_allocObject();
        sub_10001A5F4();
        sub_100017C7C(&qword_1000299D8, &type metadata accessor for _DeviceActivityData, &protocol conformance descriptor for _DeviceActivityData);
        v48 = sub_10001A5E4();
        if (v27)
        {
          break;
        }

        v50 = v48;
        v51 = v49;
        v104 = 0;
        (*v101)(v8, v47);

        aBlock = v46;
        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          sub_100014C58((v52 > 1), v53 + 1, 1);
          v46 = aBlock;
        }

        ++v45;
        v46[2] = (v53 + 1);
        v54 = &v46[2 * v53];
        v54[4] = v50;
        v54[5] = v51;
        v27 = v104;
        if (v44 == v45)
        {

          v15 = v87;
          v2 = v84;
          goto LABEL_29;
        }
      }

      (*v101)(v8, v47);
      v65 = *(v87 + 8);
      v38 = v83;
      v65(v82, v83);

      v104 = 0;
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v29 = sub_10001AB64();
      sub_10000BDA0(v29, qword_100029B88);
      swift_errorRetain();
      v30 = sub_10001AB44();
      v31 = sub_10001AD94();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v105 = v27;
        aBlock = v33;
        *v32 = 136446210;
        swift_errorRetain();
        sub_100001DFC(&qword_100029920, &qword_10001BD00);
        v34 = sub_10001AC34();
        v36 = v38;
        v37 = sub_100019C94(v34, v35, &aBlock);

        *(v32 + 4) = v37;
        v38 = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to request activity data with error: %{public}s", v32, 0xCu);
        sub_10000BF9C(v33);
      }

      v39 = v90;
      v40 = v97;
      sub_10000F3BC(v90 + v96, v97, &qword_100029968, &qword_10001C1B0);
      v41 = v88(v40, 1, v38);
      v42 = v98;
      if (v41 == 1)
      {
        sub_10000BE84(v40, &qword_100029968, &qword_10001C1B0);
      }

      else
      {
        v55 = v85(v98, v40, v38);
        __chkstk_darwin(v55);
        *(&v81 - 2) = v39;
        sub_100001DFC(&qword_1000299D0, &qword_10001C200);
        sub_10001ADF4();
        v56 = aBlock;
        if (aBlock)
        {
          isa = sub_10001ACB4().super.isa;
          v58 = v91;
          sub_10001A9A4();
          v59 = v94;
          sub_10001A984();
          (*(v92 + 8))(v58, v93);
          v60 = sub_10001A614().super.isa;
          (*(v95 + 8))(v59, v84);
          v110 = sub_100017F20;
          v111 = 0;
          aBlock = _NSConcreteStackBlock;
          v107 = 1107296256;
          v108 = sub_100011D80;
          v109 = &unk_1000256E8;
          v61 = _Block_copy(&aBlock);
          [v56 updateDeviceActivityData:isa segmentInterval:v60 replyHandler:v61];
          _Block_release(v61);
          swift_unknownObjectRelease();

          v65(v42, v38);
          return;
        }

        v65(v42, v38);
      }

      v62 = sub_10001AB44();
      v63 = sub_10001ADB4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Not updating report because we don't have a filter or a proxy", v64, 2u);
      }
    }

    else
    {

LABEL_29:
      __chkstk_darwin(v66);
      *(&v81 - 2) = v67;
      sub_100001DFC(&qword_1000299D0, &qword_10001C200);
      sub_10001ADF4();
      v68 = aBlock;
      if (aBlock)
      {
        v69 = sub_10001ACB4().super.isa;
        v70 = v91;
        v71 = v82;
        sub_10001A9A4();
        v72 = v94;
        sub_10001A984();
        (*(v92 + 8))(v70, v93);
        v73 = sub_10001A614().super.isa;
        (*(v95 + 8))(v72, v2);
        v110 = sub_100017F20;
        v111 = 0;
        aBlock = _NSConcreteStackBlock;
        v107 = 1107296256;
        v108 = sub_100011D80;
        v109 = &unk_100025710;
        v74 = _Block_copy(&aBlock);
        [v68 updateDeviceActivityData:v69 segmentInterval:v73 replyHandler:v74];
        _Block_release(v74);
        swift_unknownObjectRelease();

        (*(v15 + 8))(v71, v83);
      }

      else
      {

        if (qword_1000291C0 != -1)
        {
          swift_once();
        }

        v75 = sub_10001AB64();
        sub_10000BDA0(v75, qword_100029B88);
        v76 = sub_10001AB44();
        v77 = sub_10001ADB4();
        v78 = os_log_type_enabled(v76, v77);
        v79 = v83;
        if (v78)
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "Not updating report because we don't have a proxy", v80, 2u);
        }

        (*(v15 + 8))(v82, v79);
      }
    }
  }
}

void sub_100011D80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100011DEC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v1 = sub_10001AB64();
    sub_10000BDA0(v1, qword_100029B88);
    swift_errorRetain();
    v2 = sub_10001AB44();
    v3 = sub_10001AD94();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100001DFC(&qword_100029920, &qword_10001BD00);
      v6 = sub_10001AC34();
      v8 = sub_100019C94(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update scene device activity data: %{public}s", v4, 0xCu);
      sub_10000BF9C(v5);
    }

    else
    {
    }
  }
}

id sub_100011FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v31[1] = a1;
  v34 = sub_10001ADD4();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001ADC4();
  __chkstk_darwin(v6);
  v7 = sub_10001AB94();
  __chkstk_darwin(v7 - 8);
  v8 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache];
  *v8 = type metadata accessor for AppInfoCache();
  v8[1] = &off_100025058;
  v9 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_authorization;
  *&v3[v9] = sub_10001A944();
  v10 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord];
  *v10 = sub_10000FBC4(0, &qword_100029A08, LSBundleRecord_ptr);
  v10[1] = &off_100025070;
  v11 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection];
  *v11 = sub_10000FBC4(0, &qword_100029A10, NSXPCConnection_ptr);
  v11[1] = &off_100025840;
  v12 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource];
  *v12 = sub_10001A934();
  v12[1] = &off_100025128;
  v13 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController];
  *v13 = sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v13[1] = &off_1000296F8;
  v14 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection];
  *v14 = sub_10000FBC4(0, &qword_100029A18, USTrackingAgentPrivateConnection_ptr);
  v14[1] = &off_100025850;
  v15 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole] = 0;
  v16 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  v17 = sub_10001AA34();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 0;
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection] = 0;
  v33 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue;
  v31[2] = sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v31[3] = "activityui.report-extension";
  sub_10001AB84();
  v39 = &_swiftEmptyArrayStorage;
  v31[5] = sub_100017C7C(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v31[4] = sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  v31[6] = sub_100017CC4(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v37 + 104);
  v37 += 104;
  v20 = v32;
  v21 = v34;
  v19(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v3[v33] = sub_10001AE14();
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController] = 0;
  v22 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  sub_10001A794();
  v33 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue;
  sub_10001AB84();
  v39 = &_swiftEmptyArrayStorage;
  sub_10001AE64();
  v19(v20, v18, v21);
  v24 = sub_10001AE14();
  v25 = v35;
  *&v4[v33] = v24;
  if (v25)
  {
    v26 = sub_10001ABF4();
  }

  else
  {
    v26 = 0;
  }

  v27 = type metadata accessor for ReportViewController(0);
  v38.receiver = v4;
  v38.super_class = v27;
  v28 = v36;
  v29 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", v26, v36);

  return v29;
}

id sub_1000125AC(void *a1)
{
  v29 = a1;
  v28 = sub_10001ADD4();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001ADC4();
  __chkstk_darwin(v3);
  v4 = sub_10001AB94();
  __chkstk_darwin(v4 - 8);
  v5 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache];
  *v5 = type metadata accessor for AppInfoCache();
  v5[1] = &off_100025058;
  v6 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_authorization;
  *&v1[v6] = sub_10001A944();
  v7 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord];
  *v7 = sub_10000FBC4(0, &qword_100029A08, LSBundleRecord_ptr);
  v7[1] = &off_100025070;
  v8 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection];
  *v8 = sub_10000FBC4(0, &qword_100029A10, NSXPCConnection_ptr);
  v8[1] = &off_100025840;
  v9 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource];
  *v9 = sub_10001A934();
  v9[1] = &off_100025128;
  v10 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController];
  *v10 = sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v10[1] = &off_1000296F8;
  v11 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection];
  *v11 = sub_10000FBC4(0, &qword_100029A18, USTrackingAgentPrivateConnection_ptr);
  v11[1] = &off_100025850;
  v12 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
  *v12 = 0;
  v12[1] = 0;
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole] = 0;
  v13 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  v14 = sub_10001AA34();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 0;
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection] = 0;
  v27 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue;
  v25[1] = sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v25[2] = "activityui.report-extension";
  sub_10001AB84();
  v32 = &_swiftEmptyArrayStorage;
  v25[4] = sub_100017C7C(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v25[3] = sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  v25[5] = sub_100017CC4(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  v15 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v16 = *(v30 + 104);
  v30 += 104;
  v17 = v26;
  v18 = v28;
  v16(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *&v1[v27] = sub_10001AE14();
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController] = 0;
  v19 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  sub_10001A794();
  v27 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue;
  sub_10001AB84();
  v32 = &_swiftEmptyArrayStorage;
  sub_10001AE64();
  v16(v17, v15, v18);
  *&v1[v27] = sub_10001AE14();
  v21 = type metadata accessor for ReportViewController(0);
  v31.receiver = v1;
  v31.super_class = v21;
  v22 = v29;
  v23 = objc_msgSendSuper2(&v31, "initWithCoder:", v29);

  if (v23)
  {
  }

  return v23;
}

id sub_100012B30(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ReportViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ReportViewController(uint64_t a1)
{
  result = qword_1000297E8;
  if (!qword_1000297E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012CEC(uint64_t a1)
{
  sub_100012E18(319);
  if (v1 <= 0x3F)
  {
    sub_10001A7A4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100012E18(uint64_t a1)
{
  if (!qword_1000297F8)
  {
    sub_10001AA34();
    v1 = sub_10001AE44();
    if (!v2)
    {
      atomic_store(v1, &qword_1000297F8);
    }
  }
}

void sub_100012E70(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TokenCoder()) init];
    if (*&v4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_teamIdentifier + 8])
    {

      sub_10001A8D4();
    }

    else
    {
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v5 = sub_10001AB64();
      sub_10000BDA0(v5, qword_100029B88);
      v6 = sub_10001AB44();
      v7 = sub_10001AD94();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to extract team identifier of client application", v8, 2u);
      }
    }

    sub_100010608(v11);
    v9 = v12;
    v10 = v13;
    sub_10000EBC8(v11, v12);
    (*(v10 + 32))(v9, v10);
    sub_10000BF9C(v11);
    a2(0);
  }
}

void sub_1000131E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10001A6E4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100013248(void *a1)
{
  if (*(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData) == 1)
  {
    v2 = [a1 viewIfLoaded];
    v3 = [v2 window];

    if (v3)
    {

      if (qword_1000291B0 != -1)
      {
        swift_once();
      }

      sub_10000CC2C(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataRefresherObserverID);
    }
  }
}

uint64_t sub_1000133B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001DFC(&qword_100029998, &qword_10001C1D8);
  result = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = sub_10001A884();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_100017AC8(v7, a1, &qword_100029998, &qword_10001C1D8);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100013694(void *a1)
{
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI30DeviceActivityReportServiceXPC_];
  [a1 setExportedInterface:v3];

  [a1 setExportedObject:v1];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100015450;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000043F4;
  v12 = &unk_100025440;
  v5 = _Block_copy(&v9);

  [a1 setInterruptionHandler:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100015458;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000043F4;
  v12 = &unk_100025468;
  v7 = _Block_copy(&v9);

  [a1 setInvalidationHandler:v7];
  _Block_release(v7);
  [a1 activate];
  return 1;
}

char *sub_10001388C(uint64_t a1)
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  v2 = sub_10001AB44();
  v3 = sub_10001ADB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection from client application was interrupted.", v4, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 1;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100017F28;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_100025558;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_100013AD0(uint64_t a1)
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  v2 = sub_10001AB44();
  v3 = sub_10001ADB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection from client application was invalidated.", v4, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 1;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100017F28;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_1000254E0;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100013D60(uint64_t a1, void *a2)
{
  v5 = sub_10001AB74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001AB94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  aBlock[6] = a1;
  v12 = *(v2 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix + 8);
  if (!v12)
  {
    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v22 = sub_10001AB64();
    sub_10000BDA0(v22, qword_100029B88);
    v52._object = sub_10001AB44();
    v23 = sub_10001AD94();
    if (os_log_type_enabled(v52._object, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v52._object, v23, "Failed to find an extension because we do not have a prefix to search for.", v24, 2u);
    }

    object = v52._object;

    return;
  }

  v44 = v2;
  v45 = a2;
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52._countAndFlagsBits = *(v2 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix);
  v13 = off_100029720;
  sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v52._object = v12;

  v14 = v13();
  v15 = v14;
  v50 = v6;
  v51 = v5;
  v48 = v8;
  v49 = v9;
  v47 = v10;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_26:

    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v36 = sub_10001AB64();
    sub_10000BDA0(v36, qword_100029B88);
    v37 = v52._object;

    v38 = sub_10001AB44();
    v39 = sub_10001AD94();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136446210;
      v42 = sub_100019C94(v52._countAndFlagsBits, v37, aBlock);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to find an extension for %{public}s", v40, 0xCu);
      sub_10000BF9C(v41);
    }

    else
    {
    }

    return;
  }

LABEL_25:
  v16 = sub_10001AEE4();
  if (!v16)
  {
    goto LABEL_26;
  }

LABEL_4:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_10001AEC4();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v21 = [v18 bundleIdentifier];
    sub_10001AC24();

    LOBYTE(v21) = sub_10001AC84(v52);

    if (v21)
    {
      break;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_26;
    }
  }

  v26 = swift_allocObject();
  v27 = [objc_allocWithZone(_EXHostViewControllerConfiguration) initWithExtensionIdentity:v19];
  *(v26 + 16) = v27;
  [v27 setBeginHostingImmediately:1];
  v28 = v45;
  if (*(v44 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole))
  {
    [v27 setRole:?];
  }

  sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v29 = sub_10001ADE4();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v26;
  aBlock[4] = sub_1000153F8;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_100025418;
  v31 = _Block_copy(aBlock);
  v32 = v28;

  v33 = v46;
  sub_10001AB84();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  v34 = v48;
  v35 = v51;
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v31);

  (*(v50 + 8))(v34, v35);
  (*(v47 + 8))(v33, v49);
}

uint64_t sub_100014758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000147BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000147D4(uint64_t a1)
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  v2 = sub_10001AB44();
  v3 = sub_10001ADB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection from client extension was interrupted.", v4, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 1;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100017F28;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_1000253A0;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_100014A18(uint64_t a1)
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10001AB64();
  sub_10000BDA0(v1, qword_100029B88);
  v2 = sub_10001AB44();
  v3 = sub_10001ADB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection from client extension was invalidated.", v4, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100017F28;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_100025328;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_100014C58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014C78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_1000299E0, &qword_10001C208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100014DAC(void *a1, char *a2)
{
  aBlock = 0;
  v3 = [a1 makeXPCConnectionWithError:&aBlock];
  v4 = aBlock;
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI30DeviceActivityReportServiceXPC_];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:a2];
    v9 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI32DeviceActivityReportExtensionXPC_];
    [v5 setRemoteObjectInterface:v9];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_10001531C;
    v33 = v10;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000043F4;
    v31 = &unk_100025210;
    v11 = _Block_copy(&aBlock);

    [v5 setInterruptionHandler:v11];
    _Block_release(v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_100015324;
    v33 = v12;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000043F4;
    v31 = &unk_100025238;
    v13 = _Block_copy(&aBlock);

    [v5 setInvalidationHandler:v13];
    _Block_release(v13);
    [v5 activate];
    v14 = *&a2[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v5;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10001536C;
    *(v16 + 24) = v15;
    v32 = sub_100017F54;
    v33 = v16;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100011FAC;
    v31 = &unk_1000252B0;
    v17 = _Block_copy(&aBlock);
    a2;
    v18 = v5;

    dispatch_sync(v14, v17);

    _Block_release(v17);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      sub_100010CC8();

      return;
    }

    __break(1u);
  }

  else
  {
    v19 = aBlock;
    sub_10001A6F4();

    swift_willThrow();
    if (qword_1000291C0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v20 = sub_10001AB64();
  sub_10000BDA0(v20, qword_100029B88);
  swift_errorRetain();
  v21 = sub_10001AB44();
  v22 = sub_10001AD94();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136446210;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v25 = sub_10001AC34();
    v27 = sub_100019C94(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to establish a connection with the client's extension: %{public}s", v23, 0xCu);
    sub_10000BF9C(v24);
  }

  else
  {
  }
}

uint64_t sub_1000152E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001532C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001536C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) = v2;
  v3 = v2;
}

uint64_t sub_1000153B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000153F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  return [v1 setConfiguration:*(v2 + 16)];
}

void sub_100015470()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) invalidate];
  }

  v2 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) = 0;
}

uint64_t sub_1000154D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100001DFC(&qword_1000299A8, &qword_10001C1E0);
  __chkstk_darwin(v6 - 8);
  v138 = &v125 - v7;
  v137 = sub_10001AA04();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v139 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A994();
  __chkstk_darwin(v9 - 8);
  v142 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10001A9D4();
  v145 = *(v148 - 8);
  v11 = __chkstk_darwin(v148);
  v141 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v140 = &v125 - v13;
  v14 = sub_100001DFC(&qword_1000299B0, &qword_10001C1E8);
  __chkstk_darwin(v14);
  v147 = &v125 - v15;
  v16 = sub_100001DFC(&qword_1000299B8, &unk_10001C1F0);
  v17 = __chkstk_darwin(v16 - 8);
  v144 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v143 = &v125 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v125 - v22;
  __chkstk_darwin(v21);
  v149 = &v125 - v23;
  v24 = sub_10001AB74();
  v155 = *(v24 - 8);
  v156 = v24;
  __chkstk_darwin(v24);
  v153 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_10001AB94();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  __chkstk_darwin(v27 - 8);
  v150 = &v125 - v28;
  v29 = sub_10001AA34();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v135 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v125 - v33;
  v34 = sub_10001AB34();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v159 = &v125 - v39;
  v157 = a3;
  v40 = (*(*(a3 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection + 8) + 8))();
  if (v40)
  {
    v158 = v40;
    sub_10001A5D4();
    swift_allocObject();
    sub_10001A5C4();
    sub_100017C7C(&qword_1000299C0, &type metadata accessor for DeviceActivityReport.ClientConfiguration, &protocol conformance descriptor for DeviceActivityReport.ClientConfiguration);
    sub_10001A5B4();

    (*(v35 + 32))(v159, v38, v34);
    sub_10001AB14();
    v44 = sub_10001AB04();
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      v49 = v157;
      v48 = v158;
      if (((*(*(v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection + 8) + 8))(v158) & 1) == 0)
      {

        sub_100017A74();
        swift_allocError();
        *v66 = 2;
        v67 = sub_10001A6E4();
        (*(a4 + 16))(a4, v67);

        (*(v30 + 8))(v160, v29);
        return (*(v35 + 8))(v159, v34);
      }

      v50 = &v49[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
      *v50 = v46;
      v50[1] = v47;

      v49[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 1;
LABEL_9:
      v51 = v150;
      (*(v30 + 16))(v150, v160, v29);
      (*(v30 + 56))(v51, 0, 1, v29);
      v52 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
      swift_beginAccess();
      sub_10000F5CC(v51, &v49[v52], &qword_100029968, &qword_10001C1B0);
      swift_endAccess();
      sub_10001AB24();
      v53 = sub_10001ABF4();

      v54 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole;
      v55 = *&v49[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole];
      v133 = v29;
      v134 = v30;
      v150 = v53;
      if (v55)
      {
        v56 = sub_10001AC24();
        v58 = v57;
        if (v56 == sub_10001AC24() && v58 == v59)
        {

LABEL_20:

          v49 = v157;
          sub_100010CC8();
LABEL_23:
          sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
          v157 = sub_10001ADE4();
          v83 = swift_allocObject();
          *(v83 + 16) = v49;
          v163 = sub_100017BB8;
          v164 = v83;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000043F4;
          v162 = &unk_1000255A8;
          v84 = _Block_copy(aBlock);
          v85 = v49;
          v86 = v84;
          v87 = v85;

          v88 = v151;
          sub_10001AB84();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100001DFC(&unk_100029950, &qword_10001B9B0);
          sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
          v89 = v153;
          v90 = v156;
          sub_10001AE64();
          v91 = v157;
          sub_10001AE04();
          _Block_release(v86);

          (*(v155 + 8))(v89, v90);
          (*(v152 + 8))(v88, v154);
          (*(a4 + 16))(a4, 0);

          (*(v134 + 8))(v160, v133);
          return (*(v35 + 8))(v159, v34);
        }

        v81 = sub_10001AF34();

        if (v81)
        {
          goto LABEL_20;
        }

        v49 = v157;
        v80 = *(v157 + v54);
      }

      else
      {
        v79 = v53;
        v80 = 0;
      }

      *&v49[v54] = v53;
      v82 = v53;

      sub_10000FDA8();
      goto LABEL_23;
    }

    v134 = v30;
    v133 = v29;
    v132 = v35;
    v130 = v34;
    v131 = a4;
    v60 = *(v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord);
    v61 = *(v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord + 8);
    [v158 auditToken];
    v62 = v165;
    v63 = v166;
    v65 = v167;
    v64 = v168;
    v129 = *(v61 + 8);
    v162 = v60;
    v163 = v61;
    sub_10000F158(aBlock);
    v129(v62, v63, v65, v64, v60, v61);
    v68 = (*(v61 + 16))(v60, v61);
    a4 = v131;
    v70 = v132;
    if (!v69)
    {
      sub_100017A74();
      swift_allocError();
      *v92 = 1;
      v93 = sub_10001A6E4();
      (*(a4 + 16))(a4, v93);

      (*(v134 + 8))(v160, v133);
      (*(v70 + 8))(v159, v130);
      return sub_10000BF9C(aBlock);
    }

    v128 = v68;
    v129 = v69;
    v71 = v158;
    v72 = v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection;
    v73 = (*(*(v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection + 8) + 8))(v158);
    v74 = (*(*(v72 + 8) + 16))(v71);
    v34 = v130;
    v30 = v134;
    if (v73)
    {
      v75 = 1;
      v76 = v147;
      v77 = v149;
      v78 = v146;
    }

    else
    {
      v77 = v149;
      v78 = v146;
      if ((v74 & 1) == 0)
      {

        sub_100017A74();
        swift_allocError();
        *v107 = 2;
        v108 = sub_10001A6E4();
        (*(a4 + 16))(a4, v108);

        (*(v30 + 8))(v160, v133);
        (*(v70 + 8))(v159, v34);
        return sub_10000BF9C(aBlock);
      }

      v94 = v147;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v96 = sub_10001ABF4();
      v75 = [ObjCClassFromMetadata isAuthorized:v96];

      v76 = v94;
    }

    v125 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData;
    *(v157 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData) = v75;
    sub_10001A9E4();
    sub_10001A9B4();
    v97 = v78;
    v98 = v77;
    v99 = v145;
    v100 = v148;
    (*(v145 + 56))(v97, 0, 1, v148);
    v101 = *(v14 + 48);
    sub_10000F3BC(v98, v76, &qword_1000299B8, &unk_10001C1F0);
    v126 = v101;
    sub_10000F3BC(v97, v76 + v101, &qword_1000299B8, &unk_10001C1F0);
    v102 = *(v99 + 48);
    v103 = v102(v76, 1, v100);
    v127 = v99 + 48;
    if (v103 == 1)
    {
      sub_10000BE84(v97, &qword_1000299B8, &unk_10001C1F0);
      v104 = v147;
      sub_10000BE84(v149, &qword_1000299B8, &unk_10001C1F0);
      if (v102(v104 + v126, 1, v100) == 1)
      {
        sub_10000BE84(v104, &qword_1000299B8, &unk_10001C1F0);
        v49 = v157;
LABEL_38:
        if (v49[v125])
        {
          goto LABEL_45;
        }

        sub_10001A9A4();
        sub_10001A9C4();
        v112 = v138;
        sub_10001AA14();
        v113 = v136;
        v114 = *(v136 + 48);
        v115 = v137;
        if (v114(v112, 1, v137) == 1)
        {
          sub_10001A9F4();
          if (v114(v112, 1, v115) != 1)
          {
            sub_10000BE84(v112, &qword_1000299A8, &qword_10001C1E0);
          }
        }

        else
        {
          (*(v113 + 32))(v139, v112, v115);
        }

        v116 = v160;
        sub_10001A974();
        sub_10001A954();
        sub_10001A964();
        v117 = v135;
        sub_10001AA24();
        v118 = v133;
        (*(v30 + 8))(v116, v133);
        (*(v30 + 32))(v116, v117, v118);
LABEL_44:
        v49 = v157;
LABEL_45:
        v119 = v144;
        sub_10001A9E4();
        v120 = v102(v119, 1, v148);
        sub_10000BE84(v119, &qword_1000299B8, &unk_10001C1F0);
        if (v120 != 1 || v49[v125] == 1)
        {
          v121 = &v49[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
          v122 = v129;
          *v121 = v128;
          v121[1] = v122;

          sub_10000BF9C(aBlock);
          v35 = v132;
          v29 = v133;
          goto LABEL_9;
        }

        sub_100017A74();
        swift_allocError();
        *v123 = 2;
        v124 = sub_10001A6E4();
        (*(a4 + 16))(a4, v124);

        (*(v30 + 8))(v160, v133);
        (*(v132 + 8))(v159, v34);
        return sub_10000BF9C(aBlock);
      }
    }

    else
    {
      v105 = v143;
      sub_10000F3BC(v76, v143, &qword_1000299B8, &unk_10001C1F0);
      v106 = v126;
      v104 = v76;
      if (v102(v76 + v126, 1, v100) != 1)
      {
        v109 = v145;
        v110 = v140;
        (*(v145 + 32))(v140, v104 + v106, v100);
        sub_100017C7C(&qword_1000299C8, &type metadata accessor for DeviceActivityFilter.Users, &protocol conformance descriptor for DeviceActivityFilter.Users);
        LODWORD(v147) = sub_10001ABE4();
        v111 = *(v109 + 8);
        v111(v110, v100);
        sub_10000BE84(v146, &qword_1000299B8, &unk_10001C1F0);
        sub_10000BE84(v149, &qword_1000299B8, &unk_10001C1F0);
        v111(v105, v100);
        v30 = v134;
        sub_10000BE84(v104, &qword_1000299B8, &unk_10001C1F0);
        v49 = v157;
        if ((v147 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      sub_10000BE84(v146, &qword_1000299B8, &unk_10001C1F0);
      sub_10000BE84(v149, &qword_1000299B8, &unk_10001C1F0);
      (*(v145 + 8))(v105, v100);
    }

    sub_10000BE84(v104, &qword_1000299B0, &qword_10001C1E8);
    goto LABEL_44;
  }

  sub_100017A74();
  swift_allocError();
  *v41 = 0;
  v42 = sub_10001A6E4();
  (*(a4 + 16))(a4, v42);
}

uint64_t sub_100016ABC(uint64_t *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int (**a6)(char **, uint64_t, uint64_t), void (**a7)(char *, uint64_t, uint64_t, uint64_t), uint64_t a8, unint64_t a9)
{
  v119 = a7;
  v118 = a6;
  v117 = a4;
  v116 = a3;
  v115 = a2;
  v113 = a1;
  v10 = sub_10001A854();
  v125 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100001DFC(&qword_100029960, &qword_10001C1A8);
  v112 = *(v122 - 8);
  __chkstk_darwin(v122);
  v109 = (&v89 - v13);
  v14 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  __chkstk_darwin(v14 - 8);
  v98 = &v89 - v15;
  v100 = sub_10001AA34();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001DFC(&qword_100029970, &qword_10001C1B8);
  v18 = __chkstk_darwin(v17 - 8);
  v121 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = (&v89 - v20);
  v107 = sub_10001A884();
  v123 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100001DFC(&qword_100029978, &qword_10001C1C0);
  v23 = __chkstk_darwin(v22 - 8);
  v105 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v104 = (&v89 - v25);
  v26 = sub_100001DFC(&qword_100029980, &qword_10001C1C8);
  __chkstk_darwin(v26 - 8);
  v28 = &v89 - v27;
  v102 = sub_10001A8C4();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v124 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100001DFC(&qword_100029988, &qword_10001C1D0);
  __chkstk_darwin(v30 - 8);
  v32 = &v89 - v31;
  v33 = sub_10001AA64();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AA54();
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_10000BE84(v32, &qword_100029988, &qword_10001C1D0);
    sub_100017A74();
    swift_allocError();
    *v37 = 3;
    v38 = sub_10001A6E4();
    (*(a9 + 16))(a9, 0, v38);
  }

  v103 = a9;
  v114 = v12;
  (*(v34 + 32))(v36, v32, v33);
  sub_1000107D4(&v130);
  sub_10000EBC8(&v130, v131);
  sub_10001AA74();
  v91 = v34;
  v92 = v33;
  v40 = v101;
  v41 = v102;
  if ((*(v101 + 48))(v28, 1, v102) != 1)
  {
    v90 = 0;
    (*(v40 + 32))(v124, v28, v41);
    sub_10000BF9C(&v130);
    v42 = sub_10001A8A4();
    v113 = (a8 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache);
    v96 = (v123 + 32);
    v128 = 0;
    v129 = 0;
    v108 = v125 + 16;
    v119 = (v112 + 7);
    v118 = (v112 + 6);
    v112 = (v125 + 32);
    v127 = v42;
    v110 = v125 + 8;
    v93 = (v123 + 8);
    v43 = v114;
    v45 = v121;
    v44 = v122;
    v46 = v120;
    v47 = v103;
    v95 = a8;
    v94 = v36;
    v111 = v10;
LABEL_7:
    v48 = v105;
    sub_1000133B8(v105);
    v49 = v48;
    v50 = v104;
    sub_100017AC8(v49, v104, &qword_100029978, &qword_10001C1C0);
    v51 = sub_100001DFC(&qword_100029998, &qword_10001C1D8);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {

      v78 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
      swift_beginAccess();
      v79 = a8 + v78;
      v80 = v98;
      sub_10000F3BC(v79, v98, &qword_100029968, &qword_10001C1B0);
      v81 = v99;
      v82 = v100;
      if ((*(v99 + 48))(v80, 1, v100) == 1)
      {
        sub_10000BE84(v80, &qword_100029968, &qword_10001C1B0);
        v60 = v124;
      }

      else
      {
        v83 = v97;
        (*(v81 + 32))(v97, v80, v82);
        v60 = v124;
        sub_10001A8A4();
        sub_10001ACD4();

        sub_10001A8B4();
        (*(v81 + 8))(v83, v82);
      }

      sub_10001A604();
      swift_allocObject();
      sub_10001A5F4();
      sub_100017C7C(&qword_1000299A0, &type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
      v84 = v90;
      isUniquelyReferenced_nonNull_native = sub_10001A5E4();
      if (v84)
      {

        swift_errorRetain();
        v85 = sub_10001A6E4();
        (*(v47 + 16))(v47, 0, v85);

LABEL_34:
        (*(v101 + 8))(v60, v102);
        return (*(v91 + 8))(v36, v92);
      }
    }

    else
    {
      v52 = *v50;
      (*v96)(v106, v50 + *(v51 + 48), v107);
      result = sub_10001A874();
      v53 = result;
      v36 = 0;
      v54 = *(result + 16);
      v115 = v54;
      v117 = v52;
      v116 = result;
      if (!v54)
      {
LABEL_9:
        v55 = 1;
        v36 = v54;
        goto LABEL_13;
      }

      while (1)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        if (v36 >= *(v53 + 16))
        {
          goto LABEL_37;
        }

        v56 = v125;
        v57 = v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v36;
        v58 = *(v44 + 48);
        v59 = v109;
        *v109 = v36;
        (*(v56 + 16))(v59 + v58, v57, v10);
        sub_100017AC8(v59, v45, &qword_100029960, &qword_10001C1A8);
        v55 = 0;
        ++v36;
LABEL_13:
        (*v119)(v45, v55, 1, v44);
        sub_100017AC8(v45, v46, &qword_100029970, &qword_10001C1B8);
        if ((*v118)(v46, 1, v44) == 1)
        {
          (*v93)(v106, v107);

          v47 = v103;
          a8 = v95;
          v36 = v94;
          goto LABEL_7;
        }

        v60 = *v46;
        (*v112)(v43, v46 + *(v44 + 48), v10);
        v61 = sub_10001A834();
        v63 = v62;
        v65 = v113[1];
        v66 = *(v65 + 8);
        v131 = *v113;
        v64 = v131;
        v132 = v65;
        sub_10000F158(&v130);
        v66(v64, v65);
        (*(v65 + 16))(v61, v63, v64, v65);

        swift_beginAccess();

        sub_10000BF9C(&v130);
        v67 = sub_10001A894();
        v69 = v68;
        v70 = *v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100014D98(v70);
          v70 = isUniquelyReferenced_nonNull_native;
          *v69 = isUniquelyReferenced_nonNull_native;
        }

        v47 = v117;
        if ((v117 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v117 >= v70[2])
        {
          goto LABEL_30;
        }

        v73 = sub_10001A864();
        v75 = v74;
        v76 = *v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v75 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100014D84(v76);
          v76 = isUniquelyReferenced_nonNull_native;
          *v75 = isUniquelyReferenced_nonNull_native;
        }

        v43 = v114;
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v60 >= v76[2])
        {
          goto LABEL_32;
        }

        v77 = v125;
        sub_10001A844();
        v73(v126, 0);
        v67(&v130, 0);
        v10 = v111;
        result = (*(v77 + 8))(v43, v111);
        v45 = v121;
        v44 = v122;
        v46 = v120;
        v53 = v116;
        v54 = v115;
        if (v36 == v115)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v86 = isUniquelyReferenced_nonNull_native;
    v87 = v72;

    sub_10000BC84(v86, v87);
    isa = sub_10001A734().super.isa;
    (*(v47 + 16))(v47, isa, 0);

    sub_10000BCD8(v86, v87);
    sub_10000BCD8(v86, v87);
    goto LABEL_34;
  }

  sub_10000BE84(v28, &qword_100029980, &qword_10001C1C8);
  sub_10000BF9C(&v130);
  (*(v103 + 16))(v103, 0, 0);
  return (*(v91 + 8))(v36, v92);
}

unint64_t sub_100017A74()
{
  result = qword_100029990;
  if (!qword_100029990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029990);
  }

  return result;
}

uint64_t sub_100017AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_100017B30(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_100017B80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017BC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017C08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100017C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017CC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReportViewController.ClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}