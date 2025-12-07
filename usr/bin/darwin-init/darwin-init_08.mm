uint64_t sub_1000D2420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(result + 24);

    if (v4)
    {

      v5 = String.init(cString:)();
      v7 = sub_1000D3120(v5, v6);

      return v7 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D24A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (result)
  {
    v6 = *(result + 16);
    v7 = *&v6[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client];
    v8 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate;

    sub_100003B20(v7 + v8, v12);
    v9 = v12[4];
    sub_10000E2A8(v12, v12[3]);
    v10 = *(v9 + 8);
    v11 = v6;
    v10(a5);

    sub_100003C3C(v12);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D2580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v5 = type metadata accessor for ArchiveFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArchiveStream();
  v10[4] = a2;
  v10[5] = a3;
  v10[7] = _swiftEmptyArrayStorage;
  sub_1000D7BFC(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
  sub_10000E720(&qword_1004A6FA8, &qword_1004A6FA0, &qword_100376B60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static ArchiveStream.withDecodeStream<A>(readingFrom:selectUsing:flags:threadCount:_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D276C(uint64_t a1, uint64_t a2, char *a3)
{
  v70 = a3;
  v73 = a2;
  v5 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v5 - 8);
  v72 = v52 - v6;
  v71 = type metadata accessor for FilePath();
  v74 = *(v71 - 8);
  v7 = __chkstk_darwin(v71);
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = v52 - v9;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v57 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v53);
  v54 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A9D00, &qword_10037BF98);
  __chkstk_darwin(v18 - 8);
  v20 = v52 - v19;
  v21 = type metadata accessor for ArchiveHeader.EntryType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v52 - v26;
  result = dispatch thunk of ArchiveStream.readHeader()();
  if (v3)
  {
  }

  v29 = result;
  v52[1] = v17;
  v68 = (v22 + 32);
  v69 = (v22 + 48);
  v66 = a1;
  v67 = (v74 + 6);
  v62 = (v74 + 2);
  v63 = (v74 + 4);
  v61 = (v74 + 1);
  v74 = (v22 + 8);
  while (v29)
  {
    ArchiveHeader.entryType.getter();
    if ((*v69)(v20, 1, v21) == 1)
    {
      sub_100013F2C(v20, &qword_1004A9D00, &qword_10037BF98);
      v71 = 0x8000000100429EB0;
      v72 = 0x800000010042A070;
      v73 = 0x8000000100431D10;
      v74 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v70 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v76 = _swiftEmptyArrayStorage;
      sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v55 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
      v45 = v58;
      v44 = v59;
      v46 = v60;
      (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.default(_:), v60);
      static OS_dispatch_queue.global(qos:)();
      (*(v44 + 8))(v45, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v72;
      *(v43 + 16) = 0xD000000000000078;
      *(v43 + 24) = v48;
      v49 = v71;
      *(v43 + 32) = 0xD00000000000005DLL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 0;
      *(v43 + 48) = 460;
      v50 = v73;
      *(v43 + 64) = 0xD00000000000001DLL;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v51 = v43;
      swift_willThrow();
    }

    (*v68)(v27, v20, v21);
    v30 = v72;
    ArchiveHeader.entryPath.getter();
    v31 = v71;
    if ((*v67)(v30, 1, v71) == 1)
    {
      sub_100013F2C(v30, &qword_1004A9CF8, &qword_10037BF90);
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    else
    {
      v34 = v64;
      (*v63)(v64, v30, v31);
      (*v62)(v65, v34, v31);
      v35 = v34;
      v36 = String.init(decoding:)();
      v37 = v31;
      v33 = v38;
      (*v61)(v35, v37);
      v32 = v36;
    }

    sub_10004C684(v32, v33, v73, 0x544150, 0xE300000000000000, v29);

    static ArchiveHeader.EntryType.link.getter();
    sub_1000D7BFC(&qword_1004A9D08, &type metadata accessor for ArchiveHeader.EntryType, &protocol conformance descriptor for ArchiveHeader.EntryType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39 = *v74;
    (*v74)(v25, v21);
    if (v76 == v75)
    {
      v40 = sub_1000D79A8();
      sub_10004C684(v40, v41, v73, 0x4B4E4C, 0xE300000000000000, v29);
    }

    v42 = v70;
    dispatch thunk of ArchiveStream.writeHeader(_:)();
    sub_10004BCCC(v66, v42, v29);
    v39(v27, v21);

    result = dispatch thunk of ArchiveStream.readHeader()();
    v29 = result;
  }

  return result;
}

uint64_t sub_1000D3120(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v7 = a1;
      }

      v8 = 7;
      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v8 = 11;
      }

      v51 = v8 | (v7 << 16);
      v9 = (v4 + 40);
      do
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v15 = *(v9 - 1);
        v14 = *v9;
        v16 = objc_allocWithZone(NSRegularExpression);

        v17 = String._bridgeToObjectiveC()();
        v55 = 0;
        v18 = [v16 initWithPattern:v17 options:0 error:&v55];

        if (v18)
        {
          v19 = v55;

          v55 = 15;
          v56 = v51;

          sub_1000039E8(&qword_1004A8518, &unk_10037BF80);
          sub_10000E720(&qword_1004A8520, &qword_1004A8518, &unk_10037BF80, &protocol conformance descriptor for Range<A>);
          sub_10000B080();
          v20 = _NSRange.init<A, B>(_:in:)();
          v22 = v21;
          v23 = String._bridgeToObjectiveC()();
          v24 = [v18 firstMatchInString:v23 options:0 range:{v20, v22}];

          if (v24)
          {
            v25 = 1;
            goto LABEL_27;
          }
        }

        else
        {
          v10 = v55;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v52 = static os_log_type_t.error.getter();
          sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
          v11 = v5;
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_100376A40;
          *(v12 + 56) = &type metadata for String;
          *(v12 + 64) = sub_10001A9EC();
          *(v12 + 32) = v15;
          *(v12 + 40) = v14;
          sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
          v13 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v13, "FilePathRegexFilter: Ingnored invalid regular expression: %s", v49);
          v5 = v11;
        }

        ++v6;
        v9 += 2;
      }

      while (v5 != v6);
    }
  }

  v26 = *(v50 + 16);
  if (!v26)
  {
    return 0;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {
    return 1;
  }

  v28 = 0;
  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = a1;
  }

  v30 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v30 = 11;
  }

  v53 = v30 | (v29 << 16);
  for (i = (v26 + 40); ; i += 2)
  {
    if (v28 >= *(v26 + 16))
    {
      goto LABEL_32;
    }

    v39 = *(i - 1);
    v38 = *i;
    v40 = objc_allocWithZone(NSRegularExpression);

    v41 = String._bridgeToObjectiveC()();
    v55 = 0;
    v42 = [v40 initWithPattern:v41 options:0 error:&v55];

    if (v42)
    {
      break;
    }

    v32 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v34 = v26;
    v35 = v27;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100376A40;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_10001A9EC();
    *(v36 + 32) = v39;
    *(v36 + 40) = v38;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v37, "FilePathRegexFilter: Ingnored invalid regular expression: %s", v49);
    v27 = v35;
    v26 = v34;

LABEL_22:
    if (v27 == ++v28)
    {
      return 1;
    }
  }

  v43 = v55;

  v55 = 15;
  v56 = v53;

  sub_1000039E8(&qword_1004A8518, &unk_10037BF80);
  sub_10000E720(&qword_1004A8520, &qword_1004A8518, &unk_10037BF80, &protocol conformance descriptor for Range<A>);
  sub_10000B080();
  v44 = _NSRange.init<A, B>(_:in:)();
  v46 = v45;
  v47 = String._bridgeToObjectiveC()();
  v24 = [v42 firstMatchInString:v47 options:0 range:{v44, v46}];

  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = 0;
LABEL_27:

  return v25;
}

uint64_t sub_1000D36F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D3780()
{

  return swift_deallocClassInstance();
}

id sub_1000D37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

AAByteStream sub_1000D38C0(uint64_t a1, void *a2, void *a3, char *a4, int a5)
{
  v102 = a2;
  v100 = a4;
  v101 = a3;
  v110 = type metadata accessor for DispatchQoS.QoSClass();
  v115 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v112 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v107);
  v108 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v15 - 8);
  v17 = &v82 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v111 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v82 - v22;
  v105 = a1;
  v23 = (*(a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location) + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);

  URL.init(string:)();

  v24 = (*(v19 + 48))(v17, 1, v18);
  v104 = v8;
  if (v24 == 1)
  {
    sub_100013F2C(v17, &qword_1004A6D30, &unk_100376820);
    v106 = 0x8000000100429E70;
    v111 = 0x8000000100429EB0;
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v113 = 0xD00000000000002BLL;
    v114 = 0x8000000100429F10;
    v103 = v10;
    v26 = *v23;
    v25 = v23[1];

    v27._countAndFlagsBits = v26;
    v27._object = v25;
    String.append(_:)(v27);

    v101 = v114;
    v102 = v113;
    v105 = type metadata accessor for KnoxServiceClient.ClientError();
    v28 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v100 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v113 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v112 + 104))(v103, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
    v29 = v115;
    v31 = v109;
    v30 = v110;
    (*(v115 + 104))(v109, enum case for DispatchQoS.QoSClass.default(_:), v110);
    static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v31, v30);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v106;
    *(v28 + 16) = 0xD00000000000003FLL;
    *(v28 + 24) = v33;
    v34 = v111;
    *(v28 + 32) = 0xD00000000000005DLL;
    *(v28 + 40) = v34;
    *(v28 + 56) = 18;
    *(v28 + 48) = 52;
    v35 = v101;
    *(v28 + 64) = v102;
    *(v28 + 72) = v35;
    *(v28 + 80) = 0;
    *(v28 + 88) = v32;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_3:
    swift_allocError();
    *v36 = v28;
    return swift_willThrow();
  }

  v91 = a5;
  v38 = v106;
  (*(v19 + 32))(v106, v17, v18);
  v39 = *(v19 + 16);
  v94 = v19 + 16;
  v95 = v39;
  v39(v111, v38, v18);
  v96 = *(v105 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size);
  type metadata accessor for KnoxRandomAccessDownloadStream(0);
  v40 = swift_allocObject();
  v97 = v18;
  v98 = v14;
  v41 = v40;
  *(v40 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_pos) = 0;
  v93 = OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_synchronizationQueue;
  v42 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v92 = " a valid URL instance from ";
  static DispatchQoS.default.getter();
  v113 = _swiftEmptyArrayStorage;
  v43 = sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v99 = v19;
  v44 = sub_1000039E8(&unk_1004A7850, &qword_100376280);
  v45 = sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  v89 = v44;
  v88 = v45;
  v90 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = *(v112 + 104);
  v87 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v112 += 104;
  v86 = v46;
  v46(v10);
  v47 = v115;
  v49 = (v115 + 104);
  v48 = *(v115 + 104);
  v50 = v10;
  v51 = v109;
  v85 = enum case for DispatchQoS.QoSClass.default(_:);
  v52 = v110;
  v84 = v48;
  v48(v109);
  static OS_dispatch_queue.global(qos:)();
  v53 = *(v47 + 8);
  v115 = v47 + 8;
  v83 = v53;
  v53(v51, v52);
  v54 = v42;
  v55 = v97;
  *(v41 + v93) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled) = 0;
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream__aaStream) = 0;
  v57 = v100;
  v56 = v101;
  *(v41 + 16) = v100;
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_task) = v56;
  v58 = v102;
  *(v41 + 24) = v102;
  v95(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_url, v111, v55);
  *(v41 + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_fullFileSize) = v96;
  v59 = v57;
  v60 = v56;
  v61 = v58;
  v62 = v103;
  sub_10006A608();
  if (v62)
  {

    v63 = *(v99 + 8);
    v63(v111, v55);
    return (v63)(v106, v55);
  }

  else
  {
    v64 = v50;
    v101 = v49;
    v102 = v54;
    v65 = v105;
    v66 = v106;
    v103 = v64;
    v68 = v99 + 8;
    v67 = *(v99 + 8);
    v67(v111, v55);
    v69 = sub_100068ACC();
    v99 = v68;
    v70 = v61;
    v71 = v65;
    v72 = sub_100047650(v69, v71, v61, 0);
    v73 = v70;
    v74 = v72;

    v67(v66, v55);

    v75 = *(v74 + 16);

    result = AEADecryptionRandomAccessInputStreamOpen(v69, v75, 0xFFFFFFFFFFFFFFFFLL, 0, v91);
    if (!result)
    {
      v105 = 0x8000000100431CC0;
      v100 = 0x8000000100429EB0;
      v106 = 0x800000010042A0F0;
      v111 = type metadata accessor for KnoxServiceClient.ClientError();
      v28 = swift_allocObject();
      static DispatchQoS.userInitiated.getter();
      v113 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v86(v103, v87, v104);
      v77 = v109;
      v76 = v110;
      v84(v109, v85, v110);
      static OS_dispatch_queue.global(qos:)();
      v83(v77, v76);
      v78 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v79 = v105;
      *(v28 + 16) = 0xD000000000000041;
      *(v28 + 24) = v79;
      v80 = v100;
      *(v28 + 32) = 0xD00000000000005DLL;
      *(v28 + 40) = v80;
      *(v28 + 56) = 0;
      *(v28 + 48) = 111;
      v81 = v106;
      *(v28 + 64) = 0xD000000000000037;
      *(v28 + 72) = v81;
      *(v28 + 80) = 0;
      *(v28 + 88) = v78;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      goto LABEL_3;
    }
  }

  return result;
}

AAByteStream sub_1000D4530(uint64_t a1, void *a2, void *a3, char *a4, int a5)
{
  LODWORD(v73) = a5;
  v71 = a3;
  v72 = a4;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v7 - 1);
  __chkstk_darwin(v7);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v20 = v74;
  result = sub_1000D38C0(v19, a2, v71, v72, v73);
  if (!v20)
  {
    v72 = v15;
    v73 = v13;
    v68 = v10;
    v74 = v9;
    v71 = v7;
    v23 = *(v19 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size);
    if ((v23 - 0x200000000000000) >> 58 == 63)
    {
      v24 = v22;
      v25 = result;
      v26 = v23 << 6;
      result = swift_slowAlloc();
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = result;
        if (v26)
        {
          bzero(result, v26);
        }

        v28 = AAMemoryOutputStreamOpen(v27, v26);
        v29 = v12;
        v30 = v18;
        if (!v28)
        {
          v66 = 0x8000000100431BC0;
          v67 = 0x8000000100429EB0;
          v75 = 0;
          v76 = 0xE000000000000000;
          _StringGuts.grow(_:)(78);
          v36._countAndFlagsBits = 0xD00000000000004CLL;
          v36._object = 0x8000000100431C10;
          String.append(_:)(v36);
          v77 = v26;
          v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v37);

          v63 = v76;
          v64 = v75;
          v65 = type metadata accessor for KnoxServiceClient.ClientError();
          v38 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
          v62 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v75 = _swiftEmptyArrayStorage;
          sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850, &qword_100376280);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v69 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v68);
          v40 = v70;
          v39 = v71;
          v41 = v74;
          (*(v70 + 104))(v74, enum case for DispatchQoS.QoSClass.default(_:), v71);
          static OS_dispatch_queue.global(qos:)();
          (*(v40 + 8))(v41, v39);
          v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v43 = v66;
          *(v38 + 16) = 0xD000000000000049;
          *(v38 + 24) = v43;
          v44 = v67;
          *(v38 + 32) = 0xD00000000000005DLL;
          *(v38 + 40) = v44;
          *(v38 + 56) = 0;
          *(v38 + 48) = 150;
          v45 = v63;
          *(v38 + 64) = v64;
          *(v38 + 72) = v45;
          *(v38 + 80) = 0;
          *(v38 + 88) = v42;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_15:
          swift_allocError();
          *v59 = v38;
          return swift_willThrow();
        }

        v31 = v28;
        v67 = v29;
        v32 = v25;
        v33 = AAByteStreamProcess(v25, v28);
        AAByteStreamClose(v31);
        AAByteStreamClose(v24);
        AAByteStreamClose(v32);
        result = AAMemoryInputStreamOpen(v27, v33);
        v34 = v74;
        if (result)
        {
          v35 = AADecompressionInputStreamOpen(result, 0, 0);
          if (v35)
          {
            result = AADecodeArchiveInputStreamOpen(v35, 0, 0, 0, 0);
            if (result)
            {
              return result;
            }

            v64 = 0x8000000100431BC0;
            v63 = 0x8000000100429EB0;
            v65 = 0x8000000100431C90;
            v66 = type metadata accessor for KnoxServiceClient.ClientError();
            v38 = swift_allocObject();
            v61 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
            v62 = "hivePointer.swift";
            v60[1] = v30;
            static DispatchQoS.userInitiated.getter();
            v75 = _swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850, &qword_100376280);
            v53 = v34;
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v69 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v68);
            v55 = v70;
            v54 = v71;
            (*(v70 + 104))(v53, enum case for DispatchQoS.QoSClass.default(_:), v71);
            static OS_dispatch_queue.global(qos:)();
            (*(v55 + 8))(v53, v54);
            v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v56 = v64;
            *(v38 + 16) = 0xD000000000000049;
            *(v38 + 24) = v56;
            v57 = v63;
            *(v38 + 32) = 0xD00000000000005DLL;
            *(v38 + 40) = v57;
            *(v38 + 56) = 0;
            v52 = 169;
          }

          else
          {
            v64 = 0x8000000100431BC0;
            v63 = 0x8000000100429EB0;
            v65 = 0x8000000100431C60;
            v66 = type metadata accessor for KnoxServiceClient.ClientError();
            v38 = swift_allocObject();
            v61 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
            v62 = "hivePointer.swift";
            static DispatchQoS.userInitiated.getter();
            v75 = _swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850, &qword_100376280);
            v46 = v34;
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v69 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v68);
            v48 = v70;
            v47 = v71;
            (*(v70 + 104))(v46, enum case for DispatchQoS.QoSClass.default(_:), v71);
            static OS_dispatch_queue.global(qos:)();
            (*(v48 + 8))(v46, v47);
            v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v50 = v64;
            *(v38 + 16) = 0xD000000000000049;
            *(v38 + 24) = v50;
            v51 = v63;
            *(v38 + 32) = 0xD00000000000005DLL;
            *(v38 + 40) = v51;
            *(v38 + 56) = 0;
            v52 = 162;
          }

          *(v38 + 48) = v52;
          v58 = v65;
          *(v38 + 64) = 0xD000000000000027;
          *(v38 + 72) = v58;
          *(v38 + 80) = 0;
          *(v38 + 88) = v49;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void *sub_1000D4F94(AAArchiveStream_impl *a1, char *a2)
{
  v125 = a1;
  v126 = a2;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v119 = *(v2 - 1);
  __chkstk_darwin(v2);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = AAByteRangeCreate();
  v120 = v4;
  v122 = v11;
  if (v15)
  {
    v123 = v15;
    v16 = v2;
    v110 = v6;
    header = 0;
    type metadata accessor for AAHeaderWrapper.HeaderEntry();
    inited = swift_initStackObject();
    inited[2] = 0;
    v124 = inited + 2;
    inited[3] = 0;
    v18 = swift_slowAlloc();
    v121 = inited;
    v117 = v18;
    inited[4] = v18;
    v19 = AAArchiveStreamReadHeader(v125, &header);
    v113 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
    LODWORD(v114) = enum case for DispatchQoS.QoSClass.default(_:);
    v116 = v5;
    v115 = v9;
    if ((v19 & 0x80000000) == 0)
    {
      v102 = 0;
      v101 = 0;
      v104 = 0x8000000100431FE0;
      v111 = 0x8000000100431EF0;
      v103 = 0x8000000100432000;
      v112 = 0x8000000100429670;
      v105 = (v110 + 104);
      v106 = (v119 + 104);
      v107 = (v119 + 8);
      v20 = v16;
      v21 = v126;
      v22 = v120;
      v118 = v14;
      while (1)
      {
        if (!v19)
        {
          goto LABEL_52;
        }

        v35 = header;
        *v124 = header;
        if (v21)
        {
          if (!v35)
          {
            v109 = type metadata accessor for KnoxServiceClient.ClientError();
            v23 = swift_allocObject();
            v108 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);

            static DispatchQoS.userInitiated.getter();
            v127 = _swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
            v24 = v20;
            v25 = v22;
            v26 = v24;
            sub_1000039E8(&unk_1004A7850, &qword_100376280);
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
            v27 = v26;
            v22 = v25;
            v20 = v27;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*v105)(v8, v113, v116);
            (*v106)(v22, v114, v20);
            static OS_dispatch_queue.global(qos:)();
            (*v107)(v22, v20);
            v28 = v8;
            v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v30 = v104;
            *(v23 + 16) = 0xD000000000000013;
            *(v23 + 24) = v30;
            v31 = v111;
            *(v23 + 32) = 0xD000000000000064;
            *(v23 + 40) = v31;
            *(v23 + 56) = 0;
            *(v23 + 48) = 120;
            v32 = v103;
            *(v23 + 64) = 0xD00000000000004ALL;
            *(v23 + 72) = v32;
            *(v23 + 80) = 0;
            *(v23 + 88) = v29;
            sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
            swift_allocError();
            *v33 = v23;
LABEL_5:
            swift_willThrow();

LABEL_6:
            v34 = v125;
            goto LABEL_7;
          }

          v28 = v8;

          v36.ikey = sub_1000C9330(5521744, 0xE300000000000000);
          v37 = sub_1000C9294();
          v38 = v36;
          KeyIndex = AAHeaderGetKeyIndex(v35, v38);
          if ((KeyIndex & 0x80000000) != 0)
          {
            sub_1000D7C44();
            swift_allocError();
            *v54 = 0x80;
            goto LABEL_5;
          }

          if (AAHeaderGetFieldString(v35, KeyIndex, 0x400uLL, v37, 0) < 0)
          {
            sub_1000D7C44();
            swift_allocError();
            *v57 = 0;
            goto LABEL_5;
          }

          v40 = String.init(cString:)();
          v42 = sub_1000D3120(v40, v41);

          if (v42)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!v35)
          {
            v123 = 0x8000000100431ED0;
            v124 = 0x8000000100431F60;
            v92 = v22;
            v125 = type metadata accessor for KnoxServiceClient.ClientError();
            v93 = swift_allocObject();
            v126 = v8;
            v86 = v93;
            v119 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
            static DispatchQoS.userInitiated.getter();
            v127 = _swiftEmptyArrayStorage;
            sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
            sub_1000039E8(&unk_1004A7850, &qword_100376280);
            sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*v105)(v126, v113, v116);
            (*v106)(v92, v114, v20);
            static OS_dispatch_queue.global(qos:)();
            (*v107)(v92, v20);
            v94 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v95 = v123;
            *(v86 + 16) = 0xD000000000000013;
            *(v86 + 24) = v95;
            v96 = v111;
            *(v86 + 32) = 0xD000000000000064;
            *(v86 + 40) = v96;
            *(v86 + 56) = 0;
            *(v86 + 48) = 140;
            v97 = v124;
            *(v86 + 64) = 0xD000000000000048;
            *(v86 + 72) = v97;
            *(v86 + 80) = 0;
            *(v86 + 88) = v94;
            sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_50:
            swift_allocError();
            *v98 = v86;
            goto LABEL_51;
          }

          v28 = v8;
        }

        v43.ikey = sub_1000C9330(5784649, 0xE300000000000000);
        v44 = AAHeaderGetKeyIndex(v35, v43);
        v45 = v117;
        if ((v44 & 0x80000000) != 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v82 = -126;
          goto LABEL_47;
        }

        if (AAHeaderGetFieldUInt(v35, v44, v117) < 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v82 = 2;
          goto LABEL_47;
        }

        v46 = *v45;
        v47.ikey = sub_1000C9330(5915721, 0xE300000000000000);
        v48 = AAHeaderGetKeyIndex(v35, v47);
        if ((v48 & 0x80000000) != 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v82 = -125;
          goto LABEL_47;
        }

        if (AAHeaderGetFieldUInt(v35, v48, v45) < 0)
        {
          sub_1000D7C44();
          swift_allocError();
          v82 = 3;
LABEL_47:
          *v81 = v82;
LABEL_51:
          swift_willThrow();

          goto LABEL_52;
        }

        v49 = v46 + *v45;
        if (__CFADD__(v46, *v45))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        if ((v49 | v46) < 0)
        {
          goto LABEL_55;
        }

        v50 = AAByteRangeAdd(v123, v46, v49);
        if (v50 < 0)
        {
          v124 = 0x8000000100431E70;
          v125 = 0x8000000100429EB0;
          v127 = 0;
          v128 = 0xE000000000000000;
          v83 = v50;
          _StringGuts.grow(_:)(35);

          v127 = 0xD000000000000021;
          v128 = 0x8000000100431FB0;
          v129 = v83;
          v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v84);

          v119 = v127;
          v117 = v128;
          v123 = type metadata accessor for KnoxServiceClient.ClientError();
          v85 = swift_allocObject();
          v126 = v28;
          v86 = v85;
          sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
          static DispatchQoS.userInitiated.getter();
          v127 = _swiftEmptyArrayStorage;
          sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850, &qword_100376280);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*v105)(v126, v113, v116);
          v87 = v120;
          (*v106)(v120, v114, v20);
          static OS_dispatch_queue.global(qos:)();
          (*v107)(v87, v20);
          v88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v89 = v124;
          *(v86 + 16) = 0xD00000000000003ALL;
          *(v86 + 24) = v89;
          v90 = v125;
          *(v86 + 32) = 0xD00000000000005DLL;
          *(v86 + 40) = v90;
          *(v86 + 56) = 0;
          *(v86 + 48) = 249;
          v91 = v117;
          *(v86 + 64) = v119;
          *(v86 + 72) = v91;
          *(v86 + 80) = 0;
          *(v86 + 88) = v88;
          sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
          goto LABEL_50;
        }

        v51.ikey = sub_1000C9330(5920068, 0xE300000000000000);
        v52 = AAHeaderGetKeyIndex(v35, v51);
        if ((v52 & 0x80000000) != 0)
        {
          v53 = -127;
        }

        else
        {
          if ((AAHeaderGetFieldUInt(v35, v52, v45) & 0x80000000) == 0)
          {
            v58 = *v45;
            v59 = __CFADD__(v102, *v45);
            v102 += *v45;
            v34 = v125;
            if (v59)
            {
              goto LABEL_56;
            }

            v60 = v101;
            if (v58 > v101)
            {
              v60 = v58;
            }

            v101 = v60;
            goto LABEL_7;
          }

          v53 = 1;
        }

        v34 = v125;
        sub_1000D7C44();
        v55 = swift_allocError();
        *v56 = v53;
        swift_willThrow();
        v127 = v55;
        swift_errorRetain();
        sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
        if (!swift_dynamicCast() || (v129 & 0x80000000) == 0)
        {

          goto LABEL_52;
        }

LABEL_7:
        v19 = AAArchiveStreamReadHeader(v34, &header);
        v8 = v28;
        v21 = v126;
        if (v19 < 0)
        {
          v125 = v20;
          v126 = v28;
          v70 = v19;
          goto LABEL_41;
        }
      }
    }

    v125 = v16;
    v126 = v8;
    v70 = v19;
    v111 = 0x8000000100431EF0;
    v112 = 0x8000000100429670;
LABEL_41:
    v124 = 0x8000000100432050;
    v127 = 0;
    v128 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v127 = 0xD00000000000002CLL;
    v128 = 0x8000000100432070;
    v129 = v70;
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v71);

    v121 = v127;
    v117 = v128;
    v123 = type metadata accessor for KnoxServiceClient.ClientError();
    v72 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    static DispatchQoS.userInitiated.getter();
    v127 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v110 + 104))(v126, v113, v116);
    v73 = v119;
    v74 = v120;
    v75 = v125;
    (*(v119 + 104))(v120, v114, v125);
    static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v75);
    v76 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v77 = v124;
    *(v72 + 16) = 0xD000000000000018;
    *(v72 + 24) = v77;
    v78 = v111;
    *(v72 + 32) = 0xD000000000000064;
    *(v72 + 40) = v78;
    *(v72 + 56) = 0;
    *(v72 + 48) = 85;
    v79 = v117;
    *(v72 + 64) = v121;
    *(v72 + 72) = v79;
    *(v72 + 80) = 0;
    *(v72 + 88) = v76;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v80 = v72;
    swift_willThrow();
LABEL_52:
    AAHeaderDestroy(header);
  }

  else
  {
    v121 = 0x8000000100431E70;
    v117 = 0x8000000100429EB0;
    v123 = 0x8000000100431EB0;
    v124 = type metadata accessor for KnoxServiceClient.ClientError();
    v61 = swift_allocObject();
    v126 = v8;
    v62 = v61;
    v114 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v115 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v127 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v118 = v14;
    v125 = v2;
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v6 + 104))(v126, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
    v63 = v119;
    v64 = v120;
    v65 = v125;
    (*(v119 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v125);
    static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v64, v65);
    v66 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v62 + 16) = 0xD00000000000003ALL;
    *(v62 + 24) = v121;
    *(v62 + 32) = 0xD00000000000005DLL;
    v67 = v117;
    *(v62 + 56) = 0;
    *(v62 + 40) = v67;
    *(v62 + 48) = 220;
    v68 = v123;
    *(v62 + 64) = 0xD00000000000001ALL;
    *(v62 + 72) = v68;
    *(v62 + 80) = 0;
    *(v62 + 88) = v66;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v69 = v62;
    swift_willThrow();
  }

  return v123;
}

uint64_t sub_1000D63F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ArchiveFlags();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArchiveCompression();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilePath();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v83 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v11 - 8);
  v86 = v11;
  __chkstk_darwin(v11);
  v87 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v84 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 fileExistsAtPath:v20];

  if (v21)
  {
    v83 = 0x8000000100429EB0;
    v90 = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v90 = 0xD000000000000027;
    v91 = 0x8000000100431E40;
    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);

    v80 = v91;
    v81 = v90;
    v82 = type metadata accessor for KnoxServiceClient.ClientError();
    v23 = swift_allocObject();
    v78 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v79 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v85 + 104))(v87, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
    v25 = v88;
    v24 = v89;
    v26 = v92;
    (*(v89 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v92);
    static OS_dispatch_queue.global(qos:)();
    (*(v24 + 8))(v25, v26);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v23 + 16) = 0x293A5F2874696E69;
    *(v23 + 24) = 0xE800000000000000;
    v28 = v83;
    *(v23 + 32) = 0xD00000000000005DLL;
    *(v23 + 40) = v28;
    *(v23 + 56) = 10;
    v29 = 516;
LABEL_9:
    *(v23 + 48) = v29;
    v50 = v80;
    *(v23 + 64) = v81;
    *(v23 + 72) = v50;
    *(v23 + 80) = 0;
    *(v23 + 88) = v27;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v51 = v23;
    return swift_willThrow();
  }

  v73 = v13;
  v74 = v17;
  v30 = [v18 defaultManager];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 createFileAtPath:v31 contents:0 attributes:0];

  if (!v32)
  {
    v83 = 0x8000000100429EB0;
    v90 = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v90 = 0xD000000000000020;
    v91 = 0x8000000100431D80;
    v45._countAndFlagsBits = a1;
    v45._object = a2;
    String.append(_:)(v45);

    v80 = v91;
    v81 = v90;
    v82 = type metadata accessor for KnoxServiceClient.ClientError();
    v23 = swift_allocObject();
    v78 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v79 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v85 + 104))(v87, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
    v46 = v88;
    v47 = v89;
    v48 = v92;
    (*(v89 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v92);
    static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v46, v48);
    v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v23 + 16) = 0x293A5F2874696E69;
    *(v23 + 24) = 0xE800000000000000;
    v49 = v83;
    *(v23 + 32) = 0xD00000000000005DLL;
    *(v23 + 40) = v49;
    *(v23 + 56) = 10;
    v29 = 522;
    goto LABEL_9;
  }

  FilePath.init(_:)();
  type metadata accessor for ArchiveByteStream();
  v33 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (v33)
  {
    v72 = v33;

    v34 = v75;
    static ArchiveCompression.lzfse.getter();
    v90 = _swiftEmptyArrayStorage;
    v35 = sub_1000D7BFC(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
    v36 = sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
    sub_10000E720(&qword_1004A6FA8, &qword_1004A6FA0, &qword_100376B60, &protocol conformance descriptor for [A]);
    v37 = v78;
    v71[0] = v36;
    v38 = v80;
    v71[1] = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)();

    v40 = *(v79 + 1);
    v40(v37, v38);
    (*(v76 + 8))(v34, v77);
    if (v39)
    {
      v41 = v72;
      type metadata accessor for ArchiveStream();
      v42 = v38;
      v90 = _swiftEmptyArrayStorage;

      dispatch thunk of SetAlgebra.init<A>(_:)();
      v43 = static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)();

      v40(v37, v42);
      if (v43)
      {
        (v81[1])(v83, v82);
        return v41;
      }

      v67 = static os_log_type_t.error.getter();
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v68 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v68, "Could not open encodeStream to output archive", 45, 2, _swiftEmptyArrayStorage);

      v69 = type metadata accessor for ArchiveError();
      sub_1000D7BFC(&qword_1004A9D18, &type metadata accessor for ArchiveError, &protocol conformance descriptor for ArchiveError);
      swift_allocError();
      (*(*(v69 - 8) + 104))(v70, enum case for ArchiveError.ioError(_:), v69);
      swift_willThrow();
      (v81[1])(v83, v82);
    }

    else
    {
      v78 = 0x8000000100429EB0;
      v79 = 0x8000000100431DE0;
      v80 = type metadata accessor for KnoxServiceClient.ClientError();
      v59 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v77 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v90 = _swiftEmptyArrayStorage;
      sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v85 + 104))(v87, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
      v60 = v88;
      v61 = v89;
      v62 = v92;
      (*(v89 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v92);
      static OS_dispatch_queue.global(qos:)();
      (*(v61 + 8))(v60, v62);
      v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v59 + 16) = 0x293A5F2874696E69;
      *(v59 + 24) = 0xE800000000000000;
      v64 = v78;
      *(v59 + 32) = 0xD00000000000005DLL;
      *(v59 + 40) = v64;
      *(v59 + 56) = 0;
      *(v59 + 48) = 547;
      v65 = v79;
      *(v59 + 64) = 0xD00000000000002CLL;
      *(v59 + 72) = v65;
      *(v59 + 80) = 0;
      *(v59 + 88) = v63;
      sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v66 = v59;
      swift_willThrow();
      (v81[1])(v83, v82);
    }
  }

  else
  {
    v78 = 0x8000000100429EB0;
    v79 = 0x8000000100431DB0;
    v80 = type metadata accessor for KnoxServiceClient.ClientError();
    v52 = swift_allocObject();
    v76 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v77 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v85 + 104))(v87, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
    v53 = v88;
    v54 = v89;
    v55 = v92;
    (*(v89 + 104))(v88, enum case for DispatchQoS.QoSClass.default(_:), v92);
    static OS_dispatch_queue.global(qos:)();
    (*(v54 + 8))(v53, v55);
    v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v52 + 16) = 0x293A5F2874696E69;
    *(v52 + 24) = 0xE800000000000000;
    v57 = v78;
    *(v52 + 32) = 0xD00000000000005DLL;
    *(v52 + 40) = v57;
    *(v52 + 56) = 0;
    *(v52 + 48) = 535;
    *(v52 + 64) = 0xD000000000000025;
    *(v52 + 72) = v79;
    *(v52 + 80) = 0;
    *(v52 + 88) = v56;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v58 = v52;
    swift_willThrow();
    return (v81[1])(v83, v82);
  }
}

void *sub_1000D7558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v31 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  result = AARangeInputStreamOpen(a1, a2);
  if (!result)
  {
    v26 = 0x8000000100431D30;
    v25 = 0x8000000100429EB0;
    v27 = 0x8000000100431D50;
    v29 = 0;
    v28 = type metadata accessor for KnoxServiceClient.ClientError();
    v14 = swift_allocObject();
    v23 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v24 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v33 = _swiftEmptyArrayStorage;
    v21 = sub_1000D7BFC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    v22 = v4;
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v30 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
    v15 = v22;
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v22);
    static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v7, v15);
    v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v17 = v26;
    *(v14 + 16) = 0xD00000000000001ELL;
    *(v14 + 24) = v17;
    v18 = v25;
    *(v14 + 32) = 0xD00000000000005DLL;
    *(v14 + 40) = v18;
    *(v14 + 56) = 0;
    *(v14 + 48) = 498;
    v19 = v27;
    *(v14 + 64) = 0xD000000000000023;
    *(v14 + 72) = v19;
    *(v14 + 80) = 0;
    *(v14 + 88) = v16;
    sub_1000D7BFC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v20 = v14;
    swift_willThrow();
    return v29;
  }

  return result;
}

uint64_t sub_1000D79A8()
{
  v0 = type metadata accessor for ArchiveHeader.FieldKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A9D10, &unk_10037BFA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ArchiveHeader.Field();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArchiveHeader.FieldKey.init(_:)();
  dispatch thunk of ArchiveHeader.field(forKey:)();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100013F2C(v6, &qword_1004A9D10, &unk_10037BFA0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1000D1CC8();
    v14 = v13;
    (*(v8 + 8))(v10, v7);
    if (v14)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000D7BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D7C44()
{
  result = qword_1004A9D20;
  if (!qword_1004A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9D20);
  }

  return result;
}

uint64_t *AEADecryptAndExtractAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, AAFlagSet a7, uint64_t a8)
{
  v8 = a8;
  memset(&v28, 0, sizeof(v28));
  if (stat(a1, &v28) || (v28.st_mode & 0xF000) != 0x4000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 804, 115, 0, "Invalid/missing directory: %s", a1);
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v16 = malloc(0x9C8uLL);
    v17 = v16;
    if (v16)
    {
      memset_s(v16, 0x9C8uLL, 0, 0x9C8uLL);
      v18 = malloc(0x38uLL);
      v19 = v18;
      if (v18)
      {
        memset_s(v18, 0x38uLL, 0, 0x38uLL);
        *v17 = a3;
        *(v17 + 8) = a4;
        *(v17 + 16) = a6;
        *(v17 + 24) = a5;
        *(v17 + 2128) = a7;
        *(v17 + 2136) = v8;
        *(v17 + 2120) = a7 >> 62;
        if (a2)
        {
          *(v17 + 2296) = AAByteRangeClone(a2);
        }

        if (realpath_DARWIN_EXTSN(a1, (v17 + 72)))
        {
          if ((sub_1000F4680((v17 + 1096), 0x400uLL, (v17 + 72), ".tmp_decrypt") & 0x80000000) != 0)
          {
            v27 = (v17 + 72);
            v21 = "Path too long: %s";
            v22 = 822;
          }

          else if (stat((v17 + 1096), &v28) || (v28.st_mode & 0xF000) == 0x4000)
          {
            if (pthread_mutex_init((v17 + 2320), 0))
            {
              v20 = *__error();
              v21 = "pthread_mutex_init";
              v22 = 824;
LABEL_24:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", v22, 115, v20, v21, v27);
              goto LABEL_14;
            }

            if (pthread_mutex_init((v17 + 2408), 0))
            {
              v20 = *__error();
              v21 = "pthread_mutex_init";
              v22 = 825;
              goto LABEL_24;
            }

            v25 = AEADecryptAsyncStreamOpen(v17, sub_1000D8080, sub_1000D8AB8, sub_1000D8D44, a7, v8);
            *(v17 + 48) = v25;
            if (v25)
            {
              v26 = AAExtractArchiveOutputStreamOpen(a1, v17, sub_1000D8FFC, a7, v8);
              *(v17 + 64) = v26;
              if (v26)
              {
                *v19 = v17;
                v19[1] = sub_1000D9280;
                v19[4] = sub_1000D9444;
                v19[2] = sub_1000D9448;
                v19[3] = sub_1000D94DC;
                return v19;
              }

              v21 = "creating extract stream";
              v22 = 832;
            }

            else
            {
              v21 = "creating decrypt stream";
              v22 = 830;
            }
          }

          else
          {
            v27 = (v17 + 1096);
            v21 = "Invalid tmp dir: %s";
            v22 = 823;
          }
        }

        else
        {
          v27 = a1;
          v21 = "Invalid directory: %s";
          v22 = 821;
        }

        v20 = 0;
        goto LABEL_24;
      }

      v20 = *__error();
      v21 = "malloc";
      v22 = 810;
      goto LABEL_24;
    }

    v24 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 808, 115, *v24, "malloc");
    v19 = 0;
  }

LABEL_14:
  sub_1000D9280(v17);
  free(v19);
  return 0;
}

uint64_t sub_1000D8080(uint64_t a1, AEAContext context)
{
  memset(&v70, 0, sizeof(v70));
  v4 = *(a1 + 8);
  if (v4 && (v4(*a1, context) & 0x80000000) != 0)
  {
    v8 = "Client context callback returned an error";
    v9 = 459;
    goto LABEL_38;
  }

  if (*(a1 + 2140))
  {
    *(a1 + 2144) = AEAContextGetFieldUInt(context, 0xDu);
    FieldUInt = AEAContextGetFieldUInt(context, 4u);
    *(a1 + 2152) = FieldUInt;
    v6 = FieldUInt + *(a1 + 2144) - 1;
    v7 = v6 / FieldUInt;
    if (v6 / FieldUInt >= 0xFFFFFFFF)
    {
      v8 = "Too many segments";
      v9 = 470;
LABEL_38:
      v12 = 0;
      goto LABEL_39;
    }

    *(a1 + 2384) = v7;
    if (FieldUInt > v6)
    {
      goto LABEL_8;
    }

    v13 = calloc(v7, 0x10uLL);
    *(a1 + 2392) = v13;
    if (!v13)
    {
      v12 = *__error();
      v8 = "malloc";
      v9 = 476;
      goto LABEL_39;
    }

    v14 = (*(a1 + 2384) + 1);
    *(a1 + 2160) = 0;
    *(a1 + 2164) = v14;
    v15 = calloc(v14, 4uLL);
    *(a1 + 2168) = v15;
    if (v15)
    {
      if (pthread_mutex_init((a1 + 2176), 0))
      {
        v19 = "SharedArrayInit: pthread_mutex_init failed\n";
        v20 = 56;
      }

      else
      {
        if (!pthread_cond_init((a1 + 2240), 0))
        {
          if (AASharedBufferPipeOpen((a1 + 32), (a1 + 40), *(a1 + 2152)) < 0)
          {
            v8 = "AASharedBufferPipeOpen";
            v9 = 482;
            goto LABEL_38;
          }

          v35 = AADecodeArchiveInputStreamOpen(*(a1 + 40), 0, 0, *(a1 + 2128) | 0x100, *(a1 + 2136));
          *(a1 + 56) = v35;
          if (!v35)
          {
            v8 = "open decoder stream";
            v9 = 486;
            goto LABEL_38;
          }

          if ((sub_1000E766C((a1 + 2488), sub_1000D9584, a1, 0) & 0x80000000) != 0)
          {
            v8 = "createThread";
            v9 = 489;
            goto LABEL_38;
          }

          if ((sub_1000E766C((a1 + 2496), sub_1000D98D4, a1, 0) & 0x80000000) != 0)
          {
            v8 = "createThread";
            v9 = 490;
            goto LABEL_38;
          }

LABEL_8:
          if (stat((a1 + 1096), &v70))
          {
            if (mkdir((a1 + 1096), 0x1C0u))
            {
              v12 = *__error();
              v66 = (a1 + 1096);
              v8 = "mkdir: %s";
              v9 = 500;
LABEL_39:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", v9, 115, v12, v8, v66);
              v10 = 0;
LABEL_40:
              v11 = 0xFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          else if ((v70.st_mode & 0xF000) != 0x4000)
          {
            v66 = (a1 + 1096);
            v8 = "Not a directory: %s";
            v9 = 496;
            goto LABEL_38;
          }

          buf_size = 0;
          memset(&buf, 0, 128);
          memset(__s2, 0, sizeof(__s2));
          if (AEAContextGetFieldBlob(context, 0x12u, 0, 0x80uLL, &buf, &buf_size) < 0)
          {
            v8 = "getting archive identifier";
            v9 = 511;
            goto LABEL_38;
          }

          if ((sub_1000F4680(__str, 0x400uLL, (a1 + 1096), "archive_id") & 0x80000000) != 0)
          {
            v66 = (a1 + 1096);
            v8 = "Name too long: %s";
            v9 = 513;
            goto LABEL_38;
          }

          if (stat(__str, &v70))
          {
            if ((sub_1000F5188(__str, &buf, buf_size) & 0x80000000) != 0)
            {
              v66 = __str;
              v8 = "storing archive id: %s";
              v9 = 529;
              goto LABEL_38;
            }
          }

          else
          {
            if ((v70.st_mode & 0xF000) != 0x8000 || v70.st_size != buf_size)
            {
              v8 = "Archive identifier size mismatch when resuming";
              v9 = 517;
              goto LABEL_38;
            }

            v32 = open(__str, 0);
            if (v32 < 0)
            {
              v12 = *__error();
              v66 = __str;
              v8 = "open: %s";
              v9 = 519;
              goto LABEL_39;
            }

            v33 = v32;
            v34 = read(v32, __s2, buf_size);
            close(v33);
            if (v34 != buf_size || memcmp(&buf, __s2, v34))
            {
              v8 = "Archive identifier value mismatch when resuming";
              v9 = 523;
              goto LABEL_38;
            }
          }

          v21 = *(a1 + 2296);
          if (!v21)
          {
            v36 = AAByteRangeCreate();
            *(a1 + 2296) = v36;
            if (!v36)
            {
              v8 = "AAByteRangeCreate";
              v9 = 537;
              goto LABEL_38;
            }

            if ((AAByteRangeAdd(v36, 0, *(a1 + 2144)) & 0x80000000) != 0)
            {
              v8 = "AAByteRangeAdd";
              v9 = 538;
              goto LABEL_38;
            }

            v21 = *(a1 + 2296);
          }

          v22 = AAByteRangeSizeAtOffset(v21, 0x7FFFFFFFFFFFFFFFLL);
          *(a1 + 2304) = v22 - AAByteRangeSizeAtOffset(v21, 0x8000000000000000);
          v23 = sub_1000D9948(a1);
          if (v23)
          {
            v10 = v23;
            *__str = 0;
            *&buf.st_dev = 0;
            v24 = AAByteRangeFirst(v23, 0, __str, &buf);
            if ((v24 & 0x8000000000000000) == 0)
            {
              v25 = v24;
              while (1)
              {
                v26 = *__str;
                v27 = *&buf.st_dev;
                if (*__str <= *&buf.st_dev)
                {
                  v29 = *(a1 + 2296);
                  v30 = AAByteRangeSizeAtOffset(v29, *&buf.st_dev);
                  v28 = v30 - AAByteRangeSizeAtOffset(v29, v26);
                  v27 = *&buf.st_dev;
                  v26 = *__str;
                }

                else
                {
                  v28 = -1;
                }

                if (v28 < v27 - v26)
                {
                  break;
                }

                v25 = AAByteRangeNext(v10, v25, __str, &buf);
                if (v25 < 0)
                {
                  goto LABEL_30;
                }
              }

              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", 553, 115, 0, "Stored remaining range is not a subset of initial range");
              goto LABEL_40;
            }

LABEL_30:
            AAByteRangeDestroy(*(a1 + 2296));
            *(a1 + 2296) = v10;
          }

          else
          {
            v10 = *(a1 + 2296);
          }

          v37 = AAByteRangeClone(v10);
          *(a1 + 2472) = v37;
          if (!v37)
          {
            v8 = "AAByteRangeClone";
            v9 = 564;
            goto LABEL_38;
          }

          *(a1 + 2400) = -1;
          if (!*(a1 + 2384))
          {
            v11 = 0;
            if (!*(a1 + 2120))
            {
              v10 = 0;
              goto LABEL_41;
            }

            v52 = 0;
            v51 = 0;
            v50 = 0;
            v65 = 0;
            LODWORD(v48) = 0;
            goto LABEL_107;
          }

          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = *(a1 + 2152);
            v41 = v40 * v39;
            v42 = v40 * v39 + v40;
            v43 = v42 >= *(a1 + 2144) ? *(a1 + 2144) : v42;
            if (v41 > v43)
            {
              break;
            }

            v45 = *(a1 + 2296);
            v46 = AAByteRangeSizeAtOffset(v45, v43);
            v47 = AAByteRangeSizeAtOffset(v45, v41);
            v44 = *(a1 + 2392);
            if (v46 != v47)
            {
              goto LABEL_71;
            }

            *(v44 + v38) = 3;
            sub_1000D9B04(a1, v39);
LABEL_73:
            ++v39;
            v48 = *(a1 + 2384);
            v38 += 16;
            if (v39 >= v48)
            {
              if (*(a1 + 2120))
              {
                if (v48)
                {
                  v49 = 0;
                  v50 = 0;
                  v51 = 0;
                  v68 = 0;
                  LODWORD(v11) = 0;
                  v52 = 0;
                  while (1)
                  {
                    v53 = *(a1 + 2152);
                    v54 = v53 * v49;
                    v55 = v53 * v49 + v53;
                    v56 = v55 >= *(a1 + 2144) ? *(a1 + 2144) : v55;
                    if (v54 > v56)
                    {
                      break;
                    }

                    v67 = v52;
                    v58 = v50;
                    v59 = v51;
                    v60 = *(a1 + 2296);
                    v61 = AAByteRangeSizeAtOffset(v60, v56);
                    v62 = AAByteRangeSizeAtOffset(v60, v54);
                    v57 = v61 - v62;
                    if (v61 != v62)
                    {
                      v51 = v59;
                      v50 = v58;
                      v52 = v67;
LABEL_84:
                      memset(&buf, 0, sizeof(buf));
                      if (sub_1000D9D38(a1, v49, __str) || stat(__str, &buf))
                      {
                        st_size = 0;
                      }

                      else if ((buf.st_mode & 0xF000) == 0x8000)
                      {
                        st_size = buf.st_size;
                      }

                      else
                      {
                        st_size = 0;
                      }

                      v52 += v57;
                      LODWORD(v11) = v11 + 1;
                      v51 = v51 - v54 + v56;
                      if (st_size)
                      {
                        v64 = v68 + 1;
                      }

                      else
                      {
                        v64 = v68;
                      }

                      v68 = v64;
                      v50 += st_size;
                      goto LABEL_91;
                    }

                    v51 = v59;
                    v50 = v58;
                    v52 = v67;
LABEL_91:
                    ++v49;
                    v48 = *(a1 + 2384);
                    if (v49 >= v48)
                    {
                      v65 = v68;
                      goto LABEL_107;
                    }
                  }

                  v57 = -1;
                  goto LABEL_84;
                }

                v52 = 0;
                LODWORD(v11) = 0;
                v65 = 0;
                v51 = 0;
                v50 = 0;
LABEL_107:
                fprintf(__stderrp, "%12u segments in archive\n", v48);
                fprintf(__stderrp, "%12u segments to process\n", v11);
                fprintf(__stderrp, "%12u segments in cache\n", v65);
                fprintf(__stderrp, "%12u segments to download\n", v11 - v65);
                fprintf(__stderrp, "%12llu bytes in archive\n", *(a1 + 2144));
                fprintf(__stderrp, "%12llu bytes to process\n", v52);
                fprintf(__stderrp, "%12llu segment bytes in cache\n", v50);
                fprintf(__stderrp, "%12llu segment bytes to download\n", v51 - v50);
              }

              v10 = 0;
              v11 = 0;
              goto LABEL_41;
            }
          }

          v44 = *(a1 + 2392);
LABEL_71:
          *(v44 + v38) = 0;
          if (*(a1 + 2400) == -1)
          {
            *(a1 + 2400) = v39;
          }

          goto LABEL_73;
        }

        v19 = "SharedArrayInit: pthread_cond_init failed\n";
        v20 = 57;
      }
    }

    else
    {
      v19 = "SharedArrayInit: malloc failed\n";
      v20 = 55;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v20, 0, v19, v16, v17, v18);
    v8 = "SharedArrayInit";
    v9 = 479;
    goto LABEL_38;
  }

  v10 = 0;
  v11 = 0;
  *(a1 + 2140) = 1;
LABEL_41:
  AAByteRangeDestroy(v10);
  return v11;
}

uint64_t sub_1000D8AB8(uint64_t a1, size_t __size, unint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v7 = *(a1 + 2152);
  v8 = a3 / v7;
  if (a3 / v7 * v7 != a3 || v8 >= *(a1 + 2384))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 639, 115, 0, "Invalid segment offset: %llu, size: %zu");
    goto LABEL_9;
  }

  if (*(*(a1 + 2392) + 16 * v8) != 3)
  {
    if (__size < 0x2000000001)
    {
      v15 = a4;
      v16 = malloc(__size);
      if (v16)
      {
        v10 = v16;
        if (sub_1000D9B68(a1, v8, v16, __size) < 1 || sub_1000FB1CC(v18, v15, v10, __size) || LODWORD(v18[0]) != a6 || memcmp(v18 + 4, a5, a6))
        {
          sub_1000D9B04(a1, v8);
          v11 = 0;
          goto LABEL_11;
        }

        atomic_fetch_add((a1 + 2288), 1u);
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: cached\n", v8);
        }

        if ((sub_1000D9DE0(a1, v8, __size) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 664, 115, 0, "pushSegmentData failed");
LABEL_10:
        v11 = 0xFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    else
    {
      *__error() = 12;
    }

    v17 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 652, 115, v17, "malloc");
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 2120) >= 2u)
  {
    fprintf(__stderrp, "Segment %u: not needed\n", v8);
  }

  v10 = 0;
LABEL_7:
  v11 = 1;
LABEL_11:
  free(v10);
  return v11;
}

uint64_t sub_1000D8D44(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 2152);
  v6 = a3 / v5;
  if (a3 / v5 * v5 != a3 || v6 >= *(a1 + 2384))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 686, 115, 0, "Invalid segment offset: %llu, size: %zu");
    return 0xFFFFFFFFLL;
  }

  memset(&v20, 0, sizeof(v20));
  if ((sub_1000D9D38(a1, v6, __str) & 0x80000000) != 0)
  {
    v14 = "getSegmentFile";
    v15 = 127;
LABEL_18:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v15, 115, 0, v14);
LABEL_19:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 690, 115, 0, "storeTempSegment", v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec, v20.st_size, v20.st_blocks, *&v20.st_blksize, *&v20.st_gen, v20.st_qspare[0], v20.st_qspare[1]);
    return 0xFFFFFFFFLL;
  }

  if (!stat(__str, &v20))
  {
    v14 = "segment already in cache";
    v15 = 128;
    goto LABEL_18;
  }

  v9 = open(__str, 1537, 384);
  if (v9 < 0)
  {
    v16 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 130, 115, v16, "tmp");
    goto LABEL_19;
  }

  v10 = v9;
  if (a2)
  {
    v11 = 0;
    while (1)
    {
      v12 = write(v10, (a4 + v11), a2 - v11);
      if (v12 < 0)
      {
        v17 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 135, 115, v17, "write");
        goto LABEL_26;
      }

      if (!v12)
      {
        break;
      }

      v11 += v12;
      if (v11 >= a2)
      {
        goto LABEL_11;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 136, 115, 0, "write returned 0");
LABEL_26:
    close(v10);
    goto LABEL_19;
  }

LABEL_11:
  close(v10);
  atomic_fetch_add((a1 + 2288), 1u);
  if (*(a1 + 2120) >= 2u)
  {
    fprintf(__stderrp, "Segment %u: stored in cache\n", v6);
  }

  if ((sub_1000D9DE0(a1, v6, a2) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 695, 115, 0, "pushSegmentData", v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec, v20.st_size, v20.st_blocks, *&v20.st_blksize, *&v20.st_gen, v20.st_qspare[0], v20.st_qspare[1]);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000D8FFC(void *a1, uint64_t a2, uint64_t a3, AAHeader header)
{
  v5 = a2;
  v7 = a1[3];
  if (!v7 || (v8 = v7(*a1, a2, a3, header), !v8))
  {
    switch(v5)
    {
      case 20:
        v31 = -1;
        value = -1;
        v30 = -1;
        v14.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(header, v14);
        v18 = 0;
        if ((KeyIndex & 0x80000000) == 0)
        {
          FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value);
          v17 = FieldUInt <= 1 ? 1 : FieldUInt;
          if (v17 > 0)
          {
            v18 = 1;
          }
        }

        v19.ikey = 5784649;
        v20 = AAHeaderGetKeyIndex(header, v19);
        if ((v20 & 0x80000000) != 0 || ((v21 = AAHeaderGetFieldUInt(header, v20, &v31), v21 <= 1) ? (v22 = 1) : (v22 = v21), v22 <= 0))
        {
          v18 = 0;
        }

        v23.ikey = 5915721;
        v24 = AAHeaderGetKeyIndex(header, v23);
        if ((v24 & 0x80000000) != 0 || ((v25 = AAHeaderGetFieldUInt(header, v24, &v30), v25 <= 1) ? (v26 = 1) : (v26 = v25), !v18 || v26 <= 0))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 419, 115, 0, "Missing IDX,IDZ from archive decoder");
          goto LABEL_36;
        }

        v27 = AAByteRangeOffsetAtSize(a1[287], v31);
        v28 = AAByteRangeOffsetAtSize(a1[287], v30 + v31);
        if (value == 68 && (sub_1000DA0E8(a1, v27, v28) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 428, 115, 0, "retire segment");
          goto LABEL_36;
        }

        break;
      case 21:
        if (!header)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 432, 115, 0, "data not expected to be NULL");
          goto LABEL_36;
        }

        v10 = *header;
        v11 = *(header + 1);
        v12 = AAByteRangeOffsetAtSize(a1[287], *header);
        v13 = AAByteRangeOffsetAtSize(a1[287], v11 + v10);
        if ((sub_1000DA0E8(a1, v12, v13) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 441, 115, 0, "retire segment");
          goto LABEL_36;
        }

        break;
      case 22:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 407, 115, 0, "Extraction failed: %s");
LABEL_36:
        v9 = 0xFFFFFFFFLL;
LABEL_37:
        sub_1000D9CB4(a1);
        return v9;
    }

    return 0;
  }

  v9 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  return v9;
}

uint64_t sub_1000D9280(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 2292));
    v3 = v2 == 0;
    if (*(result + 2488))
    {
      sub_1000D9FC0((result + 2160), -1);
      sub_1000E79CC(*(v1 + 2488));
    }

    AAByteStreamClose(*(v1 + 32));
    v4 = *(v1 + 2496);
    if (v4)
    {
      sub_1000E79CC(v4);
    }

    AAByteStreamClose(*(v1 + 40));
    if (AAArchiveStreamClose(*(v1 + 64)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 725, 115, 0, "extract stream reported errors");
      v3 = 0;
    }

    if (AAArchiveStreamClose(*(v1 + 56)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 726, 115, 0, "decode stream reported errors");
      v3 = 0;
    }

    if ((AAAsyncByteStreamClose(*(v1 + 48)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 727, 115, 0, "decrypt stream reported errors");
      v3 = 0;
    }

    pthread_mutex_destroy((v1 + 2320));
    pthread_mutex_destroy((v1 + 2408));
    free(*(v1 + 2392));
    if (*(v1 + 2384) && !pthread_mutex_destroy((v1 + 2176)) && !pthread_cond_destroy((v1 + 2240)))
    {
      free(*(v1 + 2168));
    }

    AAByteRangeDestroy(*(v1 + 2296));
    AAByteRangeDestroy(*(v1 + 2472));
    if (v3)
    {
      memset(&v5, 0, sizeof(v5));
      if (!stat((v1 + 1096), &v5) && (v5.st_mode & 0xF000) == 0x4000)
      {
        sub_1000F6E1C((v1 + 1096));
      }
    }

    free(v1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1000D9448(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = (a1 + 2312);
  if (atomic_load((a1 + 2312)))
  {
    goto LABEL_2;
  }

  result = AAAsyncByteStreamGetRange(*(a1 + 48), a2, a3);
  if (result >= 1)
  {
    if (result == 1 && *a2)
    {
      return 1;
    }

LABEL_2:
    v8 = 0;
    result = 0;
    atomic_compare_exchange_strong(v6, &v8, 1u);
    if (*(a1 + 2400) < *(a1 + 2384))
    {
      return result;
    }

    *a2 = 0;
    *a3 = 0;
    return 1;
  }

  return result;
}

void *AEADecryptAndExtractChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned int a10)
{
  AsyncStreamOpen = AEADecryptAndExtractAsyncStreamOpen(a1, a2, a3, a4, a5, a6, a9 | 0x200000000000000, a10);
  if (AsyncStreamOpen)
  {

    return sub_1000DEB6C(AsyncStreamOpen, a7, a8, a9, a10);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractChunkAsyncStreamOpen", 868, 115, 0, "AEADecryptAndExtractAsyncStreamOpen");
    return 0;
  }
}

uint64_t sub_1000D9584(uint64_t a1)
{
  v2 = *(a1 + 2152);
  if (v2 < 0x2000000001)
  {
    v3 = malloc(v2);
    if (v3)
    {
      v4 = v3;
      while (!pthread_mutex_lock((a1 + 2176)))
      {
        while (1)
        {
          v8 = *(a1 + 2160);
          if (v8)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 2240), (a1 + 2176)))
          {
            v23 = "SharedArrayPop: pthread_cond_wait failed\n";
            v24 = 94;
            goto LABEL_37;
          }
        }

        v9 = v8 - 1;
        *(a1 + 2160) = v9;
        v10 = *(*(a1 + 2168) + 4 * v9);
        if (pthread_mutex_unlock((a1 + 2176)))
        {
          v23 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v24 = 98;
          goto LABEL_37;
        }

        if (v10 == -1)
        {
          goto LABEL_39;
        }

        if (v10 >= *(a1 + 2384))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 338, 115, 0, "Invalid segment index: %u");
          goto LABEL_38;
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: dequeue\n", v10);
        }

        v11 = *(*(a1 + 2392) + 16 * v10 + 8);
        if (sub_1000D9B68(a1, v10, v4, v11) <= 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 344, 115, 0, "loading segment: %u");
          goto LABEL_38;
        }

        v12 = *(a1 + 2152) * v10;
        v25 = 0;
        v26 = 0;
        v13 = AAByteRangeFirst(*(a1 + 2296), v12, &v26, &v25);
        if (v13 < 0)
        {
          v15 = 0;
        }

        else
        {
          v14 = v13;
          v15 = 0;
          v16 = v12 + v11;
          v17 = 1;
          do
          {
            if (v26 <= v12)
            {
              v18 = v12;
            }

            else
            {
              v18 = v26;
            }

            if (v16 >= v25)
            {
              v19 = v25;
            }

            else
            {
              v19 = v16;
            }

            if (v18 >= v19)
            {
              break;
            }

            while (1)
            {
              v20 = AAByteStreamWrite(*(a1 + 32), &v4[v18 - v12], v19 - v18);
              if (v20 < 0)
              {
                break;
              }

              v18 += v20;
              v15 += v20;
              if (v18 >= v19)
              {
                goto LABEL_28;
              }
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 364, 115, 0, "SharedBufferWrite");
            v17 = 0;
LABEL_28:
            v14 = AAByteRangeNext(*(a1 + 2296), v14, &v26, &v25);
          }

          while ((v14 & 0x8000000000000000) == 0);
          if (!v17)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: %zu B processed\n", v10, v15);
        }

        sub_1000D9B04(a1, v10);
        atomic_fetch_add((a1 + 2288), 0xFFFFFFFF);
      }

      v23 = "SharedArrayPop: pthread_mutex_lock failed\n";
      v24 = 91;
LABEL_37:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v24, 0, v23, v5, v6, v7);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 336, 115, 0, "SharedArrayDequeue");
      goto LABEL_38;
    }
  }

  else
  {
    *__error() = 12;
  }

  v21 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 331, 115, *v21, "malloc");
  v4 = 0;
LABEL_38:
  sub_1000D9CB4(a1);
LABEL_39:
  free(v4);
  return a1;
}

uint64_t sub_1000D98D4(uint64_t a1)
{
  if (AAArchiveStreamProcess(*(a1 + 56), *(a1 + 64), 0, 0, *(a1 + 2128), *(a1 + 2136)) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractThread", 389, 115, 0, "AAByteStreamProcess reported an error");
    sub_1000D9CB4(a1);
  }

  return a1;
}

void **sub_1000D9948(uint64_t a1)
{
  bzero(v11, 0x400uLL);
  if ((sub_1000F4680(v11, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 254, 115, 0, "Name too long");
    goto LABEL_9;
  }

  v2 = open(v11, 0);
  if (v2 < 0)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  v4 = AAByteRangeCreate();
  if (v4)
  {
    while (1)
    {
      v5 = read(v3, v10, 0x10uLL);
      if (v5 < 0)
      {
        v8 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 264, 115, v8, "read");
        goto LABEL_16;
      }

      if (v5 != 16)
      {
        break;
      }

      if ((AAByteRangeAdd(v4, v10[0], v10[1]) & 0x80000000) != 0)
      {
        v6 = "AAByteRangeAdd";
        v7 = 267;
        goto LABEL_15;
      }
    }

    if (!v5)
    {
      close(v3);
      return v4;
    }

    v6 = "truncated remaining range file";
    v7 = 266;
  }

  else
  {
    v6 = "AAByteRangeCreate";
    v7 = 259;
  }

LABEL_15:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", v7, 115, 0, v6);
LABEL_16:
  close(v3);
LABEL_17:
  AAByteRangeDestroy(v4);
  return 0;
}

uint64_t sub_1000D9B04(uint64_t a1, unsigned int a2)
{
  result = sub_1000D9D38(a1, a2, __str);
  if (!result)
  {
    return unlink(__str);
  }

  return result;
}

uint64_t sub_1000D9B68(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  if ((sub_1000D9D38(a1, a2, __str) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = open(__str, 0, *&v13.st_dev, *&v13.st_uid, *&v13.st_atimespec, *&v13.st_mtimespec, *&v13.st_ctimespec, *&v13.st_birthtimespec);
  if (v6 < 0)
  {
    return 0;
  }

  v7 = v6;
  if (fstat(v6, &v13))
  {
    v8 = 0;
  }

  else if (v13.st_size == a4)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    while (a4 > v9)
    {
      v10 = read(v7, (a3 + v9), a4 - v9);
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }

      if (v10 < 0)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = v8;
      }

      v9 += v10 & ~(v10 >> 63);
      if (v10 < 0)
      {
        v11 = 2;
      }

      if (v11)
      {
        if (v11 == 2)
        {
          goto LABEL_24;
        }

        break;
      }
    }

    if (v9 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

LABEL_24:
  close(v7);
  return v8;
}

void sub_1000D9CB4(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 2292), &v2, 1u);
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      AAArchiveStreamCancel(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      AAArchiveStreamCancel(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      AAAsyncByteStreamCancel(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      AAByteStreamCancel(v7);
    }

    v8 = *(a1 + 40);
    if (v8)
    {

      AAByteStreamCancel(v8);
    }
  }
}

uint64_t sub_1000D9D38(uint64_t a1, unsigned int a2, char *__str)
{
  if (*(a1 + 2384) <= a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", 113, 115, 0, "Invalid segment index: %u");
    return 0xFFFFFFFFLL;
  }

  if (snprintf(__str, 0x400uLL, "%s/%08x", (a1 + 1096), a2) >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", 115, 115, 0, "Segment file name too long");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000D9DE0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2320)))
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 88, 115, *v6, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(a1 + 2392);
    if (*(v8 + 16 * a2))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 90, 115, 0, "Invalid segment state");
      v9 = 0;
      v8 = *(a1 + 2392);
    }

    else
    {
      v9 = 1;
    }

    v10 = v8 + 16 * a2;
    *v10 = 1;
    *(v10 + 8) = a3;
    for (i = *(a1 + 2400); i < *(a1 + 2384); *(a1 + 2400) = i)
    {
      v12 = *(*(a1 + 2392) + 16 * i);
      if (v12 == 1)
      {
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(__stderrp, "Segment %u: in queue for processing\n", i);
          i = *(a1 + 2400);
        }

        if ((sub_1000D9FC0((a1 + 2160), i) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 101, 115, 0, "SharedArrayEnqueue");
          v9 = 0;
        }
      }

      else if (!v12)
      {
        break;
      }

      i = *(a1 + 2400) + 1;
    }

    if (pthread_mutex_unlock((a1 + 2320)))
    {
      v13 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 106, 115, *v13, "pthread_mutex_unlock");
      v9 = 0;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t sub_1000D9FC0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2408)))
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 290, 115, *v6, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  if ((AAByteRangeSub(*(a1 + 2472), a2, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 293, 115, 0, "AAByteRangeSub");
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1000F4248();
  if (v9 <= *(a1 + 2480) + 1.0)
  {
    goto LABEL_34;
  }

  v31 = 0;
  v32 = 0;
  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if ((sub_1000F4680(&__from, 0x400uLL, (a1 + 1096), "remaining.tmp") & 0x80000000) != 0)
  {
    v21 = 203;
LABEL_23:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v21, 115, 0, "Name too long");
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if ((sub_1000F4680(&__to, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    v21 = 204;
    goto LABEL_23;
  }

  v10 = open(&__from, 1537, 384);
  if (v10 < 0)
  {
    v27 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 207, 115, v27, "open: %s");
    goto LABEL_24;
  }

  v11 = v10;
  v12 = calloc(0x4000uLL, 8uLL);
  if (!v12)
  {
    v28 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 210, 115, v28, "malloc");
LABEL_45:
    close(v11);
    goto LABEL_25;
  }

  v13 = AAByteRangeFirst(*(a1 + 2472), 0, &v32, &v31);
  if (v13 < 0)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = 0;
  do
  {
    v16 = v31;
    v17 = &v12[8 * v15];
    v15 += 2;
    *v17 = v32;
    *(v17 + 1) = v16;
    if (v15 == 0x4000)
    {
      if (write(v11, v12, 0x20000uLL) != 0x20000)
      {
        v30 = 220;
LABEL_44:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v30, 115, 0, "truncated write");
        goto LABEL_45;
      }

      v15 = 0;
    }

    v14 = AAByteRangeNext(*(a1 + 2472), v14, &v32, &v31);
  }

  while ((v14 & 0x8000000000000000) == 0);
  if (v15 && write(v11, v12, 8 * v15) != 8 * v15)
  {
    v30 = 229;
    goto LABEL_44;
  }

LABEL_19:
  close(v11);
  rename(&__from, &__to, v18);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = 0;
    goto LABEL_26;
  }

  v29 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 235, 115, *v29, "rename: %s", &__to);
LABEL_25:
  v20 = 1;
LABEL_26:
  if (__from.__pn_.__r_.__value_.__s.__data_[0])
  {
    unlink(&__from);
  }

  free(v12);
  if (v20)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 300, 115, 0, "store remaining range");
    v8 = 0;
  }

  if (*(a1 + 16))
  {
    v22 = *(a1 + 2304);
    v23 = *(a1 + 2472);
    v24 = AAByteRangeSizeAtOffset(v23, 0x7FFFFFFFFFFFFFFFLL);
    v25 = AAByteRangeSizeAtOffset(v23, 0x8000000000000000);
    if (((*(a1 + 16))(*a1, ((v22 - v24 + v25) * 100.0) / v22) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 301, 115, 0, "User cancelled operation");
      v8 = 0;
    }
  }

  *(a1 + 2480) = v9;
LABEL_34:
  if (pthread_mutex_unlock((a1 + 2408)))
  {
    v26 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 305, 115, *v26, "pthread_mutex_unlock");
    v8 = 0;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

ssize_t sub_1000DA58C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    memmove(*(a1 + 32), (*(a1 + 32) + v2), *(a1 + 48) - v2);
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 48) - v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  if (!*(a1 + 1128))
  {
    while (!(v3 >> 18))
    {
      result = AAByteStreamRead(*(a1 + 8), (*(a1 + 32) + v3), 0x40000 - v3);
      if (!result)
      {
        *(a1 + 1128) = 1;
        return result;
      }

      if (result < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamRefillBuffer", 38, 61, 0, "istream read error");
        return 0xFFFFFFFFLL;
      }

      v3 = *(a1 + 48) + result;
      *(a1 + 48) = v3;
      if (*(a1 + 1128))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DA66C(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[5];
  while (1)
  {
    if (a1[6] - v7 >= a3 - v6)
    {
      v8 = a3 - v6;
    }

    else
    {
      v8 = a1[6] - v7;
    }

    if (v8)
    {
      if (a2)
      {
        memcpy((a2 + v6), (a1[4] + v7), v8);
        v7 = a1[5];
      }

      v7 += v8;
      a1[5] = v7;
      a1[142] += v8;
      goto LABEL_12;
    }

    if ((sub_1000DA58C(a1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", 69, 61, 0, "Refill buffer failed");
      return 0xFFFFFFFFLL;
    }

    v7 = a1[5];
    if (v7 == a1[6])
    {
      break;
    }

LABEL_12:
    v6 += v8;
    if (v6 >= a3)
    {
      return 0;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", 70, 61, 0, "No more data");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA780(void *a1, unint64_t a2)
{
  v2 = a1[9];
  v3 = a2 - v2;
  if (a2 <= v2)
  {
    return 0;
  }

  if (a1[10] >= a2)
  {
    if ((sub_1000DA66C(a1, a1[8] + v2, v3) & 0x80000000) == 0)
    {
      result = 0;
      a1[9] += v3;
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", 82, 61, 0, "read error");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", 80, 61, 0, "invalid header size");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA838(void *a1)
{
  if (a1[9] > 5uLL)
  {
    if ((sub_1000DA780(a1, *(a1[8] + 4)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 96, 61, 0, "truncated stream");
    }

    else
    {
      if ((sub_1000EB968(a1[11], a1[8], a1[9]) & 0x80000000) == 0)
      {
        return 0;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 99, 61, 0, "corrupted archive header");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 92, 61, 0, "Invalid decoder state");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DA8F8(void *a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = a1[147];
  if (v8 && (v9 = a1[149], *v9 < a2))
  {
    if (v8 == 1)
    {
      v10 = 1;
    }

    else
    {
      v22 = 0;
      v23 = a1[147];
      v10 = v23;
      do
      {
        v24 = v22 + (v23 >> 1);
        if (v9[4 * v24] >= a2)
        {
          v10 = v24;
        }

        else
        {
          v22 = v24;
        }

        v23 = v10 - v22;
      }

      while ((v10 - v22) > 1);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10 == v8 || (v11 = a1[149], *(v11 + 32 * v10) != a2))
  {
    v12 = a1[148];
    if (v8 >= v12)
    {
      v13 = 2 * v12;
      if (!v12)
      {
        v13 = 32;
      }

      a1[148] = v13;
      if ((32 * v13) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_30:
        a1[149] = 0;
        v25 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 132, 61, *v25, "malloc");
        a1[147] = 0;
        a1[148] = 0;
        return -1;
      }

      v14 = a1[149];
      v15 = realloc(v14, 32 * v13);
      if (!v15)
      {
        free(v14);
        goto LABEL_30;
      }

      a1[149] = v15;
      v8 = a1[147];
    }

    v16 = v10;
    v17 = v8 - v10;
    if (v17)
    {
      memmove((a1[149] + 32 * v10 + 32), (a1[149] + 32 * v10), 32 * v17);
      v16 = a1[147];
    }

    a1[147] = v16 + 1;
    v11 = a1[149];
    v18 = v11 + 32 * v10;
    *v18 = a2;
    *(v18 + 24) = v16;
    *(v18 + 8) = vdupq_n_s64(a3);
  }

  v19 = (v11 + 32 * v10);
  if (v19[1] == a3)
  {
    v20 = v19[2] - 1;
    v19[2] = v20;
    if (v20 < a3)
    {
      *a4 = v20 == 0;
      return v19[3];
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 151, 61, 0, "invalid nlink");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 149, 61, 0, "nlink mismatch");
  }

  return -1;
}

AAArchiveStream AADecodeArchiveInputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v9 = malloc(0x4C0uLL);
  v10 = v9;
  if (v9)
  {
    memset_s(v9, 0x4C0uLL, 0, 0x4C0uLL);
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x38uLL, 0, 0x38uLL), !v10))
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 374;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "AADecodeArchiveInputStreamOpen", v18, 61, v16, v17);
    free(v12);
    sub_1000DB430(v10);
    return 0;
  }

  v13 = malloc(0x40000uLL);
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = v13;
  if (!v13)
  {
    v17 = "init buffer";
    v18 = 379;
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  *(v10 + 1) = stream;
  *(v10 + 14) = -1;
  *(v10 + 72) = xmmword_10037BFB0;
  v14 = malloc(0x10000uLL);
  *(v10 + 8) = v14;
  if (!v14)
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 385;
    goto LABEL_15;
  }

  *(v10 + 11) = AAHeaderCreate();
  v15 = AAHeaderCreate();
  *(v10 + 12) = v15;
  if (!*(v10 + 11) || !v15)
  {
    v17 = "allocating header";
    v18 = 388;
    goto LABEL_14;
  }

  *v10 = flags;
  *(v10 + 2) = msg_proc;
  *(v10 + 3) = msg_data;
  *(v10 + 151) = sub_1000F4248();
  v12[5] = sub_1000DAD00;
  v12[6] = sub_1000DB22C;
  v12[2] = sub_1000DB414;
  *v12 = v10;
  v12[1] = sub_1000DB430;
  return v12;
}

uint64_t sub_1000DAD00(uint64_t a1, AAHeader *a2)
{
  if (*(a1 + 1132))
  {
    return 0xFFFFFFFFLL;
  }

  v39[7] = v2;
  v39[8] = v3;
  v38 = 0;
  v39[0] = 0;
  v6 = *(a1 + 1136);
  v7 = *(a1 + 1144);
  if (v7 >= v6)
  {
    if ((sub_1000DA66C(a1, 0, v7 - v6) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 180, 61, 0, "truncated archive", v38);
      goto LABEL_66;
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v9 == v10)
    {
      if (*(a1 + 1128))
      {
LABEL_11:
        if (*(a1 + 1128))
        {
          return 0;
        }

LABEL_12:
        v11 = *(a1 + 1136);
        *(a1 + 104) = 0;
        *(a1 + 72) = 0;
        if ((sub_1000DA780(a1, 6uLL) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 195, 61, 0, "truncated stream", v38);
          goto LABEL_66;
        }

        v12 = *(a1 + 56);
        if (v12 < 0)
        {
          v13 = *(a1 + 64);
          if (*v13 == 825246017 || *v13 == 826360153)
          {
            *(a1 + 56) = 0;
            goto LABEL_32;
          }

          if (*v13 == 925906736 && *(v13 + 2) == 12592)
          {
            v19 = 1;
          }

          else
          {
            v15 = *v13;
            v16 = *(v13 + 2);
            if (v15 != 925906736 || v16 != 14128)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 212, 61, 0, "Invalid/non-supported archive stream", v38);
              goto LABEL_66;
            }

            v19 = 2;
          }

          *(a1 + 56) = v19;
        }

        else if ((v12 - 1) >= 2)
        {
          if (v12 == 3)
          {
            v18 = sub_1000F709C(a1, v39);
            goto LABEL_39;
          }

          if (v12)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 226, 61, 0, "Invalid archive stream", v38);
            goto LABEL_66;
          }

LABEL_32:
          v18 = sub_1000DA838(a1);
LABEL_39:
          if (v18 < 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 228, 61, 0, "parsing entry header", v38);
            goto LABEL_66;
          }

          if (!v18)
          {
            v20 = *(a1 + 72);
            v21 = *(a1 + 88);
            v22.ikey = 5265748;
            KeyIndex = AAHeaderGetKeyIndex(v21, v22);
            if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v21, KeyIndex, &v38), FieldUInt <= 1) ? (v25 = 1) : (v25 = FieldUInt), v25 <= 0))
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 235, 61, 0, "Invalid entry: no TYP field", v38);
              goto LABEL_66;
            }

            if (v38 != 77)
            {
              v26 = *(a1 + 88);
              v27.ikey = 5521744;
              v28 = AAHeaderGetKeyIndex(v26, v27);
              if ((v28 & 0x80000000) == 0)
              {
                FieldString = AAHeaderGetFieldString(v26, v28, 0x400uLL, (a1 + 104), 0);
                v30 = FieldString <= 1 ? 1 : FieldString;
                if (v30 >= 1)
                {
                  v31 = strlen((a1 + 104));
                  if (!sub_1000F4A20((a1 + 104), v31))
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 241, 61, 0, "Invalid entry path", v38);
                    goto LABEL_66;
                  }
                }
              }
            }

            v32 = *(a1 + 16);
            if (v32 && *(a1 + 104) && (v32(*(a1 + 24), 60, a1 + 104, 0) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 248, 61, 0, "callback cancel", v38);
              goto LABEL_66;
            }

            if ((sub_1000ED290(a1 + 1152, *(a1 + 88)) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 252, 61, 0, "initializing blob array", v38);
              goto LABEL_66;
            }

            *(a1 + 1168) = 0;
            if (!*(a1 + 56))
            {
              v39[0] = sub_1000ED59C((a1 + 1152));
            }

            if (a2)
            {
              v33 = *a2;
              if (*a2)
              {
                if (AAHeaderAssign(*a2, *(a1 + 88)) < 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 272, 61, 0, "header init", v38);
                  goto LABEL_66;
                }
              }

              else
              {
                v33 = AAHeaderClone(*(a1 + 88));
                if (!v33)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 268, 61, 0, "header init", v38);
                  goto LABEL_66;
                }
              }

              if (*(a1 + 1))
              {
                v34.ikey = 5784649;
                if (AAHeaderGetKeyIndex(v33, v34) < 0)
                {
                  v35.ikey = 5915721;
                  if (AAHeaderGetKeyIndex(v33, v35) < 0)
                  {
                    v36.ikey = 5784649;
                    if (AAHeaderSetFieldUInt(v33, 0xFFFFFFFF, v36, v11) < 0 || (v37.ikey = 5915721, AAHeaderSetFieldUInt(v33, 0xFFFFFFFF, v37, v39[0] + v20) < 0))
                    {
                      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 281, 61, 0, "inserting IDX,IDZ fields", v38);
                      goto LABEL_66;
                    }
                  }
                }
              }

              *a2 = v33;
            }

            ++*(a1 + 1200);
            *(a1 + 1144) = v20 + v11 + v39[0];
            return 1;
          }

          return 0;
        }

        v18 = sub_1000DD61C(a1, v39);
        goto LABEL_39;
      }

      if ((sub_1000DA58C(a1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 185, 61, 0, "refill buffer", v38);
        goto LABEL_66;
      }

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
    }

    if (v9 != v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 179, 61, 0, "invalid state", v38);
LABEL_66:
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DB22C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 1168);
    if (v5 >= *(a1 + 1152))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v9 = *(a1 + 1160) + 24 * v5;
      v10 = *(v9 + 8);
      if (((*v9 ^ a2) & 0xFFFFFFLL) == 0)
      {
        if (v10)
        {
          break;
        }
      }

      if ((sub_1000DA66C(a1, 0, v10) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 307, 61, 0, "reading blob data");
        return 0xFFFFFFFFLL;
      }

      *(v9 + 8) = 0;
      v5 = *(a1 + 1168) + 1;
      *(a1 + 1168) = v5;
      if (v5 >= *(a1 + 1152))
      {
        goto LABEL_7;
      }
    }

    if (v10 < a4)
    {
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 312, 61, 0, "invalid read blob request");
    }

    else if ((sub_1000DA66C(a1, a3, a4) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 315, 61, 0, "read error");
    }

    else
    {
      v12 = *(v9 + 8);
      v13 = v12 - a4;
      *(v9 + 8) = v12 - a4;
      if (v12 == a4)
      {
        ++*(a1 + 1168);
      }

      v14 = *(a1 + 16);
      if (!v14)
      {
        return 0;
      }

      if (!*(a1 + 104))
      {
        return 0;
      }

      if ((*v9 & 0xFFFFFF) != 0x544144)
      {
        return 0;
      }

      v15 = *(v9 + 16) - v13;
      v16[0] = *(v9 + 16);
      v16[1] = v15;
      if ((v14(*(a1 + 24), 60, a1 + 104, v16) & 0x80000000) == 0)
      {
        return 0;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 328, 61, 0, "callback cancel");
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1000DB414(uint64_t a1)
{
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }
}

uint64_t sub_1000DB430(char *a1)
{
  if (a1)
  {
    free(*(a1 + 4));
    free(*(a1 + 8));
    free(*(a1 + 149));
    free(*(a1 + 145));
    memset_s(a1 + 1152, 0x10uLL, 0, 0x10uLL);
    AAHeaderDestroy(*(a1 + 11));
    AAHeaderDestroy(*(a1 + 12));
    if (*a1 >> 62)
    {
      v2 = sub_1000F4248() - *(a1 + 151);
      fwrite("Decode archive\n", 0xFuLL, 1uLL, __stderrp);
      fprintf(__stderrp, "%12llu entries in archive\n", *(a1 + 150));
      fprintf(__stderrp, "%12llu bytes in archive (uncompressed)\n", *(a1 + 142));
      fprintf(__stderrp, "%12.0f MB/s\n", *(a1 + 142) * 0.000000953674316 / v2);
      fprintf(__stderrp, "%12.2f decoding time (s)\n", v2);
    }

    free(a1);
  }

  return 0;
}

uint64_t sub_1000DB560(char *__s, unsigned int *a2)
{
  if (__s)
  {
    memset_s(__s, 0xD0uLL, 0, 0xD0uLL);
  }

  if (!sub_1000FACC8(*a2))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "aeaCryptoInit", 1400, 94, 0, "Invalid profile");
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = *a2;
  *__s = 32;
  *(__s + 9) = sub_1000DB86C;
  *(__s + 1) = 0x2000000020;
  *(__s + 8) = sub_1000DB9C4;
  *(__s + 13) = 32;
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          *(__s + 1) = 80;
          *(__s + 11) = sub_1000DBB60;
          *(__s + 12) = sub_1000DBF28;
          *(__s + 10) = sub_1000DC2E4;
          *(__s + 14) = a2[2];
        }

        goto LABEL_21;
      }

      v4 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = sub_1000DBB60;
    *(__s + 12) = sub_1000DBF28;
    *(__s + 12) = 65;
    *(__s + 13) = sub_1000DC4E4;
    *(__s + 14) = sub_1000DC864;
    *(__s + 2) = 0x4100000061;
    *(__s + 6) = 32;
    v6 = sub_1000DCBAC;
    v7 = 160;
  }

  else
  {
    if (!v5)
    {
      *(__s + 1) = 32;
      *(__s + 11) = sub_1000DBA0C;
      *(__s + 12) = sub_1000DBAC0;
      *(__s + 15) = sub_1000DCD54;
      *(__s + 16) = sub_1000DCDD0;
      *(__s + 17) = sub_1000DD03C;
      *(__s + 28) = xmmword_10037BFD0;
      *(__s + 44) = 0x2000000080;
LABEL_20:
      *(__s + 21) = sub_1000DCBAC;
      goto LABEL_21;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_21;
      }

      v4 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = sub_1000DBB60;
    v6 = sub_1000DBF28;
    v7 = 96;
  }

  *&__s[v7] = v6;
  if (v4 == 1)
  {
    *(__s + 15) = sub_1000DCD54;
    *(__s + 16) = sub_1000DCDD0;
    *(__s + 17) = sub_1000DD03C;
    *(__s + 28) = xmmword_10037BFD0;
    *(__s + 11) = 160;
    *(__s + 18) = sub_1000DBB60;
    *(__s + 19) = sub_1000DBF28;
    goto LABEL_20;
  }

LABEL_21:
  result = 0;
  *(__s + 22) = sub_1000DD2AC;
  *(__s + 23) = sub_1000DD338;
  *(__s + 24) = sub_1000DD364;
  *(__s + 25) = sub_1000DCD54;
  return result;
}

uint64_t sub_1000DB86C(_DWORD *a1, uint64_t a2, _DWORD *a3, unsigned int *a4, unsigned int *a5)
{
  if ((a2 - 257) < 0xFFFFFFFFFFFFFF00 || *a3 == 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 518, 94, 0, "Invalid KDF parameters");
    return 0xFFFFFFFFLL;
  }

  if (CCKDFParametersCreateHkdf())
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 529, 94, 0, "CCKDFParametersCreateHkdf");
  }

  else
  {
    if (!CCDeriveKey())
    {
      v10 = 0;
      goto LABEL_12;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 535, 94, 0, "CCDeriveKey");
  }

  v10 = 1;
LABEL_12:
  *a1 = a2;
  memset_s(a1 + a2 + 4, 256 - a2, 0, 256 - a2);
  if (v10)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return (v10 << 31 >> 31);
}

uint64_t sub_1000DB9C4(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "RNG", 218, 94, 0, "generate random bytes");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000DBA0C(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6)
{
  if (*a4 == 32)
  {
    if ((sub_1000DD3DC(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", 904, 94, 0, "HMAC derivation");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", 901, 94, 0, "AEAD invalid sizes");
  }

  if (a3)
  {
    memset_s(a3, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DBAC0(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6)
{
  if (*a4 == 32 && *a3 == 32)
  {
    if ((sub_1000DD504(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", 924, 94, 0, "HMAC verification");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", 921, 94, 0, "AEAD invalid sizes");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DBB60(char *a1, size_t a2, _DWORD *a3, uint64_t a4, const void *a5, size_t a6)
{
  memset(v26, 0, sizeof(v26));
  memset(v23, 0, sizeof(v23));
  memset(v19, 0, sizeof(v19));
  if (*a4 != 80)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 946, 94, 0, "AEAD invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v21 = *(a4 + 4);
  v22 = *(a4 + 20);
  __s = 32;
  memset_s(v23, 0xE0uLL, 0, 0xE0uLL);
  keyLength_4[0] = *(a4 + 36);
  keyLength_4[1] = *(a4 + 52);
  keyLength = 32;
  memset_s(v26, 0xE0uLL, 0, 0xE0uLL);
  v18 = *(a4 + 68);
  v17 = 16;
  memset_s(v19, 0xF0uLL, 0, 0xF0uLL);
  dataOutMoved = 0;
  cryptorRef = 0;
  v12 = CCCryptorCreateWithMode(0, 4u, 0, 0, &v18, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
  if (!cryptorRef || v12)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 968, 94, 0, "Cryptor creation");
LABEL_17:
    v13 = 1;
    goto LABEL_18;
  }

  if (CCCryptorGetOutputLength(cryptorRef, a2, 1) != a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 971, 94, 0, "AEAD can't operate in-place");
    goto LABEL_17;
  }

  if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 975, 94, 0, "Encryption");
    goto LABEL_17;
  }

  if (CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) || dataOutMoved)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 977, 94, 0, "Encryption");
    goto LABEL_17;
  }

  if ((sub_1000DD3DC(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 980, 94, 0, "HMAC");
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:
  CCCryptorRelease(cryptorRef);
  memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v17, 0x104uLL, 0, 0x104uLL);
  if (a3)
  {
    if (v13)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }
  }

  return (v13 << 31 >> 31);
}

uint64_t sub_1000DBF28(char *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  memset(v26, 0, sizeof(v26));
  memset(v23, 0, sizeof(v23));
  memset(v19, 0, sizeof(v19));
  if (*a4 == 80)
  {
    v21 = *(a4 + 4);
    v22 = *(a4 + 20);
    __s = 32;
    memset_s(v23, 0xE0uLL, 0, 0xE0uLL);
    keyLength_4[0] = *(a4 + 36);
    keyLength_4[1] = *(a4 + 52);
    keyLength = 32;
    memset_s(v26, 0xE0uLL, 0, 0xE0uLL);
    v18 = *(a4 + 68);
    v17 = 16;
    memset_s(v19, 0xF0uLL, 0, 0xF0uLL);
    if ((sub_1000DD504(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1057, 94, 0, "HMAC");
      v13 = 0xFFFFFFFFLL;
LABEL_19:
      memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      memset_s(&v17, 0x104uLL, 0, 0x104uLL);
      return v13;
    }

    dataOutMoved = 0;
    cryptorRef = 0;
    v12 = CCCryptorCreateWithMode(1u, 4u, 0, 0, &v18, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
    if (!cryptorRef || v12)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1074, 94, 0, "Cryptor creation");
    }

    else if (CCCryptorGetOutputLength(cryptorRef, a2, 1) == a2)
    {
      if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1081, 94, 0, "Encryption");
      }

      else
      {
        if (!CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) && !dataOutMoved)
        {
          v13 = 0;
LABEL_18:
          CCCryptorRelease(cryptorRef);
          goto LABEL_19;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1083, 94, 0, "Encryption");
      }
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1077, 94, 0, "AEAD can't operate in-place");
    }

    v13 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1049, 94, 0, "AEAD invalid sizes");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DC2E4(_DWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4, _DWORD *a5)
{
  if (a3 < 0x14 || !*a5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 823, 94, 0, "Invalid password/salt");
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 832, 94, 0, "Invalid hardness parameter");
    return 0xFFFFFFFFLL;
  }

  v6 = ccscrypt_storage_size();
  if ((v6 & 0x8000000000000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 842, 94, 0, "Invalid scrypt parameters");
LABEL_15:
    v9 = 0;
LABEL_16:
    free(v9);
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  if (v6 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    v10 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 844, 94, v10, "malloc");
    goto LABEL_15;
  }

  v8 = malloc(v6);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  if (ccscrypt())
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 846, 94, 0, "scrypt", 32, a1 + 1);
    goto LABEL_16;
  }

  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  free(v9);
  return 0;
}

uint64_t sub_1000DC4E4(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 != 65)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 581, 94, 0, "ECDHE_P256_Sender invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v5 = ccec_cp_256();
  v6 = (32 * *v5) | 0x10;
  v7 = 24 * *v5 + 16;
  if (v6 < 0x2000000001)
  {
    v8 = malloc(v6);
  }

  else
  {
    v8 = 0;
    *__error() = 12;
  }

  if (v7 < 0x2000000001)
  {
    v12 = malloc(v7);
    v9 = v12;
    v10 = v8 == 0;
    v11 = v12 == 0;
    if (v8)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (ccec_x963_import_pub())
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 602, 94, 0, "importing public key", 32);
      }

      else
      {
        ccrng();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 606, 94, 0, "RNG lookup", 32);
      }

      v11 = 0;
LABEL_21:
      memset_s(v8, v6, 0, v6);
      free(v8);
      if (!v11)
      {
        memset_s(v9, v7, 0, v7);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    *__error() = 12;
    v10 = v8 == 0;
    v11 = 1;
  }

  v14 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 599, 94, *v14, "malloc");
  if (!v10)
  {
    goto LABEL_21;
  }

  free(v8);
  if (!v11)
  {
    memset_s(v9, v7, 0, v7);
  }

LABEL_23:
  free(v9);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DC864(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 != 97 || *a2 != 65)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 704, 94, 0, "ECDHE_P256_Recipient invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v4 = ccec_cp_256();
  v5 = 24 * *v4 + 16;
  v6 = (32 * *v4) | 0x10;
  if (v5 < 0x2000000001)
  {
    v7 = malloc(v5);
  }

  else
  {
    v7 = 0;
    *__error() = 12;
  }

  if (v6 < 0x2000000001)
  {
    v12 = malloc(v6);
    v9 = v12;
    v10 = v7 == 0;
    v11 = v12 == 0;
    if (v7)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (ccec_x963_import_priv())
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 725, 94, 0, "importing full key", 32);
      }

      else if (ccec_x963_import_pub())
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 728, 94, 0, "importing pub key", 32);
      }

      else
      {
        ccrng();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 732, 94, 0, "RNG lookup", 32);
      }

      v11 = 0;
LABEL_25:
      memset_s(v7, v5, 0, v5);
      free(v7);
      if (!v11)
      {
        memset_s(v9, v6, 0, v6);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v9 = 0;
    *__error() = 12;
    v10 = v7 == 0;
    v11 = 1;
  }

  v14 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 722, 94, *v14, "malloc");
  if (!v10)
  {
    goto LABEL_25;
  }

  free(v7);
  if (!v11)
  {
    memset_s(v9, v6, 0, v6);
  }

LABEL_27:
  free(v9);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DCBAC(_DWORD *a1, _DWORD *a2)
{
  if (*a2 != 97)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1346, 94, 0, "invalid private key size");
    return 0xFFFFFFFFLL;
  }

  v3 = ccec_cp_256();
  v4 = (32 * *v3) | 0x10;
  if (v4 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_9;
  }

  v5 = malloc((32 * *v3) | 0x10);
  if (!v5)
  {
LABEL_9:
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1356, 94, *v7, "malloc");
    if (a1)
    {
LABEL_10:
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (ccec_x963_import_priv())
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1359, 94, 0, "importing private key");
    memset_s(v6, v4, 0, v4);
    free(v6);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  ccec_x963_export();
  *a1 = 65;
  memset_s(a1 + 69, 0xBFuLL, 0, 0xBFuLL);
  memset_s(v6, v4, 0, v4);
  free(v6);
  return 0;
}

uint64_t sub_1000DCD54(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  return 0;
}

uint64_t sub_1000DCDD0(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 97)
  {
    if (*a3 == 32)
    {
      v4 = (32 * *ccec_cp_256()) | 0x10;
      if (v4 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_11;
      }

      v6 = malloc(v4);
      if (!v6)
      {
LABEL_11:
        v8 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1167, 94, *v8, "malloc");
        if (!a1)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_17;
      }

      v7 = v6;
      if (ccec_x963_import_priv())
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1170, 94, 0, "importing private key");
      }

      else
      {
        if (a1)
        {
          memset_s(a1, 0x104uLL, 0, 0x104uLL);
        }

        ccrng();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1176, 94, 0, "RNG lookup", 128);
      }

      memset_s(v7, v4, 0, v4);
      free(v7);
      if (a1)
      {
LABEL_17:
        memset_s(a1, 0x104uLL, 0, 0x104uLL);
      }
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1155, 94, 0, "invalid digest size");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1154, 94, 0, "invalid private key size");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000DD03C(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 128)
  {
    if (*a2 == 65)
    {
      if (*a3 == 32)
      {
        v4 = 24 * *ccec_cp_256() + 16;
        if (v4 < 0x2000000001)
        {
          v6 = malloc(v4);
          if (v6)
          {
            v7 = v6;
            if (ccec_x963_import_pub())
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1267, 94, 0, "importing public key");
            }

            else
            {
              v9 = *a1;
              if (v9 >= 2 && *(a1 + 4) == 48)
              {
                if (*(a1 + 5) + 2 <= v9)
                {
                  ccec_verify();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1275, 94, 0, "Signature verification");
                }

                else
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1272, 94, 0, "Invalid signature");
                }
              }

              else
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1270, 94, 0, "Invalid signature");
              }
            }

            memset_s(v7, v4, 0, v4);
            goto LABEL_20;
          }
        }

        else
        {
          *__error() = 12;
        }

        v8 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1264, 94, *v8, "malloc");
        v7 = 0;
LABEL_20:
        free(v7);
        return 0xFFFFFFFFLL;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1253, 94, 0, "invalid digest size");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1252, 94, 0, "Invalid public key size");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1251, 94, 0, "Invalid signature size");
  }

  return 0xFFFFFFFFLL;
}

CCHmacContext *sub_1000DD2AC(_DWORD *a1)
{
  if (*a1 != 32)
  {
    return 0;
  }

  v2 = malloc(0x180uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacInit(v2, 2u, a1 + 1, 0x20uLL);
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HMACInit_SHA256", 379, 94, *v4, "malloc");
  }

  return v3;
}

uint64_t sub_1000DD338(CCHmacContext *a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacUpdate(a1, a2, a3);
  return 0;
}

uint64_t sub_1000DD364(CCHmacContext *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacFinal(a1, a2 + 1);
  *a2 = 32;
  memset_s(a2 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(a1, 0x180uLL, 0, 0x180uLL);
  free(a1);
  return 0;
}

uint64_t sub_1000DD3DC(_DWORD *a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (*a2 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v6;
  v17 = v7;
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 2u, a2 + 1, 0x20uLL);
  CCHmacUpdate(&ctx, a5, a6);
  CCHmacUpdate(&ctx, a3, a4);
  data = a6;
  CCHmacUpdate(&ctx, &data, 8uLL);
  CCHmacFinal(&ctx, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t sub_1000DD504(uint64_t a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = *a1 != 32 || *a2 != 32;
  v16 = 0;
  memset(__s, 0, sizeof(__s));
  v8 = sub_1000DD3DC(__s, a2, a3, a4, a5, a6) < 0;
  v13 = *(&__s[1] + 4);
  v14 = *(__s + 4);
  v11 = *(a1 + 20);
  v12 = *(a1 + 4);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v9 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v14, v12), vceqq_s64(v13, v11))));
  v9.i16[0] = vmaxv_u16(v9);
  return ((v9.i32[0] | v8 | v7) << 31 >> 31);
}

uint64_t sub_1000DD61C(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[8];
  v5 = *v4;
  v6 = *(v4 + 4);
  v8 = v5 != 925906736 || v6 != 12592;
  value.tv_sec = 0;
  value.tv_nsec = 0;
  v9 = *a1;
  if (AAHeaderClear(a1[11]) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 67, 113, 0, "clear header");
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v10 = 76;
  }

  else
  {
    v10 = 110;
  }

  if ((sub_1000DA780(a1, v10) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 73, 113, 0, "truncated stream");
    return 0xFFFFFFFFLL;
  }

  v11 = a1[8];
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v13 = *(v11 + 59 + v12++) & 7 | (8 * v13);
    }

    while (v12 != 4);
    for (i = 0; i != 2; ++i)
    {
      v15 = *(v11 + 63 + i) & 7 | (8 * v13);
      v13 = v15;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    do
    {
      v17 = *(v11 + 94 + v16);
      v15 *= 16;
      v18 = v17 - 48;
      if ((v17 - 48) <= 0x36)
      {
        if (((1 << v18) & 0x3FF) != 0)
        {
          v15 = v15 + v17 - 48;
        }

        else if (((1 << v18) & 0x7E0000) != 0)
        {
          v15 = v15 + v17 - 55;
        }

        else if (((1 << v18) & 0x7E000000000000) != 0)
        {
          v15 = v15 + v17 - 87;
        }
      }

      ++v16;
    }

    while (v16 != 8);
  }

  if (v8)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v20 = *(v11 + 65 + v19++) & 7 | (8 * v20);
    }

    while (v19 != 8);
    for (j = 0; j != 3; ++j)
    {
      v22 = *(v11 + 73 + j) & 7 | (8 * v20);
      v20 = v22;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    do
    {
      v24 = *(v11 + 54 + v23);
      v22 *= 16;
      v25 = v24 - 48;
      if ((v24 - 48) <= 0x36)
      {
        if (((1 << v25) & 0x3FF) != 0)
        {
          v22 = v22 + v24 - 48;
        }

        else if (((1 << v25) & 0x7E0000) != 0)
        {
          v22 = v22 + v24 - 55;
        }

        else if (((1 << v25) & 0x7E000000000000) != 0)
        {
          v22 = v22 + v24 - 87;
        }
      }

      ++v23;
    }

    while (v23 != 8);
  }

  if (v8)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v27 = *(v11 + 18 + v26++) & 7 | (8 * v27);
    }

    while (v26 != 4);
    v28 = 0;
    v29 = v11 + 22;
    do
    {
      v30 = *(v29 + v28++) & 7 | (8 * v27);
      v27 = v30;
    }

    while (v28 != 2);
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v32 = v11 + 14;
    do
    {
      v33 = *(v32 + v31);
      v30 *= 16;
      v34 = v33 - 48;
      if ((v33 - 48) <= 0x36)
      {
        if (((1 << v34) & 0x3FF) != 0)
        {
          v30 = v30 + v33 - 48;
        }

        else if (((1 << v34) & 0x7E0000) != 0)
        {
          v30 = v30 + v33 - 55;
        }

        else if (((1 << v34) & 0x7E000000000000) != 0)
        {
          v30 = v30 + v33 - 87;
        }
      }

      ++v31;
    }

    while (v31 != 8);
  }

  v35 = sub_10010AB90(v30);
  if (v15 >= 0x10000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 82, 113, 0, "invalid c_namesize");
    return 0xFFFFFFFFLL;
  }

  v36 = v35;
  if (v8)
  {
    v37 = v15 + v10;
  }

  else
  {
    v37 = (v15 + v10 + 3) & 0x3FFFC;
  }

  v38 = v37;
  if (v35 == 76)
  {
    if (v22 >= 0x10000)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 89, 113, 0, "invalid c_filesize");
      return 0xFFFFFFFFLL;
    }

    if (v8)
    {
      v38 = v22 + v37;
    }

    else
    {
      v38 = (v22 + v37 + 3) & 0xFFFFC;
    }
  }

  if ((sub_1000DA780(a1, v38) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 95, 113, 0, "truncated stream");
    return 0xFFFFFFFFLL;
  }

  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v22 == 0;
  }

  if (v39 && v15 == 11)
  {
    v49 = (a1[8] + v10);
    v50 = *v49;
    v51 = *(v49 + 3);
    if (v50 == 0x2152454C49415254 && v51 == 0x21212152454C49)
    {
      return 1;
    }

LABEL_95:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 101, 113, 0, "invalid cpio header");
    return 0xFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_95;
  }

  v110 = a1[8];
  v41.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v41, v36) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 106, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v42.ikey = 5521744;
  if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v42, (a1[8] + v10), v15) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 109, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v36 == 76)
  {
    v43.ikey = 4935244;
    if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v43, (a1[8] + v37), v22) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 114, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  v44.ikey = 4476749;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v44, v30 & 0xFFF) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 118, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v46 = *(v110 + 24 + v45++) & 7 | (8 * v46);
    }

    while (v45 != 4);
    for (k = 0; k != 2; ++k)
    {
      v48 = *(v110 + 28 + k) & 7 | (8 * v46);
      v46 = v48;
    }
  }

  else
  {
    v54 = 0;
    v48 = 0;
    do
    {
      v55 = *(v110 + 22 + v54);
      v48 *= 16;
      v56 = v55 - 48;
      if ((v55 - 48) <= 0x36)
      {
        if (((1 << v56) & 0x3FF) != 0)
        {
          v48 = v48 + v55 - 48;
        }

        else if (((1 << v56) & 0x7E0000) != 0)
        {
          v48 = v48 + v55 - 55;
        }

        else if (((1 << v56) & 0x7E000000000000) != 0)
        {
          v48 = v48 + v55 - 87;
        }
      }

      ++v54;
    }

    while (v54 != 8);
  }

  v57.ikey = 4475221;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v57, v48) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 122, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v58 = v110 + 30;
  if (v8)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      v60 = *(v58 + v59++) & 7 | (8 * v60);
    }

    while (v59 != 4);
    for (m = 0; m != 2; ++m)
    {
      v62 = *(v110 + 34 + m) & 7 | (8 * v60);
      v60 = v62;
    }
  }

  else
  {
    v63 = 0;
    v62 = 0;
    do
    {
      v64 = *(v58 + v63);
      v62 *= 16;
      v65 = v64 - 48;
      if ((v64 - 48) <= 0x36)
      {
        if (((1 << v65) & 0x3FF) != 0)
        {
          v62 = v62 + v64 - 48;
        }

        else if (((1 << v65) & 0x7E0000) != 0)
        {
          v62 = v62 + v64 - 55;
        }

        else if (((1 << v65) & 0x7E000000000000) != 0)
        {
          v62 = v62 + v64 - 87;
        }
      }

      ++v63;
    }

    while (v63 != 8);
  }

  v66.ikey = 4475207;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v66, v62) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 126, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v68 = *(v110 + 48 + v67++) & 7 | (8 * v68);
    }

    while (v67 != 8);
    for (n = 0; n != 3; ++n)
    {
      v70 = *(v110 + 56 + n) & 7 | (8 * v68);
      v68 = v70;
    }
  }

  else
  {
    v71 = 0;
    v70 = 0;
    do
    {
      v72 = *(v110 + 46 + v71);
      v70 *= 16;
      v73 = v72 - 48;
      if ((v72 - 48) <= 0x36)
      {
        if (((1 << v73) & 0x3FF) != 0)
        {
          v70 = v70 + v72 - 48;
        }

        else if (((1 << v73) & 0x7E0000) != 0)
        {
          v70 = v70 + v72 - 55;
        }

        else if (((1 << v73) & 0x7E000000000000) != 0)
        {
          v70 = v70 + v72 - 87;
        }
      }

      ++v71;
    }

    while (v71 != 8);
  }

  value.tv_sec = v70;
  value.tv_nsec = 0;
  v74.ikey = 5067853;
  if (AAHeaderSetFieldTimespec(a1[11], 0xFFFFFFFF, v74, &value) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 131, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v75 = 0;
    v76 = 0;
    v77 = v110;
    do
    {
      v76 = *(v110 + 12 + v75++) & 7 | (8 * v76);
    }

    while (v75 != 4);
    for (ii = 0; ii != 2; ++ii)
    {
      v79 = *(v110 + 16 + ii) & 7 | (8 * v76);
      v76 = v79;
    }
  }

  else
  {
    v80 = 0;
    v79 = 0;
    v77 = v110;
    do
    {
      v81 = *(v110 + 6 + v80);
      v79 *= 16;
      v82 = v81 - 48;
      if ((v81 - 48) <= 0x36)
      {
        if (((1 << v82) & 0x3FF) != 0)
        {
          v79 = v79 + v81 - 48;
        }

        else if (((1 << v82) & 0x7E0000) != 0)
        {
          v79 = v79 + v81 - 55;
        }

        else if (((1 << v82) & 0x7E000000000000) != 0)
        {
          v79 = v79 + v81 - 87;
        }
      }

      ++v80;
    }

    while (v80 != 8);
  }

  if (v8)
  {
    v83 = 0;
    v84 = 0;
    do
    {
      v84 = *(v77 + 6 + v83++) & 7 | (8 * v84);
    }

    while (v83 != 4);
    for (jj = 0; jj != 2; ++jj)
    {
      v86 = *(v77 + 10 + jj) & 7 | (8 * v84);
      v84 = v86;
    }

    v79 |= v86 << 18;
    v87.ikey = 5197385;
    if ((AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v87, v79) & 0x80000000) == 0)
    {
      v88 = 0;
      v89 = 0;
      do
      {
        v89 = *(v110 + 36 + v88++) & 7 | (8 * v89);
      }

      while (v88 != 4);
      for (kk = 0; kk != 2; ++kk)
      {
        v89 = *(v110 + 40 + kk) & 7 | (8 * v89);
      }

      goto LABEL_183;
    }

LABEL_193:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 145, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v91.ikey = 5197385;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v91, v79) < 0)
  {
    goto LABEL_193;
  }

  v92 = 0;
  v89 = 0;
  do
  {
    v93 = *(v110 + 38 + v92);
    v89 *= 16;
    v94 = v93 - 48;
    if ((v93 - 48) <= 0x36)
    {
      if (((1 << v94) & 0x3FF) != 0)
      {
        v89 = v89 + v93 - 48;
      }

      else if (((1 << v94) & 0x7E0000) != 0)
      {
        v89 = v89 + v93 - 55;
      }

      else if (((1 << v94) & 0x7E000000000000) != 0)
      {
        v89 = v89 + v93 - 87;
      }
    }

    ++v92;
  }

  while (v92 != 8);
LABEL_183:
  v95.ikey = 4934734;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v95, v89) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 149, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((v9 & 0x8000000000000) != 0 || v89 < 2 || v36 != 70)
  {
    v98 = 0;
    if (v8 || (v36 & 0xFFFFFFFE) != 0x42)
    {
      goto LABEL_217;
    }

    v99 = 0;
    v100 = 0;
    do
    {
      v101 = *(v110 + 78 + v99);
      v100 *= 16;
      v102 = v101 - 48;
      if ((v101 - 48) <= 0x36)
      {
        if (((1 << v102) & 0x3FF) != 0)
        {
          v100 = v100 + v101 - 48;
        }

        else if (((1 << v102) & 0x7E0000) != 0)
        {
          v100 = v100 + v101 - 55;
        }

        else if (((1 << v102) & 0x7E000000000000) != 0)
        {
          v100 = v100 + v101 - 87;
        }
      }

      ++v99;
    }

    while (v99 != 8);
    v103 = 0;
    v104 = 0;
    do
    {
      v105 = *(v110 + 86 + v103);
      v104 *= 16;
      v106 = v105 - 48;
      if ((v105 - 48) <= 0x36)
      {
        if (((1 << v106) & 0x3FF) != 0)
        {
          v104 = v104 + v105 - 48;
        }

        else if (((1 << v106) & 0x7E0000) != 0)
        {
          v104 = v104 + v105 - 55;
        }

        else if (((1 << v106) & 0x7E000000000000) != 0)
        {
          v104 = v104 + v105 - 87;
        }
      }

      ++v103;
    }

    while (v103 != 8);
    v107.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v107, v104 + (v100 << 24)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 173, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }

LABEL_216:
    v98 = 0;
    goto LABEL_217;
  }

  v111 = 0;
  v96 = sub_1000DA8F8(a1, v79, v89, &v111);
  if (v96 == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 156, 113, 0, "too many hard links or inconsistent nlink/ino data in archive", v110);
    return 0xFFFFFFFFLL;
  }

  v97.ikey = 4410440;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v97, v96) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 157, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    goto LABEL_216;
  }

  v98 = v111 == 0;
  if (!v111 && v22)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 162, 113, 0, "invalid newc encoding for hard links", v110);
    return 0xFFFFFFFFLL;
  }

LABEL_217:
  if (v36 != 70 || v98)
  {
    if (v36 != 70)
    {
      result = 0;
      *a2 = 0;
      return result;
    }
  }

  else
  {
    v108.ikey = 5521732;
    if (AAHeaderSetFieldBlob(a1[11], 0xFFFFFFFF, v108, v22) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 179, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  v109 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v8)
  {
    v109 = v22;
  }

  *a2 = v109;
  return result;
}

uint64_t sub_1000DE384(void *a1, char *a2, const char *a3)
{
  v42[0] = 0;
  v42[1] = 0;
  v6 = malloc(0x40000uLL);
  if (!v6)
  {
    v24 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 43, 124, v24, "malloc");
LABEL_28:
    v25 = 0;
    v8 = -1;
LABEL_29:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((sub_1000F4680(v43, 0x800uLL, a2, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 46, 124, 0, "invalid path %s/%s");
    goto LABEL_28;
  }

  v7 = open(v43, 0x200000);
  v8 = v7;
  if (v7 < 0)
  {
    v28 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 50, 124, *v28, "open: %s", v43);
    v25 = 0;
    goto LABEL_29;
  }

  v9 = read(v7, v6, 0x40000uLL);
  if (v9 < 0)
  {
    v13 = 0;
LABEL_35:
    v25 = v13;
    v29 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 56, 124, *v29, "read: %s", v43);
    goto LABEL_29;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v41 = v6;
  v40 = v8;
  while (2)
  {
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v17 = v6[i];
        v14 = v17 + 0x202000202008008DLL * v14 + 0x516929CF586FB3BFLL * *(v42 + v15);
        *(v42 + v15) = v17;
        if (v15 == 15)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        if (v14 >> 52)
        {
          v18 = 1;
        }

        else
        {
          v18 = v14 == 0;
        }

        if (!v18)
        {
          if (v12 >= v11)
          {
            if (v11)
            {
              v11 *= 2;
            }

            else
            {
              v11 = 256;
            }

            if (4 * v11 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_38:
              v30 = __error();
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 79, 124, *v30, "malloc");
              v25 = 0;
              v26 = 0xFFFFFFFFLL;
              v8 = v40;
              goto LABEL_30;
            }

            v19 = v13;
            v20 = realloc(v13, 4 * v11);
            if (!v20)
            {
              free(v19);
              v6 = v41;
              goto LABEL_38;
            }

            v13 = v20;
            v6 = v41;
          }

          *(v13 + v12++) = v14;
        }
      }

      v8 = v40;
      v21 = v6;
      v22 = v13;
      v23 = read(v40, v21, 0x40000uLL);
      v13 = v22;
      v6 = v41;
      v10 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v31 = v13;
  qsort(v13, v12, 4uLL, sub_1000DE848);
  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v25 = v31;
    do
    {
      v34 = *(v31 + v32);
      if (!v33 || v34 != *(v31 + v33 - 1))
      {
        *(v31 + v33++) = v34;
      }

      ++v32;
    }

    while (v12 != v32);
    v12 = 4 * v33;
    *a1 = 0;
    if (4 * v33 < 0)
    {
LABEL_66:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 98, 124, 0, "malloc");
      v26 = 0xFFFFFFFFLL;
      goto LABEL_67;
    }

    v35 = a1[1];
    if (v35 < v12)
    {
      do
      {
        while (!v35)
        {
          v35 = 0x4000;
          if (v12 <= 0x4000)
          {
            v35 = 0x4000;
            goto LABEL_62;
          }
        }

        v36 = v35 >> 1;
        if ((v35 & (v35 >> 1)) != 0)
        {
          v36 = v35 & (v35 >> 1);
        }

        v35 += v36;
      }

      while (v35 < v12);
      if (v35 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_65;
      }

LABEL_62:
      v38 = a1[2];
      v39 = realloc(v38, v35);
      if (v39)
      {
        a1[1] = v35;
        a1[2] = v39;
        goto LABEL_55;
      }

      free(v38);
LABEL_65:
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v25 = v31;
      goto LABEL_66;
    }
  }

  else
  {
    *a1 = 0;
LABEL_55:
    v25 = v31;
    if (!v31)
    {
      v37 = a1[2];
      if (v37)
      {
        memset_s((v37 + *a1), v12, 0, v12);
      }

      goto LABEL_57;
    }
  }

  memcpy((a1[2] + *a1), v25, v12);
LABEL_57:
  v26 = 0;
  *a1 += v12;
  v25 = v31;
LABEL_67:
  v6 = v41;
LABEL_30:
  free(v6);
  free(v25);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  return v26;
}

uint64_t sub_1000DE848(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

ssize_t AAArchiveStreamProcess(AAArchiveStream istream, AAArchiveStream ostream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v32 = 0;
  header = 0;
  __s = 0;
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v29 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", 24, 16, v29, "malloc");
LABEL_32:
    v12 = -1;
    goto LABEL_33;
  }

  v11 = AAArchiveStreamReadHeader(istream, &header);
  if (v11 < 0)
  {
LABEL_27:
    AAArchiveStreamCancel(ostream);
    v27 = "archive stream read error (header)";
    v28 = 32;
LABEL_31:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", v28, 16, 0, v27);
    goto LABEL_32;
  }

  v12 = 0;
  while (v11)
  {
    if (!msg_proc)
    {
      goto LABEL_39;
    }

    v13 = header;
    v14.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v14);
    if ((KeyIndex & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    FieldString = AAHeaderGetFieldString(v13, KeyIndex, 0x400uLL, value, 0);
    v17 = FieldString <= 1 ? 1 : FieldString;
    if (v17 < 1)
    {
      goto LABEL_39;
    }

    v18 = (msg_proc)(msg_data, 50, value, header);
    if (v18 < 0)
    {
      v27 = "callback cancel";
      v28 = 45;
      goto LABEL_31;
    }

    if (!v18)
    {
LABEL_39:
      if ((sub_1000ED290(&__s, header) & 0x80000000) != 0)
      {
        v27 = "capturing non-empty blobs";
        v28 = 55;
        goto LABEL_31;
      }

      if (AAArchiveStreamWriteHeader(ostream, header) < 0)
      {
        AAArchiveStreamCancel(istream);
        v27 = "archive stream write error (header)";
        v28 = 61;
        goto LABEL_31;
      }

      ++v12;
      v19 = __s;
      if (__s)
      {
        v20 = 0;
        while (1)
        {
          v21 = v32 + 24 * v20;
          v22 = *(v21 + 1);
          if (v22)
          {
            break;
          }

LABEL_25:
          if (++v20 >= v19)
          {
            goto LABEL_26;
          }
        }

        while (1)
        {
          if (v22 >= 0x40000)
          {
            v23 = 0x40000;
          }

          else
          {
            v23 = v22;
          }

          v24 = *v21;
          if (AAArchiveStreamReadBlob(istream, v24, v10, v23) < 0)
          {
            AAArchiveStreamCancel(ostream);
            v27 = "archive stream read error (blob)";
            v28 = 75;
            goto LABEL_31;
          }

          v25 = *v21;
          if (AAArchiveStreamWriteBlob(ostream, v25, v10, v23) < 0)
          {
            break;
          }

          v26 = *(v21 + 1);
          v22 = v26 - v23;
          *(v21 + 1) = v26 - v23;
          if (v26 == v23)
          {
            v19 = __s;
            goto LABEL_25;
          }
        }

        AAArchiveStreamCancel(istream);
        v27 = "archive stream write error (blob)";
        v28 = 80;
        goto LABEL_31;
      }
    }

LABEL_26:
    v11 = AAArchiveStreamReadHeader(istream, &header);
    if (v11 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  AAHeaderDestroy(header);
  free(v32);
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  free(v10);
  return v12;
}

void *sub_1000DEB6C(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a1;
  if (a1 && a2)
  {
    v7 = a5;
    v10 = malloc(0x10uLL);
    v11 = v10;
    if (v10)
    {
      memset_s(v10, 0x10uLL, 0, 0x10uLL);
      *v11 = v5;
      v12 = AAChunkAsyncStreamOpen(v5, a2, a3, a4 | 0x200000000000000, v7);
      *(v11 + 8) = v12;
      if (v12)
      {
        v13 = sub_10010D7B4(v11, sub_1000DED00, ~(a4 >> 55) & 4, 20.0, 1.0);
        if (v13)
        {
          v5 = v13;
          v13[2] = sub_1000DED4C;
          v13[3] = sub_1000DED54;
          v13[4] = sub_1000DED5C;
          v13[5] = sub_1000DED64;
          return v5;
        }

        v15 = "async stream alloc";
        v16 = 89;
      }

      else
      {
        v15 = "AAChunkAsyncStreamOpen";
        v16 = 86;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", v16, 145, 0, v15);
    }

    else
    {
      v14 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", 78, 145, v14, "malloc");
    }

    sub_1000DED00(v11);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  return v5;
}

uint64_t (***sub_1000DED00(uint64_t (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    v2 = AAAsyncByteStreamClose(result[1]);
    v3 = AAAsyncByteStreamClose(*v1) | v2;
    free(v1);
    return (v3 >> 31);
  }

  return result;
}

void *sub_1000DED6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000F4290();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 266, 20, v14, "malloc");
LABEL_30:
    free(v3);
    sub_1000DF870(v5);
    return 0;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 273, 20, 0, "allocating buffer");
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (sub_1000DF628(v5, 0xCuLL) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 276, 20, 0, "reading magic");
    goto LABEL_30;
  }

  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = sub_1000DF870;
  v3[2] = sub_1000DF920;
  v3[7] = sub_1000E0078;
  return v3;
}

uint64_t sub_1000DF628(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

uint64_t sub_1000DF794(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DF870(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    sub_10010F8CC(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

uint64_t sub_1000DF920(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v5 = nbyte;
  v8 = *(a1 + 72);
  if (v8)
  {

    return sub_10010F9BC(v8, a2, nbyte);
  }

  v9 = *(a1 + 56);
  if (v9 == -1)
  {
    return -1;
  }

  if (!v9)
  {

    return sub_1000DF794(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (v5 >= v12)
      {
        v3 = *(a1 + 32);
      }

      else
      {
        v3 = v5;
      }

      memcpy((a2 + v11), *(a1 + 48), v3);
      if ((v3 & 0x8000000000000000) != 0)
      {
        return v3;
      }

      v13 = *(a1 + 32);
      v14 = v13 - v3;
      if (v13 >= v3)
      {
        if (v13 != v3)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v3), v13 - v3);
        }

        *(a1 + 32) = v14;
      }

      v11 += v3;
      v5 -= v3;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v11;
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 == v16)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v17 = v15 - v16;
    if (v15 == v16)
    {
      goto LABEL_55;
    }

    v3 = 0;
    v18 = *a1;
    do
    {
      if (v16 == v15)
      {
        v19 = v15 + 0x40000;
        if ((v15 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v15 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v15)
            {
              v15 = 0x4000;
              v21 = 0x4000;
              if (v19 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v20 = v15 >> 1;
            if ((v15 & (v15 >> 1)) != 0)
            {
              v20 = v15 & (v15 >> 1);
            }

            v15 += v20;
          }

          while (v15 < v19);
          v21 = v15;
          if (v15 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_163;
          }

LABEL_43:
          v22 = *(a1 + 24);
          v23 = realloc(v22, v21);
          if (v23)
          {
            *(a1 + 16) = v21;
            *(a1 + 24) = v23;
            v16 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v22);
LABEL_163:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v3 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v16 = v15;
      }

      v21 = v15;
LABEL_45:
      if (v21 - v16 >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v21 - v16;
      }

      v25 = AAByteStreamRead(v18, (*(a1 + 24) + v16), v24);
      if (v25 < 0)
      {
        goto LABEL_151;
      }

      if (!v25)
      {
        break;
      }

      v26 = *(a1 + 8);
      v16 = v26 + v25;
      if (__CFADD__(v26, v25) || (v15 = *(a1 + 16), v16 > v15))
      {
LABEL_151:
        v3 = -1;
LABEL_152:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 144, 20, 0, "stream read failed");
        return v3;
      }

      *(a1 + 8) = v16;
      v3 += v25;
      v17 -= v25;
    }

    while (v17);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v3)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v16 = *(a1 + 8);
LABEL_57:
    v28 = *(a1 + 24);
    v27 = *(a1 + 32);
    v29 = *(a1 + 40) - v27;
    v30 = (*(a1 + 48) + v27);
    v31 = *(a1 + 56);
    v3 = -1;
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        *(a1 + 176) = v28;
        *(a1 + 184) = v16;
        *(a1 + 200) = v30;
        *(a1 + 208) = v29;
        v62 = lzma_code();
        v63 = v62;
        if (v62 <= 0xA && ((1 << v62) & 0x403) != 0)
        {
          v64 = v10;
          v65 = *(a1 + 176);
          v66 = *(a1 + 200);
          v67 = v65 - v28;
          if (v65 != v28)
          {
            v68 = *(a1 + 8);
            v39 = v68 >= v67;
            v69 = v68 - v67;
            if (v39)
            {
              if (v69)
              {
                v80 = v69;
                memmove(*(a1 + 24), (*(a1 + 24) + v67), v69);
                v69 = v80;
              }

              *(a1 + 8) = v69;
            }
          }

          if (v66 != v30)
          {
            v70 = *(a1 + 32);
            v71 = v70 + v66 - v30;
            if (!__CFADD__(v70, v66 - v30) && v71 <= *(a1 + 40))
            {
              *(a1 + 32) = v71;
            }
          }

          if (v66 == v30 && v65 == v28)
          {
            v10 = v64 + 1;
          }

          else
          {
            v10 = 0;
          }

          if (v63 == 1)
          {
            goto LABEL_131;
          }
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload");
        }

        v3 = -1;
        if (v63 <= 0xA && ((1 << v63) & 0x403) != 0)
        {
          goto LABEL_147;
        }

        return v3;
      }

      if (v31 != 4)
      {
        return v3;
      }

      *(a1 + 96) = v28;
      *(a1 + 104) = v16;
      *(a1 + 120) = v30;
      *(a1 + 128) = v29;
      v44 = BZ2_bzDecompress((a1 + 96));
      if (v44 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 178, 20, 0, "decoding bzip2 payload");
        return v3;
      }

      v45 = v44;
      v46 = v10;
      v47 = *(a1 + 96);
      v48 = *(a1 + 120);
      v49 = v47 - v28;
      if (v47 != v28)
      {
        v50 = *(a1 + 8);
        v39 = v50 >= v49;
        v51 = v50 - v49;
        if (v39)
        {
          if (v51)
          {
            v78 = v51;
            memmove(*(a1 + 24), (*(a1 + 24) + v49), v51);
            v51 = v78;
          }

          *(a1 + 8) = v51;
        }
      }

      if (v48 != v30)
      {
        v52 = *(a1 + 32);
        v53 = v52 + v48 - v30;
        if (!__CFADD__(v52, v48 - v30) && v53 <= *(a1 + 40))
        {
          *(a1 + 32) = v53;
        }
      }

      if (v48 == v30 && v47 == v28)
      {
        v10 = v46 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v45 == 4)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    if (v31 != 1)
    {
      break;
    }

    if (!v16)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_156:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 208, 20, 0, "truncated stream header");
      return v3;
    }

    if (v16 <= 0xF)
    {
      goto LABEL_156;
    }

    v55 = v28[1];
    v56 = bswap64(*v28);
    v57 = bswap64(v55);
    v58 = *(a1 + 80);
    if (v56 > v58 || v57 > v58)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 217, 20, 0, "corrupted stream header");
      return -1;
    }

    v79 = v10;
    v60 = v57 + 16;
    if (v57 + 16 > v16)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 218, 20, 0, "truncated stream payload");
      return -1;
    }

    if (v56 > v29)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 219, 20, 0, "unexpected output buffer size");
      return -1;
    }

    v61 = *v28;
    if (*v28 == v55)
    {
      memcpy(v30, v28 + 2, v56);
    }

    else if ((*(a1 + 88))(v30, v29, v28 + 2) != v56)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 229, 20, 0, "block decompression failed");
      return -1;
    }

    if (v60)
    {
      v73 = *(a1 + 8);
      v74 = v73 - v60;
      if (v73 >= v60)
      {
        if (v73 != v60)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v60), v73 - v60);
        }

        *(a1 + 8) = v74;
      }
    }

    if (v61)
    {
      v75 = *(a1 + 32);
      v39 = __CFADD__(v75, v56);
      v76 = v75 + v56;
      v10 = v79;
      if (!v39 && v76 <= *(a1 + 40))
      {
        *(a1 + 32) = v76;
      }
    }

    else
    {
      v10 = v79;
    }

LABEL_147:
    if (v10 >= 3)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 240, 20, 0, "truncated stream");
      return -1;
    }

LABEL_148:
    v3 = v11;
    if (!v5)
    {
      return v3;
    }
  }

  if (v31 == 2)
  {
    *(a1 + 328) = v28;
    *(a1 + 336) = v16;
    *(a1 + 312) = v30;
    *(a1 + 320) = v29;
    v32 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v32 & 0x80000000) == 0)
    {
      v33 = v32;
      v34 = v10;
      v35 = *(a1 + 336);
      v36 = *(a1 + 320);
      v37 = v16 - v35;
      if (v16 != v35)
      {
        v38 = *(a1 + 8);
        v39 = v38 >= v37;
        v40 = v38 - v37;
        if (v39)
        {
          if (v40)
          {
            v77 = v40;
            memmove(*(a1 + 24), (*(a1 + 24) + v37), v40);
            v40 = v77;
          }

          *(a1 + 8) = v40;
        }
      }

      if (v29 != v36)
      {
        v41 = *(a1 + 32);
        v42 = v41 + v29 - v36;
        if (!__CFADD__(v41, v29 - v36) && v42 <= *(a1 + 40))
        {
          *(a1 + 32) = v42;
        }
      }

      if (v29 == v36 && v16 == v35)
      {
        v10 = v34 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v33 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 162, 20, 0, "decoding compression payload");
  }

  return v3;
}

uint64_t sub_1000E0078(uint64_t a1)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return sub_10010F9D0(result);
  }

  return result;
}

AAByteStream AEADecryptionRandomAccessInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  v5 = n_threads;
  if (n_threads <= 0)
  {
    v5 = sub_1000F4290();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 90, 32, 0, "Invalid context");
    v10 = 0;
    goto LABEL_28;
  }

  v9 = malloc(0x38uLL);
  v10 = v9;
  if (!v9)
  {
    v27 = *__error();
    v28 = 94;
    goto LABEL_27;
  }

  memset_s(v9, 0x38uLL, 0, 0x38uLL);
  *v10 = encrypted_stream;
  *(v10 + 8) = flags;
  if ((flags & 0x400000000000000) != 0)
  {
    *(context + 685) = 1;
  }

  v11 = sub_1000F01DC(context, encrypted_stream, 1, 0);
  *(v10 + 16) = v11;
  if (!v11)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 106, 32, 0, "unlock container");
    goto LABEL_28;
  }

  *(v10 + 24) = v5;
  v12 = calloc(v5, 0x10uLL);
  *(v10 + 32) = v12;
  if (!v12)
  {
    v27 = *__error();
    v28 = 111;
    goto LABEL_27;
  }

  v13 = *(v10 + 16);
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = sub_1000FB3BC(v14);
    *(v10 + 40) = compression_decode_scratch_buffer_size(v15);
    v13 = *(v10 + 16);
  }

  v16 = *(v10 + 24);
  if (!v16)
  {
LABEL_19:
    *context = *v13;
    v23 = *(v13 + 16);
    v24 = *(v13 + 32);
    v25 = *(v13 + 48);
    *(context + 8) = *(v13 + 64);
    *(context + 2) = v24;
    *(context + 3) = v25;
    *(context + 1) = v23;
    return sub_1000F8834(*(v13 + 32), *(v13 + 16), v16, 4 * v16, v10, sub_1000E0470, sub_1000E04FC, sub_1000E0364, flags);
  }

  v17 = *(v10 + 32);
  v18 = *(v13 + 16);
  v19 = *(v10 + 24);
  while (1)
  {
    v20 = malloc(v18);
    v17[1] = v20;
    if (!v20)
    {
      v27 = *__error();
      v28 = 120;
      goto LABEL_27;
    }

    v21 = *(v10 + 40);
    if (!v21)
    {
      goto LABEL_18;
    }

    if (v21 >= 0x2000000001)
    {
      break;
    }

    v22 = malloc(v21);
    *v17 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_18:
    v17 += 2;
    if (!--v19)
    {
      goto LABEL_19;
    }
  }

  *__error() = 12;
  *v17 = 0;
LABEL_26:
  v27 = *__error();
  v28 = 124;
LABEL_27:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", v28, 32, v27, "malloc");
LABEL_28:
  sub_1000E0364(v10);
  return 0;
}

uint64_t sub_1000E0364(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
LABEL_15:
      sub_1000EFE90(*(a1 + 16));
      memset_s(a1, 0x38uLL, 0, 0x38uLL);
      free(a1);
      return 0;
    }

    if (*(a1 + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + v3 + 8);
        if (v6)
        {
          v7 = *(*(a1 + 16) + 16);
          memset_s(*(v5 + v3 + 8), v7, 0, v7);
        }

        free(v6);
        v8 = *(v5 + v3);
        if (v8)
        {
          memset_s(*(v5 + v3), *(a1 + 40), 0, *(a1 + 40));
        }

        free(v8);
        ++v4;
        v9 = *(a1 + 24);
        v3 += 16;
      }

      while (v4 < v9);
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_14;
      }

      v10 = 16 * v9;
    }

    else
    {
      v10 = 0;
    }

    memset_s(v2, v10, 0, v10);
LABEL_14:
    free(v2);
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1000E0470(uint64_t a1, unsigned int a2, unint64_t a3, uint8_t *a4)
{
  if (*(a1 + 24) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 16) + 400) > a3)
  {
    v6 = *(a1 + 32) + 16 * a2;
    if ((sub_1000F2144(*(a1 + 16), *a1, a3, a4, *(v6 + 8), *v6) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "RandomAccessDecryptionStreamGetBlock", 71, 32, 0, "Loading segment", v4, v5);
  }

  return 0xFFFFFFFFLL;
}

void sub_1000E04FC(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAByteStreamCancel(*a1);
  }
}

uint64_t sub_1000E0518(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((sub_1000E05D0(a1, v8) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t sub_1000E05D0(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1000E0670(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

AAByteStream_impl *AAAFSCStreamOpen(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_1000E0730(a1, a2, a3, a4);
  if (!v5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", 1041, 55, 0, "alloc stream");
    goto LABEL_5;
  }

  if ((sub_1000E0BAC(v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", 1043, 55, 0, "clearing file");
LABEL_5:
    AAByteStreamClose(v5);
    return 0;
  }

  return v5;
}

void *sub_1000E0730(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a2 || a2 >= 4194304001)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 959, 55, 0, "invalid uncompressed size");
LABEL_11:
    v9 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (a3 >= 0xF || ((0x7F99u >> a3) & 1) == 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 981, 55, 0, "invalid compression type: %d");
    goto LABEL_11;
  }

  v8 = dword_10037C054[a3];
  v9 = calloc(1uLL, 0x68uLL);
  v10 = malloc(0x80uLL);
  v11 = v10;
  if (!v10 || (memset_s(v10, 0x80uLL, 0, 0x80uLL), !v9))
  {
    v14 = *__error();
    v15 = 988;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v15, 55, v14, "malloc");
    goto LABEL_12;
  }

  *v11 = a1;
  v11[1] = a4;
  v11[2] = a2;
  *(v11 + 8) = v8;
  if ((a2 + 0xFFFF) >> 48)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    v12 = 0;
    *(v11 + 11) = -1;
  }

  else
  {
    v16 = (a2 + 0xFFFF) >> 16;
    *(v11 + 11) = v16;
    v12 = v16 + 1;
  }

  v17 = calloc(v12, 4uLL);
  v11[6] = v17;
  if (!v17)
  {
    v14 = *__error();
    v15 = 997;
    goto LABEL_15;
  }

  if (v8 > 10)
  {
    if ((v8 - 11) < 2)
    {
      v18 = COMPRESSION_LZFSE;
      goto LABEL_32;
    }

    if ((v8 - 13) < 2)
    {
      v18 = COMPRESSION_LZBITMAP;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if ((v8 - 7) < 2)
  {
    v18 = 2304;
    goto LABEL_32;
  }

  if (v8 != 4)
  {
    if (v8 == 10)
    {
      goto LABEL_36;
    }

LABEL_30:
    v18 = -1;
    goto LABEL_32;
  }

  v18 = 1285;
LABEL_32:
  v19 = compression_encode_scratch_buffer_size(v18);
  if (v19)
  {
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      v11[7] = 0;
LABEL_58:
      v14 = *__error();
      v15 = 1002;
      goto LABEL_15;
    }

    v20 = malloc(v19);
    v11[7] = v20;
    if (!v20)
    {
      goto LABEL_58;
    }
  }

LABEL_36:
  v21 = v11[9];
  if (!(v21 >> 16))
  {
    v22 = v11 + 8;
    do
    {
      v23 = (v21 >> 1) + v21;
      if (((v21 >> 1) & v21) != 0)
      {
        v23 = ((v21 >> 1) & v21) + v21;
      }

      if (v21)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0x4000;
      }
    }

    while (v21 < 0x10000);
    v24 = v11[10];
    v25 = realloc(v24, v21);
    if (!v25)
    {
      goto LABEL_59;
    }

    v11[9] = v21;
    v11[10] = v25;
  }

  v26 = v11[12];
  if (v26 < 0x80008)
  {
    v22 = v11 + 11;
    do
    {
      v27 = (v26 >> 1) + v26;
      if (((v26 >> 1) & v26) != 0)
      {
        v27 = ((v26 >> 1) & v26) + v26;
      }

      if (v26)
      {
        v26 = v27;
      }

      else
      {
        v26 = 0x4000;
      }
    }

    while (v26 < 0x80008);
    v24 = v11[13];
    v28 = realloc(v24, v26);
    if (v28)
    {
      v11[12] = v26;
      v11[13] = v28;
      goto LABEL_56;
    }

LABEL_59:
    free(v24);
    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
    v14 = *__error();
    v15 = 1005;
    goto LABEL_15;
  }

LABEL_56:
  if ((v8 - 3) > 0xB)
  {
    v29 = 0;
  }

  else
  {
    v29 = byte_10037C090[v8 - 3];
  }

  *(v11 + 36) = v29;
  v30 = *(v11 + 11);
  v31 = 8 * v30 + 264;
  v32 = 4 * v30 + 4;
  if (a3 < 7)
  {
    v32 = v31;
  }

  if (v32 < 0xFFFFFFFF)
  {
    *v11[6] = v32;
    *v9 = v11;
    v9[1] = sub_1000E28E4;
    v9[7] = sub_1000E2E0C;
    v9[3] = sub_1000E2E20;
    v9[12] = sub_1000E323C;
    return v9;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
  *v11[6] = -1;
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 1010, 55, 0, "invalid file size");
LABEL_12:
  sub_1000E28E4(v11);
  free(v9);
  return 0;
}

uint64_t sub_1000E0BAC(int a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8))
  {
    v2 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", 100, 55, v2, "fstat");
  }

  else
  {
    if ((v8.st_flags & 0x20) == 0 || (fchflags(a1, v8.st_flags & 0xFFFFFFDF) & 0x80000000) == 0)
    {
      v3 = 1;
      goto LABEL_7;
    }

    v7 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", 105, 55, v7, "fchflags UF_COMPRESSED");
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 154, 55, 0, "clearing UF_COMPRESSED");
  v3 = 0;
LABEL_7:
  if ((fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 159, 55, *v4, "fremovexattr");
    v3 = 0;
  }

  if ((fgetxattr(a1, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
  {
    v5 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 161, 55, *v5, "fremovexattr");
    v3 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream_impl *AAAFSCStreamOpenWithMetadata(int a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 0xE)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x2A88) != 0)
  {
    if (a4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1060, 55, 0, "invalid resource fork for type");
      goto LABEL_7;
    }
  }

  else if (((1 << a3) & 0x5510) == 0)
  {
LABEL_4:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1059, 55, 0, "invalid compression_type: %d");
LABEL_7:
    v7 = 0;
LABEL_12:
    AAByteStreamClose(v7);
    return 0;
  }

  v8 = sub_1000E0730(a1, a2, a3, 0);
  v7 = v8;
  if (!v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1064, 55, 0, "alloc stream");
    goto LABEL_12;
  }

  v9 = *v8;
  *(v9 + 112) = a3;
  *(v9 + 116) = a4;
  if ((sub_1000E0BAC(a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1070, 55, 0, "clearing file");
    goto LABEL_12;
  }

  return v7;
}

AAByteStream_impl *AAAFSCStreamOpenWithState(int a1, AAByteStream_impl *a2, void *a3)
{
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (!*(a2 + 2))
  {
LABEL_71:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1088, 55, 0, "loading state", v41);
    v11 = 0;
    goto LABEL_77;
  }

  v6 = &v41;
  v7 = 48;
  do
  {
    v8 = (*(a2 + 2))(*a2, v6, v7);
    if (v8 < 0)
    {
      goto LABEL_71;
    }

    v6 = (v6 + v8);
    v7 -= v8;
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = sub_1000E0730(a1, *(&v41 + 1), DWORD2(v42), v41);
  v11 = v10;
  if (!v10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1092, 55, 0, "open AFSC stream", v41);
    goto LABEL_77;
  }

  v12 = *v10;
  *(v12 + 24) = v42;
  *(v12 + 40) = HIDWORD(v42);
  *(v12 + 112) = v43;
  if (!*(a2 + 2))
  {
    goto LABEL_76;
  }

  v13 = *(v12 + 44);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    v16 = 4 * v15;
    v17 = *(v12 + 48);
    do
    {
      v18 = (*(a2 + 2))(*a2, v17, v16);
      if (v18 < 0)
      {
        goto LABEL_76;
      }

      v17 += v18;
      v16 -= v18;
      if (v18)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  v20 = DWORD2(v43);
  if (!DWORD2(v43))
  {
LABEL_44:
    v31 = HIDWORD(v43);
    if (!HIDWORD(v43))
    {
LABEL_69:
      if (a3)
      {
        *a3 = *(v12 + 24);
      }

      return v11;
    }

    v21 = (v12 + 88);
    v33 = *(v12 + 88);
    v32 = *(v12 + 96);
    while (1)
    {
      if (v33 != v32)
      {
        goto LABEL_57;
      }

      v34 = v32 + 0x40000;
      if ((v32 + 0x40000) < 0)
      {
        goto LABEL_76;
      }

      if (v32 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v32)
        {
          v32 = 0x4000;
          v36 = 0x4000;
          if (v34 <= 0x4000)
          {
            goto LABEL_59;
          }
        }

        v35 = v32 >> 1;
        if ((v32 & (v32 >> 1)) != 0)
        {
          v35 = v32 & (v32 >> 1);
        }

        v32 += v35;
      }

      while (v32 < v34);
      v36 = v32;
      if (v32 >= 0x2000000001)
      {
        goto LABEL_74;
      }

LABEL_59:
      v27 = *(v12 + 104);
      v37 = realloc(v27, v36);
      if (!v37)
      {
        goto LABEL_73;
      }

      *(v12 + 96) = v36;
      *(v12 + 104) = v37;
      v33 = *(v12 + 88);
LABEL_61:
      if (v36 - v33 >= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v36 - v33;
      }

      v39 = AAByteStreamRead(a2, (*(v12 + 104) + v33), v38);
      if (v39 < 0)
      {
        goto LABEL_76;
      }

      if (!v39)
      {
        goto LABEL_69;
      }

      v33 = *v21 + v39;
      if (__CFADD__(*v21, v39))
      {
        goto LABEL_76;
      }

      v32 = *(v12 + 96);
      if (v33 > v32)
      {
        goto LABEL_76;
      }

      *v21 = v33;
      v31 -= v39;
      if (!v31)
      {
        goto LABEL_69;
      }
    }

    v33 = v32;
LABEL_57:
    v36 = v32;
    goto LABEL_61;
  }

  v21 = (v12 + 64);
  v23 = *(v12 + 64);
  v22 = *(v12 + 72);
  while (1)
  {
    if (v23 != v22)
    {
      goto LABEL_32;
    }

    v24 = v22 + 0x40000;
    if ((v22 + 0x40000) < 0)
    {
      goto LABEL_76;
    }

    if (v22 > 0xFFFFFFFFFFFBFFFFLL)
    {
      v23 = v22;
LABEL_32:
      v26 = v22;
      goto LABEL_36;
    }

    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        v26 = 0x4000;
        if (v24 <= 0x4000)
        {
          goto LABEL_34;
        }
      }

      v25 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v25 = v22 & (v22 >> 1);
      }

      v22 += v25;
    }

    while (v22 < v24);
    v26 = v22;
    if (v22 >= 0x2000000001)
    {
      break;
    }

LABEL_34:
    v27 = *(v12 + 80);
    v28 = realloc(v27, v26);
    if (!v28)
    {
LABEL_73:
      free(v27);
      goto LABEL_75;
    }

    *(v12 + 72) = v26;
    *(v12 + 80) = v28;
    v23 = *(v12 + 64);
LABEL_36:
    if (v26 - v23 >= v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v26 - v23;
    }

    v30 = AAByteStreamRead(a2, (*(v12 + 80) + v23), v29);
    if (v30 < 0)
    {
      goto LABEL_76;
    }

    if (!v30)
    {
      goto LABEL_44;
    }

    v23 = *v21 + v30;
    if (__CFADD__(*v21, v30))
    {
      goto LABEL_76;
    }

    v22 = *(v12 + 72);
    if (v23 > v22)
    {
      goto LABEL_76;
    }

    *v21 = v23;
    v20 -= v30;
    if (!v20)
    {
      goto LABEL_44;
    }
  }

LABEL_74:
  *__error() = 12;
LABEL_75:
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
LABEL_76:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1103, 55, 0, "loading state", v41);
LABEL_77:
  AAByteStreamClose(v11);
  return 0;
}

uint64_t AAAFSCGetMetadata(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a1;
  memset(&v15, 0, sizeof(v15));
  __s[0] = 0;
  __s[1] = 0;
  v14 = 0;
  if (!fstat(a1, &v15))
  {
    if (sub_1000F5A84(v15.st_flags))
    {
      if ((sub_1000E13C0(v5, a2, &v12, __s) & 0x80000000) != 0)
      {
        v7 = "loading decmpfs";
        v8 = 1137;
      }

      else
      {
        if (*a2 <= 0xDu && ((1 << *a2) & 0x2A88) != 0)
        {
          v9 = 0;
LABEL_10:
          *a3 = 0;
          goto LABEL_11;
        }

        v11 = sub_1000E1588(v5);
        *a3 = v11;
        if (v11 != -1)
        {
          v9 = 0;
          goto LABEL_11;
        }

        v7 = "invalid resource fork";
        v8 = 1140;
      }

      v6 = 0;
      goto LABEL_3;
    }

    v9 = 0;
    *a2 = -1;
    goto LABEL_10;
  }

  v6 = *__error();
  v7 = "fstat";
  v8 = 1123;
LABEL_3:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCGetMetadata", v8, 55, v6, v7);
  v9 = 0xFFFFFFFFLL;
LABEL_11:
  free(v14);
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  return v9;
}

uint64_t sub_1000E13C0(int a1, _DWORD *a2, void *a3, unint64_t *a4)
{
  *a4 = 0;
  v8 = a4[1];
  if (v8 >> 16)
  {
    v12 = 0;
    v11 = a4[2];
  }

  else
  {
    do
    {
      v9 = (v8 >> 1) + v8;
      if (((v8 >> 1) & v8) != 0)
      {
        v9 = ((v8 >> 1) & v8) + v8;
      }

      if (v8)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0x4000;
      }
    }

    while (v8 < 0x10000);
    v10 = a4[2];
    v11 = realloc(v10, v8);
    if (!v11)
    {
      free(v10);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 255, 55, 0, "blob reserve");
      return 0xFFFFFFFFLL;
    }

    a4[1] = v8;
    a4[2] = v11;
    v12 = *a4;
  }

  v13 = fgetxattr(a1, "com.apple.decmpfs", &v11[v12], v8 - v12, 0, 32);
  if (v13 < 16 || (v14 = *a4 + v13, __CFADD__(*a4, v13)) || v14 > a4[1])
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 261, 55, 0, "invalid/missing decmpfs");
    return 0xFFFFFFFFLL;
  }

  *a4 = v14;
  v15 = a4[2];
  if (*v15 != 1668116582)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 263, 55, 0, "Invalid decmpfs xattr");
    return 0xFFFFFFFFLL;
  }

  v16 = *(v15 + 8);
  *a2 = *(v15 + 4);
  *a3 = v16;
  v17 = v14 - 16;
  if (v14 < 0x10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 268, 55, 0, "blob resize");
    return 0xFFFFFFFFLL;
  }

  if (v14 != 16)
  {
    memmove(v15, (v15 + 16), v14 - 16);
  }

  result = 0;
  *a4 = v17;
  return result;
}

unint64_t sub_1000E1588(int a1)
{
  result = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
  if ((result & 0x8000000000000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", 309, 55, 0, "Missing resource fork xattr");
  }

  else
  {
    if (!HIDWORD(result))
    {
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", 310, 55, 0, "Invalid resource fork xattr");
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAAFSCSetMetadata(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  memset(&v32, 0, sizeof(v32));
  v30 = 0;
  v31 = -1;
  __s = 0;
  v28 = 0;
  v29 = 0;
  if (a2 <= 0xD && ((1 << a2) & 0x2A88) != 0)
  {
    if (a3)
    {
      v6 = "invalid resource fork size";
      v7 = 1169;
LABEL_5:
      v8 = 0;
LABEL_10:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v7, 55, v8, v6, v25, v26, __s, v28, v29);
      v10 = 0;
LABEL_11:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v9 = 0;
  }

  else
  {
    v9 = a3 != 0;
  }

  if (fstat(a1, &v32))
  {
    v8 = *__error();
    v6 = "fstat";
    v7 = 1171;
    goto LABEL_10;
  }

  st_size = v32.st_size;
  if ((AAAFSCGetMetadata(a1, &v31, &v30) & 0x80000000) != 0)
  {
    v6 = "reading current metadata";
    v7 = 1175;
    goto LABEL_5;
  }

  v14 = v31 != -1;
  v15 = v31 != a2 && v31 != -1;
  if (v31 != a2)
  {
    v14 = 0;
  }

  if (v30 <= v3)
  {
    v14 = 0;
  }

  if (!v15 && (!v9 || !v14))
  {
    if (v31 == a2)
    {
      goto LABEL_61;
    }

    if (v31 != -1)
    {
      v6 = "invalid state";
      v7 = 1200;
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  if ((sub_1000E1A98(a1) & 0x80000000) != 0)
  {
    v6 = "decompression failed";
    v7 = 1188;
    goto LABEL_5;
  }

  v30 = 0;
  v31 = -1;
  if (a2 != -1)
  {
LABEL_29:
    v10 = AAAFSCStreamOpenWithMetadata(a1, st_size, a2, v3);
    if (!v10)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1202, 55, 0, "open AFSC stream", v25, v26, __s, v28, v29);
      goto LABEL_11;
    }

    v16 = 0;
    do
    {
      v17 = (v16 >> 1) + v16;
      if (((v16 >> 1) & v16) != 0)
      {
        v17 = ((v16 >> 1) & v16) + v16;
      }

      if (v16)
      {
        v16 = v17;
      }

      else
      {
        v16 = 0x4000;
      }
    }

    while (v16 < 0x80000);
    v18 = malloc(v16);
    if (!v18)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1205, 55, 0, "blob alloc", v25, v26, 0, 0, 0);
      goto LABEL_11;
    }

    v19 = v18;
    v28 = v16;
    v29 = v18;
    if (st_size)
    {
      v20 = 0;
      v25 = v18;
      v26 = st_size;
      while (1)
      {
        __s = 0;
        if (v16 >= st_size - v20)
        {
          v21 = st_size - v20;
        }

        else
        {
          v21 = v16;
        }

        if (pread(a1, v19, v21, v20) != v21)
        {
LABEL_72:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1213, 55, 0, "read data", v25, v26, __s, v28, v29);
          goto LABEL_11;
        }

        if (v21)
        {
          if (__CFADD__(__s, v21))
          {
            goto LABEL_72;
          }

          v16 = v28;
          if (__s + v21 > v28)
          {
            goto LABEL_72;
          }

          __s += v21;
          if (*(v10 + 3))
          {
            v22 = 0;
            v23 = v21;
            while (1)
            {
              v24 = (*(v10 + 3))(*v10, v19, v23);
              if (v24 < 1)
              {
                break;
              }

              v19 += v24;
              v22 += v24;
              v23 -= v24;
              if (!v23)
              {
                goto LABEL_57;
              }
            }

            v22 = v24;
LABEL_57:
            v19 = v25;
            st_size = v26;
          }

          else
          {
            v22 = -1;
          }
        }

        else
        {
          v22 = *(v10 + 3) ? 0 : -1;
        }

        if (v22 != v21)
        {
          break;
        }

        v20 += v21;
        if (v20 >= st_size)
        {
          goto LABEL_60;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1215, 55, 0, "write data", v25, v26, __s, v28, v29);
      goto LABEL_11;
    }

LABEL_60:
    if (AAByteStreamClose(v10) < 0)
    {
      v6 = "AFSC stream close";
      v7 = 1222;
      goto LABEL_5;
    }
  }

LABEL_61:
  if ((AAAFSCGetMetadata(a1, &v31, &v30) & 0x80000000) != 0)
  {
    v6 = "reading current metadata";
    v7 = 1229;
    goto LABEL_5;
  }

  if (v31 != a2 || (v11 = 0, v10 = 0, v3) && v30 != v3)
  {
    if ((sub_1000E222C(a1, v3) & 0x80000000) == 0)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_12;
    }

    v6 = "resizing resource fork";
    v7 = 1236;
    goto LABEL_5;
  }

LABEL_12:
  free(v29);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AAByteStreamClose(v10);
  return v11;
}

uint64_t sub_1000E1A98(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  __s = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = -1;
  v53 = 0;
  do
  {
    v3 = (v2 >> 1) + v2;
    if (((v2 >> 1) & v2) != 0)
    {
      v3 = ((v2 >> 1) & v2) + v2;
    }

    if (v2)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0x4000;
    }
  }

  while (v2 <= 0x10000);
  v4 = malloc(v2);
  if (!v4)
  {
    p_s = &__s;
LABEL_22:
    *p_s = 0;
    p_s[1] = 0;
    p_s[2] = 0;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 448, 55, 0, "blob alloc");
    v8 = 0;
LABEL_42:
    v18 = 0;
LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

  v5 = 0;
  v59 = v2;
  v60 = v4;
  do
  {
    v6 = (v5 >> 1) + v5;
    if (((v5 >> 1) & v5) != 0)
    {
      v6 = ((v5 >> 1) & v5) + v5;
    }

    if (v5)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x4000;
    }
  }

  while (v5 < 0x80000);
  v7 = malloc(v5);
  if (!v7)
  {
    p_s = &v55;
    goto LABEL_22;
  }

  v8 = v7;
  v56 = v5;
  v57 = v7;
  if ((sub_1000E13C0(v1, &v54, &v53, &__s) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 451, 55, 0, "loading decmpfs xattr");
    goto LABEL_42;
  }

  v9 = v54;
  v10 = v54 - 3;
  if (v54 - 3 > 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = byte_10037C090[v10];
  }

  if (v54 > 0xE)
  {
    goto LABEL_30;
  }

  if (((1 << v54) & 0x180) != 0)
  {
    v13 = 0;
    v14 = 2304;
    goto LABEL_35;
  }

  if (((1 << v54) & 0x1800) != 0)
  {
    v13 = 0;
    v14 = COMPRESSION_LZFSE;
    goto LABEL_35;
  }

  if (((1 << v54) & 0x6000) != 0)
  {
    v13 = 0;
    v14 = COMPRESSION_LZBITMAP;
  }

  else
  {
LABEL_30:
    if (v10 >= 2)
    {
      v14 = -1;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1285;
    }
  }

LABEL_35:
  v15 = v53;
  if (!v53 || (v16 = v53 + 0xFFFF, (v53 + 0xFFFF) >> 48))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    goto LABEL_41;
  }

  v17 = v16 >> 16;
  if (v16 >> 16 == 0xFFFFFFFF)
  {
LABEL_41:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 457, 55, 0, "invalid uncompressed size");
    goto LABEL_42;
  }

  if (v13)
  {
    v18 = 0;
    goto LABEL_51;
  }

  v22 = v11;
  v23 = compression_decode_scratch_buffer_size(v14);
  if (v23)
  {
    if (v23 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_62:
      v27 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 463, 55, v27, "malloc");
      goto LABEL_42;
    }

    v18 = malloc(v23);
    v11 = v22;
    if (!v18)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v18 = 0;
    v11 = v22;
  }

LABEL_51:
  if (v9 <= 0xD && ((1 << v9) & 0x2A88) != 0)
  {
    v24 = v60;
    if (*v60 == v11)
    {
      v25 = __s - 1;
      memcpy(v8, v60 + 1, __s - 1);
    }

    else
    {
      v25 = compression_decode_buffer(v8, 0x10000uLL, v60, __s, v18, v14);
    }

    if (v25 - 65537 <= 0xFFFFFFFFFFFEFFFFLL)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 487, 55, 0, "invalid chunk");
      goto LABEL_43;
    }

    v55 = v25;
    v26 = pwrite(v1, v24, v25, 0);
    v19 = 0;
    if (v26 != v25)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 490, 55, 0, "writing chunk");
      goto LABEL_43;
    }

LABEL_59:
    if (fremovexattr(v1, "com.apple.ResourceFork", 32) < 0)
    {
      v32 = *__error();
      v30 = "Removing xattr";
      v31 = 548;
      goto LABEL_76;
    }

    if (fremovexattr(v1, "com.apple.decmpfs", 32) < 0)
    {
      v32 = *__error();
      v30 = "Removing xattr";
      v31 = 549;
      goto LABEL_76;
    }

    v20 = 0;
    goto LABEL_45;
  }

  v47 = v11;
  v19 = calloc(v17 + 1, 4uLL);
  if (!v19)
  {
    v32 = *__error();
    v30 = "malloc";
    v31 = 498;
    goto LABEL_76;
  }

  if ((sub_1000E3C2C(v1, v9, v16 >> 16, v19) & 0x80000000) != 0)
  {
    v30 = "loading chunk offsets";
    v31 = 499;
    goto LABEL_75;
  }

  if (v16 < 0x10000)
  {
    v28 = 0;
    v29 = 1;
LABEL_68:
    if (v28 != v15 || !v29)
    {
      v30 = "corrupted resource fork";
      v31 = 544;
      goto LABEL_75;
    }

    goto LABEL_59;
  }

  v28 = 0;
  v33 = 0;
  v45 = v59;
  if (v17 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v17;
  }

  v35 = v19 + 1;
  v36 = v17 - 1;
  value = v60;
  while (1)
  {
    v48 = v34;
    __s = 0;
    if (!((v5 - v33) >> 16))
    {
      v30 = "obuf full";
      v31 = 507;
      goto LABEL_75;
    }

    v49 = v28;
    v37 = *(v35 - 1);
    v38 = *v35;
    v46 = v35;
    v39 = *v35 - v37;
    if (v45 < v39)
    {
      v30 = "invalid chunk size";
      v31 = 510;
      goto LABEL_75;
    }

    v51 = v36;
    v52 = v33;
    if (fgetxattr(v1, "com.apple.ResourceFork", value, v38 - v37, v37, 32) != v39)
    {
      v30 = "read resource fork chunk";
      v31 = 513;
      goto LABEL_75;
    }

    if (v38 != v37)
    {
      __s = v38 - v37;
    }

    v28 = v49;
    if (*value == v47)
    {
      v40 = (v39 - 1);
      memcpy(&v8[v52], value + 1, v40);
    }

    else
    {
      v40 = compression_decode_buffer(&v8[v52], 0x10000uLL, value, v39, v18, v14);
    }

    v41 = v51;
    if (v40 != 0x10000 && (!v40 || v51 || v40 > 0x10000) || (v33 = v52 + v40, __CFADD__(v52, v40)) || v5 < v33)
    {
      v30 = "invalid chunk";
      v31 = 532;
      goto LABEL_75;
    }

    v55 = v52 + v40;
    if (!v51 || !((v5 - v33) >> 16))
    {
      break;
    }

    v42 = v48;
    v43 = v46;
LABEL_100:
    v35 = v43 + 1;
    v36 = v41 - 1;
    v34 = v42 - 1;
    if (!v34)
    {
      v29 = v33 == 0;
      goto LABEL_68;
    }
  }

  v44 = v52 + v40;
  if (pwrite(v1, v8, v33, v49) == v33)
  {
    v28 = v44 + v49;
    v55 = 0;
    v33 = 0;
    v42 = v48;
    v43 = v46;
    v41 = v51;
    goto LABEL_100;
  }

  v30 = "writing chunk";
  v31 = 539;
LABEL_75:
  v32 = 0;
LABEL_76:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v31, 55, v32, v30);
LABEL_44:
  v20 = 0xFFFFFFFFLL;
LABEL_45:
  free(v60);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v8);
  memset_s(&v55, 0x18uLL, 0, 0x18uLL);
  free(v18);
  free(v19);
  return v20;
}

uint64_t sub_1000E222C(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  __s = 0;
  v58 = 0;
  __ptr = 0;
  v56 = -1;
  v55 = 0;
  if ((sub_1000E13C0(a1, &v56, &v55, &__s) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 574, 55, 0, "loading decmpfs xattr");
    goto LABEL_8;
  }

  v4 = v56;
  if ((v56 + 1) <= 0xE && ((1 << (v56 + 1)) & 0x5511) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 575, 55, 0, "invalid compression type");
LABEL_8:
    v6 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v10 = sub_1000E1588(v3);
  if (v10 == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 579, 55, 0, "invalid resource fork");
    goto LABEL_8;
  }

  if (a2 < v10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 580, 55, 0, "can't resize resource fork %u to %u");
    goto LABEL_8;
  }

  v11 = a2 - v10;
  if (a2 == v10)
  {
    v6 = 0;
    v7 = 0;
LABEL_17:
    v8 = 0;
    goto LABEL_10;
  }

  v12 = v55;
  if (!v55 || (v13 = v55 + 0xFFFF, (v55 + 0xFFFF) >> 48))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    goto LABEL_43;
  }

  v14 = v13 >> 16;
  if ((v13 >> 16) + 1 <= 1)
  {
LABEL_43:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 589, 55, 0, "invalid uncompressed size");
    goto LABEL_8;
  }

  v7 = calloc((v13 >> 16) + 1, 4uLL);
  v15 = calloc((v13 >> 16) + 1, 4uLL);
  v6 = v15;
  if (!v7 || !v15)
  {
    v27 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 594, 55, v27, "malloc");
    goto LABEL_9;
  }

  if ((sub_1000E3C2C(v3, v4, v13 >> 16, v7) & 0x80000000) != 0)
  {
    v47 = "loading chunk offsets";
    v48 = 595;
    goto LABEL_98;
  }

  v6[v14] = v11 + v7[v14];
  v16 = v13 >> 16;
  while (v16)
  {
    v17 = (v16 - 1);
    v18 = v12 - (v17 << 16);
    if (v18 >= 0x10000)
    {
      LODWORD(v18) = 0x10000;
    }

    v19 = v7[v16];
    v20 = v7[v17];
    v21 = v6[v16];
    v22 = v19 - v20;
    v23 = v21 - v20;
    if (v23 >= 0x10000)
    {
      v23 = 0x10000;
    }

    if (v22 > v23)
    {
      v23 = v22;
    }

    v24 = (v22 & 0xFFFF0000) != 0 || v22 >= v18;
    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v24 = v21 >= v25;
    v26 = v21 - v25;
    v6[v17] = v26;
    if (!v24)
    {
      v47 = "resource fork resize failed";
      v48 = 607;
      goto LABEL_98;
    }

    LODWORD(v16) = v17;
    if (v26 < v7[v17])
    {
      v47 = "invalid state when resizing resource fork";
      v48 = 608;
      goto LABEL_98;
    }
  }

  if (*v6 != *v7)
  {
    v47 = "resource fork resize failed";
    v48 = 610;
    goto LABEL_98;
  }

  v28 = v58;
  if (v58 <= 0x10000)
  {
    do
    {
      v29 = (v28 >> 1) + v28;
      if (((v28 >> 1) & v28) != 0)
      {
        v29 = ((v28 >> 1) & v28) + v28;
      }

      if (v28)
      {
        v28 = v29;
      }

      else
      {
        v28 = 0x4000;
      }
    }

    while (v28 < 0x10001);
    v30 = __ptr;
    v31 = realloc(__ptr, v28);
    if (!v31)
    {
      free(v30);
      __s = 0;
      v58 = 0;
      __ptr = 0;
      v47 = "blob alloc";
      v48 = 613;
      goto LABEL_98;
    }

    __ptr = v31;
  }

  v32 = __s;
  if (v13 < 0x10000)
  {
    goto LABEL_90;
  }

  value = __ptr;
  v33 = v7[(v14 - 1)];
  __n = v7[v14];
  size_4 = v14 - 1;
  v49 = &v6[(v14 - 1)];
  if (v33 == *v49 && __n - v33 == v6[v14] - *v49)
  {
LABEL_89:
    __ptr = value;
LABEL_90:
    __s = v32;
    v58 = v28;
    if ((sub_1000E35AC(v3, v4, v14, v6) & 0x80000000) != 0)
    {
      v47 = "storing new offsets";
      v48 = 635;
      goto LABEL_98;
    }

    goto LABEL_17;
  }

  v35 = v6[v14] - *v49;
  v36 = __n - v33;
  v37 = v28;
  while (1)
  {
    size = v35;
    v38 = v36;
    v39 = v36;
    v40 = fgetxattr(v3, "com.apple.ResourceFork", value, v36, v33, 32);
    v41 = size;
    if (v40 != v39)
    {
LABEL_93:
      v58 = v28;
      __ptr = value;
      __s = 0;
      v47 = "read chunk";
      v48 = 628;
      goto LABEL_98;
    }

    if (__n == v33)
    {
      v42 = 0;
    }

    else
    {
      v42 = v38;
      if (v37 < v38)
      {
        goto LABEL_93;
      }
    }

    if (size <= v38)
    {
      v32 = v42;
      v44 = v49;
      goto LABEL_82;
    }

    __na = size - v38;
    v32 = v42 + __na;
    if (v37 < v42 + __na)
    {
      break;
    }

    if (value)
    {
      v45 = value;
LABEL_80:
      memset_s(&v45[v42], __na, 0, __na);
      value = v45;
    }

    else
    {
      value = 0;
    }

    v44 = v49;
    v41 = size;
LABEL_82:
    if (fsetxattr(v3, "com.apple.ResourceFork", value, v41, *v44, 0) < 0)
    {
      v58 = v28;
      __ptr = value;
      __s = v32;
      v47 = "write chunk";
      v48 = 631;
      goto LABEL_98;
    }

    if (size_4)
    {
      v46 = size_4 - 1;
      v33 = v7[size_4 - 1];
      __n = v7[size_4];
      v36 = __n - v33;
      v49 = &v6[size_4 - 1];
      v35 = v6[size_4--] - *v49;
      if (v33 != *v49)
      {
        continue;
      }

      size_4 = v46;
      if (v36 != v35)
      {
        continue;
      }
    }

    goto LABEL_89;
  }

  do
  {
    while (!v37)
    {
      v37 = 0x4000;
      v28 = 0x4000;
      if (v32 <= 0x4000)
      {
        goto LABEL_79;
      }
    }

    v43 = v37 >> 1;
    if ((v37 & (v37 >> 1)) != 0)
    {
      v43 = v37 & (v37 >> 1);
    }

    v37 += v43;
  }

  while (v37 < v32);
  v28 = v37;
  if (v37 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_97;
  }

LABEL_79:
  v45 = realloc(value, v28);
  v37 = v28;
  if (v45)
  {
    goto LABEL_80;
  }

  free(value);
LABEL_97:
  __s = 0;
  v58 = 0;
  __ptr = 0;
  v47 = "store padding";
  v48 = 629;
LABEL_98:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v48, 55, 0, v47);
LABEL_9:
  v8 = 0xFFFFFFFFLL;
LABEL_10:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v7);
  free(v6);
  return v8;
}

unsigned int *sub_1000E28E4(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load(result + 30);
    v3 = v2 == 0;
    v4 = *(result + 2);
    if (*(result + 3) < v4 || *(result + 8))
    {
      goto LABEL_4;
    }

    v7 = *(result + 11);
    v8 = result[10];
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        v26 = *(result + 3);
        v27 = *(result + 2);
        v5 = "invalid final AFSC stream state, received %zu/%zu bytes";
        v6 = 826;
        goto LABEL_5;
      }

LABEL_17:
      v10 = v1[8] - (v7 != 0);
      v11 = *v1;
      __s = 0uLL;
      v29 = 0;
      if ((v10 - 7) >= 8 && (v10 - 3) >= 2)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 286, 55, 0, "unsupported compression type: %d", v10);
        v13 = 0;
      }

      else
      {
        v12 = malloc(0x4000uLL);
        if (!v12)
        {
LABEL_52:
          v13 = 0;
          __s = 0uLL;
          v29 = 0;
LABEL_53:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 291, 55, 0, "prepare decmpfs header");
          goto LABEL_54;
        }

        v13 = v12;
        v29 = v12;
        *v12 = 1668116582;
        *(v12 + 1) = v10;
        *(v12 + 1) = v4;
        __s = xmmword_10037C000;
        v14 = v7 + 16;
        if (v7 >= 0xFFFFFFFFFFFFFFF0 || (v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v15 = *(v1 + 13);
        if (v14 > 0x4000)
        {
          for (i = 0x4000; i < v14; i += v17)
          {
            v17 = i >> 1;
            if ((i & (i >> 1)) != 0)
            {
              v17 = i & (i >> 1);
            }
          }

          if (i >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_52;
          }

          v18 = realloc(v12, i);
          if (!v18)
          {
            free(v13);
            goto LABEL_52;
          }

          *(&__s + 1) = i;
          v29 = v18;
          v13 = v18;
        }

        v19 = v13 + 16;
        if (v15)
        {
          memcpy(v19, v15, v7);
        }

        else
        {
          memset_s(v19, v7, 0, v7);
        }

        *&__s = v7 + 16;
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if ((fsetxattr(v11, "com.apple.decmpfs", v13, v7 + 16, 0, 0) & 0x80000000) == 0)
        {
          free(v13);
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (ftruncate(*v1, 0))
          {
            v20 = *__error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", 840, 55, v20, "ftruncate", v26, v27, __s, v29);
            goto LABEL_6;
          }

          if ((v1[2] & 4) != 0 || (v22 = v1[10], !v22) || 93 * *(v1 + 2) / 0x64uLL >= v22 || v1[8] == 10 || v1[28])
          {
            v23 = v1[28];
            if (!v23 || v23 == v10)
            {
              v24 = v1[29];
              if (v24 && (v25 = v1[10]) != 0 && v24 != v25 && (sub_1000E222C(*v1, v24) & 0x80000000) != 0)
              {
                v5 = "resizing resource fork";
                v6 = 861;
              }

              else
              {
                if ((sub_1000E34E8(*v1) & 0x80000000) == 0)
                {
                  goto LABEL_7;
                }

                v5 = "set UF_COMPRESSED";
                v6 = 865;
              }
            }

            else
            {
              v5 = "compression type mismatch";
              v6 = 858;
            }
          }

          else
          {
            if ((sub_1000E1A98(*v1) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            v5 = "decompressing to regular data file";
            v6 = 853;
          }

LABEL_5:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", v6, 55, 0, v5, v26, v27, __s, v29);
LABEL_6:
          v3 = 0;
LABEL_7:
          free(*(v1 + 6));
          free(*(v1 + 7));
          free(*(v1 + 10));
          memset_s(v1 + 16, 0x18uLL, 0, 0x18uLL);
          free(*(v1 + 13));
          memset_s(v1 + 22, 0x18uLL, 0, 0x18uLL);
          free(v1);
          return (v3 - 1);
        }

        v21 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 297, 55, v21, "fsetxattr decmpfs");
      }

LABEL_54:
      free(v13);
      memset_s(&__s, 0x18uLL, 0, 0x18uLL);
      v5 = "store decmpfs xattr";
      v6 = 837;
      goto LABEL_5;
    }

    if (!v8)
    {
      v7 = 0;
      goto LABEL_17;
    }

    if ((sub_1000E35AC(*result, result[8], result[11], *(result + 6)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", 796, 55, 0, "storing offsets");
    }

    else
    {
      v9 = sub_1000E1588(*v1);
      v1[10] = v9;
      if (v9 != -1)
      {
        v7 = *(v1 + 11);
        v4 = *(v1 + 2);
        goto LABEL_17;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", 800, 55, 0, "invalid resource fork");
    }

    v5 = "finalize resource fork";
    v6 = 832;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1000E2E20(uint64_t a1, char *__src, unint64_t a3)
{
  if (atomic_load((a1 + 120)))
  {
    return -1;
  }

  v5 = a3;
  v7 = *(a1 + 24);
  v8 = __CFADD__(v7, a3);
  v9 = v7 + a3;
  if (v8 || v9 > *(a1 + 16))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 923, 55, 0, "too many bytes received");
LABEL_6:
    v4 = -1;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v4 = 0;
    v14 = (a1 + 64);
    v13 = *(a1 + 64);
    v36 = (a1 + 64);
    do
    {
      if (v5 >= 0x10000 - v13)
      {
        v15 = 0x10000 - v13;
      }

      else
      {
        v15 = v5;
      }

      v16 = v13 + v15;
      if (__CFADD__(v13, v15) || (v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v17 = *(a1 + 72);
      if (v17 < v16)
      {
        do
        {
          while (!v17)
          {
            v17 = 0x4000;
            v19 = 0x4000;
            if (v16 <= 0x4000)
            {
              goto LABEL_25;
            }
          }

          v18 = v17 >> 1;
          if ((v17 & (v17 >> 1)) != 0)
          {
            v18 = v17 & (v17 >> 1);
          }

          v17 += v18;
        }

        while (v17 < v16);
        v19 = v17;
        if (v17 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_69;
        }

LABEL_25:
        v20 = *(a1 + 80);
        v21 = realloc(v20, v19);
        if (v21)
        {
          *(a1 + 72) = v19;
          *(a1 + 80) = v21;
          goto LABEL_27;
        }

        free(v20);
LABEL_69:
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
LABEL_70:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 928, 55, 0, "append to ibuf");
        goto LABEL_6;
      }

LABEL_27:
      v22 = *(a1 + 80);
      if (__src)
      {
        memcpy((v22 + *v14), __src, v15);
      }

      else if (v22)
      {
        memset_s((v22 + *v14), v15, 0, v15);
      }

      v13 = *v14 + v15;
      *v14 = v13;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v23 = *(a1 + 24) + v15;
      *(a1 + 24) = v23;
      if (v13 == 0x10000 || v13 && v23 == *(a1 + 16))
      {
        v24 = (v23 + 0xFFFFFFFFFFFFLL) >> 16;
        if (*(a1 + 44) <= v24)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 740, 55, 0, "invalid state");
          goto LABEL_72;
        }

        v25 = *(a1 + 88);
        if ((*(a1 + 96) - v25) <= 0x10000)
        {
          if ((sub_1000E3A2C(a1) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 744, 55, 0, "flushing obuf");
            goto LABEL_72;
          }

          v13 = *(a1 + 64);
          v25 = *(a1 + 88);
        }

        v26 = *(a1 + 80);
        v27 = (*(a1 + 104) + v25);
        v28 = *(a1 + 32);
        if (v28 != 10 && v13 >= 0x78 && ((v29 = v28 - 3, v29 > 0xB) ? (v30 = -1) : (v30 = dword_10037C09C[v29]), (v31 = compression_encode_buffer(v27, 0x10000uLL, *(a1 + 80), v13, *(a1 + 56), v30)) != 0 && ((*(a1 + 8) & 1) != 0 ? (v32 = (v31 >> 6) + 32) : (v32 = 0), (v33 = v32 + v31) != 0 && v33 < v13)))
        {
          if (v33 > v31)
          {
            memset_s(&v27[v31], v32, 0, v32);
          }
        }

        else
        {
          *v27 = *(a1 + 36);
          memcpy(v27 + 1, v26, v13);
          v33 = v13 + 1;
        }

        *(*(a1 + 48) + 4 * (v24 + 1)) = *(*(a1 + 48) + 4 * v24) + v33;
        if (v33)
        {
          v34 = *(a1 + 88);
          v8 = __CFADD__(v34, v33);
          v35 = v34 + v33;
          if (v8 || v35 > *(a1 + 96))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 780, 55, 0, "expand obuf");
LABEL_72:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 938, 55, 0, "flushing ibuf");
            goto LABEL_6;
          }

          *(a1 + 88) = v35;
        }

        if (*(a1 + 24) == *(a1 + 16) && (sub_1000E3A2C(a1) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 784, 55, 0, "flushing obuf");
          goto LABEL_72;
        }

        v13 = 0;
        v14 = v36;
        *v36 = 0;
      }

      __src += v15;
      v4 += v15;
      v5 -= v15;
    }

    while (v5);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong((a1 + 120), &v10, 1u);
  return v4;
}

uint64_t sub_1000E323C(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 120)))
  {
    return 0xFFFFFFFFLL;
  }

  v37 = v3;
  v38 = v4;
  v11 = (a1 + 88);
  v10 = *(a1 + 88);
  if (v10)
  {
    if ((sub_1000E3A2C(a1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", 884, 55, 0, "flushing obuf", v32, v33, v34, v35, v36);
      return 0xFFFFFFFFLL;
    }

    LODWORD(v10) = *v11;
  }

  v12 = *(a1 + 64);
  v32 = *(a1 + 8);
  v33 = *(a1 + 24);
  v13 = *(a1 + 40);
  LODWORD(v34) = *(a1 + 32);
  HIDWORD(v34) = v13;
  v35 = *(a1 + 112);
  v36 = __PAIR64__(v10, v12);
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v14 = 0;
  v15 = *(a1 + 44);
  v16 = &v32;
  v17 = 48;
  while (1)
  {
    v18 = (a2[3])(*a2, v16, v17);
    if (v18 < 1)
    {
      break;
    }

    v16 = (v16 + v18);
    v14 += v18;
    v17 -= v18;
    if (!v17)
    {
      if (v14 < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  if (v18 < 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v19 = v15 + 1;
  if (v15 != -1)
  {
    v20 = 0;
    v21 = 4 * v19;
    v22 = *(a1 + 48);
    while (1)
    {
      v23 = (a2[3])(*a2, v22, v21);
      if (v23 < 1)
      {
        break;
      }

      v22 += v23;
      v20 += v23;
      v21 -= v23;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v20 = v23;
LABEL_21:
    if (v20 < 0 || !a2[3])
    {
      goto LABEL_41;
    }
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 80);
    while (1)
    {
      v27 = (a2[3])(*a2, v26, v24);
      if (v27 < 1)
      {
        break;
      }

      v26 += v27;
      v25 += v27;
      v24 -= v27;
      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = v27;
LABEL_29:
    if (v25 < 0)
    {
      goto LABEL_41;
    }
  }

  if (!a2[3])
  {
    goto LABEL_41;
  }

  v28 = *v11;
  if (*v11)
  {
    v29 = 0;
    v30 = *(a1 + 104);
    while (1)
    {
      v31 = (a2[3])(*a2, v30, v28);
      if (v31 < 1)
      {
        break;
      }

      v30 += v31;
      v29 += v31;
      v28 -= v31;
      if (!v28)
      {
        goto LABEL_37;
      }
    }

    v29 = v31;
LABEL_37:
    if (v29 < 0)
    {
LABEL_41:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", 901, 55, 0, "serializing state", v32, v33, v34, v35, v36);
      return 0xFFFFFFFFLL;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 24);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 104));
  memset_s(v11, 0x18uLL, 0, 0x18uLL);
  free(a1);
  return 0;
}